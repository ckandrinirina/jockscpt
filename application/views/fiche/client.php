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
    <div class="row flex-client">
        <div class="col-sm-6 bloc-2">
            <h3 class="info-title">Rechercher un distributeur</h3>
            <div class="block-puce">
                <p class=""><input type="text" id="agence"></p>
            </div>
            <div class="block-puce">
                <h6 class="info-title">Nom de l'agence</h6>
                <p class="info-content" id="nom_agence"></p>
            </div>
            <div class="block-puce">
                <h6 class="info-title">Nom du contact</h6>
                <p class="info-content" id="contact_agence"></p>
            </div>
            <div class="block-puce">
                <h6 class="info-title">Fonction</h6>
                <p class="info-content" id="fonction_agence"></p>
            </div>
            <div class="block-puce">
                <h6 class="info-title">Adresse mail</h6>
                <p class="info-content" id="mail_agence"></p>
            </div>
            <div class="block-puce">
                <h6 class="info-title">Numéro de téléphone</h6>
                <p class="info-content" id="tel_agence"></p>
            </div>
            <div class="block-puce">
                <h6 class="info-title">Adresse</h6>
                <p class="info-content" id="adresse_agence"></p>
            </div>
            <div class="block-puce">
                <h6 class="info-title">Horaires</h6>
                <p class="info-content" id="horraire_agence"></p>
            </div>
            <a class="btn btn-warning btn-center" href="#">Ajouter un distributeur</a>
        </div>
        <div class="col-sm-6 bloc-2">
            <h3 class="text-center text-danger">CONSIGNES GENERALES</h3>
            <p>Brave heart<p>
        </div>
    </div>
    <div class="row flex-client">
        <div class="col-sm-6 bloc-2">
            <h3 class="text-center text-danger">STATISTIQUES</h3>
            <h6 class="text-center date-stat">du 01/02/2020 au 29/02/2020</h6>
            <div class="statistique">
                <div class="col-sm-6"><p><span class="stat">27%</span> appel</p></div>
                <div class="col-sm-6">
                    <p><span class="stat">30%</span> point conseil</p>
                    <p><span class="stat">30%</span> reparateur qualifié</p>
                    <p><span class="stat">40%</span> reparateur typage</p>
                </div>
            </div>
        </div>
        <div class="col-sm-6 bloc-2 bloc-3">
            <div class="row">
                <div class="col-sm-6">
                    <h3 class="text-center text-danger">13/02/2020</h3>
                    <p>Brave heart<p>
                </div>
            </div>
        </div>
        <div class="col-sm-6 bloc-2 bloc-3">
            <div class="row">
                <div class="col-sm-6">
                    <h3 class="text-center text-danger">13/02/2020</h3>
                    <p>Brave heart<p>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
