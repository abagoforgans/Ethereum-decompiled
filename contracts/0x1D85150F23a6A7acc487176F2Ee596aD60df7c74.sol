contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = code.data[434 len 20]
    return code.data[83 len 339]
}



// =====================  Runtime code  =====================


address stor0;

function selfDestruct(address arg1) {
    require stor0 == msg.sender
    selfdestruct(arg1)
}

function _fallback() payable {
    emit 0x4244c0ce: msg.sender, msg.value, block.timestamp
}



}
