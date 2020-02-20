$(document).ready(function () {
    var actualStep = 2;
    initByStep(actualStep);
});

//used to get content from the back-end
function initByStep(step = 2) {
    var url = base_url + 'home/ajaxGetContentByStep';
    $.ajax({
        type: "GET",
        url: url,
        data: {
            step: step
        },
        success: function (response) {
            //append view to content html
            $('#content').append(response);
        }
    });
}