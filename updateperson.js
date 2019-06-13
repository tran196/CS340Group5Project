function updatePerson(id){
    $.ajax({
        url: '/leagues/' + id,
        type: 'PUT',
        data: $('#update-person').serialize(),
        success: function(result){
            window.location.replace("./");
        }
    })
};