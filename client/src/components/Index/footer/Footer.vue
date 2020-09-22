<template>
  <div id="footer" class="w">
    <router-link to="##" class="redTitle">{{redText}}</router-link>
    <p class="bout">
      <router-link to="##"></router-link>
    </p>
  </div>
</template>

<script>
export default {
  data() {
    return {
      redText: "美食天下 - 让吃更美好！",
    };
  },
};
</script>

<style scoped>
#footer {
  position: relative;
  top: 20px;
  height: 166px;
  border-top: 1px solid #e5e5e5;
}

.redTitle {
  position: absolute;
  top: 10px;
  left: 0;
  display: block;
  font-size: 14px;
  font-weight: bolder;
  text-decoration: none;
  color: #ff5500;
}

.redTitle:hover {
  text-decoration: underline;
}
</style>
