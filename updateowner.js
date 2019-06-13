function updateowner(id){
    $.ajax({
        url: '/owners/' + id,
        type: 'PUT',
        data: $('#updateowner').serialize(),
        success: function(result){
            window.location.replace("./");
        }
    })
};
