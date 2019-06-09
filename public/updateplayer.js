function updateplayer(id){
    $.ajax({
        url: '/people-cert/' + id,
        type: 'PUT',
        data: $('#updateplayer').serialize(),
        success: function(result){
            window.location.replace("./");
        }
    })
};
