@extends('layouts.app')

<style type="text/css">
    .col-md-3 {
        display: inline-block;
        margin-left: -4px;
    }

    .col-md-3 img {
        width: 100%;
        height: auto;
    }

    body .carousel-indicators li {
        background-color: red;
    }

    body .carousel-indicators {
        bottom: 0;
    }

    body .carousel-control-prev-icon,
    body .carousel-control-next-icon {
        background-color: red;
    }

    body .no-padding {
        padding-left: 0;
        padding-right: 0;
    }
</style>

@section('content')

    <div class="bd-example">
        <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
                <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                @php
                    $a = 1
                @endphp
                @foreach($banners as $banner)
                    @if($a==1)
                        <div class="carousel-item active">
                            @else
                                <div class="carousel-item">
                                    @endif
                                    <img style="height: auto;" src="{{asset('public/storage/'.$banner->image)}}"
                                         class="d-block w-100" alt="...">
                                    <div class="carousel-caption d-none d-md-block">
                                        <h5>{{$banner->title}}</h5>
                                        <p>{{$banner->body}}</p>
                                    </div>
                                </div>
                                @php
                                    $a = $a +1
                                @endphp
                                @endforeach
                        </div>
                        <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button"
                           data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#carouselExampleCaptions" role="button"
                           data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row mt-4 text-center">
            <div class="col-lg-4">
                <div class="card" style="width: 100%">
                    <div class="card-header bg-primary">
                        <h5> Results</h5>
                    </div>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item">Cras justo odio</li>
                        <li class="list-group-item">Dapibus ac facilisis in</li>
                        <li class="list-group-item">Vestibulum at eros</li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="card" style="width: 100%">
                    <div class="card-header bg-primary">
                        <h5>Fresh Topics</h5>
                    </div>
                    <div class="mt-3">
                        <a href="#" class="btn btn-info btn-lg active mr-4" role="button" aria-pressed="true">Primary
                            link</a>
                        <a href="#" class="btn btn-info btn-lg active" role="button" aria-pressed="true">Primary
                            link</a>
                    </div>
                    <div class="mb-3 mt-3">
                        <a href="#" class="btn btn-info btn-lg active mr-4" role="button" aria-pressed="true">Primary
                            link</a>
                        <a href="#" class="btn btn-info btn-lg active" role="button" aria-pressed="true">Primary
                            link</a>
                    </div>


                </div>
            </div>
            <div class="col-lg-4">
                <div class="card" style="width: 100%">
                    <div class="card-header bg-primary">
                        <h5> Letest Jobs</h5>
                    </div>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item">Cras justo odio</li>
                        <li class="list-group-item">Dapibus ac facilisis in</li>
                        <li class="list-group-item">Vestibulum at eros</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid">
        <!-- Recent Post -->

        <div class="row mt-5 text-center bg-warning">
            <div class="col-lg-12 mt-1">
                <h2>Recent Posts</h2>
            </div>
        </div>

        <div id="demo" class="carousel slide mt-5" data-ride="carousel">

            <!-- Indicators
            <ul class="carousel-indicators">
              <li data-target="#demo" data-slide-to="0" class="active"></li>
              <li data-target="#demo" data-slide-to="1"></li>
              <li data-target="#demo" data-slide-to="2"></li>
            </ul>

             The slideshow -->

            @php
                $url = "https://www.googleapis.com/youtube/v3/search?channelId=UCudJv5yD2f7ktA_uCF3vNdQ&order=date&part=snippet&type=video&maxResults=39&key=AIzaSyCuxvILUqZb8TFEz9v_dNzxQ7_bei0rgvQ";
                $data = json_decode(file_get_contents($url));
            @endphp
            <div class="container carousel-inner no-padding">


                <?php
                $c = 1;
                $a = 0;
                //for ($i=0; $i<16; $i++)
                foreach($data->items AS $item)

                {
                if($c == 1) {
                if($a == 0){
                ?>
                <div class="carousel-item active">
                    <?php   $a++;    }
                    else{
                    ?>
                    <div class="carousel-item">
                        <?php
                        }

                        }

                        ?>


                        <div class="col-xs-3 col-sm-3 col-md-3">
                            <iframe style="width:100%; height: 250px"
                                    src="https://www.youtube.com/embed/{{$item->id->videoId}}" frameborder="0"
                                    allow="accelerometer;  encrypted-media; gyroscope; picture-in-picture"
                                    allowfullscreen></iframe>
                            <div class="card-body">
                                <h5 class="card-title">{{substr($item->snippet->title,0,35)}}</h5>

                                <a href="#" class="btn btn-primary">Read More</a>
                            </div>
                        </div>
                        <?php
                        if($c == 4){
                        $c = 0;
                        ?>
                    </div>
                    <?php

                    }

                    $c++;

                    } ?>


                </div>

            </div>
                <!-- Left and right controls -->
                <a class="carousel-control-prev" href="#demo" data-slide="prev">
                    <span class="carousel-control-prev-icon"></span>
                </a>
                <a class="carousel-control-next" href="#demo" data-slide="next">
                    <span class="carousel-control-next-icon"></span>
                </a>
            </div>


            <div class="row mt-5 text-center bg-warning">
                <div class="col-lg-12 mt-1">
                    <h2>Popular Updates</h2>


                </div>
            </div>


            <div id="demo1" class="carousel slide mt-5" data-ride="carousel">

                <!-- Indicators
                <ul class="carousel-indicators">
                  <li data-target="#demo" data-slide-to="0" class="active"></li>
                  <li data-target="#demo" data-slide-to="1"></li>
                  <li data-target="#demo" data-slide-to="2"></li>
                </ul>

                 The slideshow -->

                @php
                    $url = "https://www.googleapis.com/youtube/v3/search?channelId=UCudJv5yD2f7ktA_uCF3vNdQ&order=viewCount&part=snippet&type=video&maxResults=49&key=AIzaSyCuxvILUqZb8TFEz9v_dNzxQ7_bei0rgvQ";
                    $data = json_decode(file_get_contents($url));
                @endphp
                <div class="container carousel-inner no-padding">


                    <?php
                    $c = 1;
                    $a = 0;
                    //for ($i=0; $i<16; $i++)
                    foreach($data->items AS $item)

                    {
                    if($c == 1) {
                    if($a == 0){
                    ?>
                    <div class="carousel-item active">
                        <?php   $a++;    }
                        else{
                        ?>
                        <div class="carousel-item">
                            <?php
                            }

                            }

                            ?>


                            <div class="col-xs-3 col-sm-3 col-md-3">
                                <iframe style="width:100%; height: 250px"
                                        src="https://www.youtube.com/embed/{{$item->id->videoId}}" frameborder="0"
                                        allow="accelerometer;  encrypted-media; gyroscope; picture-in-picture"
                                        allowfullscreen></iframe>
                                <div class="card-body">
                                    <h5 class="card-title">{{substr($item->snippet->title,0,35)}}</h5>

                                    <a href="#" class="btn btn-primary">Read More</a>
                                </div>
                            </div>
                            <?php
                            if($c == 4){
                            $c = 0;
                            ?>
                        </div>
                        <?php

                        }

                        $c++;

                        } ?>


                    </div>

                </div>
                    <!-- Left and right controls -->
                    <a class="carousel-control-prev" href="#demo1" data-slide="prev">
                        <span class="carousel-control-prev-icon"></span>
                    </a>
                    <a class="carousel-control-next" href="#demo1" data-slide="next">
                        <span class="carousel-control-next-icon"></span>
                    </a>
                </div>


            </div>
        </div>
    </div>
            <div class="container">
                <!-- Coming soon row -->
                <div class="row mt-4">
                    <!-- Coming soon col -->
                    <div class="col-lg-8">
                        <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                            <div class="carousel-inner">
                                @php
                                    $a = 1
                                @endphp
                                @foreach($cs as $c)
                                    @if($a==1)
                                        <div class="carousel-item active">
                                            @else
                                                <div class="carousel-item">
                                                    @endif
                                                    <img style="height: 100%;"
                                                         src="{{asset('public/storage/'.$c->image)}}"
                                                         class="d-block w-100" alt="...">

                                                </div>
                                                @php
                                                    $a = $a +1
                                                @endphp
                                                @endforeach


                                        </div>
                                        <a class="carousel-control-prev" href="#carouselExampleControls" role="button"
                                           data-slide="prev">
                                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                            <span class="sr-only">Previous</span>
                                        </a>
                                        <a class="carousel-control-next" href="#carouselExampleControls" role="button"
                                           data-slide="next">
                                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                            <span class="sr-only">Next</span>
                                        </a>
                            </div>

                        </div>
                        <!-- End Coming soon col -->
                        <div class="col-lg-4">
                            <div class="card" style="width: 100%">
                                <div class="card-header bg-warning">
                                    <h2>Category</h2>
                                </div>
                                <ul class="list-group list-group-flush">
                                    <li class="list-group-item"><a class="nav-link" href="{{asset('/notes')}}"><i
                                                    class="fa fa-file-text pr-1" aria-hidden="true"></i>Notes</a></li>
                                    <li class="list-group-item"><a class="nav-link" href="#"><i
                                                    class="fa fa-pencil-square-o pr-1" aria-hidden="true"></i>Test
                                            Service</a></li>
                                    <li class="list-group-item"><a class="nav-link" href="#"><i
                                                    class="fa fa-caret-square-o-right pr-1" aria-hidden="true"></i>Course
                                            Video</a></li>
                                    <li class="list-group-item"><a class="nav-link mr-4" href="#"><i
                                                    class="fa fa-mobile pr-1" aria-hidden="true"></i>Get App</a></li>
                                </ul>
                            </div>
                        </div>
                    </div> <!-- end coming soon -->
                    <div class="row mt-5 text-center bg-dark text-white">
                        <div class="col-lg-12 mt-1">
                            <h2>Our Partners</h2>


                        </div>
                    </div>
                    <div class="row mt-4">
                        <div class="col-lg-3">
                            <img style="width:100%" src="{{asset('img/partner.png')}}">
                        </div>
                        <div class="col-lg-3">
                            <img style="width:100%" src="{{asset('img/partner.png')}}">
                        </div>
                        <div class="col-lg-3">
                            <img style="width:100%" src="{{asset('img/partner.png')}}">
                        </div>
                        <div class="col-lg-3">
                            <img style="width:100%" src="{{asset('img/partner.png')}}">
                        </div>
                    </div>


                </div>
            </div>


        </div>


        <div class="container-fluid bg-dark text-white">
            <div class="container">
                <div class=" row bg-dark text-white p-3">

                    <div class="col-lg-4">
                        Footer Area 1
                    </div>
                    <div class="col-lg-4">
                        Footer area 2
                    </div>
                    <div class="col-lg-4">
                        Footer Area 3
                    </div>
                </div>
            </div>
        </div>

@endsection



