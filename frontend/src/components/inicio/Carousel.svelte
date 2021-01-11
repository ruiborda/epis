<script lang="ts">
    import axios from "axios";
    import {onMount} from "svelte";
    import {Carousel, CarouselCaption, CarouselControl, CarouselIndicators, CarouselItem} from 'sveltestrap/src';

    let items = [];
    onMount(async () => {
        const res = await axios.get("http://localhost:1337/carousel");
        res.data.figure.forEach((element, index, array) => {
            items[index] = {
                url: 'http://localhost:1337' + element.imagen.url,
                title: element.titulo,
                subTitle: element.subtitulo
            };
        });
    });
    let activeIndex = 0;
</script>
<style>
    .carouselimg {
        height: calc(100vh - 61px);
        background-position: center;
        background-repeat: no-repeat;
        background-size: cover;
        position: relative;
        background-color: #cccccc;
    }
</style>
<Carousel {items} bind:activeIndex ride={true} interval={2000}>
    <CarouselIndicators bind:activeIndex {items} />

    <div class="carousel-inner">
        {#each items as item, index}
            <CarouselItem bind:activeIndex itemIndex={index}>
                <div class="d-block w-100 carouselimg" style="background-image: url('{item.url}')"></div>
                <CarouselCaption
                        captionHeader={item.title}
                        captionText={item.subTitle} />
            </CarouselItem>
        {:else}
            <CarouselItem bind:activeIndex itemIndex={0}>
                <svg class="d-block w-100 carouselimg" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" style="margin:auto;background:#fff;display:block;" width="200px" height="200px" viewBox="0 0 100 100" preserveAspectRatio="xMidYMid">
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
                <CarouselCaption
                        captionHeader={"Cargando..."}
                        captionText={"Cargando..."} />
            </CarouselItem>
        {/each}
    </div>

    <CarouselControl direction="prev" bind:activeIndex {items} />
    <CarouselControl direction="next" bind:activeIndex {items} />
</Carousel>
