contract main {




// =====================  Runtime code  =====================


function proxyOwner() {
    return address(stor[sha3('trueUSD.proxy.owner')].field_0)
}

function pendingProxyOwner() {
    return address(stor[sha3('trueUSD.pending.proxy.owner')].field_0)
}

function implementation() {
    return address(stor[sha3('trueUSD.proxy.implementation')].field_0)
}

function _fallback() payable {
    delegate uint256(stor[sha3('trueUSD.proxy.implementation')].field_0) with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function upgradeTo(address arg1) {
    if address(stor[sha3('trueUSD.proxy.owner')].field_0) != msg.sender:
        revert with 0, 'only Proxy Owner'
    require arg1 != address(stor[sha3('trueUSD.proxy.implementation')].field_0)
    address(stor[sha3('trueUSD.proxy.implementation')].field_0) = arg1
    Mask(96, 0, stor[sha3('trueUSD.proxy.implementation')].field_160) = 0
    emit Upgraded(arg1);
}

function transferProxyOwnership(address arg1) {
    if address(stor[sha3('trueUSD.proxy.owner')].field_0) != msg.sender:
        revert with 0, 'only Proxy Owner'
    require arg1
    address(stor[sha3('trueUSD.pending.proxy.owner')].field_0) = arg1
    Mask(96, 0, stor[sha3('trueUSD.pending.proxy.owner')].field_160) = 0
    emit NewPendingOwner(address(stor[sha3('trueUSD.proxy.owner')].field_0), arg1);
}

function claimProxyOwnership() {
    if address(stor[sha3('trueUSD.pending.proxy.owner')].field_0) != msg.sender:
        revert with 0, 'only pending Proxy Owner'
    emit ProxyOwnershipTransferred(address(stor[sha3('trueUSD.proxy.owner')].field_0), address(stor[sha3('trueUSD.pending.proxy.owner')].field_0));
    uint256(stor[sha3('trueUSD.proxy.owner')].field_0) = uint256(stor[sha3('trueUSD.pending.proxy.owner')].field_0)
    uint256(stor[sha3('trueUSD.pending.proxy.owner')].field_0) = 0
}



}
