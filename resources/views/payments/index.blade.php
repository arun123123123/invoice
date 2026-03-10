@extends('layouts.app')
@section('title', 'Payments')

@section('content')

<div class="container mt-4">

    <div class="card shadow-sm border-0">
        <div class="card-header bg-white border-0 d-flex justify-content-between align-items-center">
            <h4 class="fw-bold mb-0">Payments</h4>
        </div>

        <div class="card-body">

            <table class="table table-hover align-middle">
                <thead class="table-light">
                    <tr>
                        <th style="width: 60px;">#</th>
                        <th>User</th>
                        <th>Payment Date</th>
                        <th class="text-end">Amount</th>
                    </tr>
                </thead>

                <tbody>
                    @php $i = 1; @endphp

                    @foreach($payments as $payment)
                        <tr>
                            <!-- Index -->
                            <td>{{ $i++ }}</td>

                            <!-- User avatar + name -->
                            <td>
                                <div class="d-flex align-items-center">
                                    <div class="rounded-circle bg-primary text-white d-flex justify-content-center align-items-center me-3" 
                                        style="width: 45px; height: 45px; font-size: 20px;">
                                        {{ strtoupper(substr($payment->user->name, 0, 1)) }}
                                    </div>
                                    <span class="fw-semibold">{{ $payment->user->name }}</span>
                                </div>
                            </td>

                            <!-- Payment Date -->
                            <td>{{ $payment->payment_date }}</td>

                            <!-- Amount -->
                            <td class="text-end fw-semibold text-success">
                                ₹ {{ number_format($payment->amount, 2) }}
                            </td>
                        </tr>
                    @endforeach
                </tbody>

            </table>

        </div>
    </div>

</div>

@endsection