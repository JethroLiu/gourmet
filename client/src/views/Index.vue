<template>
  <div id="index">
    <Topbar></Topbar>
    <Logo></Logo>
    <Lbt></Lbt>
    <Advice></Advice>
    <Book></Book>
  </div>
</template>

<script>
import Topbar from "@/components/header/Topbar";
import Logo from "@/components/header/Logo";
import Lbt from "@/components/lbt/Lbt";
import Advice from "@/components/advice/Advice";
import Book from "@/components/Book/Book";
export default {
  components: {
    Topbar,
    Logo,
    Lbt,
    Advice,
    Book,
  },
};
</script>

<style scoped>
</style>
