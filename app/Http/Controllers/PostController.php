<?php

namespace App\Http\Controllers;

use App\Banner;
use App\Comingsoon;
use Illuminate\Http\Request;
use App\MyPost;


class PostController extends Controller
{
    public function index()
    {
        $posts = MyPost::paginate(3);
        $banners = Banner::all();
        $cs = Comingsoon::all();
        return view('public.welcome', compact('posts', 'banners', 'cs'));
    }

    public  function show($id)
    {

        $post= MyPost::findOrFail($id);

       return view('public.single', compact('post'));

    }
}
