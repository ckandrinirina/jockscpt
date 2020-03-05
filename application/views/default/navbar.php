<!-- Just an image -->
<!-- nav with link to nextcloud -->
<?php
$CI = &get_instance();
$CI->load->model('ClientModel', 'client');
$clients = $CI->client->findAllClient();
?>

<nav class="navbar navbar-light bg-light">
  <a class="navbar-brand" href="#">
    <img src="<?= base_url('assets/img/logoelise.png') ?>" alt="">
  </a>
  <div class="link-nextcloud">
    <a href="http://46.105.120.43:8080/apps/mail/" target="_blank">
      <img src="<?= base_url('assets/img/mail.png') ?>" alt="">
    </a>
    <a href="http://46.105.120.43:8080/apps/spreed/" target="_blank">
      <img src="<?= base_url('assets/img/chat.png') ?>" alt="">
    </a>
  </div>
</nav>
<!-- nav with all the client links -->
<div class="listeclient">
  <div class="flex">
    <div class="hide">
      <img src="<?= base_url('assets/img/voir.png') ?>" alt="">
      <a href="#">
        <p>Voir tous les clients</p>
      </a>
    </div>
    <div>
      <?php foreach ($clients as $client) : ?>
        <a class="listeclient-item" href="<?= base_url('fiche/client/' . $client['client_name']) ?>">
          <img src="<?= base_url($client['client_logo']) ?>" class="socrif" alt="">
        </a>
      <?php endforeach ?>
    </div>
  </div>
</div>