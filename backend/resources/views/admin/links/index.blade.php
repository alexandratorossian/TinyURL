@extends('layouts.app')

@section('content')
<div class="container">
    <h1>Liste des liens</h1>
    <a href="{{ route('admin.links.create') }}" class="btn btn-primary mb-3">Ajouter un lien</a>
    <table class="table">
        <thead>
            <tr>
                <th>ID</th>
                <th>URL Longue</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($links as $link)
            <tr>
                <td>{{ $link->id }}</td>
                <td>{{ $link->long_url }}</td>
                <td>
                    <a href="{{ route('admin.links.edit', $link->id) }}" class="btn btn-sm btn-primary">Modifier</a>
                    <form action="{{ route('admin.links.destroy', $link->id) }}" method="POST" style="display: inline;">
                        @csrf
                        @method('DELETE')
                        <button type="submit" class="btn btn-sm btn-danger">Supprimer</button>
                    </form>
                </td>
            </tr>
            @endforeach
        </tbody>
    </table>
</div>
@endsection
