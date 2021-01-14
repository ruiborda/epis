<script>
    import {API_URL} from "../../config";
    import axios from "axios";
    import {onMount} from "svelte";
    import Swal from 'sweetalert2';

    let footer = {
        id: 1,
        encuentranos: "Cargando...",
        llamanos: "Cargando...",
        correo: "Cargando...",
        descripcion: "Cargando...",
        social: [],
        enlaces_utiles: [],
        logo: {
            "alternativeText": "cargando...",
            "caption": "Cargando...",
            "url": "",
        }
    };
    onMount(async () => {
        const res = await axios.get(`${API_URL}/footer-inicio`);
        footer = res.data;
    });

    let correo = "";

    async function handleSubmit() {
        const res = await axios.post(`${API_URL}/suscripcions`,
                {
                    correo: correo
                })
                .then(function (response) {
                    Swal.fire({
                        icon: 'success',
                        title: 'Gracias por suscribirse a nuestros nuevos feeds',
                        showConfirmButton: false,
                        timer: 1500
                    })
                })
                .catch(function (error) {
                    if (error.response.status===400) {
                        Swal.fire({
                            icon: 'error',
                            title: 'Por favor revise que esté bien escrito su correo',
                            showConfirmButton: false,
                            timer: 1500
                        });
                    }else if (error.response.status===500) {
                        Swal.fire({
                            icon: 'info',
                            title: 'Es posible que ya esté suscrito',
                            showConfirmButton: false,
                            timer: 1500
                        });
                    }

                });
    }
</script>
<style>
    ul {
        margin: 0px;
        padding: 0px;
    }

    .footer-section {
        margin-top: 5rem;
        background: #151414;
        position: relative;
    }

    .footer-cta {
        border-bottom: 1px solid #373636;
    }

    .single-cta i {
        color: #ff5e14;
        font-size: 30px;
        float: left;
        margin-top: 8px;
    }

    .cta-text {
        padding-left: 15px;
        display: inline-block;
    }

    .cta-text h4 {
        color: #fff;
        font-size: 20px;
        font-weight: 600;
        margin-bottom: 2px;
    }

    .cta-text span {
        color: #757575;
        font-size: 15px;
    }

    .footer-content {
        position: relative;
        z-index: 2;
    }

    .footer-logo {
        margin-bottom: 30px;
    }

    .footer-logo img {
        max-width: 200px;
    }

    .footer-text p {
        margin-bottom: 14px;
        font-size: 14px;
        color: #7e7e7e;
        line-height: 28px;
    }

    .footer-social-icon span {
        color: #fff;
        display: block;
        font-size: 20px;
        font-weight: 700;
        font-family: 'Poppins', sans-serif;
        margin-bottom: 20px;
    }

    .footer-social-icon a {
        color: #fff;
        font-size: 1.5rem;
        margin-right: 15px;
        display: inline-block;
        width: 3rem !important;
        height: 3rem !important;
        padding: 0.75rem;
        line-height: 0 !important;
        text-align: center;
    }

    .footer-social-icon i {
        height: 1rem;
        width: 1rem;
        text-align: center;
        border-radius: 50%;
    }

    .facebook-bg {
        background: #3B5998;
    }

    .twitter-bg {
        background: #55ACEE;
    }


    .footer-widget-heading h3 {
        color: #fff;
        font-size: 20px;
        font-weight: 600;
        margin-bottom: 40px;
        position: relative;
    }

    .footer-widget-heading h3::before {
        content: "";
        position: absolute;
        left: 0;
        bottom: -15px;
        height: 2px;
        width: 50px;
        background: #ff5e14;
    }

    .footer-widget ul li {
        display: inline-block;
        float: left;
        width: 50%;
        margin-bottom: 12px;
    }

    .footer-widget ul li a:hover {
        color: #ff5e14;
    }

    .footer-widget ul li a {
        color: #878787;
        text-transform: capitalize;
    }

    .subscribe-form {
        position: relative;
        overflow: hidden;
    }

    .subscribe-form input {
        width: 100%;
        padding: 14px 28px;
        background: #2E2E2E;
        border: 1px solid #2E2E2E;
        color: #fff;
    }

    .subscribe-form button {
        position: absolute;
        right: 0;
        background: #ff5e14;
        padding: 13px 20px;
        border: 1px solid #ff5e14;
        top: 0;
    }

    .subscribe-form button i {
        color: #fff;
        font-size: 22px;
        transform: rotate(-6deg);
    }

    .copyright-area {
        background: #202020;
        padding: 25px 0;
    }

    .copyright-text p {
        margin: 0;
        font-size: 14px;
        color: #878787;
    }

    .copyright-text p a {
        color: #ff5e14;
    }

    .footer-menu li {
        display: inline-block;
        margin-left: 20px;
    }

    .footer-menu li:hover a {
        color: #ff5e14;
    }

    .footer-menu li a {
        font-size: 14px;
        color: #878787;
    }
