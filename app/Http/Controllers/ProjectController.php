<?php

namespace App\Http\Controllers;

use App\Project;
use Illuminate\Http\Request;

class ProjectController extends Controller
{

    public function project($id)
    {
        $projects= Project::where('projectType',$id)->get();
        return view('public.page', compact('projects'));
    }
}
