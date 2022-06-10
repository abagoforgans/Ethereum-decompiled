contract main {




// =====================  Runtime code  =====================


const decimals = 18


array of uint256 name;
array of uint256 symbol;
uint256 initialRate;
uint256 minRate;
uint256 sub_70cdaa1d;
uint256 stor5;
uint256 k;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function minRate() {
    return minRate
}

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function sub_70cdaa1d(?) {
    return sub_70cdaa1d
}

function symbol() {
    return symbol[0 len symbol.length]
}

function initialRate() {
    return initialRate
}

function k() {
    return uint256(k)
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function approve(address arg1, uint256 arg2) {
    require arg2 > 0
    allowance[msg.sender][address(arg1)] = arg2
    return 1
}

function sub_60b48ee9(?) {
    require uint256(k) > 0
    require uint256(k)
    require eth.balance(this.address) == (uint256(k) * eth.balance(this.address) / uint256(k)) + (eth.balance(this.address) % uint256(k))
    require eth.balance(this.address) / uint256(k) <= initialRate
    return (initialRate - (eth.balance(this.address) / uint256(k)))
}

function sub_9617b4a6(?) {
    if initialRate:
        require initialRate
        require arg1 * initialRate / initialRate == arg1
    if arg1:
        require arg1
        require arg1 * arg1 / arg1 == arg1
    require uint255(stor5) == uint256(k)
    require 2 * uint256(k) > 0
    require 2 * uint256(k)
    require arg1 * arg1 == (2 * uint256(k) * arg1 * arg1 / 2 * uint256(k)) + (arg1 * arg1 % 2 * uint256(k))
    require arg1 * arg1 / 2 * uint256(k) <= arg1 * initialRate
    return ((arg1 * initialRate) - (arg1 * arg1 / 2 * uint256(k)))
}

function sub_29840b1f(?) {
    if initialRate:
        require initialRate
        require uint256(k) * initialRate / initialRate == uint256(k)
    if uint256(k) * initialRate:
        require uint256(k) * initialRate
        require uint256(k) * initialRate * uint256(k) * initialRate / uint256(k) * initialRate == uint256(k) * initialRate
    if uint256(k):
        require uint256(k)
        require arg1 * uint256(k) / uint256(k) == arg1
    require uint255(arg1 * uint256(k)) == arg1 * uint256(k)
    require 2 * arg1 * uint256(k) <= uint256(k) * initialRate * uint256(k) * initialRate
    s = (uint256(k) * initialRate * uint256(k) * initialRate) + -(2 * arg1 * uint256(k)) + 1 / 2
    t = (uint256(k) * initialRate * uint256(k) * initialRate) - (2 * arg1 * uint256(k))
    while s < t:
        require s
        s = ((uint256(k) * initialRate * uint256(k) * initialRate) - (2 * arg1 * uint256(k)) / s) + s / 2
        t = s
        continue 
    if t:
        require t
        require t * t / t == t
    require t * t <= (uint256(k) * initialRate * uint256(k) * initialRate) - (2 * arg1 * uint256(k))
    if initialRate:
        require initialRate
        require uint256(k) * initialRate / initialRate == uint256(k)
    require t <= uint256(k) * initialRate
    return ((uint256(k) * initialRate) - t)
}

function _fallback() payable {
    require eth.balance(this.address) <= sub_70cdaa1d
    if initialRate:
        require initialRate
        require eth.balance(this.address) * initialRate / initialRate == eth.balance(this.address)
    if eth.balance(this.address):
        require eth.balance(this.address)
        require eth.balance(this.address) * eth.balance(this.address) / eth.balance(this.address) == eth.balance(this.address)
    require uint255(stor5) == uint256(k)
    require 2 * uint256(k) > 0
    require 2 * uint256(k)
    require eth.balance(this.address) * eth.balance(this.address) == (2 * uint256(k) * eth.balance(this.address) * eth.balance(this.address) / 2 * uint256(k)) + (eth.balance(this.address) * eth.balance(this.address) % 2 * uint256(k))
    require eth.balance(this.address) * eth.balance(this.address) / 2 * uint256(k) <= eth.balance(this.address) * initialRate
    require totalSupply <= (eth.balance(this.address) * initialRate) - (eth.balance(this.address) * eth.balance(this.address) / 2 * uint256(k))
    totalSupply = (eth.balance(this.address) * initialRate) - (eth.balance(this.address) * eth.balance(this.address) / 2 * uint256(k))
    require (eth.balance(this.address) * initialRate) - (eth.balance(this.address) * eth.balance(this.address) / 2 * uint256(k)) - totalSupply + balanceOf[msg.sender] >= balanceOf[msg.sender]
    require balanceOf[msg.sender] >= 0
    balanceOf[msg.sender] = (eth.balance(this.address) * initialRate) - (eth.balance(this.address) * eth.balance(this.address) / 2 * uint256(k)) - totalSupply + balanceOf[msg.sender]
    emit Exchange(((eth.balance(this.address) * initialRate) - (eth.balance(this.address) * eth.balance(this.address) / 2 * uint256(k)) - totalSupply), msg.sender);
    emit Transfer(((eth.balance(this.address) * initialRate) - (eth.balance(this.address) * eth.balance(this.address) / 2 * uint256(k)) - totalSupply), 0, msg.sender);
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 > 0
    require arg2 <= balanceOf[msg.sender]
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    if arg1 != this.address:
        require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        require arg2 + balanceOf[address(arg1)] >= arg2
        balanceOf[address(arg1)] += arg2
    else:
        require arg2 <= totalSupply
        require totalSupply - arg2 >= 0
        if initialRate:
            require initialRate
            require uint256(k) * initialRate / initialRate == uint256(k)
        if uint256(k) * initialRate:
            require uint256(k) * initialRate
            require uint256(k) * initialRate * uint256(k) * initialRate / uint256(k) * initialRate == uint256(k) * initialRate
        if uint256(k):
            require uint256(k)
            require (totalSupply * uint256(k)) - (arg2 * uint256(k)) / uint256(k) == totalSupply - arg2
        require uint255((totalSupply * uint256(k)) - (arg2 * uint256(k))) == (totalSupply * uint256(k)) - (arg2 * uint256(k))
        require 2 * (totalSupply * uint256(k)) - (arg2 * uint256(k)) <= uint256(k) * initialRate * uint256(k) * initialRate
        s = (uint256(k) * initialRate * uint256(k) * initialRate) + -(2 * (totalSupply * uint256(k)) - (arg2 * uint256(k))) + 1 / 2
        t = (uint256(k) * initialRate * uint256(k) * initialRate) - (2 * (totalSupply * uint256(k)) - (arg2 * uint256(k)))
        while s < t:
            require s
            s = ((uint256(k) * initialRate * uint256(k) * initialRate) - (2 * (totalSupply * uint256(k)) - (arg2 * uint256(k))) / s) + s / 2
            t = s
            continue 
        if t:
            require t
            require t * t / t == t
        require t * t <= (uint256(k) * initialRate * uint256(k) * initialRate) - (2 * (totalSupply * uint256(k)) - (arg2 * uint256(k)))
        if initialRate:
            require initialRate
            require uint256(k) * initialRate / initialRate == uint256(k)
        require t <= uint256(k) * initialRate
        require (uint256(k) * initialRate) - t <= eth.balance(this.address)
        call msg.sender with:
           value eth.balance(this.address) - (uint256(k) * initialRate) + t wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        totalSupply -= arg2
        emit Redeem((eth.balance(this.address) - (uint256(k) * initialRate) + t), msg.sender);
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 > 0
    require arg3 <= balanceOf[address(arg1)]
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    if arg2 != this.address:
        require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
        require arg3 + balanceOf[address(arg2)] >= arg3
        balanceOf[address(arg2)] += arg3
    else:
        require arg3 <= totalSupply
        require totalSupply - arg3 >= 0
        if initialRate:
            require initialRate
            require uint256(k) * initialRate / initialRate == uint256(k)
        if uint256(k) * initialRate:
            require uint256(k) * initialRate
            require uint256(k) * initialRate * uint256(k) * initialRate / uint256(k) * initialRate == uint256(k) * initialRate
        if uint256(k):
            require uint256(k)
            require (totalSupply * uint256(k)) - (arg3 * uint256(k)) / uint256(k) == totalSupply - arg3
        require uint255((totalSupply * uint256(k)) - (arg3 * uint256(k))) == (totalSupply * uint256(k)) - (arg3 * uint256(k))
        require 2 * (totalSupply * uint256(k)) - (arg3 * uint256(k)) <= uint256(k) * initialRate * uint256(k) * initialRate
        s = (uint256(k) * initialRate * uint256(k) * initialRate) + -(2 * (totalSupply * uint256(k)) - (arg3 * uint256(k))) + 1 / 2
        t = (uint256(k) * initialRate * uint256(k) * initialRate) - (2 * (totalSupply * uint256(k)) - (arg3 * uint256(k)))
        while s < t:
            require s
            s = ((uint256(k) * initialRate * uint256(k) * initialRate) - (2 * (totalSupply * uint256(k)) - (arg3 * uint256(k))) / s) + s / 2
            t = s
            continue 
        if t:
            require t
            require t * t / t == t
        require t * t <= (uint256(k) * initialRate * uint256(k) * initialRate) - (2 * (totalSupply * uint256(k)) - (arg3 * uint256(k)))
        if initialRate:
            require initialRate
            require uint256(k) * initialRate / initialRate == uint256(k)
        require t <= uint256(k) * initialRate
        require (uint256(k) * initialRate) - t <= eth.balance(this.address)
        call msg.sender with:
           value eth.balance(this.address) - (uint256(k) * initialRate) + t wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        totalSupply -= arg3
        emit Redeem((eth.balance(this.address) - (uint256(k) * initialRate) + t), msg.sender);
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
