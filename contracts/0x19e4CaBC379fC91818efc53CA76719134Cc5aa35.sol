contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint8 stor7;
array of struct stor8;
mapping of uint8 stor9;
mapping of uint8 stor10;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function inWhiteList(address arg1) {
    return bool(stor7[address(arg1)])
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function inQuitLock(address arg1) {
    return bool(stor9[address(arg1)])
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function setQuitLock(address arg1) {
    if owner != msg.sender:
        revert with 0, 'you are not the owner!'
    if not stor7[address(arg1)]:
        revert with 0, 'account is not in whiteList'
    stor9[address(arg1)] = 1
}

function approve(address arg1, uint256 arg2) {
    if not arg1:
        revert with 0, 'cannot approve to ZERO address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    if not arg1:
        revert with 0, 'cannot approve to ZERO address'
    require arg2 <= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function inTradingTime() {
    idx = 0
    while idx < stor8.length:
        mem[0] = 8
        if block.timestamp <= stor8[idx].field_0:
            idx = idx + 2
            continue 
        require idx + 1 < stor8.length
        mem[0] = 8
        if block.timestamp >= stor8[idx].field_256:
            idx = idx + 2
            continue 
        return 1
    return 0
}

function increaseAllowance(address arg1, uint256 arg2) {
    if not arg1:
        revert with 0, 'cannot approve to ZERO address'
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function burn(address arg1, uint256 arg2) {
    if owner != msg.sender:
        revert with 0, 'you are not the owner!'
    if not arg1:
        revert with 0, 'cannot burn from ZERO address'
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, 'the balance is not enough'
    require arg2 <= totalSupply
    totalSupply -= arg2
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    emit Transfer(arg2, arg1, 0);
    return 1
}

function mint(address arg1, uint256 arg2) {
    if owner != msg.sender:
        revert with 0, 'you are not the owner!'
    if not stor7[address(arg1)]:
        revert with 0, 'account is not in whiteList'
    if not arg1:
        revert with 0, 'cannot mint to ZERO address'
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    return 0
}

function forceTransferBalance(address arg1, address arg2, uint256 arg3) {
    if owner != msg.sender:
        revert with 0, 'you are not the owner!'
    if not stor7[address(arg2)]:
        revert with 0, 'to address is not in whiteList'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 'the balance is not enough'
    if not arg2:
        revert with 0, 'cannot transfer to ZERO address'
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
}

function setWhiteList(address[] arg1, bool[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if owner != msg.sender:
        revert with 0, 'you are not the owner!'
    if arg1.length != arg2.length:
        revert with 0, 'The length of address array is not equal to the length of status array!'
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 7
        stor7[mem[(32 * idx) + 140 len 20]] = uint8(bool(mem[(32 * idx) + (32 * arg1.length) + 160]))
        idx = idx + 1
        continue 
}

function getTradingTime() {
    if not stor8.length:
        mem[(32 * stor8.length) + 128] = 32
        mem[(32 * stor8.length) + 160] = stor8.length
        mem[(32 * stor8.length) + 192 len floor32(stor8.length)] = mem[128 len floor32(stor8.length)]
        return memory
          from (32 * stor8.length) + 128
           len (96 * stor8.length) + 64
    mem[128] = uint256(stor8.field_0)
    idx = 128
    s = 0
    while (32 * stor8.length) + 96 > idx:
        mem[idx + 32] = stor8[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor8.length) + 192 len floor32(stor8.length)] = mem[128 len floor32(stor8.length)]
    return Array(len=stor8.length, data=mem[128 len floor32(stor8.length)], mem[(32 * stor8.length) + floor32(stor8.length) + 192 len (32 * stor8.length) - floor32(stor8.length)]), 
}

function replaceAccount(address arg1, address arg2) {
    if owner != msg.sender:
        revert with 0, 'you are not the owner!'
    if not stor7[address(arg1)]:
        revert with 0, 'old account is not in whiteList'
    stor7[address(arg2)] = 1
    if owner != msg.sender:
        revert with 0, 'you are not the owner!'
    if not stor7[address(arg2)]:
        revert with 0, 'to address is not in whiteList'
    if balanceOf[address(arg1)] > balanceOf[address(arg1)]:
        revert with 0, 'the balance is not enough'
    if not arg2:
        revert with 0, 'cannot transfer to ZERO address'
    require balanceOf[address(arg1)] <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] = 0
    require balanceOf[address(arg2)] + balanceOf[address(arg1)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += balanceOf[address(arg1)]
    emit Transfer(balanceOf[address(arg1)], arg1, arg2);
    stor7[address(arg1)] = 0
}

function removeQuitAccount(address arg1) {
    if owner != msg.sender:
        revert with 0, 'you are not the owner!'
    if not stor9[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'the account is not in quit lock status'
    if owner != msg.sender:
        revert with 0, 'you are not the owner!'
    if not stor7[stor3]:
        revert with 0, 'to address is not in whiteList'
    if balanceOf[address(arg1)] > balanceOf[address(arg1)]:
        revert with 0, 'the balance is not enough'
    if not owner:
        revert with 0, 'cannot transfer to ZERO address'
    require balanceOf[address(arg1)] <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] = 0
    require balanceOf[stor3] + balanceOf[address(arg1)] >= balanceOf[stor3]
    balanceOf[stor3] += balanceOf[address(arg1)]
    emit Transfer(balanceOf[address(arg1)], arg1, owner);
    stor7[address(arg1)] = 0
    stor9[address(arg1)] = 0
}

function transferOwnership(address arg1) {
    if owner != msg.sender:
        revert with 0, 'you are not the owner!'
    stor7[address(arg1)] = 1
    if balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
        revert with 0, 'the balance is not enough'
    if not arg1:
        revert with 0, 'cannot transfer to ZERO address'
    require balanceOf[address(msg.sender)] <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] = 0
    require balanceOf[address(arg1)] + balanceOf[address(msg.sender)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += balanceOf[address(msg.sender)]
    emit Transfer(balanceOf[address(msg.sender)], msg.sender, arg1);
    stor7[address(msg.sender)] = 0
    if owner != msg.sender:
        revert with 0, 'you are not the owner!'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'cannot transfer ownership to ZERO address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setTradingTime(uint256[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if owner != msg.sender:
        revert with 0, 'you are not the owner!'
    if bool(arg1.length):
        revert with 0, 'the length of times must be even number'
    idx = 0
    while idx < arg1.length:
        require idx + 1 < arg1.length
        require idx < arg1.length
        if mem[(32 * idx) + 128] >= mem[(32 * idx + 1) + 128]:
            revert with 0, 'end time must be greater than start time'
        idx = idx + 2
        continue 
    stor8.length = arg1.length
    if not arg1.length:
        idx = 0
        while stor8.length > idx:
            stor8[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            stor8[s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while stor8.length > idx:
            stor8[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function transfer(address arg1, uint256 arg2) {
    if not stor7[address(msg.sender)]:
        revert with 0, 'caller is not in whiteList'
    if not stor7[address(arg1)]:
        revert with 0, 'to address is not in whiteList'
    if not stor9[address(msg.sender)]:
        if owner != msg.sender:
            idx = 0
            while idx < stor8.length:
                mem[0] = 8
                if block.timestamp <= stor8[idx].field_0:
                    idx = idx + 2
                    continue 
                require idx + 1 < stor8.length
                mem[0] = 8
                if block.timestamp >= stor8[idx].field_256:
                    idx = idx + 2
                    continue 
                if arg2 > balanceOf[address(msg.sender)]:
                    revert with 0, 'the balance is not enough'
                if not arg1:
                    revert with 0, 'cannot transfer to ZERO address'
                require arg2 <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] -= arg2
                require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
                return 1
            revert with 0, 'now is not trading time'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 'the balance is not enough'
    if not arg1:
        revert with 0, 'cannot transfer to ZERO address'
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if not stor7[address(arg1)]:
        revert with 0, 'from address is not in whiteList'
    if not stor7[address(arg2)]:
        revert with 0, 'to address is not in whiteList'
    if not stor9[address(msg.sender)]:
        idx = 0
        while idx < stor8.length:
            mem[0] = 8
            if block.timestamp <= stor8[idx].field_0:
                idx = idx + 2
                continue 
            require idx + 1 < stor8.length
            mem[0] = 8
            if block.timestamp >= stor8[idx].field_256:
                idx = idx + 2
                continue 
            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                revert with 0, 'the balance is not enough'
            require arg3 <= allowance[address(arg1)][address(msg.sender)]
            allowance[address(arg1)][address(msg.sender)] -= arg3
            if arg3 > balanceOf[address(arg1)]:
                revert with 0, 'the balance is not enough'
            if not arg2:
                revert with 0, 'cannot transfer to ZERO address'
            require arg3 <= balanceOf[address(arg1)]
            balanceOf[address(arg1)] -= arg3
            require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
            balanceOf[address(arg2)] += arg3
            emit Transfer(arg3, arg1, arg2);
            return 1
        revert with 0, 'now is not trading time'
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 'the balance is not enough'
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 'the balance is not enough'
    if not arg2:
        revert with 0, 'cannot transfer to ZERO address'
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function batchTransfer(bytes32 arg1, address[] arg2, uint256[] arg3) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    if owner != msg.sender:
        revert with 0, 'you are not the owner!'
    if arg2.length != arg3.length:
        revert with 0, 'The length of address array is not equal to the length of value array!'
    if stor10[arg1]:
        revert with 0, 'This batch number has already been used!'
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        _65 = mem[(32 * idx) + 128]
        require idx < arg3.length
        _67 = mem[(32 * idx) + (32 * arg2.length) + 160]
        if not stor7[address(msg.sender)]:
            revert with 0, 'caller is not in whiteList'
        if not stor7[address(mem[(32 * idx) + 128])]:
            revert with 0, 'to address is not in whiteList'
        if not stor9[address(msg.sender)]:
            if owner != msg.sender:
                s = 0
                while s < stor8.length:
                    mem[0] = 8
                    if block.timestamp <= stor8[s].field_0:
                        s = s + 2
                        continue 
                    require s + 1 < stor8.length
                    mem[0] = 8
                    if block.timestamp >= stor8[s].field_256:
                        s = s + 2
                        continue 
                    if _67 > balanceOf[address(msg.sender)]:
                        revert with 0, 'the balance is not enough'
                    if not address(_65):
                        revert with 0, 'cannot transfer to ZERO address'
                    require _67 <= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] -= _67
                    require balanceOf[address(_65)] + _67 >= balanceOf[address(_65)]
                    mem[0] = address(_65)
                    mem[32] = 0
                    balanceOf[address(_65)] += _67
                    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = _67
                    emit Transfer(_67, msg.sender, address(_65));
                    idx = idx + 1
                    continue 
                revert with 0, 'now is not trading time'
        if mem[(32 * idx) + (32 * arg2.length) + 160] > balanceOf[address(msg.sender)]:
            revert with 0, 'the balance is not enough'
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'cannot transfer to ZERO address'
        require mem[(32 * idx) + (32 * arg2.length) + 160] <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= mem[(32 * idx) + (32 * arg2.length) + 160]
        require balanceOf[address(mem[(32 * idx) + 128])] + mem[(32 * idx) + (32 * arg2.length) + 160] >= balanceOf[address(mem[(32 * idx) + 128])]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 0
        balanceOf[address(mem[(32 * idx) + 128])] += mem[(32 * idx) + (32 * arg2.length) + 160]
        mem[(32 * arg2.length) + (32 * arg3.length) + 160] = mem[(32 * idx) + (32 * arg2.length) + 160]
        emit Transfer(mem[(32 * arg2.length) + (32 * arg3.length) + 160], msg.sender, address(_65));
        idx = idx + 1
        continue 
    stor10[arg1] = 1
}



}
