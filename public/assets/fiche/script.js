$(document).ready(function () {
    $('.datepicker').datepicker({
        locale: 'fr-fr',
        lang: 'fr-fr',
        format: 'dd/mm/yyyy',
    });

    $('#get-stat').click(() => {
        var start = $('#start').val();
        var end = $('#end').val();
        var url = base_url + 'fiche/ajaxGetStat';
        if (1) {
            $.ajax({
                type: "GET",
                url: url,
                data: {
                    start: start,
                    end: end,
                },
                dataType: "dataType",
                success: function (response) {
                    console.log(response);
                }
            });
        }else{
            alert('La date de debut doit être supérieur à la date de fin');
        }
    })
});