<template>
  <img alt="Vue logo" src="./assets/logo_dbz.png">
  <HelloWorld msg="Welcome to Your Vue.js App"/>
</template>

<script>
import HelloWorld from './components/HelloWorld.vue'

export default {
  name: 'App',
  components: {
    HelloWorld
  }
}
</script>

<style lang="css">
#app {
  text-align: center;
  margin-top: 60px;
}

.titre {
  display: flex;
  flex-direction: row;
  justify-content: center;
  font-size: 40px;
  font-weight: bold;
}

.p1 {
  color: yellow;
  -webkit-text-stroke: 1px black;
  font-family: arial;
}

.p2 {
  color: red;
  -webkit-text-stroke: 1px black;
  font-family: arial;
  margin-left: 10px;
  margin-right: 10px;
}

.p3 {
  color: black;
  font-family: arial;
  font-size: 25px;
  letter-spacing: 0.3em;
  margin-bottom: 100px;
  margin-top: -30px;
}

.p4 {
  display: flex;
  justify-content: left;
  font-family: arial;
}

img {
  background-repeat: no-repeat;
  background-size: contain;
  background-position: center;
  height: 200px;
  width: 200px;
  margin-bottom: -35px;
}
</style>
