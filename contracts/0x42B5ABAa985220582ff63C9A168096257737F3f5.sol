contract main {




// =====================  Runtime code  =====================


address owner;
address newOwner;
array of uint256 symbol;
array of uint256 name;
uint8 decimals;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint256 stor8;
array of address stor9;
array of address stor10;
uint256 rate;
uint256 weiRaised;
uint256 stor16;
uint256 openingTime;
uint256 closingTime;

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

function closingTime() {
    return closingTime
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

function openingTime() {
    return openingTime
}

function newOwner() {
    return newOwner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function totalSupply() {
    return (2 * 10^9 * 10^decimals)
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function isItOpen() {
    if block.timestamp <= openingTime:
        return 'SALE CLOSE'
    if block.timestamp >= closingTime:
        return 'SALE CLOSE'
    return 'SALE OPEN'
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
    if block.timestamp < openingTime:
        revert with 0, 'Sale open'
    if block.timestamp > closingTime:
        revert with 0, 'Sale open'
    require arg1
    require msg.value
    require msg.value
    require msg.value * rate / msg.value == rate
    stor9.length++
    stor9[stor9.length] = msg.sender
    mem[0] = msg.sender
    if not stor8[address(msg.sender)]:
        stor8[address(msg.sender)] = msg.value
        idx = 0
        while idx < 50:
            require idx < stor10.length
            mem[0] = stor10[idx]
            mem[32] = 8
            if msg.value <= stor8[stor10[idx]]:
                idx = idx + 1
                continue 
            require idx < stor10.length
            mem[0] = 10
            s = idx + 1
            t = 0
            u = stor[sha3(mem[0]) + idx]
            while s <= 49:
                if address(u) == msg.sender:
                    s = 51
                    t = t
                    u = u
                    continue 
                require s < stor10.length
                mem[0] = 10
                stor10[s] = address(u)
                s = s + 1
                t = u
                u = stor10[s]
                continue 
            require idx < stor10.length
            mem[0] = 10
            stor10[idx] = msg.sender
            idx = 51
            continue 
    else:
        stor8[address(msg.sender)] += msg.value
        idx = 0
        while idx < 50:
            require idx < stor10.length
            mem[0] = stor10[idx]
            mem[32] = 8
            if stor8[address(msg.sender)] + msg.value <= stor8[stor10[idx]]:
                idx = idx + 1
                continue 
            require idx < stor10.length
            mem[0] = 10
            s = idx + 1
            t = 0
            u = stor[sha3(mem[0]) + idx]
            while s <= 49:
                if address(u) == msg.sender:
                    s = 51
                    t = t
                    u = u
                    continue 
                require s < stor10.length
                mem[0] = 10
                stor10[s] = address(u)
                s = s + 1
                t = u
                u = stor10[s]
                continue 
            require idx < stor10.length
            mem[0] = 10
            stor10[idx] = msg.sender
            idx = 51
            continue 
    if stor9.length <= 5000:
        stor16 = 100
    else:
        if stor9.length <= 10000:
            stor16 = 50
        else:
            if stor9.length > 15000:
                stor16 = 15
            else:
                stor16 = 30
    if stor16:
        require stor16
        require 100 * stor16 / stor16 == 100
    if msg.value * rate:
        require msg.value * rate
        require 100 * msg.value * rate * stor16 / msg.value * rate == 100 * stor16
    require (msg.value * rate) + (100 * msg.value * rate * stor16 / 10000) >= msg.value * rate
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require arg1
    require balanceOf[address(this.address)] >= (msg.value * rate) + (100 * msg.value * rate * stor16 / 10000)
    require balanceOf[address(arg1)] + (msg.value * rate) + (100 * msg.value * rate * stor16 / 10000) >= balanceOf[address(arg1)]
    require (msg.value * rate) + (100 * msg.value * rate * stor16 / 10000) <= balanceOf[address(this.address)]
    balanceOf[address(this.address)] = balanceOf[address(this.address)] - (msg.value * rate) - (100 * msg.value * rate * stor16 / 10000)
    require balanceOf[address(arg1)] + (msg.value * rate) + (100 * msg.value * rate * stor16 / 10000) >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] = balanceOf[address(arg1)] + (msg.value * rate) + (100 * msg.value * rate * stor16 / 10000)
    emit Transfer(((msg.value * rate) + (100 * msg.value * rate * stor16 / 10000)), this.address, arg1);
    emit TokenPurchase(msg.value, (msg.value * rate) + (100 * msg.value * rate * stor16 / 10000), this.address, arg1);
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    if block.timestamp < openingTime:
        revert with 0, 'Sale open'
    if block.timestamp > closingTime:
        revert with 0, 'Sale open'
    require msg.sender
    require msg.value
    require msg.value
    require msg.value * rate / msg.value == rate
    stor9.length++
    stor9[stor9.length] = msg.sender
    mem[0] = msg.sender
    if not stor8[address(msg.sender)]:
        stor8[address(msg.sender)] = msg.value
        idx = 0
        while idx < 50:
            require idx < stor10.length
            mem[0] = stor10[idx]
            mem[32] = 8
            if msg.value <= stor8[stor10[idx]]:
                idx = idx + 1
                continue 
            require idx < stor10.length
            mem[0] = 10
            s = idx + 1
            t = 0
            u = stor[sha3(mem[0]) + idx]
            while s <= 49:
                if address(u) == msg.sender:
                    s = 51
                    t = t
                    u = u
                    continue 
                require s < stor10.length
                mem[0] = 10
                stor10[s] = address(u)
                s = s + 1
                t = u
                u = stor10[s]
                continue 
            require idx < stor10.length
            mem[0] = 10
            stor10[idx] = msg.sender
            idx = 51
            continue 
    else:
        stor8[address(msg.sender)] += msg.value
        idx = 0
        while idx < 50:
            require idx < stor10.length
            mem[0] = stor10[idx]
            mem[32] = 8
            if stor8[address(msg.sender)] + msg.value <= stor8[stor10[idx]]:
                idx = idx + 1
                continue 
            require idx < stor10.length
            mem[0] = 10
            s = idx + 1
            t = 0
            u = stor[sha3(mem[0]) + idx]
            while s <= 49:
                if address(u) == msg.sender:
                    s = 51
                    t = t
                    u = u
                    continue 
                require s < stor10.length
                mem[0] = 10
                stor10[s] = address(u)
                s = s + 1
                t = u
                u = stor10[s]
                continue 
            require idx < stor10.length
            mem[0] = 10
            stor10[idx] = msg.sender
            idx = 51
            continue 
    if stor9.length <= 5000:
        stor16 = 100
    else:
        if stor9.length <= 10000:
            stor16 = 50
        else:
            if stor9.length > 15000:
                stor16 = 15
            else:
                stor16 = 30
    if stor16:
        require stor16
        require 100 * stor16 / stor16 == 100
    if msg.value * rate:
        require msg.value * rate
        require 100 * msg.value * rate * stor16 / msg.value * rate == 100 * stor16
    require (msg.value * rate) + (100 * msg.value * rate * stor16 / 10000) >= msg.value * rate
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require msg.sender
    require balanceOf[address(this.address)] >= (msg.value * rate) + (100 * msg.value * rate * stor16 / 10000)
    require balanceOf[address(msg.sender)] + (msg.value * rate) + (100 * msg.value * rate * stor16 / 10000) >= balanceOf[address(msg.sender)]
    require (msg.value * rate) + (100 * msg.value * rate * stor16 / 10000) <= balanceOf[address(this.address)]
    balanceOf[address(this.address)] = balanceOf[address(this.address)] - (msg.value * rate) - (100 * msg.value * rate * stor16 / 10000)
    require balanceOf[address(msg.sender)] + (msg.value * rate) + (100 * msg.value * rate * stor16 / 10000) >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate) + (100 * msg.value * rate * stor16 / 10000)
    emit Transfer(((msg.value * rate) + (100 * msg.value * rate * stor16 / 10000)), this.address, msg.sender);
    emit TokenPurchase(msg.value, (msg.value * rate) + (100 * msg.value * rate * stor16 / 10000), this.address, msg.sender);
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function distributeContest() {
    require msg.sender == owner
    require block.timestamp > closingTime
    s = 0
    idx = 0
    while idx != 50:
        require idx < stor10.length
        mem[0] = 10
        if stor10[idx]:
            if not idx:
                require stor10[idx]
                require balanceOf[address(this.address)] >= 300000
                require balanceOf[stor10[idx]] + 300000 >= balanceOf[stor10[idx]]
                require 300000 <= balanceOf[address(this.address)]
                balanceOf[address(this.address)] -= 300000
                require balanceOf[stor10[idx]] + 300000 >= balanceOf[stor10[idx]]
                mem[0] = stor10[idx]
                mem[32] = 6
                balanceOf[stor10[idx]] += 300000
                mem[96] = 300000
                emit Transfer(300000, this.address, stor10[idx]);
            else:
                if idx == 1:
                    require stor10[idx]
                    require balanceOf[address(this.address)] >= 200000
                    require balanceOf[stor10[idx]] + 200000 >= balanceOf[stor10[idx]]
                    require 200000 <= balanceOf[address(this.address)]
                    balanceOf[address(this.address)] -= 200000
                    require balanceOf[stor10[idx]] + 200000 >= balanceOf[stor10[idx]]
                    mem[0] = stor10[idx]
                    mem[32] = 6
                    balanceOf[stor10[idx]] += 200000
                    mem[96] = 200000
                    emit Transfer(200000, this.address, stor10[idx]);
                else:
                    if idx == 2:
                        require stor10[idx]
                        require balanceOf[address(this.address)] >= 100000
                        require balanceOf[stor10[idx]] + 100000 >= balanceOf[stor10[idx]]
                        require 100000 <= balanceOf[address(this.address)]
                        balanceOf[address(this.address)] -= 100000
                        require balanceOf[stor10[idx]] + 100000 >= balanceOf[stor10[idx]]
                        mem[0] = stor10[idx]
                        mem[32] = 6
                        balanceOf[stor10[idx]] += 100000
                        mem[96] = 100000
                        emit Transfer(100000, this.address, stor10[idx]);
                    else:
                        if idx == 3:
                            require stor10[idx]
                            require balanceOf[address(this.address)] >= 50000
                            require balanceOf[stor10[idx]] + 50000 >= balanceOf[stor10[idx]]
                            require 50000 <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] -= 50000
                            require balanceOf[stor10[idx]] + 50000 >= balanceOf[stor10[idx]]
                            mem[0] = stor10[idx]
                            mem[32] = 6
                            balanceOf[stor10[idx]] += 50000
                            mem[96] = 50000
                            emit Transfer(50000, this.address, stor10[idx]);
                        else:
                            if idx == 4:
                                require stor10[idx]
                                require balanceOf[address(this.address)] >= 30000
                                require balanceOf[stor10[idx]] + 30000 >= balanceOf[stor10[idx]]
                                require 30000 <= balanceOf[address(this.address)]
                                balanceOf[address(this.address)] -= 30000
                                require balanceOf[stor10[idx]] + 30000 >= balanceOf[stor10[idx]]
                                mem[0] = stor10[idx]
                                mem[32] = 6
                                balanceOf[stor10[idx]] += 30000
                                mem[96] = 30000
                                emit Transfer(30000, this.address, stor10[idx]);
                            else:
                                if idx >= 5:
                                    if idx <= 49:
                                        require stor10[idx]
                                        require balanceOf[address(this.address)] >= 7000
                                        require balanceOf[stor10[idx]] + 7000 >= balanceOf[stor10[idx]]
                                        require 7000 <= balanceOf[address(this.address)]
                                        balanceOf[address(this.address)] -= 7000
                                        require balanceOf[stor10[idx]] + 7000 >= balanceOf[stor10[idx]]
                                        mem[0] = stor10[idx]
                                        mem[32] = 6
                                        balanceOf[stor10[idx]] += 7000
                                        mem[96] = 7000
                                        emit Transfer(7000, this.address, stor10[idx]);
        s = stor10[idx]
        idx = idx + 1
        continue 
}



}
