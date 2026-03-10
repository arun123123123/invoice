<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class UsersTableSeeder extends Seeder
{
    public function run()
    {
        // Super Admin
        User::create([
            'name' => 'Super Admin',
            'email' => 'superadmin@example.com',
            'password' => Hash::make('password'),
            'role' => 'superadmin'
        ]);

        // 9 Normal Users
        for ($i = 1; $i <= 9; $i++) {
            User::create([
                'name' => 'User '.$i,
                'email' => 'user'.$i.'@example.com',
                'password' => Hash::make('password'),
                'role' => 'user'
            ]);
        }
    }
}