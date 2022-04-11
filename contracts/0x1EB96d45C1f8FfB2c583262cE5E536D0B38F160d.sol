contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
mapping of uint256 stor2;
array of uint256 stor4;
uint8 stor5;
array of uint256 stor6;
array of uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor17;

function _fallback() payable {
    bool(stor7.length) = 0
    stor7.length.field_1 = 4
    stor7.length.field_8 = 'H0.1' / 256
    idx = 0
    while stor7.length + 31 / 32 > idx:
        stor7[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    stor0 = msg.sender
    stor2[address(msg.sender)] = 0
    stor1 = 0
    bool(stor4.length) = 0
    stor4.length.field_1 = 8
    stor4.length.field_8 = 'Aequitas' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor5 = 8
    bool(stor6.length) = 0
    stor6.length.field_1 = 3
    stor6.length.field_8 = 'AQT' / 256
    idx = 0
    while stor6.length + 31 / 32 > idx:
        stor6[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor7.length) = 0
    stor7.length.field_1 = 3
    stor7.length.field_8 = '0.1' / 256
    idx = 0
    while stor7.length + 31 / 32 > idx:
        stor7[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor8 = 0
    stor9 = 2
    stor10 = 210000
    stor11 = 600
    stor12 = 5 * 10^9
    stor13 = 5 * 10^9
    stor17 = block.timestamp
    return code.data[661 len 5048]
}



// =====================  Runtime code  =====================


address owner;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 name;
uint8 decimals;
array of uint256 symbol;
array of uint256 version;
uint256 simulatedBlockNumber;
uint256 rewardScarcityFactor;
uint256 rewardReductionRate;
uint256 blockInterval;
uint256 rewardValue;
uint256 initialReward;
mapping of struct pendingPayouts;
mapping of uint256 totalBlockContribution;
mapping of uint8 stor16;
uint256 timeOfLastBlock;

function name() {
    return name[0 len name.length]
}

function rewardValue() {
    return rewardValue
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function rewardScarcityFactor() {
    return rewardScarcityFactor
}

function version() {
    return version[0 len version.length]
}

function totalBlockContribution(uint256 arg1) {
    return totalBlockContribution[arg1]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function minedBlock(uint256 arg1) {
    return bool(stor16[arg1])
}

function pendingPayouts(address arg1) {
    return pendingPayouts[arg1].field_0, 
           pendingPayouts[arg1].field_256,
           pendingPayouts[arg1].field_512,
           pendingPayouts[arg1].field_768
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function initialReward() {
    return initialReward
}

function blockInterval() {
    return blockInterval
}

function rewardReductionRate() {
    return rewardReductionRate
}

function simulatedBlockNumber() {
    return simulatedBlockNumber
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function timeOfLastBlock() {
    return timeOfLastBlock
}

function _fallback() {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function withdrawEther() {
    require owner == msg.sender
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[arg1] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    mem[ceil32(arg3.length) + 128] = Mask(32, 224, sha3('receiveApproval(address,uint256,', 'address,bytes)'))
    mem[ceil32(arg3.length) + 228 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        call arg1 with:
           funct Mask(32, 224, sha3('receiveApproval(address,uint256,', 'address,bytes)')) >> 224
             gas gas_remaining - 25710 wei
            args msg.sender, arg2, address(this.address), Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 228] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 260 len arg3.length % 32]
        call arg1 with:
           funct Mask(32, 224, sha3('receiveApproval(address,uint256,', 'address,bytes)')) >> 224
             gas gas_remaining - 25710 wei
            args msg.sender, arg2, address(this.address), Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + 228 len floor32(arg3.length) + -ceil32(arg3.length) + 32]
    require ext_call.success
    return 1
}

function updateAccount() {
    if block.timestamp - timeOfLastBlock >= blockInterval:
        if 1 == bool(stor16[stor8]):
            timeOfLastBlock = block.timestamp
            simulatedBlockNumber++
            require rewardReductionRate
            require 2^(simulatedBlockNumber + 1 / rewardReductionRate)
            rewardValue = initialReward / 2^(simulatedBlockNumber + 1 / rewardReductionRate)
    if pendingPayouts[address(msg.sender)].field_0 == msg.sender:
        if pendingPayouts[address(msg.sender)].field_512 < simulatedBlockNumber:
            require totalBlockContribution[stor14[address(msg.sender)].field_512]
            pendingPayouts[address(msg.sender)].field_0 = 0
            pendingPayouts[address(msg.sender)].field_256 = 0
            pendingPayouts[address(msg.sender)].field_256 = 0
            pendingPayouts[address(msg.sender)].field_512 = 0
            pendingPayouts[address(msg.sender)].field_768 = 0
            totalSupply += pendingPayouts[address(msg.sender)].field_768 * pendingPayouts[address(msg.sender)].field_256 / totalBlockContribution[stor14[address(msg.sender)].field_512]
            balanceOf[address(msg.sender)] += pendingPayouts[address(msg.sender)].field_768 * pendingPayouts[address(msg.sender)].field_256 / totalBlockContribution[stor14[address(msg.sender)].field_512]
            emit Transfer((pendingPayouts[address(msg.sender)].field_768 * pendingPayouts[address(msg.sender)].field_256 / totalBlockContribution[stor14[address(msg.sender)].field_512]), 0, owner);
            emit Transfer((pendingPayouts[address(msg.sender)].field_768 * pendingPayouts[address(msg.sender)].field_256 / totalBlockContribution[stor14[address(msg.sender)].field_512]), owner, msg.sender);
}

function mine() payable {
    if block.timestamp - timeOfLastBlock >= blockInterval:
        if 1 == bool(stor16[stor8]):
            timeOfLastBlock = block.timestamp
            simulatedBlockNumber++
            require rewardReductionRate
            require 2^(simulatedBlockNumber + 1 / rewardReductionRate)
            rewardValue = initialReward / 2^(simulatedBlockNumber + 1 / rewardReductionRate)
    if pendingPayouts[address(msg.sender)].field_0 == msg.sender:
        if pendingPayouts[address(msg.sender)].field_512 < simulatedBlockNumber:
            require totalBlockContribution[stor14[address(msg.sender)].field_512]
            pendingPayouts[address(msg.sender)].field_0 = 0
            pendingPayouts[address(msg.sender)].field_256 = 0
            pendingPayouts[address(msg.sender)].field_256 = 0
            pendingPayouts[address(msg.sender)].field_512 = 0
            pendingPayouts[address(msg.sender)].field_768 = 0
            totalSupply += pendingPayouts[address(msg.sender)].field_768 * pendingPayouts[address(msg.sender)].field_256 / totalBlockContribution[stor14[address(msg.sender)].field_512]
            balanceOf[address(msg.sender)] += pendingPayouts[address(msg.sender)].field_768 * pendingPayouts[address(msg.sender)].field_256 / totalBlockContribution[stor14[address(msg.sender)].field_512]
            emit Transfer((pendingPayouts[address(msg.sender)].field_768 * pendingPayouts[address(msg.sender)].field_256 / totalBlockContribution[stor14[address(msg.sender)].field_512]), 0, owner);
            emit Transfer((pendingPayouts[address(msg.sender)].field_768 * pendingPayouts[address(msg.sender)].field_256 / totalBlockContribution[stor14[address(msg.sender)].field_512]), owner, msg.sender);
    require msg.value >= 5 * 10^16
    totalBlockContribution[stor8] += msg.value
    if pendingPayouts[address(msg.sender)].field_0 == msg.sender:
        require pendingPayouts[address(msg.sender)].field_512 == simulatedBlockNumber
        pendingPayouts[address(msg.sender)].field_768 += msg.value
    else:
        pendingPayouts[address(msg.sender)].field_0 = msg.sender
        pendingPayouts[address(msg.sender)].field_256 = rewardValue
        pendingPayouts[address(msg.sender)].field_512 = simulatedBlockNumber
        pendingPayouts[address(msg.sender)].field_768 += msg.value
        stor16[stor8] = 1
}



}
