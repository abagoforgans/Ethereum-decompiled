contract main {




// =====================  Runtime code  =====================


array of struct sub_9c8daade;
address adminAddress;
address sub_607eff95Address;
address sub_a7c73052Address;
address sub_b6e5fa62Address;
uint8 sub_9e39a3e5; offset 160
uint128 stor105; offset 160
address sub_ad7b61caAddress;

function sub_607eff95(?) {
    return sub_607eff95Address
}

function sub_9c8daade(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_9c8daade.length
    return sub_9c8daade[arg1].field_0
}

function sub_9e39a3e5(?) {
    return bool(sub_9e39a3e5)
}

function sub_a7c73052(?) {
    return sub_a7c73052Address
}

function sub_ad7b61ca(?) {
    return sub_ad7b61caAddress
}

function sub_b6e5fa62(?) {
    return sub_b6e5fa62Address
}

function sub_eb80eb1a(?) {
    require calldata.size - 4 >= 32
    require arg1 < 99
    return stor[arg1]
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    require msg.sender == adminAddress
    stor105 = 0
}

function changeadmin(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == adminAddress
    adminAddress = arg1
}

function sub_87fdd733(?) {
    require msg.sender == adminAddress
    if bool(sub_9e39a3e5) == 1:
        stor105 = 0
    else:
        if not sub_9e39a3e5:
            stor105 = 1
}

function sub_00bbb745(?) {
    require calldata.size - 4 >= 64
    if sub_9c8daade.length < 99999:
        sub_9c8daade.length++
        sub_9c8daade[sub_9c8daade.length].field_0 = arg1
        require arg1 >= 1
        require arg1 <= 97
        require not sub_9e39a3e5
        require ext_code.size(sub_607eff95Address)
        call sub_607eff95Address.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, adminAddress, 10^6 * arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not sub_9c8daade.length:
            require arg1
            if arg1 <= sha3(block.difficulty, block.timestamp) % 99:
                emit 0xb2f7530d: block.timestamp, msg.sender, arg2, 0, arg1, sha3(block.difficulty, block.timestamp) % 99
                return block.timestamp, msg.sender, arg2, 0, arg1, sha3(block.difficulty, block.timestamp) % 99
            require ext_code.size(sub_607eff95Address)
            call sub_607eff95Address.0x23b872dd with:
                 gas gas_remaining wei
                args sub_b6e5fa62Address, msg.sender, 1000 * arg2 * 98940 / arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit 0xb2f7530d: block.timestamp, msg.sender, arg2, 1000 * arg2 * 98940 / arg1, arg1, sha3(block.difficulty, block.timestamp) % 99
            return block.timestamp, msg.sender, arg2, 1000 * arg2 * 98940 / arg1, arg1, sha3(block.difficulty, block.timestamp) % 99
        mem[192] = uint256(sub_9c8daade.field_0)
        idx = 192
        s = 0
        while (32 * sub_9c8daade.length) + 192 > idx + 32:
            mem[idx + 32] = sub_9c8daade[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require arg1
        if arg1 <= sha3(block.difficulty, block.timestamp, mem[192 len 32 * sub_9c8daade.length]) % 99:
            emit 0xb2f7530d: block.timestamp, msg.sender, arg2, 0, arg1, sha3(block.difficulty, block.timestamp, mem[192 len 32 * sub_9c8daade.length]) % 99
            return block.timestamp, 
                   msg.sender,
                   arg2,
                   0,
                   arg1,
                   sha3(block.difficulty, block.timestamp, mem[192 len 32 * sub_9c8daade.length]) % 99
        require ext_code.size(sub_607eff95Address)
        call sub_607eff95Address.0x23b872dd with:
             gas gas_remaining wei
            args sub_b6e5fa62Address, msg.sender, 1000 * arg2 * 98940 / arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit 0xb2f7530d: block.timestamp, msg.sender, arg2, 1000 * arg2 * 98940 / arg1, arg1, sha3(block.difficulty, block.timestamp, mem[192 len 32 * sub_9c8daade.length]) % 99
        return block.timestamp, 
               msg.sender,
               arg2,
               1000 * arg2 * 98940 / arg1,
               arg1,
               sha3(block.difficulty, block.timestamp, mem[192 len 32 * sub_9c8daade.length]) % 99
    if sub_9c8daade.length <= 99999:
        require arg1 >= 1
        require arg1 <= 97
        require not sub_9e39a3e5
        require ext_code.size(sub_607eff95Address)
        call sub_607eff95Address.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, adminAddress, 10^6 * arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not sub_9c8daade.length:
            require arg1
            if arg1 <= sha3(block.difficulty, block.timestamp) % 99:
                emit 0xb2f7530d: block.timestamp, msg.sender, arg2, 0, arg1, sha3(block.difficulty, block.timestamp) % 99
                return block.timestamp, msg.sender, arg2, 0, arg1, sha3(block.difficulty, block.timestamp) % 99
            require ext_code.size(sub_607eff95Address)
            call sub_607eff95Address.0x23b872dd with:
                 gas gas_remaining wei
                args sub_b6e5fa62Address, msg.sender, 1000 * arg2 * 98940 / arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit 0xb2f7530d: block.timestamp, msg.sender, arg2, 1000 * arg2 * 98940 / arg1, arg1, sha3(block.difficulty, block.timestamp) % 99
            return block.timestamp, msg.sender, arg2, 1000 * arg2 * 98940 / arg1, arg1, sha3(block.difficulty, block.timestamp) % 99
        mem[192] = uint256(sub_9c8daade.field_0)
        idx = 192
        s = 0
        while (32 * sub_9c8daade.length) + 192 > idx + 32:
            mem[idx + 32] = sub_9c8daade[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require arg1
        if arg1 <= sha3(block.difficulty, block.timestamp, mem[192 len 32 * sub_9c8daade.length]) % 99:
            emit 0xb2f7530d: block.timestamp, msg.sender, arg2, 0, arg1, sha3(block.difficulty, block.timestamp, mem[192 len 32 * sub_9c8daade.length]) % 99
            return block.timestamp, 
                   msg.sender,
                   arg2,
                   0,
                   arg1,
                   sha3(block.difficulty, block.timestamp, mem[192 len 32 * sub_9c8daade.length]) % 99
        require ext_code.size(sub_607eff95Address)
        call sub_607eff95Address.0x23b872dd with:
             gas gas_remaining wei
            args sub_b6e5fa62Address, msg.sender, 1000 * arg2 * 98940 / arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit 0xb2f7530d: block.timestamp, msg.sender, arg2, 1000 * arg2 * 98940 / arg1, arg1, sha3(block.difficulty, block.timestamp, mem[192 len 32 * sub_9c8daade.length]) % 99
        return block.timestamp, 
               msg.sender,
               arg2,
               1000 * arg2 * 98940 / arg1,
               arg1,
               sha3(block.difficulty, block.timestamp, mem[192 len 32 * sub_9c8daade.length]) % 99
    sub_9c8daade.length = 0
    idx = 0
    while sub_9c8daade.length > idx:
        sub_9c8daade[idx].field_0 = 0
        idx = idx + 1
        continue 
    require arg1 >= 1
    require arg1 <= 97
    require not sub_9e39a3e5
    require ext_code.size(sub_607eff95Address)
    call sub_607eff95Address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, adminAddress, 10^6 * arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not sub_9c8daade.length:
        require arg1
        if arg1 <= sha3(block.difficulty, block.timestamp) % 99:
            emit 0xb2f7530d: block.timestamp, msg.sender, arg2, 0, arg1, sha3(block.difficulty, block.timestamp) % 99
            return block.timestamp, msg.sender, arg2, 0, arg1, sha3(block.difficulty, block.timestamp) % 99
        require ext_code.size(sub_607eff95Address)
        call sub_607eff95Address.0x23b872dd with:
             gas gas_remaining wei
            args sub_b6e5fa62Address, msg.sender, 1000 * arg2 * 98940 / arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit 0xb2f7530d: block.timestamp, msg.sender, arg2, 1000 * arg2 * 98940 / arg1, arg1, sha3(block.difficulty, block.timestamp) % 99
        return block.timestamp, msg.sender, arg2, 1000 * arg2 * 98940 / arg1, arg1, sha3(block.difficulty, block.timestamp) % 99
    mem[224] = uint256(sub_9c8daade.field_0)
    idx = 224
    s = 0
    while (32 * sub_9c8daade.length) + 224 > idx + 32:
        mem[idx + 32] = sub_9c8daade[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require arg1
    if arg1 <= sha3(block.difficulty, block.timestamp, mem[224 len 32 * sub_9c8daade.length]) % 99:
        emit 0xb2f7530d: block.timestamp, msg.sender, arg2, 0, arg1, sha3(block.difficulty, block.timestamp, mem[224 len 32 * sub_9c8daade.length]) % 99
        return block.timestamp, 
               msg.sender,
               arg2,
               0,
               arg1,
               sha3(block.difficulty, block.timestamp, mem[224 len 32 * sub_9c8daade.length]) % 99
    require ext_code.size(sub_607eff95Address)
    call sub_607eff95Address.0x23b872dd with:
         gas gas_remaining wei
        args sub_b6e5fa62Address, msg.sender, 1000 * arg2 * 98940 / arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0xb2f7530d: block.timestamp, msg.sender, arg2, 1000 * arg2 * 98940 / arg1, arg1, sha3(block.difficulty, block.timestamp, mem[224 len 32 * sub_9c8daade.length]) % 99
    return block.timestamp, 
           msg.sender,
           arg2,
           1000 * arg2 * 98940 / arg1,
           arg1,
           sha3(block.difficulty, block.timestamp, mem[224 len 32 * sub_9c8daade.length]) % 99
}

function sub_2a971e20(?) {
    require calldata.size - 4 >= 64
    if sub_9c8daade.length < 99999:
        sub_9c8daade.length++
        sub_9c8daade[sub_9c8daade.length].field_0 = arg1
        require arg1 >= 1
        require arg1 <= 97
        require not sub_9e39a3e5
        require ext_code.size(sub_a7c73052Address)
        call sub_a7c73052Address.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, adminAddress, 10^6 * arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not sub_9c8daade.length:
            require arg1
            if arg1 <= sha3(block.difficulty, block.timestamp) % 99:
                emit 0xb2f7530d: block.timestamp, msg.sender, arg2, 0, arg1, sha3(block.difficulty, block.timestamp) % 99
                return block.timestamp, msg.sender, arg2, 0, arg1, sha3(block.difficulty, block.timestamp) % 99
            require ext_code.size(sub_a7c73052Address)
            call sub_a7c73052Address.0x23b872dd with:
                 gas gas_remaining wei
                args sub_ad7b61caAddress, msg.sender, 1000 * arg2 * 98940 / arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit 0xb2f7530d: block.timestamp, msg.sender, arg2, 1000 * arg2 * 98940 / arg1, arg1, sha3(block.difficulty, block.timestamp) % 99
            return block.timestamp, msg.sender, arg2, 1000 * arg2 * 98940 / arg1, arg1, sha3(block.difficulty, block.timestamp) % 99
        mem[192] = uint256(sub_9c8daade.field_0)
        idx = 192
        s = 0
        while (32 * sub_9c8daade.length) + 192 > idx + 32:
            mem[idx + 32] = sub_9c8daade[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require arg1
        if arg1 <= sha3(block.difficulty, block.timestamp, mem[192 len 32 * sub_9c8daade.length]) % 99:
            emit 0xb2f7530d: block.timestamp, msg.sender, arg2, 0, arg1, sha3(block.difficulty, block.timestamp, mem[192 len 32 * sub_9c8daade.length]) % 99
            return block.timestamp, 
                   msg.sender,
                   arg2,
                   0,
                   arg1,
                   sha3(block.difficulty, block.timestamp, mem[192 len 32 * sub_9c8daade.length]) % 99
        require ext_code.size(sub_a7c73052Address)
        call sub_a7c73052Address.0x23b872dd with:
             gas gas_remaining wei
            args sub_ad7b61caAddress, msg.sender, 1000 * arg2 * 98940 / arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit 0xb2f7530d: block.timestamp, msg.sender, arg2, 1000 * arg2 * 98940 / arg1, arg1, sha3(block.difficulty, block.timestamp, mem[192 len 32 * sub_9c8daade.length]) % 99
        return block.timestamp, 
               msg.sender,
               arg2,
               1000 * arg2 * 98940 / arg1,
               arg1,
               sha3(block.difficulty, block.timestamp, mem[192 len 32 * sub_9c8daade.length]) % 99
    if sub_9c8daade.length <= 99999:
        require arg1 >= 1
        require arg1 <= 97
        require not sub_9e39a3e5
        require ext_code.size(sub_a7c73052Address)
        call sub_a7c73052Address.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, adminAddress, 10^6 * arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not sub_9c8daade.length:
            require arg1
            if arg1 <= sha3(block.difficulty, block.timestamp) % 99:
                emit 0xb2f7530d: block.timestamp, msg.sender, arg2, 0, arg1, sha3(block.difficulty, block.timestamp) % 99
                return block.timestamp, msg.sender, arg2, 0, arg1, sha3(block.difficulty, block.timestamp) % 99
            require ext_code.size(sub_a7c73052Address)
            call sub_a7c73052Address.0x23b872dd with:
                 gas gas_remaining wei
                args sub_ad7b61caAddress, msg.sender, 1000 * arg2 * 98940 / arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit 0xb2f7530d: block.timestamp, msg.sender, arg2, 1000 * arg2 * 98940 / arg1, arg1, sha3(block.difficulty, block.timestamp) % 99
            return block.timestamp, msg.sender, arg2, 1000 * arg2 * 98940 / arg1, arg1, sha3(block.difficulty, block.timestamp) % 99
        mem[192] = uint256(sub_9c8daade.field_0)
        idx = 192
        s = 0
        while (32 * sub_9c8daade.length) + 192 > idx + 32:
            mem[idx + 32] = sub_9c8daade[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require arg1
        if arg1 <= sha3(block.difficulty, block.timestamp, mem[192 len 32 * sub_9c8daade.length]) % 99:
            emit 0xb2f7530d: block.timestamp, msg.sender, arg2, 0, arg1, sha3(block.difficulty, block.timestamp, mem[192 len 32 * sub_9c8daade.length]) % 99
            return block.timestamp, 
                   msg.sender,
                   arg2,
                   0,
                   arg1,
                   sha3(block.difficulty, block.timestamp, mem[192 len 32 * sub_9c8daade.length]) % 99
        require ext_code.size(sub_a7c73052Address)
        call sub_a7c73052Address.0x23b872dd with:
             gas gas_remaining wei
            args sub_ad7b61caAddress, msg.sender, 1000 * arg2 * 98940 / arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit 0xb2f7530d: block.timestamp, msg.sender, arg2, 1000 * arg2 * 98940 / arg1, arg1, sha3(block.difficulty, block.timestamp, mem[192 len 32 * sub_9c8daade.length]) % 99
        return block.timestamp, 
               msg.sender,
               arg2,
               1000 * arg2 * 98940 / arg1,
               arg1,
               sha3(block.difficulty, block.timestamp, mem[192 len 32 * sub_9c8daade.length]) % 99
    sub_9c8daade.length = 0
    idx = 0
    while sub_9c8daade.length > idx:
        sub_9c8daade[idx].field_0 = 0
        idx = idx + 1
        continue 
    require arg1 >= 1
    require arg1 <= 97
    require not sub_9e39a3e5
    require ext_code.size(sub_a7c73052Address)
    call sub_a7c73052Address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, adminAddress, 10^6 * arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not sub_9c8daade.length:
        require arg1
        if arg1 <= sha3(block.difficulty, block.timestamp) % 99:
            emit 0xb2f7530d: block.timestamp, msg.sender, arg2, 0, arg1, sha3(block.difficulty, block.timestamp) % 99
            return block.timestamp, msg.sender, arg2, 0, arg1, sha3(block.difficulty, block.timestamp) % 99
        require ext_code.size(sub_a7c73052Address)
        call sub_a7c73052Address.0x23b872dd with:
             gas gas_remaining wei
            args sub_ad7b61caAddress, msg.sender, 1000 * arg2 * 98940 / arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit 0xb2f7530d: block.timestamp, msg.sender, arg2, 1000 * arg2 * 98940 / arg1, arg1, sha3(block.difficulty, block.timestamp) % 99
        return block.timestamp, msg.sender, arg2, 1000 * arg2 * 98940 / arg1, arg1, sha3(block.difficulty, block.timestamp) % 99
    mem[224] = uint256(sub_9c8daade.field_0)
    idx = 224
    s = 0
    while (32 * sub_9c8daade.length) + 224 > idx + 32:
        mem[idx + 32] = sub_9c8daade[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require arg1
    if arg1 <= sha3(block.difficulty, block.timestamp, mem[224 len 32 * sub_9c8daade.length]) % 99:
        emit 0xb2f7530d: block.timestamp, msg.sender, arg2, 0, arg1, sha3(block.difficulty, block.timestamp, mem[224 len 32 * sub_9c8daade.length]) % 99
        return block.timestamp, 
               msg.sender,
               arg2,
               0,
               arg1,
               sha3(block.difficulty, block.timestamp, mem[224 len 32 * sub_9c8daade.length]) % 99
    require ext_code.size(sub_a7c73052Address)
    call sub_a7c73052Address.0x23b872dd with:
         gas gas_remaining wei
        args sub_ad7b61caAddress, msg.sender, 1000 * arg2 * 98940 / arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0xb2f7530d: block.timestamp, msg.sender, arg2, 1000 * arg2 * 98940 / arg1, arg1, sha3(block.difficulty, block.timestamp, mem[224 len 32 * sub_9c8daade.length]) % 99
    return block.timestamp, 
           msg.sender,
           arg2,
           1000 * arg2 * 98940 / arg1,
           arg1,
           sha3(block.difficulty, block.timestamp, mem[224 len 32 * sub_9c8daade.length]) % 99
}



}
