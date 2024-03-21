@extends('layouts.app')

@section('content')
<div class="container">
    <h1>Modifier le lien</h1>
    <form action="{{ route('admin.links.update', $link->id) }}" method="POST">
        @csrf
        @method('PUT')
        <div class="form-group">
            <label for="long_url">URL Longue</label>
            <input type="text" class="form-control" id="long_url" name="long_url" value="{{ $link->long_url }}" required>
        </div>
        <button type="submit" class="btn btn-primary">Modifier</button>
    </form>
</div>
@endsection
