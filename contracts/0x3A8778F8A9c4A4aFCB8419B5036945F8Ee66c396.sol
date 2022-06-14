contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require arg1 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(arg1)]
    require arg2 <= allowance[address(arg1)][msg.sender]
    balanceOf[address(arg1)] -= arg2
    allowance[address(arg1)][msg.sender] -= arg2
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args msg.sender, arg2, this.address, Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    require arg2
    if arg1 != 0xf43a8e20fc51f55ee6cce9e653f78d5bde3c4ea4:
        require arg3 <= balanceOf[address(arg1)]
        require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
        if arg1 != 0xf43a8e20fc51f55ee6cce9e653f78d5bde3c4ea4:
            balanceOf[address(arg1)] -= arg3
            balanceOf[address(arg2)] += arg3
            emit Transfer(arg3, arg1, arg2);
            require balanceOf[address(arg2)] + balanceOf[arg1] == balanceOf[arg1] + balanceOf[address(arg2)]
            return 1
        else:
            if totalSupply <= 0:
                balanceOf[address(arg1)] -= arg3
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, arg1, arg2);
                require balanceOf[address(arg2)] + balanceOf[arg1] == balanceOf[arg1] + balanceOf[address(arg2)]
                return 1
            else:
                balanceOf[address(arg1)] -= arg3
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, arg1, arg2);
                require balanceOf[address(arg2)] + balanceOf[arg1] == balanceOf[arg1] + balanceOf[address(arg2)]
                return 1
    else:
        require arg3 + 10 * 10^18 <= balanceOf[address(arg1)]
        require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
        if arg1 != 0xf43a8e20fc51f55ee6cce9e653f78d5bde3c4ea4:
            balanceOf[address(arg1)] -= arg3
            balanceOf[address(arg2)] += arg3
            emit Transfer(arg3, arg1, arg2);
            require balanceOf[address(arg2)] + balanceOf[arg1] == balanceOf[arg1] + balanceOf[address(arg2)] + 10 * 10^18
            return 1
        else:
            if totalSupply <= 70 * 10^18:
                balanceOf[address(arg1)] -= arg3
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, arg1, arg2);
                require balanceOf[address(arg2)] + balanceOf[arg1] == balanceOf[arg1] + balanceOf[address(arg2)]
                return 1
            else:
                balanceOf[address(arg1)] = balanceOf[address(arg1)] + -arg3 - 10 * 10^18
                totalSupply -= 10 * 10^18
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, arg1, arg2);
                require balanceOf[address(arg2)] + balanceOf[arg1] == balanceOf[arg1] + balanceOf[address(arg2)] + 10 * 10^18
                return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    if 0xf43a8e20fc51f55ee6cce9e653f78d5bde3c4ea4 != msg.sender:
        require arg2 <= balanceOf[address(msg.sender)]
        require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
        if msg.sender != 0xf43a8e20fc51f55ee6cce9e653f78d5bde3c4ea4:
            balanceOf[address(msg.sender)] -= arg2
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
            require balanceOf[address(arg1)] + balanceOf[msg.sender] == balanceOf[msg.sender] + balanceOf[address(arg1)]
            return 1
        else:
            if totalSupply <= 0:
                balanceOf[address(msg.sender)] -= arg2
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
                require balanceOf[address(arg1)] + balanceOf[msg.sender] == balanceOf[msg.sender] + balanceOf[address(arg1)]
                return 1
            else:
                balanceOf[address(msg.sender)] -= arg2
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
                require balanceOf[address(arg1)] + balanceOf[msg.sender] == balanceOf[msg.sender] + balanceOf[address(arg1)]
                return 1
    else:
        require arg2 + 10 * 10^18 <= balanceOf[address(msg.sender)]
        require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
        if msg.sender != 0xf43a8e20fc51f55ee6cce9e653f78d5bde3c4ea4:
            balanceOf[address(msg.sender)] -= arg2
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
            require balanceOf[address(arg1)] + balanceOf[msg.sender] == balanceOf[msg.sender] + balanceOf[address(arg1)] + 10 * 10^18
            return 1
        else:
            if totalSupply <= 70 * 10^18:
                balanceOf[address(msg.sender)] -= arg2
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
                require balanceOf[address(arg1)] + balanceOf[msg.sender] == balanceOf[msg.sender] + balanceOf[address(arg1)]
                return 1
            else:
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + -arg2 - 10 * 10^18
                totalSupply -= 10 * 10^18
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
                require balanceOf[address(arg1)] + balanceOf[msg.sender] == balanceOf[msg.sender] + balanceOf[address(arg1)] + 10 * 10^18
                return 1
}



}
