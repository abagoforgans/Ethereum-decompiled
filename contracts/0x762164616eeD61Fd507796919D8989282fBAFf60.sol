contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[94 len 1421]
}



// =====================  Runtime code  =====================


mapping of struct sub_455e32ad;

function sub_455e32ad(?) {
    return sub_455e32ad[address(msg.sender)].field_256
}

function sub_6457750c(?) {
    return bool(sub_455e32ad[address(msg.sender)].field_264)
}

function getLocation() {
    return sub_455e32ad[address(msg.sender)].field_768, 
           sub_455e32ad[address(msg.sender)].field_1024,
           sub_455e32ad[address(msg.sender)].field_1280,
           sub_455e32ad[address(msg.sender)].field_1536
}

function _fallback() payable {
    revert
}

function sub_d3fb23eb(?) {
    sub_455e32ad[address(msg.sender)].field_264 = Mask(248, 0, arg1)
}

function sub_b5f8d31c(?) {
    require arg1 < 10
    sub_455e32ad[address(msg.sender)].field_256 = arg1
}

function sub_dfc2ab81(?) {
    sub_455e32ad[address(msg.sender)].field_768 = call.data[4]
    sub_455e32ad[address(msg.sender)].field_1024 = call.data[36]
    sub_455e32ad[address(msg.sender)].field_1280 = call.data[68]
    sub_455e32ad[address(msg.sender)].field_1536 = call.data[100]
}



}
