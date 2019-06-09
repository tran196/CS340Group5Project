function deleteplayer(id){
    $.ajax({
        url: '/people_certs/' + id,
        type: 'DELETE',
        success: function(result){
            window.location.reload(true);
        }
    })
};