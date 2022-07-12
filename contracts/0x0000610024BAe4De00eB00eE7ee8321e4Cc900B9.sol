contract main {




// =====================  Runtime code  =====================


uint128 stor7B90; offset 160
address pendingProxyOwner;
uint256 stor7B90;
address proxyOwner;
uint256 stor9AFD;
uint128 storC207; offset 160
address implementationAddress;
uint256 storC207;

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
    Mask(96, 0, storC207.field_160) = 0
    emit Upgraded(arg1);
}

function transferProxyOwnership(address arg1) {
    if address(proxyOwner) != msg.sender:
        revert with 0, 'only Proxy Owner'
    require arg1
    pendingProxyOwner = arg1
    Mask(96, 0, stor7B90.field_160) = 0
    emit NewPendingOwner(address(proxyOwner), arg1);
}

function claimProxyOwnership() {
    if pendingProxyOwner != msg.sender:
        revert with 0, 'only pending Proxy Owner'
    emit ProxyOwnershipTransferred(address(proxyOwner), pendingProxyOwner);
    uint256(stor9AFD) = uint256(stor7B90.field_0)
    uint256(stor7B90.field_0) = 0
}

function _fallback() payable {
    delegate uint256(storC207.field_0) with:
       funct call.data[return_data.size len 4]
         gas gas_remaining wei
        args call.data[return_data.size + 4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}



}
