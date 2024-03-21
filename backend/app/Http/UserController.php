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

    // Find or create the role to assign it to the user
    $role = Role::findOrCreate('admin');

    // Assign the role to the user
    $user->assignRole($role);

    }
}
