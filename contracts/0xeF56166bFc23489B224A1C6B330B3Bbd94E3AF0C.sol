contract main {




// =====================  Runtime code  =====================


address owner;
address newOwner;
array of uint256 symbol;
array of uint256 name;
uint8 decimals;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 rate;
uint256 weiRaised;
uint256 bonusPercentage;
uint8 stor14;
uint8 stor14; offset 8
uint256 stor14; offset 8

function name() {
    return name[0 len name.length]
}

function rate() {
    return rate
}

function decimals() {
    return decimals
}

function weiRaised() {
    return weiRaised
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function bonusCompaignOpen() {
    return bool(uint8(stor14.field_8))
}

function bonusPercentage() {
    return bonusPercentage
}

function owner() {
    return owner
}

function icoOpen() {
    return bool(uint8(stor14.field_0))
}

function symbol() {
    return symbol[0 len symbol.length]
}

function newOwner() {
    return newOwner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function totalSupply() {
    return (20044 * 10^6 * 10^decimals)
}

function stopBonusCompaign() {
    require msg.sender == owner
    Mask(248, 0, stor14.field_8) = 0
}

function stopICO() {
    require msg.sender == owner
    require uint8(stor14.field_0)
    uint8(stor14.field_0) = 0
}

function startICO() {
    require msg.sender == owner
    require not uint8(stor14.field_0)
    uint8(stor14.field_0) = 1
}

function startBonusCompaign(uint256 arg1) {
    require msg.sender == owner
    Mask(248, 0, stor14.field_8) = 1
    bonusPercentage = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require balanceOf[address(arg1)] >= arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function buyTokens(address arg1) payable {
    require uint8(stor14.field_0)
    require arg1
    require msg.value
    require msg.value
    require msg.value * rate / msg.value == rate
    if not uint8(stor14.field_8):
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require arg1
        require balanceOf[address(this.address)] >= msg.value * rate
        require balanceOf[address(arg1)] + (msg.value * rate) >= balanceOf[address(arg1)]
        require msg.value * rate <= balanceOf[address(this.address)]
        balanceOf[address(this.address)] += -1 * msg.value * rate
        require balanceOf[address(arg1)] + (msg.value * rate) >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += msg.value * rate
        emit Transfer((msg.value * rate), this.address, arg1);
        emit TokenPurchase(msg.value, msg.value * rate, this.address, arg1);
    else:
        if bonusPercentage:
            require bonusPercentage
            require 100 * bonusPercentage / bonusPercentage == 100
        if msg.value * rate:
            require msg.value * rate
            require 100 * msg.value * rate * bonusPercentage / msg.value * rate == 100 * bonusPercentage
        require (msg.value * rate) + (100 * msg.value * rate * bonusPercentage / 10000) >= msg.value * rate
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require arg1
        require balanceOf[address(this.address)] >= (msg.value * rate) + (100 * msg.value * rate * bonusPercentage / 10000)
        require balanceOf[address(arg1)] + (msg.value * rate) + (100 * msg.value * rate * bonusPercentage / 10000) >= balanceOf[address(arg1)]
        require (msg.value * rate) + (100 * msg.value * rate * bonusPercentage / 10000) <= balanceOf[address(this.address)]
        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (msg.value * rate) - (100 * msg.value * rate * bonusPercentage / 10000)
        require balanceOf[address(arg1)] + (msg.value * rate) + (100 * msg.value * rate * bonusPercentage / 10000) >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (msg.value * rate) + (100 * msg.value * rate * bonusPercentage / 10000)
        emit Transfer(((msg.value * rate) + (100 * msg.value * rate * bonusPercentage / 10000)), this.address, arg1);
        emit TokenPurchase(msg.value, (msg.value * rate) + (100 * msg.value * rate * bonusPercentage / 10000), this.address, arg1);
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    require uint8(stor14.field_0)
    require msg.sender
    require msg.value
    require msg.value
    require msg.value * rate / msg.value == rate
    if not uint8(stor14.field_8):
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require msg.sender
        require balanceOf[address(this.address)] >= msg.value * rate
        require balanceOf[address(msg.sender)] + (msg.value * rate) >= balanceOf[address(msg.sender)]
        require msg.value * rate <= balanceOf[address(this.address)]
        balanceOf[address(this.address)] += -1 * msg.value * rate
        require balanceOf[address(msg.sender)] + (msg.value * rate) >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += msg.value * rate
        emit Transfer((msg.value * rate), this.address, msg.sender);
        emit TokenPurchase(msg.value, msg.value * rate, this.address, msg.sender);
    else:
        if bonusPercentage:
            require bonusPercentage
            require 100 * bonusPercentage / bonusPercentage == 100
        if msg.value * rate:
            require msg.value * rate
            require 100 * msg.value * rate * bonusPercentage / msg.value * rate == 100 * bonusPercentage
        require (msg.value * rate) + (100 * msg.value * rate * bonusPercentage / 10000) >= msg.value * rate
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require msg.sender
        require balanceOf[address(this.address)] >= (msg.value * rate) + (100 * msg.value * rate * bonusPercentage / 10000)
        require balanceOf[address(msg.sender)] + (msg.value * rate) + (100 * msg.value * rate * bonusPercentage / 10000) >= balanceOf[address(msg.sender)]
        require (msg.value * rate) + (100 * msg.value * rate * bonusPercentage / 10000) <= balanceOf[address(this.address)]
        balanceOf[address(this.address)] = balanceOf[address(this.address)] - (msg.value * rate) - (100 * msg.value * rate * bonusPercentage / 10000)
        require balanceOf[address(msg.sender)] + (msg.value * rate) + (100 * msg.value * rate * bonusPercentage / 10000) >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate) + (100 * msg.value * rate * bonusPercentage / 10000)
        emit Transfer(((msg.value * rate) + (100 * msg.value * rate * bonusPercentage / 10000)), this.address, msg.sender);
        emit TokenPurchase(msg.value, (msg.value * rate) + (100 * msg.value * rate * bonusPercentage / 10000), this.address, msg.sender);
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
