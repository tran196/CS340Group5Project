function updateplayer(id){
    $.ajax({
        url: '/people-cert/' + id,
        type: 'PUT',
        data: $('#update-player').serialize(),
        success: function(result){
            window.location.replace("./");
        }
    })
};