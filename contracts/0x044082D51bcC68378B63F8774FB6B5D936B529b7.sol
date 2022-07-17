contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint8 stor3; offset 160
address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address stor6;
address sub_a8326b6eAddress; offset 8
mapping of uint256 sub_a6b3aae3;
mapping of uint256 releasedAmount;
array of struct allocations;

function allocations(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < allocations[arg1].field_0
    return allocations[arg1][arg2].field_0, allocations[arg1][arg2].field_256
}

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function releasedAmount(address arg1) payable {
    require calldata.size - 4 >= 32
    return releasedAmount[arg1]
}

function decimals() payable {
    return decimals
}

function paused() payable {
    return bool(uint8(stor3.field_160))
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function sub_a6b3aae3(?) payable {
    require calldata.size - 4 >= 32
    return sub_a6b3aae3[arg1]
}

function sub_a8326b6e(?) payable {
    return sub_a8326b6eAddress
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function unpause() payable {
    require msg.sender == owner
    require uint8(stor3.field_160)
    uint8(stor3.field_160) = 0
    emit Unpause()
}

function pause() payable {
    require msg.sender == owner
    require not uint8(stor3.field_160)
    uint8(stor3.field_160) = 1
    emit Pause()
}

function sub_8eaa2296(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    sub_a8326b6eAddress = arg1
    emit 0x71910a15: arg1
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
    require not uint8(stor3.field_160)
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    emit 0xfeddf252: arg1, msg.sender, 0
}

function balanceOfLocked(address arg1) payable {
    require calldata.size - 4 >= 32
    if sub_a6b3aae3[address(arg1)] <= releasedAmount[address(arg1)]:
        return 0
    require releasedAmount[address(arg1)] <= sub_a6b3aae3[address(arg1)]
    return (sub_a6b3aae3[address(arg1)] - releasedAmount[address(arg1)])
}

function increaseApproval(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not uint8(stor3.field_160)
    require -allowance[msg.sender][address(arg1)] - 1 >= arg2
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg2
    require arg1
    require arg2 <= totalSupply
    totalSupply -= arg2
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    emit 0xfeddf252: arg2, arg1, 0
}

function decreaseApproval(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not uint8(stor3.field_160)
    if arg2 >= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] = 0
    else:
        require arg2 <= allowance[msg.sender][address(arg1)]
        allowance[msg.sender][address(arg1)] -= arg2
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function releasableAmount(address arg1) payable {
    require calldata.size - 4 >= 32
    if not sub_a6b3aae3[address(arg1)]:
        return 0
    idx = 0
    s = 0
    while idx < allocations[address(arg1)].field_0:
        require idx < allocations[address(arg1)].field_0
        if block.timestamp < allocations[address(arg1)][idx].field_0:
            mem[0] = arg1
            mem[32] = 9
            idx = idx + 1
            s = s
            continue 
        require idx < allocations[address(arg1)].field_0
        require -s - 1 >= allocations[address(arg1)][idx].field_256
        mem[0] = arg1
        mem[32] = 9
        idx = idx + 1
        s = allocations[address(arg1)][idx].field_256 + s
        continue 
    require releasedAmount[address(arg1)] <= s
    return (s - releasedAmount[address(arg1)])
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require msg.sender == sub_a8326b6eAddress
    require arg1
    require arg2
    require ext_code.size(sub_a8326b6eAddress)
    call sub_a8326b6eAddress.0x313ce567 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg2:
        require 10^ext_call.return_data[31 len 1]
        require 0 / 10^uint8(ext_call.return_data[0]) <= balanceOf[stor6]
        require 0 / 10^uint8(ext_call.return_data[0]) <= balanceOf[stor6]
        balanceOf[stor6] -= 0 / 10^uint8(ext_call.return_data[0])
        require -balanceOf[arg1] - 1 >= 0 / 10^uint8(ext_call.return_data[0])
        balanceOf[address(arg1)] = (0 / 10^uint8(ext_call.return_data[0])) + balanceOf[arg1]
        emit 0xfeddf252: (0 / 10^uint8(ext_call.return_data[0])), owner, arg1
    else:
        require -1 / arg2 >= 10^decimals
        require 10^ext_call.return_data[31 len 1]
        require 10^decimals * arg2 / 10^uint8(ext_call.return_data[0]) <= balanceOf[stor6]
        require 10^decimals * arg2 / 10^uint8(ext_call.return_data[0]) <= balanceOf[stor6]
        balanceOf[stor6] -= 10^decimals * arg2 / 10^uint8(ext_call.return_data[0])
        require -balanceOf[arg1] - 1 >= 10^decimals * arg2 / 10^uint8(ext_call.return_data[0])
        balanceOf[address(arg1)] = (10^decimals * arg2 / 10^uint8(ext_call.return_data[0])) + balanceOf[arg1]
        emit 0xfeddf252: (10^decimals * arg2 / 10^uint8(ext_call.return_data[0])), owner, arg1
}

function sub_c1dfc81b(?) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[64] = (32 * arg2.length) + (32 * arg3.length) + 160
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 0
    require msg.sender == owner
    require not sub_a6b3aae3[address(arg1)]
    require arg1
    require arg2.length == arg3.length
    mem[0] = arg1
    mem[32] = 8
    releasedAmount[address(arg1)] = 0
    idx = 0
    while idx < arg2.length:
        require idx < mem[(32 * arg2.length) + 128]
        require -sub_a6b3aae3[address(arg1)] - 1 >= mem[(32 * arg2.length) + (32 * idx) + 160]
        sub_a6b3aae3[address(arg1)] += mem[(32 * arg2.length) + (32 * idx) + 160]
        require idx < mem[(32 * arg2.length) + 128]
        require mem[(32 * arg2.length) + (32 * idx) + 160] > 0
        require idx < mem[96]
        require mem[(32 * idx) + 128] >= block.timestamp
        mem[0] = arg1
        mem[32] = 9
        _51 = mem[64]
        mem[64] = mem[64] + 64
        require idx < mem[96]
        mem[_51] = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg2.length) + 128]
        mem[_51 + 32] = mem[(32 * arg2.length) + (32 * idx) + 160]
        allocations[address(arg1)].field_0++
        mem[0] = sha3(address(arg1), 9)
        allocations[address(arg1)][allocations[address(arg1)].field_0].field_0 = mem[_51]
        allocations[address(arg1)][allocations[address(arg1)].field_0].field_256 = mem[_51 + 32]
        idx = idx + 1
        continue 
    require sub_a6b3aae3[address(arg1)] <= balanceOf[address(stor3.field_0)]
    balanceOf[address(stor3.field_0)] -= sub_a6b3aae3[address(arg1)]
    emit LockToken(address(arg1), sub_a6b3aae3[address(arg1)]);
    return 1
}

