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
        // Schema::create('jurnal_detail', function (Blueprint $table) {
        //     $table->id();
        //     $table->string('jurnal_id');
        //     $table->string('jurnal_no');
        //     $table->string('jurnal_akun');
        //     $table->integer('debit');
        //     $table->integer('credit');
        //     $table->timestamps();
        //     $table->foreign('jurnal_id')->references('id')->on('jurnal_header')->onDelete('cascade');
        // });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('jurnal_detail', function (Blueprint $table) {
            $table->dropForeign(['jurnal_id']);
        });

        Schema::dropIfExists('jurnal_detail');
    }
};
