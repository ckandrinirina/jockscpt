<div class="container">
  <div class="btn-search">
    <a href="https://www.bubendorff.com/trouver-revendeur-installateur/ " target="_blank" class="btn btn-default">Chercher un installateur</a>
    <a href="https://www.bubendorff.com/demander-une-intervention/#/reparation" target="_blank" class="btn btn-default">Demande de réparation</a>
  </div>
  <!-- <h3 class="text-center text-danger">SCRIPT</h3> -->
  <h5 class="text-center">Service d'accueil Bubendorff, Elise Bonjour.</h5>
  <!-- dynamic content -->
  <div id="content" class="row"></div>
  <!-- dynamic content -->
  <script>
    DATA_CLIENT = JSON.parse(`<?= $json_data ?>`);
  </script>
  <script src="<?= base_url('assets/home/script.js') ?>"></script>
</div>