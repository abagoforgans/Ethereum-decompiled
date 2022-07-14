contract main {




// =====================  Runtime code  =====================


#
#  - confirmChange(bytes4 arg1, address arg2, string arg3, uint8[] arg4, bytes32[] arg5, bytes32[] arg6)
#  - fromCode(bytes4 arg1)
#
mapping of uint8 stor0;
mapping of uint8 stor1;
uint8 required;

function signers(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor0[arg1])
}

function transactions(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function required() payable {
    return required
}

function _fallback() payable {
    revert
}



}
