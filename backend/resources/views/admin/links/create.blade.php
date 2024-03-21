@extends('layouts.app')

@section('content')
<div class="container">
    <h1>Ajouter un lien</h1>
    <form action="{{ route('admin.links.store') }}" method="POST">
        @csrf
        <div class="form-group">
            <label for="long_url">URL Longue</label>
            <input type="text" class="form-control" id="long_url" name="long_url" required>
        </div>
        <button type="submit" class="btn btn-primary">Ajouter</button>
    </form>
</div>
@endsection
