<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Branch;
class District extends Model
{
    use HasFactory;
    protected $table="district";

    public function branches(){
        return $this->hasMany(Branch::class);
    }
}
