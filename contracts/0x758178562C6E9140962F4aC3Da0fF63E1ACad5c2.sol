contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 initialSupply;
mapping of uint256 freezeList;
array of struct lockedListSize;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function initialSupply() payable {
    return initialSupply
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function getLockedListSize(address arg1) payable {
    require calldata.size - 4 >= 32
    return lockedListSize[address(arg1)].field_0
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function freezeList(address arg1) payable {
    require calldata.size - 4 >= 32
    return freezeList[arg1]
}

function lockList(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < lockedListSize[arg1].field_0
    return lockedListSize[arg1][arg2].field_0, lockedListSize[arg1][arg2].field_256
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function getLockedAmountAt(address arg1, uint8 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < lockedListSize[address(arg1)].field_0
    return lockedListSize[address(arg1)][2 * uint8(arg2)].field_256
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function isFreeze(address arg1) payable {
    require calldata.size - 4 >= 32
    return (freezeList[address(arg1)] == 1)
}

function renounceOwnership() payable {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function unFreeze(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    freezeList[address(arg1)] = 0
    return freezeList[address(arg1)] != 1
}

function freeze(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    freezeList[address(arg1)] = 1
    return (freezeList[address(arg1)] == 1)
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

function getLockedTimeAt(address arg1, uint8 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < lockedListSize[address(arg1)].field_0
    require block.timestamp <= lockedListSize[address(arg1)][2 * uint8(arg2)].field_0
    return (lockedListSize[address(arg1)][2 * uint8(arg2)].field_0 - block.timestamp)
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= allowance[address(msg.sender)][address(arg1)]
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function isLocked(address arg1) payable {
    require calldata.size - 4 >= 32
    if lockedListSize[address(arg1)].field_0 > 0:
        idx = 0
        while idx < lockedListSize[address(arg1)].field_0:
            require idx < lockedListSize[address(arg1)].field_0
            if lockedListSize[address(arg1)][idx].field_0 - block.timestamp > 0:
                return 1
            mem[0] = arg1
            mem[32] = 9
            idx = idx + 1
            continue 
        return 0
    else:
        return 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require msg.sender
    require arg1
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function getLockedAmount(address arg1) payable {
    require calldata.size - 4 >= 32
    if lockedListSize[address(arg1)].field_0 > 0:
        idx = 0
        while idx < lockedListSize[address(arg1)].field_0:
            require idx < lockedListSize[address(arg1)].field_0
            if lockedListSize[address(arg1)][idx].field_0 - block.timestamp > 0:
                idx = 0
                s = 0
                while uint8(idx) < lockedListSize[address(arg1)].field_0:
                    require uint8(idx) < lockedListSize[address(arg1)].field_0
                    require block.timestamp <= lockedListSize[address(arg1)][2 * uint8(idx)].field_0
                    if lockedListSize[address(arg1)][2 * uint8(idx)].field_0 - block.timestamp <= block.timestamp:
                        mem[0] = arg1
                        mem[32] = 9
                        idx = idx + 1
                        s = s
                        continue 
                    require uint8(idx) < lockedListSize[address(arg1)].field_0
                    require s + lockedListSize[address(arg1)][2 * uint8(idx)].field_256 >= s
                    mem[0] = arg1
                    mem[32] = 9
                    idx = idx + 1
                    s = s + lockedListSize[address(arg1)][2 * uint8(idx)].field_256
                    continue 
                return s
            mem[0] = arg1
            mem[32] = 9
            idx = idx + 1
            continue 
        return 0
    else:
        return 0
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require freezeList[address(msg.sender)] != 1
    if lockedListSize[address(arg1)].field_0 > 0:
        idx = 0
        while idx < lockedListSize[address(arg1)].field_0:
            require idx < lockedListSize[address(arg1)].field_0
            if lockedListSize[address(arg1)][idx].field_0 - block.timestamp <= 0:
                mem[0] = arg1
                mem[32] = 9
                idx = idx + 1
                continue 
            require arg1
            require arg2 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= arg2
            require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
            return 1
    require arg2 <= balanceOf[address(msg.sender)]
    if lockedListSize[address(msg.sender)].field_0 > 0:
        idx = 0
        while idx < lockedListSize[address(msg.sender)].field_0:
            require idx < lockedListSize[address(msg.sender)].field_0
            if lockedListSize[address(msg.sender)][idx].field_0 - block.timestamp <= 0:
                mem[0] = msg.sender
                mem[32] = 9
                idx = idx + 1
                continue 
            idx = 0
            s = 0
            while uint8(idx) < lockedListSize[address(msg.sender)].field_0:
                require uint8(idx) < lockedListSize[address(msg.sender)].field_0
                require block.timestamp <= lockedListSize[address(msg.sender)][2 * uint8(idx)].field_0
                if lockedListSize[address(msg.sender)][2 * uint8(idx)].field_0 - block.timestamp <= block.timestamp:
                    mem[0] = msg.sender
                    mem[32] = 9
                    idx = idx + 1
                    s = s
                    continue 
                require uint8(idx) < lockedListSize[address(msg.sender)].field_0
                require s + lockedListSize[address(msg.sender)][2 * uint8(idx)].field_256 >= s
                mem[0] = msg.sender
                mem[32] = 9
                idx = idx + 1
                s = s + lockedListSize[address(msg.sender)][2 * uint8(idx)].field_256
                continue 
            require balanceOf[address(msg.sender)] - arg2 >= s
            require arg1
            require arg2 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= arg2
            require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
            return 1
    require balanceOf[address(msg.sender)] - arg2 >= 0
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferAndLock(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require freezeList[address(msg.sender)] != 1
    if lockedListSize[address(arg1)].field_0 > 0:
        idx = 0
        while idx < lockedListSize[address(arg1)].field_0:
            require idx < lockedListSize[address(arg1)].field_0
            if lockedListSize[address(arg1)][idx].field_0 - block.timestamp <= 0:
                mem[0] = arg1
                mem[32] = 9
                idx = idx + 1
                continue 
            require arg1
            require arg2 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= arg2
            require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
            lockedListSize[address(arg1)].field_0++
            lockedListSize[address(arg1)][lockedListSize[address(arg1)].field_0].field_0 = arg3 + block.timestamp
            lockedListSize[address(arg1)][lockedListSize[address(arg1)].field_0].field_256 = arg2
            return 1
    require arg2 <= balanceOf[address(msg.sender)]
    if lockedListSize[address(msg.sender)].field_0 > 0:
        idx = 0
        while idx < lockedListSize[address(msg.sender)].field_0:
            require idx < lockedListSize[address(msg.sender)].field_0
            if lockedListSize[address(msg.sender)][idx].field_0 - block.timestamp <= 0:
                mem[0] = msg.sender
                mem[32] = 9
                idx = idx + 1
                continue 
            idx = 0
            s = 0
            while uint8(idx) < lockedListSize[address(msg.sender)].field_0:
                require uint8(idx) < lockedListSize[address(msg.sender)].field_0
                require block.timestamp <= lockedListSize[address(msg.sender)][2 * uint8(idx)].field_0
                if lockedListSize[address(msg.sender)][2 * uint8(idx)].field_0 - block.timestamp <= block.timestamp:
                    mem[0] = msg.sender
                    mem[32] = 9
                    idx = idx + 1
                    s = s
                    continue 
                require uint8(idx) < lockedListSize[address(msg.sender)].field_0
                require s + lockedListSize[address(msg.sender)][2 * uint8(idx)].field_256 >= s
                mem[0] = msg.sender
                mem[32] = 9
                idx = idx + 1
                s = s + lockedListSize[address(msg.sender)][2 * uint8(idx)].field_256
                continue 
            require balanceOf[address(msg.sender)] - arg2 >= s
            require arg1
            require arg2 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= arg2
            require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
            lockedListSize[address(arg1)].field_0++
            lockedListSize[address(arg1)][lockedListSize[address(arg1)].field_0].field_0 = arg3 + block.timestamp
            lockedListSize[address(arg1)][lockedListSize[address(arg1)].field_0].field_256 = arg2
            return 1
    require balanceOf[address(msg.sender)] - arg2 >= 0
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    lockedListSize[address(arg1)].field_0++
    lockedListSize[address(arg1)][lockedListSize[address(arg1)].field_0].field_0 = arg3 + block.timestamp
    lockedListSize[address(arg1)][lockedListSize[address(arg1)].field_0].field_256 = arg2
    return 1
}



}
