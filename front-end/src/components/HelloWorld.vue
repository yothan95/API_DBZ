<template>
    <div class="titre">
      <p class="p1">Dragon</p><p class="p2">Ball Z</p>
    </div>

    <p class="p3">Characters</p>
    
    <div class="hello">
    <div :key="index" v-for="(characters, index) in characters">
    <table>
        <p class="p4">Nom : {{ characters.nom }}</p>
        <p class="p4">Race : {{ characters.race }}</p>
        <p class="p4">Description : {{ characters.description }}</p>
        <p class="p4">Technique : {{ characters.technique }}</p>
        <img v-bind:src="characters.image">
        
        <br>
    </table>
    </div>
    </div>
</template>

<script>
import axios from 'axios'
export default {
  name: 'HelloWorld',
  data(){
    return{
      characters: null,
    }
  },
  mounted(){
    axios
    .get("http://localhost:8082/personnages")
    .then((reponse) => { 
    this.characters = reponse.data;
    console.log(this.characters)
    });
  },
}
</script>

<style scoped lang="css">

</style>
