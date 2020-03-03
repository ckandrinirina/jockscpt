ACTUAL_DIST = {};
$(document).ready(function () {
    //create date picker
    $('.datepicker').datepicker({
        locale: 'fr-fr',
        lang: 'fr-fr',
        format: 'dd/mm/yyyy',
    });

    //generate datalist for autocomplet
    generateDataList();

    //generate statistique in view
    $('#get-stat').click(() => {
        var start = $('#start').val();
        var end = $('#end').val();
        var startTest = new Date(start);
        var endTest = new Date(end);
        var url = base_url + 'fiche/ajaxGetStat';
        if (start != '' && end != '') {
            $.ajax({
                type: "GET",
                url: url,
                data: {
                    start: start,
                    end: end,
                },
                async: false,
                success: function (response) {
                    $('#pc').val(response.stat.pc + '%');
                    $('#rq').val(response.stat.rq + '%');
                    $('#typage').val(response.stat.typage + '%');
                    $('#appel').val(response.stat.appel);
                }
            });
        } else {
            Swal.fire(
                'Attention!',
                'La date de debut doit être supérieur à la date de fin et non vide!',
                'warning'
            );
        }
    })

    //generate pdf stat
    $('#generate-stat').click(() => {
        var start = $('#start').val();
        var end = $('#end').val();
        var startTest = new Date(start);
        var endTest = new Date(end);
        if (start != '' && end != '') {
            var start = $('#start').val();
            var end = $('#end').val();
            window.open(base_url + "fiche/generateStat/" + start.replaceAll('/', '-') + "/" + end.replaceAll('/', '-'));
        } else {
            Swal.fire(
                'Attention!',
                'La date de debut doit être supérieur à la date de fin et non vide!',
                'warning'
            );
        }
    })

    //edit client
    $('#edit_client').click(() => {
        $('.client').attr('disabled', false);
        $('#client_name').attr('disabled',true);
        $('#save_client').removeClass('hide');
    })

    $('#save_client').click(() => {
        var data = $('[id^=client_]');
        var client = {};
        var url = base_url + 'fiche/saveClient';
        //get all data from input
        $.each(data, function (indexInArray, valueOfElement) {
            element = $(valueOfElement);
            client[element.prop('id')] = element.val();
        });

        //send and save data with ajax
        $.ajax({
            type: "post",
            url: url,
            data: {
                data: client,
                client_id: DATA_CLIENT.client_id
            },
            async: false,
            success: function (response) {
                Swal.fire(
                    'Succès',
                    'Distributeur enregistrer avec succés',
                    'success'
                );
                $('#save_client').addClass('hide');
                $('.client').attr('disabled', true);
            }
        });
    })

    //create distributeur
    $('#add-distributeur').click(() => {
        Swal.fire({
            title: "<h2>Ajouter un distributeur</h2>",
            html: `
                    <div class="block-puce">
                        <h6 class="info-title add-title">Nom de l'agence </h6>
                        <input type="text" class="info-content add-content" id="reparateur_qualifie_nom">
                    </div>
                    <div class="block-puce">
                        <h6 class="info-title add-title">Adresse  </h6>
                        <input type="text" class="info-content add-content" id="reparateur_qualifie_num_adresse">
                    </div>
                    <div class="block-puce">
                        <h6 class="info-title add-title">Adresse complement </h6>
                        <input type="text" class="info-content add-content" id="reparateur_qualifie_adresse_complement">
                    </div>
                    <div class="block-puce">
                        <h6 class="info-title add-title">Rue </h6>
                        <input type="text" class="info-content add-content" id="reparateur_qualifie_rue">
                    </div>
                    <div class="block-puce">
                        <h6 class="info-title add-title">Localité </h6>
                        <input type="text" class="info-content add-content" id="reparateur_qualifie_localite">
                    </div>
                    <div class="block-puce">
                        <h6 class="info-title add-title">Code postal </h6>
                        <input type="text" class="info-content add-content" id="reparateur_qualifie_code_postal">
                    </div>
                    <div class="block-puce">
                        <h6 class="info-title add-title">Ville </h6>
                        <input type="text" class="info-content add-content" id="reparateur_qualifie_ville">
                    </div>
                    <div class="block-puce">
                        <h6 class="info-title add-title">Téléphone </h6>
                        <input type="text" class="info-content add-content" id="reparateur_qualifie_tel">
                    </div>
                    <div class="block-puce">
                        <h6 class="info-title add-title">Téléphone mini site </h6>
                        <input type="text" class="info-content add-content" id="reparateur_qualifie_tel_mini_site">
                    </div>
                    <div class="block-puce">
                        <h6 class="info-title add-title">Téléphone page jaunes </h6>
                        <input type="text" class="info-content add-content" id="reparateur_qualifie_tel_page_jaune">
                    </div>
                    <div class="block-puce">
                        <h6 class="info-title add-title">Mail SAV </h6>
                        <input type="text" class="info-content add-content" id="reparateur_qualifie_mail_sav">
                    </div>
                    <div class="block-puce">
                        <h6 class="info-title add-title">Mail RESP </h6>
                        <input type="text" class="info-content add-content" id="reparateur_qualifie_mail_resp">
                    </div>
                    <div class="block-puce">
                        <h6 class="info-title add-title">Mail BVR </h6>
                        <input type="text" class="info-content add-content" id="reparateur_qualifie_mail_com_bvr">
                    </div>
                    <div class="block-puce">
                        <h6 class="info-title add-title">Code secteur </h6>
                        <input type="text" class="info-content add-content" id="reparateur_qualifie_code_sect">
                    </div>
                    <div class="block-puce">
                        <h6 class="info-title add-title">Numéro </h6>
                        <input type="text" class="info-content add-content" id="reparateur_qualifie_numero">
                    </div>
                    <div class="block-puce">
                        <h6 class="info-title add-title">Horaires </h6>
                        <input type="text" class="info-content add-content" id="reparateur_qualifie_horraire">
                    </div>
                    <div class="block-puce">
                        <h6 class="info-title add-title">Fonction </h6>
                        <select class="info-content add-content" id="reparateur_qualifie_is_rep_q">
                            <option value="1">Réparateur qualifié</option>
                            <option value="0">Point Conseil</option>
                            <option value="2">Réparateur qualifié et point conseil</option>
                        </select>
                    </div>
                    <button class="btn" id="save_dist">Enregistrer</button>
            `,
            showCancelButton: true,
            showConfirmButton: false,
            cancelButtonText: "Annuler",
            width: '120vh',
        });
    })

    //edit dist
    $('#open-edit-dist').click(() => {
        Swal.fire({
            title: "<h2>Modifier un distributeur</h2>",
            html: `
                    <div class="block-puce">
                        <h6 class="info-title add-title">Nom de l'agence </h6>
                        <input type="text" class="info-content add-content" id="reparateur_qualifie_nom" value="` + ACTUAL_DIST.reparateur_qualifie_nom + `">
                    </div>
                    <div class="block-puce">
                        <h6 class="info-title add-title">Adresse  </h6>
                        <input type="text" class="info-content add-content" id="reparateur_qualifie_num_adresse" value="` + ACTUAL_DIST.reparateur_qualifie_num_adresse + `">
                    </div>
                    <div class="block-puce">
                        <h6 class="info-title add-title">Adresse complement </h6>
                        <input type="text" class="info-content add-content" id="reparateur_qualifie_adresse_complement" value="` + ACTUAL_DIST.reparateur_qualifie_adresse_complement + `">
                    </div>
                    <div class="block-puce">
                        <h6 class="info-title add-title">Rue </h6>
                        <input type="text" class="info-content add-content" id="reparateur_qualifie_rue" value="` + ACTUAL_DIST.reparateur_qualifie_rue + `">
                    </div>
                    <div class="block-puce">
                        <h6 class="info-title add-title">Localité </h6>
                        <input type="text" class="info-content add-content" id="reparateur_qualifie_localite" value="` + ACTUAL_DIST.reparateur_qualifie_localite + `">
                    </div>
                    <div class="block-puce">
                        <h6 class="info-title add-title">Code postal </h6>
                        <input type="text" class="info-content add-content" id="reparateur_qualifie_code_postal" value="` + ACTUAL_DIST.reparateur_qualifie_code_postal + `">
                    </div>
                    <div class="block-puce">
                        <h6 class="info-title add-title">Ville </h6>
                        <input type="text" class="info-content add-content" id="reparateur_qualifie_ville" value="` + ACTUAL_DIST.reparateur_qualifie_ville + `">
                    </div>
                    <div class="block-puce">
                        <h6 class="info-title add-title">Téléphone </h6>
                        <input type="text" class="info-content add-content" id="reparateur_qualifie_tel" value="` + ACTUAL_DIST.reparateur_qualifie_tel + `">
                    </div>
                    <div class="block-puce">
                        <h6 class="info-title add-title">Téléphone mini site </h6>
                        <input type="text" class="info-content add-content" id="reparateur_qualifie_tel_mini_site" value="` + ACTUAL_DIST.reparateur_qualifie_tel_mini_site + `">
                    </div>
                    <div class="block-puce">
                        <h6 class="info-title add-title">Téléphone page jaunes </h6>
                        <input type="text" class="info-content add-content" id="reparateur_qualifie_tel_page_jaune" value="` + ACTUAL_DIST.reparateur_qualifie_tel_page_jaune + `">
                    </div>
                    <div class="block-puce">
                        <h6 class="info-title add-title">Mail SAV </h6>
                        <input type="text" class="info-content add-content" id="reparateur_qualifie_mail_sav" value="` + ACTUAL_DIST.reparateur_qualifie_mail_sav + `">
                    </div>
                    <div class="block-puce">
                        <h6 class="info-title add-title">Mail RESP </h6>
                        <input type="text" class="info-content add-content" id="reparateur_qualifie_mail_resp" value="` + ACTUAL_DIST.reparateur_qualifie_mail_resp + `">
                    </div>
                    <div class="block-puce">
                        <h6 class="info-title add-title">Mail BVR </h6>
                        <input type="text" class="info-content add-content" id="reparateur_qualifie_mail_com_bvr" value="` + ACTUAL_DIST.reparateur_qualifie_mail_com_bvr + `">
                    </div>
                    <div class="block-puce">
                        <h6 class="info-title add-title">Code secteur </h6>
                        <input type="text" class="info-content add-content" id="reparateur_qualifie_code_sect" value="` + ACTUAL_DIST.reparateur_qualifie_code_sect + `">
                    </div>
                    <div class="block-puce">
                        <h6 class="info-title add-title">Numéro </h6>
                        <input type="text" class="info-content add-content" id="reparateur_qualifie_numero" value="` + ACTUAL_DIST.reparateur_qualifie_numero + `">
                    </div>
                    <div class="block-puce">
                        <h6 class="info-title add-title">Horaires </h6>
                        <input type="text" class="info-content add-content" id="reparateur_qualifie_horraire" value="` + ACTUAL_DIST.reparateur_qualifie_horraire + `">
                    </div>
                    <button class="btn" id="edit_dist">Enregistrer</button>
            `,
            showCancelButton: true,
            showConfirmButton: false,
            cancelButtonText: "Annuler",
            width: '120vh',
        });
    })

    $(document).on('click', '#save_dist', () => {
        var data = $('[id^=reparateur_qualifie_]');
        var dist = {};
        var url = base_url + 'fiche/saveDist';
        //get all data from input
        $.each(data, function (indexInArray, valueOfElement) {
            element = $(valueOfElement);
            dist[element.prop('id')] = element.val();
        });

        dist['reparateur_qualifie_client_fk'] = DATA_CLIENT.client_id;

        //send and save data with ajax
        $.ajax({
            type: "post",
            url: url,
            data: {
                data: dist,
            },
            async: false,
            success: function (response) {
                Swal.fire(
                    'Succès',
                    'Distributeur enregistrer avec succés',
                    'success'
                )
            }
        });
    })

    $(document).on('click', '#edit_dist', () => {
        var data = $('[id^=reparateur_qualifie_]');
        var dist = {};
        var url = base_url + 'fiche/editDist';
        //get all data from input
        $.each(data, function (indexInArray, valueOfElement) {
            element = $(valueOfElement);
            dist[element.prop('id')] = element.val();
        });
        //send and save data with ajax
        $.ajax({
            type: "post",
            url: url,
            data: {
                data: dist,
            },
            async: false,
            success: function (response) {
                Swal.fire(
                    'Succès',
                    'Distributeur modifier avec succés',
                    'success'
                )
            }
        });
    })

    //get data on keyup
    $('#agence').on('keyup', (e) => {
        $input = $(e.target);
        var value = $('#' + $input.prop('id')).val();
        url = base_url + 'fiche/ajaxGetDistByName';
        $.ajax({
            type: "get",
            url: url,
            data: {
                reparateur_qualifie_nom: value
            },
            async: false,
            success: function (response) {
                var count = response.count;
                if (count == 2) {
                    var fonction = "Réparateur qualifié et point conseil";
                } else if (response.data.reparateur_qualifie_is_rep_q == 1) {
                    var fonction = "Réparateur qualifié";
                } else if (response.data.reparateur_qualifie_is_rep_q == 0) {
                    var fonction = "Point conseil";
                }
                ACTUAL_DIST = response.data;
                if (ACTUAL_DIST)
                    $('#open-edit-dist').attr('disabled', false);
                else
                    $('#open-edit-dist').attr('disabled', true);

                $('#nom_agence').val(response.data.reparateur_qualifie_nom);
                // $('#contact_agence').val(response.data.reparateur_qualifie_)
                $('#fonction_agence').val(fonction);
                $('#mail_agence').val(response.data.reparateur_qualifie_mail_resp);
                $('#tel_agence').val(response.data.reparateur_qualifie_tel);
                $('#adresse_agence').val(response.data.reparateur_qualifie_num_adresse);
                $('#horraire_agence').val(response.data.reparateur_qualifie_horraire);
            }
        });
    })
});

//fucntion to replace all value in string
String.prototype.replaceAll = function (str1, str2, ignore) {
    return this.replace(new RegExp(str1.replace(/([\/\,\!\\\^\$\{\}\[\]\(\)\.\*\+\?\|\<\>\-\&])/g, "\\$&"), (ignore ? "gi" : "g")), (typeof (str2) == "string") ? str2.replace(/\$/g, "$$$$") : str2);
}

//used to get content of auto completion from the back-end
function generateDataList() {
    $('#agence').attr('list', 'datalist');
    var url = base_url + 'fiche/ajaxFindAllClient';
    var datalist = '';
    $.ajax({
        type: "get",
        url: url,
        data: {
            client_id: DATA_CLIENT.client_id
        },
        async: false,
        success: function (response) {
            response.data.forEach(element => {
                datalist += '<option value="' + element.reparateur_qualifie_nom + '">'
            });
        }
    });
    var datalist = '<datalist id="datalist">' + datalist + '</datalist>';
    $(datalist).insertAfter('#agence');
}