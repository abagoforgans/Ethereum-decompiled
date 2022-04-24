contract main {


// =======================  Init code  ======================


mapping of uint8 stor0;
array of address stor1;
uint256 stor3;
uint256 stor4;
uint256 stor5;

function _fallback() {
    mem[96 len -5563] = code.data[6423 len -5563]
    mem[64] = -5467
    require mem[160] > mem[128]
    require mem[128] > 0
    require mem[192] <= 100
    idx = 0
    while idx < mem[mem[96] + 96]:
        require idx < mem[mem[96] + 96]
        require mem[(32 * idx) + mem[96] + 140 len 20]
        require idx < mem[mem[96] + 96]
        mem[0] = mem[(32 * idx) + mem[96] + 140 len 20]
        mem[32] = 0
        stor0[mem[(32 * idx) + mem[96] + 140 len 20]] = 1
        require idx < mem[mem[96] + 96]
        emit OwnerAddition(mem[(32 * idx) + mem[96] + 140 len 20]);
        idx = idx + 1
        continue 
    stor1.length = mem[mem[96] + 96]
    if not mem[mem[96] + 96]:
        idx = 0
        while stor1.length > idx:
            stor1[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = mem[96] + 128
        while mem[96] + (32 * mem[mem[96] + 96]) + 128 > idx:
            stor1[s] = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[mem[96] + 96]) + 31) >> 5
        while stor1.length > idx:
            stor1[idx] = 0
            idx = idx + 1
            continue 
    require block.timestamp + mem[128] >= block.timestamp
    stor3 = block.timestamp + mem[128]
    require block.timestamp + mem[160] >= block.timestamp
    stor4 = block.timestamp + mem[160]
    stor5 = mem[192]
    return code.data[860 len 5563]
}



// =====================  Runtime code  =====================


mapping of uint8 stor0;
array of struct owners;
address operatorAddress;
uint256 shortLock;
uint256 longLock;
uint256 shortShare;
address levAddress;
address disbursementAddress;
uint256 longTermTokens;

function owners(uint256 arg1) {
    require arg1 < owners.length
    return address(owners[arg1].field_0)
}

function longTermTokens() {
    return longTermTokens
}

function isOwner(address arg1) {
    return bool(stor0[arg1])
}

function levAddress() {
    return levAddress
}

function shortLock() {
    return shortLock
}

function operator() {
    return operatorAddress
}

function longLock() {
    return longLock
}

function shortShare() {
    return shortShare
}

function disbursement() {
    return disbursementAddress
}

function _fallback() payable {
    revert
}

function setOperator(address arg1) {
    require stor0[address(msg.sender)]
    require arg1
    operatorAddress = arg1
}

function setup(address arg1, address arg2) {
    require stor0[address(msg.sender)]
    require arg1
    require arg2
    disbursementAddress = arg1
    levAddress = arg2
}

function addOwner(address arg1) {
    require stor0[address(msg.sender)]
    require arg1
    if not stor0[address(arg1)]:
        stor0[address(arg1)] = 1
        owners.length++
        if not owners.length <= owners.length + 1:
            idx = owners.length + 1
            while owners.length > idx:
                owners[idx].field_0 = 0
                idx = idx + 1
                continue 
        address(owners[owners.length].field_0) = arg1
        emit OwnerAddition(arg1);
}

function transferLongTermTokens(address arg1) {
    require arg1
    require stor0[address(msg.sender)]
    require block.timestamp > longLock
    require ext_code.size(levAddress)
    call levAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args disbursementAddress
    require ext_call.success
    require ext_code.size(disbursementAddress)
    call disbursementAddress.withdraw(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), ext_call.return_data[0]
    require ext_call.success
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
        mem[idx + 32] = address(owners[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * owners.length) + 224 len floor32(owners.length)] = mem[160 len floor32(owners.length)]
    return Array(len=owners.length, data=mem[160 len floor32(owners.length)], mem[(32 * owners.length) + floor32(owners.length) + 224 len (32 * owners.length) - floor32(owners.length)]), 
}

function transferShortTermTokens(address arg1) {
    require arg1
    require stor0[address(msg.sender)]
    require block.timestamp > shortLock
    require ext_code.size(levAddress)
    call levAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args disbursementAddress
    require ext_call.success
    if not longTermTokens:
        if ext_call.return_data[0]:
            require ext_call.return_data[0]
            require (100 * ext_call.return_data[0]) - (shortShare * ext_call.return_data[0]) / ext_call.return_data[0] == -shortShare + 100
        longTermTokens = (100 * ext_call.return_data[0]) - (shortShare * ext_call.return_data[0]) / 100
    require ext_call.return_data[0] > longTermTokens
    require longTermTokens <= ext_call.return_data[0]
    require ext_code.size(disbursementAddress)
    call disbursementAddress.withdraw(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), ext_call.return_data[0] - longTermTokens
    require ext_call.success
}

function removeOwner(address arg1) {
    require stor0[address(msg.sender)]
    require owners.length > 1
    stor0[address(arg1)] = 0
    idx = 0
    while idx < owners.length - 1:
        mem[0] = 1
        if address(owners[idx].field_0) != arg1:
            idx = idx + 1
            continue 
        require 1 <= owners.length
        require owners.length - 1 < owners.length
        require idx < owners.length
        address(owners[idx].field_0) = address(owners[owners.length].field_0)
        require 1 <= owners.length
        owners.length--
        if not owners.length <= owners.length - 1:
            idx = sha3(1) + owners.length - 1
            while sha3(1) + owners.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        emit OwnerRemoval(arg1);
    require 1 <= owners.length
    owners.length--
    if not owners.length <= owners.length - 1:
        idx = owners.length - 1
        while owners.length > idx:
            owners[idx].field_0 = 0
            idx = idx + 1
            continue 
    emit OwnerRemoval(arg1);
}



}
