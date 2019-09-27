@extends('layouts.app')
@section('content')

   <div class="container">
       <div class="row">
           <div class="col-lg-8">
               <div class="row mt-4">
                   <div class="col-lg-12">
                       <h1> {{$post->title}}</h1>
                   </div>
               </div>
               <div class="row mt-2">
                   <div class="col-lg-12">
                       {{$post->created_at}}
                   </div>
               </div>
               <div class="row mt-2">
                   <div class="col-lg-12">
                       @if ($post->image)
                           <img style="width:80%; height: 350px"  src="{{asset('public/storage/'.$post->image)}}" class="card-img-top" alt="...">
                       @elseif($post->video)
                           <iframe style="width:80%; height: 350px" src="{{$post->video}}"
                                   frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
                           </iframe>
                       @endif
                   </div>
               </div>
               <div class="row mt-4">
                   <div class="col-lg-12 text-justify">
                       {{$post->body}}
                   </div>
               </div>
           </div>
           <div class="col-lg-4">

           </div>
       </div>

   </div>

@endsection
