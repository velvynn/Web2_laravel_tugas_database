<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use App\Models\User;
use App\Models\LoanDetail;

class Loan extends Model
{
    use HasFactory;

    protected $fillable = [
        'user_npm',
        'loan_at',
        'return_at'
    ];

    public function user()
    {
        return $this->belongsTo(User::class, 'user_npm', 'npm');
    }

    public function details()
    {
        return $this->hasMany(LoanDetail::class);
    }
}