<?php

namespace App\Http\Controllers;
use App\Models\User;
use Spatie\Permission\Models\Role;


class UserController extends Controller

{


     public function assignRole()
     {

    // Find the user by their ID or any other identifier
    $user = User::find(1); //

    // Find or create the role you want to assign to the user
    $role = Role::findOrCreate('admin'); // Assuming the role is 'admin'

    // Assign the role to the user
    $user->assignRole($role);

    }
}
