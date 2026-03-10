@extends('layouts.app')
@section('title', 'Users')

@section('content')

<div class="container mt-4">

    <div class="card shadow-sm border-0">
        <div class="card-header bg-white border-0 d-flex justify-content-between align-items-center">
            <h4 class="fw-bold mb-0">Users</h4>
        </div>

        <div class="card-body">

            <table class="table table-hover align-middle">
                <thead class="table-light">
                    <tr>
                        <th style="width: 60px;">#</th>
                        <th>User</th>
                        <th>Email</th>
                        <th style="width: 160px;" class="text-center">Actions</th>
                    </tr>
                </thead>

                <tbody>
                    @php $i = 1; @endphp

                    @foreach($users as $user)
                        <tr>
                            <!-- Index -->
                            <td>{{ $i++ }}</td>

                            <!-- User avatar + name -->
                            <td>
                                <div class="d-flex align-items-center">
                                    <div class="rounded-circle bg-primary text-white d-flex justify-content-center align-items-center me-3" 
                                        style="width: 45px; height: 45px; font-size: 20px;">
                                        {{ strtoupper(substr($user->name, 0, 1)) }}
                                    </div>
                                    <span class="fw-semibold">{{ $user->name }}</span>
                                </div>
                            </td>

                            <!-- Email -->
                            <td>{{ $user->email }}</td>

                            <!-- Buttons -->
                           <td class="text-center">

    @php
        // Check if user has any invoices with pending balance
        $hasPending = $user->invoices->sum('balance_payable') > 0;
    @endphp

    <div class="d-flex justify-content-center gap-2">

        <a href="{{ route('users.show', $user->id) }}" 
           class="btn btn-sm btn-outline-primary">
            <i class="bi bi-eye"></i> Show
        </a>

        <!-- Show Pay Now only if balance exists -->
        @if($hasPending)
            <a href="#" 
               class="btn btn-success btn-sm openPayModal"
               data-id="{{ $user->id }}"
               data-bs-toggle="modal"
               data-bs-target="#payNowModal">
                <i class="bi bi-cash-coin"></i> Pay Now
            </a>
        @else
            <span class="badge bg-secondary">No Pending</span>
        @endif

    </div>

</td>
                        </tr>
                    @endforeach

                </tbody>
            </table>

        </div>
    </div>

</div>

<!-- PAY NOW MODAL -->

<div class="modal fade" id="payNowModal" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered">
        <form id="payNowForm" method="POST" class="modal-content">
            @csrf

            <div class="modal-header">
                <h5 class="modal-title">Add Payment</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
            </div>

            <div class="modal-body">

                <div class="mb-3">
                    <label class="form-label">Payment Date</label>
                    <input type="date" name="payment_date" class="form-control" value="{{ old('payment_date') }}">
                    @error('payment_date')
                        <div class="text-danger mt-1">{{ $message }}</div>
                    @enderror
                </div>

                <div class="mb-3">
                    <label class="form-label">Amount</label>
                    <input type="number" name="amount" class="form-control" min="1" value="{{ old('amount') }}">
                    @error('amount')
                        <div class="text-danger mt-1">{{ $message }}</div>
                    @enderror
                </div>

            </div>

            <div class="modal-footer">
                <button class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button class="btn btn-success" type="submit">Submit Payment</button>
            </div>

        </form>
    </div>
</div>

<script>
    // Set dynamic user ID
    document.querySelectorAll('.openPayModal').forEach(button => {
        button.addEventListener('click', function () {
            let userId = this.getAttribute('data-id');
            document.getElementById('payNowForm').action = "/users/" + userId + "/pay-now";
        });
    });
</script>


@if ($errors->has('payment_date') || $errors->has('amount'))
<script>
    const payNowModal = new bootstrap.Modal('#payNowModal');
    payNowModal.show();
</script>
@endif

@endsection