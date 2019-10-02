<?php

namespace App\Http\Controllers;

use App\Paper;
use App\Subject;
use Illuminate\Http\Request;
use vendor\project\StatusTest;

class QuizController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    public function index($id)
    {
        if($id==0){
            return view('user.quiz.index');
        }
        else
        {
            $papers = Paper::where('subjectType',$id)->get();
            $subject = Subject::find($id);
            return view('user.quiz.index', compact('subject','papers'));
        }

    }
    public function quiz($id)
    {
        $quizzes = Paper::where('subjectType',$id)->get();
        
         return view('user.quiz.quiz', compact('quizzes'));
    }
    public function answer(Request $request)
    {  
        
        $arr=[]; 
        $id;
        for ($i=1;$i<=5;$i++)
        {
            $id='myid'.$i;
            
             if($request->get(request($id))=="na"){
                array_push($arr,"na") ;
            }
            else {
                $ans = Paper::where('id', request($id))->get();
                foreach ($ans as $a) {
                    if ($a->ans == $request->get(request($id))) {
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
