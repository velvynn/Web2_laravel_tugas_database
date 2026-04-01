<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\ReturnModel;

class ReturnSeeder extends Seeder
{
    public function run(): void
    {
        ReturnModel::factory(50)->create();
    }
}