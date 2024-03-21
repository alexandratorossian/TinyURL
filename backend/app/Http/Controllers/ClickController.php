<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\LinkClick;

class ClickController extends Controller
{
    /**
     * Increment the click count for a specific link.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function incrementClickCount(Request $request)
    {
        // Vérifiez si l'ID du lien a été fourni dans la demande
        if ($request->has('link_id')) {
            // Recherchez le lien dans la base de données
            $linkClick = LinkClick::where('link_id', $request->link_id)->first();

            // Si le lien existe, incrémente le compteur de clics
            if ($linkClick) {
                $linkClick->increment('click_count');
            } else {
                // Si le lien n'existe pas, créez-le et initialisez le compteur de clics à 1
                LinkClick::create([
                    'link_id' => $request->link_id,
                    'clicked_at' => 1
                ]);
            }

            // Retournez une réponse réussie
            return response()->json(['message' => 'Click count updated successfully'], 200);
        }

        // Retournez une erreur si l'ID du lien n'a pas été fourni
        return response()->json(['error' => 'Link ID is required'], 400);
    }
}
