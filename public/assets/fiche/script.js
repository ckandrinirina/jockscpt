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

    //create distributeur
    $('#add-distributeur').click(() => {
        Swal.fire({
            title: "<h2>Ajouter un distributeur</h2>",
            html: `
                    <div class="block-puce">
                        <h6 class="info-title add-title">Nom de l'agence:</h6>
                        <input type="text" class="info-content add-content" id="reparateur_qualifie_nom">
                    </div>
                    <div class="block-puce">
                        <h6 class="info-title add-title">Adresse :</h6>
                        <input type="text" class="info-content add-content" id="reparateur_qualifie_num_adresse">
                    </div>
                    <div class="block-puce">
                        <h6 class="info-title add-title">Adresse :</h6>
                        <input type="text" class="info-content add-content" id="reparateur_qualifie_adresse_complement">
                    </div>
            `,
            showCancelButton: true,
            cancelButtonText: "Annuler",
            width: '120vh',
            confirmButtonText: "Enregistrer",
        });
    })

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