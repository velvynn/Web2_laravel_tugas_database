<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Loan;
use App\Models\Book;

class LoanDetailFactory extends Factory
{
    public function definition(): array
    {
        return [
            'loan_id' => Loan::inRandomOrder()->first()->id,
            'book_id' => Book::inRandomOrder()->first()->id,
            'is_return' => false,
        ];
    }
}