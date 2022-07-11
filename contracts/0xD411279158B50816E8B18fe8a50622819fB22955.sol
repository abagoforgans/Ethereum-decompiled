contract main {




// =====================  Runtime code  =====================


uint8 stor0;
address tokenContractAddress; offset 8

function tokenContract() payable {
    return tokenContractAddress
}

function sub_63ccd85f(?) payable {
    return bool(stor0)
}

function _fallback() payable {
    revert
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require msg.sender == tokenContractAddress
    stor0 = 1
    mem[ceil32(arg3.length) + 128] = 0
    return Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
}



}