function releaseToken() payable {
    require sub_a6b3aae3[address(msg.sender)] > 0
    if not sub_a6b3aae3[address(msg.sender)]:
        require -balanceOf[address(msg.sender)] - 1 >= 0
        require -releasedAmount[address(msg.sender)] - 1 >= 0
        if sub_a6b3aae3[address(msg.sender)] == releasedAmount[address(msg.sender)]:
            allocations[address(msg.sender)].field_0 = 0
            idx = 0
            while 2 * allocations[address(msg.sender)].field_0 > idx:
                allocations[address(msg.sender)][idx].field_0 = 0
                allocations[address(msg.sender)][idx].field_256 = 0
                idx = idx + 2
                continue 
            sub_a6b3aae3[address(msg.sender)] = 0
        emit ReleaseToken(0, block.timestamp, msg.sender);
    else:
        idx = 0
        s = 0
        while idx < allocations[address(msg.sender)].field_0:
            require idx < allocations[address(msg.sender)].field_0
            if block.timestamp < allocations[address(msg.sender)][idx].field_0:
                mem[0] = msg.sender
                mem[32] = 9
                idx = idx + 1
                s = s
                continue 
            require idx < allocations[address(msg.sender)].field_0
            require -s - 1 >= allocations[address(msg.sender)][idx].field_256
            mem[0] = msg.sender
            mem[32] = 9
            idx = idx + 1
            s = allocations[address(msg.sender)][idx].field_256 + s
            continue 
        require releasedAmount[address(msg.sender)] <= s
        require -balanceOf[address(msg.sender)] - 1 >= s - releasedAmount[address(msg.sender)]
        balanceOf[address(msg.sender)] = s - releasedAmount[address(msg.sender)] + balanceOf[address(msg.sender)]
        require -1 >= s
        releasedAmount[address(msg.sender)] = s
        if sub_a6b3aae3[address(msg.sender)] == s:
            allocations[address(msg.sender)].field_0 = 0
            idx = 0
            while 2 * allocations[address(msg.sender)].field_0 > idx:
                allocations[address(msg.sender)][idx].field_0 = 0
                allocations[address(msg.sender)][idx].field_256 = 0
                idx = idx + 2
                continue 
            sub_a6b3aae3[address(msg.sender)] = 0
        emit ReleaseToken(s - releasedAmount[address(msg.sender)], block.timestamp, msg.sender);
    return 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if sub_a6b3aae3[address(arg1)]:
        idx = 0
        s = 0
        while idx < allocations[address(arg1)].field_0:
            require idx < allocations[address(arg1)].field_0
            if block.timestamp < allocations[address(arg1)][idx].field_0:
                mem[0] = arg1
                mem[32] = 9
                idx = idx + 1
                s = s
                continue 
            require idx < allocations[address(arg1)].field_0
            require -s - 1 >= allocations[address(arg1)][idx].field_256
            mem[0] = arg1
            mem[32] = 9
            idx = idx + 1
            s = allocations[address(arg1)][idx].field_256 + s
            continue 
        require releasedAmount[address(arg1)] <= s
        if s - releasedAmount[address(arg1)] > 0:
            require sub_a6b3aae3[address(arg1)] > 0
            if not sub_a6b3aae3[address(arg1)]:
                require -balanceOf[address(arg1)] - 1 >= 0
                require -releasedAmount[address(arg1)] - 1 >= 0
                if sub_a6b3aae3[address(arg1)] == releasedAmount[address(arg1)]:
                    allocations[address(arg1)].field_0 = 0
                    idx = 0
                    while 2 * allocations[address(arg1)].field_0 > idx:
                        allocations[address(arg1)][idx].field_0 = 0
                        allocations[address(arg1)][idx].field_256 = 0
                        idx = idx + 2
                        continue 
                    sub_a6b3aae3[address(arg1)] = 0
                emit ReleaseToken(0, block.timestamp, arg1);
            else:
                idx = 0
                s = 0
                while idx < allocations[address(arg1)].field_0:
                    require idx < allocations[address(arg1)].field_0
                    if block.timestamp < allocations[address(arg1)][idx].field_0:
                        mem[0] = arg1
                        mem[32] = 9
                        idx = idx + 1
                        s = s
                        continue 
                    require idx < allocations[address(arg1)].field_0
                    require -s - 1 >= allocations[address(arg1)][idx].field_256
                    mem[0] = arg1
                    mem[32] = 9
                    idx = idx + 1
                    s = allocations[address(arg1)][idx].field_256 + s
                    continue 
                require releasedAmount[address(arg1)] <= s
                require -balanceOf[address(arg1)] - 1 >= s - releasedAmount[address(arg1)]
                balanceOf[address(arg1)] = s - releasedAmount[address(arg1)] + balanceOf[address(arg1)]
                require -1 >= s
                releasedAmount[address(arg1)] = s
                if sub_a6b3aae3[address(arg1)] == s:
                    allocations[address(arg1)].field_0 = 0
                    idx = 0
                    while 2 * allocations[address(arg1)].field_0 > idx:
                        allocations[address(arg1)][idx].field_0 = 0
                        allocations[address(arg1)][idx].field_256 = 0
                        idx = idx + 2
                        continue 
                    sub_a6b3aae3[address(arg1)] = 0
                emit ReleaseToken(s - releasedAmount[address(arg1)], block.timestamp, arg1);
    require not uint8(stor3.field_160)
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require -balanceOf[arg2] - 1 >= arg3
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit 0xfeddf252: arg3, arg1, arg2
    if sub_a8326b6eAddress == arg2:
        require ext_code.size(sub_a8326b6eAddress)
        call sub_a8326b6eAddress.0xc0ee0b8a with:
             gas gas_remaining wei
            args address(arg1), arg3, 96, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x7b176aa7: address(arg1), arg3
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if sub_a6b3aae3[address(msg.sender)]:
        idx = 0
        s = 0
        while idx < allocations[address(msg.sender)].field_0:
            require idx < allocations[address(msg.sender)].field_0
            if block.timestamp < allocations[address(msg.sender)][idx].field_0:
                mem[0] = msg.sender
                mem[32] = 9
                idx = idx + 1
                s = s
                continue 
            require idx < allocations[address(msg.sender)].field_0
            require -s - 1 >= allocations[address(msg.sender)][idx].field_256
            mem[0] = msg.sender
            mem[32] = 9
            idx = idx + 1
            s = allocations[address(msg.sender)][idx].field_256 + s
            continue 
        require releasedAmount[address(msg.sender)] <= s
        if s - releasedAmount[address(msg.sender)] > 0:
            require sub_a6b3aae3[address(msg.sender)] > 0
            if not sub_a6b3aae3[address(msg.sender)]:
                require -balanceOf[address(msg.sender)] - 1 >= 0
                require -releasedAmount[address(msg.sender)] - 1 >= 0
                if sub_a6b3aae3[address(msg.sender)] == releasedAmount[address(msg.sender)]:
                    allocations[address(msg.sender)].field_0 = 0
                    idx = 0
                    while 2 * allocations[address(msg.sender)].field_0 > idx:
                        allocations[address(msg.sender)][idx].field_0 = 0
                        allocations[address(msg.sender)][idx].field_256 = 0
                        idx = idx + 2
                        continue 
                    sub_a6b3aae3[address(msg.sender)] = 0
                emit ReleaseToken(0, block.timestamp, msg.sender);
            else:
                idx = 0
                s = 0
                while idx < allocations[address(msg.sender)].field_0:
                    require idx < allocations[address(msg.sender)].field_0
                    if block.timestamp < allocations[address(msg.sender)][idx].field_0:
                        mem[0] = msg.sender
                        mem[32] = 9
                        idx = idx + 1
                        s = s
                        continue 
                    require idx < allocations[address(msg.sender)].field_0
                    require -s - 1 >= allocations[address(msg.sender)][idx].field_256
                    mem[0] = msg.sender
                    mem[32] = 9
                    idx = idx + 1
                    s = allocations[address(msg.sender)][idx].field_256 + s
                    continue 
                require releasedAmount[address(msg.sender)] <= s
                require -balanceOf[address(msg.sender)] - 1 >= s - releasedAmount[address(msg.sender)]
                balanceOf[address(msg.sender)] = s - releasedAmount[address(msg.sender)] + balanceOf[address(msg.sender)]
                require -1 >= s
                releasedAmount[address(msg.sender)] = s
                if sub_a6b3aae3[address(msg.sender)] == s:
                    allocations[address(msg.sender)].field_0 = 0
                    idx = 0
                    while 2 * allocations[address(msg.sender)].field_0 > idx:
                        allocations[address(msg.sender)][idx].field_0 = 0
                        allocations[address(msg.sender)][idx].field_256 = 0
                        idx = idx + 2
                        continue 
                    sub_a6b3aae3[address(msg.sender)] = 0
                emit ReleaseToken(s - releasedAmount[address(msg.sender)], block.timestamp, msg.sender);
    require not uint8(stor3.field_160)
    require arg1
    require arg2 <= balanceOf[msg.sender]
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require -balanceOf[arg1] - 1 >= arg2
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit 0xfeddf252: arg2, msg.sender, arg1
    if sub_a8326b6eAddress == arg1:
        require ext_code.size(sub_a8326b6eAddress)
        call sub_a8326b6eAddress.0xc0ee0b8a with:
             gas gas_remaining wei
            args msg.sender, arg2, 96, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x7b176aa7: msg.sender, arg2
    return 1
}



}
