contract main {




// =====================  Runtime code  =====================


function pay() {
    selfdestruct(0x21e2fb232e9fc401201e34176cb5eea01f28c854)
}

function _fallback() payable {
    revert
}



}
