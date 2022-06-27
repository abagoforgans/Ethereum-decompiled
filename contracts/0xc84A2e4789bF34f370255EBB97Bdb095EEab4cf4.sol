contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address stor5;
address sub_51a3e24fAddress; offset 8
address sub_43ef33f6Address;
address sub_1049670bAddress;
uint256 sub_a7356a63;
uint256 sub_9926fe7e;

function name() {
    return name[0 len name.length]
}

function sub_1049670b(?) {
    return sub_1049670bAddress
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function sub_43ef33f6(?) {
    return sub_43ef33f6Address
}

function sub_51a3e24f(?) {
    return sub_51a3e24fAddress
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_9926fe7e(?) {
    return sub_9926fe7e
}

function sub_a7356a63(?) {
    return sub_a7356a63
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function sub_0188a36f(?) {
    require calldata.size - 4 >= 32
    if sub_1049670bAddress != msg.sender:
        revert with 0, 'Invalid msg.sender'
    sub_1049670bAddress = arg1
    return 1
}

function sub_c1cc0b8e(?) {
    require calldata.size - 4 >= 32
    if sub_43ef33f6Address != msg.sender:
        revert with 0, 'Invalid msg.sender'
    sub_43ef33f6Address = arg1
    return 1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function changeMarketingAccount(address arg1) {
    require calldata.size - 4 >= 32
    if sub_51a3e24fAddress != msg.sender:
        revert with 0, 'Invalid msg.sender'
    sub_51a3e24fAddress = arg1
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require arg2 <= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
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

function mint(uint256 arg1) {
    require calldata.size - 4 >= 32
    if sub_51a3e24fAddress != msg.sender:
        if sub_43ef33f6Address != msg.sender:
            require msg.sender == sub_1049670bAddress
        else:
            require totalSupply + arg1 >= totalSupply
            if not totalSupply + arg1:
                require balanceOf[stor6] + arg1 >= balanceOf[stor6]
                if balanceOf[stor6] + arg1 > 0:
                    require msg.sender == sub_1049670bAddress
                else:
                    if block.timestamp < sub_9926fe7e + (4032 * 24 * 3600):
                        require msg.sender == sub_1049670bAddress
            else:
                require totalSupply + arg1
                require (125 * totalSupply) + (125 * arg1) / totalSupply + arg1 == 125
                require balanceOf[stor6] + arg1 >= balanceOf[stor6]
                if balanceOf[stor6] + arg1 > (125 * totalSupply) + (125 * arg1) / 10000:
                    require msg.sender == sub_1049670bAddress
                else:
                    if block.timestamp < sub_9926fe7e + (4032 * 24 * 3600):
                        require msg.sender == sub_1049670bAddress
    else:
        require totalSupply + arg1 >= totalSupply
        if not totalSupply + arg1:
            require balanceOf[stor5] + arg1 >= balanceOf[stor5]
            if balanceOf[stor5] + arg1 > 0:
                if sub_43ef33f6Address != msg.sender:
                    require msg.sender == sub_1049670bAddress
                else:
                    require totalSupply + arg1 >= totalSupply
                    if not totalSupply + arg1:
                        require balanceOf[stor6] + arg1 >= balanceOf[stor6]
                        if balanceOf[stor6] + arg1 > 0:
                            require msg.sender == sub_1049670bAddress
                        else:
                            if block.timestamp < sub_9926fe7e + (4032 * 24 * 3600):
                                require msg.sender == sub_1049670bAddress
                    else:
                        require totalSupply + arg1
                        require (125 * totalSupply) + (125 * arg1) / totalSupply + arg1 == 125
                        require balanceOf[stor6] + arg1 >= balanceOf[stor6]
                        if balanceOf[stor6] + arg1 > (125 * totalSupply) + (125 * arg1) / 10000:
                            require msg.sender == sub_1049670bAddress
                        else:
                            if block.timestamp < sub_9926fe7e + (4032 * 24 * 3600):
                                require msg.sender == sub_1049670bAddress
            else:
                if block.timestamp < sub_a7356a63 + (4032 * 24 * 3600):
                    if sub_43ef33f6Address != msg.sender:
                        require msg.sender == sub_1049670bAddress
                    else:
                        require totalSupply + arg1 >= totalSupply
                        if not totalSupply + arg1:
                            require balanceOf[stor6] + arg1 >= balanceOf[stor6]
                            if balanceOf[stor6] + arg1 > 0:
                                require msg.sender == sub_1049670bAddress
                            else:
                                if block.timestamp < sub_9926fe7e + (4032 * 24 * 3600):
                                    require msg.sender == sub_1049670bAddress
                        else:
                            require totalSupply + arg1
                            require (125 * totalSupply) + (125 * arg1) / totalSupply + arg1 == 125
                            require balanceOf[stor6] + arg1 >= balanceOf[stor6]
                            if balanceOf[stor6] + arg1 > (125 * totalSupply) + (125 * arg1) / 10000:
                                require msg.sender == sub_1049670bAddress
                            else:
                                if block.timestamp < sub_9926fe7e + (4032 * 24 * 3600):
                                    require msg.sender == sub_1049670bAddress
        else:
            require totalSupply + arg1
            require (75 * totalSupply) + (75 * arg1) / totalSupply + arg1 == 75
            require balanceOf[stor5] + arg1 >= balanceOf[stor5]
            if balanceOf[stor5] + arg1 > (75 * totalSupply) + (75 * arg1) / 10000:
                if sub_43ef33f6Address != msg.sender:
                    require msg.sender == sub_1049670bAddress
                else:
                    require totalSupply + arg1 >= totalSupply
                    if not totalSupply + arg1:
                        require balanceOf[stor6] + arg1 >= balanceOf[stor6]
                        if balanceOf[stor6] + arg1 > 0:
                            require msg.sender == sub_1049670bAddress
                        else:
                            if block.timestamp < sub_9926fe7e + (4032 * 24 * 3600):
                                require msg.sender == sub_1049670bAddress
                    else:
                        require totalSupply + arg1
                        require (125 * totalSupply) + (125 * arg1) / totalSupply + arg1 == 125
                        require balanceOf[stor6] + arg1 >= balanceOf[stor6]
                        if balanceOf[stor6] + arg1 > (125 * totalSupply) + (125 * arg1) / 10000:
                            require msg.sender == sub_1049670bAddress
                        else:
                            if block.timestamp < sub_9926fe7e + (4032 * 24 * 3600):
                                require msg.sender == sub_1049670bAddress
            else:
                if block.timestamp < sub_a7356a63 + (4032 * 24 * 3600):
                    if sub_43ef33f6Address != msg.sender:
                        require msg.sender == sub_1049670bAddress
                    else:
                        require totalSupply + arg1 >= totalSupply
                        if not totalSupply + arg1:
                            require balanceOf[stor6] + arg1 >= balanceOf[stor6]
                            if balanceOf[stor6] + arg1 > 0:
                                require msg.sender == sub_1049670bAddress
                            else:
                                if block.timestamp < sub_9926fe7e + (4032 * 24 * 3600):
                                    require msg.sender == sub_1049670bAddress
                        else:
                            require totalSupply + arg1
                            require (125 * totalSupply) + (125 * arg1) / totalSupply + arg1 == 125
                            require balanceOf[stor6] + arg1 >= balanceOf[stor6]
                            if balanceOf[stor6] + arg1 > (125 * totalSupply) + (125 * arg1) / 10000:
                                require msg.sender == sub_1049670bAddress
                            else:
                                if block.timestamp < sub_9926fe7e + (4032 * 24 * 3600):
                                    require msg.sender == sub_1049670bAddress
    if msg.sender == sub_51a3e24fAddress:
        sub_a7356a63 = block.timestamp
    else:
        if msg.sender == sub_43ef33f6Address:
            sub_9926fe7e = block.timestamp
    require msg.sender
    require totalSupply + arg1 >= totalSupply
    totalSupply += arg1
    require balanceOf[address(msg.sender)] + arg1 >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += arg1
    emit Transfer(arg1, 0, msg.sender);
    return 1
}



}
