contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
address stor2;
uint256 stor2;
array of uint256 stor3;
array of uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint16 stor9;
uint256 stor10;
uint256 stor11;

function _fallback() payable {
    mem[96 len -2522] = code.data[3034 len -2522]
    mem[64] = -2426
    uint256(stor2) = mem[96]
    mem[0] = 3
    stor3.length = (2 * mem[mem[128] + 96]) + 1
    s = 0xc2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71f85b
    idx = mem[128] + 128
    while mem[128] + mem[mem[128] + 96] + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, mem[mem[128] + 96] + 31) >> 5) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5
    while (stor3.length + 31 / 32) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    stor4[] = Array(len=mem[mem[192] + 96], data=mem[mem[192] + 128 len mem[mem[192] + 96]])
    stor5 = mem[160]
    stor10 = mem[256]
    stor11 = mem[288]
    stor6 = mem[224]
    stor7 = mem[320]
    stor8 = mem[352]
    stor9 = 0
    stor0[address(stor2)] = mem[224]
    return code.data[512 len 2522]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 balanceOfFund;
address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 minFundedValue;
uint256 maxFundedValue;
uint8 isFundedMax;
uint8 isFundedMini; offset 8
uint256 closeTime;
uint256 startTime;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function balanceOfFund(address arg1) {
    return balanceOfFund[address(arg1)]
}

function decimals() {
    return decimals
}

function closeTime() {
    return closeTime
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function isFundedMini() {
    return bool(isFundedMini)
}

function minFundedValue() {
    return minFundedValue
}

function maxFundedValue() {
    return maxFundedValue
}

function isFundedMax() {
    return bool(isFundedMax)
}

function modifyCloseTime(uint256 arg1) {
    require msg.sender == owner
    closeTime = arg1
}

function modifyStartTime(uint256 arg1) {
    require msg.sender == owner
    startTime = arg1
}

function sendRewardBlockCDN(address arg1, uint256 arg2) {
    require msg.sender == owner
    require balanceOf[stor2] >= arg2
    balanceOf[address(arg1)] += arg2
    balanceOf[stor2] -= arg2 / 2
    totalSupply += arg2 / 2
    emit 0x56ddf252: arg2, owner, arg1
    return 1
}

function withDrawEth(uint256 arg1) {
    require block.timestamp > closeTime
    require isFundedMini
    require eth.balance(this.address) >= arg1
    require msg.sender == owner
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if ext_call.success:
        return 1
    else:
        return 0
}

function reFundByOther(address arg1) {
    balanceOfFund[address(arg1)] = 0
    require balanceOfFund[address(arg1)] > 0
    call arg1 with:
       value balanceOfFund[address(arg1)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    balanceOf[stor2] += balanceOf[address(arg1)]
    balanceOf[address(arg1)] = 0
    emit 0x56ddf252: 0, msg.sender, this.address
    return 1
}

function reFund() {
    balanceOfFund[address(msg.sender)] = 0
    require balanceOfFund[address(msg.sender)] > 0
    call msg.sender with:
       value balanceOfFund[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    balanceOf[stor2] += balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] = 0
    emit 0x56ddf252: 0, msg.sender, this.address
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg2 > 0
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    if block.timestamp >= closeTime:
        balanceOf[address(msg.sender)] -= arg2
        balanceOf[arg1] += arg2
    else:
        if arg1 == this.address:
            balanceOfFund[address(msg.sender)] -= arg2
            balanceOf[address(msg.sender)] -= arg2
            balanceOf[stor2] += arg2
            call msg.sender with:
               value arg2 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                return 0
    emit 0x56ddf252: arg2, msg.sender, arg1
    return 1
}

function buyBlockCDN() {
    if closeTime - (336 * 24 * 3600) > block.timestamp:
        balanceOf[address(msg.sender)] += msg.value
        if balanceOf[stor2] < msg.value:
            return 0
        balanceOf[stor2] -= msg.value
        if eth.balance(this.address) >= minFundedValue:
            isFundedMini = 1
        if eth.balance(this.address) >= maxFundedValue:
            isFundedMax = 1
        balanceOfFund[address(msg.sender)] += msg.value
        emit 0x56ddf252: msg.value, this.address, msg.sender
    else:
        idx = (block.timestamp + -closeTime + (336 * 24 * 3600) / 48 * 24 * 3600) + 1
        s = msg.value
        while idx > 0:
            idx = idx - 1
            s = 95 * s / 100
            continue 
        balanceOf[address(msg.sender)] += s
        if balanceOf[stor2] < s:
            return 0
        balanceOf[stor2] -= s
        if eth.balance(this.address) >= minFundedValue:
            isFundedMini = 1
        if eth.balance(this.address) >= maxFundedValue:
            isFundedMax = 1
        balanceOfFund[address(msg.sender)] += msg.value
        emit 0x56ddf252: s, this.address, msg.sender
    return 1
}

function _fallback() {
    if closeTime - (336 * 24 * 3600) > block.timestamp:
        balanceOf[address(msg.sender)] += msg.value
        if balanceOf[stor2] >= msg.value:
            balanceOf[stor2] -= msg.value
            if eth.balance(this.address) >= minFundedValue:
                isFundedMini = 1
            if eth.balance(this.address) >= maxFundedValue:
                isFundedMax = 1
            balanceOfFund[address(msg.sender)] += msg.value
            emit 0x56ddf252: msg.value, this.address, msg.sender
    else:
        idx = (block.timestamp + -closeTime + (336 * 24 * 3600) / 48 * 24 * 3600) + 1
        s = msg.value
        while idx > 0:
            idx = idx - 1
            s = 95 * s / 100
            continue 
        balanceOf[address(msg.sender)] += s
        if balanceOf[stor2] >= s:
            balanceOf[stor2] -= s
            if eth.balance(this.address) >= minFundedValue:
                isFundedMini = 1
            if eth.balance(this.address) >= maxFundedValue:
                isFundedMax = 1
            balanceOfFund[address(msg.sender)] += msg.value
            emit 0x56ddf252: s, this.address, msg.sender
}



}
