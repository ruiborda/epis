<script context="module">

</script>

<script>
    
</script>

<style>
    
</style>

<svelte:head>
    <title> Login</title>
    <meta name="" content="">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.5.2/journal/bootstrap.min.css" integrity="sha384-QDSPDoVOoSWz2ypaRUidLmLYl4RyoBWI44iA5agn6jHegBxZkNqgm2eHb6yZ5bYs" crossorigin="anonymous">
    <script defer src="https://use.fontawesome.com/releases/v5.15.1/js/all.js" integrity="sha384-9/D4ECZvKMVEJ9Bhr3ZnUAF+Ahlagp1cyPC7h5yDlZdXs4DQ/vRftzfd+2uFUuqS" crossorigin="anonymous">
    </script>
</svelte:head>

<!--
<div class="row">
    <div class="col-md-8">
        <form>
            <div class="form-group">
                <label for="exampleInputEmail1">Email address</label>
                <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone
                    else.</small>
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">Password</label>
                <input type="password" class="form-control" id="exampleInputPassword1">
            </div>
            <div class="form-group form-check">
                <input type="checkbox" class="form-check-input" id="exampleCheck1">
                <label class="form-check-label" for="exampleCheck1">Check me out</label>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>
</div>
-->


<div class="container h-100">

    <form>
        <div class="input-group d-flex justify-content-center">
            <select name="perfil">
            <option value="1">Docente</option> 
            <option value="2">Director</option> 
            <option value="3">Administrativo</option>

            </select>
        </div>
        <br>
            <div class="input-group mb-3">
                <div class="input-group-append">
                    <span class="input-group-text"><i class="fas fa-user"></i></span>
                </div>
                <input type="text" name="" class="form-control input_user" value="" placeholder="username">
            </div>

            <div class="input-group mb-3">
                <div class="input-group-append">
                <span class="input-group-text"><i class="fas fa-key"></i></span>
                </div>
                <input type="password" name="" class="form-control input_pass" value="" placeholder="password"> 
            </div>

        <div class="form-group">
            <div class="custom-control custom-checkbox">
                <input type="checkbox" class="custom-control-input" id="customControlInline">
                <label class="custom-control-label" for="customControlInline">Remember me</label>
            </div>
        </div>

        <div class="d-flex justify-content-center mt-3 login_container">
            <button type="button" name="button" class="btn login_btn bg-secondary">Login</button>
        </div>

      </form>

</div>
<div class="mt-4">
    <div class="d-flex justify-content-center links">
        ¿No tienes una cuenta? <a href="#" class="ml-2">Regístrate</a>
    </div>
    <div class="d-flex justify-content-center links">
        <a href="#">Olvidaste tu contraseña</a>
    </div>
</div>

