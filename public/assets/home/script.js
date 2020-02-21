SCRIPT_VAL = [];
$(document).ready(function () {
    //save actual data for best control
    var dataActualStep = initByStep(1);

    console.log(dataActualStep);
    //click on next step
    $('#content').on('click', '.radio', (e, v) => {
        var $e = $(e.target);
        //id of clicked element
        var clickId = $e.prop('id');
        //find data of clicked element
        var dataActualClick = findResultInActualData(dataActualStep, clickId);
        pushToScript(dataActualClick);
        console.log(SCRIPT_VAL);
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
//used to find result of clicked radio
function findResultInActualData(dataActual, id) {
    var thisData = [];
    dataActual.forEach((element, index) => {
        if (element.champs_id == id)
            thisData = element;
    });
    return thisData;
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