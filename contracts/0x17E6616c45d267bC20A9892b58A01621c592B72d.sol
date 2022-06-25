contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 stor6;
uint256 msgCount;
mapping of struct messages;

function name() {
    return name[0 len name.length]
}

function messages(uint256 arg1) {
    mem[128] = messages[arg1].field_0
    idx = 128
    s = 0
    while messages[arg1].length + 96 > idx:
        mem[idx + 32] = messages[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=messages[arg1].length, data=mem[128 len messages[arg1].length]), 
           messages[arg1].field_256,
           messages[arg1].field_512,
           messages[arg1].field_768
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function msgCount() {
    return msgCount
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function approve(address arg1, uint256 arg2) {
    require arg1
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require arg1
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    emit Approval(allowance[address(arg1)][address(msg.sender)], arg1, msg.sender);
    return 1
}

function sellTokens(uint256 arg1) {
    if not eth.balance(this.address):
        require totalSupply > 0
        require totalSupply
        require msg.sender
        require arg1 <= totalSupply
        totalSupply -= arg1
        require arg1 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= arg1
        emit Transfer(arg1, msg.sender, 0);
        call msg.sender with:
           value 0 / totalSupply wei
             gas 2300 * is_zero(value) wei
    else:
        require eth.balance(this.address)
        require eth.balance(this.address) * arg1 / eth.balance(this.address) == arg1
        require totalSupply > 0
        require totalSupply
        require msg.sender
        require arg1 <= totalSupply
        totalSupply -= arg1
        require arg1 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= arg1
        emit Transfer(arg1, msg.sender, 0);
        call msg.sender with:
           value eth.balance(this.address) * arg1 / totalSupply wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transfer(address arg1, uint256 arg2) {
    if arg1 != this.address:
        require arg1
        require arg2 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= arg2
        require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if not eth.balance(this.address):
            require totalSupply > 0
            require totalSupply
            require msg.sender
            require arg2 <= totalSupply
            totalSupply -= arg2
            require arg2 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= arg2
            emit Transfer(arg2, msg.sender, 0);
            call msg.sender with:
               value 0 / totalSupply wei
                 gas 2300 * is_zero(value) wei
        else:
            require eth.balance(this.address)
            require eth.balance(this.address) * arg2 / eth.balance(this.address) == arg2
            require totalSupply > 0
            require totalSupply
            require msg.sender
            require arg2 <= totalSupply
            totalSupply -= arg2
            require arg2 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= arg2
            emit Transfer(arg2, msg.sender, 0);
            call msg.sender with:
               value eth.balance(this.address) * arg2 / totalSupply wei
                 gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function _fallback() payable {
    if msg.value <= 0:
        revert with 0, 'Wrong ETH value'
    if balanceOf[address(this.address)] > 0:
        if balanceOf[address(this.address)] > 5 * 10^6 * stor6:
            if balanceOf[address(this.address)] > 4 * 10^6 * stor6:
                if balanceOf[address(this.address)] > 3 * 10^6 * stor6:
                    if balanceOf[address(this.address)] > 2 * 10^6 * stor6:
                        if balanceOf[address(this.address)] > 10^6 * stor6:
                            require msg.value
                            require not msg.value
                            revert
                        if not msg.value:
                            require msg.sender
                            if balanceOf[address(this.address)] >= 0:
                                require 0 <= balanceOf[address(this.address)]
                                require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                emit Transfer(0, this.address, msg.sender);
                            else:
                                require balanceOf[address(this.address)] <= balanceOf[address(this.address)]
                                balanceOf[address(this.address)] = 0
                                require balanceOf[address(msg.sender)] + balanceOf[address(this.address)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                                emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                        else:
                            require msg.value
                            require 100 * msg.value / msg.value == 100
                            require msg.sender
                            if balanceOf[address(this.address)] >= 100 * msg.value / 5:
                                require 100 * msg.value / 5 <= balanceOf[address(this.address)]
                                balanceOf[address(this.address)] -= 100 * msg.value / 5
                                require balanceOf[address(msg.sender)] + (100 * msg.value / 5) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 100 * msg.value / 5
                                emit Transfer((100 * msg.value / 5), this.address, msg.sender);
                            else:
                                require balanceOf[address(this.address)] <= balanceOf[address(this.address)]
                                balanceOf[address(this.address)] = 0
                                require balanceOf[address(msg.sender)] + balanceOf[address(this.address)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                                emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                    else:
                        if balanceOf[address(this.address)] <= 10^6 * stor6:
                            if not msg.value:
                                require msg.sender
                                if balanceOf[address(this.address)] >= 0:
                                    require 0 <= balanceOf[address(this.address)]
                                    require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    emit Transfer(0, this.address, msg.sender);
                                else:
                                    require balanceOf[address(this.address)] <= balanceOf[address(this.address)]
                                    balanceOf[address(this.address)] = 0
                                    require balanceOf[address(msg.sender)] + balanceOf[address(this.address)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                                    emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                            else:
                                require msg.value
                                require 100 * msg.value / msg.value == 100
                                require msg.sender
                                if balanceOf[address(this.address)] >= 100 * msg.value / 5:
                                    require 100 * msg.value / 5 <= balanceOf[address(this.address)]
                                    balanceOf[address(this.address)] -= 100 * msg.value / 5
                                    require balanceOf[address(msg.sender)] + (100 * msg.value / 5) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += 100 * msg.value / 5
                                    emit Transfer((100 * msg.value / 5), this.address, msg.sender);
                                else:
                                    require balanceOf[address(this.address)] <= balanceOf[address(this.address)]
                                    balanceOf[address(this.address)] = 0
                                    require balanceOf[address(msg.sender)] + balanceOf[address(this.address)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                                    emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                        else:
                            if not msg.value:
                                require msg.sender
                                if balanceOf[address(this.address)] >= 0:
                                    require 0 <= balanceOf[address(this.address)]
                                    require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    emit Transfer(0, this.address, msg.sender);
                                else:
                                    require balanceOf[address(this.address)] <= balanceOf[address(this.address)]
                                    balanceOf[address(this.address)] = 0
                                    require balanceOf[address(msg.sender)] + balanceOf[address(this.address)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                                    emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                            else:
                                require msg.value
                                require 100 * msg.value / msg.value == 100
                                require msg.sender
                                if balanceOf[address(this.address)] >= 100 * msg.value / 4:
                                    require 100 * msg.value / 4 <= balanceOf[address(this.address)]
                                    balanceOf[address(this.address)] -= 100 * msg.value / 4
                                    require balanceOf[address(msg.sender)] + (100 * msg.value / 4) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += 100 * msg.value / 4
                                    emit Transfer((100 * msg.value / 4), this.address, msg.sender);
                                else:
                                    require balanceOf[address(this.address)] <= balanceOf[address(this.address)]
                                    balanceOf[address(this.address)] = 0
                                    require balanceOf[address(msg.sender)] + balanceOf[address(this.address)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                                    emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                else:
                    if balanceOf[address(this.address)] > 2 * 10^6 * stor6:
                        if not msg.value:
                            require msg.sender
                            if balanceOf[address(this.address)] >= 0:
                                require 0 <= balanceOf[address(this.address)]
                                require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                emit Transfer(0, this.address, msg.sender);
                            else:
                                require balanceOf[address(this.address)] <= balanceOf[address(this.address)]
                                balanceOf[address(this.address)] = 0
                                require balanceOf[address(msg.sender)] + balanceOf[address(this.address)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                                emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                        else:
                            require msg.value
                            require 100 * msg.value / msg.value == 100
                            require msg.sender
                            if balanceOf[address(this.address)] >= 100 * msg.value / 3:
                                require 100 * msg.value / 3 <= balanceOf[address(this.address)]
                                balanceOf[address(this.address)] -= 100 * msg.value / 3
                                require balanceOf[address(msg.sender)] + (100 * msg.value / 3) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 100 * msg.value / 3
                                emit Transfer((100 * msg.value / 3), this.address, msg.sender);
                            else:
                                require balanceOf[address(this.address)] <= balanceOf[address(this.address)]
                                balanceOf[address(this.address)] = 0
                                require balanceOf[address(msg.sender)] + balanceOf[address(this.address)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                                emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                    else:
                        if balanceOf[address(this.address)] <= 10^6 * stor6:
                            if not msg.value:
                                require msg.sender
                                if balanceOf[address(this.address)] >= 0:
                                    require 0 <= balanceOf[address(this.address)]
                                    require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    emit Transfer(0, this.address, msg.sender);
                                else:
                                    require balanceOf[address(this.address)] <= balanceOf[address(this.address)]
                                    balanceOf[address(this.address)] = 0
                                    require balanceOf[address(msg.sender)] + balanceOf[address(this.address)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                                    emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                            else:
                                require msg.value
                                require 100 * msg.value / msg.value == 100
                                require msg.sender
                                if balanceOf[address(this.address)] >= 100 * msg.value / 5:
                                    require 100 * msg.value / 5 <= balanceOf[address(this.address)]
                                    balanceOf[address(this.address)] -= 100 * msg.value / 5
                                    require balanceOf[address(msg.sender)] + (100 * msg.value / 5) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += 100 * msg.value / 5
                                    emit Transfer((100 * msg.value / 5), this.address, msg.sender);
                                else:
                                    require balanceOf[address(this.address)] <= balanceOf[address(this.address)]
                                    balanceOf[address(this.address)] = 0
                                    require balanceOf[address(msg.sender)] + balanceOf[address(this.address)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                                    emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                        else:
                            if not msg.value:
                                require msg.sender
                                if balanceOf[address(this.address)] >= 0:
                                    require 0 <= balanceOf[address(this.address)]
                                    require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    emit Transfer(0, this.address, msg.sender);
                                else:
                                    require balanceOf[address(this.address)] <= balanceOf[address(this.address)]
                                    balanceOf[address(this.address)] = 0
                                    require balanceOf[address(msg.sender)] + balanceOf[address(this.address)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                                    emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                            else:
                                require msg.value
                                require 100 * msg.value / msg.value == 100
                                require msg.sender
                                if balanceOf[address(this.address)] >= 100 * msg.value / 4:
                                    require 100 * msg.value / 4 <= balanceOf[address(this.address)]
                                    balanceOf[address(this.address)] -= 100 * msg.value / 4
                                    require balanceOf[address(msg.sender)] + (100 * msg.value / 4) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += 100 * msg.value / 4
                                    emit Transfer((100 * msg.value / 4), this.address, msg.sender);
                                else:
                                    require balanceOf[address(this.address)] <= balanceOf[address(this.address)]
                                    balanceOf[address(this.address)] = 0
                                    require balanceOf[address(msg.sender)] + balanceOf[address(this.address)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                                    emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
            else:
                if balanceOf[address(this.address)] > 3 * 10^6 * stor6:
                    if not msg.value:
                        require msg.sender
                        if balanceOf[address(this.address)] >= 0:
                            require 0 <= balanceOf[address(this.address)]
                            require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            emit Transfer(0, this.address, msg.sender);
                        else:
                            require balanceOf[address(this.address)] <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] = 0
                            require balanceOf[address(msg.sender)] + balanceOf[address(this.address)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                            emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                    else:
                        require msg.value
                        require 100 * msg.value / msg.value == 100
                        require msg.sender
                        if balanceOf[address(this.address)] >= 100 * msg.value / 2:
                            require 100 * msg.value / 2 <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] -= 100 * msg.value / 2
                            require balanceOf[address(msg.sender)] + (100 * msg.value / 2) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 100 * msg.value / 2
                            emit Transfer((100 * msg.value / 2), this.address, msg.sender);
                        else:
                            require balanceOf[address(this.address)] <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] = 0
                            require balanceOf[address(msg.sender)] + balanceOf[address(this.address)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                            emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                else:
                    if balanceOf[address(this.address)] > 2 * 10^6 * stor6:
                        if not msg.value:
                            require msg.sender
                            if balanceOf[address(this.address)] >= 0:
                                require 0 <= balanceOf[address(this.address)]
                                require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                emit Transfer(0, this.address, msg.sender);
                            else:
                                require balanceOf[address(this.address)] <= balanceOf[address(this.address)]
                                balanceOf[address(this.address)] = 0
                                require balanceOf[address(msg.sender)] + balanceOf[address(this.address)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                                emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                        else:
                            require msg.value
                            require 100 * msg.value / msg.value == 100
                            require msg.sender
                            if balanceOf[address(this.address)] >= 100 * msg.value / 3:
                                require 100 * msg.value / 3 <= balanceOf[address(this.address)]
                                balanceOf[address(this.address)] -= 100 * msg.value / 3
                                require balanceOf[address(msg.sender)] + (100 * msg.value / 3) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 100 * msg.value / 3
                                emit Transfer((100 * msg.value / 3), this.address, msg.sender);
                            else:
                                require balanceOf[address(this.address)] <= balanceOf[address(this.address)]
                                balanceOf[address(this.address)] = 0
                                require balanceOf[address(msg.sender)] + balanceOf[address(this.address)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                                emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                    else:
                        if balanceOf[address(this.address)] <= 10^6 * stor6:
                            if not msg.value:
                                require msg.sender
                                if balanceOf[address(this.address)] >= 0:
                                    require 0 <= balanceOf[address(this.address)]
                                    require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    emit Transfer(0, this.address, msg.sender);
                                else:
                                    require balanceOf[address(this.address)] <= balanceOf[address(this.address)]
                                    balanceOf[address(this.address)] = 0
                                    require balanceOf[address(msg.sender)] + balanceOf[address(this.address)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                                    emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                            else:
                                require msg.value
                                require 100 * msg.value / msg.value == 100
                                require msg.sender
                                if balanceOf[address(this.address)] >= 100 * msg.value / 5:
                                    require 100 * msg.value / 5 <= balanceOf[address(this.address)]
                                    balanceOf[address(this.address)] -= 100 * msg.value / 5
                                    require balanceOf[address(msg.sender)] + (100 * msg.value / 5) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += 100 * msg.value / 5
                                    emit Transfer((100 * msg.value / 5), this.address, msg.sender);
                                else:
                                    require balanceOf[address(this.address)] <= balanceOf[address(this.address)]
                                    balanceOf[address(this.address)] = 0
                                    require balanceOf[address(msg.sender)] + balanceOf[address(this.address)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                                    emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                        else:
                            if not msg.value:
                                require msg.sender
                                if balanceOf[address(this.address)] >= 0:
                                    require 0 <= balanceOf[address(this.address)]
                                    require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    emit Transfer(0, this.address, msg.sender);
                                else:
                                    require balanceOf[address(this.address)] <= balanceOf[address(this.address)]
                                    balanceOf[address(this.address)] = 0
                                    require balanceOf[address(msg.sender)] + balanceOf[address(this.address)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                                    emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                            else:
                                require msg.value
                                require 100 * msg.value / msg.value == 100
                                require msg.sender
                                if balanceOf[address(this.address)] >= 100 * msg.value / 4:
                                    require 100 * msg.value / 4 <= balanceOf[address(this.address)]
                                    balanceOf[address(this.address)] -= 100 * msg.value / 4
                                    require balanceOf[address(msg.sender)] + (100 * msg.value / 4) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += 100 * msg.value / 4
                                    emit Transfer((100 * msg.value / 4), this.address, msg.sender);
                                else:
                                    require balanceOf[address(this.address)] <= balanceOf[address(this.address)]
                                    balanceOf[address(this.address)] = 0
                                    require balanceOf[address(msg.sender)] + balanceOf[address(this.address)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                                    emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
        else:
            if balanceOf[address(this.address)] > 4 * 10^6 * stor6:
                if not msg.value:
                    require msg.sender
                    if balanceOf[address(this.address)] >= 0:
                        require 0 <= balanceOf[address(this.address)]
                        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        emit Transfer(0, this.address, msg.sender);
                    else:
                        require balanceOf[address(this.address)] <= balanceOf[address(this.address)]
                        balanceOf[address(this.address)] = 0
                        require balanceOf[address(msg.sender)] + balanceOf[address(this.address)] >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                        emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                else:
                    require msg.value
                    require 100 * msg.value / msg.value == 100
                    require msg.sender
                    if balanceOf[address(this.address)] >= 100 * msg.value:
                        require 100 * msg.value <= balanceOf[address(this.address)]
                        balanceOf[address(this.address)] += -100 * msg.value
                        require balanceOf[address(msg.sender)] + (100 * msg.value) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 100 * msg.value
                        emit Transfer((100 * msg.value), this.address, msg.sender);
                    else:
                        require balanceOf[address(this.address)] <= balanceOf[address(this.address)]
                        balanceOf[address(this.address)] = 0
                        require balanceOf[address(msg.sender)] + balanceOf[address(this.address)] >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                        emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
            else:
                if balanceOf[address(this.address)] > 3 * 10^6 * stor6:
                    if not msg.value:
                        require msg.sender
                        if balanceOf[address(this.address)] >= 0:
                            require 0 <= balanceOf[address(this.address)]
                            require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            emit Transfer(0, this.address, msg.sender);
                        else:
                            require balanceOf[address(this.address)] <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] = 0
                            require balanceOf[address(msg.sender)] + balanceOf[address(this.address)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                            emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                    else:
                        require msg.value
                        require 100 * msg.value / msg.value == 100
                        require msg.sender
                        if balanceOf[address(this.address)] >= 100 * msg.value / 2:
                            require 100 * msg.value / 2 <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] -= 100 * msg.value / 2
                            require balanceOf[address(msg.sender)] + (100 * msg.value / 2) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 100 * msg.value / 2
                            emit Transfer((100 * msg.value / 2), this.address, msg.sender);
                        else:
                            require balanceOf[address(this.address)] <= balanceOf[address(this.address)]
                            balanceOf[address(this.address)] = 0
                            require balanceOf[address(msg.sender)] + balanceOf[address(this.address)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                            emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                else:
                    if balanceOf[address(this.address)] > 2 * 10^6 * stor6:
                        if not msg.value:
                            require msg.sender
                            if balanceOf[address(this.address)] >= 0:
                                require 0 <= balanceOf[address(this.address)]
                                require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                emit Transfer(0, this.address, msg.sender);
                            else:
                                require balanceOf[address(this.address)] <= balanceOf[address(this.address)]
                                balanceOf[address(this.address)] = 0
                                require balanceOf[address(msg.sender)] + balanceOf[address(this.address)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                                emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                        else:
                            require msg.value
                            require 100 * msg.value / msg.value == 100
                            require msg.sender
                            if balanceOf[address(this.address)] >= 100 * msg.value / 3:
                                require 100 * msg.value / 3 <= balanceOf[address(this.address)]
                                balanceOf[address(this.address)] -= 100 * msg.value / 3
                                require balanceOf[address(msg.sender)] + (100 * msg.value / 3) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 100 * msg.value / 3
                                emit Transfer((100 * msg.value / 3), this.address, msg.sender);
                            else:
                                require balanceOf[address(this.address)] <= balanceOf[address(this.address)]
                                balanceOf[address(this.address)] = 0
                                require balanceOf[address(msg.sender)] + balanceOf[address(this.address)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                                emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                    else:
                        if balanceOf[address(this.address)] <= 10^6 * stor6:
                            if not msg.value:
                                require msg.sender
                                if balanceOf[address(this.address)] >= 0:
                                    require 0 <= balanceOf[address(this.address)]
                                    require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    emit Transfer(0, this.address, msg.sender);
                                else:
                                    require balanceOf[address(this.address)] <= balanceOf[address(this.address)]
                                    balanceOf[address(this.address)] = 0
                                    require balanceOf[address(msg.sender)] + balanceOf[address(this.address)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                                    emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                            else:
                                require msg.value
                                require 100 * msg.value / msg.value == 100
                                require msg.sender
                                if balanceOf[address(this.address)] >= 100 * msg.value / 5:
                                    require 100 * msg.value / 5 <= balanceOf[address(this.address)]
                                    balanceOf[address(this.address)] -= 100 * msg.value / 5
                                    require balanceOf[address(msg.sender)] + (100 * msg.value / 5) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += 100 * msg.value / 5
                                    emit Transfer((100 * msg.value / 5), this.address, msg.sender);
                                else:
                                    require balanceOf[address(this.address)] <= balanceOf[address(this.address)]
                                    balanceOf[address(this.address)] = 0
                                    require balanceOf[address(msg.sender)] + balanceOf[address(this.address)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                                    emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                        else:
                            if not msg.value:
                                require msg.sender
                                if balanceOf[address(this.address)] >= 0:
                                    require 0 <= balanceOf[address(this.address)]
                                    require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    emit Transfer(0, this.address, msg.sender);
                                else:
                                    require balanceOf[address(this.address)] <= balanceOf[address(this.address)]
                                    balanceOf[address(this.address)] = 0
                                    require balanceOf[address(msg.sender)] + balanceOf[address(this.address)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                                    emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                            else:
                                require msg.value
                                require 100 * msg.value / msg.value == 100
                                require msg.sender
                                if balanceOf[address(this.address)] >= 100 * msg.value / 4:
                                    require 100 * msg.value / 4 <= balanceOf[address(this.address)]
                                    balanceOf[address(this.address)] -= 100 * msg.value / 4
                                    require balanceOf[address(msg.sender)] + (100 * msg.value / 4) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += 100 * msg.value / 4
                                    emit Transfer((100 * msg.value / 4), this.address, msg.sender);
                                else:
                                    require balanceOf[address(this.address)] <= balanceOf[address(this.address)]
                                    balanceOf[address(this.address)] = 0
                                    require balanceOf[address(msg.sender)] + balanceOf[address(this.address)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                                    emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
    messages[stor7].field_0 = (2 * calldata.size) + 1
    s = 0
    idx = 0
    while calldata.size > idx:
        messages[stor7][s].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, calldata.size + 31) >> 5
    while messages[stor7].length + 31 / 32 > idx:
        messages[stor7][idx].field_0 = 0
        idx = idx + 1
        continue 
    messages[stor7].field_256 = msg.value
    messages[stor7].field_512 = block.timestamp
    messages[stor7].field_768 = msg.sender
    msgCount++
}



}
