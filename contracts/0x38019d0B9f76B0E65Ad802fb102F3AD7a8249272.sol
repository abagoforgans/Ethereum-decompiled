contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 basisPointsRate;
uint256 minimumFee;
uint256 maximumFee;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function minimumFee() {
    return minimumFee
}

function decimals() {
    return decimals
}

function maximumFee() {
    return maximumFee
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function basisPointsRate() {
    return basisPointsRate
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    require calldata.size >= 68
    require arg2 > 0
    require balanceOf[stor0] > arg2
    require arg1 != msg.sender
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setParams(uint256 arg1, uint256 arg2, uint256 arg3) {
    require msg.sender == owner
    require arg1 <= 9
    require arg2 <= 100
    require arg3 <= 5
    basisPointsRate = arg1
    if not arg2:
        maximumFee = 0
    else:
        require arg2
        require arg2 * 10^decimals / arg2 == 10^decimals
        maximumFee = arg2 * 10^decimals
    if not arg3:
        minimumFee = 0
    else:
        require arg3
        require arg3 * 10^decimals / arg3 == 10^decimals
        minimumFee = arg3 * 10^decimals
    emit Params(basisPointsRate, maximumFee, minimumFee);
}

function decreaseSupply(uint256 arg1) {
    require msg.sender == owner
    require arg1 <= 10 * 10^6
    if not arg1:
        require totalSupply >= 0
        require balanceOf[stor0] >= 0
        require 0 <= totalSupply
        require 0 <= balanceOf[stor0]
        emit Redeem(0);
    else:
        require arg1
        require arg1 * 10^decimals / arg1 == 10^decimals
        require totalSupply >= arg1 * 10^decimals
        require balanceOf[stor0] >= arg1 * 10^decimals
        require arg1 * 10^decimals <= totalSupply
        totalSupply += -1 * arg1 * 10^decimals
        require arg1 * 10^decimals <= balanceOf[stor0]
        balanceOf[stor0] += -1 * arg1 * 10^decimals
        emit Redeem((arg1 * 10^decimals));
}

function increaseSupply(uint256 arg1) {
    require msg.sender == owner
    require arg1 <= 10 * 10^6
    if not arg1:
        require totalSupply >= totalSupply
        require totalSupply >= 0
        require totalSupply > totalSupply
        require balanceOf[stor0] >= balanceOf[stor0]
        require balanceOf[stor0] >= 0
        require balanceOf[stor0] > balanceOf[stor0]
        require balanceOf[stor0] >= balanceOf[stor0]
        require balanceOf[stor0] >= 0
        require totalSupply >= totalSupply
        require totalSupply >= 0
        emit Issue(0);
    else:
        require arg1
        require arg1 * 10^decimals / arg1 == 10^decimals
        require totalSupply + (arg1 * 10^decimals) >= totalSupply
        require totalSupply + (arg1 * 10^decimals) >= arg1 * 10^decimals
        require totalSupply + (arg1 * 10^decimals) > totalSupply
        require balanceOf[stor0] + (arg1 * 10^decimals) >= balanceOf[stor0]
        require balanceOf[stor0] + (arg1 * 10^decimals) >= arg1 * 10^decimals
        require balanceOf[stor0] + (arg1 * 10^decimals) > balanceOf[stor0]
        require balanceOf[stor0] + (arg1 * 10^decimals) >= balanceOf[stor0]
        require balanceOf[stor0] + (arg1 * 10^decimals) >= arg1 * 10^decimals
        balanceOf[stor0] += arg1 * 10^decimals
        require totalSupply + (arg1 * 10^decimals) >= totalSupply
        require totalSupply + (arg1 * 10^decimals) >= arg1 * 10^decimals
        totalSupply += arg1 * 10^decimals
        emit Issue((arg1 * 10^decimals));
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    if not arg2:
        require arg1
        require arg2 > 0
        require balanceOf[address(msg.sender)] > arg2
        require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
        require balanceOf[address(arg1)] + arg2 >= arg2
        require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
        if 0 <= maximumFee:
            if 0 >= minimumFee:
                require 0 <= arg2
                require arg2 <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] -= arg2
                require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
                require balanceOf[address(arg1)] + arg2 >= arg2
                balanceOf[address(arg1)] += arg2
            else:
                require minimumFee <= arg2
                require arg2 <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] -= arg2
                require balanceOf[address(arg1)] + arg2 - minimumFee >= balanceOf[address(arg1)]
                require balanceOf[address(arg1)] >= 0
                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - minimumFee
                if minimumFee > 0:
                    require balanceOf[stor0] + minimumFee >= balanceOf[stor0]
                    require balanceOf[stor0] + minimumFee >= minimumFee
                    balanceOf[stor0] += minimumFee
                    emit Transfer(minimumFee, msg.sender, owner);
        else:
            if maximumFee >= minimumFee:
                require maximumFee <= arg2
                require arg2 <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] -= arg2
                require balanceOf[address(arg1)] + arg2 - maximumFee >= balanceOf[address(arg1)]
                require balanceOf[address(arg1)] >= 0
                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - maximumFee
                if maximumFee > 0:
                    require balanceOf[stor0] + maximumFee >= balanceOf[stor0]
                    require balanceOf[stor0] + maximumFee >= maximumFee
                    balanceOf[stor0] += maximumFee
                    emit Transfer(maximumFee, msg.sender, owner);
            else:
                require minimumFee <= arg2
                require arg2 <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] -= arg2
                require balanceOf[address(arg1)] + arg2 - minimumFee >= balanceOf[address(arg1)]
                require balanceOf[address(arg1)] >= 0
                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - minimumFee
                if minimumFee > 0:
                    require balanceOf[stor0] + minimumFee >= balanceOf[stor0]
                    require balanceOf[stor0] + minimumFee >= minimumFee
                    balanceOf[stor0] += minimumFee
                    emit Transfer(minimumFee, msg.sender, owner);
    else:
        require arg2
        require arg2 * basisPointsRate / arg2 == basisPointsRate
        require arg1
        require arg2 > 0
        require balanceOf[address(msg.sender)] > arg2
        require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
        require balanceOf[address(arg1)] + arg2 >= arg2
        require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
        if arg2 * basisPointsRate / 1000 <= maximumFee:
            if arg2 * basisPointsRate / 1000 >= minimumFee:
                require arg2 * basisPointsRate / 1000 <= arg2
                require arg2 <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] -= arg2
                require balanceOf[address(arg1)] + arg2 - (arg2 * basisPointsRate / 1000) >= balanceOf[address(arg1)]
                require balanceOf[address(arg1)] >= 0
                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * basisPointsRate / 1000)
                if arg2 * basisPointsRate / 1000 > 0:
                    require balanceOf[stor0] + (arg2 * basisPointsRate / 1000) >= balanceOf[stor0]
                    require balanceOf[stor0] + (arg2 * basisPointsRate / 1000) >= arg2 * basisPointsRate / 1000
                    balanceOf[stor0] += arg2 * basisPointsRate / 1000
                    emit Transfer((arg2 * basisPointsRate / 1000), msg.sender, owner);
            else:
                require minimumFee <= arg2
                require arg2 <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] -= arg2
                require balanceOf[address(arg1)] + arg2 - minimumFee >= balanceOf[address(arg1)]
                require balanceOf[address(arg1)] >= 0
                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - minimumFee
                if minimumFee > 0:
                    require balanceOf[stor0] + minimumFee >= balanceOf[stor0]
                    require balanceOf[stor0] + minimumFee >= minimumFee
                    balanceOf[stor0] += minimumFee
                    emit Transfer(minimumFee, msg.sender, owner);
        else:
            if maximumFee >= minimumFee:
                require maximumFee <= arg2
                require arg2 <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] -= arg2
                require balanceOf[address(arg1)] + arg2 - maximumFee >= balanceOf[address(arg1)]
                require balanceOf[address(arg1)] >= 0
                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - maximumFee
                if maximumFee > 0:
                    require balanceOf[stor0] + maximumFee >= balanceOf[stor0]
                    require balanceOf[stor0] + maximumFee >= maximumFee
                    balanceOf[stor0] += maximumFee
                    emit Transfer(maximumFee, msg.sender, owner);
            else:
                require minimumFee <= arg2
                require arg2 <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] -= arg2
                require balanceOf[address(arg1)] + arg2 - minimumFee >= balanceOf[address(arg1)]
                require balanceOf[address(arg1)] >= 0
                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - minimumFee
                if minimumFee > 0:
                    require balanceOf[stor0] + minimumFee >= balanceOf[stor0]
                    require balanceOf[stor0] + minimumFee >= minimumFee
                    balanceOf[stor0] += minimumFee
                    emit Transfer(minimumFee, msg.sender, owner);
    emit Transfer(arg2, msg.sender, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 68
    if not arg3:
        require arg2
        require arg3 > 0
        require arg3 < balanceOf[address(arg1)]
        require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
        require balanceOf[address(arg2)] + arg3 >= arg3
        require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
        require arg3 <= allowance[address(arg1)][address(msg.sender)]
        if 0 <= maximumFee:
            if 0 >= minimumFee:
                require 0 <= arg3
                require arg3 <= balanceOf[address(arg1)]
                balanceOf[address(arg1)] -= arg3
                require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
                require balanceOf[address(arg2)] + arg3 >= arg3
                balanceOf[address(arg2)] += arg3
                require arg3 <= allowance[address(arg1)][address(msg.sender)]
                allowance[address(arg1)][address(msg.sender)] -= arg3
                emit Transfer(arg3, arg1, arg2);
            else:
                require minimumFee <= arg3
                require arg3 <= balanceOf[address(arg1)]
                balanceOf[address(arg1)] -= arg3
                require balanceOf[address(arg2)] + arg3 - minimumFee >= balanceOf[address(arg2)]
                require balanceOf[address(arg2)] >= 0
                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - minimumFee
                require arg3 <= allowance[address(arg1)][address(msg.sender)]
                allowance[address(arg1)][address(msg.sender)] -= arg3
                if minimumFee > 0:
                    require balanceOf[stor0] + minimumFee >= balanceOf[stor0]
                    require balanceOf[stor0] + minimumFee >= minimumFee
                    balanceOf[stor0] += minimumFee
                    emit Transfer(minimumFee, arg1, owner);
                emit Transfer((arg3 - minimumFee), arg1, arg2);
        else:
            if maximumFee >= minimumFee:
                require maximumFee <= arg3
                require arg3 <= balanceOf[address(arg1)]
                balanceOf[address(arg1)] -= arg3
                require balanceOf[address(arg2)] + arg3 - maximumFee >= balanceOf[address(arg2)]
                require balanceOf[address(arg2)] >= 0
                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - maximumFee
                require arg3 <= allowance[address(arg1)][address(msg.sender)]
                allowance[address(arg1)][address(msg.sender)] -= arg3
                if maximumFee > 0:
                    require balanceOf[stor0] + maximumFee >= balanceOf[stor0]
                    require balanceOf[stor0] + maximumFee >= maximumFee
                    balanceOf[stor0] += maximumFee
                    emit Transfer(maximumFee, arg1, owner);
                emit Transfer((arg3 - maximumFee), arg1, arg2);
            else:
                require minimumFee <= arg3
                require arg3 <= balanceOf[address(arg1)]
                balanceOf[address(arg1)] -= arg3
                require balanceOf[address(arg2)] + arg3 - minimumFee >= balanceOf[address(arg2)]
                require balanceOf[address(arg2)] >= 0
                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - minimumFee
                require arg3 <= allowance[address(arg1)][address(msg.sender)]
                allowance[address(arg1)][address(msg.sender)] -= arg3
                if minimumFee > 0:
                    require balanceOf[stor0] + minimumFee >= balanceOf[stor0]
                    require balanceOf[stor0] + minimumFee >= minimumFee
                    balanceOf[stor0] += minimumFee
                    emit Transfer(minimumFee, arg1, owner);
                emit Transfer((arg3 - minimumFee), arg1, arg2);
    else:
        require arg3
        require arg3 * basisPointsRate / arg3 == basisPointsRate
        require arg2
        require arg3 > 0
        require arg3 < balanceOf[address(arg1)]
        require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
        require balanceOf[address(arg2)] + arg3 >= arg3
        require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
        require arg3 <= allowance[address(arg1)][address(msg.sender)]
        if arg3 * basisPointsRate / 1000 <= maximumFee:
            if arg3 * basisPointsRate / 1000 >= minimumFee:
                require arg3 * basisPointsRate / 1000 <= arg3
                require arg3 <= balanceOf[address(arg1)]
                balanceOf[address(arg1)] -= arg3
                require balanceOf[address(arg2)] + arg3 - (arg3 * basisPointsRate / 1000) >= balanceOf[address(arg2)]
                require balanceOf[address(arg2)] >= 0
                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * basisPointsRate / 1000)
                require arg3 <= allowance[address(arg1)][address(msg.sender)]
                allowance[address(arg1)][address(msg.sender)] -= arg3
                if arg3 * basisPointsRate / 1000 > 0:
                    require balanceOf[stor0] + (arg3 * basisPointsRate / 1000) >= balanceOf[stor0]
                    require balanceOf[stor0] + (arg3 * basisPointsRate / 1000) >= arg3 * basisPointsRate / 1000
                    balanceOf[stor0] += arg3 * basisPointsRate / 1000
                    emit Transfer((arg3 * basisPointsRate / 1000), arg1, owner);
                emit Transfer((arg3 - (arg3 * basisPointsRate / 1000)), arg1, arg2);
            else:
                require minimumFee <= arg3
                require arg3 <= balanceOf[address(arg1)]
                balanceOf[address(arg1)] -= arg3
                require balanceOf[address(arg2)] + arg3 - minimumFee >= balanceOf[address(arg2)]
                require balanceOf[address(arg2)] >= 0
                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - minimumFee
                require arg3 <= allowance[address(arg1)][address(msg.sender)]
                allowance[address(arg1)][address(msg.sender)] -= arg3
                if minimumFee > 0:
                    require balanceOf[stor0] + minimumFee >= balanceOf[stor0]
                    require balanceOf[stor0] + minimumFee >= minimumFee
                    balanceOf[stor0] += minimumFee
                    emit Transfer(minimumFee, arg1, owner);
                emit Transfer((arg3 - minimumFee), arg1, arg2);
        else:
            if maximumFee >= minimumFee:
                require maximumFee <= arg3
                require arg3 <= balanceOf[address(arg1)]
                balanceOf[address(arg1)] -= arg3
                require balanceOf[address(arg2)] + arg3 - maximumFee >= balanceOf[address(arg2)]
                require balanceOf[address(arg2)] >= 0
                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - maximumFee
                require arg3 <= allowance[address(arg1)][address(msg.sender)]
                allowance[address(arg1)][address(msg.sender)] -= arg3
                if maximumFee > 0:
                    require balanceOf[stor0] + maximumFee >= balanceOf[stor0]
                    require balanceOf[stor0] + maximumFee >= maximumFee
                    balanceOf[stor0] += maximumFee
                    emit Transfer(maximumFee, arg1, owner);
                emit Transfer((arg3 - maximumFee), arg1, arg2);
            else:
                require minimumFee <= arg3
                require arg3 <= balanceOf[address(arg1)]
                balanceOf[address(arg1)] -= arg3
                require balanceOf[address(arg2)] + arg3 - minimumFee >= balanceOf[address(arg2)]
                require balanceOf[address(arg2)] >= 0
                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - minimumFee
                require arg3 <= allowance[address(arg1)][address(msg.sender)]
                allowance[address(arg1)][address(msg.sender)] -= arg3
                if minimumFee > 0:
                    require balanceOf[stor0] + minimumFee >= balanceOf[stor0]
                    require balanceOf[stor0] + minimumFee >= minimumFee
                    balanceOf[stor0] += minimumFee
                    emit Transfer(minimumFee, arg1, owner);
                emit Transfer((arg3 - minimumFee), arg1, arg2);
    return 1
}



}
