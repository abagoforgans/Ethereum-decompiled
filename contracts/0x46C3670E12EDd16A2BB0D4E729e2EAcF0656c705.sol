contract main {




// =====================  Runtime code  =====================


address owner;
address pendingOwner;
uint32 stor2;
address sub_c0fc445eAddress;
address sub_7c999edeAddress;
address sub_95a2485eAddress;
uint256 subscriptionFee;
uint256 sub_3efc639f;
mapping of uint256 sub_d18d69af;
array of address subscriptions;
uint256 stor9;
address stor10;

function subscriptionFee() {
    return subscriptionFee
}

function subscriptions(uint256 arg1) {
    require arg1 < subscriptions.length
    return subscriptions[arg1]
}

function sub_3efc639f(?) {
    return sub_3efc639f
}

function sub_4413a7c5(?) {
    return subscriptions.length
}

function sub_7c999ede(?) {
    return sub_7c999edeAddress
}

function owner() {
    return owner
}

function sub_95a2485e(?) {
    return sub_95a2485eAddress
}

function sub_c0fc445e(?) {
    return address(sub_c0fc445eAddress)
}

function sub_d18d69af(?) {
    return sub_d18d69af[arg1]
}

function pendingOwner() {
    return pendingOwner
}

function _fallback() payable {
    revert
}

function sub_c1731b4f(?) {
    return (sub_d18d69af[address(arg1)] > 0)
}

function sub_03efb6d8(?) {
    require msg.sender == owner
    stor9 = arg1
}

function sub_8cff261b(?) {
    require msg.sender == owner
    stor10 = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    pendingOwner = arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function claimOwnership() {
    require msg.sender == pendingOwner
    emit OwnershipTransferred(owner, pendingOwner);
    owner = pendingOwner
    pendingOwner = 0
}

function reclaimEther() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_736560b5(?) {
    if sub_95a2485eAddress != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'The caller does not have the rights to call this function'
    require arg1 > 0
    sub_3efc639f = arg1
}

function sub_b97ff114(?) {
    if sub_95a2485eAddress != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'The caller does not have the rights to call this function'
    require arg1 > 0
    subscriptionFee = arg1
}

function sub_e5c4d117(?) {
    if sub_95a2485eAddress != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'The caller does not have the rights to call this function'
    require ext_code.size(arg1) > 0
    address(sub_c0fc445eAddress) = arg1
}

function reclaimToken(address arg1) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_8308a5c5(?) {
    if sub_95a2485eAddress != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'The caller does not have the rights to call this function'
    require ext_code.size(address(sub_c0fc445eAddress))
    call address(sub_c0fc445eAddress).0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(sub_c0fc445eAddress))
    call address(sub_c0fc445eAddress).0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_3afb0551(?) {
    require ext_code.size(address(sub_c0fc445eAddress))
    call address(sub_c0fc445eAddress).0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= stor9:
        return 0
    if ext_code.size(stor10) > 0:
        require ext_code.size(stor10)
        call stor10.0x3afb0551 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            return 1
    if not sub_d18d69af[address(arg1)]:
        return not bool(sub_d18d69af[address(arg1)])
    return (block.timestamp > sub_d18d69af[address(arg1)])
}

function sub_0e6669b4(?) {
    require ext_code.size(address(sub_c0fc445eAddress))
    call address(sub_c0fc445eAddress).0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] < stor9
    if ext_code.size(stor10) <= 0:
        if sub_d18d69af[address(arg1)]:
            require block.timestamp > sub_d18d69af[address(arg1)]
    else:
        require ext_code.size(stor10)
        call stor10.0x3afb0551 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if sub_d18d69af[address(arg1)]:
                require block.timestamp > sub_d18d69af[address(arg1)]
    if sub_95a2485eAddress != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'The caller does not have the rights to call this function'
    sub_d18d69af[address(arg1)] = (24 * 3600 * arg2) + block.timestamp
    subscriptions.length++
    subscriptions[subscriptions.length] = arg1
    emit 0xf94991dc: subscriptionFee, sub_3efc639f, arg1
}

function subscribe() {
    require ext_code.size(msg.sender) <= 0
    require ext_code.size(address(sub_c0fc445eAddress))
    call address(sub_c0fc445eAddress).0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] < stor9
    if ext_code.size(stor10) <= 0:
        if sub_d18d69af[address(msg.sender)]:
            require block.timestamp > sub_d18d69af[address(msg.sender)]
    else:
        require ext_code.size(stor10)
        call stor10.0x3afb0551 with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if sub_d18d69af[address(msg.sender)]:
                require block.timestamp > sub_d18d69af[address(msg.sender)]
    require ext_code.size(sub_7c999edeAddress)
    call sub_7c999edeAddress.0x9f2cad38 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).transferFrom(address arg1, address arg2, address arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 0, uint32(stor2), msg.sender, this.address, subscriptionFee
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    sub_d18d69af[address(msg.sender)] = block.timestamp + (24 * 3600 * sub_3efc639f)
    subscriptions.length++
    subscriptions[subscriptions.length] = msg.sender
    emit 0xf94991dc: subscriptionFee, sub_3efc639f, msg.sender
}

