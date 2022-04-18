contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[59 len 358]
}



// =====================  Runtime code  =====================


address controllerAddress;

function controller() {
    return controllerAddress
}

function _fallback() payable {
    revert
}

function changeController(address arg1) {
    require controllerAddress == msg.sender
    controllerAddress = arg1
}



}
