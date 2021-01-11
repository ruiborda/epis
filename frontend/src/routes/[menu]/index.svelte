<script context="module">
    import {API_URL} from "../../config";

    export async function preload({params}) {
        const res = await this.fetch(`${API_URL}/menus?_where[url]=${params.menu}`);
        const data = await res.json();

        if (res.status === 200) {
            return {post: data[0]};
        } else {
            this.error(res.status, data.message);
        }
    }
</script>

<script>
    import Footer from "../../components/inicio/Footer.svelte";

    export let post;

</script>

<style>

</style>

<svelte:head>
    <title>escuela profesional</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.5.2/journal/bootstrap.min.css" integrity="sha384-QDSPDoVOoSWz2ypaRUidLmLYl4RyoBWI44iA5agn6jHegBxZkNqgm2eHb6yZ5bYs" crossorigin="anonymous">
    <script defer src="https://use.fontawesome.com/releases/v5.15.1/js/all.js" integrity="sha384-9/D4ECZvKMVEJ9Bhr3ZnUAF+Ahlagp1cyPC7h5yDlZdXs4DQ/vRftzfd+2uFUuqS" crossorigin="anonymous">
    </script>
</svelte:head>

<div class="container-sm">
    <div class="row">
        <div class="col">
            <main class="p-5">
                <article class="blog-post px-5">
                    {post}
                </article>
            </main>
        </div>
    </div>
</div>

<Footer />
