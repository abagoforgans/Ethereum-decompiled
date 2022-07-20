contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of uint256 checkCount;

function checkCount(address arg1) payable {
    require calldata.size - 4 >= 32
    return checkCount[address(arg1)]
}

function certificateSigners(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor0[address(arg1)])
}

function _fallback() payable {
    revert
}



}
