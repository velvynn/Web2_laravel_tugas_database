<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Bookshelf;

class BookshelfSeeder extends Seeder
{
    public function run(): void
    {
        Bookshelf::factory(50)->create();
    }
}