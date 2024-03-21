<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Link;

class LinkController extends Controller
{
    // Method to retrieve the long URL associated with a tab_id
    public function getLongUrl($tabId)
    {
        $link = Link::where('tab_id', $tabId)->first();

        if ($link) {
            return response()->json(['long_url' => $link->long_url]);
        } else {
            return response()->json(['error' => 'URL longue non trouvée'], 404);
        }
    }

   // CRUD

      // Afficher la liste des liens
      public function index()
      {
          $links = Link::all();
          return view('admin.links.index', compact('links'));
      }

      // Afficher le formulaire de création de lien
      public function create()
      {
          return view('admin.links.create');
      }

      // Enregistrer un nouveau lien dans la base de données
      public function store(Request $request)
      {
          $request->validate([
              'long_url' => 'required|url',
          ]);

          Link::create($request->all());

          return redirect()->route('admin.links.index')->with('success', 'Lien créé avec succès.');
      }

      // Afficher le formulaire de modification de lien
      public function edit($id)
      {
          $link = Link::findOrFail($id);
          return view('admin.links.edit', compact('link'));
      }

      // Mettre à jour un lien dans la base de données
      public function update(Request $request, $id)
      {
          $request->validate([
              'long_url' => 'required|url',
          ]);

          $link = Link::findOrFail($id);
          $link->update($request->all());

          return redirect()->route('admin.links.index')->with('success', 'Lien mis à jour avec succès.');
      }

      // Supprimer un lien de la base de données
      public function destroy($id)
      {
          $link = Link::findOrFail($id);
          $link->delete();

          return redirect()->route('admin.links.index')->with('success', 'Lien supprimé avec succès.');
      }

      // Link Counts

     
}
