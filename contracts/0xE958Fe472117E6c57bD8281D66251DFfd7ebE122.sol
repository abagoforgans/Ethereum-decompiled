contract main {




// =====================  Runtime code  =====================


address proxyOwner;
uint256 stor136D;
uint128 storCA6C; offset 160
address pendingProxyOwner;
uint256 storCA6C;
uint128 storECFD; offset 160
address implementationAddress;
uint256 storECFD;

function proxyOwner() {
    return address(proxyOwner)
}

function pendingProxyOwner() {
    return pendingProxyOwner
}

function implementation() {
    return implementationAddress
}

function upgradeTo(address arg1) {
    if address(proxyOwner) != msg.sender:
        revert with 0, 'only Proxy Owner'
    require arg1 != implementationAddress
    implementationAddress = arg1
    Mask(96, 0, storECFD.field_160) = 0
    emit Upgraded(arg1);
}

function transferProxyOwnership(address arg1) {
    if address(proxyOwner) != msg.sender:
        revert with 0, 'only Proxy Owner'
    require arg1
    pendingProxyOwner = arg1
    Mask(96, 0, storCA6C.field_160) = 0
    emit NewPendingOwner(address(proxyOwner), arg1);
}

function claimProxyOwnership() {
    if pendingProxyOwner != msg.sender:
        revert with 0, 'only pending Proxy Owner'
    emit ProxyOwnershipTransferred(address(proxyOwner), pendingProxyOwner);
    uint256(stor136D) = uint256(storCA6C.field_0)
    uint256(storCA6C.field_0) = 0
}

function _fallback() payable {
    delegate uint256(storECFD.field_0) with:
       funct call.data[return_data.size len 4]
         gas gas_remaining wei
        args call.data[return_data.size + 4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}



}
