contract main {




// =====================  Runtime code  =====================


const name = 'TreeBlock Coin'

const decimals = 18

const symbol = 'TREX'


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
address owner;
address stor5;
address stor6;
address stor7;
address stor8;
address stor9;
address stor10;
address stor11;
address stor12;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function _fallback() payable {
    require msg.value >= 10^16
    call stor9 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function burn(uint256 arg1) {
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function mintToken(address arg1, uint256 arg2) {
    require msg.sender == owner
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    emit Transfer(arg2, 0, this.address);
    emit Transfer(arg2, this.address, arg1);
}

function transfer(address arg1, uint256 arg2) {
    if msg.sender == stor7:
        require block.timestamp >= 442824 * 24 * 3600
    if msg.sender == stor9:
        require block.timestamp >= 429696 * 24 * 3600
    else:
        if msg.sender == stor10:
            require block.timestamp >= 429696 * 24 * 3600
        else:
            if msg.sender == stor11:
                require block.timestamp >= 429696 * 24 * 3600
    if stor5 != msg.sender:
        if stor6 != msg.sender:
            if stor8 != msg.sender:
                if stor12 != msg.sender:
                    require block.timestamp >= 425280 * 24 * 3600
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if arg1 == stor7:
        require block.timestamp >= 442824 * 24 * 3600
    if arg1 == stor9:
        require block.timestamp >= 429696 * 24 * 3600
    else:
        if arg1 == stor10:
            require block.timestamp >= 429696 * 24 * 3600
        else:
            if arg1 == stor11:
                require block.timestamp >= 429696 * 24 * 3600
    if arg1 != stor5:
        if arg1 != stor6:
            if arg1 != stor8:
                if arg1 != stor12:
                    require block.timestamp >= 425280 * 24 * 3600
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 0
}



}
