<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\Link;

class LinkController extends Controller
{


     public function getLongUrl($tabId)
     {
         $link = Link::where('tab_id', $tabId)->first();

         if ($link) {
             return response()->json(['long_url' => $link->long_url]);
         } else {
             return response()->json(['error' => 'URL longue non trouvée'], 404);
         }
     }

}
