<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateInvoicesTable extends Migration
{
    public function up()
    {
        Schema::create('invoices', function (Blueprint $table) {
            $table->id();

            $table->unsignedBigInteger('user_id'); // FK

            $table->string('bill_number');
            $table->string('invoice_number');
            $table->date('invoice_date');

            $table->decimal('invoice_amount', 10, 2);
            $table->decimal('payed_amount', 10, 2)->default(0);
            $table->decimal('balance_payable', 10, 2)->default(0);

            $table->timestamps();

            // Foreign key reference
            $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade');
        });
    }

    public function down()
    {
        Schema::dropIfExists('invoices');
    }
}