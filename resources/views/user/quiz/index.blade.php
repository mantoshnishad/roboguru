@extends('layouts.app')
@section('content')
    <div class="container-fluid mt-2">
        <div class="row bg-primary py-2">
            <div class="col-2">

            </div>
            <div class="col-10">
                <!-- Example single danger button -->
                <div class="btn-group">
                    <button type="button" class="btn btn-light dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Select Test Paper
                    </button>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="#">SSC</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">Railways</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">Banking</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">Others</a>
                    </div>
                </div>
            </div>
        </div> {{-- Row 1 Div End   --}}
        <div class="row">
            <div class="col-2 col-s-4 bg-dark">
                <nav class="nav flex-column">
                    <a class="nav-link active" href="#">Active</a>
                    <a class="nav-link" href="#">Link</a>
                    <a class="nav-link" href="#">Link</a>
                    <a class="nav-link disabled" href="#">Disabled</a>
                </nav>
            </div>
            <div class="col-10 mt-2">
                <div class="card" style="width: 18rem;">
                    <div class="card-body">
                        <h4 class="card-title">Railways</h4>
                        <h6 class="card-subtitle mb-2 text-muted">Card subtitle</h6>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <h6 class="card-subtitle mb-2 text-muted">Card subtitle</h6>
                        <h6 class="card-subtitle mb-2 text-muted">Card subtitle</h6>
                        <div class="dropdown-divider"></div><br>
                        <center>
                        <a href="{{asset('quiz/quiz')}}" class="card-link btn-primary p-2">Start Quiz</a>
                        </center>
                    </div>
                </div>
            </div>
        </div> {{-- Row 2 Div End   --}}
    </div>  {{-- Container Div End   --}}
    @endsection
