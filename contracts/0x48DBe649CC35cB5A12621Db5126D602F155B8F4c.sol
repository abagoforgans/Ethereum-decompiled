contract main {


// =======================  Init code  ======================


mapping of uint256 stor1;
array of uint256 stor3;
array of uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
address stor14;

function _fallback() payable {
    bool(stor3.length) = 0
    stor3.length.field_1 = 15
    stor3.length.field_8 = 'Concierge Token' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor4.length) = 0
    stor4.length.field_1 = 3
    stor4.length.field_8 = 'CGE' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor5 = 18
    stor6 = 100000000 * 10^18
    stor9 = 672 * 24 * 3600
    stor10 = 7500000 * 10^18
    stor11 = 20000000 * 10^18
    stor12 = 10^17
    stor13 = 500 * 10^18
    require not msg.value
    stor14 = code.data[3769 len 20]
    stor8 = code.data[3789 len 32]
    stor1[code.data[3769 len 20]] = stor6
    emit Transfer(stor6, 0, stor14);
    return code.data[571 len 3186]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 totalSupply;
uint256 totalRaised;
uint256 startTimestamp;
uint256 durationSeconds;
uint256 minCap;
uint256 maxCap;
uint256 sub_429d60e1;
uint256 sub_7d3e00d4;
address fundsWalletAddress;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function fundsWallet() {
    return fundsWalletAddress
}

function maxCap() {
    return maxCap
}

function decimals() {
    return decimals
}

function minCap() {
    return minCap
}

function sub_429d60e1(?) {
    return sub_429d60e1
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function sub_7d3e00d4(?) {
    return sub_7d3e00d4
}

function symbol() {
    return symbol[0 len symbol.length]
}

function durationSeconds() {
    return durationSeconds
}

function totalRaised() {
    return totalRaised
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function startTimestamp() {
    return startTimestamp
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require block.timestamp >= startTimestamp
    if totalRaised < maxCap:
        require block.timestamp >= startTimestamp + durationSeconds
        require totalRaised >= minCap
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require block.timestamp >= startTimestamp
    if totalRaised < maxCap:
        require block.timestamp >= startTimestamp + durationSeconds
        require totalRaised >= minCap
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function calculateTokenAmount(uint256 arg1) {
    require 10^decimals
    if totalRaised / 10^decimals > 14 * 10^6:
        if not arg1:
            return (1000 * arg1 / 1666)
        if arg1:
            if 1000 * arg1 / arg1 == 1000:
                return (1000 * arg1 / 1666)
    else:
        if totalRaised / 10^decimals <= 7500000:
            if not arg1:
                return (1000 * arg1 / 133)
            if arg1:
                if 1000 * arg1 / arg1 == 1000:
                    return (1000 * arg1 / 133)
        else:
            if not arg1:
                return (1000 * arg1 / 153)
            if arg1:
                if 1000 * arg1 / arg1 == 1000:
                    return (1000 * arg1 / 153)
    revert
}

function _fallback() payable {
    require block.timestamp >= startTimestamp
    if block.timestamp > startTimestamp + durationSeconds:
        require totalRaised < minCap
    require totalRaised <= maxCap
    require msg.value >= sub_429d60e1
    require msg.value <= sub_7d3e00d4
    require msg.value + totalRaised >= totalRaised
    totalRaised += msg.value
    require 10^decimals
    if msg.value:
        require msg.value
        require 1000 * msg.value / msg.value == 1000
    if totalRaised / 10^decimals > 14 * 10^6:
        require 1000 * msg.value / 1666 <= balanceOf[stor14]
        balanceOf[stor14] -= 1000 * msg.value / 1666
        require (1000 * msg.value / 1666) + balanceOf[msg.sender] >= balanceOf[msg.sender]
        balanceOf[address(msg.sender)] = (1000 * msg.value / 1666) + balanceOf[msg.sender]
        emit Transfer((1000 * msg.value / 1666), fundsWalletAddress, msg.sender);
    else:
        if totalRaised / 10^decimals <= 7500000:
            require 1000 * msg.value / 133 <= balanceOf[stor14]
            balanceOf[stor14] -= 1000 * msg.value / 133
            require (1000 * msg.value / 133) + balanceOf[msg.sender] >= balanceOf[msg.sender]
            balanceOf[address(msg.sender)] = (1000 * msg.value / 133) + balanceOf[msg.sender]
            emit Transfer((1000 * msg.value / 133), fundsWalletAddress, msg.sender);
        else:
            require 1000 * msg.value / 153 <= balanceOf[stor14]
            balanceOf[stor14] -= 1000 * msg.value / 153
            require (1000 * msg.value / 153) + balanceOf[msg.sender] >= balanceOf[msg.sender]
            balanceOf[address(msg.sender)] = (1000 * msg.value / 153) + balanceOf[msg.sender]
            emit Transfer((1000 * msg.value / 153), fundsWalletAddress, msg.sender);
    call fundsWalletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
