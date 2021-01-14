<script context="module">
    import {API_URL} from "../config";
    import axios from "axios";

    export async function preload({query}) {
        const {q} = query;
        const res = await axios.get(`${API_URL}/articles?_q=${q}`)
        return {articles: res.data};
    }
</script>
<script lang="ts">
    import moment from 'moment';
    import "moment/locale/es-us";
    import {
        Card,
        CardBody,
        CardText
    } from 'sveltestrap/src';

    export let articles;
</script>
<style>
    #results{
        background: #f5f7fa;
        min-height: 100vh;
    }
</style>
<div class="container-fluid pt-5 pb-5" id="results">
    <div class="row justify-content-md-center">
        <div class="col-12 col-md-6">
            {#each articles as article}
                <div class="row">
                    <div class="col-12">
                        <article>
                            <Card class="bg-white mb-5 border-0">
                                <img src="http://localhost:1337{article.image.formats.thumbnail.url}" class="card-img-top" alt="{article.image.alternativeText}">
                                <CardBody>
                                    <h5 class="card-title">
                                        <a rel="prefetch" href="blog/{article.url}">{article.title}</a>
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
                </div>
            {:else}
                <div class="row">
                    <div class="col-12">
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
                </div>
            {/each}
        </div>
        <div class="col-12 col-md-3">
            <div class="row">
                <div class="col">
                    <div class="card border-0">
                        <div class="card-body">
                            <h2 class="text-primary text-center">Categorías</h2>
                            <ul class="list-group border-0">
                                <li class="list-group-item border-0"><a href="blog/noticias">Noticias</a></li>
                                <li class="list-group-item border-0">Eventos</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
