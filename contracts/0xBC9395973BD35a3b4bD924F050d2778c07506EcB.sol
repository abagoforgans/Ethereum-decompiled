contract main {


// =======================  Init code  ======================


mapping of uint256 stor1;
address stor3;
array of uint256 stor4;
array of uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
address stor11;
address stor12;
uint256 stor16;
uint256 stor17;
uint16 stor18;

function _fallback() payable {
    bool(stor4.length) = 0
    stor4.length.field_1 = 11
    stor4.length.field_8 = 'GREED TOKEN' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor5.length) = 0
    stor5.length.field_1 = 5
    stor5.length.field_8 = 'GREED' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor6 = 18
    stor7 = 1000 * 10^18
    stor8 = 3140000000 * 10^18
    stor9 = 1510398671
    stor10 = 2682061
    stor11 = 0xf34175829b0fc596814009df978c77b5cb47b24f
    stor12 = 0xfbadbf0a1296d2da94e59d76107c61581d393196
    stor18 = 0
    require not msg.value
    stor3 = msg.sender
    if stor8:
        require stor8
        require 10 * stor8 / stor8 == 10
    stor16 = 10 * stor8 / 100
    if stor8:
        require stor8
        require 90 * stor8 / stor8 == 90
    stor17 = 90 * stor8 / 100
    stor1[stor11] = stor16
    stor1[stor12] = stor17
    emit code.data[5386 len 32]: stor16, 0, stor11
    emit code.data[5386 len 32]: stor17, 0, stor12
    return code.data[830 len 4556]
}



// =====================  Runtime code  =====================


const EXCHANGE_RATE = 700


mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 bonusMultiplier;
uint256 totalSupply;
uint256 startTimestamp;
uint256 durationSeconds;
address icoWalletAddress;
address vestContractAddress;
uint256 totalRaised;
uint256 totalContributors;
uint256 totalTokensSold;
uint256 icoSupply;
uint256 vestSupply;
uint8 icoOpen;
uint8 icoFinished; offset 8
uint256 stor18; offset 8

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function vestSupply() {
    return vestSupply
}

function icoWallet() {
    return icoWalletAddress
}

function decimals() {
    return decimals
}

function icoFinished() {
    return bool(icoFinished)
}

function icoSupply() {
    return icoSupply
}

