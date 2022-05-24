contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
address stor6;
array of address stor7;
mapping of uint8 stor8;
uint16 stor9;
address stor9; offset 16
uint256 stor11;
uint8 stor12; offset 160
uint128 stor12; offset 160
address stor12;

function _fallback() payable {
    uint16(stor9.field_0) = 0
    require not msg.value
    mem[96 len -6212] = code.data[7316 len -6212]
    mem[64] = -6116
    _4 = mem[160]
    stor6 = msg.sender
    if not mem[108 len 20]:
        idx = 0
        while idx < stor7.length:
            mem[0] = stor7[idx]
            mem[32] = 8
            stor8[stor7[idx]] = 0
            idx = idx + 1
            continue 
        idx = 0
        while idx < mem[mem[128] + 96]:
            require idx < mem[mem[128] + 96]
            mem[0] = mem[(32 * idx) + mem[128] + 140 len 20]
            mem[32] = 8
            stor8[mem[(32 * idx) + mem[128] + 140 len 20]] = 1
            idx = idx + 1
            continue 
        stor7.length = mem[mem[128] + 96]
        mem[0] = 7
        if not mem[mem[128] + 96]:
            idx = 0
            while stor7.length > idx:
                stor7[idx] = 0
                idx = idx + 1
                continue 
            mem[-6084] = mem[mem[128] + 96]
            _359 = mem[mem[128] + 96]
            mem[-6052 len floor32(mem[mem[128] + 96])] = mem[mem[128] + 128 len floor32(mem[mem[128] + 96])]
            emit SetOwners(address[] arg1):
                           32,
                           mem[-6084 len (32 * _359) + 32],
        else:
            s = 0
            idx = mem[128] + 128
            while mem[128] + (32 * mem[mem[128] + 96]) + 128 > idx:
                stor7[s] = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * mem[mem[128] + 96]) + 31) >> 5
            while stor7.length > idx:
                stor7[idx] = 0
                idx = idx + 1
                continue 
            mem[-6084] = mem[mem[128] + 96]
            _470 = mem[mem[128] + 96]
            mem[-6052 len floor32(mem[mem[128] + 96])] = mem[mem[128] + 128 len floor32(mem[mem[128] + 96])]
            emit SetOwners(address[] arg1):
                           32,
                           mem[-6084 len (32 * _470) + 32],
    else:
        address(stor9.field_16) = mem[108 len 20]
        idx = 0
        while idx < stor7.length:
            mem[0] = stor7[idx]
            mem[32] = 8
            stor8[stor7[idx]] = 0
            idx = idx + 1
            continue 
        idx = 0
        while idx < mem[mem[128] + 96]:
            require idx < mem[mem[128] + 96]
            mem[0] = mem[(32 * idx) + mem[128] + 140 len 20]
            mem[32] = 8
            stor8[mem[(32 * idx) + mem[128] + 140 len 20]] = 1
            idx = idx + 1
            continue 
        stor7.length = mem[mem[128] + 96]
        mem[0] = 7
        if not mem[mem[128] + 96]:
            idx = 0
            while stor7.length > idx:
                stor7[idx] = 0
                idx = idx + 1
                continue 
            mem[-6084] = mem[mem[128] + 96]
            _362 = mem[mem[128] + 96]
            mem[-6052 len floor32(mem[mem[128] + 96])] = mem[mem[128] + 128 len floor32(mem[mem[128] + 96])]
            emit SetOwners(address[] arg1):
                           32,
                           mem[-6084 len (32 * _362) + 32],
        else:
            s = 0
            idx = mem[128] + 128
            while mem[128] + (32 * mem[mem[128] + 96]) + 128 > idx:
                stor7[s] = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * mem[mem[128] + 96]) + 31) >> 5
            while stor7.length > idx:
                stor7[idx] = 0
                idx = idx + 1
                continue 
            mem[-6084] = mem[mem[128] + 96]
            _474 = mem[mem[128] + 96]
            mem[-6052 len floor32(mem[mem[128] + 96])] = mem[mem[128] + 128 len floor32(mem[mem[128] + 96])]
            emit SetOwners(address[] arg1):
                           32,
                           mem[-6084 len (32 * _474) + 32],
    stor11 = 435632 * 3600
    address(stor12.field_0) = address(_4)
    Mask(96, 0, stor12.field_160) = 0
    uint8(stor12.field_160) = 1
    bool(stor0.length) = 0
    stor0.length.field_1 = 5
    stor0.length.field_8 = 'BOLTH' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 3
    stor1.length.field_8 = 'BTH' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 18
    return code.data[1104 len 6212]
}



