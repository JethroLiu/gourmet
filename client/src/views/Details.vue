<template>
    <div id="details">
        <LogoBar></LogoBar>
        <Advertising></Advertising>
        <Content></Content>
        <Footer></Footer>
    </div>
</template>

<script>
import LogoBar from "@/components/Details/header/LogoBar";
import Advertising from "@/components/Details/header/Advertising";
import Content from "@/components/Details/Content";
import Footer from "@/components/Details/footer/Footer";

export default {
    data() {
        return {};
    },
    components: {
        LogoBar,
        Advertising,
        Footer,
        Content,
    },
};
</script>

<style scoped>
#details {
    margin-top: 40px;
}
</style>
