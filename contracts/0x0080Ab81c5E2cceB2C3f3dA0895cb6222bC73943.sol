contract main {




// =====================  Runtime code  =====================


const name = 'CTAGtoken'

const totalSupply = 4 * 10^17

const decimals = 8

const symbol = 'CTAG'


address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 feePercent;
uint256 minFee;
address feeHolderAddress;

function minFee() payable {
    return minFee
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function feePercent() payable {
    return feePercent
}

function owner() payable {
    return owner
}

function feeHolder() payable {
    return feeHolderAddress
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setMinFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    minFee = arg1
}

function setFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    feePercent = arg1
}

function setFeeHolder(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    feeHolderAddress = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function getFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        if 0 >= minFee:
            return 0
    else:
        require feePercent * arg1 / arg1 == feePercent
        if feePercent * arg1 / 10^10 >= minFee:
            return (feePercent * arg1 / 10^10)
    return minFee
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= allowance[msg.sender][address(arg1)]
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] = arg2 + allowance[msg.sender][address(arg1)]
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1
    if not arg2:
        if 0 >= minFee:
            require 0 < arg2
            require arg2 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= arg2
            require 0 <= arg2
            require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] += arg2
            require balanceOf[stor5] >= balanceOf[stor5]
            balanceOf[stor5] = balanceOf[stor5]
        else:
            require minFee < arg2
            require arg2 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= arg2
            require minFee <= arg2
            require arg2 - minFee + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] = arg2 - minFee + balanceOf[address(arg1)]
            require minFee + balanceOf[stor5] >= balanceOf[stor5]
            balanceOf[stor5] += minFee
    else:
        require feePercent * arg2 / arg2 == feePercent
        if feePercent * arg2 / 10^10 >= minFee:
            require feePercent * arg2 / 10^10 < arg2
            require arg2 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= arg2
            require feePercent * arg2 / 10^10 <= arg2
            require arg2 - (feePercent * arg2 / 10^10) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] = arg2 - (feePercent * arg2 / 10^10) + balanceOf[address(arg1)]
            require (feePercent * arg2 / 10^10) + balanceOf[stor5] >= balanceOf[stor5]
            balanceOf[stor5] += feePercent * arg2 / 10^10
        else:
            require minFee < arg2
            require arg2 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= arg2
            require minFee <= arg2
            require arg2 - minFee + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] = arg2 - minFee + balanceOf[address(arg1)]
            require minFee + balanceOf[stor5] >= balanceOf[stor5]
            balanceOf[stor5] += minFee
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg2
    if not arg3:
        if 0 >= minFee:
            require 0 < arg3
            require arg3 <= balanceOf[address(arg1)]
            balanceOf[address(arg1)] -= arg3
            require 0 <= arg3
            require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
            balanceOf[address(arg2)] += arg3
            require balanceOf[stor5] >= balanceOf[stor5]
            balanceOf[stor5] = balanceOf[stor5]
        else:
            require minFee < arg3
            require arg3 <= balanceOf[address(arg1)]
            balanceOf[address(arg1)] -= arg3
            require minFee <= arg3
            require arg3 - minFee + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
            balanceOf[address(arg2)] = arg3 - minFee + balanceOf[address(arg2)]
            require minFee + balanceOf[stor5] >= balanceOf[stor5]
            balanceOf[stor5] += minFee
    else:
        require feePercent * arg3 / arg3 == feePercent
        if feePercent * arg3 / 10^10 >= minFee:
            require feePercent * arg3 / 10^10 < arg3
            require arg3 <= balanceOf[address(arg1)]
            balanceOf[address(arg1)] -= arg3
            require feePercent * arg3 / 10^10 <= arg3
            require arg3 - (feePercent * arg3 / 10^10) + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
            balanceOf[address(arg2)] = arg3 - (feePercent * arg3 / 10^10) + balanceOf[address(arg2)]
            require (feePercent * arg3 / 10^10) + balanceOf[stor5] >= balanceOf[stor5]
            balanceOf[stor5] += feePercent * arg3 / 10^10
        else:
            require minFee < arg3
            require arg3 <= balanceOf[address(arg1)]
            balanceOf[address(arg1)] -= arg3
            require minFee <= arg3
            require arg3 - minFee + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
            balanceOf[address(arg2)] = arg3 - minFee + balanceOf[address(arg2)]
            require minFee + balanceOf[stor5] >= balanceOf[stor5]
            balanceOf[stor5] += minFee
    emit Transfer(arg3, arg1, arg2);
    require arg3 <= allowance[address(arg1)][msg.sender]
    require msg.sender
    require arg1
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}



}
