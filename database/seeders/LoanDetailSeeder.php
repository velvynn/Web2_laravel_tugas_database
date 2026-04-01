<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\LoanDetail;

class LoanDetailSeeder extends Seeder
{
    public function run(): void
    {
        LoanDetail::factory(50)->create();
    }
}