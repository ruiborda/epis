<script context="module">
    import {API_URL} from "../../config";

    export async function preload({params}) {
        let existe = false;
        const res = await this.fetch(`${API_URL}/menu-inicio`);
        const data = await res.json();
        data.menu.forEach((element) => {
            if (element.url === params.menu) {
                existe = true;
            }
        });
        if (existe) {
            const res = await this.fetch(`${API_URL}/paginas?_where[url]=${params.url}`);
            const data = await res.json();
            if (data.length > 0) {
                return {post: data[0], url: params.url, menu: params.menu};
            } else {
                this.error(404, "La dirección solicitada no existe:" + params.url);
            }
        } else {
            this.error(404, "La dirección raíz no existe:" + params.menu);
        }
    }
</script>

<script>
    import marked from 'marked';
    import Footer from "../../components/inicio/Footer.svelte";

    export let post;
    export let url;
    export let menu;
    let ArticleSeo = `<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "Article",
  "mainEntityOfPage": {
    "@type": "WebPage",
    "@id": "http://localhost:3000/${menu}/${url}"
  },
  "headline": "${post.h1}",
  "description": "${post.descripcion}",
  "image": "https://schema.org/imag.jpg",
  "author": {
    "@type": "Organization",
    "name": "Escuela profesional de ingenieria de sistemas"
  },
  "publisher": {
    "@type": "Organization",
    "name": "epis-unajma",
    "logo": {
      "@type": "ImageObject",
      "url": "https://unajma.com/logo.jpg"
    }
  },
  "datePublished": "2021-01-11",
  "dateModified": "2021-01-11"
}
<\/script>`;
</script>

<style>

</style>

<svelte:head>
    <title>{post.h1}</title>
    <meta name="Description" content="{post.descripcion}">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.5.2/journal/bootstrap.min.css" integrity="sha384-QDSPDoVOoSWz2ypaRUidLmLYl4RyoBWI44iA5agn6jHegBxZkNqgm2eHb6yZ5bYs" crossorigin="anonymous">
    <script defer src="https://use.fontawesome.com/releases/v5.15.1/js/all.js" integrity="sha384-9/D4ECZvKMVEJ9Bhr3ZnUAF+Ahlagp1cyPC7h5yDlZdXs4DQ/vRftzfd+2uFUuqS" crossorigin="anonymous">
    </script>
    {@html ArticleSeo}
</svelte:head>

<div class="container-sm">
    <div class="row">
        <div class="col">
            <main class="p-md-5">
                <article class="blog-post px-md-5">
                    <h1 class="py-5">{post.h1}</h1>
                    <figure class="figure">
                        <img src="{API_URL}{post.image.url}" class="figure-img img-fluid rounded" alt="{post.image.alternativeText}">
                        <figcaption class="figure-caption">{post.image.caption}</figcaption>
                    </figure>
                    {@html marked(post.content)}
                </article>
            </main>
        </div>
    </div>
</div>

<Footer />
