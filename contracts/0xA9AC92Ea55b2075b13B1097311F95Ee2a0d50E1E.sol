contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[95 len 451]
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
    require msg.sender == controllerAddress
    controllerAddress = arg1
}



}
