<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('jurnal_details', function (Blueprint $table) {
            $table->uuid('id');
            $table->uuid('jurnal_id');
            $table->string('jurnal_no');
            $table->string('jurnal_akun');
            $table->integer('debit')->default(0);
            $table->integer('credit')->default(0);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('jurnal_details');
    }
};
