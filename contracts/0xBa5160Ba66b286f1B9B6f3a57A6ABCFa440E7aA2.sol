contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
address stor4;
array of address stor5;
array of struct stor6;
uint256 stor7;
mapping of uint256 stor8;
array of address stor9;
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
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
  stop
}

function approve(address arg1, uint256 arg2) {
    require arg1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function withdrawEther(uint256 arg1) {
    require msg.sender == stor4
    call stor4 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require arg1 > 0
    require stor4 != msg.sender
    require balanceOf[address(msg.sender)] >= arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require arg1
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require stor4 != msg.sender
    require arg2 > 0
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
    require arg2
    require arg1 != stor4
    require arg3 > 0
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_56e51605(?) {
    require arg1
    require arg1 != stor4
    require arg2 > 0
    require 0 < stor5.length
    idx = 0
    while stor5[idx] != msg.sender:
        require idx + 1 < stor5.length
        mem[0] = 5
        idx = idx + 1
        continue 
    require None + 2 < stor6.length
    require stor6[None] > 0
    idx = 0
    while idx < uint256(stor9[address(arg1)][arg2]):
        require idx < uint256(stor9[address(arg1)][arg2])
        require address(stor9[address(arg1)][arg2][idx]) != msg.sender
        mem[0] = arg2
        mem[32] = sha3(address(arg1), 9)
        idx = idx + 1
        continue 
    require stor8[address(arg1)][arg2] < stor7
    require stor8[address(arg1)][arg2] + stor6[None] >= stor8[address(arg1)][arg2]
    if stor8[address(arg1)][arg2] + stor6[None] < stor7:
        stor8[address(arg1)][arg2] += stor6[None]
        uint256(stor9[address(arg1)][arg2])++
        address(stor9[address(arg1)][arg2][uint256(stor9[address(arg1)][arg2])]) = msg.sender
        emit 0x14925eb0: msg.sender, stor8[address(arg1)][arg2] + stor6[None], arg2, arg1
    else:
        require balanceOf[stor4] >= arg2
        require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
        stor8[address(arg1)][arg2] = 0
        uint256(stor9[address(arg1)][arg2]) = 0
        idx = 0
        while uint256(stor9[address(arg1)][arg2]) > idx:
            address(stor9[address(arg1)][arg2][idx]) = 0
            idx = idx + 1
            continue 
        require arg2 <= balanceOf[stor4]
        balanceOf[stor4] -= arg2
        require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, stor4, arg1);
    return 1
}



}
