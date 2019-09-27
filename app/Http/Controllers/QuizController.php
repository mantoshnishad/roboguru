<?php

namespace App\Http\Controllers;

use App\Paper;
use Illuminate\Http\Request;
use vendor\project\StatusTest;

class QuizController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    public function index()
    {
        return view('user.quiz.index');
    }
    public function quiz()
    {
        $quizzes = Paper::all();
        return view('user.quiz.quiz', compact('quizzes'));
    }
    public function answer( Request $request)
    {
        $arr=[];

        for ($i=1;$i<=2;$i++)
        {
            if($request->get($i)=="na"){
                array_push($arr,"na") ;
            }
            else {


                $ans = Paper::where('id', $i)->get();
                foreach ($ans as $a) {
                    if ($a->ans == $request->get($i)) {
                        array_push($arr, "right");
                    } else {
                        array_push($arr, "wrong");
                    }
                }
            }


        }
        return view('user.quiz.answer', compact('arr'));
    }
}
