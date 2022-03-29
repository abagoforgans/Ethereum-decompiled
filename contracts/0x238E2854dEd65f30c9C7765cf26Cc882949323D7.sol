contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor3;
array of uint256 stor4;
array of uint256 stor5;
uint8 stor6;

function _fallback() payable {
    bool(stor3.length) = 0
    stor3.length.field_1 = 11
    stor3.length.field_8 = 'Neter proxy' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor4.length) = 0
    stor4.length.field_1 = 5
    stor4.length.field_8 = 'Neter' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor5.length) = 0
    stor5.length.field_1 = 3
    stor5.length.field_8 = 'NTR' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor6 = 8
    require not msg.value
    stor0 = msg.sender
    return code.data[542 len 6268]
}



// =====================  Runtime code  =====================


address devAddress;
address curatorAddress;
uint8 proxyWorking; offset 160
uint128 stor2; offset 160
address proxyManagementAddress;
array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address tokenAddress; offset 8

function name() {
    return name[0 len name.length]
}

function proxyManagementAddress() {
    return proxyManagementAddress
}

function decimals() {
    return decimals
}

function standard() {
    return standard[0 len standard.length]
}

function proxyWorking() {
    return bool(proxyWorking)
}

function dev() {
    return devAddress
}

function symbol() {
    return symbol[0 len symbol.length]
}

function tokenAddress() {
    return tokenAddress
}

function curator() {
    return curatorAddress
}

function killContract() {
    if msg.sender == devAddress:
        selfdestruct(devAddress)
    return 1
}

function _fallback() {
    revert 
}

function setProxyCurator(address arg1) {
    if devAddress != msg.sender:
        return 1
    curatorAddress = arg1
    return 0
}

function setTokenContract(address arg1) {
    if curatorAddress != msg.sender:
        return 1
    tokenAddress = arg1
    return 0
}

function setProxyManagementAddress(address arg1) {
    if curatorAddress != msg.sender:
        return 1
    proxyManagementAddress = arg1
    return 0
}

function EnableDisableTokenProxy() {
    if curatorAddress != msg.sender:
        return 1
    stor2 = Mask(96, 0, not bool(proxyWorking))
    return 0
}

function raiseApprovalEvent(address arg1, address arg2, uint256 arg3) {
    if proxyManagementAddress != msg.sender:
        return 1
    emit Approval(arg3, arg1, arg2);
    return 0
}

function raiseTransferEvent(address arg1, address arg2, uint256 arg3) {
    if proxyManagementAddress != msg.sender:
        return 1
    emit Transfer(arg3, arg1, arg2);
    return 0
}

function totalSupply() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 50 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function balanceOf(address arg1) {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function allowance(address arg1, address arg2) {
    require ext_code.size(tokenAddress)
    call tokenAddress.0xdd62ed3e with:
         gas gas_remaining - 50 wei
        args address(arg1), arg2
    require ext_call.success
    return ext_call.return_data[0]
}

function approve(address arg1, uint256 arg2) {
    if not proxyWorking:
        return 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf11c4482 with:
         gas gas_remaining - 50 wei
        args msg.sender, address(arg1), arg2
    require ext_call.success
    if ext_call.return_data[0]:
        return 0
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if not proxyWorking:
        return 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0x240ecad5 with:
         gas gas_remaining - 50 wei
        args msg.sender, address(arg1), arg2
    require ext_call.success
    if ext_call.return_data[0]:
        return 0
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if not proxyWorking:
        return 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0xcacc24eb with:
         gas gas_remaining - 50 wei
        args 0, uint32(msg.sender), address(arg1), address(arg2), arg3
    require ext_call.success
    if ext_call.return_data[0]:
        return 0
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
