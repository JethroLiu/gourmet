<template>
    <div id="index">
        <Topbar></Topbar>
        <Logo></Logo>
        <Lbt></Lbt>
    </div>
</template>
<script>
import Topbar from "@/components/header/Topbar";
import Logo from "@/components/header/Logo";
import Lbt from "@/components/lbt/Lbt";

export default {
    components: {
        Topbar,
        Logo,
        Lbt,
    },
};
</script>

<style></style>
