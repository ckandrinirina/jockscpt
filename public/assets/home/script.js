SCRIPT_VAL = [];
$(document).ready(function () {
    //save actual data for best control
    dataClient = [];
    initByStep(1);
    initByStep(2);
    generateDataList();
    //click on next step
    $('#content').on('click', '.next', (e, v) => {
        $('#101').attr('disabled', false);
        var $e = $(e.target);
        //id of clicked element
        var clickId = $e.prop('id');
        //find data of clicked element
        var dataActualClick = findResultInActualData(clickId);
        pushToScript(dataActualClick);
        appendNextStep(dataActualClick.champs_next_step);
        // goToNextStep();
    })

    //test if is minisite ou poge jaune
    $(document).on('click', '#2', () => {
        isMinisite = 1;
    })

    $(document).on('click', '#3', () => {
        isMinisite = 0;
    })

    //test if is point conseil ou reparateur qualifié
    $(document).on('click', '#7', () => {
        isPq = 1;
    })

    $(document).on('click', '#5', () => {
        isPq = 0;
    })

    $(document).on('click', '#6', () => {
        isPq = 2;
    })

    $(document).on('keyup', '#101', (e) => {
        $input = $(e.target);
        var value = $('#' + $input.prop('id')).val();
        testIfReQualifie(value);
    })

    //send or save script
    $(document).on('click', '.save', (e) => {
        $button = $(e.target);
        var param = $button.prop('id');
        if (typeof $('#nom_client').val() == 'undefined')
            var nom_client = '';
        else
            var nom_client = $('#nom_client').val();

        if (typeof $('#prenom_client').val() == 'undefined')
            var prenom_client = '';
        else
            var adresse_client = $('#prenom_client').val();

        if (typeof $('#adresse_client').val() == 'undefined')
            var adresse_client = '';
        else
            var adresse_client = $('#adresse_client').val();

        if (typeof $('#cp_client').val() == 'undefined')
            var cp_client = '';
        else
            var cp_client = $('#cp_client').val();

        if (typeof $('#ville_client').val() == 'undefined')
            var ville_client = '';
        else
            var ville_client = $('#ville_client').val();

        if (typeof $('#nbr_volet').val() != 'undefined')
            var nbr_volet = $('#nbr_volet').val();
        else if (typeof $('[libelle="Nombre de volet"]').val() != 'undefined')
            var nbr_volet = $('[libelle="Nombre de volet"]').val()
        else if (typeof $('[libelle="Nombre de volets concernés par la demande de réparation"]').val() != 'undefined')
            var nbr_volet = $('[libelle="Nombre de volets concernés par la demande de réparation"]').val()
        else
            var nbr_volet = '';

        if (typeof $('[libelle="N° de serie"]').val() != 'undefined')
            var numero_serie = $('[libelle="N° de serie"]').val();
        else if (typeof $('[libelle="N°S/N ou NSP"]').val() != 'undefined')
            var numero_serie = $('[libelle="N°S/N ou NSP"]').val();
        else
            var numero_serie = '';

        if (typeof $('[libelle="Informations complémentaires"]').val() != 'undefined')
            var info_comp = $('[libelle="Informations complémentaires"]').val()
        else
            var info_comp = '';

        if (typeof $('[libelle="Commentaires"]').val() != 'undefined')
            var commentaires = $('[libelle="Commentaires"]').val()
        else
            var commentaires = '';

        var cordAppelant = {
            script_data_c_app_nom: nom_client,
            script_data_c_app_prenom: prenom_client,
            script_data_c_app_adresse: adresse_client,
            script_data_c_app_cp: cp_client,
            script_data_c_app_ville: ville_client,
            script_data_nbr_volet: nbr_volet,
            script_data_is_mini_site: isMinisite,
            script_data_is_pq: isPq,
            script_data_n_serie: numero_serie,
            script_data_info_comp: info_comp,
            script_data_reparateur_qualifie_fk: dataClient.reparateur_qualifie_id,
            script_data_numero_client: dataClient.reparateur_qualifie_numero,
            script_data_commentaires: commentaires
        }
        saveData(cordAppelant,param);
    })
});

//function to save script
function saveData(cordAppelant,param) {
    var url = base_url + 'home/saveData';
    if(typeof $('#message').text()){
        var message = $('#message').text();
    }else{
        var message = '';
    }
    $.ajax({
        type: "POST",
        url: url,
        data: {
            script_data_child: SCRIPT_VAL,
            script_data: cordAppelant,
            param:param,
            message:message
        },
        async: false,
        success: function (response) {
            alert('Script enregistrer');
            location.reload();
            
        },
    });
}

//used to get content from the back-end
function generateDataList() {
    //$('#101').attr('disabled', true);
    $('#101').attr('list', 'datalist');
    var url = base_url + 'home/ajaxFindAllNumero';
    var datalist = '';
    $.ajax({
        type: "get",
        url: url,
        async: false,
        success: function (response) {
            response.data.forEach(element => {
                datalist += '<option value="' + element.reparateur_qualifie_numero + '">'
            });
        }
    });
    var datalist = '<datalist id="datalist">' + datalist + '</datalist>';
    $(datalist).insertAfter('#101');
}

