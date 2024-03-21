<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Spatie\Permission\Traits\HasRoles;
use Spatie\Permission\Models\Role;
use App\Models\User;

class AdminRoleMiddleware
{
    public function handle(Request $request, Closure $next)
    {
        /** @var \App\Models\User */
        $user = Auth::user(); // Get the authenticated user

        // Check if the user is authenticated and has the admin role
        if ($user && $user->hasRole('admin')) {
            return $next($request);
        }

        // If not an admin, redirect somewhere else (the home page)
        return redirect('/');
    }
}

