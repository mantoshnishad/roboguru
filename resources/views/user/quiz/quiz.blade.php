@extends('layouts.app')
@section('content')
    <div class="container-fluid mt-2">
        <div class="row">
            <div class="col-lg-3">

            </div>
            <div class="col-lg-5">
                @php
                $c=1;
                @endphp
                @
                <form action="{{asset('/quiz/answer')}}" method="post">
                @foreach($quizzes as $quiz)
                <div class="card p-4">
                    <h5 class="card-title">Questions {{$c}} of 10</h5>
                    <hr>
                    <h6 class="card-title"><strong>Question:</strong> {{$quiz->question}}</h6>
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
                <div class="text-center">
                    <input type="submit" class="btn btn-primary mr-5"/>
                    <button type="button" class="btn btn-primary">Skip</button>
                </div>
                    @csrf
                </form>
            </div>
            <div class="col-lg-3">

            </div>

        </div>


    </div>  {{-- Container Div End   --}}
@endsection
