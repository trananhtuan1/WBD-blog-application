<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="#">Navbar</a>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="index.jsp">Home</a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="/display">List Blog</a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="/display?action=create">Create blog</a>
            </li>
        </ul>
        <form class="form-inline my-2 my-lg-0" method="post" action="/display?action=search">
            <input class="form-control mr-sm-2" type="search" name="title" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>
    </div>
</nav>