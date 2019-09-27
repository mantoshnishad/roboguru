<?php

namespace App\Http\Controllers;

use App\Note;
use Illuminate\Http\Request;

class NoteController extends Controller
{
    public function index()
    {
        $notes = Note::orderBy('id', 'desc')->get();
        return view('public.note', compact('notes') );
    }
    public function show($id){
        $post= Note::findOrFail($id);

        return view('public.single', compact('post'));
    }
    public function note($id)
    {
        $notes= Note::where('noteType',$id)->get();
        return view('public.note', compact('notes'));
    }
}
