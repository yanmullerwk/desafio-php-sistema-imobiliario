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
        Schema::create('imoveis', function (Blueprint $table) {
            $table->id();
            $table->string('logradouro');
            $table->string('numero');
            $table->string('bairro');
            $table->string('complemento')->nullable();
            $table->foreignId('pessoa_id')->constrained('pessoas')->onDelete('cascade');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('imoveis');
    }
};
