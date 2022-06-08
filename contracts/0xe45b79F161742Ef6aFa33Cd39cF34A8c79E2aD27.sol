contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
    require 0 < arg3.length
    require 1 < arg3.length
    require 2 < arg3.length
    require 3 < arg3.length
}



}
