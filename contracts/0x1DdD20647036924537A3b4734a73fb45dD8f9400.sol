contract main {




// =====================  Runtime code  =====================


const name = 'DexiShare Token'

const decimals = 18

const initialSupply = 1000000000 * 10^18

const symbol = 'DXS'


uint256 totalSupply;
address owner;
mapping of uint256 balanceOf;
uint256 stor3;
mapping of uint256 stor4;
uint256 stor5;
mapping of uint256 allowance;

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

function _fallback() payable {
    require msg.sender == owner
    require msg.value > 0
    if msg.value:
        require msg.value
        require msg.value * stor3 / msg.value == stor3
    require totalSupply
    require stor5 + (msg.value * stor3 / totalSupply) >= stor5
    stor5 += msg.value * stor3 / totalSupply
    emit DividendsAdded(msg.value);
}

function divsOwing(address arg1) {
    require stor4[address(arg1)] <= stor5
    if not balanceOf[address(arg1)]:
        if stor3:
            return ((stor5 * balanceOf[address(arg1)]) - (stor4[address(arg1)] * balanceOf[address(arg1)]) / stor3)
    else:
        if balanceOf[address(arg1)]:
            if (stor5 * balanceOf[address(arg1)]) - (stor4[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] == stor5 - stor4[address(arg1)]:
                if stor3:
                    return ((stor5 * balanceOf[address(arg1)]) - (stor4[address(arg1)] * balanceOf[address(arg1)]) / stor3)
    revert
}

function claimDividends() {
    require stor4[address(msg.sender)] <= stor5
    if balanceOf[address(msg.sender)]:
        require balanceOf[address(msg.sender)]
        require (stor5 * balanceOf[address(msg.sender)]) - (stor4[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] == stor5 - stor4[address(msg.sender)]
    require stor3
    if (stor5 * balanceOf[address(msg.sender)]) - (stor4[address(msg.sender)] * balanceOf[address(msg.sender)]) / stor3 > 0:
        call msg.sender with:
           value (stor5 * balanceOf[address(msg.sender)]) - (stor4[address(msg.sender)] * balanceOf[address(msg.sender)]) / stor3 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit DividendsTransferred(msg.sender, (stor5 * balanceOf[address(msg.sender)]) - (stor4[address(msg.sender)] * balanceOf[address(msg.sender)]) / stor3);
    stor4[address(msg.sender)] = stor5
}

function burn(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    require arg1 <= balanceOf[address(msg.sender)]
    require stor4[address(msg.sender)] <= stor5
    if balanceOf[address(msg.sender)]:
        require balanceOf[address(msg.sender)]
        require (stor5 * balanceOf[address(msg.sender)]) - (stor4[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] == stor5 - stor4[address(msg.sender)]
    require stor3
    if (stor5 * balanceOf[address(msg.sender)]) - (stor4[address(msg.sender)] * balanceOf[address(msg.sender)]) / stor3 > 0:
        call msg.sender with:
           value (stor5 * balanceOf[address(msg.sender)]) - (stor4[address(msg.sender)] * balanceOf[address(msg.sender)]) / stor3 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit DividendsTransferred(msg.sender, (stor5 * balanceOf[address(msg.sender)]) - (stor4[address(msg.sender)] * balanceOf[address(msg.sender)]) / stor3);
    stor4[address(msg.sender)] = stor5
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require stor4[address(msg.sender)] <= stor5
    if balanceOf[address(msg.sender)]:
        require balanceOf[address(msg.sender)]
        require (stor5 * balanceOf[address(msg.sender)]) - (stor4[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] == stor5 - stor4[address(msg.sender)]
    require stor3
    if (stor5 * balanceOf[address(msg.sender)]) - (stor4[address(msg.sender)] * balanceOf[address(msg.sender)]) / stor3 > 0:
        call msg.sender with:
           value (stor5 * balanceOf[address(msg.sender)]) - (stor4[address(msg.sender)] * balanceOf[address(msg.sender)]) / stor3 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit DividendsTransferred(msg.sender, (stor5 * balanceOf[address(msg.sender)]) - (stor4[address(msg.sender)] * balanceOf[address(msg.sender)]) / stor3);
    stor4[address(msg.sender)] = stor5
    require stor4[address(arg1)] <= stor5
    if balanceOf[address(arg1)]:
        require balanceOf[address(arg1)]
        require (stor5 * balanceOf[address(arg1)]) - (stor4[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] == stor5 - stor4[address(arg1)]
    require stor3
    if (stor5 * balanceOf[address(arg1)]) - (stor4[address(arg1)] * balanceOf[address(arg1)]) / stor3 > 0:
        call arg1 with:
           value (stor5 * balanceOf[address(arg1)]) - (stor4[address(arg1)] * balanceOf[address(arg1)]) / stor3 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit DividendsTransferred(address(arg1), (stor5 * balanceOf[address(arg1)]) - (stor4[address(arg1)] * balanceOf[address(arg1)]) / stor3);
    stor4[address(arg1)] = stor5
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require stor4[address(arg1)] <= stor5
    if balanceOf[address(arg1)]:
        require balanceOf[address(arg1)]
        require (stor5 * balanceOf[address(arg1)]) - (stor4[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] == stor5 - stor4[address(arg1)]
    require stor3
    if (stor5 * balanceOf[address(arg1)]) - (stor4[address(arg1)] * balanceOf[address(arg1)]) / stor3 > 0:
        call arg1 with:
           value (stor5 * balanceOf[address(arg1)]) - (stor4[address(arg1)] * balanceOf[address(arg1)]) / stor3 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit DividendsTransferred(address(arg1), (stor5 * balanceOf[address(arg1)]) - (stor4[address(arg1)] * balanceOf[address(arg1)]) / stor3);
    stor4[address(arg1)] = stor5
    require stor4[address(arg2)] <= stor5
    if balanceOf[address(arg2)]:
        require balanceOf[address(arg2)]
        require (stor5 * balanceOf[address(arg2)]) - (stor4[address(arg2)] * balanceOf[address(arg2)]) / balanceOf[address(arg2)] == stor5 - stor4[address(arg2)]
    require stor3
    if (stor5 * balanceOf[address(arg2)]) - (stor4[address(arg2)] * balanceOf[address(arg2)]) / stor3 > 0:
        call arg2 with:
           value (stor5 * balanceOf[address(arg2)]) - (stor4[address(arg2)] * balanceOf[address(arg2)]) / stor3 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit DividendsTransferred(address(arg2), (stor5 * balanceOf[address(arg2)]) - (stor4[address(arg2)] * balanceOf[address(arg2)]) / stor3);
    stor4[address(arg2)] = stor5
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
