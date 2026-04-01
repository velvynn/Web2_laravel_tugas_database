<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\ReturnModel;
use App\Models\LoanDetail;

class ReturnModelFactory extends Factory
{
    protected $model = ReturnModel::class;

    public function definition(): array
    {
        return [
            'loan_detail_id' => LoanDetail::inRandomOrder()->first()->id,
            'charge' => $this->faker->boolean(),
            'amount' => $this->faker->numberBetween(0, 50000),
        ];
    }
}