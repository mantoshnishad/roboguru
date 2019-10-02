
<nav class="navbar navbar-expand-lg navbar-dark bg-dark text-uppercase">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent1" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent1">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item ">
              <a class="nav-link" href="{{asset('/')}}">Home </a>
            </li>

            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Projects
              </a>
              <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                <a class="dropdown-item" href="{{asset('/project/1')}}">School Projects</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="{{asset('/project/2')}}">Arduino Projects</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="{{asset('/project/3')}}">IOT Projects</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="{{asset('/project/4')}}">Raspberry Pi Projects</a>

              </div>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Study Notes
              </a>
              <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                <a class="dropdown-item" href="{{asset('/notes/1')}}">Robotics</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="{{asset('/notes/2')}}">Maths</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="{{asset('/notes/3')}}">Reasoning</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="{{asset('/notes/4')}}">Computer</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="{{asset('/notes/5')}}">Electronics</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="{{asset('/notes/5')}}">Mechanical</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="{{asset('/notes/6')}}">Thoughts</a>

              </div>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Video</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Pdf</a>
            </li>

          </ul>
          <p class="form-inline my-2 my-lg-0" >
            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
          </p>
        </div>
      </nav>
