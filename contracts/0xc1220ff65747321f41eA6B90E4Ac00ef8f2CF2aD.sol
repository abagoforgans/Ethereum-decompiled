contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
array of uint256 name;
array of uint256 symbol;
uint256 totalSupply;
uint256 stor6;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
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

function sub_669fac08(?) {
    if stor0 != msg.sender:
        require msg.sender == stor1
    stor2 = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_f4f69ead(?) {
    if stor0 != msg.sender:
        if stor1 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only admins can run this function.'
    if arg1 > balanceOf[stor2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'You can not burn more tokens than the available amount.'
    require arg1 <= balanceOf[stor2]
    balanceOf[stor2] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Transfer(arg1, stor2, 0);
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The balance of the sender is not high enough.'
    if stor0 != msg.sender:
        if stor1 != msg.sender:
            if block.timestamp < stor6:
                if stor2 != msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Tokens can not be traded until the ICO is over.'
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if stor0 != msg.sender:
        if stor1 != msg.sender:
            if block.timestamp < stor6:
                if stor2 != msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Tokens can not be traded until the ICO is over.'
    if balanceOf[address(arg1)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The balance of the sender is not high enough.'
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        revert with 0, 'The allowance is not big enough.'
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
