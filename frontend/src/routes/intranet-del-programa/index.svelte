<script context="module">
</script>

<script>
</script>

<svelte:head>
  <title>Login</title>
  <meta name="" content="" />
</svelte:head>

<div class="container vh-100">
  <div class="row align-items-center vh-100">
    <div class="col">
      <form>
        <div class="input-group mb-3">
          <div class="input-group-append">
            <span class="input-group-text"><i class="fas fa-user" /></span>
          </div>
          <input
            type="text"
            name=""
            class="form-control input_user"
            value=""
            placeholder="Nombre de usuario"
          />
        </div>

        <div class="input-group mb-3">
          <div class="input-group-append">
            <span class="input-group-text"><i class="fas fa-key" /></span>
          </div>
          <input
            type="password"
            name=""
            class="form-control input_pass"
            value=""
            placeholder="Contraseña"
          />
        </div>

        <div class="form-group">
          <div class="custom-control custom-checkbox">
            <input
              type="checkbox"
              class="custom-control-input"
              id="customControlInline"
            />
            <label class="custom-control-label" for="customControlInline"
              >Recuérdame</label
            >
          </div>
        </div>

        <div class="d-flex justify-content-center mt-3 login_container">
          <button type="button" name="button" class="btn login_btn bg-secondary"
            >Iniciar sesión</button
          >
        </div>
      </form>
      <div class="mt-4">
        <div class="d-flex justify-content-center links">
          ¿No tienes una cuenta? <a href="." class="ml-2">Regístrate</a>
        </div>
        <div class="d-flex justify-content-center links">
          <a href=".">Olvidaste tu contraseña</a>
        </div>
      </div>
    </div>
  </div>
</div>

<style>
</style>
