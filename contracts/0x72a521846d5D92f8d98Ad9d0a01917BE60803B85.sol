contract main {




// =====================  Runtime code  =====================


const name = 'My420Mate'

const decimals = 18

const symbol = 'MMJM'


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of address sub_a04969c5;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function sub_a04969c5(?) {
    return sub_a04969c5[arg1]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function isContract(address arg1) {
    return (ext_code.size(arg1) > 0)
}

function sub_919571ef(?) {
    sub_a04969c5[address(msg.sender)] = 0
    return 1
}

function sub_7c4965df(?) {
    sub_a04969c5[address(msg.sender)] = arg1
    return 1
}

function approve(address arg1, uint256 arg2) {
    require arg1
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg1
    require arg2
    require arg2 != this.address
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot be Contract Creation address'
    if allowance[address(msg.sender)][address(arg1)] + arg2 <= allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'Allowance Overflow'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot be Contract Creation address'
    if allowance[address(msg.sender)][address(arg1)] - arg2 >= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if sub_a04969c5[address(arg1)]:
        require sub_a04969c5[address(arg1)]
        require sub_a04969c5[address(arg1)] != this.address
        require balanceOf[address(msg.sender)] >= arg2
        require balanceOf[stor3[address(arg1)]] + arg2 >= balanceOf[stor3[address(arg1)]]
        balanceOf[address(msg.sender)] -= arg2
        balanceOf[stor3[address(arg1)]] += arg2
        emit Transfer(arg2, msg.sender, sub_a04969c5[address(arg1)]);
        if ext_code.size(sub_a04969c5[address(arg1)]) > 0:
            require ext_code.size(sub_a04969c5[address(arg1)])
            call sub_a04969c5[address(arg1)].0x3b66d02b with:
                 gas gas_remaining wei
                args msg.sender, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        require arg1
        require arg1 != this.address
        require balanceOf[address(msg.sender)] >= arg2
        require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
        balanceOf[address(msg.sender)] -= arg2
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
        if ext_code.size(arg1) > 0:
            require ext_code.size(arg1)
            call arg1.0x3b66d02b with:
                 gas gas_remaining wei
                args msg.sender, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function transfer(address arg1, uint256 arg2, bytes arg3) {
    if sub_a04969c5[address(arg1)]:
        require sub_a04969c5[address(arg1)]
        require sub_a04969c5[address(arg1)] != this.address
        require balanceOf[address(msg.sender)] >= arg2
        require balanceOf[stor3[address(arg1)]] + arg2 >= balanceOf[stor3[address(arg1)]]
        balanceOf[address(msg.sender)] -= arg2
        balanceOf[stor3[address(arg1)]] += arg2
        emit Transfer(arg2, msg.sender, sub_a04969c5[address(arg1)]);
        if ext_code.size(sub_a04969c5[address(arg1)]) > 0:
            require ext_code.size(sub_a04969c5[address(arg1)])
            call sub_a04969c5[address(arg1)].0xc0ee0b8a with:
                 gas gas_remaining wei
                args msg.sender, arg2, Array(len=arg3.length, data=arg3[all])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        require arg1
        require arg1 != this.address
        require balanceOf[address(msg.sender)] >= arg2
        require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
        balanceOf[address(msg.sender)] -= arg2
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
        if ext_code.size(arg1) > 0:
            require ext_code.size(arg1)
            call arg1.0xc0ee0b8a with:
                 gas gas_remaining wei
                args msg.sender, arg2, Array(len=arg3.length, data=arg3[all])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    return 1
}



}