function sub_109c243a(?) {
    idx = 0
    s = 0
    while idx < subscriptions.length:
        mem[0] = 8
        mem[100] = subscriptions[idx]
        require ext_code.size(address(sub_c0fc445eAddress))
        call address(sub_c0fc445eAddress).0x70a08231 with:
             gas gas_remaining wei
            args subscriptions[idx]
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= stor9:
            if arg1 != 1:
                idx = idx + 1
                s = s
                continue 
        else:
            if ext_code.size(stor10) <= 0:
                mem[0] = subscriptions[idx]
                mem[32] = 7
                if not sub_d18d69af[stor8[idx]]:
                    if bool(sub_d18d69af[stor8[idx]]) != arg1:
                        idx = idx + 1
                        s = s
                        continue 
                else:
                    if block.timestamp <= sub_d18d69af[stor8[idx]] != arg1:
                        idx = idx + 1
                        s = s
                        continue 
            else:
                mem[100] = subscriptions[idx]
                require ext_code.size(stor10)
                call stor10.0x3afb0551 with:
                     gas gas_remaining wei
                    args subscriptions[idx]
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    if arg1 != 0:
                        idx = idx + 1
                        s = s
                        continue 
                else:
                    mem[0] = subscriptions[idx]
                    mem[32] = 7
                    if not sub_d18d69af[stor8[idx]]:
                        if bool(sub_d18d69af[stor8[idx]]) != arg1:
                            idx = idx + 1
                            s = s
                            continue 
                    else:
                        if block.timestamp <= sub_d18d69af[stor8[idx]] != arg1:
                            idx = idx + 1
                            s = s
                            continue 
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function sub_ff8f4402(?) {
    idx = 0
    s = 0
    while idx < subscriptions.length:
        mem[0] = 8
        mem[100] = subscriptions[idx]
        require ext_code.size(address(sub_c0fc445eAddress))
        call address(sub_c0fc445eAddress).0x70a08231 with:
             gas gas_remaining wei
            args subscriptions[idx]
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= stor9:
            if arg1 != 1:
                idx = idx + 1
                s = s
                continue 
        else:
            if ext_code.size(stor10) <= 0:
                mem[0] = subscriptions[idx]
                mem[32] = 7
                if not sub_d18d69af[stor8[idx]]:
                    if bool(sub_d18d69af[stor8[idx]]) != arg1:
                        idx = idx + 1
                        s = s
                        continue 
                else:
                    if block.timestamp <= sub_d18d69af[stor8[idx]] != arg1:
                        idx = idx + 1
                        s = s
                        continue 
            else:
                mem[100] = subscriptions[idx]
                require ext_code.size(stor10)
                call stor10.0x3afb0551 with:
                     gas gas_remaining wei
                    args subscriptions[idx]
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    if arg1 != 0:
                        idx = idx + 1
                        s = s
                        continue 
                else:
                    mem[0] = subscriptions[idx]
                    mem[32] = 7
                    if not sub_d18d69af[stor8[idx]]:
                        if bool(sub_d18d69af[stor8[idx]]) != arg1:
                            idx = idx + 1
                            s = s
                            continue 
                    else:
                        if block.timestamp <= sub_d18d69af[stor8[idx]] != arg1:
                            idx = idx + 1
                            s = s
                            continue 
        idx = idx + 1
        s = s + 1
        continue 
    if s:
        mem[128 len 32 * s] = code.data[4767 len 32 * s]
    t = 0
    idx = 0
    while idx < subscriptions.length:
        mem[0] = 8
        mem[(32 * s) + 132] = subscriptions[idx]
        require ext_code.size(address(sub_c0fc445eAddress))
        call address(sub_c0fc445eAddress).0x70a08231 with:
             gas gas_remaining wei
            args subscriptions[idx]
        mem[(32 * s) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= stor9:
            if arg1 != 1:
                t = t
                idx = idx + 1
                continue 
        else:
            if ext_code.size(stor10) <= 0:
                mem[0] = subscriptions[idx]
                mem[32] = 7
                if not sub_d18d69af[stor8[idx]]:
                    if bool(sub_d18d69af[stor8[idx]]) != arg1:
                        t = t
                        idx = idx + 1
                        continue 
                else:
                    if block.timestamp <= sub_d18d69af[stor8[idx]] != arg1:
                        t = t
                        idx = idx + 1
                        continue 
            else:
                mem[(32 * s) + 132] = subscriptions[idx]
                require ext_code.size(stor10)
                call stor10.0x3afb0551 with:
                     gas gas_remaining wei
                    args subscriptions[idx]
                mem[(32 * s) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    if arg1 != 0:
                        t = t
                        idx = idx + 1
                        continue 
                else:
                    mem[0] = subscriptions[idx]
                    mem[32] = 7
                    if not sub_d18d69af[stor8[idx]]:
                        if bool(sub_d18d69af[stor8[idx]]) != arg1:
                            t = t
                            idx = idx + 1
                            continue 
                    else:
                        if block.timestamp <= sub_d18d69af[stor8[idx]] != arg1:
                            t = t
                            idx = idx + 1
                            continue 
        require idx < subscriptions.length
        mem[0] = 8
        require t < s
        mem[(32 * t) + 128] = subscriptions[idx]
        t = t + 1
        idx = idx + 1
        continue 
    mem[(32 * s) + 192 len floor32(s)] = mem[128 len floor32(s)]
    return Array(len=s, data=mem[128 len floor32(s)], mem[(32 * s) + floor32(s) + 192 len (32 * s) - floor32(s)])
}



}
