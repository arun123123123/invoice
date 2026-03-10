@extends('layouts.app')
@section('title', 'Users - Show')

@section('content')

<div class="container mt-4">

    <!-- USER DETAILS CARD -->
    <div class="card shadow-sm border-0 mb-4">
        <div class="card-header bg-white border-0">
            <h4 class="fw-bold mb-0">User Details</h4>
        </div>

        <div class="card-body">

            <div class="row mb-3">
                <div class="col-md-3 fw-semibold text-secondary">Name:</div>
                <div class="col-md-9">{{ $user->name }}</div>
            </div>

            <div class="row mb-3">
                <div class="col-md-3 fw-semibold text-secondary">Email:</div>
                <div class="col-md-9">{{ $user->email }}</div>
            </div>

            <div class="row mb-3">
                <div class="col-md-3 fw-semibold text-secondary">Role:</div>
                <div class="col-md-9 text-capitalize">{{ $user->role }}</div>
            </div>

            <div class="text-end">
                <a href="{{ route('users.index') }}" class="btn btn-secondary">
                    <i class="bi bi-arrow-left"></i> Back
                </a>
            </div>

        </div>
    </div>

    <!-- INVOICE DETAILS -->
    <div class="card shadow-sm border-0">
        <div class="card-header bg-white border-0 d-flex justify-content-between align-items-center">
            <h4 class="fw-bold mb-0">Invoice Details</h4>
        </div>

        <div class="card-body">

            @if($user->invoices->count() > 0)

            <table class="table table-hover align-middle">
                <thead class="table-light">
                    <tr>
                        <th>#</th>
                        <th>Bill No</th>
                        <th>Invoice No</th>
                        <th>Date</th>
                        <th class="text-end">Invoice Amount</th>
                        <th class="text-end">Paid</th>
                        <th class="text-end">Balance</th>
                    </tr>
                </thead>

                <tbody>
                    @foreach($user->invoices as $index => $invoice)
                    <tr>
                        <td>{{ $index + 1 }}</td>
                        <td>{{ $invoice->bill_number }}</td>
                        <td>{{ $invoice->invoice_number }}</td>
                        <td>{{ $invoice->invoice_date }}</td>

                        <td class="text-end">₹ {{ number_format($invoice->invoice_amount, 2) }}</td>
                        <td class="text-end text-success fw-semibold">₹ {{ number_format($invoice->payed_amount, 2) }}</td>
                        <td class="text-end text-danger fw-semibold">₹ {{ number_format($invoice->balance_payable, 2) }}</td>
                    </tr>
                    @endforeach
                </tbody>

            </table>

            @else

            <div class="alert alert-info mb-0">
                No invoices found for this user.
            </div>

            @endif

        </div>
    </div>

</div>

@endsection