</style>
<footer class="footer-section">
    <div class="container">
        <div class="footer-cta pt-5 pb-5">
            <div class="row">
                <div class="col-xl-4 col-md-4 mb-30">
                    <div class="single-cta">
                        <i class="fas fa-map-marker-alt"></i>
                        <div class="cta-text">
                            <h4>Encuéntranos</h4>
                            <span>{footer.encuentranos}</span>
                        </div>
                    </div>
                </div>
                <div class="col-xl-4 col-md-4 mb-30">
                    <div class="single-cta">
                        <i class="fas fa-phone"></i>
                        <div class="cta-text">
                            <h4>Llámanos</h4>
                            <span>{footer.llamanos}</span>
                        </div>
                    </div>
                </div>
                <div class="col-xl-4 col-md-4 mb-30">
                    <div class="single-cta">
                        <i class="far fa-envelope-open"></i>
                        <div class="cta-text">
                            <h4>Envíenos un correo</h4>
                            <span>{footer.correo}</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-content pt-5 pb-5">
            <div class="row">
                <div class="col-xl-4 col-lg-4 mb-50">
                    <div class="footer-widget">
                        <div class="footer-logo">
                            <a href="/"><img src="{footer.logo.url===''?'https://holy-moon-a322.ruiborda.workers.dev/':`${API_URL}${footer.logo.url}`}" class="img-fluid" alt="{footer.logo.alternativeText}"></a>
                        </div>
                        <div class="footer-text">
                            <p>{footer.descripcion}</p>
                        </div>
                        <div class="footer-social-icon pb-3">
                            <span>Síguenos</span>
                            {#each footer.social as link}
                                {#if link.descripcion === "facebook"}
                                    <a href="{link.url}" class="btn rounded-circle facebook-bg"><i class="fab fa-facebook-f"></i></a>
                                {:else if link.descripcion === "twitter"}
                                    <a href="{link.url}" class="btn rounded-circle twitter-bg"><i class="fab fa-twitter"></i></a>
                                {/if}
                            {:else}
                                <a href="." class="btn rounded-circle">
                                    <i class="fas fa-spinner fa-spin"></i>
                                </a>
                            {/each}
                        </div>
                    </div>
                </div>
                <div class="col-xl-4 col-lg-4 col-md-6 mb-30">
                    <div class="footer-widget">
                        <div class="footer-widget-heading">
                            <h3>Enlaces útiles</h3>
                        </div>
                        <ul>
                            {#each footer.enlaces_utiles as link}
                                <li><a href="{link.url}">{link.descripcion}</a></li>
                            {:else}
                                <li><a href=".">Cargando...</a></li>
                            {/each}
                        </ul>
                    </div>
                </div>
                <div class="col-xl-4 col-lg-4 col-md-6 mb-50">
                    <div class="footer-widget">
                        <div class="footer-widget-heading">
                            <h3>Suscribir</h3>
                        </div>
                        <div class="footer-text mb-25">
                            <p>No deje de suscribirse a nuestros nuevos feeds, por favor complete el formulario a
                                continuación.</p>
                        </div>
                        <div class="subscribe-form">
                            <form on:submit|preventDefault={handleSubmit}>
                                <input type="text" placeholder="Dirección de correo Electrónico" bind:value={correo}>
                                <button><i class="fab fa-telegram-plane"></i></button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="copyright-area">
        <div class="container">
            <div class="row">
                <div class="col-xl-6 col-lg-6 text-center text-lg-left">
                    <div class="copyright-text">
                        <p>Copyright © 2018, Todos los derechos reservados
                            <a href="http://epis.unajma.edu.pe/" rel="noreferrer" target="_blank">unajma</a>
                        </p>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6 d-none d-lg-block text-right">
                    <div class="footer-menu">
                        <ul>
                            <li><a href="/">Inicio</a></li>
                            <li><a href="/terminos">Términos</a></li>
                            <li><a href="/privacidad">Privacidad</a></li>
                            <li><a href="/politica">Política</a></li>
                            <li><a href="/contacto">Contacto</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
