contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
uint256 stor2;
array of uint256 stor3;
uint8 stor4;
array of uint256 stor5;
array of uint256 stor6;
address stor7;
address stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor13;
uint8 stor14;
uint256 stor14; offset 8

function _fallback() payable {
    mem[128] = 'H1.0'
    bool(stor6.length) = 0
    stor6.length.field_1 = 4
    stor6.length.field_8 = 'H1.0' / 256
    idx = 0
    while stor6.length + 31 / 32 > idx:
        stor6[idx].field_0 = 0
        idx = idx + 1
        continue 
    uint8(stor14.field_0) = 0
    Mask(248, 0, stor14.field_8) = 0
    require not msg.value
    mem[160 len -6423] = code.data[7246 len -6423]
    stor3[] = Array(len=mem[mem[160] + 160], data=mem[mem[160] + 192 len mem[mem[160] + 160]])
    stor5[] = Array(len=mem[mem[192] + 160], data=mem[mem[192] + 192 len mem[mem[192] + 160]])
    stor4 = 18
    stor2 = mem[224] * 10^stor4
    stor7 = mem[268 len 20]
    stor8 = msg.sender
    stor0[stor7] = stor2
    stor9 = 10^18 * mem[288]
    stor10 = block.timestamp
    stor11 = block.timestamp + (60 * mem[320])
    stor13 = mem[352]
    return code.data[823 len 6423]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
uint8 decimals;
array of uint256 symbol;
array of uint256 version;
address beneficiaryAddress;
address creatorAddress;
uint256 fundingGoal;
uint256 starttime;
uint256 deadline;
uint256 amountRaised;
uint256 unitsOneEthCanBuy;
uint8 stor14;
uint8 stor14; offset 8
uint256 stor14; offset 8

function creator() {
    return creatorAddress
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function deadline() {
    return deadline
}

function decimals() {
    return decimals
}

function beneficiary() {
    return beneficiaryAddress
}

function version() {
    return version[0 len version.length]
}

function unitsOneEthCanBuy() {
    return unitsOneEthCanBuy
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function fundingGoal() {
    return fundingGoal
}

function amountRaised() {
    return amountRaised
}

function starttime() {
    return starttime
}

function symbol() {
    return symbol[0 len symbol.length]
}

function crowdsaleClosed() {
    return bool(uint8(stor14.field_8))
}

function fundingGoalReached() {
    return bool(uint8(stor14.field_0))
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function changeCreator(address arg1) {
    require msg.sender == creatorAddress
    creatorAddress = arg1
}

function updateBeneficiary(address arg1) {
    require msg.sender == creatorAddress
    beneficiaryAddress = arg1
}

function updateRate(uint256 arg1) {
    require msg.sender == creatorAddress
    require not uint8(stor14.field_8)
    unitsOneEthCanBuy = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function checkGoalReached() {
    if block.timestamp >= deadline:
        if amountRaised >= fundingGoal:
            uint8(stor14.field_0) = 1
            emit GoalReached(beneficiaryAddress, amountRaised);
        Mask(248, 0, stor14.field_8) = 1
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
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

function _fallback() payable {
    require not uint8(stor14.field_8)
    if block.timestamp - starttime <= deadline - starttime / 20:
        require balanceOf[stor7] >= 23 * msg.value * unitsOneEthCanBuy / 20
        amountRaised += msg.value
        balanceOf[stor7] += -23 * msg.value * unitsOneEthCanBuy / 20
        balanceOf[address(msg.sender)] += 23 * msg.value * unitsOneEthCanBuy / 20
        call beneficiaryAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit Transfer((23 * msg.value * unitsOneEthCanBuy / 20), beneficiaryAddress, msg.sender);
    else:
        if block.timestamp - starttime > 9 * deadline - starttime / 20:
            require balanceOf[stor7] >= msg.value * unitsOneEthCanBuy
            amountRaised += msg.value
            balanceOf[stor7] += -1 * msg.value * unitsOneEthCanBuy
            balanceOf[address(msg.sender)] += msg.value * unitsOneEthCanBuy
            call beneficiaryAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit Transfer((msg.value * unitsOneEthCanBuy), beneficiaryAddress, msg.sender);
        else:
            require balanceOf[stor7] >= 11 * msg.value * unitsOneEthCanBuy / 10
            amountRaised += msg.value
            balanceOf[stor7] += -11 * msg.value * unitsOneEthCanBuy / 10
            balanceOf[address(msg.sender)] += 11 * msg.value * unitsOneEthCanBuy / 10
            call beneficiaryAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit Transfer((11 * msg.value * unitsOneEthCanBuy / 10), beneficiaryAddress, msg.sender);
}



}
