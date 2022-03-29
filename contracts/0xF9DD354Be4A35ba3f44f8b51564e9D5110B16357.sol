contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor4;
uint8 stor5;
array of uint256 stor6;
array of uint256 stor7;
array of uint256 stor8;
uint8 stor9;

function _fallback() payable {
    stor4 = 0
    stor5 = 0
    bool(stor6.length) = 0
    stor6.length.field_1 = 15
    stor6.length.field_8 = 'Neter token 1.0' / 256
    idx = 0
    while stor6.length + 31 / 32 > idx:
        stor6[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor7.length) = 0
    stor7.length.field_1 = 5
    stor7.length.field_8 = 'Neter' / 256
    idx = 0
    while stor7.length + 31 / 32 > idx:
        stor7[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor8.length) = 0
    stor8.length.field_1 = 3
    stor8.length.field_8 = 'NTR' / 256
    idx = 0
    while stor8.length + 31 / 32 > idx:
        stor8[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor9 = 8
    require not msg.value
    stor0 = msg.sender
    return code.data[574 len 11254]
}



// =====================  Runtime code  =====================


address devAddress;
address curatorAddress;
address creationAddress;
address destructionAddress;
uint256 totalSupply;
uint8 lockdown;
uint256 stor5;
array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address proxyManagementAddress;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function proxyManagementAddress() {
    return proxyManagementAddress
}

function decimals() {
    return decimals
}

function lockdown() {
    return bool(uint8(lockdown))
}

function creationAddress() {
    return creationAddress
}

function standard() {
    return standard[0 len standard.length]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function dev() {
    return devAddress
}

function symbol() {
    return symbol[0 len symbol.length]
}

function destructionAddress() {
    return destructionAddress
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
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

function setTokenCurator(address arg1) {
    if devAddress != msg.sender:
        return 1
    curatorAddress = arg1
    return 0
}

function setCreationAddress(address arg1) {
    if curatorAddress != msg.sender:
        return 1
    creationAddress = arg1
    return 0
}

function setDestructionAddress(address arg1) {
    if curatorAddress != msg.sender:
        return 1
    destructionAddress = arg1
    return 0
}

function setProxyManagementContract(address arg1) {
    if curatorAddress != msg.sender:
        return 1
    proxyManagementAddress = arg1
    return 0
}

function emergencyLock() {
    if curatorAddress != msg.sender:
        if devAddress != msg.sender:
            return 1
    uint256(stor5) = not bool(uint8(lockdown)) or Mask(248, 8, uint256(stor5))
    return 0
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    require ext_code.size(proxyManagementAddress)
    call proxyManagementAddress.raiseApprovalEvent(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 50 wei
        args msg.sender, address(arg1), arg2
    require ext_call.success
    emit Approval(arg2, msg.sender, arg1);
    return 0
}

function destroyOldCoins(address arg1, uint256 arg2, string arg3) {
    if destructionAddress != msg.sender:
        return 1
    if balanceOf[address(arg1)] < arg2:
        return 55
    totalSupply -= arg2
    balanceOf[address(arg1)] -= arg2
    emit Destroy(address(arg1), arg2);
    require ext_code.size(proxyManagementAddress)
    call proxyManagementAddress.0x967a08f7 with:
         gas gas_remaining - 50 wei
        args address(arg1), 0, arg2
    require ext_call.success
    emit Transfer(arg2, arg1, 0);
    return 0
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 55
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 55
    if uint8(lockdown):
        return 55
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    require ext_code.size(proxyManagementAddress)
    call proxyManagementAddress.0x967a08f7 with:
         gas gas_remaining - 50 wei
        args msg.sender, address(arg1), arg2
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
    return 0
}

function issueNewCoins(address arg1, uint256 arg2, string arg3) {
    if creationAddress != msg.sender:
        return 1
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        return 55
    if totalSupply + arg2 < totalSupply:
        return 55
    totalSupply += arg2
    balanceOf[address(arg1)] += arg2
    emit Create(address(arg1), arg2);
    require ext_code.size(proxyManagementAddress)
    call proxyManagementAddress.0x967a08f7 with:
         gas gas_remaining - 50 wei
        args 0, address(arg1), arg2
    require ext_call.success
    emit Transfer(arg2, 0, arg1);
    return 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 55
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 55
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        return 55
    if uint8(lockdown):
        return 55
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    require ext_code.size(proxyManagementAddress)
    call proxyManagementAddress.0x967a08f7 with:
         gas gas_remaining - 50 wei
        args address(arg1), address(arg2), arg3
    require ext_call.success
    emit Transfer(arg3, arg1, arg2);
    allowance[address(arg1)][address(msg.sender)] -= arg3
    return 0
}

function approveFromProxy(address arg1, address arg2, uint256 arg3) {
    require ext_code.size(proxyManagementAddress)
    call proxyManagementAddress.0x245a6f74 with:
         gas gas_remaining - 50 wei
        args msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 1
    allowance[address(arg1)][address(arg2)] = arg3
    require ext_code.size(proxyManagementAddress)
    call proxyManagementAddress.0xc6798033 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(proxyManagementAddress)
        call proxyManagementAddress.raiseApprovalEvent(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining - 50 wei
            args address(arg1), address(arg2), arg3
        require ext_call.success
    emit Approval(arg3, arg1, arg2);
    return 0
}

function transferViaProxy(address arg1, address arg2, uint256 arg3) {
    require ext_code.size(proxyManagementAddress)
    call proxyManagementAddress.0x245a6f74 with:
         gas gas_remaining - 50 wei
        args msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 1
    if balanceOf[address(arg1)] < arg3:
        return 55
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 55
    if uint8(lockdown):
        return 55
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    require ext_code.size(proxyManagementAddress)
    call proxyManagementAddress.0xc6798033 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(proxyManagementAddress)
        call proxyManagementAddress.0x967a08f7 with:
             gas gas_remaining - 50 wei
            args address(arg1), address(arg2), arg3
        require ext_call.success
    emit Transfer(arg3, arg1, arg2);
    return 0
}

function transferFromViaProxy(address arg1, address arg2, address arg3, uint256 arg4) {
    require ext_code.size(proxyManagementAddress)
    call proxyManagementAddress.0x245a6f74 with:
         gas gas_remaining - 50 wei
        args msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 1
    if balanceOf[address(arg2)] < arg4:
        return 55
    if balanceOf[address(arg3)] + arg4 <= balanceOf[address(arg3)]:
        return 55
    if uint8(lockdown):
        return 55
    if arg4 > allowance[address(arg2)][address(arg1)]:
        return 55
    balanceOf[address(arg2)] -= arg4
    balanceOf[address(arg3)] += arg4
    allowance[address(arg2)][address(arg1)] -= arg4
    require ext_code.size(proxyManagementAddress)
    call proxyManagementAddress.0xc6798033 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(proxyManagementAddress)
        call proxyManagementAddress.0x967a08f7 with:
             gas gas_remaining - 50 wei
            args address(arg1), address(arg3), arg4
        require ext_call.success
    emit Transfer(arg4, arg1, arg3);
    return 0
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    allowance[address(msg.sender)][address(arg1)] = arg2
    mem[ceil32(arg3.length) + 128] = 0x8f4ffcb100000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg3.length) + 132] = msg.sender
    mem[ceil32(arg3.length) + 164] = arg2
    mem[ceil32(arg3.length) + 196] = this.address
    mem[ceil32(arg3.length) + 228] = 128
    mem[ceil32(arg3.length) + 260] = arg3.length
    if not arg3.length:
        if not arg3.length % 32:
            if ext_code.size(arg1):
                call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining - 50 wei
                    args 0, uint32(msg.sender), arg2, address(this.address), 128, arg3.length, mem[ceil32(arg3.length) + 292 len arg3.length]
                if ext_call.success:
                    return 1
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + 292] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 324 len arg3.length % 32]
            if ext_code.size(arg1):
                call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining - 50 wei
                    args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=mem[ceil32(arg3.length) + 292 len floor32(arg3.length) + 32])
                if ext_call.success:
                    return 1
    else:
        mem[ceil32(arg3.length) + 292] = mem[128]
        mem[ceil32(arg3.length) + 324 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
        if ext_code.size(arg1):
            call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining - 50 wei
                args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=mem[ceil32(arg3.length) + 292 len arg3.length])
            if ext_call.success:
                return 1
    revert
}



}
