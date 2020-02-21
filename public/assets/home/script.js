SCRIPT_VAL = [];
$(document).ready(function () {
    //save actual data for best control
    initByStep(1);

    //click on next step
    $('#content').on('click', '.radio', (e, v) => {
        var $e = $(e.target);
        //id of clicked element
        var clickId = $e.prop('id');
        //find data of clicked element
        var dataActualClick = findResultInActualData(clickId);
        pushToScript(dataActualClick);
        appendNextStep(dataActualClick);
        // goToNextStep();
    })
});

//used to get content from the back-end
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

function appendNextStep(dataActualClick){
    initByStep(dataActualClick.champs_next_step);
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

function getDataFormById(id){
    var url = base_url+ 'home/ajaxGetDataFormById';
    var dataActual = [];
    $.ajax({
        type: "GET",
        url: url,
        data: {id:id},
        async:false,
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
    //find if step is already saved in script
    SCRIPT_VAL.forEach((element, index) => {
        if (data.champs_num_step == element.script_num_step) {
            testIfExist = true;
            idexIfExist = index;
        }
    });
    //update
    if (testIfExist)
        SCRIPT_VAL[idexIfExist] = {
            script_num_step: data.champs_num_step,
            script_step_fk: data.champs_id,
        };
    //insert
    else
        SCRIPT_VAL.push({
            script_num_step: data.champs_num_step,
            script_step_fk: data.champs_id,
        });
}

// function goToNextStep(nextStep){
//     dataActualStep = initByStep(nextStep);
// }