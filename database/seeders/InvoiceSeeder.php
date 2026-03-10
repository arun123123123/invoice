<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Invoice;
use App\Models\User;
use Carbon\Carbon;

class InvoiceSeeder extends Seeder
{
    public function run()
    {
        // Only normal users (not superadmin)
        $normalUsers = User::where('role', 'user')->get();

        foreach (range(1, 25) as $i) {

            $invoiceAmount = rand(5000, 20000);

            Invoice::create([
                'user_id' => $normalUsers->random()->id,

                'bill_number'    => 'BILL-' . str_pad($i, 4, '0', STR_PAD_LEFT),
                'invoice_number' => 'INV-' . str_pad($i, 4, '0', STR_PAD_LEFT),
                'invoice_date'   => Carbon::now()->subDays($i),

                'invoice_amount'  => $invoiceAmount,
                'payed_amount'    => 0,                   // Always 0
                'balance_payable' => $invoiceAmount,      // Full amount pending
            ]);
        }
    }
}