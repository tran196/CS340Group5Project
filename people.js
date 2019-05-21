module.exports = function(){
    var express = require('express');
    var router = express.Router();

    function getPlayers(res, mysql, context, complete){
        mysql.pool.query("SELECT id, name FROM nfl_football_players", function(error, results, fields){
            if(error){
                res.write(JSON.stringify(error));
                res.end();
            }
            context.planets  = results;
            complete();
        });
    }

    return router;
}();