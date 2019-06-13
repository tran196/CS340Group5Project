function updateowner(id){
    $.ajax({
        url: '/people-cert/' + id,
        type: 'PUT',
        data: $('#updateowner').serialize(),
        success: function(result){
            window.location.replace("./");
        }
    })
};
