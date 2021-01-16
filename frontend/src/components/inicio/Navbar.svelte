<script lang="ts">
    import {API_URL} from "../../config";
    import {
        Collapse,
        DropdownItem,
        DropdownMenu,
        DropdownToggle,
        Nav,
        Navbar,
        NavbarBrand,
        NavbarToggler,
        NavItem,
        NavLink,
        UncontrolledDropdown
    } from 'sveltestrap/src';
    import {onMount} from "svelte";
    import axios from "axios";
    import Search from "./Search.svelte";

    export let segment;

    let isOpen = false;

    function handleUpdate(event) {
        isOpen = event.detail.isOpen;
    }

    let nav = [];
    let error = null;
    let logoUrl = null;
    let marca = null;
    
    onMount(async () => {
        const res = await axios.get(`${API_URL}/menu-inicio`);
        nav = res.data.menu;
        marca = res.data.marca;
        logoUrl = "http://localhost:1337" + res.data.logo.formats.thumbnail.url;
    });
</script>

<Navbar color="light" light expand="md">
    <NavbarBrand href="/">
        {#if logoUrl === null}
            <svg class="d-inline-block align-top" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" style="margin:auto;background:#fff;display:block;" width="24" height="30" viewBox="0 0 100 100" preserveAspectRatio="xMidYMid">
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
        {:else}
            <img src="{logoUrl}" alt="logo unajma" width="24" height="30" class="d-inline-block align-top">
        {/if}
        {marca === null? "Cargando...":marca }
    </NavbarBrand>
    <NavbarToggler on:click={() => (isOpen = !isOpen)} />
    <Collapse {isOpen} navbar expand="md" on:update={handleUpdate}>
        <Nav class="ml-auto" navbar>
            {#each nav as menu}
                {#if menu.__component === "menu.enlace-externo"}
                    <NavItem>
                        <NavLink href="{menu.url}" rel="noreferrer"  target="_blank">{menu.descripcion}</NavLink>
                    </NavItem>
                {:else if menu.__component === "menu.desplegable"}
                    <UncontrolledDropdown nav inNavbar>
                        <DropdownToggle nav caret class="{segment === menu.url ? 'text-primary active' : ''}">{menu.descripcion}</DropdownToggle>
                        <DropdownMenu right>
                            {#each menu.pagina as p}
                                <DropdownItem href="{menu.url}/{p.pagina.url}" rel="prefetch">{p.pagina.h1}</DropdownItem>
                            {:else}
                                <DropdownItem>Cargando...</DropdownItem>
                            {/each}
                        </DropdownMenu>
                    </UncontrolledDropdown>
                {:else if menu.__component === "menu.enlace"}
                    <NavItem>
                        <NavLink href="{menu.url}" rel="prefetch" class="{segment === menu.url ? 'text-primary active' : ''}">{menu.descripcion}</NavLink>
                    </NavItem>
                {/if}
            {:else}
                <NavItem>
                    <NavLink href="/">Cargando...</NavLink>
                </NavItem>
            {/each}
        </Nav>
        <Search />
    </Collapse>
</Navbar>
