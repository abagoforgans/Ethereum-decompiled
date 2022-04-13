contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[62 len 398]
}



// =====================  Runtime code  =====================


address stor0;

function kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}

function sub_0965b0dd(?) {
    emit 0xf631de84: address(arg1), arg2
}

function changeOwner(address arg1) {
    if stor0 == msg.sender:
        stor0 = arg1
}



}
