contract main {




// =====================  Runtime code  =====================


address owner;
address targetAddress;

function owner() {
    return owner
}

function target() {
    return targetAddress
}

function setOwner(address arg1) {
    require msg.sender == owner
    owner = arg1
    emit 0xe543d3a0: arg1
}

function unvest(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, bool arg6) {
    require msg.sender == owner
    targetAddress = address(arg1)
    emit ProxyTargetSet(address(arg1));
}

function _fallback() payable {
    require targetAddress
    delegate targetAddress with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}



}
