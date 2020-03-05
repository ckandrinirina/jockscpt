<div class="container">
    <img src="<?= base_url('assets/img/bubendorff.png') ?>" alt="" class="logo">
    <div class="row bloc">
        <button class="link" id="edit_client"><img src="<?= base_url($client_logo) ?>" alt="" class="edit "></button>
        <div class="flex-client">
            <div class="col-sm-4 info-client">
                <div class="block-puce">
                    <h6 class="info-title">Nom du contact</h6>
                    <input class="info-content client" value="<?= $client_name ?>" id="client_name" disabled>
                </div>
                <div class="block-puce">
                    <h6 class="info-title">Fonction</h6>
                    <input class="info-content client" value="<?= $client_fonction ?>" id="client_fonction" disabled>
                </div>
                <div class="block-puce">
                    <h6 class="info-title">Adresse mail</h6>
                    <input class="info-content client" value="<?= $client_mail ?>" id="client_mail" disabled>
                </div>
                <div class="block-puce">
                    <h6 class="info-title">Numéro téléphone</h6>
                    <input class="info-content client" value="<?= formatNumero($client_tel) ?>" id="client_tel" disabled>
                </div>
            </div>
            <div class="col-sm-4 info-client">
                <div class="block-puce">
                    <h6 class="info-title">Adresse</h6>
                    <input class="info-content client" value="<?= $client_adresse ?>" id="client_adresse" disabled>
                </div>
                <div class="block-puce code-ville">
                    <input class="info-content client" value="<?= $client_code_poste ?>" id="client_code_poste" disabled>
                    <input class="info-content client" value="<?= $client_complement ?>" id="client_complement" disabled>
                </div>
                <div class="block-puce">
                    <h6 class="info-title">Site internet</h6>
                    <input class="info-content client" value="<?= $client_site ?>" id="client_site" disabled>
                </div>
                <div class="block-puce">
                    <h6 class="info-title">Horaires</h6>
                    <input class="info-content client" value="<?= $client_horaires ?>" id="client_horaires" disabled>
                </div>
            </div>
        </div>
        <button id="save_client" class="hide btn">Enregistrer</button>
    </div>
    <div class="row button">
        <a class="btn btn-success" href="<?= base_url('home') ?>">Voir le script</a>
        <a class="btn btn-warning" href="javascript:void(0)" onclick="openInNewWindow('<?= $client_dossier ?>')">Accéder au dossier</a>
        <a class="btn btn-warning" href="#">Créer une consigne temporaire</a>
    </div>
    <div class="row flex-client">
        <div class="col-sm-6 bloc-2">
            <h3 class="info-title">Rechercher un distributeur</h3>
            <button id="open-edit-dist" class="link" disabled><img src="<?= base_url('assets/img/edit.svg') ?>" alt="" class="edit"></button>
            <div class="block-puce search-dist">
                <input type="text" id="agence">
                <button class="btn">Rechercher</button>
            </div>
            <div class="block-puce">
                <h6 class="info-title">Nom de l'agence</h6>
                <input type="text" class="info-content" disabled id="nom_agence">
            </div>
            <div class="block-puce">
                <h6 class="info-title">Nom du contact</h6>
                <input type="text" class="info-content" disabled id="contact_agence">
            </div>
            <div class="block-puce">
                <h6 class="info-title">Fonction</h6>
                <input type="text" class="info-content" disabled id="fonction_agence">
            </div>
            <div class="block-puce">
                <h6 class="info-title">Adresse mail</h6>
                <input type="text" class="info-content" disabled id="mail_agence">
            </div>
            <div class="block-puce">
                <h6 class="info-title">Numéro de téléphone</h6>
                <input type="text" class="info-content" disabled id="tel_agence">
            </div>
            <div class="block-puce">
                <h6 class="info-title">Adresse</h6>
                <input type="text" class="info-content" disabled id="adresse_agence">
            </div>
            <div class="block-puce">
                <h6 class="info-title">Horaires</h6>
                <input type="text" class="info-content" disabled id="horraire_agence">
            </div>
            <button class="btn btn-warning btn-center" id="add-distributeur">Ajouter un distributeur</button>
        </div>
        <div class="col-sm-6 bloc-2">
            <h3 class="text-center text-danger">CONSIGNES GENERALES</h3>
            <p class="cg-info" id="consigne-general"><?= $client_consigne_gl ?><p>
                    <a href="javascript:void(0)" onclick="editConsigneGl()"><img src="<?= base_url('assets/img/edit.svg') ?>" alt="" class="edit"></a>
                    <a href="" class="pj-texte"><img src="<?= base_url('assets/img/clip-outline.svg') ?>" alt="" class="pj">
                        <p>Voir la pièce jointe</p>
                    </a>
        </div>
    </div>
    <div class="row flex-client">
        <div class="col-sm-6 bloc-2-3">
            <h3 class="text-center text-danger">STATISTIQUES</h3>
            <h6 class="text-center date-stat block-puce">du
                <input type="text" id="start" class="span2 datepicker form-control" placeholder="Date debut" name="date"> au
                <input type="text" id="end" class="span2 datepicker form-control" placeholder="Date debut" name="date" disabled>
                <button id="get-stat" class="link"><img src="<?= base_url('assets/img/calendar.svg') ?>" alt="" class="calendar"></a>
            </h6>
            <div class="statistique">
                <div class="col-sm-6">
                    <div class="block-puce"><input class="hidden-input-stat" type="text" id="appel" value="0" disabled> appel</div>
                </div>
                <div class="col-sm-6">
                    <div class="block-puce"><span class="stat"><input class="hidden-input-stat" name="" id='pc' value="0%" disabled></span> point conseil</div>
                    <div class="block-puce"><span class="stat"><input class="hidden-input-stat" name="" id='rq' value="0%" disabled></span> réparateur qualifié</div>
                    <div class="block-puce"><span class="stat"><input class="hidden-input-stat" name="" id='typage' value="0%" disabled></span> typage</div>
                </div>
            </div>
            <br>
            <button class="btn btn-warning btn-stat" id="generate-stat">Générer les statistiques</button>
        </div>
        <div class="col-sm-6 bloc-3">
            <div class="row">
                <div class="col-sm-6">
                    <h4 class="text-center">Titre consigne</h4>
                    <h6 class="date-ct">Valable du 01/02/2020 au 29/02/2020</h6>
                    <p class="ct-info">Brave heart, Clara. Goodbye, Clara. Geronimo! No idea. Just do what I do: hold tight and pretend it's a plan. There are fixed points throughout time where things must stay exactly the way they are. This is not one of them. This is an opportunity! Whatever happens here will create its own timeline, its own reality, a temporal tipping point. The future revolves around you, here, now, so do good! Thank you, Strax. And if I'm ever in need of advice from a psychotic potato dwarf, you'll certainly be the first to know.<p>
                            <a href="" class="pj-texte"><img src="<?= base_url('assets/img/bin.svg') ?>" alt="" class="bin "></a>
                            <a href="" class="pj-texte"><img src="<?= base_url('assets/img/clip-outline.svg') ?>" alt="" class="pj">
                                <p>Voir la pièce jointe</p>
                            </a>
                </div>
            </div>
        </div>
        <div class="col-sm-6 bloc-3">
            <div class="row">
                <div class="col-sm-6">
                    <h4 class="text-center">Titre consigne</h4>
                    <h6 class=" date-ct">Valable du 01/02/2020 au 29/02/2020</h6>
                    <p class="ct-info">Brave heart, Clara. Goodbye, Clara. Geronimo! No idea. Just do what I do: hold tight and pretend it's a plan. There are fixed points throughout time where things must stay exactly the way they are. This is not one of them. This is an opportunity! Whatever happens here will create its own timeline, its own reality, a temporal tipping point. The future revolves around you, here, now, so do good! Thank you, Strax. And if I'm ever in need of advice from a psychotic potato dwarf, you'll certainly be the first to know.<p>
                            <a href="" class="pj-texte"><img src="<?= base_url('assets/img/bin.svg') ?>" alt="" class="bin"></a>
                            <a href="" class="pj-texte"><img src="<?= base_url('assets/img/clip-outline.svg') ?>" alt="" class="pj">
                                <p>Voir la pièce jointe</p>
                            </a>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
<!-- <script src="https://unpkg.com/gijgo@1.9.13/js/messages/messages.fr-fr.js" type="text/javascript"> -->
<script>
    DATA_CLIENT = JSON.parse(`<?= $json_data ?>`);
</script>
<script src="<?= base_url('assets/fiche/script.js') ?>"></script>