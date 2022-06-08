contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function setToken(address arg1) {
    require arg1
    stor0 = arg1
}



}
