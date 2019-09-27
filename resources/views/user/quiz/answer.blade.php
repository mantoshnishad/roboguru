@extends('layouts.app')
@section('content')
    <div class="container-fluid mt-5">
        <div class="row">
            <div class="col-4"></div>
            <div class="col-4">
                <ul class="list-group">
                    @php($c=1)
                    @foreach($arr as $a)
                        @if($a=="right")
                           <li class="list-group-item list-group-item-success"> {{$c}} Answer :{{$a}}</li>

                        @endif
                        @if($a=="wrong")
                                  <li class="list-group-item list-group-item-danger">{{$c}} Answer :{{$a}}</li>

                        @endif
                        @if($a=="na")
                                   <li class="list-group-item list-group-item-warning">{{$c}} Answer :Not Attempt</li>

                        @endif
                        @php($c++)
                    @endforeach

                </ul>
            </div>
            <div class="col-4"></div>
        </div>

    </div>
@endsection
