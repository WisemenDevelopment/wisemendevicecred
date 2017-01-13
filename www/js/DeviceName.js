var DeviceName = {
getPicture: function(success, failure){
    cordova.exec(success, failure, "DeviceName", "GetDevice", []);
}
};
module.exports = DeviceName;