contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = code.data[1553 len 32] or Mask(96, 160, stor0)
    return code.data[122 len 1431]
}



// =====================  Runtime code  =====================


mapping of struct resolver;

function resolver(bytes32 arg1) {
    return resolver[arg1].field_256
}

function owner(bytes32 arg1) {
    return resolver[arg1].field_0
}

function _fallback() payable {
    revert 
}

function setOwner(bytes32 arg1, address arg2) {
    require resolver[arg1].field_0 == msg.sender
    emit Transfer(arg2, arg1);
    resolver[arg1].field_0 = arg2 or Mask(96, 160, resolver[arg1].field_0)
}

function setResolver(bytes32 arg1, address arg2) {
    require resolver[arg1].field_0 == msg.sender
    emit NewResolver(arg2, arg1);
    resolver[arg1].field_256 = arg2 or Mask(96, 160, resolver[arg1].field_256)
}

function setSubnodeOwner(bytes32 arg1, bytes32 arg2, address arg3) {
    require resolver[arg1].field_0 == msg.sender
    emit NewOwner(arg3, arg1, arg2);
    resolver[arg1][arg2].field_0 = arg3 or Mask(96, 160, resolver[arg1][arg2].field_0)
}



}
