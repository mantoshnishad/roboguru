@extends('layouts.app')
@section('header')
<script type="text/javascript">


    var timeLeft=10*60;
    function timeout() {

        var minute=Math.floor(timeLeft/60);
        var second=timeLeft%60;
        if(timeLeft<=0)
        {
            clearTimeout(tm);
            document.getElementById("myform").submit();
        }
        else{
            document.getElementById("time").innerHTML=minute+":"+second;
        }
        timeLeft--;
        var tm= setTimeout(function () {timeout()

        },1000)
    }
</script>
    @endsection
@section('content')
    <div class="container-fluid mt-2">
        <div class="row" >
            <div class="col-lg-3">

            </div>
            <div class="col-lg-5">
                @php
                $c=1;
                @endphp
                <h1>Test Quiz <div id="time" style="float: right">Time out</div></h1>

                <form action="{{asset('/quiz/answer')}}" method="post" id="myform">
                @foreach($quizzes as $quiz)
                <div class="card p-4">


                <h6 class="card-title"><strong> {{$c}}:- Question:</strong> {{$quiz->question}}</h6>
                <input type="hidden" name="myid{{$c}}" value="{{$quiz->id}}">
                    <hr>
                    <div class="card-body">
                        <ul class="list-group">
                            <li class="list-group-item d-flex justify-content-between align-items-center">
                                <span class="badge badge-primary badge-pill">1</span>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio"  name="{{$quiz->id}}"  value="{{$quiz->ans1}}">
                                    <label class="form-check-label" for="exampleRadios1">
                                       {{$quiz->ans1}}
                                    </label>
                                </div>

                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center mt-4">
                                <span class="badge badge-primary badge-pill">2 </span>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="{{$quiz->id}}" value="{{$quiz->ans2}}">
                                    <label class="form-check-label" for="exampleRadios1">
                                        {{$quiz->ans2}}
                                    </label>
                                </div>

                            </li>

                            <li class="list-group-item d-flex justify-content-between align-items-center mt-4">
                                <span class="badge badge-primary badge-pill">3</span>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="{{$quiz->id}}"  value="{{$quiz->ans3}}">
                                    <label class="form-check-label" for="exampleRadios1">
                                        {{$quiz->ans3}}
                                    </label>
                                </div>

                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center mt-4">

                                <span class="badge badge-primary badge-pill">4</span>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="{{$quiz->id}}" value="{{$quiz->ans4}}">
                                    <input class="form-check-input" type="radio" name="{{$quiz->id}}" value="na" style="display: none;" checked>
                                    <label class="form-check-label" for="exampleRadios1">
                                        {{$quiz->ans4}}
                                    </label>
                                </div>
                            </li>
                        </ul>
                    </div>


                </div>
                    @php
                        $c++;
                    @endphp
                @endforeach
                <div class="text-center mt-3">
                    <input type="submit" class="btn btn-primary mr-5"/>
                    
                    <a class="btn btn-primary" href="{{asset('/quiz/1')}}">Skip</a>
                </div>
                    @csrf
                </form>
            </div>
            <div class="col-lg-3">

            </div>

        </div>


    </div>  {{-- Container Div End   --}}
@endsection
