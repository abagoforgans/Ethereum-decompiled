contract main {


// =======================  Init code  ======================


mapping of uint8 stor0;
array of address stor1;
address stor2;
uint256 stor7;
address stor9;
uint128 stor13; offset 160
address stor13;

function _fallback() payable {
    Mask(96, 0, stor13.field_160) = 0
    require not msg.value
    mem[96 len -9310] = code.data[10449 len -9310]
    mem[64] = -9214
    require mem[172 len 20]
    require mem[140 len 20]
    require mem[236 len 20]
    require mem[192]
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
    stor2 = mem[140 len 20]
    address(stor13.field_0) = mem[172 len 20]
    stor7 = mem[192]
    stor9 = mem[236 len 20]
    return code.data[1139 len 9310]
}



// =====================  Runtime code  =====================


const version = '1.0.0'


mapping of uint8 stor0;
array of struct owners;
address operatorAddress;
mapping of uint256 levBlocks;
mapping of uint256 stakes;
uint256 totalLevs;
uint256 totalLevBlocks;
uint256 weiPerFee;
uint256 feeForTheStakingInterval;
address levTokenAddress;
address feeTokenAddress;
uint256 startBlock;
uint256 endBlock;
uint8 stor13; offset 160
uint128 stor13; offset 160
address walletAddress;

function owners(uint256 arg1) {
    require arg1 < owners.length
    return address(owners[arg1].field_0)
}

function endBlock() {
    return endBlock
}

function stakes(address arg1) {
    return stakes[arg1]
}

function isOwner(address arg1) {
    return bool(stor0[arg1])
}

function totalLevBlocks() {
    return totalLevBlocks
}

function levBlocks(address arg1) {
    return levBlocks[arg1]
}

function startBlock() {
    return startBlock
}

function wallet() {
    return walletAddress
}

function operator() {
    return operatorAddress
}

function feeToken() {
    return feeTokenAddress
}

function feeForTheStakingInterval() {
    return feeForTheStakingInterval
}

function totalLevs() {
    return totalLevs
}

function feeCalculated() {
    return bool(uint8(stor13.field_160))
}

function levToken() {
    return levTokenAddress
}

function weiPerFee() {
    return weiPerFee
}

function _fallback() payable {
  stop
}

function setWallet(address arg1) {
    require arg1
    require stor0[address(msg.sender)]
    walletAddress = arg1
}

function setLevToken(address arg1) {
    require arg1
    require stor0[address(msg.sender)]
    levTokenAddress = arg1
}

function setFeeToken(address arg1) {
    require arg1
    require stor0[address(msg.sender)]
    feeTokenAddress = arg1
}

function setOperator(address arg1) {
    require stor0[address(msg.sender)]
    require arg1
    operatorAddress = arg1
}

function revertFeeCalculatedFlag(bool arg1) {
    require stor0[address(msg.sender)]
    require block.number >= endBlock
    Mask(96, 0, stor13.field_160) = Mask(96, 0, arg1)
}

function startNewStakingInterval(uint256 arg1, uint256 arg2) {
    require arg1
    require arg2
    require msg.sender == operatorAddress
    require block.number >= endBlock
    require not totalLevs
    startBlock = arg1
    endBlock = arg2
    totalLevBlocks = 0
    feeForTheStakingInterval = 0
    Mask(96, 0, stor13.field_160) = 0
    emit StakingInterval(arg1, arg2);
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

function updateFeeForCurrentStakingInterval() {
    require msg.sender == operatorAddress
    require block.number >= endBlock
    require not uint8(stor13.field_160)
    require ext_code.size(feeTokenAddress)
    call feeTokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require weiPerFee
    require ext_call.return_data[0] + (eth.balance(this.address) / weiPerFee) >= ext_call.return_data[0]
    require feeForTheStakingInterval + ext_call.return_data[0] + (eth.balance(this.address) / weiPerFee) >= feeForTheStakingInterval
    feeForTheStakingInterval = feeForTheStakingInterval + ext_call.return_data[0] + (eth.balance(this.address) / weiPerFee)
    Mask(96, 0, stor13.field_160) = 1
    emit FeeCalculated(feeForTheStakingInterval, 0, eth.balance(this.address), startBlock, endBlock);
    if ext_call.return_data[0] > 0:
        require ext_code.size(feeTokenAddress)
        call feeTokenAddress.0x6d1b229d with:
             gas gas_remaining - 710 wei
            args ext_call.return_data[0]
        require ext_call.success
    if eth.balance(this.address) > 0:
        call walletAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function redeemLevAndFeeByStaker() {
    require msg.sender
    require block.number >= endBlock
    require uint8(stor13.field_160)
    require totalLevBlocks > 0
    require stakes[address(msg.sender)] > 0
    if levBlocks[address(msg.sender)]:
        require levBlocks[address(msg.sender)]
        require levBlocks[address(msg.sender)] * feeForTheStakingInterval / levBlocks[address(msg.sender)] == feeForTheStakingInterval
    require totalLevBlocks
    stakes[address(msg.sender)] = 0
    levBlocks[address(msg.sender)] = 0
    require stakes[address(msg.sender)] <= totalLevs
    totalLevs -= stakes[address(msg.sender)]
    if levBlocks[address(msg.sender)] * feeForTheStakingInterval / totalLevBlocks > 0:
        require ext_code.size(feeTokenAddress)
        call feeTokenAddress.sendTokens(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args msg.sender, levBlocks[address(msg.sender)] * feeForTheStakingInterval / totalLevBlocks
        require ext_call.success
    require ext_code.size(levTokenAddress)
    call levTokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, stakes[address(msg.sender)]
    require ext_call.success
    require ext_call.return_data[0]
    emit RedeemEvent(stakes[address(msg.sender)], levBlocks[address(msg.sender)] * feeForTheStakingInterval / totalLevBlocks, startBlock, endBlock, msg.sender);
}

function stakeTokens(uint256 arg1) {
    require startBlock <= block.number
    require block.number < endBlock
    require arg1
    require ext_code.size(levTokenAddress)
    call levTokenAddress.0xdd62ed3e with:
         gas gas_remaining - 710 wei
        args msg.sender, this.address
    require ext_call.success
    require ext_call.return_data[0] >= arg1
    require block.number <= endBlock
    if arg1:
        require arg1
        require (endBlock * arg1) - (block.number * arg1) / arg1 == endBlock - block.number
    require levBlocks[address(msg.sender)] + (endBlock * arg1) - (block.number * arg1) >= levBlocks[address(msg.sender)]
    levBlocks[address(msg.sender)] = levBlocks[address(msg.sender)] + (endBlock * arg1) - (block.number * arg1)
    require stakes[address(msg.sender)] + arg1 >= stakes[address(msg.sender)]
    stakes[address(msg.sender)] += arg1
    require block.number <= endBlock
    if arg1:
        require arg1
        require (endBlock * arg1) - (block.number * arg1) / arg1 == endBlock - block.number
    require totalLevBlocks + (endBlock * arg1) - (block.number * arg1) >= totalLevBlocks
    totalLevBlocks = totalLevBlocks + (endBlock * arg1) - (block.number * arg1)
    require totalLevs + arg1 >= totalLevs
    totalLevs += arg1
    require ext_code.size(levTokenAddress)
    call levTokenAddress.0x23b872dd with:
         gas gas_remaining - 710 wei
        args msg.sender, address(this.address), arg1
    require ext_call.success
    require ext_call.return_data[0]
    emit StakeEvent(arg1, startBlock, endBlock, msg.sender);
}

function redeemLevAndFeeToStakers(address[] arg1) payable {
    mem[64] = 96
    require not msg.value
    require msg.sender == operatorAddress
    idx = 0
    while idx < arg1.length:
        require address(cd[((32 * idx) + arg1 + 36)])
        require block.number >= endBlock
        require uint8(stor13.field_160)
        require totalLevBlocks > 0
        require stakes[address(cd[((32 * idx) + arg1 + 36)])] > 0
        if levBlocks[address(cd[((32 * idx) + arg1 + 36)])]:
            require levBlocks[address(cd[((32 * idx) + arg1 + 36)])]
            require levBlocks[address(cd[((32 * idx) + arg1 + 36)])] * feeForTheStakingInterval / levBlocks[address(cd[((32 * idx) + arg1 + 36)])] == feeForTheStakingInterval
        require totalLevBlocks
        stakes[address(cd[((32 * idx) + arg1 + 36)])] = 0
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 3
        levBlocks[address(cd[((32 * idx) + arg1 + 36)])] = 0
        require stakes[address(cd[((32 * idx) + arg1 + 36)])] <= totalLevs
        totalLevs -= stakes[address(cd[((32 * idx) + arg1 + 36)])]
        if levBlocks[address(cd[((32 * idx) + arg1 + 36)])] * feeForTheStakingInterval / totalLevBlocks > 0:
            require ext_code.size(feeTokenAddress)
            call feeTokenAddress.sendTokens(address rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args address(cd[((32 * idx) + arg1 + 36)]), levBlocks[address(cd[((32 * idx) + arg1 + 36)])] * feeForTheStakingInterval / totalLevBlocks
            require ext_call.success
        require ext_code.size(levTokenAddress)
        call levTokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(cd[((32 * idx) + arg1 + 36)]), stakes[address(cd[((32 * idx) + arg1 + 36)])]
        require ext_call.success
        require ext_call.return_data[0]
        mem[mem[64]] = stakes[address(cd[((32 * idx) + arg1 + 36)])]
        mem[mem[64] + 32] = levBlocks[address(cd[((32 * idx) + arg1 + 36)])] * feeForTheStakingInterval / totalLevBlocks
        mem[mem[64] + 64] = startBlock
        mem[mem[64] + 96] = endBlock
        emit RedeemEvent(stakes[address(cd[((32 * idx) + arg1 + 36)])], levBlocks[address(cd[((32 * idx) + arg1 + 36)])] * feeForTheStakingInterval / totalLevBlocks, startBlock, endBlock, address(cd[((32 * idx) + arg1 + 36)]));
        idx = idx + 1
        continue 
}



}
