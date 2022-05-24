contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function emitEvent() {
    emit 0x7805722b 
}



}
