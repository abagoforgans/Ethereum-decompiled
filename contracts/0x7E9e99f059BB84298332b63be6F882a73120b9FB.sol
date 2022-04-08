contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor3;
array of uint256 stor4;
array of uint256 stor5;
uint8 stor6;

function _fallback() payable {
    bool(stor3.length) = 0
    stor3.length.field_1 = 15
    stor3.length.field_8 = 'MacroERC20Proxy' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor4.length) = 0
    stor4.length.field_1 = 5
    stor4.length.field_8 = 'Macro' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor5.length) = 0
    stor5.length.field_1 = 3
    stor5.length.field_8 = 'MCR' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor6 = 8
    require not msg.value
    stor0 = msg.sender
    return code.data[542 len 5974]
}



// =====================  Runtime code  =====================


address devAddress;
address curatorAddress;
uint8 stor2; offset 160
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
    return bool(uint8(stor2.field_160))
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
    require msg.sender == devAddress
    selfdestruct(devAddress)
}

function _fallback() {
    revert
}

function setProxyCurator(address arg1) {
    require msg.sender == devAddress
    curatorAddress = arg1
}

function setTokenContract(address arg1) {
    require msg.sender == curatorAddress
    tokenAddress = arg1
}

function setProxyManagementAddress(address arg1) {
    require msg.sender == curatorAddress
    proxyManagementAddress = arg1
}

function raiseApprovalEvent(address arg1, address arg2, uint256 arg3) {
    require msg.sender == proxyManagementAddress
    emit Approval(arg3, arg1, arg2);
}

function raiseTransferEvent(address arg1, address arg2, uint256 arg3) {
    require msg.sender == proxyManagementAddress
    emit Transfer(arg3, arg1, arg2);
}

function enableDisableTokenProxy() {
    require msg.sender == curatorAddress
    Mask(96, 0, stor2.field_160) = Mask(96, 0, not bool(uint8(stor2.field_160)))
}

function totalSupply() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function balanceOf(address arg1) {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function allowance(address arg1, address arg2) {
    require ext_code.size(tokenAddress)
    call tokenAddress.0xdd62ed3e with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    return ext_call.return_data[0]
}

function approve(address arg1, uint256 arg2) {
    require uint8(stor2.field_160)
    require ext_code.size(tokenAddress)
    call tokenAddress.approveViaProxy(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 710 wei
        args msg.sender, address(arg1), arg2
    require ext_call.success
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require uint8(stor2.field_160)
    require ext_code.size(tokenAddress)
    call tokenAddress.transferViaProxy(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 710 wei
        args msg.sender, address(arg1), arg2
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require uint8(stor2.field_160)
    require ext_code.size(tokenAddress)
    call tokenAddress.transferFromViaProxy(address rg1, address rg2, address rg3, uint256 rg4) with:
         gas gas_remaining - 710 wei
        args 0, uint32(msg.sender), address(arg1), address(arg2), arg3
    require ext_call.success
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
