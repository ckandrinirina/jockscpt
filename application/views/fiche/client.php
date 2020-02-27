<div class="container">
    <img src="<?= base_url('assets/img/bubendorff.png') ?>" alt="" class="logo">
    <div class="row bloc">
        <div class="col-sm-4 info-client">
            <div class="block-puce">
                <h6 class="info-title">Nom</h6>
                <p class="info-content"><?= $client_name ?></p>
            </div>
            <div class="block-puce">
                <h6 class="info-title">Fonction</h6>
                <p class="info-content"><?= $client_fonction ?></p>
            </div>
            <div class="block-puce">
                <h6 class="info-title">Adresse mail</h6>
                <p class="info-content"><?= $client_mail ?></p>
            </div>
            <div class="block-puce">
                <h6 class="info-title">Numéro téléphone</h6>
                <p class="info-content"><?= $client_tel ?></p>
            </div>
        </div>
        <div class="col-sm-4 info-client">
            <div class="block-puce">
                <h6 class="info-title">Adresse</h6>
                <p class="info-content"><?= $client_adresse ?></p>
            </div>
            <div class="block-puce code-ville">
                <p class="info-content"><?= $client_code_poste ?></p>
                <p class="info-content"><?= $client_complement ?></p>
            </div>
            <div class="block-puce">
                <h6 class="info-title">Site internet</h6>
                <p class="info-content"><?= $client_site ?></p>
            </div>
            <div class="block-puce">
                <h6 class="info-title">Horaires</h6>
                <p class="info-content"><?= $client_horaires ?></p>
            </div>
        </div>
    </div>
    <div class="row button">
        <a class="btn btn-success" href="<?= base_url('home') ?>">Voir le script</a>
        <a class="btn btn-warning" href="#">Acceder au dossier</a>
    </div>
</div>
</div>
