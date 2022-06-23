contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function verify(address arg1, address arg2, uint256 arg3) {
    return arg3
}



}
