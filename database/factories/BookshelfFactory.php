<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class BookshelfFactory extends Factory
{
    public function definition(): array
    {
        return [
            'name' => 'Rak ' . strtoupper($this->faker->randomLetter()),
            'code' => strtoupper($this->faker->bothify('R##')),
        ];
    }
}