// =====================  Runtime code  =====================


const SALE_END_TIME = (426872 * 3600)

const LIMIT_TRANSFERS_PERIOD = (8760 * 24 * 3600)


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balances;
mapping of uint256 allowed;
address managerAddress;
array of struct owners;
mapping of uint8 stor8;
uint8 stor9;
uint8 stor9; offset 8
address eventListenerAddress; offset 16
mapping of uint8 stor10;
uint256 limitEndDate;
uint8 stor12; offset 160
address limitedWalletsManagerAddress;

function owners(uint256 arg1) {
    require arg1 < owners.length
    return owners[arg1].field_0
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function allowTransfers() {
    return bool(uint8(stor9.field_0))
}

function balances(address arg1) {
    return balances[arg1]
}

function limitedWallets(address arg1) {
    return bool(stor10[arg1])
}

function decimals() {
    return decimals
}

function limitedWalletsManager() {
    return limitedWalletsManagerAddress
}

function issuanceFinished() {
    return bool(uint8(stor9.field_8))
}

function manager() {
    return managerAddress
}

function allowed(address arg1, address arg2) {
    return allowed[arg1][arg2]
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function limitEndDate() {
    return limitEndDate
}

function symbol() {
    return symbol[0 len symbol.length]
}

function eventListener() {
    return eventListenerAddress
}

function isLimitEnabled() {
    return bool(stor12)
}

function allowance(address arg1, address arg2) {
    return allowed[address(arg1)][address(arg2)]
}

function ownerByAddress(address arg1) {
    return bool(stor8[arg1])
}

function _fallback() payable {
    revert
}

function disableLimit() {
    require limitedWalletsManagerAddress == msg.sender
    stor12 = 0
}

function delLimitedWalletAddress(address arg1) {
    require limitedWalletsManagerAddress == msg.sender
    stor10[address(arg1)] = 0
}

function enableTransfers() {
    require limitedWalletsManagerAddress == msg.sender
    uint8(stor9.field_0) = 1
    emit TransfersEnabled()
}

function finishIssuance() {
    require 1 == bool(stor8[address(msg.sender)])
    uint8(stor9.field_8) = 1
    emit IssuanceFinished()
    return 1
}

function setAllowTransfers(bool arg1) {
    require 1 == bool(stor8[address(msg.sender)])
    uint8(stor9.field_0) = uint8(arg1)
    emit AllowTransfersChanged(arg1);
}

function addLimitedWalletAddress(address arg1) {
    if limitedWalletsManagerAddress != msg.sender:
        require stor8[address(msg.sender)]
    stor10[address(arg1)] = 1
}

function setListener(address arg1) {
    require 1 == bool(stor8[address(msg.sender)])
    if not arg1:
        eventListenerAddress = 0
    else:
        eventListenerAddress = arg1
}

function approve(address arg1, uint256 arg2) {
    if block.timestamp < limitEndDate:
        if stor12:
            require not stor10[address(msg.sender)]
            require not stor10[address(arg1)]
    allowed[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require arg2 + allowed[address(msg.sender)][address(arg1)] >= allowed[address(msg.sender)][address(arg1)]
    allowed[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowed[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function destroy(address arg1, uint256 arg2) {
    if not stor8[address(msg.sender)]:
        require msg.sender == arg1
    require balances[address(arg1)] >= arg2
    require totalSupply >= arg2
    totalSupply -= arg2
    require balances[address(arg1)] >= arg2
    balances[address(arg1)] -= arg2
    emit Transfer(arg2, arg1, 0);
    emit Destroy(arg2, arg1);
}

function issue(address arg1, uint256 arg2) {
    require 1 == bool(stor8[address(msg.sender)])
    require not uint8(stor9.field_8)
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg2 + balances[address(arg1)] >= balances[address(arg1)]
    balances[address(arg1)] += arg2
    emit Issue(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 > allowed[address(msg.sender)][address(arg1)]:
        allowed[address(msg.sender)][address(arg1)] = 0
    else:
        require allowed[address(msg.sender)][address(arg1)] >= arg2
        allowed[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowed[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if block.timestamp < limitEndDate:
        if stor12:
            require not stor10[address(msg.sender)]
            require not stor10[address(arg1)]
    require uint8(stor9.field_0)
    require arg1
    require balances[address(msg.sender)] >= arg2
    require balances[address(msg.sender)] >= arg2
    balances[address(msg.sender)] -= arg2
    require arg2 + balances[arg1] >= balances[arg1]
    balances[address(arg1)] = arg2 + balances[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    if eventListenerAddress:
        require ext_code.size(eventListenerAddress)
        call eventListenerAddress.onTokenTransfer(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg2
        require ext_call.success
    return 1
}

function getOwners() {
    if not owners.length:
        mem[(32 * owners.length) + 160] = 32
        mem[(32 * owners.length) + 192] = owners.length
        mem[(32 * owners.length) + 224 len floor32(owners.length)] = mem[160 len floor32(owners.length)]
        return memory
          from (32 * owners.length) + 160
           len (96 * owners.length) + 64
    mem[160] = address(owners.field_0)
    idx = 160
    s = 0
    while (32 * owners.length) + 128 > idx:
        mem[idx + 32] = owners[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * owners.length) + 224 len floor32(owners.length)] = mem[160 len floor32(owners.length)]
    return Array(len=owners.length, data=mem[160 len floor32(owners.length)], mem[(32 * owners.length) + floor32(owners.length) + 224 len (32 * owners.length) - floor32(owners.length)]), 
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if block.timestamp < limitEndDate:
        if stor12:
            require not stor10[address(arg1)]
            require not stor10[address(arg2)]
    require uint8(stor9.field_0)
    require arg2
    require balances[address(arg1)] >= arg3
    require allowed[address(arg1)][address(msg.sender)] >= arg3
    require arg3 + balances[address(arg2)] >= balances[address(arg2)]
    balances[address(arg2)] += arg3
    require balances[arg1] >= arg3
    balances[address(arg1)] = balances[arg1] - arg3
    require allowed[address(arg1)][address(msg.sender)] >= arg3
    allowed[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    if eventListenerAddress:
        require ext_code.size(eventListenerAddress)
        call eventListenerAddress.onTokenTransfer(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(arg1), address(arg2), arg3
        require ext_call.success
    return 1
}

function setOwners(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require managerAddress == msg.sender
    idx = 0
    while idx < owners.length:
        mem[0] = owners[idx].field_0
        mem[32] = 8
        stor8[stor7[idx].field_0] = 0
        idx = idx + 1
        continue 
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 8
        stor8[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
    owners.length = arg1.length
    if not arg1.length:
        idx = 0
        while owners.length > idx:
            owners[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            owners[s].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while owners.length > idx:
            owners[idx].field_0 = 0
            idx = idx + 1
            continue 
    mem[(32 * arg1.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    emit SetOwners(Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 192 len (32 * arg1.length) - floor32(arg1.length)]));
}



}
