<script lang="ts">
    import {DropdownItem, DropdownMenu, DropdownToggle, UncontrolledDropdown} from 'sveltestrap/src';
    import axios from "axios";
    import {onMount} from "svelte";

    export let menuID;
    export let segment;

    let descripcion = "Cargando...";
    let enlaces = [];
    let route = null;
    let error = null;

    onMount(async () => {
        try {
            const res = await axios.get('http://localhost:1337/menus/' + menuID);
            descripcion = res.data.descripcion;
            route = res.data.url;
            enlaces = res.data.menu;
        } catch (e) {
            error = e;
        }
    });
</script>
<UncontrolledDropdown nav inNavbar>
    <DropdownToggle nav caret class="{segment === route ? 'text-primary active' : ''}">{descripcion}</DropdownToggle>
    <DropdownMenu right>
        {#each enlaces as enlace}
            <DropdownItem href="{route}/{enlace.pagina.url}" rel="prefetch">{enlace.pagina.h1}</DropdownItem>
        {:else}
            <DropdownItem>Cargando...</DropdownItem>
        {/each}
    </DropdownMenu>
</UncontrolledDropdown>
