<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\User;

class LoanFactory extends Factory
{
    public function definition(): array
    {
        return [
            'user_npm' => User::inRandomOrder()->first()->npm,
            'loan_at' => now(),
            'return_at' => now()->addDays(7),
        ];
    }
}