function testIfReQualifie(value) {
    var url = base_url + 'home/ajaxTestIsRq';
    $.ajax({
        type: "GET",
        url: url,
        data: {
            value: value
        },
        async: false,
        success: function (response) {
            if (response.size == 2) {
                $('#7').trigger('click');
                var type = 'Réparateur qualifié et Point conseil';
            } else {
                if (response.data.reparateur_qualifie_is_rep_q == 1) {
                    $('#5').trigger('click');
                    var type = 'Reparateur qualifié';
                } else if (response.data.reparateur_qualifie_is_rep_q == 0) {
                    $('#7').trigger('click');
                    var type = 'Point conseil';
                }
            }
            dataClient = response.data;
            var list = `
            <table class="table table_fiche">
            <tbody>
                <tr>
                    <th scope="row">Type</th>
                    <td>` + type+ `</td>
                </tr>
                <tr>
                    <th scope="row">NOM</th>
                    <td>` + dataClient.reparateur_qualifie_nom + `</td>
                </tr>
                <tr>
                    <th scope="row">ADRESSE</th>
                    <td>` + dataClient.reparateur_qualifie_num_adresse + ` ` + dataClient.reparateur_qualifie_adresse_complement + ` ` + dataClient.reparateur_qualifie_rue + `</td>
                </tr>
                <tr>
                    <th scope="row">Ville et code postal</th>
                    <td>` + dataClient.reparateur_qualifie_ville + ` ` + dataClient.reparateur_qualifie_code_postal + `</td>
                </tr>
                <tr>
                    <th scope="row">Telephone</th>
                    <td>` + dataClient.reparateur_qualifie_tel + `</td>
                </tr>
                <tr>
                    <th scope="row">Mail responsable</th>
                    <td>` + dataClient.reparateur_qualifie_mail_resp + `</td>
                </tr>
                </tbody>
            </table>
            `
            $('.table_fiche').remove();
            $('.step_1').append(list);
        }
    });
}

function initByStep(step) {
    var url = base_url + 'home/ajaxGetContentByStep';
    var dataStep;
    $.ajax({
        type: "GET",
        url: url,
        async: false,
        data: {
            step: step
        },
        success: function (response) {
            //append view to content html
            $('#content').append(response.html);
            dataStep = response.data;
        }
    });
    return dataStep;
}

function appendNextStep(nextStep) {
    initByStep(nextStep);
}
//used to find result of clicked radio
function findResultInActualData(id) {
    var dataActual = getDataFormById(id);
    var thisData = [];
    dataActual.forEach((element, index) => {
        if (element.champs_id == id)
            thisData = element;
    });
    return thisData;
}
//get data by id with ajax
function getDataFormById(id) {
    var url = base_url + 'home/ajaxGetDataFormById';
    var dataActual = [];
    $.ajax({
        type: "GET",
        url: url,
        data: {
            id: id
        },
        async: false,
        success: function (response) {
            dataActual = response.data;
        }
    });
    return dataActual;
}

//used to update or push data to sript
function pushToScript(data) {
    var testIfExist = false;
    var idexIfExist;
    var lastValue = null;
    //find if step is already saved in script
    SCRIPT_VAL.forEach((element, index) => {
        if (data.champs_num_step == element.script_data_child_num_step) {
            testIfExist = true;
            idexIfExist = index;
            lastValue = element;
        }
    });
    //delete all form and saved value
    if (lastValue != null)
        deleteAllNextIfExist(lastValue, idexIfExist);

    //update
    if (testIfExist)
        SCRIPT_VAL[idexIfExist] = {
            script_data_child_num_step: data.champs_num_step,
            script_data_child_champs_fk: data.champs_id,
            script_data_child_next: data.champs_next_step,
            script_data_child_libelle: data.champs_libelle,
            script_data_child_choix: data.champs_choix,
        };
    //insert
    else
        SCRIPT_VAL.push({
            script_data_child_num_step: data.champs_num_step,
            script_data_child_champs_fk: data.champs_id,
            script_data_child_next: data.champs_next_step,
            script_data_child_libelle: data.champs_libelle,
            script_data_child_choix: data.champs_choix,
        });
}

function deleteAllNextIfExist(data, beginIndex) {
    //remove in first all form view
    var lastIndex;
    var nextStep = data.script_data_child_next;
    for (i = beginIndex + 1; i < SCRIPT_VAL.length; i++) {
        $('#content').find('.step_' + nextStep).remove();
        nextStep = SCRIPT_VAL[i].script_data_child_next;
        lastIndex = i;
    }
    //remove last child 
    $('#content').find('.step_' + nextStep).remove();
    //remove all next data start with beginIndex count    
    SCRIPT_VAL.splice((beginIndex + 1), (lastIndex - beginIndex + 1))
    //remove value register in SCRIPT
}