function totalTokensSold() {
    return totalTokensSold
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function icoOpen() {
    return bool(icoOpen)
}

function symbol() {
    return symbol[0 len symbol.length]
}

function durationSeconds() {
    return durationSeconds
}

function bonusMultiplier() {
    return bonusMultiplier
}

function vestContract() {
    return vestContractAddress
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

function totalContributors() {
    return totalContributors
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require arg2 + allowance[address(msg.sender)][address(arg1)] >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function endICO() {
    require block.timestamp >= startTimestamp
    if bool(icoFinished) != 1:
        if totalTokensSold < icoSupply:
            require block.timestamp >= startTimestamp + durationSeconds
    if not icoFinished:
        icoOpen = 0
        icoFinished = 1
        stor18 = 0
    require owner == msg.sender
    require balanceOf[stor11] + balanceOf[stor12] >= balanceOf[stor12]
    balanceOf[stor12] += balanceOf[stor11]
    require balanceOf[stor11] + vestSupply >= vestSupply
    vestSupply += balanceOf[stor11]
    balanceOf[stor11] = 0
    emit Transfer(balanceOf[stor11], icoWalletAddress, vestContractAddress);
}

function transfer(address arg1, uint256 arg2) {
    require block.timestamp >= startTimestamp
    if bool(icoFinished) != 1:
        if totalTokensSold < icoSupply:
            require block.timestamp >= startTimestamp + durationSeconds
    if not icoFinished:
        icoOpen = 0
        icoFinished = 1
        stor18 = 0
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require block.timestamp >= startTimestamp
    if bool(icoFinished) != 1:
        if totalTokensSold < icoSupply:
            require block.timestamp >= startTimestamp + durationSeconds
    if not icoFinished:
        icoOpen = 0
        icoFinished = 1
        stor18 = 0
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require not icoFinished
    require block.timestamp >= startTimestamp
    require block.timestamp <= startTimestamp + durationSeconds
    require totalTokensSold < icoSupply
    if not icoOpen:
        if not icoFinished:
            icoOpen = 1
    require msg.value > 0
    if msg.value:
        require msg.value
        require 700 * msg.value / msg.value == 700
    if msg.value < 5 * 10^16:
        if 700 * msg.value <= balanceOf[stor11]:
            call icoWalletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require msg.value + totalRaised >= totalRaised
            totalRaised += msg.value
            require totalContributors + 1 >= totalContributors
            totalContributors++
            require (700 * msg.value) + totalTokensSold >= totalTokensSold
            totalTokensSold += 700 * msg.value
            require 700 * msg.value <= balanceOf[stor11]
            balanceOf[stor11] += -700 * msg.value
            require (700 * msg.value) + balanceOf[msg.sender] >= balanceOf[msg.sender]
            balanceOf[address(msg.sender)] = (700 * msg.value) + balanceOf[msg.sender]
            emit Transfer((700 * msg.value), icoWalletAddress, msg.sender);
            require msg.value <= msg.value
        else:
            icoOpen = 0
            icoFinished = 1
            stor18 = 0
            call icoWalletAddress with:
               value balanceOf[stor11] / 700 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require (balanceOf[stor11] / 700) + totalRaised >= totalRaised
            totalRaised += balanceOf[stor11] / 700
            require totalContributors + 1 >= totalContributors
            totalContributors++
            require balanceOf[stor11] + totalTokensSold >= totalTokensSold
            totalTokensSold += balanceOf[stor11]
            require balanceOf[stor11] <= balanceOf[stor11]
            balanceOf[stor11] = 0
            require balanceOf[stor11] + balanceOf[msg.sender] >= balanceOf[msg.sender]
            balanceOf[address(msg.sender)] = balanceOf[stor11] + balanceOf[msg.sender]
            emit Transfer(balanceOf[stor11], icoWalletAddress, msg.sender);
            require balanceOf[stor11] / 700 <= msg.value
            if msg.value - (balanceOf[stor11] / 700) > 0:
                call msg.sender with:
                   value msg.value - (balanceOf[stor11] / 700) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
    else:
        if 700 * msg.value:
            require 700 * msg.value
            require 700 * bonusMultiplier * msg.value / 700 * msg.value == bonusMultiplier
        if 700 * bonusMultiplier * msg.value / 10^18 <= balanceOf[stor11]:
            call icoWalletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require msg.value + totalRaised >= totalRaised
            totalRaised += msg.value
            require totalContributors + 1 >= totalContributors
            totalContributors++
            require (700 * bonusMultiplier * msg.value / 10^18) + totalTokensSold >= totalTokensSold
            totalTokensSold += 700 * bonusMultiplier * msg.value / 10^18
            require 700 * bonusMultiplier * msg.value / 10^18 <= balanceOf[stor11]
            balanceOf[stor11] -= 700 * bonusMultiplier * msg.value / 10^18
            require (700 * bonusMultiplier * msg.value / 10^18) + balanceOf[msg.sender] >= balanceOf[msg.sender]
            balanceOf[address(msg.sender)] = (700 * bonusMultiplier * msg.value / 10^18) + balanceOf[msg.sender]
            emit Transfer((700 * bonusMultiplier * msg.value / 10^18), icoWalletAddress, msg.sender);
            require msg.value <= msg.value
        else:
            if balanceOf[stor11]:
                require balanceOf[stor11]
                require 10^18 * balanceOf[stor11] / balanceOf[stor11] == 10^18
            require bonusMultiplier
            icoOpen = 0
            icoFinished = 1
            stor18 = 0
            call icoWalletAddress with:
               value 10^18 * balanceOf[stor11] / bonusMultiplier / 700 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require (10^18 * balanceOf[stor11] / bonusMultiplier / 700) + totalRaised >= totalRaised
            totalRaised += 10^18 * balanceOf[stor11] / bonusMultiplier / 700
            require totalContributors + 1 >= totalContributors
            totalContributors++
            require balanceOf[stor11] + totalTokensSold >= totalTokensSold
            totalTokensSold += balanceOf[stor11]
            require balanceOf[stor11] <= balanceOf[stor11]
            balanceOf[stor11] = 0
            require balanceOf[stor11] + balanceOf[msg.sender] >= balanceOf[msg.sender]
            balanceOf[address(msg.sender)] = balanceOf[stor11] + balanceOf[msg.sender]
            emit Transfer(balanceOf[stor11], icoWalletAddress, msg.sender);
            require 10^18 * balanceOf[stor11] / bonusMultiplier / 700 <= msg.value
            if msg.value - (10^18 * balanceOf[stor11] / bonusMultiplier / 700) > 0:
                call msg.sender with:
                   value msg.value - (10^18 * balanceOf[stor11] / bonusMultiplier / 700) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
    require totalRaised <= 1000 * 10^decimals
    bonusMultiplier = (1000 * 10^decimals) - totalRaised
    if (1000 * 10^decimals) - totalRaised < 10^18:
        icoOpen = 0
        icoFinished = 1
        stor18 = 0
}



}
