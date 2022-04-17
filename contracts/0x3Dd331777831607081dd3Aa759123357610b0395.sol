contract main {


// =======================  Init code  ======================


address stor0;
mapping of uint256 stor1;
address stor3;
uint256 stor4;

function _fallback() {
    stor4 = 10^9
    stor1[address(msg.sender)] = 10^9
    stor3 = msg.sender
    stor0 = code.data[3064 len 20]
    return code.data[128 len 2924]
}



// =====================  Runtime code  =====================


const name = 'BTCP'

const decimals = 6

const symbol = 'BTCP'


address stor0;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address stor3;
uint256 totalSupply;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) {
    require stor3 == msg.sender
    stor3 = arg1
}

function setFundAddress(address arg1) {
    require stor3 == msg.sender
    stor0 = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function fee() {
    require totalSupply <= 0x3333333333333333333333333333333333333333333333333333333333333333
    require 5 * totalSupply / 10^11 <= -25001
    return ((5 * totalSupply / 10^11) + 25000)
}

function approve(address arg1, uint256 arg2, uint256 arg3) {
    if allowance[address(msg.sender)][address(arg1)] != arg2:
        return 0
    allowance[address(msg.sender)][address(arg1)] = arg3
    emit Approval(arg3, msg.sender, arg1);
    return 1
}

function burnTokens(uint256 arg1) {
    if arg1 > balanceOf[address(msg.sender)]:
        return 0
    if arg1 > 0:
        require balanceOf[address(msg.sender)] >= arg1
        balanceOf[address(msg.sender)] -= arg1
        require totalSupply >= arg1
        totalSupply -= arg1
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require totalSupply <= 0x3333333333333333333333333333333333333333333333333333333333333333
    require 5 * totalSupply / 10^11 <= -25001
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 > (5 * totalSupply / 10^11) + 25000:
        if arg1 != msg.sender:
            require balanceOf[address(msg.sender)] >= arg2
            balanceOf[address(msg.sender)] -= arg2
            require arg2 >= (5 * totalSupply / 10^11) + 25000
            require balanceOf[arg1] <= -arg2 + (5 * totalSupply / 10^11) + 24999
            balanceOf[address(arg1)] = arg2 + -(5 * totalSupply / 10^11) + balanceOf[arg1] - 25000
            require (5 * totalSupply / 10^11) + 25000 >= (5 * totalSupply / 10^11) + 25000 / 2
            require balanceOf[stor0] <= -(5 * totalSupply / 10^11) + ((5 * totalSupply / 10^11) + 25000 / 2) - 25001
            balanceOf[stor0] = (5 * totalSupply / 10^11) + -((5 * totalSupply / 10^11) + 25000 / 2) + balanceOf[stor0] + 25000
            require totalSupply >= (5 * totalSupply / 10^11) + 25000 / 2
            totalSupply -= (5 * totalSupply / 10^11) + 25000 / 2
            emit Transfer(((5 * totalSupply / 10^11) + -((5 * totalSupply / 10^11) + 25000 / 2) + 25000), msg.sender, stor0);
            require arg2 >= (5 * totalSupply / 10^11) + 25000
            emit Transfer((arg2 + -(5 * totalSupply / 10^11) - 25000), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require totalSupply <= 0x3333333333333333333333333333333333333333333333333333333333333333
    require 5 * totalSupply / 10^11 <= -25001
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if balanceOf[address(arg1)] < arg3:
        return 0
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    if arg3 > (5 * totalSupply / 10^11) + 25000:
        if arg1 != arg2:
            require balanceOf[address(arg1)] >= arg3
            balanceOf[address(arg1)] -= arg3
            require arg3 >= (5 * totalSupply / 10^11) + 25000
            require balanceOf[arg2] <= -arg3 + (5 * totalSupply / 10^11) + 24999
            balanceOf[address(arg2)] = arg3 + -(5 * totalSupply / 10^11) + balanceOf[arg2] - 25000
            require (5 * totalSupply / 10^11) + 25000 >= (5 * totalSupply / 10^11) + 25000 / 2
            require balanceOf[stor0] <= -(5 * totalSupply / 10^11) + ((5 * totalSupply / 10^11) + 25000 / 2) - 25001
            balanceOf[stor0] = (5 * totalSupply / 10^11) + -((5 * totalSupply / 10^11) + 25000 / 2) + balanceOf[stor0] + 25000
            require totalSupply >= (5 * totalSupply / 10^11) + 25000 / 2
            totalSupply -= (5 * totalSupply / 10^11) + 25000 / 2
            emit Transfer(((5 * totalSupply / 10^11) + -((5 * totalSupply / 10^11) + 25000 / 2) + 25000), msg.sender, stor0);
            require arg3 >= (5 * totalSupply / 10^11) + 25000
            emit Transfer((arg3 + -(5 * totalSupply / 10^11) - 25000), arg1, arg2);
    return 1
}



}
