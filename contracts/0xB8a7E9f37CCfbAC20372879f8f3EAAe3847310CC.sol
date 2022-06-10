contract main {




// =====================  Runtime code  =====================


function kill() payable {
    selfdestruct(0xb32bb54cfec824f51e77199248e35d7e3b917ace)
}

function _fallback() payable {
    revert
}



}
