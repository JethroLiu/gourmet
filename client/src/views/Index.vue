<template>
  <div id="index">
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
import Logo from "@/components/Index/header/Logo";
import Lbt from "@/components/Index/lbt/Lbt";
import Advice from "@/components/Index/advice/Advice";
import Book from "@/components/Index/Book/Book";
import Food from "@/components/Index/food/Food";
import Title from "@/components/Index/food/Title";
import Topic from "@/components/Index/topic/Topic";
import Footer from "@/components/Index/footer/Footer";

export default {
  components: {
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
#index {
  margin-top: 40px;
}
</style>
