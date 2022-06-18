contract main {




// =====================  Runtime code  =====================


const name = 'COB Token'

const decimals = 18

const version = '2.0'

const symbol = 'COB'


address owner;
mapping of uint256 balanceOf;
uint256 totalSupply;
uint256 sub_d2ab8ed1;
uint256 stor4;
uint256 stor5;
uint8 stor6;
mapping of uint256 allowance;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function sub_d2ab8ed1(?) {
    return sub_d2ab8ed1
}

function totalAvailable() {
    return balanceOf[stor0]
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function getPrices() {
    return stor5, stor4
}

function lock() {
    if owner != msg.sender:
        revert with 0, 'Sender not authorized.'
    if stor6:
        revert with 0, 'Transafers are already locked'
    stor6 = 1
}

function unlock() {
    if owner != msg.sender:
        revert with 0, 'Sender not authorized.'
    if bool(stor6) != 1:
        revert with 0, 'Transafers are already unlocked'
    stor6 = 0
}

function setPrices(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Sender not authorized.'
    stor5 = arg1
    stor4 = arg2
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Sender not authorized.'
    if not arg1:
        revert with 0, 'Owner must be different'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function increaseApproval(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Sender not authorized.'
    if balanceOf[stor0] < arg1:
        revert with 0, 'Cannot burn more than we have'
    require arg1 <= balanceOf[stor0]
    balanceOf[stor0] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function mintToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Sender not authorized.'
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    emit Transfer(arg2, 0, this.address);
    emit Transfer(arg2, this.address, arg1);
}

function burnFrom(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Sender not authorized.'
    if balanceOf[address(arg1)] < arg2:
        revert with 0, 'Cannot burn more than we have'
    if arg2 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 'No allowance for this'
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    require sub_d2ab8ed1 + arg2 >= sub_d2ab8ed1
    sub_d2ab8ed1 += arg2
    emit Burn(arg2, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor6:
        if owner != msg.sender:
            revert with 0, 'Transafers are currently locked'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Must set an address to receive the tokens'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 'Not enough funds'
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    if msg.sender == owner:
        require sub_d2ab8ed1 + arg2 >= sub_d2ab8ed1
        sub_d2ab8ed1 += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if stor6:
        if owner != msg.sender:
            revert with 0, 'Transfers are currently locked'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Must set an address to send the token'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 'Not enough funds'
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 'Amount exceeds your limit'
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    if msg.sender == owner:
        require sub_d2ab8ed1 + arg3 >= sub_d2ab8ed1
        sub_d2ab8ed1 += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function buy() payable {
    if stor4 <= 0:
        revert with 0, 'Token not available'
    require stor4
    if stor6:
        if owner != msg.sender:
            revert with 0, 'Transfers are currently locked'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Must set an address to send the token'
    if msg.value / stor4 > balanceOf[stor0]:
        revert with 0, 'Not enough funds'
    if msg.value / stor4 > allowance[stor0][address(msg.sender)]:
        revert with 0, 'Amount exceeds your limit'
    require msg.value / stor4 <= balanceOf[stor0]
    balanceOf[stor0] -= msg.value / stor4
    require balanceOf[address(msg.sender)] + (msg.value / stor4) >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += msg.value / stor4
    require msg.value / stor4 <= allowance[stor0][address(msg.sender)]
    allowance[stor0][address(msg.sender)] -= msg.value / stor4
    if msg.sender == owner:
        require sub_d2ab8ed1 + (msg.value / stor4) >= sub_d2ab8ed1
        sub_d2ab8ed1 += msg.value / stor4
    emit Transfer((msg.value / stor4), owner, msg.sender);
}

function sell(uint256 arg1) {
    require calldata.size - 4 >= 32
    if balanceOf[address(msg.sender)] < arg1:
        revert with 0, 'You don't have enough tokens'
    if not arg1:
        if eth.balance(owner) <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'The contract does not have enough ether to buy your tokens'
    else:
        require arg1
        require arg1 * stor5 / arg1 == stor5
        if eth.balance(owner) <= arg1 * stor5:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'The contract does not have enough ether to buy your tokens'
    if stor6:
        if owner != msg.sender:
            revert with 0, 'Transfers are currently locked'
    if not owner:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Must set an address to send the token'
    if arg1 > balanceOf[address(msg.sender)]:
        revert with 0, 'Not enough funds'
    if arg1 > allowance[address(msg.sender)][address(msg.sender)]:
        revert with 0, 'Amount exceeds your limit'
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require balanceOf[stor0] + arg1 >= balanceOf[stor0]
    balanceOf[stor0] += arg1
    require arg1 <= allowance[address(msg.sender)][address(msg.sender)]
    allowance[address(msg.sender)][address(msg.sender)] -= arg1
    if msg.sender == owner:
        require sub_d2ab8ed1 + arg1 >= sub_d2ab8ed1
        sub_d2ab8ed1 += arg1
    emit Transfer(arg1, msg.sender, owner);
    if not arg1:
        call msg.sender with:
             gas 2300 wei
    else:
        require arg1
        require arg1 * stor5 / arg1 == stor5
        call msg.sender with:
           value arg1 * stor5 wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
