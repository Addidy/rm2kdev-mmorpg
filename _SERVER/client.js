var now = require('performance-now');
var _ = require('underscore');

module.exports = function(){

    var client = this;

    //These objects will be added at runtime...
    //this.socket = {}
    //this.user = {}

    this.initiate = function(){
        //Send the connection handshake packet to the client.
        client.socket.write(packet.build(["HELLO", now().toString()]));
        console.log('client initiated');
    }

    this.data = function(data){
        packet.parse(client,data);
    }

    this.error = function(err){
        console.log("client error " + err.toString());
    }

    this.end = function(){
        console.log("client closed");
    }
}
