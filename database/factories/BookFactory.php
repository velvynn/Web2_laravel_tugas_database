<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Category;
use App\Models\Bookshelf;

class BookFactory extends Factory
{
    public function definition(): array
    {
        return [
            'title' => $this->faker->sentence(3),
            'author' => $this->faker->name(),
            'year' => $this->faker->numberBetween(2010, 2025),
            'publisher' => $this->faker->company(),
            'city' => $this->faker->city(),
            'cover' => 'default.jpg',
            'category_id' => Category::inRandomOrder()->first()->id,
            'bookshelf_id' => Bookshelf::inRandomOrder()->first()->id,
        ];
    }
}