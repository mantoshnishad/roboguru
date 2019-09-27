@extends('layouts.app')
@section('content')

<div class="container">
    <div class="row mt-5">
        <div class="col-lg-3">
            <h5>Search By Category</h5>
            <div class="dropdown mt-3">
                <button class="btn btn-outline-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Dropdown button
                </button>
                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                    <a class="dropdown-item" href="#">Action</a>
                    <a class="dropdown-item" href="#">Another action</a>
                    <a class="dropdown-item" href="#">Something else here</a>
                </div>
            </div>
        </div>
        <div class="col-lg-9">
            <h5>Notes</h5>
            <hr>
            @foreach($notes as $note)
            <div class="bg-secondary p-3 text-white mt-4">
                <h5><a href="{{asset('note/'.$note->id)}}">{{$note->title}}</a></h5>
                <hr>
                <div class="row">
                    @if($note->image)
                        <div class="col-4">
                                <img style="width: 250px; height: 200px;" src="{{asset('public/storage/'.$note->image)}}">
                        </div>
                        <div class="col-8">
                            @elseif($note->video)
                                <div class="col-4">
                                <iframe style="width: 250px; height: 200px;"
                                        src="{{asset($note->video)}}" frameborder="0"
                                        allow="accelerometer;  encrypted-media; gyroscope; picture-in-picture"
                                        allowfullscreen></iframe>
                                </div>
                                <div class="col-8">
                            @else
                                <div class="col-12">
                    @endif
                        {{$note->body}}
                        <a href="{{asset('note/'.$note->id)}}">Read More</a>
                    </div>
                </div>
            </div>
            @endforeach





        </div>

    </div>

</div>

    @endsection
