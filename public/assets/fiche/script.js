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
        if (start.replace('/','') < end.replace('/','')) {
            $.ajax({
                type: "GET",
                url: url,
                data: {
                    start: start,
                    end: end,
                },
                async:false,
                success: function (response) {
                    $('#pc').val(response.stat.pc+'%');
                    $('#rq').val(response.stat.rq+'%');
                    $('#typage').val(response.stat.typage+'%');
                    $('#appel').val(response.stat.appel);
                }
            });
        }else{
            alert('La date de debut doit être supérieur à la date de fin');
        }
    })

    $('#generate-stat').click(()=>{
        var start = $('#start').val();
        var end = $('#end').val();
        window.open(base_url+"fiche/generateStat/"+start.replaceAll('/','-')+"/"+end.replaceAll('/','-'));
    })
});

String.prototype.replaceAll = function(str1, str2, ignore) 
{
    return this.replace(new RegExp(str1.replace(/([\/\,\!\\\^\$\{\}\[\]\(\)\.\*\+\?\|\<\>\-\&])/g,"\\$&"),(ignore?"gi":"g")),(typeof(str2)=="string")?str2.replace(/\$/g,"$$$$"):str2);
} 