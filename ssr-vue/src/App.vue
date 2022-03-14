<template>
  <div>
    Main page
    <Teleport to="head" after="#pre" before="#post">
      <meta name="description" content="Hello, new world">
    </Teleport>
    <Teleport to="head" after="#pre" before="#post">
      <meta name="keywords" content="test">
    </Teleport>
    <Teleport to="body" after="#app" before="#after-app">
      <div class="app-modal">
        This is in the body root
      </div>
    </Teleport>
  </div>
</template>

<style>
</style>
