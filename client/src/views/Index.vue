<template>
  <div id="index">
    <Topbar></Topbar>
    <Logo></Logo>
    <Lbt></Lbt>
    <Advice></Advice>
    <Book></Book>
    <Title></Title>
    <Food></Food>
    <Topic></Topic>
    <Footer></Footer>
  </div>
</template>

<script>
import Topbar from "@/components/header/Topbar";
import Logo from "@/components/header/Logo";
import Lbt from "@/components/lbt/Lbt";
import Advice from "@/components/advice/Advice";
import Book from "@/components/Book/Book";
import Food from "@/components/food/Food";
import Title from "@/components/food/Title";
import Topic from "@/components/topic/Topic";
import Footer from "@/components/footer/Footer";

export default {
  components: {
    Topbar,
    Logo,
    Lbt,
    Advice,
    Book,
    Food,
    Title,
    Topic,
    Footer,
  },
};
</script>

<style scoped>
</style>
