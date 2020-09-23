<template>
  <div id="content" class="w">
    <Section></Section>
    <Aside></Aside>
  </div>
</template>

<script>
import Section from "@/components/Details/section/Section";
import Aside from "@/components/Details/aside/Aside";
export default {
  data() {
    return {};
  },components: {
    Section,
  },
};
</script>

<style  scoped>
#content {
  position: relative;
}
</style>