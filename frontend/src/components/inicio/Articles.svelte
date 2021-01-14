<script lang="ts">
    import moment from 'moment';
    import "moment/locale/es-us";
    import {Card, CardBody, CardText} from 'sveltestrap/src';
    import axios from "axios";
    import {onMount} from "svelte";

    let articles = [];
    onMount(async () => {
        const res = await axios.get("http://localhost:1337/articles?_limit=3&_sort=created_at:DESC");
        articles = res.data;
    });
</script>
<section class="pt-4 pt-md-11 bg-light">
    <div class="container">
        <div class="w-md-80 w-lg-50 text-center mx-md-auto mb-5 mb-md-9">
            <h2>Blog de Noticias</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing.</p>
        </div>
        <div class="row row-cols-1 row-cols-md-3 g-4">
            {#each articles as article}
                <div class="col">
                    <article>
                        <Card class="mb-3 shadow-sm">
                            <img src="http://localhost:1337{article.image.formats.thumbnail.url}" class="card-img-top" alt="{article.image.alternativeText}">
                            <CardBody>
                                <h5 class="card-title"><a rel="prefetch" href="blog/{article.url}">{article.title}</a>
                                </h5>
                                <CardText>{article.description}</CardText>
                                <p class="card-text">
                                    <small class="text-muted">Creado:
                                        <span class="badge badge-light">{moment(article.created_at).startOf('second').fromNow()}</span></small>
                                    <br />
                                    <small class="text-muted">Actualizado:
                                        <span class="badge badge-light">{moment(article.updated_at).startOf('second').fromNow()}</span></small>
                                </p>
                            </CardBody>
                        </Card>
                    </article>
                </div>
            {:else}
                <div class="col">
                    <Card class="mb-3 shadow-sm">
                        <svg class="card-img-top" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" style="margin:auto;background:#fff;display:block;" width="200px" height="200px" viewBox="0 0 100 100" preserveAspectRatio="xMidYMid">
                            <g>
                                <circle cx="60" cy="50" r="4" fill="#e15b64">
                                    <animate attributeName="cx" repeatCount="indefinite" dur="1s" values="95;35" keyTimes="0;1" begin="-0.67s"></animate>
                                    <animate attributeName="fill-opacity" repeatCount="indefinite" dur="1s" values="0;1;1" keyTimes="0;0.2;1" begin="-0.67s"></animate>
                                </circle>
                                <circle cx="60" cy="50" r="4" fill="#e15b64">
                                    <animate attributeName="cx" repeatCount="indefinite" dur="1s" values="95;35" keyTimes="0;1" begin="-0.33s"></animate>
                                    <animate attributeName="fill-opacity" repeatCount="indefinite" dur="1s" values="0;1;1" keyTimes="0;0.2;1" begin="-0.33s"></animate>
                                </circle>
                                <circle cx="60" cy="50" r="4" fill="#e15b64">
                                    <animate attributeName="cx" repeatCount="indefinite" dur="1s" values="95;35" keyTimes="0;1" begin="0s"></animate>
                                    <animate attributeName="fill-opacity" repeatCount="indefinite" dur="1s" values="0;1;1" keyTimes="0;0.2;1" begin="0s"></animate>
                                </circle>
                            </g>
                            <g transform="translate(-15 0)">
                                <path d="M50 50L20 50A30 30 0 0 0 80 50Z" fill="#f8b26a" transform="rotate(90 50 50)"></path>
                                <path d="M50 50L20 50A30 30 0 0 0 80 50Z" fill="#f8b26a">
                                    <animateTransform attributeName="transform" type="rotate" repeatCount="indefinite" dur="1s" values="0 50 50;45 50 50;0 50 50" keyTimes="0;0.5;1"></animateTransform>
                                </path>
                                <path d="M50 50L20 50A30 30 0 0 1 80 50Z" fill="#f8b26a">
                                    <animateTransform attributeName="transform" type="rotate" repeatCount="indefinite" dur="1s" values="0 50 50;-45 50 50;0 50 50" keyTimes="0;0.5;1"></animateTransform>
                                </path>
                            </g>
                        </svg>
                        <CardBody>
                            <h5 class="card-title">Cargando...</h5>
                            <CardText>Cargando...</CardText>
                            <p class="card-text">
                                <small class="text-muted">Cargando...</small>
                                <br />
                                <small class="text-muted">Cargando...</small>
                            </p>
                            <div class="btn btn-primary">Cargando...</div>
                        </CardBody>
                    </Card>
                </div>
            {/each}
        </div>
    </div>
</section>

