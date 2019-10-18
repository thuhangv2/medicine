<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateNewsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('news', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('tieu_de')->nullable();
            $table->string('mo_bai')->nullable();
            $table->string('than_bai')->nullable();
            $table->string('ket_luan')->nullable();
            $table->string('tham_khao')->nullable();
            $table->string('anh_minh_hoa_1')->nullable();
            $table->string('anh_minh_hoa_2')->nullable();
            $table->string('anh_minh_hoa_3')->nullable();
            $table->timestamps();
        });


    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('news');
    }
}