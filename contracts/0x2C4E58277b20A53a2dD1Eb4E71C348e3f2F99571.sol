contract main {




// =====================  Runtime code  =====================


const name = 'SYNCoin'

const getSymbol = SYNC

const getName = 'SYNCoin'

const getTokenDecimals = 18

const decimals = 18

const symbol = SYNC


address owner;
mapping of uint256 balanceOf;
mapping of uint256 stor3;
mapping of uint256 totalAllowed;
uint256 totalSupply;
uint256 cap;
uint8 mintingFinished;

function mintingFinished() payable {
    return bool(mintingFinished)
}

function totalSupply() payable {
    return totalSupply
}

function getTokenCap() payable {
    return cap
}

function cap() payable {
    return cap
}

function getMintingFinished() payable {
    return bool(mintingFinished)
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function owner() payable {
    return owner
}

function getTotalAllowed(address arg1) payable {
    require calldata.size - 4 >= 32
    return totalAllowed[address(arg1)]
}

function destroy() payable {
    require msg.sender == owner
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function finishMinting() payable {
    require not mintingFinished
    require msg.sender == owner
    emit MintFinished()
}

function setTokenCap(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    cap = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 != msg.sender:
        if arg2 != msg.sender:
            require msg.sender == owner
    return stor3[address(arg1)][address(arg2)]
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 != msg.sender
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    require msg.sender
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require arg1
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function approve(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require msg.sender == arg1
    require arg2
    if msg.sender != msg.sender:
        if arg2 != msg.sender:
            require msg.sender == owner
    require stor3[address(msg.sender)][address(arg2)] <= totalAllowed[address(msg.sender)]
    require arg3 >= 0
    require totalAllowed[address(msg.sender)] - stor3[address(msg.sender)][address(arg2)] + arg3 <= balanceOf[address(msg.sender)]
    stor3[address(msg.sender)][address(arg2)] = arg3
    totalAllowed[address(msg.sender)] = totalAllowed[address(msg.sender)] - stor3[address(msg.sender)][address(arg2)] + arg3
    emit Approval(arg3, msg.sender, arg2);
}

function increaseApproval(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require msg.sender == arg1
    require stor3[address(arg1)][address(arg2)] + arg3 >= stor3[address(arg1)][address(arg2)]
    require arg2
    if arg1 != msg.sender:
        if arg2 != msg.sender:
            require msg.sender == owner
    require stor3[address(arg1)][address(arg2)] <= totalAllowed[address(arg1)]
    require stor3[address(arg1)][address(arg2)] + arg3 >= 0
    require totalAllowed[address(arg1)] + arg3 <= balanceOf[address(arg1)]
    stor3[address(arg1)][address(arg2)] += arg3
    totalAllowed[address(arg1)] += arg3
    if arg1 != msg.sender:
        if arg2 != msg.sender:
            require msg.sender == owner
    emit Approval(stor3[address(arg1)][address(arg2)], arg1, arg2);
}

function updateTokenInvestorBalance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require not mintingFinished
    if arg2 <= balanceOf[address(arg1)]:
        require arg2 <= balanceOf[address(arg1)]
        require balanceOf[address(arg1)] - arg2 <= totalSupply
        totalSupply = totalSupply - balanceOf[address(arg1)] + arg2
    else:
        require balanceOf[address(arg1)] <= arg2
        require totalSupply + arg2 - balanceOf[address(arg1)] >= totalSupply
        require totalSupply + arg2 - balanceOf[address(arg1)] <= cap
        require totalSupply + arg2 - balanceOf[address(arg1)] >= totalSupply
        totalSupply = totalSupply + arg2 - balanceOf[address(arg1)]
    require arg1
    balanceOf[address(arg1)] = arg2
    emit Transfer(arg2, 0, arg1);
}

function decreaseApproval(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require msg.sender == arg1
    require arg2
    if arg1 != msg.sender:
        if arg2 != msg.sender:
            require msg.sender == owner
    require stor3[address(arg1)][address(arg2)] <= totalAllowed[address(arg1)]
    if arg3 > stor3[address(arg1)][address(arg2)]:
        require totalAllowed[address(arg1)] - stor3[address(arg1)][address(arg2)] <= balanceOf[address(arg1)]
        stor3[address(arg1)][address(arg2)] = 0
        totalAllowed[address(arg1)] -= stor3[address(arg1)][address(arg2)]
    else:
        require stor3[address(arg1)][address(arg2)] - arg3 >= 0
        require totalAllowed[address(arg1)] - arg3 <= balanceOf[address(arg1)]
        stor3[address(arg1)][address(arg2)] -= arg3
        totalAllowed[address(arg1)] -= arg3
    if arg1 != msg.sender:
        if arg2 != msg.sender:
            require msg.sender == owner
    emit Approval(stor3[address(arg1)][address(arg2)], arg1, arg2);
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= balanceOf[address(arg1)]
    if arg1 != msg.sender:
        if arg2 != msg.sender:
            require msg.sender == owner
    require arg3 <= stor3[address(arg1)][address(arg2)]
    require arg3 <= balanceOf[address(arg1)]
    require arg1
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require arg2
    balanceOf[address(arg2)] += arg3
    if arg1 != msg.sender:
        if arg2 != msg.sender:
            require msg.sender == owner
    require arg3 <= stor3[address(arg1)][address(arg2)]
    require arg2
    if arg1 != msg.sender:
        if arg2 != msg.sender:
            require msg.sender == owner
    require stor3[address(arg1)][address(arg2)] <= totalAllowed[address(arg1)]
    require stor3[address(arg1)][address(arg2)] - arg3 >= 0
    require totalAllowed[address(arg1)] - arg3 <= balanceOf[address(arg1)]
    stor3[address(arg1)][address(arg2)] -= arg3
    totalAllowed[address(arg1)] -= arg3
    emit Transfer(arg3, arg1, arg2);
}



}
