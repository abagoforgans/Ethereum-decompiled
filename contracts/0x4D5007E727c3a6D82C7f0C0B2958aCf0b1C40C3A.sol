contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function _fallback() payable {
    revert
}



}
