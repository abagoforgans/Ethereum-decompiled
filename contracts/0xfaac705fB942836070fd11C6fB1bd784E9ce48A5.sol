contract main {


// =======================  Init code  ======================


array of uint256 stor0;
uint8 stor1;
address stor1; offset 8
address stor2;
address stor4;
address stor7;
uint256 stor8;

function _fallback() payable {
    uint8(stor1.field_0) = 1
    stor8 = 0
    require not msg.value
    stor0.length = 1
    if not stor0.length <= 1:
        idx = 1
        while stor0.length > idx:
            uint256(stor0[idx]) = 0
            idx = idx + 1
            continue 
    require 0 < stor0.length
    address(stor0) = msg.sender
    address(stor1.field_8) = code.data[12818 len 20]
    stor2 = code.data[12786 len 20]
    stor4 = code.data[12754 len 20]
    stor7 = code.data[12722 len 20]
    return code.data[410 len 12300]
}



// =====================  Runtime code  =====================


array of address admins;
uint8 stor1;
address storageAddr; offset 8
address nutzAddr;
mapping of uint256 allowance;
address pullAddr;
uint256 ceiling;
uint256 stor6;
address powerAddr;
uint256 maxPower;
uint256 downtime;

function nutzAddr() {
    return nutzAddr
}

function admins(uint256 arg1) {
    require arg1 < admins.length
    return address(admins[arg1])
}

function powerAddr() {
    return powerAddr
}

function pullAddr() {
    return pullAddr
}

function paused() {
    return bool(stor1)
}

function ceiling() {
    return ceiling
}

function storageAddr() {
    return storageAddr
}

function maxPower() {
    return maxPower
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function downtime() {
    return downtime
}

function kill(address arg1) {
    idx = 0
    s = 0
    while idx < admins.length:
        mem[0] = 0
        if address(admins[idx]) != msg.sender:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    require bool(s) == 1
    require stor1
    if powerAddr:
        require ext_code.size(powerAddr)
        call powerAddr.0xf2fde38b with:
             gas gas_remaining - 710 wei
            args msg.sender
        require ext_call.success
    if pullAddr:
        require ext_code.size(pullAddr)
        call pullAddr.0xf2fde38b with:
             gas gas_remaining - 710 wei
            args msg.sender
        require ext_call.success
    if nutzAddr:
        require ext_code.size(nutzAddr)
        call nutzAddr.0xf2fde38b with:
             gas gas_remaining - 710 wei
            args msg.sender
        require ext_call.success
    if storageAddr:
        require ext_code.size(storageAddr)
        call storageAddr.0xf2fde38b with:
             gas gas_remaining - 710 wei
            args msg.sender
        require ext_call.success
    selfdestruct(arg1)
}

function _fallback() payable {
    revert
}

function approve(address arg1, address arg2, uint256 arg3) {
    require nutzAddr == msg.sender
    require not stor1
    require arg2 != arg1
    allowance[address(arg1)][address(arg2)] = arg3
}

function burnPool() {
    require ext_code.size(storageAddr)
    call storageAddr.getUInt(bytes32 rg1, bytes32 rg2) with:
         gas gas_remaining - 710 wei
        args 0x4e75747a00000000000000000000000000000000000000000000000000000000, 'burnPool'
    require ext_call.success
    return ext_call.return_data[0]
}

function powerPool() {
    require ext_code.size(storageAddr)
    call storageAddr.getUInt(bytes32 rg1, bytes32 rg2) with:
         gas gas_remaining - 710 wei
        args 0x4e75747a00000000000000000000000000000000000000000000000000000000, 'powerPool'
    require ext_call.success
    return ext_call.return_data[0]
}

function unpause() {
    idx = 0
    s = 0
    while idx < admins.length:
        mem[0] = 0
        if address(admins[idx]) != msg.sender:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    require bool(s) == 1
    require stor1
    stor1 = 0
}

function pause() {
    idx = 0
    s = 0
    while idx < admins.length:
        mem[0] = 0
        if address(admins[idx]) != msg.sender:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    require bool(s) == 1
    require not stor1
    stor1 = 1
}

function setDowntime(uint256 arg1) {
    idx = 0
    s = 0
    while idx < admins.length:
        mem[0] = 0
        if address(admins[idx]) != msg.sender:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    require bool(s) == 1
    downtime = arg1
}

function activeSupply() {
    require ext_code.size(storageAddr)
    call storageAddr.getUInt(bytes32 rg1, bytes32 rg2) with:
         gas gas_remaining - 710 wei
        args 0x4e75747a00000000000000000000000000000000000000000000000000000000, 'activeSupply'
    require ext_call.success
    return ext_call.return_data[0]
}

function babzBalanceOf(address arg1) {
    require ext_code.size(storageAddr)
    call storageAddr.getBal(bytes32 rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args 0x4e75747a00000000000000000000000000000000000000000000000000000000, arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function powerBalanceOf(address arg1) {
    require ext_code.size(storageAddr)
    call storageAddr.getBal(bytes32 rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args 0x506f776572000000000000000000000000000000000000000000000000000000, arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function authorizedPower() {
    require ext_code.size(storageAddr)
    call storageAddr.getUInt(bytes32 rg1, bytes32 rg2) with:
         gas gas_remaining - 710 wei
        args 0x506f776572000000000000000000000000000000000000000000000000000000, 'authorizedPower'
    require ext_call.success
    return ext_call.return_data[0]
}

function outstandingPower() {
    require ext_code.size(storageAddr)
    call storageAddr.getUInt(bytes32 rg1, bytes32 rg2) with:
         gas gas_remaining - 710 wei
        args 0x506f776572000000000000000000000000000000000000000000000000000000, 'outstandingPower'
    require ext_call.success
    return ext_call.return_data[0]
}

function moveCeiling(uint256 arg1) {
    idx = 0
    s = 0
    while idx < admins.length:
        mem[0] = 0
        if address(admins[idx]) != msg.sender:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    require bool(s) == 1
    require arg1 <= stor6
    ceiling = arg1
}

function downs(address arg1) {
    require ext_code.size(storageAddr)
    call storageAddr.getBal(bytes32 rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args 'PowerDown', arg1
    require ext_call.success
    return ext_call.return_data[0 len 12], Mask(96, 64, ext_call.return_data[0]) << 96, uint64(ext_call.return_data[0])
}

function powerTotalSupply() {
    require ext_code.size(storageAddr)
    call storageAddr.getUInt(bytes32 rg1, bytes32 rg2) with:
         gas gas_remaining - 710 wei
        args 0x506f776572000000000000000000000000000000000000000000000000000000, 'authorizedPower'
    require ext_call.success
    if maxPower >= ext_call.return_data[0] / 2:
        return maxPower
    return (ext_call.return_data[0] / 2)
}

function setContracts(address arg1, address arg2, address arg3, address arg4) {
    idx = 0
    s = 0
    while idx < admins.length:
        mem[0] = 0
        if address(admins[idx]) != msg.sender:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    require bool(s) == 1
    require stor1
    storageAddr = arg1
    nutzAddr = arg2
    powerAddr = arg3
    pullAddr = arg4
}

function changeDailyLimit(uint256 arg1) {
    idx = 0
    s = 0
    while idx < admins.length:
        mem[0] = 0
        if address(admins[idx]) != msg.sender:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    require bool(s) == 1
    require ext_code.size(pullAddr)
    call pullAddr.0xcea08621 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function floor() {
    if not eth.balance(nutzAddr):
        return -1
    require ext_code.size(storageAddr)
    call storageAddr.getUInt(bytes32 rg1, bytes32 rg2) with:
         gas gas_remaining - 710 wei
        args 0x4e75747a00000000000000000000000000000000000000000000000000000000, 'activeSupply'
    require ext_call.success
    if ext_call.return_data[0]:
        require ext_call.return_data[0]
        require 10^6 * ext_call.return_data[0] / ext_call.return_data[0] == 10^6
    require eth.balance(nutzAddr)
    if 10^6 * ext_call.return_data[0] / eth.balance(nutzAddr) >= stor6:
        return (10^6 * ext_call.return_data[0] / eth.balance(nutzAddr))
    return stor6
}

function addAdmin(address arg1) {
    idx = 0
    s = 0
    while idx < admins.length:
        mem[0] = 0
        if address(admins[idx]) != msg.sender:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    require bool(s) == 1
    idx = 0
    while idx < admins.length:
        mem[0] = 0
        require address(admins[idx]) != arg1
        idx = idx + 1
        continue 
    require admins.length < 10
    admins.length++
    if not admins.length <= admins.length + 1:
        idx = admins.length + 1
        while admins.length > idx:
            uint256(admins[idx]) = 0
            idx = idx + 1
            continue 
    require admins.length < admins.length
    address(admins[admins.length]) = arg1
}

function moveFloor(uint256 arg1) {
    idx = 0
    s = 0
    while idx < admins.length:
        mem[0] = 0
        if address(admins[idx]) != msg.sender:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    require bool(s) == 1
    require arg1 >= ceiling
    if arg1 < -1:
        require ext_code.size(storageAddr)
        call storageAddr.getUInt(bytes32 rg1, bytes32 rg2) with:
             gas gas_remaining - 710 wei
            args 0x4e75747a00000000000000000000000000000000000000000000000000000000, 'activeSupply'
        require ext_call.success
        if ext_call.return_data[0]:
            require ext_call.return_data[0]
            require 10^6 * ext_call.return_data[0] / ext_call.return_data[0] == 10^6
        require arg1
        require eth.balance(nutzAddr) >= 10^6 * ext_call.return_data[0] / arg1
    stor6 = arg1
}

function setMaxPower(uint256 arg1) {
    idx = 0
    s = 0
    while idx < admins.length:
        mem[0] = 0
        if address(admins[idx]) != msg.sender:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    require bool(s) == 1
    require ext_code.size(storageAddr)
    call storageAddr.getUInt(bytes32 rg1, bytes32 rg2) with:
         gas gas_remaining - 710 wei
        args 0x506f776572000000000000000000000000000000000000000000000000000000, 'outstandingPower'
    require ext_call.success
    require ext_call.return_data[0] <= arg1
    require ext_code.size(storageAddr)
    call storageAddr.getUInt(bytes32 rg1, bytes32 rg2) with:
         gas gas_remaining - 710 wei
        args 0x506f776572000000000000000000000000000000000000000000000000000000, 'authorizedPower'
    require ext_call.success
    require arg1 < ext_call.return_data[0]
    maxPower = arg1
}

function totalSupply() {
    require ext_code.size(storageAddr)
    call storageAddr.getUInt(bytes32 rg1, bytes32 rg2) with:
         gas gas_remaining - 710 wei
        args 0x4e75747a00000000000000000000000000000000000000000000000000000000, 'burnPool'
    require ext_call.success
    require ext_code.size(storageAddr)
    call storageAddr.getUInt(bytes32 rg1, bytes32 rg2) with:
         gas gas_remaining - 710 wei
        args 0x4e75747a00000000000000000000000000000000000000000000000000000000, 'powerPool'
    require ext_call.success
    require ext_code.size(storageAddr)
    call storageAddr.getUInt(bytes32 rg1, bytes32 rg2) with:
         gas gas_remaining - 710 wei
        args 0x4e75747a00000000000000000000000000000000000000000000000000000000, 'activeSupply'
    require ext_call.success
    require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
    require ext_call.return_data[0] >= 0
    return (3 * ext_call.return_data[0])
}

function removeAdmin(address arg1) {
    idx = 0
    s = 0
    while idx < admins.length:
        mem[0] = 0
        if address(admins[idx]) != msg.sender:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    require bool(s) == 1
    idx = 0
    s = admins.length
    while idx < admins.length:
        mem[0] = 0
        if arg1 != address(admins[idx]):
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = idx
        continue 
    require s < admins.length
    if s < admins.length - 1:
        require admins.length - 1 < admins.length
        require s < admins.length
        address(admins[s]) = address(admins[admins.length])
    admins.length--
    if not admins.length <= admins.length - 1:
        idx = admins.length - 1
        while admins.length > idx:
            uint256(admins[idx]) = 0
            idx = idx + 1
            continue 
}

function allocateEther(uint256 arg1, address arg2) {
    idx = 0
    s = 0
    while idx < admins.length:
        mem[0] = 0
        if address(admins[idx]) != msg.sender:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    require bool(s) == 1
    require arg1 > 0
    require ext_code.size(storageAddr)
    call storageAddr.getUInt(bytes32 rg1, bytes32 rg2) with:
         gas gas_remaining - 710 wei
        args 0x4e75747a00000000000000000000000000000000000000000000000000000000, 'activeSupply'
    require ext_call.success
    if ext_call.return_data[0]:
        require ext_call.return_data[0]
        require 10^6 * ext_call.return_data[0] / ext_call.return_data[0] == 10^6
    require stor6
    require arg1 <= eth.balance(nutzAddr)
    require eth.balance(nutzAddr) - arg1 >= 10^6 * ext_call.return_data[0] / stor6
    require ext_code.size(nutzAddr)
    call nutzAddr.0x8bcff416 with:
         gas gas_remaining - 710 wei
        args pullAddr, address(arg2), arg1
    require ext_call.success
}

function transfer(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require nutzAddr == msg.sender
    require not stor1
    require arg2 != this.address
    require arg2
    require arg3 > 0
    require arg2 != arg1
    require ext_code.size(storageAddr)
    call storageAddr.getBal(bytes32 rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args 0x4e75747a00000000000000000000000000000000000000000000000000000000, arg1
    require ext_call.success
    require arg3 <= ext_call.return_data[0]
    require ext_code.size(storageAddr)
    call storageAddr.setBal(bytes32 rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 710 wei
        args 0x4e75747a00000000000000000000000000000000000000000000000000000000, address(arg1), ext_call.return_data[0] - arg3
    require ext_call.success
    require ext_code.size(storageAddr)
    call storageAddr.getBal(bytes32 rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args 0x4e75747a00000000000000000000000000000000000000000000000000000000, arg2
    require ext_call.success
    require arg3 + ext_call.return_data[0] >= ext_call.return_data[0]
    require ext_code.size(storageAddr)
    call storageAddr.setBal(bytes32 rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 710 wei
        args 0x4e75747a00000000000000000000000000000000000000000000000000000000, address(arg2), arg3 + ext_call.return_data[0]
    require ext_call.success
}

function transferFrom(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5) {
    require nutzAddr == msg.sender
    require not stor1
    require arg4 <= allowance[address(arg2)][address(arg1)]
    allowance[address(arg2)][address(arg1)] -= arg4
    require arg3 != this.address
    require arg3
    require arg4 > 0
    require arg3 != arg2
    require ext_code.size(storageAddr)
    call storageAddr.getBal(bytes32 rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args 0x4e75747a00000000000000000000000000000000000000000000000000000000, arg2
    require ext_call.success
    require arg4 <= ext_call.return_data[0]
    require ext_code.size(storageAddr)
    call storageAddr.setBal(bytes32 rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 710 wei
        args 0x4e75747a00000000000000000000000000000000000000000000000000000000, address(arg2), ext_call.return_data[0] - arg4
    require ext_call.success
    require ext_code.size(storageAddr)
    call storageAddr.getBal(bytes32 rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args 0x4e75747a00000000000000000000000000000000000000000000000000000000, arg3
    require ext_call.success
    require arg4 + ext_call.return_data[0] >= ext_call.return_data[0]
    require ext_code.size(storageAddr)
    call storageAddr.setBal(bytes32 rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 710 wei
        args 0x4e75747a00000000000000000000000000000000000000000000000000000000, address(arg3), arg4 + ext_call.return_data[0]
    require ext_call.success
}

function createDownRequest(address arg1, uint256 arg2) {
    require powerAddr == msg.sender
    require not stor1
    require ext_code.size(storageAddr)
    call storageAddr.getUInt(bytes32 rg1, bytes32 rg2) with:
         gas gas_remaining - 710 wei
        args 0x506f776572000000000000000000000000000000000000000000000000000000, 'authorizedPower'
    require ext_call.success
    require arg2 >= ext_call.return_data[0] / 10000
    require ext_code.size(storageAddr)
    call storageAddr.getBal(bytes32 rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args 0x506f776572000000000000000000000000000000000000000000000000000000, arg1
    require ext_call.success
    require arg2 <= ext_call.return_data[0]
    require ext_code.size(storageAddr)
    call storageAddr.setBal(bytes32 rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 710 wei
        args 0x506f776572000000000000000000000000000000000000000000000000000000, address(arg1), ext_call.return_data[0] - arg2
    require ext_call.success
    require ext_code.size(storageAddr)
    call storageAddr.getBal(bytes32 rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args 'PowerDown', arg1
    require ext_call.success
    require ext_call.return_data[12 len 12] + arg2 >= arg2
    require ext_code.size(storageAddr)
    call storageAddr.setBal(bytes32 rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 710 wei
        args 'PowerDown', address(arg1), uint64(block.timestamp) + (0x10000000000000000000000010000000000000002 * Mask(96, 64, ext_call.return_data[0]) >> 64) + (0x10000000000000000000000010000000000000002 * arg2)
    require ext_call.success
}

function slashPower(address arg1, uint256 arg2, bytes32 arg3) {
    idx = 0
    s = 0
    while idx < admins.length:
        mem[0] = 0
        if address(admins[idx]) != msg.sender:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    require bool(s) == 1
    require ext_code.size(storageAddr)
    call storageAddr.getBal(bytes32 rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args 0x506f776572000000000000000000000000000000000000000000000000000000, arg1
    require ext_call.success
    require arg2 <= ext_call.return_data[0]
    require ext_code.size(storageAddr)
    call storageAddr.setBal(bytes32 rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 710 wei
        args 0x506f776572000000000000000000000000000000000000000000000000000000, address(arg1), ext_call.return_data[0] - arg2
    require ext_call.success
    require ext_code.size(storageAddr)
    call storageAddr.getUInt(bytes32 rg1, bytes32 rg2) with:
         gas gas_remaining - 710 wei
        args 0x506f776572000000000000000000000000000000000000000000000000000000, 'outstandingPower'
    require ext_call.success
    require arg2 <= ext_call.return_data[0]
    require ext_code.size(storageAddr)
    call storageAddr.setUInt(bytes32 rg1, bytes32 rg2, uint256 rg3) with:
         gas gas_remaining - 710 wei
        args 0x506f776572000000000000000000000000000000000000000000000000000000, 'outstandingPower', ext_call.return_data[0] - arg2
    require ext_call.success
    require ext_code.size(storageAddr)
    call storageAddr.getUInt(bytes32 rg1, bytes32 rg2) with:
         gas gas_remaining - 710 wei
        args 0x4e75747a00000000000000000000000000000000000000000000000000000000, 'powerPool'
    require ext_call.success
    if arg2:
        require arg2
        require ext_call.return_data[0] * arg2 / arg2 == ext_call.return_data[0]
    require ext_call.return_data[0]
    require ext_call.return_data[0] * arg2 / ext_call.return_data[0] <= ext_call.return_data[0]
    require ext_code.size(storageAddr)
    call storageAddr.setUInt(bytes32 rg1, bytes32 rg2, uint256 rg3) with:
         gas gas_remaining - 710 wei
        args 0x4e75747a00000000000000000000000000000000000000000000000000000000, 'powerPool', ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0])
    require ext_call.success
    require ext_code.size(powerAddr)
    call powerAddr.0x15fb1a65 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2, arg3
    require ext_call.success
}

function slashDownRequest(uint256 arg1, address arg2, uint256 arg3, bytes32 arg4) {
    idx = 0
    s = 0
    while idx < admins.length:
        mem[0] = 0
        if address(admins[idx]) != msg.sender:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    require bool(s) == 1
    require ext_code.size(storageAddr)
    call storageAddr.getBal(bytes32 rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args 'PowerDown', arg2
    require ext_call.success
    require arg3 <= ext_call.return_data[12 len 12]
    require ext_code.size(storageAddr)
    call storageAddr.setBal(bytes32 rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 710 wei
        args 'PowerDown', address(arg2), uint64(ext_call.return_data[0]) + ((Mask(96, 64, ext_call.return_data[0]) >> 64) - arg3 << 64) + Mask(96, 160, ext_call.return_data[0])
    require ext_call.success
    require ext_code.size(storageAddr)
    call storageAddr.getUInt(bytes32 rg1, bytes32 rg2) with:
         gas gas_remaining - 710 wei
        args 0x506f776572000000000000000000000000000000000000000000000000000000, 'outstandingPower'
    require ext_call.success
    require arg3 <= ext_call.return_data[0]
    require ext_code.size(storageAddr)
    call storageAddr.setUInt(bytes32 rg1, bytes32 rg2, uint256 rg3) with:
         gas gas_remaining - 710 wei
        args 0x506f776572000000000000000000000000000000000000000000000000000000, 'outstandingPower', ext_call.return_data[0] - arg3
    require ext_call.success
    require ext_code.size(storageAddr)
    call storageAddr.getUInt(bytes32 rg1, bytes32 rg2) with:
         gas gas_remaining - 710 wei
        args 0x4e75747a00000000000000000000000000000000000000000000000000000000, 'powerPool'
    require ext_call.success
    if arg3:
        require arg3
        require ext_call.return_data[0] * arg3 / arg3 == ext_call.return_data[0]
    require ext_call.return_data[0]
    require ext_call.return_data[0] * arg3 / ext_call.return_data[0] <= ext_call.return_data[0]
    require ext_code.size(storageAddr)
    call storageAddr.setUInt(bytes32 rg1, bytes32 rg2, uint256 rg3) with:
         gas gas_remaining - 710 wei
        args 0x4e75747a00000000000000000000000000000000000000000000000000000000, 'powerPool', ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / ext_call.return_data[0])
    require ext_call.success
    require ext_code.size(powerAddr)
    call powerAddr.0x15fb1a65 with:
         gas gas_remaining - 710 wei
        args address(arg2), arg3, arg4
    require ext_call.success
}

function purchase(address arg1, uint256 arg2, uint256 arg3) {
    require nutzAddr == msg.sender
    require not stor1
    require ceiling > 0
    require arg3 == ceiling
    if ceiling:
        require ceiling
        require arg2 * ceiling / ceiling == arg2
    require arg2 * ceiling / 10^6 > 0
    require ext_code.size(storageAddr)
    call storageAddr.getUInt(bytes32 rg1, bytes32 rg2) with:
         gas gas_remaining - 710 wei
        args 0x4e75747a00000000000000000000000000000000000000000000000000000000, 'activeSupply'
    require ext_call.success
    require ext_code.size(storageAddr)
    call storageAddr.getUInt(bytes32 rg1, bytes32 rg2) with:
         gas gas_remaining - 710 wei
        args 0x4e75747a00000000000000000000000000000000000000000000000000000000, 'powerPool'
    require ext_call.success
    if ext_call.return_data[0] > 0:
        require ext_code.size(storageAddr)
        call storageAddr.getUInt(bytes32 rg1, bytes32 rg2) with:
             gas gas_remaining - 710 wei
            args 0x4e75747a00000000000000000000000000000000000000000000000000000000, 'burnPool'
        require ext_call.success
        require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
        if ext_call.return_data[0]:
            require ext_call.return_data[0]
            require arg2 * ceiling / 10^6 * ext_call.return_data[0] / ext_call.return_data[0] == arg2 * ceiling / 10^6
        require 2 * ext_call.return_data[0]
        require (arg2 * ceiling / 10^6 * ext_call.return_data[0] / 2 * ext_call.return_data[0]) + ext_call.return_data[0] >= ext_call.return_data[0]
        require ext_code.size(storageAddr)
        call storageAddr.setUInt(bytes32 rg1, bytes32 rg2, uint256 rg3) with:
             gas gas_remaining - 710 wei
            args 0x4e75747a00000000000000000000000000000000000000000000000000000000, 'powerPool', (arg2 * ceiling / 10^6 * ext_call.return_data[0] / 2 * ext_call.return_data[0]) + ext_call.return_data[0]
        require ext_call.success
    require (arg2 * ceiling / 10^6) + ext_call.return_data[0] >= ext_call.return_data[0]
    require ext_code.size(storageAddr)
    call storageAddr.setUInt(bytes32 rg1, bytes32 rg2, uint256 rg3) with:
         gas gas_remaining - 710 wei
        args 0x4e75747a00000000000000000000000000000000000000000000000000000000, 'activeSupply', (arg2 * ceiling / 10^6) + ext_call.return_data[0]
    require ext_call.success
    require ext_code.size(storageAddr)
    call storageAddr.getBal(bytes32 rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args 0x4e75747a00000000000000000000000000000000000000000000000000000000, arg1
    require ext_call.success
    require (arg2 * ceiling / 10^6) + ext_call.return_data[0] >= ext_call.return_data[0]
    require ext_code.size(storageAddr)
    call storageAddr.setBal(bytes32 rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 710 wei
        args 0x4e75747a00000000000000000000000000000000000000000000000000000000, address(arg1), (arg2 * ceiling / 10^6) + ext_call.return_data[0]
    require ext_call.success
    return (arg2 * ceiling / 10^6)
}

function dilutePower(uint256 arg1, uint256 arg2) {
    idx = 0
    s = 0
    while idx < admins.length:
        mem[0] = 0
        if address(admins[idx]) != msg.sender:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    require bool(s) == 1
    require ext_code.size(storageAddr)
    call storageAddr.getUInt(bytes32 rg1, bytes32 rg2) with:
         gas gas_remaining - 710 wei
        args 0x506f776572000000000000000000000000000000000000000000000000000000, 'authorizedPower'
    require ext_call.success
    require ext_code.size(storageAddr)
    call storageAddr.getUInt(bytes32 rg1, bytes32 rg2) with:
         gas gas_remaining - 710 wei
        args 0x4e75747a00000000000000000000000000000000000000000000000000000000, 'burnPool'
    require ext_call.success
    require ext_code.size(storageAddr)
    call storageAddr.getUInt(bytes32 rg1, bytes32 rg2) with:
         gas gas_remaining - 710 wei
        args 0x4e75747a00000000000000000000000000000000000000000000000000000000, 'powerPool'
    require ext_call.success
    require ext_code.size(storageAddr)
    call storageAddr.getUInt(bytes32 rg1, bytes32 rg2) with:
         gas gas_remaining - 710 wei
        args 0x4e75747a00000000000000000000000000000000000000000000000000000000, 'activeSupply'
    require ext_call.success
    require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
    require ext_call.return_data[0] >= 0
    if not ext_call.return_data[0]:
        if arg2 > 0:
            require ext_code.size(storageAddr)
            call storageAddr.setUInt(bytes32 rg1, bytes32 rg2, uint256 rg3) with:
                 gas gas_remaining - 710 wei
                args 0x506f776572000000000000000000000000000000000000000000000000000000, 'authorizedPower', arg2
        else:
            require (3 * ext_call.return_data[0]) + arg1 >= arg1
            require ext_code.size(storageAddr)
            call storageAddr.setUInt(bytes32 rg1, bytes32 rg2, uint256 rg3) with:
                 gas gas_remaining - 710 wei
                args 0x506f776572000000000000000000000000000000000000000000000000000000, 'authorizedPower', (3 * ext_call.return_data[0]) + arg1
    else:
        require arg1 >= 0
        if ext_call.return_data[0]:
            require ext_call.return_data[0]
            require (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] == arg1 + (3 * ext_call.return_data[0])
        require 3 * ext_call.return_data[0]
        require ext_code.size(storageAddr)
        call storageAddr.setUInt(bytes32 rg1, bytes32 rg2, uint256 rg3) with:
             gas gas_remaining - 710 wei
            args 0x506f776572000000000000000000000000000000000000000000000000000000, 'authorizedPower', (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 3 * ext_call.return_data[0]
    require ext_call.success
    require ext_code.size(storageAddr)
    call storageAddr.getUInt(bytes32 rg1, bytes32 rg2) with:
         gas gas_remaining - 710 wei
        args 0x4e75747a00000000000000000000000000000000000000000000000000000000, 'burnPool'
    require ext_call.success
    require arg1 + ext_call.return_data[0] >= ext_call.return_data[0]
    require ext_code.size(storageAddr)
    call storageAddr.setUInt(bytes32 rg1, bytes32 rg2, uint256 rg3) with:
         gas gas_remaining - 710 wei
        args 0x4e75747a00000000000000000000000000000000000000000000000000000000, 'burnPool', arg1 + ext_call.return_data[0]
    require ext_call.success
}

function powerUp(address arg1, address arg2, uint256 arg3) {
    require nutzAddr == msg.sender
    require not stor1
    require ext_code.size(storageAddr)
    call storageAddr.getUInt(bytes32 rg1, bytes32 rg2) with:
         gas gas_remaining - 710 wei
        args 0x506f776572000000000000000000000000000000000000000000000000000000, 'authorizedPower'
    require ext_call.success
    require ext_call.return_data[0]
    require arg3
    require ext_code.size(storageAddr)
    call storageAddr.getUInt(bytes32 rg1, bytes32 rg2) with:
         gas gas_remaining - 710 wei
        args 0x4e75747a00000000000000000000000000000000000000000000000000000000, 'burnPool'
    require ext_call.success
    require ext_code.size(storageAddr)
    call storageAddr.getUInt(bytes32 rg1, bytes32 rg2) with:
         gas gas_remaining - 710 wei
        args 0x4e75747a00000000000000000000000000000000000000000000000000000000, 'powerPool'
    require ext_call.success
    require ext_code.size(storageAddr)
    call storageAddr.getUInt(bytes32 rg1, bytes32 rg2) with:
         gas gas_remaining - 710 wei
        args 0x4e75747a00000000000000000000000000000000000000000000000000000000, 'activeSupply'
    require ext_call.success
    require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
    require ext_call.return_data[0] >= 0
    require 3 * ext_call.return_data[0]
    if arg3:
        require arg3
        require ext_call.return_data[0] * arg3 / arg3 == ext_call.return_data[0]
    require 3 * ext_call.return_data[0]
    require ext_code.size(storageAddr)
    call storageAddr.getUInt(bytes32 rg1, bytes32 rg2) with:
         gas gas_remaining - 710 wei
        args 0x506f776572000000000000000000000000000000000000000000000000000000, 'outstandingPower'
    require ext_call.success
    require (ext_call.return_data[0] * arg3 / 3 * ext_call.return_data[0]) + ext_call.return_data[0] >= ext_call.return_data[0]
    require (ext_call.return_data[0] * arg3 / 3 * ext_call.return_data[0]) + ext_call.return_data[0] <= maxPower
    if arg2 != arg1:
        require arg3 <= allowance[address(arg2)][address(arg1)]
        allowance[address(arg2)][address(arg1)] -= arg3
    require (ext_call.return_data[0] * arg3 / 3 * ext_call.return_data[0]) + ext_call.return_data[0] >= ext_call.return_data[0]
    require ext_code.size(storageAddr)
    call storageAddr.setUInt(bytes32 rg1, bytes32 rg2, uint256 rg3) with:
         gas gas_remaining - 710 wei
        args 0x506f776572000000000000000000000000000000000000000000000000000000, 'outstandingPower', (ext_call.return_data[0] * arg3 / 3 * ext_call.return_data[0]) + ext_call.return_data[0]
    require ext_call.success
    require ext_code.size(storageAddr)
    call storageAddr.getBal(bytes32 rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args 0x506f776572000000000000000000000000000000000000000000000000000000, arg2
    require ext_call.success
    require (ext_call.return_data[0] * arg3 / 3 * ext_call.return_data[0]) + ext_call.return_data[0] >= ext_call.return_data[0]
    require (ext_call.return_data[0] * arg3 / 3 * ext_call.return_data[0]) + ext_call.return_data[0] >= ext_call.return_data[0] / 10000
    require ext_code.size(storageAddr)
    call storageAddr.setBal(bytes32 rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 710 wei
        args 0x506f776572000000000000000000000000000000000000000000000000000000, address(arg2), (ext_call.return_data[0] * arg3 / 3 * ext_call.return_data[0]) + ext_call.return_data[0]
    require ext_call.success
    require ext_code.size(storageAddr)
    call storageAddr.getUInt(bytes32 rg1, bytes32 rg2) with:
         gas gas_remaining - 710 wei
        args 0x4e75747a00000000000000000000000000000000000000000000000000000000, 'activeSupply'
    require ext_call.success
    require arg3 <= ext_call.return_data[0]
    require ext_code.size(storageAddr)
    call storageAddr.setUInt(bytes32 rg1, bytes32 rg2, uint256 rg3) with:
         gas gas_remaining - 710 wei
        args 0x4e75747a00000000000000000000000000000000000000000000000000000000, 'activeSupply', ext_call.return_data[0] - arg3
    require ext_call.success
    require ext_code.size(storageAddr)
    call storageAddr.getBal(bytes32 rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args 0x4e75747a00000000000000000000000000000000000000000000000000000000, arg2
    require ext_call.success
    require arg3 <= ext_call.return_data[0]
    require ext_code.size(storageAddr)
    call storageAddr.setBal(bytes32 rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 710 wei
        args 0x4e75747a00000000000000000000000000000000000000000000000000000000, address(arg2), ext_call.return_data[0] - arg3
    require ext_call.success
    require ext_code.size(storageAddr)
    call storageAddr.getUInt(bytes32 rg1, bytes32 rg2) with:
         gas gas_remaining - 710 wei
        args 0x4e75747a00000000000000000000000000000000000000000000000000000000, 'powerPool'
    require ext_call.success
    require arg3 + ext_call.return_data[0] >= ext_call.return_data[0]
    require ext_code.size(storageAddr)
    call storageAddr.setUInt(bytes32 rg1, bytes32 rg2, uint256 rg3) with:
         gas gas_remaining - 710 wei
        args 0x4e75747a00000000000000000000000000000000000000000000000000000000, 'powerPool', arg3 + ext_call.return_data[0]
    require ext_call.success
    require ext_code.size(powerAddr)
    call powerAddr.0x737517f5 with:
         gas gas_remaining - 710 wei
        args address(arg2), ext_call.return_data[0] * arg3 / 3 * ext_call.return_data[0]
    require ext_call.success
}

function sell(address arg1, uint256 arg2, uint256 arg3) {
    require nutzAddr == msg.sender
    require not stor1
    require eth.balance(nutzAddr)
    require ext_code.size(storageAddr)
    call storageAddr.getUInt(bytes32 rg1, bytes32 rg2) with:
         gas gas_remaining - 710 wei
        args 0x4e75747a00000000000000000000000000000000000000000000000000000000, 'activeSupply'
    require ext_call.success
    if ext_call.return_data[0]:
        require ext_call.return_data[0]
        require 10^6 * ext_call.return_data[0] / ext_call.return_data[0] == 10^6
    require eth.balance(nutzAddr)
    require arg3
    if 10^6 * ext_call.return_data[0] / eth.balance(nutzAddr) >= stor6:
        require 10^6 * ext_call.return_data[0] / eth.balance(nutzAddr) != -1
        require 10^6 * ext_call.return_data[0] / eth.balance(nutzAddr) == arg2
        if arg3:
            require arg3
            require 10^6 * arg3 / arg3 == 10^6
        require 10^6 * ext_call.return_data[0] / eth.balance(nutzAddr)
        require 10^6 * arg3 / 10^6 * ext_call.return_data[0] / eth.balance(nutzAddr) > 0
        require ext_code.size(storageAddr)
        call storageAddr.getUInt(bytes32 rg1, bytes32 rg2) with:
             gas gas_remaining - 710 wei
            args 0x4e75747a00000000000000000000000000000000000000000000000000000000, 'powerPool'
        require ext_call.success
        require ext_code.size(storageAddr)
        call storageAddr.getUInt(bytes32 rg1, bytes32 rg2) with:
             gas gas_remaining - 710 wei
            args 0x4e75747a00000000000000000000000000000000000000000000000000000000, 'activeSupply'
        require ext_call.success
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0]
            if ext_call.return_data[0]:
                require arg3 * ext_call.return_data[0] / ext_call.return_data[0] == arg3
            require arg3 * ext_call.return_data[0] / ext_call.return_data[0] <= ext_call.return_data[0]
            require ext_code.size(storageAddr)
            call storageAddr.setUInt(bytes32 rg1, bytes32 rg2, uint256 rg3) with:
                 gas gas_remaining - 710 wei
                args 0x4e75747a00000000000000000000000000000000000000000000000000000000, 'powerPool', ext_call.return_data[0] - (arg3 * ext_call.return_data[0] / ext_call.return_data[0])
            require ext_call.success
        require arg3 <= ext_call.return_data[0]
        require ext_code.size(storageAddr)
        call storageAddr.setUInt(bytes32 rg1, bytes32 rg2, uint256 rg3) with:
             gas gas_remaining - 710 wei
            args 0x4e75747a00000000000000000000000000000000000000000000000000000000, 'activeSupply', ext_call.return_data[0] - arg3
        require ext_call.success
        require ext_code.size(storageAddr)
        call storageAddr.getBal(bytes32 rg1, address rg2) with:
             gas gas_remaining - 710 wei
            args 0x4e75747a00000000000000000000000000000000000000000000000000000000, arg1
        require ext_call.success
        require arg3 <= ext_call.return_data[0]
        require ext_code.size(storageAddr)
        call storageAddr.setBal(bytes32 rg1, address rg2, uint256 rg3) with:
             gas gas_remaining - 710 wei
            args 0x4e75747a00000000000000000000000000000000000000000000000000000000, address(arg1), ext_call.return_data[0] - arg3
        require ext_call.success
        require ext_code.size(nutzAddr)
        call nutzAddr.0x8bcff416 with:
             gas gas_remaining - 710 wei
            args pullAddr, address(arg1), 10^6 * arg3 / 10^6 * ext_call.return_data[0] / eth.balance(nutzAddr)
    else:
        require stor6 != -1
        require stor6 == arg2
        if arg3:
            require arg3
            require 10^6 * arg3 / arg3 == 10^6
        require stor6
        require 10^6 * arg3 / stor6 > 0
        require ext_code.size(storageAddr)
        call storageAddr.getUInt(bytes32 rg1, bytes32 rg2) with:
             gas gas_remaining - 710 wei
            args 0x4e75747a00000000000000000000000000000000000000000000000000000000, 'powerPool'
        require ext_call.success
        require ext_code.size(storageAddr)
        call storageAddr.getUInt(bytes32 rg1, bytes32 rg2) with:
             gas gas_remaining - 710 wei
            args 0x4e75747a00000000000000000000000000000000000000000000000000000000, 'activeSupply'
        require ext_call.success
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0]
            if ext_call.return_data[0]:
                require arg3 * ext_call.return_data[0] / ext_call.return_data[0] == arg3
            require arg3 * ext_call.return_data[0] / ext_call.return_data[0] <= ext_call.return_data[0]
            require ext_code.size(storageAddr)
            call storageAddr.setUInt(bytes32 rg1, bytes32 rg2, uint256 rg3) with:
                 gas gas_remaining - 710 wei
                args 0x4e75747a00000000000000000000000000000000000000000000000000000000, 'powerPool', ext_call.return_data[0] - (arg3 * ext_call.return_data[0] / ext_call.return_data[0])
            require ext_call.success
        require arg3 <= ext_call.return_data[0]
        require ext_code.size(storageAddr)
        call storageAddr.setUInt(bytes32 rg1, bytes32 rg2, uint256 rg3) with:
             gas gas_remaining - 710 wei
            args 0x4e75747a00000000000000000000000000000000000000000000000000000000, 'activeSupply', ext_call.return_data[0] - arg3
        require ext_call.success
        require ext_code.size(storageAddr)
        call storageAddr.getBal(bytes32 rg1, address rg2) with:
             gas gas_remaining - 710 wei
            args 0x4e75747a00000000000000000000000000000000000000000000000000000000, arg1
        require ext_call.success
        require arg3 <= ext_call.return_data[0]
        require ext_code.size(storageAddr)
        call storageAddr.setBal(bytes32 rg1, address rg2, uint256 rg3) with:
             gas gas_remaining - 710 wei
            args 0x4e75747a00000000000000000000000000000000000000000000000000000000, address(arg1), ext_call.return_data[0] - arg3
        require ext_call.success
        require ext_code.size(nutzAddr)
        call nutzAddr.0x8bcff416 with:
             gas gas_remaining - 710 wei
            args pullAddr, address(arg1), 10^6 * arg3 / stor6
    require ext_call.success
}

function downTick(address arg1, uint256 arg2) {
    require powerAddr == msg.sender
    require not stor1
    require ext_code.size(storageAddr)
    call storageAddr.getBal(bytes32 rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args 'PowerDown', arg1
    require ext_call.success
    if arg2 <= ext_call.return_data[24 len 8]:
        if ext_call.return_data[12 len 12] > ext_call.return_data[0 len 12] / 10:
            require ext_call.return_data[0 len 12] / 10 <= 0
        require ext_code.size(storageAddr)
        call storageAddr.getUInt(bytes32 rg1, bytes32 rg2) with:
             gas gas_remaining - 710 wei
            args 0x506f776572000000000000000000000000000000000000000000000000000000, 'authorizedPower'
        require ext_call.success
        require ext_code.size(storageAddr)
        call storageAddr.getUInt(bytes32 rg1, bytes32 rg2) with:
             gas gas_remaining - 710 wei
            args 0x4e75747a00000000000000000000000000000000000000000000000000000000, 'burnPool'
        require ext_call.success
        require ext_code.size(storageAddr)
        call storageAddr.getUInt(bytes32 rg1, bytes32 rg2) with:
             gas gas_remaining - 710 wei
            args 0x4e75747a00000000000000000000000000000000000000000000000000000000, 'powerPool'
        require ext_call.success
        require ext_code.size(storageAddr)
        call storageAddr.getUInt(bytes32 rg1, bytes32 rg2) with:
             gas gas_remaining - 710 wei
            args 0x4e75747a00000000000000000000000000000000000000000000000000000000, 'activeSupply'
        require ext_call.success
        require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
        require ext_call.return_data[0] >= 0
        require ext_call.return_data[0]
        require ext_code.size(storageAddr)
        call storageAddr.getUInt(bytes32 rg1, bytes32 rg2) with:
             gas gas_remaining - 710 wei
            args 0x506f776572000000000000000000000000000000000000000000000000000000, 'outstandingPower'
        require ext_call.success
        require 0 <= ext_call.return_data[0]
        require ext_code.size(storageAddr)
        call storageAddr.setUInt(bytes32 rg1, bytes32 rg2, uint256 rg3) with:
             gas gas_remaining - 710 wei
            args 0x506f776572000000000000000000000000000000000000000000000000000000, 'outstandingPower', ext_call.return_data[0]
        require ext_call.success
        require 0 <= Mask(96, 64, ext_call.return_data[0]) >> 64
        require ext_code.size(storageAddr)
        call storageAddr.getUInt(bytes32 rg1, bytes32 rg2) with:
             gas gas_remaining - 710 wei
            args 0x4e75747a00000000000000000000000000000000000000000000000000000000, 'powerPool'
        require ext_call.success
        require 0 / ext_call.return_data[0] <= ext_call.return_data[0]
        require ext_code.size(storageAddr)
        call storageAddr.setUInt(bytes32 rg1, bytes32 rg2, uint256 rg3) with:
             gas gas_remaining - 710 wei
            args 0x4e75747a00000000000000000000000000000000000000000000000000000000, 'powerPool', ext_call.return_data[0] - (0 / ext_call.return_data[0])
        require ext_call.success
        require ext_code.size(storageAddr)
        call storageAddr.getUInt(bytes32 rg1, bytes32 rg2) with:
             gas gas_remaining - 710 wei
            args 0x4e75747a00000000000000000000000000000000000000000000000000000000, 'activeSupply'
        require ext_call.success
        require (0 / ext_call.return_data[0]) + ext_call.return_data[0] >= ext_call.return_data[0]
        require ext_code.size(storageAddr)
        call storageAddr.setUInt(bytes32 rg1, bytes32 rg2, uint256 rg3) with:
             gas gas_remaining - 710 wei
            args 0x4e75747a00000000000000000000000000000000000000000000000000000000, 'activeSupply', (0 / ext_call.return_data[0]) + ext_call.return_data[0]
        require ext_call.success
        require ext_code.size(storageAddr)
        call storageAddr.getBal(bytes32 rg1, address rg2) with:
             gas gas_remaining - 710 wei
            args 0x4e75747a00000000000000000000000000000000000000000000000000000000, arg1
        require ext_call.success
        require (0 / ext_call.return_data[0]) + ext_call.return_data[0] >= ext_call.return_data[0]
        require ext_code.size(storageAddr)
        call storageAddr.setBal(bytes32 rg1, address rg2, uint256 rg3) with:
             gas gas_remaining - 710 wei
            args 0x4e75747a00000000000000000000000000000000000000000000000000000000, address(arg1), (0 / ext_call.return_data[0]) + ext_call.return_data[0]
        require ext_call.success
        require ext_code.size(storageAddr)
        if Mask(96, 64, ext_call.return_data[0]) >> 64:
            call storageAddr.setBal(bytes32 rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining - 710 wei
                args 'PowerDown', address(arg1), uint64(ext_call.return_data[0]) + Mask(96, 64, ext_call.return_data[0]) + Mask(96, 160, ext_call.return_data[0])
        else:
            call storageAddr.setBal(bytes32 rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining - 710 wei
                args 'PowerDown', address(arg1), Mask(96, 64, ext_call.return_data[0])
        require ext_call.success
        require ext_code.size(nutzAddr)
        call nutzAddr.0x3df2b29d with:
             gas gas_remaining - 710 wei
            args powerAddr, address(arg1), 0 / ext_call.return_data[0]
    else:
        require ext_call.return_data[24 len 8] <= arg2
        if arg2 - ext_call.return_data[24 len 8] <= downtime:
            if Mask(96, 160, ext_call.return_data[0]):
                require ext_call.return_data[0 len 12]
                require (arg2 * ext_call.return_data[0 len 12]) - (ext_call.return_data[24 len 8] * ext_call.return_data[0 len 12]) / ext_call.return_data[0 len 12] == arg2 - ext_call.return_data[24 len 8]
            require downtime
            require (arg2 * ext_call.return_data[0 len 12]) - (ext_call.return_data[24 len 8] * ext_call.return_data[0 len 12]) / downtime <= ext_call.return_data[0 len 12]
            if ext_call.return_data[12 len 12] <= ext_call.return_data[0 len 12] - ((arg2 * ext_call.return_data[0 len 12]) - (ext_call.return_data[24 len 8] * ext_call.return_data[0 len 12]) / downtime):
                if ext_call.return_data[12 len 12] > ext_call.return_data[0 len 12] / 10:
                    require ext_call.return_data[0 len 12] / 10 <= 0
                require ext_code.size(storageAddr)
                call storageAddr.getUInt(bytes32 rg1, bytes32 rg2) with:
                     gas gas_remaining - 710 wei
                    args 0x506f776572000000000000000000000000000000000000000000000000000000, 'authorizedPower'
                require ext_call.success
                require ext_code.size(storageAddr)
                call storageAddr.getUInt(bytes32 rg1, bytes32 rg2) with:
                     gas gas_remaining - 710 wei
                    args 0x4e75747a00000000000000000000000000000000000000000000000000000000, 'burnPool'
                require ext_call.success
                require ext_code.size(storageAddr)
                call storageAddr.getUInt(bytes32 rg1, bytes32 rg2) with:
                     gas gas_remaining - 710 wei
                    args 0x4e75747a00000000000000000000000000000000000000000000000000000000, 'powerPool'
                require ext_call.success
                require ext_code.size(storageAddr)
                call storageAddr.getUInt(bytes32 rg1, bytes32 rg2) with:
                     gas gas_remaining - 710 wei
                    args 0x4e75747a00000000000000000000000000000000000000000000000000000000, 'activeSupply'
                require ext_call.success
                require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
                require ext_call.return_data[0] >= 0
                require ext_call.return_data[0]
                require ext_code.size(storageAddr)
                call storageAddr.getUInt(bytes32 rg1, bytes32 rg2) with:
                     gas gas_remaining - 710 wei
                    args 0x506f776572000000000000000000000000000000000000000000000000000000, 'outstandingPower'
                require ext_call.success
                require 0 <= ext_call.return_data[0]
                require ext_code.size(storageAddr)
                call storageAddr.setUInt(bytes32 rg1, bytes32 rg2, uint256 rg3) with:
                     gas gas_remaining - 710 wei
                    args 0x506f776572000000000000000000000000000000000000000000000000000000, 'outstandingPower', ext_call.return_data[0]
                require ext_call.success
                require 0 <= Mask(96, 64, ext_call.return_data[0]) >> 64
                require ext_code.size(storageAddr)
                call storageAddr.getUInt(bytes32 rg1, bytes32 rg2) with:
                     gas gas_remaining - 710 wei
                    args 0x4e75747a00000000000000000000000000000000000000000000000000000000, 'powerPool'
                require ext_call.success
                require 0 / ext_call.return_data[0] <= ext_call.return_data[0]
                require ext_code.size(storageAddr)
                call storageAddr.setUInt(bytes32 rg1, bytes32 rg2, uint256 rg3) with:
                     gas gas_remaining - 710 wei
                    args 0x4e75747a00000000000000000000000000000000000000000000000000000000, 'powerPool', ext_call.return_data[0] - (0 / ext_call.return_data[0])
                require ext_call.success
                require ext_code.size(storageAddr)
                call storageAddr.getUInt(bytes32 rg1, bytes32 rg2) with:
                     gas gas_remaining - 710 wei
                    args 0x4e75747a00000000000000000000000000000000000000000000000000000000, 'activeSupply'
                require ext_call.success
                require (0 / ext_call.return_data[0]) + ext_call.return_data[0] >= ext_call.return_data[0]
                require ext_code.size(storageAddr)
                call storageAddr.setUInt(bytes32 rg1, bytes32 rg2, uint256 rg3) with:
                     gas gas_remaining - 710 wei
                    args 0x4e75747a00000000000000000000000000000000000000000000000000000000, 'activeSupply', (0 / ext_call.return_data[0]) + ext_call.return_data[0]
                require ext_call.success
                require ext_code.size(storageAddr)
                call storageAddr.getBal(bytes32 rg1, address rg2) with:
                     gas gas_remaining - 710 wei
                    args 0x4e75747a00000000000000000000000000000000000000000000000000000000, arg1
                require ext_call.success
                require (0 / ext_call.return_data[0]) + ext_call.return_data[0] >= ext_call.return_data[0]
                require ext_code.size(storageAddr)
                call storageAddr.setBal(bytes32 rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining - 710 wei
                    args 0x4e75747a00000000000000000000000000000000000000000000000000000000, address(arg1), (0 / ext_call.return_data[0]) + ext_call.return_data[0]
                require ext_call.success
                require ext_code.size(storageAddr)
                if Mask(96, 64, ext_call.return_data[0]) >> 64:
                    call storageAddr.setBal(bytes32 rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining - 710 wei
                        args 'PowerDown', address(arg1), uint64(ext_call.return_data[0]) + Mask(96, 64, ext_call.return_data[0]) + Mask(96, 160, ext_call.return_data[0])
                else:
                    call storageAddr.setBal(bytes32 rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining - 710 wei
                        args 'PowerDown', address(arg1), Mask(96, 64, ext_call.return_data[0])
                require ext_call.success
                require ext_code.size(nutzAddr)
                call nutzAddr.0x3df2b29d with:
                     gas gas_remaining - 710 wei
                    args powerAddr, address(arg1), 0 / ext_call.return_data[0]
            else:
                require ext_call.return_data[0 len 12] - ((arg2 * ext_call.return_data[0 len 12]) - (ext_call.return_data[24 len 8] * ext_call.return_data[0 len 12]) / downtime) <= ext_call.return_data[12 len 12]
                if ext_call.return_data[12 len 12] > ext_call.return_data[0 len 12] / 10:
                    require ext_call.return_data[0 len 12] / 10 <= ext_call.return_data[12 len 12] - ext_call.return_data[0 len 12] + ((arg2 * ext_call.return_data[0 len 12]) - (ext_call.return_data[24 len 8] * ext_call.return_data[0 len 12]) / downtime)
                require ext_code.size(storageAddr)
                call storageAddr.getUInt(bytes32 rg1, bytes32 rg2) with:
                     gas gas_remaining - 710 wei
                    args 0x506f776572000000000000000000000000000000000000000000000000000000, 'authorizedPower'
                require ext_call.success
                require ext_code.size(storageAddr)
                call storageAddr.getUInt(bytes32 rg1, bytes32 rg2) with:
                     gas gas_remaining - 710 wei
                    args 0x4e75747a00000000000000000000000000000000000000000000000000000000, 'burnPool'
                require ext_call.success
                require ext_code.size(storageAddr)
                call storageAddr.getUInt(bytes32 rg1, bytes32 rg2) with:
                     gas gas_remaining - 710 wei
                    args 0x4e75747a00000000000000000000000000000000000000000000000000000000, 'powerPool'
                require ext_call.success
                require ext_code.size(storageAddr)
                call storageAddr.getUInt(bytes32 rg1, bytes32 rg2) with:
                     gas gas_remaining - 710 wei
                    args 0x4e75747a00000000000000000000000000000000000000000000000000000000, 'activeSupply'
                require ext_call.success
                require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
                require ext_call.return_data[0] >= 0
                if (Mask(96, 64, ext_call.return_data[0]) >> 64) - (Mask(96, 160, ext_call.return_data[0]) >> 160) + ((arg2 * Mask(96, 160, ext_call.return_data[0]) >> 160) - (uint64(ext_call.return_data[0]) * Mask(96, 160, ext_call.return_data[0]) >> 160) / downtime):
                    require (Mask(96, 64, ext_call.return_data[0]) >> 64) - (Mask(96, 160, ext_call.return_data[0]) >> 160) + ((arg2 * Mask(96, 160, ext_call.return_data[0]) >> 160) - (uint64(ext_call.return_data[0]) * Mask(96, 160, ext_call.return_data[0]) >> 160) / downtime)
                    require (Mask(96, 64, ext_call.return_data[0]) >> 64 * ext_call.return_data[0]) - (Mask(96, 160, ext_call.return_data[0]) >> 160 * ext_call.return_data[0]) + ((arg2 * Mask(96, 160, ext_call.return_data[0]) >> 160) - (uint64(ext_call.return_data[0]) * Mask(96, 160, ext_call.return_data[0]) >> 160) / downtime * ext_call.return_data[0]) + (Mask(96, 64, ext_call.return_data[0]) >> 64 * ext_call.return_data[0]) - (Mask(96, 160, ext_call.return_data[0]) >> 160 * ext_call.return_data[0]) + ((arg2 * Mask(96, 160, ext_call.return_data[0]) >> 160) - (uint64(ext_call.return_data[0]) * Mask(96, 160, ext_call.return_data[0]) >> 160) / downtime * ext_call.return_data[0]) + (Mask(96, 64, ext_call.return_data[0]) >> 64 * ext_call.return_data[0]) - (Mask(96, 160, ext_call.return_data[0]) >> 160 * ext_call.return_data[0]) + ((arg2 * Mask(96, 160, ext_call.return_data[0]) >> 160) - (uint64(ext_call.return_data[0]) * Mask(96, 160, ext_call.return_data[0]) >> 160) / downtime * ext_call.return_data[0]) / (Mask(96, 64, ext_call.return_data[0]) >> 64) - (Mask(96, 160, ext_call.return_data[0]) >> 160) + ((arg2 * Mask(96, 160, ext_call.return_data[0]) >> 160) - (uint64(ext_call.return_data[0]) * Mask(96, 160, ext_call.return_data[0]) >> 160) / downtime) == 3 * ext_call.return_data[0]
                require ext_call.return_data[0]
                require ext_code.size(storageAddr)
                call storageAddr.getUInt(bytes32 rg1, bytes32 rg2) with:
                     gas gas_remaining - 710 wei
                    args 0x506f776572000000000000000000000000000000000000000000000000000000, 'outstandingPower'
                require ext_call.success
                require (Mask(96, 64, ext_call.return_data[0]) >> 64) - (Mask(96, 160, ext_call.return_data[0]) >> 160) + ((arg2 * Mask(96, 160, ext_call.return_data[0]) >> 160) - (uint64(ext_call.return_data[0]) * Mask(96, 160, ext_call.return_data[0]) >> 160) / downtime) <= ext_call.return_data[0]
                require ext_code.size(storageAddr)
                call storageAddr.setUInt(bytes32 rg1, bytes32 rg2, uint256 rg3) with:
                     gas gas_remaining - 710 wei
                    args 0x506f776572000000000000000000000000000000000000000000000000000000, 'outstandingPower', ext_call.return_data[0] - (Mask(96, 64, ext_call.return_data[0]) >> 64) + (Mask(96, 160, ext_call.return_data[0]) >> 160) - ((arg2 * Mask(96, 160, ext_call.return_data[0]) >> 160) - (uint64(ext_call.return_data[0]) * Mask(96, 160, ext_call.return_data[0]) >> 160) / downtime)
                require ext_call.success
                require (Mask(96, 64, ext_call.return_data[0]) >> 64) - (Mask(96, 160, ext_call.return_data[0]) >> 160) + ((arg2 * Mask(96, 160, ext_call.return_data[0]) >> 160) - (uint64(ext_call.return_data[0]) * Mask(96, 160, ext_call.return_data[0]) >> 160) / downtime) <= Mask(96, 64, ext_call.return_data[0]) >> 64
                require ext_code.size(storageAddr)
                call storageAddr.getUInt(bytes32 rg1, bytes32 rg2) with:
                     gas gas_remaining - 710 wei
                    args 0x4e75747a00000000000000000000000000000000000000000000000000000000, 'powerPool'
                require ext_call.success
                require (Mask(96, 64, ext_call.return_data[0]) >> 64 * ext_call.return_data[0]) - (Mask(96, 160, ext_call.return_data[0]) >> 160 * ext_call.return_data[0]) + ((arg2 * Mask(96, 160, ext_call.return_data[0]) >> 160) - (uint64(ext_call.return_data[0]) * Mask(96, 160, ext_call.return_data[0]) >> 160) / downtime * ext_call.return_data[0]) + (Mask(96, 64, ext_call.return_data[0]) >> 64 * ext_call.return_data[0]) - (Mask(96, 160, ext_call.return_data[0]) >> 160 * ext_call.return_data[0]) + ((arg2 * Mask(96, 160, ext_call.return_data[0]) >> 160) - (uint64(ext_call.return_data[0]) * Mask(96, 160, ext_call.return_data[0]) >> 160) / downtime * ext_call.return_data[0]) + (Mask(96, 64, ext_call.return_data[0]) >> 64 * ext_call.return_data[0]) - (Mask(96, 160, ext_call.return_data[0]) >> 160 * ext_call.return_data[0]) + ((arg2 * Mask(96, 160, ext_call.return_data[0]) >> 160) - (uint64(ext_call.return_data[0]) * Mask(96, 160, ext_call.return_data[0]) >> 160) / downtime * ext_call.return_data[0]) / ext_call.return_data[0] <= ext_call.return_data[0]
                require ext_code.size(storageAddr)
                call storageAddr.setUInt(bytes32 rg1, bytes32 rg2, uint256 rg3) with:
                     gas gas_remaining - 710 wei
                    args 0x4e75747a00000000000000000000000000000000000000000000000000000000, 'powerPool', ext_call.return_data[0] - ((Mask(96, 64, ext_call.return_data[0]) >> 64 * ext_call.return_data[0]) - (Mask(96, 160, ext_call.return_data[0]) >> 160 * ext_call.return_data[0]) + ((arg2 * Mask(96, 160, ext_call.return_data[0]) >> 160) - (uint64(ext_call.return_data[0]) * Mask(96, 160, ext_call.return_data[0]) >> 160) / downtime * ext_call.return_data[0]) + (Mask(96, 64, ext_call.return_data[0]) >> 64 * ext_call.return_data[0]) - (Mask(96, 160, ext_call.return_data[0]) >> 160 * ext_call.return_data[0]) + ((arg2 * Mask(96, 160, ext_call.return_data[0]) >> 160) - (uint64(ext_call.return_data[0]) * Mask(96, 160, ext_call.return_data[0]) >> 160) / downtime * ext_call.return_data[0]) + (Mask(96, 64, ext_call.return_data[0]) >> 64 * ext_call.return_data[0]) - (Mask(96, 160, ext_call.return_data[0]) >> 160 * ext_call.return_data[0]) + ((arg2 * Mask(96, 160, ext_call.return_data[0]) >> 160) - (uint64(ext_call.return_data[0]) * Mask(96, 160, ext_call.return_data[0]) >> 160) / downtime * ext_call.return_data[0]) / ext_call.return_data[0])
                require ext_call.success
                require ext_code.size(storageAddr)
                call storageAddr.getUInt(bytes32 rg1, bytes32 rg2) with:
                     gas gas_remaining - 710 wei
                    args 0x4e75747a00000000000000000000000000000000000000000000000000000000, 'activeSupply'
                require ext_call.success
                require ((Mask(96, 64, ext_call.return_data[0]) >> 64 * ext_call.return_data[0]) - (Mask(96, 160, ext_call.return_data[0]) >> 160 * ext_call.return_data[0]) + ((arg2 * Mask(96, 160, ext_call.return_data[0]) >> 160) - (uint64(ext_call.return_data[0]) * Mask(96, 160, ext_call.return_data[0]) >> 160) / downtime * ext_call.return_data[0]) + (Mask(96, 64, ext_call.return_data[0]) >> 64 * ext_call.return_data[0]) - (Mask(96, 160, ext_call.return_data[0]) >> 160 * ext_call.return_data[0]) + ((arg2 * Mask(96, 160, ext_call.return_data[0]) >> 160) - (uint64(ext_call.return_data[0]) * Mask(96, 160, ext_call.return_data[0]) >> 160) / downtime * ext_call.return_data[0]) + (Mask(96, 64, ext_call.return_data[0]) >> 64 * ext_call.return_data[0]) - (Mask(96, 160, ext_call.return_data[0]) >> 160 * ext_call.return_data[0]) + ((arg2 * Mask(96, 160, ext_call.return_data[0]) >> 160) - (uint64(ext_call.return_data[0]) * Mask(96, 160, ext_call.return_data[0]) >> 160) / downtime * ext_call.return_data[0]) / ext_call.return_data[0]) + ext_call.return_data[0] >= ext_call.return_data[0]
                require ext_code.size(storageAddr)
                call storageAddr.setUInt(bytes32 rg1, bytes32 rg2, uint256 rg3) with:
                     gas gas_remaining - 710 wei
                    args 0x4e75747a00000000000000000000000000000000000000000000000000000000, 'activeSupply', ((Mask(96, 64, ext_call.return_data[0]) >> 64 * ext_call.return_data[0]) - (Mask(96, 160, ext_call.return_data[0]) >> 160 * ext_call.return_data[0]) + ((arg2 * Mask(96, 160, ext_call.return_data[0]) >> 160) - (uint64(ext_call.return_data[0]) * Mask(96, 160, ext_call.return_data[0]) >> 160) / downtime * ext_call.return_data[0]) + (Mask(96, 64, ext_call.return_data[0]) >> 64 * ext_call.return_data[0]) - (Mask(96, 160, ext_call.return_data[0]) >> 160 * ext_call.return_data[0]) + ((arg2 * Mask(96, 160, ext_call.return_data[0]) >> 160) - (uint64(ext_call.return_data[0]) * Mask(96, 160, ext_call.return_data[0]) >> 160) / downtime * ext_call.return_data[0]) + (Mask(96, 64, ext_call.return_data[0]) >> 64 * ext_call.return_data[0]) - (Mask(96, 160, ext_call.return_data[0]) >> 160 * ext_call.return_data[0]) + ((arg2 * Mask(96, 160, ext_call.return_data[0]) >> 160) - (uint64(ext_call.return_data[0]) * Mask(96, 160, ext_call.return_data[0]) >> 160) / downtime * ext_call.return_data[0]) / ext_call.return_data[0]) + ext_call.return_data[0]
                require ext_call.success
                require ext_code.size(storageAddr)
                call storageAddr.getBal(bytes32 rg1, address rg2) with:
                     gas gas_remaining - 710 wei
                    args 0x4e75747a00000000000000000000000000000000000000000000000000000000, arg1
                require ext_call.success
                require ((Mask(96, 64, ext_call.return_data[0]) >> 64 * ext_call.return_data[0]) - (Mask(96, 160, ext_call.return_data[0]) >> 160 * ext_call.return_data[0]) + ((arg2 * Mask(96, 160, ext_call.return_data[0]) >> 160) - (uint64(ext_call.return_data[0]) * Mask(96, 160, ext_call.return_data[0]) >> 160) / downtime * ext_call.return_data[0]) + (Mask(96, 64, ext_call.return_data[0]) >> 64 * ext_call.return_data[0]) - (Mask(96, 160, ext_call.return_data[0]) >> 160 * ext_call.return_data[0]) + ((arg2 * Mask(96, 160, ext_call.return_data[0]) >> 160) - (uint64(ext_call.return_data[0]) * Mask(96, 160, ext_call.return_data[0]) >> 160) / downtime * ext_call.return_data[0]) + (Mask(96, 64, ext_call.return_data[0]) >> 64 * ext_call.return_data[0]) - (Mask(96, 160, ext_call.return_data[0]) >> 160 * ext_call.return_data[0]) + ((arg2 * Mask(96, 160, ext_call.return_data[0]) >> 160) - (uint64(ext_call.return_data[0]) * Mask(96, 160, ext_call.return_data[0]) >> 160) / downtime * ext_call.return_data[0]) / ext_call.return_data[0]) + ext_call.return_data[0] >= ext_call.return_data[0]
                require ext_code.size(storageAddr)
                call storageAddr.setBal(bytes32 rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining - 710 wei
                    args 0x4e75747a00000000000000000000000000000000000000000000000000000000, address(arg1), ((Mask(96, 64, ext_call.return_data[0]) >> 64 * ext_call.return_data[0]) - (Mask(96, 160, ext_call.return_data[0]) >> 160 * ext_call.return_data[0]) + ((arg2 * Mask(96, 160, ext_call.return_data[0]) >> 160) - (uint64(ext_call.return_data[0]) * Mask(96, 160, ext_call.return_data[0]) >> 160) / downtime * ext_call.return_data[0]) + (Mask(96, 64, ext_call.return_data[0]) >> 64 * ext_call.return_data[0]) - (Mask(96, 160, ext_call.return_data[0]) >> 160 * ext_call.return_data[0]) + ((arg2 * Mask(96, 160, ext_call.return_data[0]) >> 160) - (uint64(ext_call.return_data[0]) * Mask(96, 160, ext_call.return_data[0]) >> 160) / downtime * ext_call.return_data[0]) + (Mask(96, 64, ext_call.return_data[0]) >> 64 * ext_call.return_data[0]) - (Mask(96, 160, ext_call.return_data[0]) >> 160 * ext_call.return_data[0]) + ((arg2 * Mask(96, 160, ext_call.return_data[0]) >> 160) - (uint64(ext_call.return_data[0]) * Mask(96, 160, ext_call.return_data[0]) >> 160) / downtime * ext_call.return_data[0]) / ext_call.return_data[0]) + ext_call.return_data[0]
                require ext_call.success
                require ext_code.size(storageAddr)
                if (Mask(96, 160, ext_call.return_data[0]) >> 160) - ((arg2 * Mask(96, 160, ext_call.return_data[0]) >> 160) - (uint64(ext_call.return_data[0]) * Mask(96, 160, ext_call.return_data[0]) >> 160) / downtime):
                    call storageAddr.setBal(bytes32 rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining - 710 wei
                        args 'PowerDown', address(arg1), uint64(ext_call.return_data[0]) + ((Mask(96, 160, ext_call.return_data[0]) >> 160) - ((arg2 * Mask(96, 160, ext_call.return_data[0]) >> 160) - (uint64(ext_call.return_data[0]) * Mask(96, 160, ext_call.return_data[0]) >> 160) / downtime) << 64) + Mask(96, 160, ext_call.return_data[0])
                else:
                    call storageAddr.setBal(bytes32 rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining - 710 wei
                        args 'PowerDown', address(arg1), (Mask(96, 160, ext_call.return_data[0]) >> 160) - ((arg2 * Mask(96, 160, ext_call.return_data[0]) >> 160) - (uint64(ext_call.return_data[0]) * Mask(96, 160, ext_call.return_data[0]) >> 160) / downtime) << 64
                require ext_call.success
                require ext_code.size(nutzAddr)
                call nutzAddr.0x3df2b29d with:
                     gas gas_remaining - 710 wei
                    args powerAddr, address(arg1), (Mask(96, 64, ext_call.return_data[0]) >> 64 * ext_call.return_data[0]) - (Mask(96, 160, ext_call.return_data[0]) >> 160 * ext_call.return_data[0]) + ((arg2 * Mask(96, 160, ext_call.return_data[0]) >> 160) - (uint64(ext_call.return_data[0]) * Mask(96, 160, ext_call.return_data[0]) >> 160) / downtime * ext_call.return_data[0]) + (Mask(96, 64, ext_call.return_data[0]) >> 64 * ext_call.return_data[0]) - (Mask(96, 160, ext_call.return_data[0]) >> 160 * ext_call.return_data[0]) + ((arg2 * Mask(96, 160, ext_call.return_data[0]) >> 160) - (uint64(ext_call.return_data[0]) * Mask(96, 160, ext_call.return_data[0]) >> 160) / downtime * ext_call.return_data[0]) + (Mask(96, 64, ext_call.return_data[0]) >> 64 * ext_call.return_data[0]) - (Mask(96, 160, ext_call.return_data[0]) >> 160 * ext_call.return_data[0]) + ((arg2 * Mask(96, 160, ext_call.return_data[0]) >> 160) - (uint64(ext_call.return_data[0]) * Mask(96, 160, ext_call.return_data[0]) >> 160) / downtime * ext_call.return_data[0]) / ext_call.return_data[0]
        else:
            if Mask(96, 160, ext_call.return_data[0]):
                require ext_call.return_data[0 len 12]
                require downtime * ext_call.return_data[0 len 12] / ext_call.return_data[0 len 12] == downtime
            require downtime
            require downtime * ext_call.return_data[0 len 12] / downtime <= ext_call.return_data[0 len 12]
            if ext_call.return_data[12 len 12] <= ext_call.return_data[0 len 12] - (downtime * ext_call.return_data[0 len 12] / downtime):
                if ext_call.return_data[12 len 12] > ext_call.return_data[0 len 12] / 10:
                    require ext_call.return_data[0 len 12] / 10 <= 0
                require ext_code.size(storageAddr)
                call storageAddr.getUInt(bytes32 rg1, bytes32 rg2) with:
                     gas gas_remaining - 710 wei
                    args 0x506f776572000000000000000000000000000000000000000000000000000000, 'authorizedPower'
                require ext_call.success
                require ext_code.size(storageAddr)
                call storageAddr.getUInt(bytes32 rg1, bytes32 rg2) with:
                     gas gas_remaining - 710 wei
                    args 0x4e75747a00000000000000000000000000000000000000000000000000000000, 'burnPool'
                require ext_call.success
                require ext_code.size(storageAddr)
                call storageAddr.getUInt(bytes32 rg1, bytes32 rg2) with:
                     gas gas_remaining - 710 wei
                    args 0x4e75747a00000000000000000000000000000000000000000000000000000000, 'powerPool'
                require ext_call.success
                require ext_code.size(storageAddr)
                call storageAddr.getUInt(bytes32 rg1, bytes32 rg2) with:
                     gas gas_remaining - 710 wei
                    args 0x4e75747a00000000000000000000000000000000000000000000000000000000, 'activeSupply'
                require ext_call.success
                require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
                require ext_call.return_data[0] >= 0
                require ext_call.return_data[0]
                require ext_code.size(storageAddr)
                call storageAddr.getUInt(bytes32 rg1, bytes32 rg2) with:
                     gas gas_remaining - 710 wei
                    args 0x506f776572000000000000000000000000000000000000000000000000000000, 'outstandingPower'
                require ext_call.success
                require 0 <= ext_call.return_data[0]
                require ext_code.size(storageAddr)
                call storageAddr.setUInt(bytes32 rg1, bytes32 rg2, uint256 rg3) with:
                     gas gas_remaining - 710 wei
                    args 0x506f776572000000000000000000000000000000000000000000000000000000, 'outstandingPower', ext_call.return_data[0]
                require ext_call.success
                require 0 <= Mask(96, 64, ext_call.return_data[0]) >> 64
                require ext_code.size(storageAddr)
                call storageAddr.getUInt(bytes32 rg1, bytes32 rg2) with:
                     gas gas_remaining - 710 wei
                    args 0x4e75747a00000000000000000000000000000000000000000000000000000000, 'powerPool'
                require ext_call.success
                require 0 / ext_call.return_data[0] <= ext_call.return_data[0]
                require ext_code.size(storageAddr)
                call storageAddr.setUInt(bytes32 rg1, bytes32 rg2, uint256 rg3) with:
                     gas gas_remaining - 710 wei
                    args 0x4e75747a00000000000000000000000000000000000000000000000000000000, 'powerPool', ext_call.return_data[0] - (0 / ext_call.return_data[0])
                require ext_call.success
                require ext_code.size(storageAddr)
                call storageAddr.getUInt(bytes32 rg1, bytes32 rg2) with:
                     gas gas_remaining - 710 wei
                    args 0x4e75747a00000000000000000000000000000000000000000000000000000000, 'activeSupply'
                require ext_call.success
                require (0 / ext_call.return_data[0]) + ext_call.return_data[0] >= ext_call.return_data[0]
                require ext_code.size(storageAddr)
                call storageAddr.setUInt(bytes32 rg1, bytes32 rg2, uint256 rg3) with:
                     gas gas_remaining - 710 wei
                    args 0x4e75747a00000000000000000000000000000000000000000000000000000000, 'activeSupply', (0 / ext_call.return_data[0]) + ext_call.return_data[0]
                require ext_call.success
                require ext_code.size(storageAddr)
                call storageAddr.getBal(bytes32 rg1, address rg2) with:
                     gas gas_remaining - 710 wei
                    args 0x4e75747a00000000000000000000000000000000000000000000000000000000, arg1
                require ext_call.success
                require (0 / ext_call.return_data[0]) + ext_call.return_data[0] >= ext_call.return_data[0]
                require ext_code.size(storageAddr)
                call storageAddr.setBal(bytes32 rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining - 710 wei
                    args 0x4e75747a00000000000000000000000000000000000000000000000000000000, address(arg1), (0 / ext_call.return_data[0]) + ext_call.return_data[0]
                require ext_call.success
                require ext_code.size(storageAddr)
                if Mask(96, 64, ext_call.return_data[0]) >> 64:
                    call storageAddr.setBal(bytes32 rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining - 710 wei
                        args 'PowerDown', address(arg1), uint64(ext_call.return_data[0]) + Mask(96, 64, ext_call.return_data[0]) + Mask(96, 160, ext_call.return_data[0])
                else:
                    call storageAddr.setBal(bytes32 rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining - 710 wei
                        args 'PowerDown', address(arg1), Mask(96, 64, ext_call.return_data[0])
                require ext_call.success
                require ext_code.size(nutzAddr)
                call nutzAddr.0x3df2b29d with:
                     gas gas_remaining - 710 wei
                    args powerAddr, address(arg1), 0 / ext_call.return_data[0]
            else:
                require ext_call.return_data[0 len 12] - (downtime * ext_call.return_data[0 len 12] / downtime) <= ext_call.return_data[12 len 12]
                if ext_call.return_data[12 len 12] > ext_call.return_data[0 len 12] / 10:
                    require ext_call.return_data[0 len 12] / 10 <= ext_call.return_data[12 len 12] - ext_call.return_data[0 len 12] + (downtime * ext_call.return_data[0 len 12] / downtime)
                require ext_code.size(storageAddr)
                call storageAddr.getUInt(bytes32 rg1, bytes32 rg2) with:
                     gas gas_remaining - 710 wei
                    args 0x506f776572000000000000000000000000000000000000000000000000000000, 'authorizedPower'
                require ext_call.success
                require ext_code.size(storageAddr)
                call storageAddr.getUInt(bytes32 rg1, bytes32 rg2) with:
                     gas gas_remaining - 710 wei
                    args 0x4e75747a00000000000000000000000000000000000000000000000000000000, 'burnPool'
                require ext_call.success
                require ext_code.size(storageAddr)
                call storageAddr.getUInt(bytes32 rg1, bytes32 rg2) with:
                     gas gas_remaining - 710 wei
                    args 0x4e75747a00000000000000000000000000000000000000000000000000000000, 'powerPool'
                require ext_call.success
                require ext_code.size(storageAddr)
                call storageAddr.getUInt(bytes32 rg1, bytes32 rg2) with:
                     gas gas_remaining - 710 wei
                    args 0x4e75747a00000000000000000000000000000000000000000000000000000000, 'activeSupply'
                require ext_call.success
                require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
                require ext_call.return_data[0] >= 0
                if (Mask(96, 64, ext_call.return_data[0]) >> 64) - (Mask(96, 160, ext_call.return_data[0]) >> 160) + (downtime * Mask(96, 160, ext_call.return_data[0]) >> 160 / downtime):
                    require (Mask(96, 64, ext_call.return_data[0]) >> 64) - (Mask(96, 160, ext_call.return_data[0]) >> 160) + (downtime * Mask(96, 160, ext_call.return_data[0]) >> 160 / downtime)
                    require (Mask(96, 64, ext_call.return_data[0]) >> 64 * ext_call.return_data[0]) - (Mask(96, 160, ext_call.return_data[0]) >> 160 * ext_call.return_data[0]) + (downtime * Mask(96, 160, ext_call.return_data[0]) >> 160 / downtime * ext_call.return_data[0]) + (Mask(96, 64, ext_call.return_data[0]) >> 64 * ext_call.return_data[0]) - (Mask(96, 160, ext_call.return_data[0]) >> 160 * ext_call.return_data[0]) + (downtime * Mask(96, 160, ext_call.return_data[0]) >> 160 / downtime * ext_call.return_data[0]) + (Mask(96, 64, ext_call.return_data[0]) >> 64 * ext_call.return_data[0]) - (Mask(96, 160, ext_call.return_data[0]) >> 160 * ext_call.return_data[0]) + (downtime * Mask(96, 160, ext_call.return_data[0]) >> 160 / downtime * ext_call.return_data[0]) / (Mask(96, 64, ext_call.return_data[0]) >> 64) - (Mask(96, 160, ext_call.return_data[0]) >> 160) + (downtime * Mask(96, 160, ext_call.return_data[0]) >> 160 / downtime) == 3 * ext_call.return_data[0]
                require ext_call.return_data[0]
                require ext_code.size(storageAddr)
                call storageAddr.getUInt(bytes32 rg1, bytes32 rg2) with:
                     gas gas_remaining - 710 wei
                    args 0x506f776572000000000000000000000000000000000000000000000000000000, 'outstandingPower'
                require ext_call.success
                require (Mask(96, 64, ext_call.return_data[0]) >> 64) - (Mask(96, 160, ext_call.return_data[0]) >> 160) + (downtime * Mask(96, 160, ext_call.return_data[0]) >> 160 / downtime) <= ext_call.return_data[0]
                require ext_code.size(storageAddr)
                call storageAddr.setUInt(bytes32 rg1, bytes32 rg2, uint256 rg3) with:
                     gas gas_remaining - 710 wei
                    args 0x506f776572000000000000000000000000000000000000000000000000000000, 'outstandingPower', ext_call.return_data[0] - (Mask(96, 64, ext_call.return_data[0]) >> 64) + (Mask(96, 160, ext_call.return_data[0]) >> 160) - (downtime * Mask(96, 160, ext_call.return_data[0]) >> 160 / downtime)
                require ext_call.success
                require (Mask(96, 64, ext_call.return_data[0]) >> 64) - (Mask(96, 160, ext_call.return_data[0]) >> 160) + (downtime * Mask(96, 160, ext_call.return_data[0]) >> 160 / downtime) <= Mask(96, 64, ext_call.return_data[0]) >> 64
                require ext_code.size(storageAddr)
                call storageAddr.getUInt(bytes32 rg1, bytes32 rg2) with:
                     gas gas_remaining - 710 wei
                    args 0x4e75747a00000000000000000000000000000000000000000000000000000000, 'powerPool'
                require ext_call.success
                require (Mask(96, 64, ext_call.return_data[0]) >> 64 * ext_call.return_data[0]) - (Mask(96, 160, ext_call.return_data[0]) >> 160 * ext_call.return_data[0]) + (downtime * Mask(96, 160, ext_call.return_data[0]) >> 160 / downtime * ext_call.return_data[0]) + (Mask(96, 64, ext_call.return_data[0]) >> 64 * ext_call.return_data[0]) - (Mask(96, 160, ext_call.return_data[0]) >> 160 * ext_call.return_data[0]) + (downtime * Mask(96, 160, ext_call.return_data[0]) >> 160 / downtime * ext_call.return_data[0]) + (Mask(96, 64, ext_call.return_data[0]) >> 64 * ext_call.return_data[0]) - (Mask(96, 160, ext_call.return_data[0]) >> 160 * ext_call.return_data[0]) + (downtime * Mask(96, 160, ext_call.return_data[0]) >> 160 / downtime * ext_call.return_data[0]) / ext_call.return_data[0] <= ext_call.return_data[0]
                require ext_code.size(storageAddr)
                call storageAddr.setUInt(bytes32 rg1, bytes32 rg2, uint256 rg3) with:
                     gas gas_remaining - 710 wei
                    args 0x4e75747a00000000000000000000000000000000000000000000000000000000, 'powerPool', ext_call.return_data[0] - ((Mask(96, 64, ext_call.return_data[0]) >> 64 * ext_call.return_data[0]) - (Mask(96, 160, ext_call.return_data[0]) >> 160 * ext_call.return_data[0]) + (downtime * Mask(96, 160, ext_call.return_data[0]) >> 160 / downtime * ext_call.return_data[0]) + (Mask(96, 64, ext_call.return_data[0]) >> 64 * ext_call.return_data[0]) - (Mask(96, 160, ext_call.return_data[0]) >> 160 * ext_call.return_data[0]) + (downtime * Mask(96, 160, ext_call.return_data[0]) >> 160 / downtime * ext_call.return_data[0]) + (Mask(96, 64, ext_call.return_data[0]) >> 64 * ext_call.return_data[0]) - (Mask(96, 160, ext_call.return_data[0]) >> 160 * ext_call.return_data[0]) + (downtime * Mask(96, 160, ext_call.return_data[0]) >> 160 / downtime * ext_call.return_data[0]) / ext_call.return_data[0])
                require ext_call.success
                require ext_code.size(storageAddr)
                call storageAddr.getUInt(bytes32 rg1, bytes32 rg2) with:
                     gas gas_remaining - 710 wei
                    args 0x4e75747a00000000000000000000000000000000000000000000000000000000, 'activeSupply'
                require ext_call.success
                require ((Mask(96, 64, ext_call.return_data[0]) >> 64 * ext_call.return_data[0]) - (Mask(96, 160, ext_call.return_data[0]) >> 160 * ext_call.return_data[0]) + (downtime * Mask(96, 160, ext_call.return_data[0]) >> 160 / downtime * ext_call.return_data[0]) + (Mask(96, 64, ext_call.return_data[0]) >> 64 * ext_call.return_data[0]) - (Mask(96, 160, ext_call.return_data[0]) >> 160 * ext_call.return_data[0]) + (downtime * Mask(96, 160, ext_call.return_data[0]) >> 160 / downtime * ext_call.return_data[0]) + (Mask(96, 64, ext_call.return_data[0]) >> 64 * ext_call.return_data[0]) - (Mask(96, 160, ext_call.return_data[0]) >> 160 * ext_call.return_data[0]) + (downtime * Mask(96, 160, ext_call.return_data[0]) >> 160 / downtime * ext_call.return_data[0]) / ext_call.return_data[0]) + ext_call.return_data[0] >= ext_call.return_data[0]
                require ext_code.size(storageAddr)
                call storageAddr.setUInt(bytes32 rg1, bytes32 rg2, uint256 rg3) with:
                     gas gas_remaining - 710 wei
                    args 0x4e75747a00000000000000000000000000000000000000000000000000000000, 'activeSupply', ((Mask(96, 64, ext_call.return_data[0]) >> 64 * ext_call.return_data[0]) - (Mask(96, 160, ext_call.return_data[0]) >> 160 * ext_call.return_data[0]) + (downtime * Mask(96, 160, ext_call.return_data[0]) >> 160 / downtime * ext_call.return_data[0]) + (Mask(96, 64, ext_call.return_data[0]) >> 64 * ext_call.return_data[0]) - (Mask(96, 160, ext_call.return_data[0]) >> 160 * ext_call.return_data[0]) + (downtime * Mask(96, 160, ext_call.return_data[0]) >> 160 / downtime * ext_call.return_data[0]) + (Mask(96, 64, ext_call.return_data[0]) >> 64 * ext_call.return_data[0]) - (Mask(96, 160, ext_call.return_data[0]) >> 160 * ext_call.return_data[0]) + (downtime * Mask(96, 160, ext_call.return_data[0]) >> 160 / downtime * ext_call.return_data[0]) / ext_call.return_data[0]) + ext_call.return_data[0]
                require ext_call.success
                require ext_code.size(storageAddr)
                call storageAddr.getBal(bytes32 rg1, address rg2) with:
                     gas gas_remaining - 710 wei
                    args 0x4e75747a00000000000000000000000000000000000000000000000000000000, arg1
                require ext_call.success
                require ((Mask(96, 64, ext_call.return_data[0]) >> 64 * ext_call.return_data[0]) - (Mask(96, 160, ext_call.return_data[0]) >> 160 * ext_call.return_data[0]) + (downtime * Mask(96, 160, ext_call.return_data[0]) >> 160 / downtime * ext_call.return_data[0]) + (Mask(96, 64, ext_call.return_data[0]) >> 64 * ext_call.return_data[0]) - (Mask(96, 160, ext_call.return_data[0]) >> 160 * ext_call.return_data[0]) + (downtime * Mask(96, 160, ext_call.return_data[0]) >> 160 / downtime * ext_call.return_data[0]) + (Mask(96, 64, ext_call.return_data[0]) >> 64 * ext_call.return_data[0]) - (Mask(96, 160, ext_call.return_data[0]) >> 160 * ext_call.return_data[0]) + (downtime * Mask(96, 160, ext_call.return_data[0]) >> 160 / downtime * ext_call.return_data[0]) / ext_call.return_data[0]) + ext_call.return_data[0] >= ext_call.return_data[0]
                require ext_code.size(storageAddr)
                call storageAddr.setBal(bytes32 rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining - 710 wei
                    args 0x4e75747a00000000000000000000000000000000000000000000000000000000, address(arg1), ((Mask(96, 64, ext_call.return_data[0]) >> 64 * ext_call.return_data[0]) - (Mask(96, 160, ext_call.return_data[0]) >> 160 * ext_call.return_data[0]) + (downtime * Mask(96, 160, ext_call.return_data[0]) >> 160 / downtime * ext_call.return_data[0]) + (Mask(96, 64, ext_call.return_data[0]) >> 64 * ext_call.return_data[0]) - (Mask(96, 160, ext_call.return_data[0]) >> 160 * ext_call.return_data[0]) + (downtime * Mask(96, 160, ext_call.return_data[0]) >> 160 / downtime * ext_call.return_data[0]) + (Mask(96, 64, ext_call.return_data[0]) >> 64 * ext_call.return_data[0]) - (Mask(96, 160, ext_call.return_data[0]) >> 160 * ext_call.return_data[0]) + (downtime * Mask(96, 160, ext_call.return_data[0]) >> 160 / downtime * ext_call.return_data[0]) / ext_call.return_data[0]) + ext_call.return_data[0]
                require ext_call.success
                require ext_code.size(storageAddr)
                if (Mask(96, 160, ext_call.return_data[0]) >> 160) - (downtime * Mask(96, 160, ext_call.return_data[0]) >> 160 / downtime):
                    call storageAddr.setBal(bytes32 rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining - 710 wei
                        args 'PowerDown', address(arg1), uint64(ext_call.return_data[0]) + ((Mask(96, 160, ext_call.return_data[0]) >> 160) - (downtime * Mask(96, 160, ext_call.return_data[0]) >> 160 / downtime) << 64) + Mask(96, 160, ext_call.return_data[0])
                else:
                    call storageAddr.setBal(bytes32 rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining - 710 wei
                        args 'PowerDown', address(arg1), (Mask(96, 160, ext_call.return_data[0]) >> 160) - (downtime * Mask(96, 160, ext_call.return_data[0]) >> 160 / downtime) << 64
                require ext_call.success
                require ext_code.size(nutzAddr)
                call nutzAddr.0x3df2b29d with:
                     gas gas_remaining - 710 wei
                    args powerAddr, address(arg1), (Mask(96, 64, ext_call.return_data[0]) >> 64 * ext_call.return_data[0]) - (Mask(96, 160, ext_call.return_data[0]) >> 160 * ext_call.return_data[0]) + (downtime * Mask(96, 160, ext_call.return_data[0]) >> 160 / downtime * ext_call.return_data[0]) + (Mask(96, 64, ext_call.return_data[0]) >> 64 * ext_call.return_data[0]) - (Mask(96, 160, ext_call.return_data[0]) >> 160 * ext_call.return_data[0]) + (downtime * Mask(96, 160, ext_call.return_data[0]) >> 160 / downtime * ext_call.return_data[0]) + (Mask(96, 64, ext_call.return_data[0]) >> 64 * ext_call.return_data[0]) - (Mask(96, 160, ext_call.return_data[0]) >> 160 * ext_call.return_data[0]) + (downtime * Mask(96, 160, ext_call.return_data[0]) >> 160 / downtime * ext_call.return_data[0]) / ext_call.return_data[0]
    require ext_call.success
}



}
