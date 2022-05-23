contract main {




// =====================  Runtime code  =====================


uint8 stor0;
array of struct sub_8aa19122;
mapping of uint256 sub_a5008247;
mapping of uint256 sub_7e1aa7a7;

function sub_7e1aa7a7(?) {
    return sub_7e1aa7a7[arg1]
}

function sub_8aa19122(?) {
    require arg1 < sub_8aa19122.length
    return sub_8aa19122[arg1].field_0
}

function sub_a5008247(?) {
    return sub_a5008247[arg1]
}

function sub_fdbb43b4(?) {
    return sub_8aa19122.length
}

function _fallback() payable {
    revert
}

function withdraw(uint256 arg1) {
    if 0x73b61a56cb93c17a1f5fb21c01cfe0fb23f132c3 != tx.origin:
        if 0xae587866822dced0c4b5a0b534ec025b52c4acd0 != tx.origin:
            if 0x16e21b702ea2ee0f4dc40e877099c88acd3d27d5 != tx.origin:
                if 0x5167350d082c9ec48ed6fd4c694dea7361269705 != tx.origin:
                    require tx.origin == 0x820d115b9c982260edaa1741812d1f85132736b5
    require block.gas_limit < 10 * 10^6
    if arg1 > 0:
        call msg.sender with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_7a637186(?) payable {
    mem[64] = 96
    require not msg.value
    if tx.origin == 0x73b61a56cb93c17a1f5fb21c01cfe0fb23f132c3:
        idx = 0
        s = 0
        while idx < arg1:
            mem[mem[64] len 675] = code.data[2332 len 675]
            create contract with 0 wei
                            code: code.data[2332 len 675]
            if not create.new_address:
                revert with ext_call.return_data[0 len return_data.size]
            sub_8aa19122.length++
            sub_8aa19122[sub_8aa19122.length].field_0 = address(create.new_address)
            mem[0] = address(create.new_address)
            sub_a5008247[address(create.new_address)] = 1
            _61 = mem[64]
            mem[64] = mem[64] + 32
            mem[_61] = (address(create.new_address) << 80) - 0x296bffffffffffffffffffffffffffffffffffffffffff000000000000000000
            mem[mem[64]] = address(sha3(Mask(184, 72, (address(create.new_address) << 80) - 0x296bffffffffffffffffffffffffffffffffffffffffff000000000000000000) >> 72))
            mem[0] = address(create.new_address)
            mem[32] = 3
            sub_7e1aa7a7[address(create.new_address)] = sha3(address(sha3(Mask(184, 72, (address(create.new_address) << 80) - 0x296bffffffffffffffffffffffffffffffffffffffffff000000000000000000) >> 72)))
            idx = idx + 1
            s = create.new_address
            continue 
    else:
        if tx.origin == 0xae587866822dced0c4b5a0b534ec025b52c4acd0:
            idx = 0
            s = 0
            while idx < arg1:
                mem[mem[64] len 675] = code.data[2332 len 675]
                create contract with 0 wei
                                code: code.data[2332 len 675]
                if not create.new_address:
                    revert with ext_call.return_data[0 len return_data.size]
                sub_8aa19122.length++
                sub_8aa19122[sub_8aa19122.length].field_0 = address(create.new_address)
                mem[0] = address(create.new_address)
                sub_a5008247[address(create.new_address)] = 1
                _63 = mem[64]
                mem[64] = mem[64] + 32
                mem[_63] = (address(create.new_address) << 80) - 0x296bffffffffffffffffffffffffffffffffffffffffff000000000000000000
                mem[mem[64]] = address(sha3(Mask(184, 72, (address(create.new_address) << 80) - 0x296bffffffffffffffffffffffffffffffffffffffffff000000000000000000) >> 72))
                mem[0] = address(create.new_address)
                mem[32] = 3
                sub_7e1aa7a7[address(create.new_address)] = sha3(address(sha3(Mask(184, 72, (address(create.new_address) << 80) - 0x296bffffffffffffffffffffffffffffffffffffffffff000000000000000000) >> 72)))
                idx = idx + 1
                s = create.new_address
                continue 
        else:
            if tx.origin == 0x16e21b702ea2ee0f4dc40e877099c88acd3d27d5:
                idx = 0
                s = 0
                while idx < arg1:
                    mem[mem[64] len 675] = code.data[2332 len 675]
                    create contract with 0 wei
                                    code: code.data[2332 len 675]
                    if not create.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    sub_8aa19122.length++
                    sub_8aa19122[sub_8aa19122.length].field_0 = address(create.new_address)
                    mem[0] = address(create.new_address)
                    sub_a5008247[address(create.new_address)] = 1
                    _65 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_65] = (address(create.new_address) << 80) - 0x296bffffffffffffffffffffffffffffffffffffffffff000000000000000000
                    mem[mem[64]] = address(sha3(Mask(184, 72, (address(create.new_address) << 80) - 0x296bffffffffffffffffffffffffffffffffffffffffff000000000000000000) >> 72))
                    mem[0] = address(create.new_address)
                    mem[32] = 3
                    sub_7e1aa7a7[address(create.new_address)] = sha3(address(sha3(Mask(184, 72, (address(create.new_address) << 80) - 0x296bffffffffffffffffffffffffffffffffffffffffff000000000000000000) >> 72)))
                    idx = idx + 1
                    s = create.new_address
                    continue 
            else:
                if tx.origin == 0x5167350d082c9ec48ed6fd4c694dea7361269705:
                    idx = 0
                    s = 0
                    while idx < arg1:
                        mem[mem[64] len 675] = code.data[2332 len 675]
                        create contract with 0 wei
                                        code: code.data[2332 len 675]
                        if not create.new_address:
                            revert with ext_call.return_data[0 len return_data.size]
                        sub_8aa19122.length++
                        sub_8aa19122[sub_8aa19122.length].field_0 = address(create.new_address)
                        mem[0] = address(create.new_address)
                        sub_a5008247[address(create.new_address)] = 1
                        _67 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_67] = (address(create.new_address) << 80) - 0x296bffffffffffffffffffffffffffffffffffffffffff000000000000000000
                        mem[mem[64]] = address(sha3(Mask(184, 72, (address(create.new_address) << 80) - 0x296bffffffffffffffffffffffffffffffffffffffffff000000000000000000) >> 72))
                        mem[0] = address(create.new_address)
                        mem[32] = 3
                        sub_7e1aa7a7[address(create.new_address)] = sha3(address(sha3(Mask(184, 72, (address(create.new_address) << 80) - 0x296bffffffffffffffffffffffffffffffffffffffffff000000000000000000) >> 72)))
                        idx = idx + 1
                        s = create.new_address
                        continue 
                else:
                    require tx.origin == 0x820d115b9c982260edaa1741812d1f85132736b5
                    idx = 0
                    s = 0
                    while idx < arg1:
                        mem[mem[64] len 675] = code.data[2332 len 675]
                        create contract with 0 wei
                                        code: code.data[2332 len 675]
                        if not create.new_address:
                            revert with ext_call.return_data[0 len return_data.size]
                        sub_8aa19122.length++
                        sub_8aa19122[sub_8aa19122.length].field_0 = address(create.new_address)
                        mem[0] = address(create.new_address)
                        sub_a5008247[address(create.new_address)] = 1
                        _69 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_69] = (address(create.new_address) << 80) - 0x296bffffffffffffffffffffffffffffffffffffffffff000000000000000000
                        mem[mem[64]] = address(sha3(Mask(184, 72, (address(create.new_address) << 80) - 0x296bffffffffffffffffffffffffffffffffffffffffff000000000000000000) >> 72))
                        mem[0] = address(create.new_address)
                        mem[32] = 3
                        sub_7e1aa7a7[address(create.new_address)] = sha3(address(sha3(Mask(184, 72, (address(create.new_address) << 80) - 0x296bffffffffffffffffffffffffffffffffffffffffff000000000000000000) >> 72)))
                        idx = idx + 1
                        s = create.new_address
                        continue 
}

function execute(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    if tx.origin == 0x73b61a56cb93c17a1f5fb21c01cfe0fb23f132c3:
        require block.gas_limit < 10 * 10^6
        require ext_code.size(arg1)
        call arg1.0xd87574e0 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] > arg3
        require ext_code.size(arg1)
        call arg1.0x11a09ae7 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[96] = address(block.coinbase)
        require block.timestamp
        if stor0:
            stor0 = 0
            if sub_8aa19122.length >= 500:
                s = var30004
                s = var30006
                s = var30007
                while var36005 < var36001:
                    require var38004 < sub_8aa19122.length
                    require block.timestamp
                    s = var38004
                    t = var38001
                    t = var38003
                    t = var38004
                    while sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var38004].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var38004].field_0] / block.timestamp)) / 1000) >= ext_call.return_data[0] + 5:
                        if sub_8aa19122.length >= 500:
                            mem[0] = sub_8aa19122[s].field_0
                            mem[32] = 3
                            require block.timestamp
                            mem[96] = block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[s].field_0] / block.timestamp)
                            s = sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[s].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[s].field_0] / block.timestamp)) / 1000)
                            s = sub_8aa19122[s].field_0
                            s = t + 1
                            continue 
                        if t + 1 >= sub_8aa19122.length:
                            return 0
                        mem[0] = sub_8aa19122[t].field_512
                        mem[32] = 3
                        require block.timestamp
                        mem[96] = block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[t].field_512] / block.timestamp)
                        s = t + 1
                        t = sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[t].field_512] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[t].field_512] / block.timestamp)) / 1000)
                        t = sub_8aa19122[s].field_0
                        t = t + 1
                        continue 
                    sub_a5008247[stor1[s].field_0]++
                    if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                        u = 1
                        v = 0
                        while sub_a5008247[stor1[s].field_0] + 1 >= u:
                            u = 256 * u
                            v = v + 1
                            continue 
                        if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                            mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                        else:
                            if sub_a5008247[stor1[s].field_0] + 1 >= 128:
                                mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                            else:
                                mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                        mem[128] = address(sha3(mem[96 len v + 23]))
                        sub_7e1aa7a7[stor1[s].field_0] = sha3(mem[128 len 20])
                    else:
                        if sub_a5008247[stor1[s].field_0] + 1 < 128:
                            if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                                sub_7e1aa7a7[stor1[s].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)))
                            else:
                                if sub_a5008247[stor1[s].field_0] + 1 >= 128:
                                    sub_7e1aa7a7[stor1[s].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)))
                                else:
                                    sub_7e1aa7a7[stor1[s].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000) >> 72)))
                        else:
                            u = 1
                            v = 0
                            while sub_a5008247[stor1[s].field_0] + 1 >= u:
                                u = 256 * u
                                v = v + 1
                                continue 
                            if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                                mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                            else:
                                if sub_a5008247[stor1[s].field_0] + 1 >= 128:
                                    mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                else:
                                    mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                            mem[128] = address(sha3(mem[96 len v + 23]))
                            sub_7e1aa7a7[stor1[s].field_0] = sha3(mem[128 len 20])
                    require ext_code.size(sub_8aa19122[s].field_0)
                    if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var38004].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var38004].field_0] / block.timestamp)) / 1000) < 5:
                        call sub_8aa19122[s].field_0.0xde3a04ad with:
                           value msg.value wei
                             gas gas_remaining wei
                            args address(arg1), arg2, arg4, arg3
                    else:
                        call sub_8aa19122[s].field_0.0xde3a04ad with:
                           value msg.value wei
                             gas gas_remaining wei
                            args address(arg1), arg2, 0, arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require eth.balance(tx.origin) < eth.balance(tx.origin)
                    return t
            else:
                s = var30004
                s = var30006
                s = var30007
                while var36005 < var36001:
                    require var38004 < sub_8aa19122.length
                    require block.timestamp
                    s = var38004
                    t = var38001
                    t = var38003
                    t = var38004
                    while sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var38004].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var38004].field_0] / block.timestamp)) / 1000) >= ext_call.return_data[0] + 5:
                        if sub_8aa19122.length < 500:
                            mem[0] = sub_8aa19122[s].field_0
                            mem[32] = 3
                            require block.timestamp
                            mem[96] = block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[s].field_0] / block.timestamp)
                            s = sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[s].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[s].field_0] / block.timestamp)) / 1000)
                            s = sub_8aa19122[s].field_0
                            s = t + 1
                            continue 
                        if t + 1 >= 500:
                            return 0
                        require t + 1 < sub_8aa19122.length
                        mem[0] = sub_8aa19122[t].field_512
                        mem[32] = 3
                        require block.timestamp
                        mem[96] = block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[t].field_512] / block.timestamp)
                        s = t + 1
                        t = sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[t].field_512] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[t].field_512] / block.timestamp)) / 1000)
                        t = sub_8aa19122[s].field_0
                        t = t + 1
                        continue 
                    sub_a5008247[stor1[s].field_0]++
                    if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                        u = 1
                        v = 0
                        while sub_a5008247[stor1[s].field_0] + 1 >= u:
                            u = 256 * u
                            v = v + 1
                            continue 
                        if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                            mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                        else:
                            if sub_a5008247[stor1[s].field_0] + 1 >= 128:
                                mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                            else:
                                mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                        mem[128] = address(sha3(mem[96 len v + 23]))
                        sub_7e1aa7a7[stor1[s].field_0] = sha3(mem[128 len 20])
                    else:
                        if sub_a5008247[stor1[s].field_0] + 1 < 128:
                            if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                                sub_7e1aa7a7[stor1[s].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)))
                            else:
                                if sub_a5008247[stor1[s].field_0] + 1 >= 128:
                                    sub_7e1aa7a7[stor1[s].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)))
                                else:
                                    sub_7e1aa7a7[stor1[s].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000) >> 72)))
                        else:
                            u = 1
                            v = 0
                            while sub_a5008247[stor1[s].field_0] + 1 >= u:
                                u = 256 * u
                                v = v + 1
                                continue 
                            if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                                mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                            else:
                                if sub_a5008247[stor1[s].field_0] + 1 >= 128:
                                    mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                else:
                                    mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                            mem[128] = address(sha3(mem[96 len v + 23]))
                            sub_7e1aa7a7[stor1[s].field_0] = sha3(mem[128 len 20])
                    require ext_code.size(sub_8aa19122[s].field_0)
                    if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var38004].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var38004].field_0] / block.timestamp)) / 1000) < 5:
                        call sub_8aa19122[s].field_0.0xde3a04ad with:
                           value msg.value wei
                             gas gas_remaining wei
                            args address(arg1), arg2, arg4, arg3
                    else:
                        call sub_8aa19122[s].field_0.0xde3a04ad with:
                           value msg.value wei
                             gas gas_remaining wei
                            args address(arg1), arg2, 0, arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require eth.balance(tx.origin) < eth.balance(tx.origin)
                    return t
        else:
            if 500 < sub_8aa19122.length:
                stor0 = 1
                if sub_8aa19122.length >= 500:
                    s = 0
                    s = 0
                    idx = 500
                    while idx < sub_8aa19122.length:
                        mem[0] = sub_8aa19122[idx].field_0
                        mem[32] = 3
                        require block.timestamp
                        mem[96] = block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx].field_0] / block.timestamp)
                        if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx].field_0] / block.timestamp)) / 1000) >= ext_call.return_data[0] + 5:
                            s = sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx].field_0] / block.timestamp)) / 1000)
                            s = sub_8aa19122[idx].field_0
                            idx = idx + 1
                            continue 
                        sub_a5008247[stor1[idx].field_0]++
                        if 0 >= sub_a5008247[stor1[idx].field_0] + 1:
                            s = 1
                            t = 0
                            while sub_a5008247[stor1[idx].field_0] + 1 >= s:
                                s = 256 * s
                                t = t + 1
                                continue 
                            if 0 >= sub_a5008247[stor1[idx].field_0] + 1:
                                mem[96] = (t + 214 << 248) + (sub_8aa19122[idx].field_0 << 80) + (t + 128 << 72) + 256^(-t + 9) + (sub_a5008247[stor1[idx].field_0] * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                            else:
                                if sub_a5008247[stor1[idx].field_0] + 1 >= 128:
                                    mem[96] = (t + 214 << 248) + (sub_8aa19122[idx].field_0 << 80) + (t + 128 << 72) + 256^(-t + 9) + (sub_a5008247[stor1[idx].field_0] * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                else:
                                    mem[96] = (t + 214 << 248) + (sub_8aa19122[idx].field_0 << 80) + (sub_a5008247[stor1[idx].field_0] + 1 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                            mem[128] = address(sha3(mem[96 len t + 23]))
                            sub_7e1aa7a7[stor1[idx].field_0] = sha3(mem[128 len 20])
                        else:
                            if sub_a5008247[stor1[idx].field_0] + 1 < 128:
                                if 0 >= sub_a5008247[stor1[idx].field_0] + 1:
                                    sub_7e1aa7a7[stor1[idx].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[idx].field_0 << 80) + (sub_a5008247[stor1[idx].field_0] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)))
                                else:
                                    if sub_a5008247[stor1[idx].field_0] + 1 >= 128:
                                        sub_7e1aa7a7[stor1[idx].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[idx].field_0 << 80) + (sub_a5008247[stor1[idx].field_0] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)))
                                    else:
                                        sub_7e1aa7a7[stor1[idx].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[idx].field_0 << 80) + (sub_a5008247[stor1[idx].field_0] + 1 << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000) >> 72)))
                            else:
                                s = 1
                                t = 0
                                while sub_a5008247[stor1[idx].field_0] + 1 >= s:
                                    s = 256 * s
                                    t = t + 1
                                    continue 
                                if 0 >= sub_a5008247[stor1[idx].field_0] + 1:
                                    mem[96] = (t + 214 << 248) + (sub_8aa19122[idx].field_0 << 80) + (t + 128 << 72) + 256^(-t + 9) + (sub_a5008247[stor1[idx].field_0] * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                else:
                                    if sub_a5008247[stor1[idx].field_0] + 1 >= 128:
                                        mem[96] = (t + 214 << 248) + (sub_8aa19122[idx].field_0 << 80) + (t + 128 << 72) + 256^(-t + 9) + (sub_a5008247[stor1[idx].field_0] * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                    else:
                                        mem[96] = (t + 214 << 248) + (sub_8aa19122[idx].field_0 << 80) + (sub_a5008247[stor1[idx].field_0] + 1 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                                mem[128] = address(sha3(mem[96 len t + 23]))
                                sub_7e1aa7a7[stor1[idx].field_0] = sha3(mem[128 len 20])
                        require ext_code.size(sub_8aa19122[idx].field_0)
                        if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx].field_0] / block.timestamp)) / 1000) < 5:
                            call sub_8aa19122[idx].field_0.0xde3a04ad with:
                               value msg.value wei
                                 gas gas_remaining wei
                                args address(arg1), arg2, arg4, arg3
                        else:
                            call sub_8aa19122[idx].field_0.0xde3a04ad with:
                               value msg.value wei
                                 gas gas_remaining wei
                                args address(arg1), arg2, 0, arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require eth.balance(tx.origin) < eth.balance(tx.origin)
                        return idx
                else:
                    s = 0
                    s = 0
                    idx = sub_8aa19122.length
                    while idx < sub_8aa19122.length:
                        mem[0] = sub_8aa19122[idx].field_0
                        mem[32] = 3
                        require block.timestamp
                        mem[96] = block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx].field_0] / block.timestamp)
                        if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx].field_0] / block.timestamp)) / 1000) >= ext_call.return_data[0] + 5:
                            s = sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx].field_0] / block.timestamp)) / 1000)
                            s = sub_8aa19122[idx].field_0
                            idx = idx + 1
                            continue 
                        sub_a5008247[stor1[idx].field_0]++
                        if 0 >= sub_a5008247[stor1[idx].field_0] + 1:
                            s = 1
                            t = 0
                            while sub_a5008247[stor1[idx].field_0] + 1 >= s:
                                s = 256 * s
                                t = t + 1
                                continue 
                            if 0 >= sub_a5008247[stor1[idx].field_0] + 1:
                                mem[96] = (t + 214 << 248) + (sub_8aa19122[idx].field_0 << 80) + (t + 128 << 72) + 256^(-t + 9) + (sub_a5008247[stor1[idx].field_0] * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                            else:
                                if sub_a5008247[stor1[idx].field_0] + 1 >= 128:
                                    mem[96] = (t + 214 << 248) + (sub_8aa19122[idx].field_0 << 80) + (t + 128 << 72) + 256^(-t + 9) + (sub_a5008247[stor1[idx].field_0] * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                else:
                                    mem[96] = (t + 214 << 248) + (sub_8aa19122[idx].field_0 << 80) + (sub_a5008247[stor1[idx].field_0] + 1 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                            mem[128] = address(sha3(mem[96 len t + 23]))
                            sub_7e1aa7a7[stor1[idx].field_0] = sha3(mem[128 len 20])
                        else:
                            if sub_a5008247[stor1[idx].field_0] + 1 < 128:
                                if 0 >= sub_a5008247[stor1[idx].field_0] + 1:
                                    sub_7e1aa7a7[stor1[idx].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[idx].field_0 << 80) + (sub_a5008247[stor1[idx].field_0] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)))
                                else:
                                    if sub_a5008247[stor1[idx].field_0] + 1 >= 128:
                                        sub_7e1aa7a7[stor1[idx].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[idx].field_0 << 80) + (sub_a5008247[stor1[idx].field_0] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)))
                                    else:
                                        sub_7e1aa7a7[stor1[idx].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[idx].field_0 << 80) + (sub_a5008247[stor1[idx].field_0] + 1 << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000) >> 72)))
                            else:
                                s = 1
                                t = 0
                                while sub_a5008247[stor1[idx].field_0] + 1 >= s:
                                    s = 256 * s
                                    t = t + 1
                                    continue 
                                if 0 >= sub_a5008247[stor1[idx].field_0] + 1:
                                    mem[96] = (t + 214 << 248) + (sub_8aa19122[idx].field_0 << 80) + (t + 128 << 72) + 256^(-t + 9) + (sub_a5008247[stor1[idx].field_0] * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                else:
                                    if sub_a5008247[stor1[idx].field_0] + 1 >= 128:
                                        mem[96] = (t + 214 << 248) + (sub_8aa19122[idx].field_0 << 80) + (t + 128 << 72) + 256^(-t + 9) + (sub_a5008247[stor1[idx].field_0] * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                    else:
                                        mem[96] = (t + 214 << 248) + (sub_8aa19122[idx].field_0 << 80) + (sub_a5008247[stor1[idx].field_0] + 1 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                                mem[128] = address(sha3(mem[96 len t + 23]))
                                sub_7e1aa7a7[stor1[idx].field_0] = sha3(mem[128 len 20])
                        require ext_code.size(sub_8aa19122[idx].field_0)
                        if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx].field_0] / block.timestamp)) / 1000) < 5:
                            call sub_8aa19122[idx].field_0.0xde3a04ad with:
                               value msg.value wei
                                 gas gas_remaining wei
                                args address(arg1), arg2, arg4, arg3
                        else:
                            call sub_8aa19122[idx].field_0.0xde3a04ad with:
                               value msg.value wei
                                 gas gas_remaining wei
                                args address(arg1), arg2, 0, arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require eth.balance(tx.origin) < eth.balance(tx.origin)
                        return idx
            else:
                stor0 = 0
                if sub_8aa19122.length >= 500:
                    s = var31004
                    s = var31006
                    s = var31007
                    while var37005 < var37001:
                        require var39004 < sub_8aa19122.length
                        require block.timestamp
                        s = var39004
                        t = var39001
                        t = var39003
                        t = var39004
                        while sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var39004].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var39004].field_0] / block.timestamp)) / 1000) >= ext_call.return_data[0] + 5:
                            if sub_8aa19122.length >= 500:
                                mem[0] = sub_8aa19122[s].field_0
                                mem[32] = 3
                                require block.timestamp
                                mem[96] = block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[s].field_0] / block.timestamp)
                                s = sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[s].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[s].field_0] / block.timestamp)) / 1000)
                                s = sub_8aa19122[s].field_0
                                s = t + 1
                                continue 
                            if t + 1 >= sub_8aa19122.length:
                                return 0
                            mem[0] = sub_8aa19122[t].field_512
                            mem[32] = 3
                            require block.timestamp
                            mem[96] = block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[t].field_512] / block.timestamp)
                            s = t + 1
                            t = sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[t].field_512] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[t].field_512] / block.timestamp)) / 1000)
                            t = sub_8aa19122[s].field_0
                            t = t + 1
                            continue 
                        sub_a5008247[stor1[s].field_0]++
                        if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                            u = 1
                            v = 0
                            while sub_a5008247[stor1[s].field_0] + 1 >= u:
                                u = 256 * u
                                v = v + 1
                                continue 
                            if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                                mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                            else:
                                if sub_a5008247[stor1[s].field_0] + 1 >= 128:
                                    mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                else:
                                    mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                            mem[128] = address(sha3(mem[96 len v + 23]))
                            sub_7e1aa7a7[stor1[s].field_0] = sha3(mem[128 len 20])
                        else:
                            if sub_a5008247[stor1[s].field_0] + 1 < 128:
                                if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                                    sub_7e1aa7a7[stor1[s].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)))
                                else:
                                    if sub_a5008247[stor1[s].field_0] + 1 >= 128:
                                        sub_7e1aa7a7[stor1[s].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)))
                                    else:
                                        sub_7e1aa7a7[stor1[s].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000) >> 72)))
                            else:
                                u = 1
                                v = 0
                                while sub_a5008247[stor1[s].field_0] + 1 >= u:
                                    u = 256 * u
                                    v = v + 1
                                    continue 
                                if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                                    mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                else:
                                    if sub_a5008247[stor1[s].field_0] + 1 >= 128:
                                        mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                    else:
                                        mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                                mem[128] = address(sha3(mem[96 len v + 23]))
                                sub_7e1aa7a7[stor1[s].field_0] = sha3(mem[128 len 20])
                        require ext_code.size(sub_8aa19122[s].field_0)
                        if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var39004].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var39004].field_0] / block.timestamp)) / 1000) < 5:
                            call sub_8aa19122[s].field_0.0xde3a04ad with:
                               value msg.value wei
                                 gas gas_remaining wei
                                args address(arg1), arg2, arg4, arg3
                        else:
                            call sub_8aa19122[s].field_0.0xde3a04ad with:
                               value msg.value wei
                                 gas gas_remaining wei
                                args address(arg1), arg2, 0, arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require eth.balance(tx.origin) < eth.balance(tx.origin)
                        return t
                else:
                    s = var31004
                    s = var31006
                    s = var31007
                    while var37005 < var37001:
                        require var39004 < sub_8aa19122.length
                        require block.timestamp
                        s = var39004
                        t = var39001
                        t = var39003
                        t = var39004
                        while sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var39004].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var39004].field_0] / block.timestamp)) / 1000) >= ext_call.return_data[0] + 5:
                            if sub_8aa19122.length < 500:
                                mem[0] = sub_8aa19122[s].field_0
                                mem[32] = 3
                                require block.timestamp
                                mem[96] = block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[s].field_0] / block.timestamp)
                                s = sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[s].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[s].field_0] / block.timestamp)) / 1000)
                                s = sub_8aa19122[s].field_0
                                s = t + 1
                                continue 
                            if t + 1 >= 500:
                                return 0
                            require t + 1 < sub_8aa19122.length
                            mem[0] = sub_8aa19122[t].field_512
                            mem[32] = 3
                            require block.timestamp
                            mem[96] = block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[t].field_512] / block.timestamp)
                            s = t + 1
                            t = sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[t].field_512] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[t].field_512] / block.timestamp)) / 1000)
                            t = sub_8aa19122[s].field_0
                            t = t + 1
                            continue 
                        sub_a5008247[stor1[s].field_0]++
                        if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                            u = 1
                            v = 0
                            while sub_a5008247[stor1[s].field_0] + 1 >= u:
                                u = 256 * u
                                v = v + 1
                                continue 
                            if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                                mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                            else:
                                if sub_a5008247[stor1[s].field_0] + 1 >= 128:
                                    mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                else:
                                    mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                            mem[128] = address(sha3(mem[96 len v + 23]))
                            sub_7e1aa7a7[stor1[s].field_0] = sha3(mem[128 len 20])
                        else:
                            if sub_a5008247[stor1[s].field_0] + 1 < 128:
                                if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                                    sub_7e1aa7a7[stor1[s].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)))
                                else:
                                    if sub_a5008247[stor1[s].field_0] + 1 >= 128:
                                        sub_7e1aa7a7[stor1[s].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)))
                                    else:
                                        sub_7e1aa7a7[stor1[s].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000) >> 72)))
                            else:
                                u = 1
                                v = 0
                                while sub_a5008247[stor1[s].field_0] + 1 >= u:
                                    u = 256 * u
                                    v = v + 1
                                    continue 
                                if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                                    mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                else:
                                    if sub_a5008247[stor1[s].field_0] + 1 >= 128:
                                        mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                    else:
                                        mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                                mem[128] = address(sha3(mem[96 len v + 23]))
                                sub_7e1aa7a7[stor1[s].field_0] = sha3(mem[128 len 20])
                        require ext_code.size(sub_8aa19122[s].field_0)
                        if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var39004].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var39004].field_0] / block.timestamp)) / 1000) < 5:
                            call sub_8aa19122[s].field_0.0xde3a04ad with:
                               value msg.value wei
                                 gas gas_remaining wei
                                args address(arg1), arg2, arg4, arg3
                        else:
                            call sub_8aa19122[s].field_0.0xde3a04ad with:
                               value msg.value wei
                                 gas gas_remaining wei
                                args address(arg1), arg2, 0, arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require eth.balance(tx.origin) < eth.balance(tx.origin)
                        return t
    else:
        if tx.origin == 0xae587866822dced0c4b5a0b534ec025b52c4acd0:
            require block.gas_limit < 10 * 10^6
            require ext_code.size(arg1)
            call arg1.0xd87574e0 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] > arg3
            require ext_code.size(arg1)
            call arg1.0x11a09ae7 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[96] = address(block.coinbase)
            require block.timestamp
            if stor0:
                stor0 = 0
                if sub_8aa19122.length >= 500:
                    s = var31004
                    s = var31006
                    s = var31007
                    while var37005 < var37001:
                        require var39004 < sub_8aa19122.length
                        require block.timestamp
                        s = var39004
                        t = var39001
                        t = var39003
                        t = var39004
                        while sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var39004].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var39004].field_0] / block.timestamp)) / 1000) >= ext_call.return_data[0] + 5:
                            if sub_8aa19122.length >= 500:
                                mem[0] = sub_8aa19122[s].field_0
                                mem[32] = 3
                                require block.timestamp
                                mem[96] = block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[s].field_0] / block.timestamp)
                                s = sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[s].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[s].field_0] / block.timestamp)) / 1000)
                                s = sub_8aa19122[s].field_0
                                s = t + 1
                                continue 
                            if t + 1 >= sub_8aa19122.length:
                                return 0
                            mem[0] = sub_8aa19122[t].field_512
                            mem[32] = 3
                            require block.timestamp
                            mem[96] = block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[t].field_512] / block.timestamp)
                            s = t + 1
                            t = sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[t].field_512] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[t].field_512] / block.timestamp)) / 1000)
                            t = sub_8aa19122[s].field_0
                            t = t + 1
                            continue 
                        sub_a5008247[stor1[s].field_0]++
                        if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                            u = 1
                            v = 0
                            while sub_a5008247[stor1[s].field_0] + 1 >= u:
                                u = 256 * u
                                v = v + 1
                                continue 
                            if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                                mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                            else:
                                if sub_a5008247[stor1[s].field_0] + 1 >= 128:
                                    mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                else:
                                    mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                            mem[128] = address(sha3(mem[96 len v + 23]))
                            sub_7e1aa7a7[stor1[s].field_0] = sha3(mem[128 len 20])
                        else:
                            if sub_a5008247[stor1[s].field_0] + 1 < 128:
                                if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                                    sub_7e1aa7a7[stor1[s].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)))
                                else:
                                    if sub_a5008247[stor1[s].field_0] + 1 >= 128:
                                        sub_7e1aa7a7[stor1[s].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)))
                                    else:
                                        sub_7e1aa7a7[stor1[s].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000) >> 72)))
                            else:
                                u = 1
                                v = 0
                                while sub_a5008247[stor1[s].field_0] + 1 >= u:
                                    u = 256 * u
                                    v = v + 1
                                    continue 
                                if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                                    mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                else:
                                    if sub_a5008247[stor1[s].field_0] + 1 >= 128:
                                        mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                    else:
                                        mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                                mem[128] = address(sha3(mem[96 len v + 23]))
                                sub_7e1aa7a7[stor1[s].field_0] = sha3(mem[128 len 20])
                        require ext_code.size(sub_8aa19122[s].field_0)
                        if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var39004].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var39004].field_0] / block.timestamp)) / 1000) < 5:
                            call sub_8aa19122[s].field_0.0xde3a04ad with:
                               value msg.value wei
                                 gas gas_remaining wei
                                args address(arg1), arg2, arg4, arg3
                        else:
                            call sub_8aa19122[s].field_0.0xde3a04ad with:
                               value msg.value wei
                                 gas gas_remaining wei
                                args address(arg1), arg2, 0, arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require eth.balance(tx.origin) < eth.balance(tx.origin)
                        return t
                else:
                    s = var31004
                    s = var31006
                    s = var31007
                    while var37005 < var37001:
                        require var39004 < sub_8aa19122.length
                        require block.timestamp
                        s = var39004
                        t = var39001
                        t = var39003
                        t = var39004
                        while sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var39004].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var39004].field_0] / block.timestamp)) / 1000) >= ext_call.return_data[0] + 5:
                            if sub_8aa19122.length < 500:
                                mem[0] = sub_8aa19122[s].field_0
                                mem[32] = 3
                                require block.timestamp
                                mem[96] = block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[s].field_0] / block.timestamp)
                                s = sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[s].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[s].field_0] / block.timestamp)) / 1000)
                                s = sub_8aa19122[s].field_0
                                s = t + 1
                                continue 
                            if t + 1 >= 500:
                                return 0
                            require t + 1 < sub_8aa19122.length
                            mem[0] = sub_8aa19122[t].field_512
                            mem[32] = 3
                            require block.timestamp
                            mem[96] = block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[t].field_512] / block.timestamp)
                            s = t + 1
                            t = sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[t].field_512] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[t].field_512] / block.timestamp)) / 1000)
                            t = sub_8aa19122[s].field_0
                            t = t + 1
                            continue 
                        sub_a5008247[stor1[s].field_0]++
                        if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                            u = 1
                            v = 0
                            while sub_a5008247[stor1[s].field_0] + 1 >= u:
                                u = 256 * u
                                v = v + 1
                                continue 
                            if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                                mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                            else:
                                if sub_a5008247[stor1[s].field_0] + 1 >= 128:
                                    mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                else:
                                    mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                            mem[128] = address(sha3(mem[96 len v + 23]))
                            sub_7e1aa7a7[stor1[s].field_0] = sha3(mem[128 len 20])
                        else:
                            if sub_a5008247[stor1[s].field_0] + 1 < 128:
                                if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                                    sub_7e1aa7a7[stor1[s].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)))
                                else:
                                    if sub_a5008247[stor1[s].field_0] + 1 >= 128:
                                        sub_7e1aa7a7[stor1[s].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)))
                                    else:
                                        sub_7e1aa7a7[stor1[s].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000) >> 72)))
                            else:
                                u = 1
                                v = 0
                                while sub_a5008247[stor1[s].field_0] + 1 >= u:
                                    u = 256 * u
                                    v = v + 1
                                    continue 
                                if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                                    mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                else:
                                    if sub_a5008247[stor1[s].field_0] + 1 >= 128:
                                        mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                    else:
                                        mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                                mem[128] = address(sha3(mem[96 len v + 23]))
                                sub_7e1aa7a7[stor1[s].field_0] = sha3(mem[128 len 20])
                        require ext_code.size(sub_8aa19122[s].field_0)
                        if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var39004].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var39004].field_0] / block.timestamp)) / 1000) < 5:
                            call sub_8aa19122[s].field_0.0xde3a04ad with:
                               value msg.value wei
                                 gas gas_remaining wei
                                args address(arg1), arg2, arg4, arg3
                        else:
                            call sub_8aa19122[s].field_0.0xde3a04ad with:
                               value msg.value wei
                                 gas gas_remaining wei
                                args address(arg1), arg2, 0, arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require eth.balance(tx.origin) < eth.balance(tx.origin)
                        return t
            else:
                if 500 < sub_8aa19122.length:
                    stor0 = 1
                    if sub_8aa19122.length >= 500:
                        s = 0
                        s = 0
                        idx = 500
                        while idx < sub_8aa19122.length:
                            mem[0] = sub_8aa19122[idx].field_0
                            mem[32] = 3
                            require block.timestamp
                            mem[96] = block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx].field_0] / block.timestamp)
                            if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx].field_0] / block.timestamp)) / 1000) >= ext_call.return_data[0] + 5:
                                s = sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx].field_0] / block.timestamp)) / 1000)
                                s = sub_8aa19122[idx].field_0
                                idx = idx + 1
                                continue 
                            sub_a5008247[stor1[idx].field_0]++
                            if 0 >= sub_a5008247[stor1[idx].field_0] + 1:
                                s = 1
                                t = 0
                                while sub_a5008247[stor1[idx].field_0] + 1 >= s:
                                    s = 256 * s
                                    t = t + 1
                                    continue 
                                if 0 >= sub_a5008247[stor1[idx].field_0] + 1:
                                    mem[96] = (t + 214 << 248) + (sub_8aa19122[idx].field_0 << 80) + (t + 128 << 72) + 256^(-t + 9) + (sub_a5008247[stor1[idx].field_0] * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                else:
                                    if sub_a5008247[stor1[idx].field_0] + 1 >= 128:
                                        mem[96] = (t + 214 << 248) + (sub_8aa19122[idx].field_0 << 80) + (t + 128 << 72) + 256^(-t + 9) + (sub_a5008247[stor1[idx].field_0] * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                    else:
                                        mem[96] = (t + 214 << 248) + (sub_8aa19122[idx].field_0 << 80) + (sub_a5008247[stor1[idx].field_0] + 1 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                                mem[128] = address(sha3(mem[96 len t + 23]))
                                sub_7e1aa7a7[stor1[idx].field_0] = sha3(mem[128 len 20])
                            else:
                                if sub_a5008247[stor1[idx].field_0] + 1 < 128:
                                    if 0 >= sub_a5008247[stor1[idx].field_0] + 1:
                                        sub_7e1aa7a7[stor1[idx].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[idx].field_0 << 80) + (sub_a5008247[stor1[idx].field_0] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)))
                                    else:
                                        if sub_a5008247[stor1[idx].field_0] + 1 >= 128:
                                            sub_7e1aa7a7[stor1[idx].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[idx].field_0 << 80) + (sub_a5008247[stor1[idx].field_0] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)))
                                        else:
                                            sub_7e1aa7a7[stor1[idx].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[idx].field_0 << 80) + (sub_a5008247[stor1[idx].field_0] + 1 << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000) >> 72)))
                                else:
                                    s = 1
                                    t = 0
                                    while sub_a5008247[stor1[idx].field_0] + 1 >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if 0 >= sub_a5008247[stor1[idx].field_0] + 1:
                                        mem[96] = (t + 214 << 248) + (sub_8aa19122[idx].field_0 << 80) + (t + 128 << 72) + 256^(-t + 9) + (sub_a5008247[stor1[idx].field_0] * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                    else:
                                        if sub_a5008247[stor1[idx].field_0] + 1 >= 128:
                                            mem[96] = (t + 214 << 248) + (sub_8aa19122[idx].field_0 << 80) + (t + 128 << 72) + 256^(-t + 9) + (sub_a5008247[stor1[idx].field_0] * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                        else:
                                            mem[96] = (t + 214 << 248) + (sub_8aa19122[idx].field_0 << 80) + (sub_a5008247[stor1[idx].field_0] + 1 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                                    mem[128] = address(sha3(mem[96 len t + 23]))
                                    sub_7e1aa7a7[stor1[idx].field_0] = sha3(mem[128 len 20])
                            require ext_code.size(sub_8aa19122[idx].field_0)
                            if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx].field_0] / block.timestamp)) / 1000) < 5:
                                call sub_8aa19122[idx].field_0.0xde3a04ad with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                    args address(arg1), arg2, arg4, arg3
                            else:
                                call sub_8aa19122[idx].field_0.0xde3a04ad with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                    args address(arg1), arg2, 0, arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require eth.balance(tx.origin) < eth.balance(tx.origin)
                            return idx
                    else:
                        s = 0
                        s = 0
                        idx = sub_8aa19122.length
                        while idx < sub_8aa19122.length:
                            mem[0] = sub_8aa19122[idx].field_0
                            mem[32] = 3
                            require block.timestamp
                            mem[96] = block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx].field_0] / block.timestamp)
                            if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx].field_0] / block.timestamp)) / 1000) >= ext_call.return_data[0] + 5:
                                s = sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx].field_0] / block.timestamp)) / 1000)
                                s = sub_8aa19122[idx].field_0
                                idx = idx + 1
                                continue 
                            sub_a5008247[stor1[idx].field_0]++
                            if 0 >= sub_a5008247[stor1[idx].field_0] + 1:
                                s = 1
                                t = 0
                                while sub_a5008247[stor1[idx].field_0] + 1 >= s:
                                    s = 256 * s
                                    t = t + 1
                                    continue 
                                if 0 >= sub_a5008247[stor1[idx].field_0] + 1:
                                    mem[96] = (t + 214 << 248) + (sub_8aa19122[idx].field_0 << 80) + (t + 128 << 72) + 256^(-t + 9) + (sub_a5008247[stor1[idx].field_0] * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                else:
                                    if sub_a5008247[stor1[idx].field_0] + 1 >= 128:
                                        mem[96] = (t + 214 << 248) + (sub_8aa19122[idx].field_0 << 80) + (t + 128 << 72) + 256^(-t + 9) + (sub_a5008247[stor1[idx].field_0] * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                    else:
                                        mem[96] = (t + 214 << 248) + (sub_8aa19122[idx].field_0 << 80) + (sub_a5008247[stor1[idx].field_0] + 1 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                                mem[128] = address(sha3(mem[96 len t + 23]))
                                sub_7e1aa7a7[stor1[idx].field_0] = sha3(mem[128 len 20])
                            else:
                                if sub_a5008247[stor1[idx].field_0] + 1 < 128:
                                    if 0 >= sub_a5008247[stor1[idx].field_0] + 1:
                                        sub_7e1aa7a7[stor1[idx].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[idx].field_0 << 80) + (sub_a5008247[stor1[idx].field_0] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)))
                                    else:
                                        if sub_a5008247[stor1[idx].field_0] + 1 >= 128:
                                            sub_7e1aa7a7[stor1[idx].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[idx].field_0 << 80) + (sub_a5008247[stor1[idx].field_0] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)))
                                        else:
                                            sub_7e1aa7a7[stor1[idx].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[idx].field_0 << 80) + (sub_a5008247[stor1[idx].field_0] + 1 << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000) >> 72)))
                                else:
                                    s = 1
                                    t = 0
                                    while sub_a5008247[stor1[idx].field_0] + 1 >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if 0 >= sub_a5008247[stor1[idx].field_0] + 1:
                                        mem[96] = (t + 214 << 248) + (sub_8aa19122[idx].field_0 << 80) + (t + 128 << 72) + 256^(-t + 9) + (sub_a5008247[stor1[idx].field_0] * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                    else:
                                        if sub_a5008247[stor1[idx].field_0] + 1 >= 128:
                                            mem[96] = (t + 214 << 248) + (sub_8aa19122[idx].field_0 << 80) + (t + 128 << 72) + 256^(-t + 9) + (sub_a5008247[stor1[idx].field_0] * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                        else:
                                            mem[96] = (t + 214 << 248) + (sub_8aa19122[idx].field_0 << 80) + (sub_a5008247[stor1[idx].field_0] + 1 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                                    mem[128] = address(sha3(mem[96 len t + 23]))
                                    sub_7e1aa7a7[stor1[idx].field_0] = sha3(mem[128 len 20])
                            require ext_code.size(sub_8aa19122[idx].field_0)
                            if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx].field_0] / block.timestamp)) / 1000) < 5:
                                call sub_8aa19122[idx].field_0.0xde3a04ad with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                    args address(arg1), arg2, arg4, arg3
                            else:
                                call sub_8aa19122[idx].field_0.0xde3a04ad with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                    args address(arg1), arg2, 0, arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require eth.balance(tx.origin) < eth.balance(tx.origin)
                            return idx
                else:
                    stor0 = 0
                    if sub_8aa19122.length >= 500:
                        s = var32004
                        s = var32006
                        s = var32007
                        while var38005 < var38001:
                            require var40004 < sub_8aa19122.length
                            require block.timestamp
                            s = var40004
                            t = var40001
                            t = var40003
                            t = var40004
                            while sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var40004].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var40004].field_0] / block.timestamp)) / 1000) >= ext_call.return_data[0] + 5:
                                if sub_8aa19122.length >= 500:
                                    mem[0] = sub_8aa19122[s].field_0
                                    mem[32] = 3
                                    require block.timestamp
                                    mem[96] = block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[s].field_0] / block.timestamp)
                                    s = sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[s].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[s].field_0] / block.timestamp)) / 1000)
                                    s = sub_8aa19122[s].field_0
                                    s = t + 1
                                    continue 
                                if t + 1 >= sub_8aa19122.length:
                                    return 0
                                mem[0] = sub_8aa19122[t].field_512
                                mem[32] = 3
                                require block.timestamp
                                mem[96] = block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[t].field_512] / block.timestamp)
                                s = t + 1
                                t = sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[t].field_512] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[t].field_512] / block.timestamp)) / 1000)
                                t = sub_8aa19122[s].field_0
                                t = t + 1
                                continue 
                            sub_a5008247[stor1[s].field_0]++
                            if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                                u = 1
                                v = 0
                                while sub_a5008247[stor1[s].field_0] + 1 >= u:
                                    u = 256 * u
                                    v = v + 1
                                    continue 
                                if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                                    mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                else:
                                    if sub_a5008247[stor1[s].field_0] + 1 >= 128:
                                        mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                    else:
                                        mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                                mem[128] = address(sha3(mem[96 len v + 23]))
                                sub_7e1aa7a7[stor1[s].field_0] = sha3(mem[128 len 20])
                            else:
                                if sub_a5008247[stor1[s].field_0] + 1 < 128:
                                    if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                                        sub_7e1aa7a7[stor1[s].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)))
                                    else:
                                        if sub_a5008247[stor1[s].field_0] + 1 >= 128:
                                            sub_7e1aa7a7[stor1[s].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)))
                                        else:
                                            sub_7e1aa7a7[stor1[s].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000) >> 72)))
                                else:
                                    u = 1
                                    v = 0
                                    while sub_a5008247[stor1[s].field_0] + 1 >= u:
                                        u = 256 * u
                                        v = v + 1
                                        continue 
                                    if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                                        mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                    else:
                                        if sub_a5008247[stor1[s].field_0] + 1 >= 128:
                                            mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                        else:
                                            mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                                    mem[128] = address(sha3(mem[96 len v + 23]))
                                    sub_7e1aa7a7[stor1[s].field_0] = sha3(mem[128 len 20])
                            require ext_code.size(sub_8aa19122[s].field_0)
                            if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var40004].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var40004].field_0] / block.timestamp)) / 1000) < 5:
                                call sub_8aa19122[s].field_0.0xde3a04ad with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                    args address(arg1), arg2, arg4, arg3
                            else:
                                call sub_8aa19122[s].field_0.0xde3a04ad with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                    args address(arg1), arg2, 0, arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require eth.balance(tx.origin) < eth.balance(tx.origin)
                            return t
                    else:
                        s = var32004
                        s = var32006
                        s = var32007
                        while var38005 < var38001:
                            require var40004 < sub_8aa19122.length
                            require block.timestamp
                            s = var40004
                            t = var40001
                            t = var40003
                            t = var40004
                            while sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var40004].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var40004].field_0] / block.timestamp)) / 1000) >= ext_call.return_data[0] + 5:
                                if sub_8aa19122.length < 500:
                                    mem[0] = sub_8aa19122[s].field_0
                                    mem[32] = 3
                                    require block.timestamp
                                    mem[96] = block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[s].field_0] / block.timestamp)
                                    s = sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[s].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[s].field_0] / block.timestamp)) / 1000)
                                    s = sub_8aa19122[s].field_0
                                    s = t + 1
                                    continue 
                                if t + 1 >= 500:
                                    return 0
                                require t + 1 < sub_8aa19122.length
                                mem[0] = sub_8aa19122[t].field_512
                                mem[32] = 3
                                require block.timestamp
                                mem[96] = block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[t].field_512] / block.timestamp)
                                s = t + 1
                                t = sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[t].field_512] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[t].field_512] / block.timestamp)) / 1000)
                                t = sub_8aa19122[s].field_0
                                t = t + 1
                                continue 
                            sub_a5008247[stor1[s].field_0]++
                            if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                                u = 1
                                v = 0
                                while sub_a5008247[stor1[s].field_0] + 1 >= u:
                                    u = 256 * u
                                    v = v + 1
                                    continue 
                                if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                                    mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                else:
                                    if sub_a5008247[stor1[s].field_0] + 1 >= 128:
                                        mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                    else:
                                        mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                                mem[128] = address(sha3(mem[96 len v + 23]))
                                sub_7e1aa7a7[stor1[s].field_0] = sha3(mem[128 len 20])
                            else:
                                if sub_a5008247[stor1[s].field_0] + 1 < 128:
                                    if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                                        sub_7e1aa7a7[stor1[s].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)))
                                    else:
                                        if sub_a5008247[stor1[s].field_0] + 1 >= 128:
                                            sub_7e1aa7a7[stor1[s].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)))
                                        else:
                                            sub_7e1aa7a7[stor1[s].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000) >> 72)))
                                else:
                                    u = 1
                                    v = 0
                                    while sub_a5008247[stor1[s].field_0] + 1 >= u:
                                        u = 256 * u
                                        v = v + 1
                                        continue 
                                    if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                                        mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                    else:
                                        if sub_a5008247[stor1[s].field_0] + 1 >= 128:
                                            mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                        else:
                                            mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                                    mem[128] = address(sha3(mem[96 len v + 23]))
                                    sub_7e1aa7a7[stor1[s].field_0] = sha3(mem[128 len 20])
                            require ext_code.size(sub_8aa19122[s].field_0)
                            if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var40004].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var40004].field_0] / block.timestamp)) / 1000) < 5:
                                call sub_8aa19122[s].field_0.0xde3a04ad with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                    args address(arg1), arg2, arg4, arg3
                            else:
                                call sub_8aa19122[s].field_0.0xde3a04ad with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                    args address(arg1), arg2, 0, arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require eth.balance(tx.origin) < eth.balance(tx.origin)
                            return t
        else:
            if tx.origin == 0x16e21b702ea2ee0f4dc40e877099c88acd3d27d5:
                require block.gas_limit < 10 * 10^6
                require ext_code.size(arg1)
                call arg1.0xd87574e0 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] > arg3
                require ext_code.size(arg1)
                call arg1.0x11a09ae7 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[96] = address(block.coinbase)
                require block.timestamp
                if stor0:
                    stor0 = 0
                    if sub_8aa19122.length >= 500:
                        s = var32004
                        s = var32006
                        s = var32007
                        while var38005 < var38001:
                            require var40004 < sub_8aa19122.length
                            require block.timestamp
                            s = var40004
                            t = var40001
                            t = var40003
                            t = var40004
                            while sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var40004].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var40004].field_0] / block.timestamp)) / 1000) >= ext_call.return_data[0] + 5:
                                if sub_8aa19122.length >= 500:
                                    mem[0] = sub_8aa19122[s].field_0
                                    mem[32] = 3
                                    require block.timestamp
                                    mem[96] = block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[s].field_0] / block.timestamp)
                                    s = sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[s].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[s].field_0] / block.timestamp)) / 1000)
                                    s = sub_8aa19122[s].field_0
                                    s = t + 1
                                    continue 
                                if t + 1 >= sub_8aa19122.length:
                                    return 0
                                mem[0] = sub_8aa19122[t].field_512
                                mem[32] = 3
                                require block.timestamp
                                mem[96] = block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[t].field_512] / block.timestamp)
                                s = t + 1
                                t = sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[t].field_512] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[t].field_512] / block.timestamp)) / 1000)
                                t = sub_8aa19122[s].field_0
                                t = t + 1
                                continue 
                            sub_a5008247[stor1[s].field_0]++
                            if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                                u = 1
                                v = 0
                                while sub_a5008247[stor1[s].field_0] + 1 >= u:
                                    u = 256 * u
                                    v = v + 1
                                    continue 
                                if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                                    mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                else:
                                    if sub_a5008247[stor1[s].field_0] + 1 >= 128:
                                        mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                    else:
                                        mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                                mem[128] = address(sha3(mem[96 len v + 23]))
                                sub_7e1aa7a7[stor1[s].field_0] = sha3(mem[128 len 20])
                            else:
                                if sub_a5008247[stor1[s].field_0] + 1 < 128:
                                    if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                                        sub_7e1aa7a7[stor1[s].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)))
                                    else:
                                        if sub_a5008247[stor1[s].field_0] + 1 >= 128:
                                            sub_7e1aa7a7[stor1[s].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)))
                                        else:
                                            sub_7e1aa7a7[stor1[s].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000) >> 72)))
                                else:
                                    u = 1
                                    v = 0
                                    while sub_a5008247[stor1[s].field_0] + 1 >= u:
                                        u = 256 * u
                                        v = v + 1
                                        continue 
                                    if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                                        mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                    else:
                                        if sub_a5008247[stor1[s].field_0] + 1 >= 128:
                                            mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                        else:
                                            mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                                    mem[128] = address(sha3(mem[96 len v + 23]))
                                    sub_7e1aa7a7[stor1[s].field_0] = sha3(mem[128 len 20])
                            require ext_code.size(sub_8aa19122[s].field_0)
                            if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var40004].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var40004].field_0] / block.timestamp)) / 1000) < 5:
                                call sub_8aa19122[s].field_0.0xde3a04ad with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                    args address(arg1), arg2, arg4, arg3
                            else:
                                call sub_8aa19122[s].field_0.0xde3a04ad with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                    args address(arg1), arg2, 0, arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require eth.balance(tx.origin) < eth.balance(tx.origin)
                            return t
                    else:
                        s = var32004
                        s = var32006
                        s = var32007
                        while var38005 < var38001:
                            require var40004 < sub_8aa19122.length
                            require block.timestamp
                            s = var40004
                            t = var40001
                            t = var40003
                            t = var40004
                            while sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var40004].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var40004].field_0] / block.timestamp)) / 1000) >= ext_call.return_data[0] + 5:
                                if sub_8aa19122.length < 500:
                                    mem[0] = sub_8aa19122[s].field_0
                                    mem[32] = 3
                                    require block.timestamp
                                    mem[96] = block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[s].field_0] / block.timestamp)
                                    s = sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[s].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[s].field_0] / block.timestamp)) / 1000)
                                    s = sub_8aa19122[s].field_0
                                    s = t + 1
                                    continue 
                                if t + 1 >= 500:
                                    return 0
                                require t + 1 < sub_8aa19122.length
                                mem[0] = sub_8aa19122[t].field_512
                                mem[32] = 3
                                require block.timestamp
                                mem[96] = block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[t].field_512] / block.timestamp)
                                s = t + 1
                                t = sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[t].field_512] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[t].field_512] / block.timestamp)) / 1000)
                                t = sub_8aa19122[s].field_0
                                t = t + 1
                                continue 
                            sub_a5008247[stor1[s].field_0]++
                            if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                                u = 1
                                v = 0
                                while sub_a5008247[stor1[s].field_0] + 1 >= u:
                                    u = 256 * u
                                    v = v + 1
                                    continue 
                                if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                                    mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                else:
                                    if sub_a5008247[stor1[s].field_0] + 1 >= 128:
                                        mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                    else:
                                        mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                                mem[128] = address(sha3(mem[96 len v + 23]))
                                sub_7e1aa7a7[stor1[s].field_0] = sha3(mem[128 len 20])
                            else:
                                if sub_a5008247[stor1[s].field_0] + 1 < 128:
                                    if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                                        sub_7e1aa7a7[stor1[s].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)))
                                    else:
                                        if sub_a5008247[stor1[s].field_0] + 1 >= 128:
                                            sub_7e1aa7a7[stor1[s].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)))
                                        else:
                                            sub_7e1aa7a7[stor1[s].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000) >> 72)))
                                else:
                                    u = 1
                                    v = 0
                                    while sub_a5008247[stor1[s].field_0] + 1 >= u:
                                        u = 256 * u
                                        v = v + 1
                                        continue 
                                    if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                                        mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                    else:
                                        if sub_a5008247[stor1[s].field_0] + 1 >= 128:
                                            mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                        else:
                                            mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                                    mem[128] = address(sha3(mem[96 len v + 23]))
                                    sub_7e1aa7a7[stor1[s].field_0] = sha3(mem[128 len 20])
                            require ext_code.size(sub_8aa19122[s].field_0)
                            if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var40004].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var40004].field_0] / block.timestamp)) / 1000) < 5:
                                call sub_8aa19122[s].field_0.0xde3a04ad with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                    args address(arg1), arg2, arg4, arg3
                            else:
                                call sub_8aa19122[s].field_0.0xde3a04ad with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                    args address(arg1), arg2, 0, arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require eth.balance(tx.origin) < eth.balance(tx.origin)
                            return t
                else:
                    if 500 < sub_8aa19122.length:
                        stor0 = 1
                        if sub_8aa19122.length >= 500:
                            s = 0
                            s = 0
                            idx = 500
                            while idx < sub_8aa19122.length:
                                mem[0] = sub_8aa19122[idx].field_0
                                mem[32] = 3
                                require block.timestamp
                                mem[96] = block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx].field_0] / block.timestamp)
                                if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx].field_0] / block.timestamp)) / 1000) >= ext_call.return_data[0] + 5:
                                    s = sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx].field_0] / block.timestamp)) / 1000)
                                    s = sub_8aa19122[idx].field_0
                                    idx = idx + 1
                                    continue 
                                sub_a5008247[stor1[idx].field_0]++
                                if 0 >= sub_a5008247[stor1[idx].field_0] + 1:
                                    s = 1
                                    t = 0
                                    while sub_a5008247[stor1[idx].field_0] + 1 >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if 0 >= sub_a5008247[stor1[idx].field_0] + 1:
                                        mem[96] = (t + 214 << 248) + (sub_8aa19122[idx].field_0 << 80) + (t + 128 << 72) + 256^(-t + 9) + (sub_a5008247[stor1[idx].field_0] * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                    else:
                                        if sub_a5008247[stor1[idx].field_0] + 1 >= 128:
                                            mem[96] = (t + 214 << 248) + (sub_8aa19122[idx].field_0 << 80) + (t + 128 << 72) + 256^(-t + 9) + (sub_a5008247[stor1[idx].field_0] * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                        else:
                                            mem[96] = (t + 214 << 248) + (sub_8aa19122[idx].field_0 << 80) + (sub_a5008247[stor1[idx].field_0] + 1 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                                    mem[128] = address(sha3(mem[96 len t + 23]))
                                    sub_7e1aa7a7[stor1[idx].field_0] = sha3(mem[128 len 20])
                                else:
                                    if sub_a5008247[stor1[idx].field_0] + 1 < 128:
                                        if 0 >= sub_a5008247[stor1[idx].field_0] + 1:
                                            sub_7e1aa7a7[stor1[idx].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[idx].field_0 << 80) + (sub_a5008247[stor1[idx].field_0] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)))
                                        else:
                                            if sub_a5008247[stor1[idx].field_0] + 1 >= 128:
                                                sub_7e1aa7a7[stor1[idx].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[idx].field_0 << 80) + (sub_a5008247[stor1[idx].field_0] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)))
                                            else:
                                                sub_7e1aa7a7[stor1[idx].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[idx].field_0 << 80) + (sub_a5008247[stor1[idx].field_0] + 1 << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000) >> 72)))
                                    else:
                                        s = 1
                                        t = 0
                                        while sub_a5008247[stor1[idx].field_0] + 1 >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if 0 >= sub_a5008247[stor1[idx].field_0] + 1:
                                            mem[96] = (t + 214 << 248) + (sub_8aa19122[idx].field_0 << 80) + (t + 128 << 72) + 256^(-t + 9) + (sub_a5008247[stor1[idx].field_0] * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                        else:
                                            if sub_a5008247[stor1[idx].field_0] + 1 >= 128:
                                                mem[96] = (t + 214 << 248) + (sub_8aa19122[idx].field_0 << 80) + (t + 128 << 72) + 256^(-t + 9) + (sub_a5008247[stor1[idx].field_0] * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                            else:
                                                mem[96] = (t + 214 << 248) + (sub_8aa19122[idx].field_0 << 80) + (sub_a5008247[stor1[idx].field_0] + 1 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                                        mem[128] = address(sha3(mem[96 len t + 23]))
                                        sub_7e1aa7a7[stor1[idx].field_0] = sha3(mem[128 len 20])
                                require ext_code.size(sub_8aa19122[idx].field_0)
                                if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx].field_0] / block.timestamp)) / 1000) < 5:
                                    call sub_8aa19122[idx].field_0.0xde3a04ad with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                        args address(arg1), arg2, arg4, arg3
                                else:
                                    call sub_8aa19122[idx].field_0.0xde3a04ad with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                        args address(arg1), arg2, 0, arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require eth.balance(tx.origin) < eth.balance(tx.origin)
                                return idx
                        else:
                            s = 0
                            s = 0
                            idx = sub_8aa19122.length
                            while idx < sub_8aa19122.length:
                                mem[0] = sub_8aa19122[idx].field_0
                                mem[32] = 3
                                require block.timestamp
                                mem[96] = block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx].field_0] / block.timestamp)
                                if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx].field_0] / block.timestamp)) / 1000) >= ext_call.return_data[0] + 5:
                                    s = sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx].field_0] / block.timestamp)) / 1000)
                                    s = sub_8aa19122[idx].field_0
                                    idx = idx + 1
                                    continue 
                                sub_a5008247[stor1[idx].field_0]++
                                if 0 >= sub_a5008247[stor1[idx].field_0] + 1:
                                    s = 1
                                    t = 0
                                    while sub_a5008247[stor1[idx].field_0] + 1 >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if 0 >= sub_a5008247[stor1[idx].field_0] + 1:
                                        mem[96] = (t + 214 << 248) + (sub_8aa19122[idx].field_0 << 80) + (t + 128 << 72) + 256^(-t + 9) + (sub_a5008247[stor1[idx].field_0] * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                    else:
                                        if sub_a5008247[stor1[idx].field_0] + 1 >= 128:
                                            mem[96] = (t + 214 << 248) + (sub_8aa19122[idx].field_0 << 80) + (t + 128 << 72) + 256^(-t + 9) + (sub_a5008247[stor1[idx].field_0] * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                        else:
                                            mem[96] = (t + 214 << 248) + (sub_8aa19122[idx].field_0 << 80) + (sub_a5008247[stor1[idx].field_0] + 1 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                                    mem[128] = address(sha3(mem[96 len t + 23]))
                                    sub_7e1aa7a7[stor1[idx].field_0] = sha3(mem[128 len 20])
                                else:
                                    if sub_a5008247[stor1[idx].field_0] + 1 < 128:
                                        if 0 >= sub_a5008247[stor1[idx].field_0] + 1:
                                            sub_7e1aa7a7[stor1[idx].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[idx].field_0 << 80) + (sub_a5008247[stor1[idx].field_0] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)))
                                        else:
                                            if sub_a5008247[stor1[idx].field_0] + 1 >= 128:
                                                sub_7e1aa7a7[stor1[idx].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[idx].field_0 << 80) + (sub_a5008247[stor1[idx].field_0] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)))
                                            else:
                                                sub_7e1aa7a7[stor1[idx].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[idx].field_0 << 80) + (sub_a5008247[stor1[idx].field_0] + 1 << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000) >> 72)))
                                    else:
                                        s = 1
                                        t = 0
                                        while sub_a5008247[stor1[idx].field_0] + 1 >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if 0 >= sub_a5008247[stor1[idx].field_0] + 1:
                                            mem[96] = (t + 214 << 248) + (sub_8aa19122[idx].field_0 << 80) + (t + 128 << 72) + 256^(-t + 9) + (sub_a5008247[stor1[idx].field_0] * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                        else:
                                            if sub_a5008247[stor1[idx].field_0] + 1 >= 128:
                                                mem[96] = (t + 214 << 248) + (sub_8aa19122[idx].field_0 << 80) + (t + 128 << 72) + 256^(-t + 9) + (sub_a5008247[stor1[idx].field_0] * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                            else:
                                                mem[96] = (t + 214 << 248) + (sub_8aa19122[idx].field_0 << 80) + (sub_a5008247[stor1[idx].field_0] + 1 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                                        mem[128] = address(sha3(mem[96 len t + 23]))
                                        sub_7e1aa7a7[stor1[idx].field_0] = sha3(mem[128 len 20])
                                require ext_code.size(sub_8aa19122[idx].field_0)
                                if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx].field_0] / block.timestamp)) / 1000) < 5:
                                    call sub_8aa19122[idx].field_0.0xde3a04ad with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                        args address(arg1), arg2, arg4, arg3
                                else:
                                    call sub_8aa19122[idx].field_0.0xde3a04ad with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                        args address(arg1), arg2, 0, arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require eth.balance(tx.origin) < eth.balance(tx.origin)
                                return idx
                    else:
                        stor0 = 0
                        if sub_8aa19122.length >= 500:
                            s = var33004
                            s = var33006
                            s = var33007
                            while var39005 < var39001:
                                require var41004 < sub_8aa19122.length
                                require block.timestamp
                                s = var41004
                                t = var41001
                                t = var41003
                                t = var41004
                                while sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var41004].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var41004].field_0] / block.timestamp)) / 1000) >= ext_call.return_data[0] + 5:
                                    if sub_8aa19122.length >= 500:
                                        mem[0] = sub_8aa19122[s].field_0
                                        mem[32] = 3
                                        require block.timestamp
                                        mem[96] = block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[s].field_0] / block.timestamp)
                                        s = sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[s].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[s].field_0] / block.timestamp)) / 1000)
                                        s = sub_8aa19122[s].field_0
                                        s = t + 1
                                        continue 
                                    if t + 1 >= sub_8aa19122.length:
                                        return 0
                                    mem[0] = sub_8aa19122[t].field_512
                                    mem[32] = 3
                                    require block.timestamp
                                    mem[96] = block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[t].field_512] / block.timestamp)
                                    s = t + 1
                                    t = sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[t].field_512] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[t].field_512] / block.timestamp)) / 1000)
                                    t = sub_8aa19122[s].field_0
                                    t = t + 1
                                    continue 
                                sub_a5008247[stor1[s].field_0]++
                                if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                                    u = 1
                                    v = 0
                                    while sub_a5008247[stor1[s].field_0] + 1 >= u:
                                        u = 256 * u
                                        v = v + 1
                                        continue 
                                    if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                                        mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                    else:
                                        if sub_a5008247[stor1[s].field_0] + 1 >= 128:
                                            mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                        else:
                                            mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                                    mem[128] = address(sha3(mem[96 len v + 23]))
                                    sub_7e1aa7a7[stor1[s].field_0] = sha3(mem[128 len 20])
                                else:
                                    if sub_a5008247[stor1[s].field_0] + 1 < 128:
                                        if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                                            sub_7e1aa7a7[stor1[s].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)))
                                        else:
                                            if sub_a5008247[stor1[s].field_0] + 1 >= 128:
                                                sub_7e1aa7a7[stor1[s].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)))
                                            else:
                                                sub_7e1aa7a7[stor1[s].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000) >> 72)))
                                    else:
                                        u = 1
                                        v = 0
                                        while sub_a5008247[stor1[s].field_0] + 1 >= u:
                                            u = 256 * u
                                            v = v + 1
                                            continue 
                                        if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                                            mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                        else:
                                            if sub_a5008247[stor1[s].field_0] + 1 >= 128:
                                                mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                            else:
                                                mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                                        mem[128] = address(sha3(mem[96 len v + 23]))
                                        sub_7e1aa7a7[stor1[s].field_0] = sha3(mem[128 len 20])
                                require ext_code.size(sub_8aa19122[s].field_0)
                                if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var41004].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var41004].field_0] / block.timestamp)) / 1000) < 5:
                                    call sub_8aa19122[s].field_0.0xde3a04ad with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                        args address(arg1), arg2, arg4, arg3
                                else:
                                    call sub_8aa19122[s].field_0.0xde3a04ad with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                        args address(arg1), arg2, 0, arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require eth.balance(tx.origin) < eth.balance(tx.origin)
                                return t
                        else:
                            s = var33004
                            s = var33006
                            s = var33007
                            while var39005 < var39001:
                                require var41004 < sub_8aa19122.length
                                require block.timestamp
                                s = var41004
                                t = var41001
                                t = var41003
                                t = var41004
                                while sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var41004].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var41004].field_0] / block.timestamp)) / 1000) >= ext_call.return_data[0] + 5:
                                    if sub_8aa19122.length < 500:
                                        mem[0] = sub_8aa19122[s].field_0
                                        mem[32] = 3
                                        require block.timestamp
                                        mem[96] = block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[s].field_0] / block.timestamp)
                                        s = sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[s].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[s].field_0] / block.timestamp)) / 1000)
                                        s = sub_8aa19122[s].field_0
                                        s = t + 1
                                        continue 
                                    if t + 1 >= 500:
                                        return 0
                                    require t + 1 < sub_8aa19122.length
                                    mem[0] = sub_8aa19122[t].field_512
                                    mem[32] = 3
                                    require block.timestamp
                                    mem[96] = block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[t].field_512] / block.timestamp)
                                    s = t + 1
                                    t = sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[t].field_512] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[t].field_512] / block.timestamp)) / 1000)
                                    t = sub_8aa19122[s].field_0
                                    t = t + 1
                                    continue 
                                sub_a5008247[stor1[s].field_0]++
                                if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                                    u = 1
                                    v = 0
                                    while sub_a5008247[stor1[s].field_0] + 1 >= u:
                                        u = 256 * u
                                        v = v + 1
                                        continue 
                                    if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                                        mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                    else:
                                        if sub_a5008247[stor1[s].field_0] + 1 >= 128:
                                            mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                        else:
                                            mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                                    mem[128] = address(sha3(mem[96 len v + 23]))
                                    sub_7e1aa7a7[stor1[s].field_0] = sha3(mem[128 len 20])
                                else:
                                    if sub_a5008247[stor1[s].field_0] + 1 < 128:
                                        if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                                            sub_7e1aa7a7[stor1[s].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)))
                                        else:
                                            if sub_a5008247[stor1[s].field_0] + 1 >= 128:
                                                sub_7e1aa7a7[stor1[s].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)))
                                            else:
                                                sub_7e1aa7a7[stor1[s].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000) >> 72)))
                                    else:
                                        u = 1
                                        v = 0
                                        while sub_a5008247[stor1[s].field_0] + 1 >= u:
                                            u = 256 * u
                                            v = v + 1
                                            continue 
                                        if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                                            mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                        else:
                                            if sub_a5008247[stor1[s].field_0] + 1 >= 128:
                                                mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                            else:
                                                mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                                        mem[128] = address(sha3(mem[96 len v + 23]))
                                        sub_7e1aa7a7[stor1[s].field_0] = sha3(mem[128 len 20])
                                require ext_code.size(sub_8aa19122[s].field_0)
                                if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var41004].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var41004].field_0] / block.timestamp)) / 1000) < 5:
                                    call sub_8aa19122[s].field_0.0xde3a04ad with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                        args address(arg1), arg2, arg4, arg3
                                else:
                                    call sub_8aa19122[s].field_0.0xde3a04ad with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                        args address(arg1), arg2, 0, arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require eth.balance(tx.origin) < eth.balance(tx.origin)
                                return t
            else:
                if tx.origin == 0x5167350d082c9ec48ed6fd4c694dea7361269705:
                    require block.gas_limit < 10 * 10^6
                    require ext_code.size(arg1)
                    call arg1.0xd87574e0 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] > arg3
                    require ext_code.size(arg1)
                    call arg1.0x11a09ae7 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[96] = address(block.coinbase)
                    require block.timestamp
                    if stor0:
                        stor0 = 0
                        if sub_8aa19122.length >= 500:
                            s = var33004
                            s = var33006
                            s = var33007
                            while var39005 < var39001:
                                require var41004 < sub_8aa19122.length
                                require block.timestamp
                                s = var41004
                                t = var41001
                                t = var41003
                                t = var41004
                                while sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var41004].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var41004].field_0] / block.timestamp)) / 1000) >= ext_call.return_data[0] + 5:
                                    if sub_8aa19122.length >= 500:
                                        mem[0] = sub_8aa19122[s].field_0
                                        mem[32] = 3
                                        require block.timestamp
                                        mem[96] = block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[s].field_0] / block.timestamp)
                                        s = sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[s].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[s].field_0] / block.timestamp)) / 1000)
                                        s = sub_8aa19122[s].field_0
                                        s = t + 1
                                        continue 
                                    if t + 1 >= sub_8aa19122.length:
                                        return 0
                                    mem[0] = sub_8aa19122[t].field_512
                                    mem[32] = 3
                                    require block.timestamp
                                    mem[96] = block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[t].field_512] / block.timestamp)
                                    s = t + 1
                                    t = sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[t].field_512] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[t].field_512] / block.timestamp)) / 1000)
                                    t = sub_8aa19122[s].field_0
                                    t = t + 1
                                    continue 
                                sub_a5008247[stor1[s].field_0]++
                                if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                                    u = 1
                                    v = 0
                                    while sub_a5008247[stor1[s].field_0] + 1 >= u:
                                        u = 256 * u
                                        v = v + 1
                                        continue 
                                    if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                                        mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                    else:
                                        if sub_a5008247[stor1[s].field_0] + 1 >= 128:
                                            mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                        else:
                                            mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                                    mem[128] = address(sha3(mem[96 len v + 23]))
                                    sub_7e1aa7a7[stor1[s].field_0] = sha3(mem[128 len 20])
                                else:
                                    if sub_a5008247[stor1[s].field_0] + 1 < 128:
                                        if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                                            sub_7e1aa7a7[stor1[s].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)))
                                        else:
                                            if sub_a5008247[stor1[s].field_0] + 1 >= 128:
                                                sub_7e1aa7a7[stor1[s].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)))
                                            else:
                                                sub_7e1aa7a7[stor1[s].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000) >> 72)))
                                    else:
                                        u = 1
                                        v = 0
                                        while sub_a5008247[stor1[s].field_0] + 1 >= u:
                                            u = 256 * u
                                            v = v + 1
                                            continue 
                                        if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                                            mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                        else:
                                            if sub_a5008247[stor1[s].field_0] + 1 >= 128:
                                                mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                            else:
                                                mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                                        mem[128] = address(sha3(mem[96 len v + 23]))
                                        sub_7e1aa7a7[stor1[s].field_0] = sha3(mem[128 len 20])
                                require ext_code.size(sub_8aa19122[s].field_0)
                                if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var41004].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var41004].field_0] / block.timestamp)) / 1000) < 5:
                                    call sub_8aa19122[s].field_0.0xde3a04ad with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                        args address(arg1), arg2, arg4, arg3
                                else:
                                    call sub_8aa19122[s].field_0.0xde3a04ad with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                        args address(arg1), arg2, 0, arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require eth.balance(tx.origin) < eth.balance(tx.origin)
                                return t
                        else:
                            s = var33004
                            s = var33006
                            s = var33007
                            while var39005 < var39001:
                                require var41004 < sub_8aa19122.length
                                require block.timestamp
                                s = var41004
                                t = var41001
                                t = var41003
                                t = var41004
                                while sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var41004].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var41004].field_0] / block.timestamp)) / 1000) >= ext_call.return_data[0] + 5:
                                    if sub_8aa19122.length < 500:
                                        mem[0] = sub_8aa19122[s].field_0
                                        mem[32] = 3
                                        require block.timestamp
                                        mem[96] = block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[s].field_0] / block.timestamp)
                                        s = sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[s].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[s].field_0] / block.timestamp)) / 1000)
                                        s = sub_8aa19122[s].field_0
                                        s = t + 1
                                        continue 
                                    if t + 1 >= 500:
                                        return 0
                                    require t + 1 < sub_8aa19122.length
                                    mem[0] = sub_8aa19122[t].field_512
                                    mem[32] = 3
                                    require block.timestamp
                                    mem[96] = block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[t].field_512] / block.timestamp)
                                    s = t + 1
                                    t = sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[t].field_512] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[t].field_512] / block.timestamp)) / 1000)
                                    t = sub_8aa19122[s].field_0
                                    t = t + 1
                                    continue 
                                sub_a5008247[stor1[s].field_0]++
                                if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                                    u = 1
                                    v = 0
                                    while sub_a5008247[stor1[s].field_0] + 1 >= u:
                                        u = 256 * u
                                        v = v + 1
                                        continue 
                                    if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                                        mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                    else:
                                        if sub_a5008247[stor1[s].field_0] + 1 >= 128:
                                            mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                        else:
                                            mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                                    mem[128] = address(sha3(mem[96 len v + 23]))
                                    sub_7e1aa7a7[stor1[s].field_0] = sha3(mem[128 len 20])
                                else:
                                    if sub_a5008247[stor1[s].field_0] + 1 < 128:
                                        if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                                            sub_7e1aa7a7[stor1[s].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)))
                                        else:
                                            if sub_a5008247[stor1[s].field_0] + 1 >= 128:
                                                sub_7e1aa7a7[stor1[s].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)))
                                            else:
                                                sub_7e1aa7a7[stor1[s].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000) >> 72)))
                                    else:
                                        u = 1
                                        v = 0
                                        while sub_a5008247[stor1[s].field_0] + 1 >= u:
                                            u = 256 * u
                                            v = v + 1
                                            continue 
                                        if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                                            mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                        else:
                                            if sub_a5008247[stor1[s].field_0] + 1 >= 128:
                                                mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                            else:
                                                mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                                        mem[128] = address(sha3(mem[96 len v + 23]))
                                        sub_7e1aa7a7[stor1[s].field_0] = sha3(mem[128 len 20])
                                require ext_code.size(sub_8aa19122[s].field_0)
                                if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var41004].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var41004].field_0] / block.timestamp)) / 1000) < 5:
                                    call sub_8aa19122[s].field_0.0xde3a04ad with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                        args address(arg1), arg2, arg4, arg3
                                else:
                                    call sub_8aa19122[s].field_0.0xde3a04ad with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                        args address(arg1), arg2, 0, arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require eth.balance(tx.origin) < eth.balance(tx.origin)
                                return t
                    else:
                        if 500 < sub_8aa19122.length:
                            stor0 = 1
                            if sub_8aa19122.length >= 500:
                                s = 0
                                s = 0
                                idx = 500
                                while idx < sub_8aa19122.length:
                                    mem[0] = sub_8aa19122[idx].field_0
                                    mem[32] = 3
                                    require block.timestamp
                                    mem[96] = block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx].field_0] / block.timestamp)
                                    if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx].field_0] / block.timestamp)) / 1000) >= ext_call.return_data[0] + 5:
                                        s = sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx].field_0] / block.timestamp)) / 1000)
                                        s = sub_8aa19122[idx].field_0
                                        idx = idx + 1
                                        continue 
                                    sub_a5008247[stor1[idx].field_0]++
                                    if 0 >= sub_a5008247[stor1[idx].field_0] + 1:
                                        s = 1
                                        t = 0
                                        while sub_a5008247[stor1[idx].field_0] + 1 >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if 0 >= sub_a5008247[stor1[idx].field_0] + 1:
                                            mem[96] = (t + 214 << 248) + (sub_8aa19122[idx].field_0 << 80) + (t + 128 << 72) + 256^(-t + 9) + (sub_a5008247[stor1[idx].field_0] * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                        else:
                                            if sub_a5008247[stor1[idx].field_0] + 1 >= 128:
                                                mem[96] = (t + 214 << 248) + (sub_8aa19122[idx].field_0 << 80) + (t + 128 << 72) + 256^(-t + 9) + (sub_a5008247[stor1[idx].field_0] * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                            else:
                                                mem[96] = (t + 214 << 248) + (sub_8aa19122[idx].field_0 << 80) + (sub_a5008247[stor1[idx].field_0] + 1 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                                        mem[128] = address(sha3(mem[96 len t + 23]))
                                        sub_7e1aa7a7[stor1[idx].field_0] = sha3(mem[128 len 20])
                                    else:
                                        if sub_a5008247[stor1[idx].field_0] + 1 < 128:
                                            if 0 >= sub_a5008247[stor1[idx].field_0] + 1:
                                                sub_7e1aa7a7[stor1[idx].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[idx].field_0 << 80) + (sub_a5008247[stor1[idx].field_0] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)))
                                            else:
                                                if sub_a5008247[stor1[idx].field_0] + 1 >= 128:
                                                    sub_7e1aa7a7[stor1[idx].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[idx].field_0 << 80) + (sub_a5008247[stor1[idx].field_0] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)))
                                                else:
                                                    sub_7e1aa7a7[stor1[idx].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[idx].field_0 << 80) + (sub_a5008247[stor1[idx].field_0] + 1 << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000) >> 72)))
                                        else:
                                            s = 1
                                            t = 0
                                            while sub_a5008247[stor1[idx].field_0] + 1 >= s:
                                                s = 256 * s
                                                t = t + 1
                                                continue 
                                            if 0 >= sub_a5008247[stor1[idx].field_0] + 1:
                                                mem[96] = (t + 214 << 248) + (sub_8aa19122[idx].field_0 << 80) + (t + 128 << 72) + 256^(-t + 9) + (sub_a5008247[stor1[idx].field_0] * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                            else:
                                                if sub_a5008247[stor1[idx].field_0] + 1 >= 128:
                                                    mem[96] = (t + 214 << 248) + (sub_8aa19122[idx].field_0 << 80) + (t + 128 << 72) + 256^(-t + 9) + (sub_a5008247[stor1[idx].field_0] * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                                else:
                                                    mem[96] = (t + 214 << 248) + (sub_8aa19122[idx].field_0 << 80) + (sub_a5008247[stor1[idx].field_0] + 1 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                                            mem[128] = address(sha3(mem[96 len t + 23]))
                                            sub_7e1aa7a7[stor1[idx].field_0] = sha3(mem[128 len 20])
                                    require ext_code.size(sub_8aa19122[idx].field_0)
                                    if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx].field_0] / block.timestamp)) / 1000) < 5:
                                        call sub_8aa19122[idx].field_0.0xde3a04ad with:
                                           value msg.value wei
                                             gas gas_remaining wei
                                            args address(arg1), arg2, arg4, arg3
                                    else:
                                        call sub_8aa19122[idx].field_0.0xde3a04ad with:
                                           value msg.value wei
                                             gas gas_remaining wei
                                            args address(arg1), arg2, 0, arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require eth.balance(tx.origin) < eth.balance(tx.origin)
                                    return idx
                            else:
                                s = 0
                                s = 0
                                idx = sub_8aa19122.length
                                while idx < sub_8aa19122.length:
                                    mem[0] = sub_8aa19122[idx].field_0
                                    mem[32] = 3
                                    require block.timestamp
                                    mem[96] = block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx].field_0] / block.timestamp)
                                    if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx].field_0] / block.timestamp)) / 1000) >= ext_call.return_data[0] + 5:
                                        s = sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx].field_0] / block.timestamp)) / 1000)
                                        s = sub_8aa19122[idx].field_0
                                        idx = idx + 1
                                        continue 
                                    sub_a5008247[stor1[idx].field_0]++
                                    if 0 >= sub_a5008247[stor1[idx].field_0] + 1:
                                        s = 1
                                        t = 0
                                        while sub_a5008247[stor1[idx].field_0] + 1 >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if 0 >= sub_a5008247[stor1[idx].field_0] + 1:
                                            mem[96] = (t + 214 << 248) + (sub_8aa19122[idx].field_0 << 80) + (t + 128 << 72) + 256^(-t + 9) + (sub_a5008247[stor1[idx].field_0] * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                        else:
                                            if sub_a5008247[stor1[idx].field_0] + 1 >= 128:
                                                mem[96] = (t + 214 << 248) + (sub_8aa19122[idx].field_0 << 80) + (t + 128 << 72) + 256^(-t + 9) + (sub_a5008247[stor1[idx].field_0] * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                            else:
                                                mem[96] = (t + 214 << 248) + (sub_8aa19122[idx].field_0 << 80) + (sub_a5008247[stor1[idx].field_0] + 1 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                                        mem[128] = address(sha3(mem[96 len t + 23]))
                                        sub_7e1aa7a7[stor1[idx].field_0] = sha3(mem[128 len 20])
                                    else:
                                        if sub_a5008247[stor1[idx].field_0] + 1 < 128:
                                            if 0 >= sub_a5008247[stor1[idx].field_0] + 1:
                                                sub_7e1aa7a7[stor1[idx].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[idx].field_0 << 80) + (sub_a5008247[stor1[idx].field_0] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)))
                                            else:
                                                if sub_a5008247[stor1[idx].field_0] + 1 >= 128:
                                                    sub_7e1aa7a7[stor1[idx].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[idx].field_0 << 80) + (sub_a5008247[stor1[idx].field_0] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)))
                                                else:
                                                    sub_7e1aa7a7[stor1[idx].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[idx].field_0 << 80) + (sub_a5008247[stor1[idx].field_0] + 1 << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000) >> 72)))
                                        else:
                                            s = 1
                                            t = 0
                                            while sub_a5008247[stor1[idx].field_0] + 1 >= s:
                                                s = 256 * s
                                                t = t + 1
                                                continue 
                                            if 0 >= sub_a5008247[stor1[idx].field_0] + 1:
                                                mem[96] = (t + 214 << 248) + (sub_8aa19122[idx].field_0 << 80) + (t + 128 << 72) + 256^(-t + 9) + (sub_a5008247[stor1[idx].field_0] * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                            else:
                                                if sub_a5008247[stor1[idx].field_0] + 1 >= 128:
                                                    mem[96] = (t + 214 << 248) + (sub_8aa19122[idx].field_0 << 80) + (t + 128 << 72) + 256^(-t + 9) + (sub_a5008247[stor1[idx].field_0] * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                                else:
                                                    mem[96] = (t + 214 << 248) + (sub_8aa19122[idx].field_0 << 80) + (sub_a5008247[stor1[idx].field_0] + 1 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                                            mem[128] = address(sha3(mem[96 len t + 23]))
                                            sub_7e1aa7a7[stor1[idx].field_0] = sha3(mem[128 len 20])
                                    require ext_code.size(sub_8aa19122[idx].field_0)
                                    if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx].field_0] / block.timestamp)) / 1000) < 5:
                                        call sub_8aa19122[idx].field_0.0xde3a04ad with:
                                           value msg.value wei
                                             gas gas_remaining wei
                                            args address(arg1), arg2, arg4, arg3
                                    else:
                                        call sub_8aa19122[idx].field_0.0xde3a04ad with:
                                           value msg.value wei
                                             gas gas_remaining wei
                                            args address(arg1), arg2, 0, arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require eth.balance(tx.origin) < eth.balance(tx.origin)
                                    return idx
                        else:
                            stor0 = 0
                            if sub_8aa19122.length >= 500:
                                s = var34004
                                s = var34006
                                s = var34007
                                while var40005 < var40001:
                                    require var42004 < sub_8aa19122.length
                                    require block.timestamp
                                    s = var42004
                                    t = var42001
                                    t = var42003
                                    t = var42004
                                    while sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var42004].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var42004].field_0] / block.timestamp)) / 1000) >= ext_call.return_data[0] + 5:
                                        if sub_8aa19122.length >= 500:
                                            mem[0] = sub_8aa19122[s].field_0
                                            mem[32] = 3
                                            require block.timestamp
                                            mem[96] = block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[s].field_0] / block.timestamp)
                                            s = sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[s].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[s].field_0] / block.timestamp)) / 1000)
                                            s = sub_8aa19122[s].field_0
                                            s = t + 1
                                            continue 
                                        if t + 1 >= sub_8aa19122.length:
                                            return 0
                                        mem[0] = sub_8aa19122[t].field_512
                                        mem[32] = 3
                                        require block.timestamp
                                        mem[96] = block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[t].field_512] / block.timestamp)
                                        s = t + 1
                                        t = sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[t].field_512] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[t].field_512] / block.timestamp)) / 1000)
                                        t = sub_8aa19122[s].field_0
                                        t = t + 1
                                        continue 
                                    sub_a5008247[stor1[s].field_0]++
                                    if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                                        u = 1
                                        v = 0
                                        while sub_a5008247[stor1[s].field_0] + 1 >= u:
                                            u = 256 * u
                                            v = v + 1
                                            continue 
                                        if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                                            mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                        else:
                                            if sub_a5008247[stor1[s].field_0] + 1 >= 128:
                                                mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                            else:
                                                mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                                        mem[128] = address(sha3(mem[96 len v + 23]))
                                        sub_7e1aa7a7[stor1[s].field_0] = sha3(mem[128 len 20])
                                    else:
                                        if sub_a5008247[stor1[s].field_0] + 1 < 128:
                                            if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                                                sub_7e1aa7a7[stor1[s].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)))
                                            else:
                                                if sub_a5008247[stor1[s].field_0] + 1 >= 128:
                                                    sub_7e1aa7a7[stor1[s].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)))
                                                else:
                                                    sub_7e1aa7a7[stor1[s].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000) >> 72)))
                                        else:
                                            u = 1
                                            v = 0
                                            while sub_a5008247[stor1[s].field_0] + 1 >= u:
                                                u = 256 * u
                                                v = v + 1
                                                continue 
                                            if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                                                mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                            else:
                                                if sub_a5008247[stor1[s].field_0] + 1 >= 128:
                                                    mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                                else:
                                                    mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                                            mem[128] = address(sha3(mem[96 len v + 23]))
                                            sub_7e1aa7a7[stor1[s].field_0] = sha3(mem[128 len 20])
                                    require ext_code.size(sub_8aa19122[s].field_0)
                                    if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var42004].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var42004].field_0] / block.timestamp)) / 1000) < 5:
                                        call sub_8aa19122[s].field_0.0xde3a04ad with:
                                           value msg.value wei
                                             gas gas_remaining wei
                                            args address(arg1), arg2, arg4, arg3
                                    else:
                                        call sub_8aa19122[s].field_0.0xde3a04ad with:
                                           value msg.value wei
                                             gas gas_remaining wei
                                            args address(arg1), arg2, 0, arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require eth.balance(tx.origin) < eth.balance(tx.origin)
                                    return t
                            else:
                                s = var34004
                                s = var34006
                                s = var34007
                                while var40005 < var40001:
                                    require var42004 < sub_8aa19122.length
                                    require block.timestamp
                                    s = var42004
                                    t = var42001
                                    t = var42003
                                    t = var42004
                                    while sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var42004].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var42004].field_0] / block.timestamp)) / 1000) >= ext_call.return_data[0] + 5:
                                        if sub_8aa19122.length < 500:
                                            mem[0] = sub_8aa19122[s].field_0
                                            mem[32] = 3
                                            require block.timestamp
                                            mem[96] = block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[s].field_0] / block.timestamp)
                                            s = sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[s].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[s].field_0] / block.timestamp)) / 1000)
                                            s = sub_8aa19122[s].field_0
                                            s = t + 1
                                            continue 
                                        if t + 1 >= 500:
                                            return 0
                                        require t + 1 < sub_8aa19122.length
                                        mem[0] = sub_8aa19122[t].field_512
                                        mem[32] = 3
                                        require block.timestamp
                                        mem[96] = block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[t].field_512] / block.timestamp)
                                        s = t + 1
                                        t = sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[t].field_512] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[t].field_512] / block.timestamp)) / 1000)
                                        t = sub_8aa19122[s].field_0
                                        t = t + 1
                                        continue 
                                    sub_a5008247[stor1[s].field_0]++
                                    if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                                        u = 1
                                        v = 0
                                        while sub_a5008247[stor1[s].field_0] + 1 >= u:
                                            u = 256 * u
                                            v = v + 1
                                            continue 
                                        if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                                            mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                        else:
                                            if sub_a5008247[stor1[s].field_0] + 1 >= 128:
                                                mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                            else:
                                                mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                                        mem[128] = address(sha3(mem[96 len v + 23]))
                                        sub_7e1aa7a7[stor1[s].field_0] = sha3(mem[128 len 20])
                                    else:
                                        if sub_a5008247[stor1[s].field_0] + 1 < 128:
                                            if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                                                sub_7e1aa7a7[stor1[s].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)))
                                            else:
                                                if sub_a5008247[stor1[s].field_0] + 1 >= 128:
                                                    sub_7e1aa7a7[stor1[s].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)))
                                                else:
                                                    sub_7e1aa7a7[stor1[s].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000) >> 72)))
                                        else:
                                            u = 1
                                            v = 0
                                            while sub_a5008247[stor1[s].field_0] + 1 >= u:
                                                u = 256 * u
                                                v = v + 1
                                                continue 
                                            if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                                                mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                            else:
                                                if sub_a5008247[stor1[s].field_0] + 1 >= 128:
                                                    mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                                else:
                                                    mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                                            mem[128] = address(sha3(mem[96 len v + 23]))
                                            sub_7e1aa7a7[stor1[s].field_0] = sha3(mem[128 len 20])
                                    require ext_code.size(sub_8aa19122[s].field_0)
                                    if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var42004].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var42004].field_0] / block.timestamp)) / 1000) < 5:
                                        call sub_8aa19122[s].field_0.0xde3a04ad with:
                                           value msg.value wei
                                             gas gas_remaining wei
                                            args address(arg1), arg2, arg4, arg3
                                    else:
                                        call sub_8aa19122[s].field_0.0xde3a04ad with:
                                           value msg.value wei
                                             gas gas_remaining wei
                                            args address(arg1), arg2, 0, arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require eth.balance(tx.origin) < eth.balance(tx.origin)
                                    return t
                else:
                    require tx.origin == 0x820d115b9c982260edaa1741812d1f85132736b5
                    require block.gas_limit < 10 * 10^6
                    require ext_code.size(arg1)
                    call arg1.0xd87574e0 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] > arg3
                    require ext_code.size(arg1)
                    call arg1.0x11a09ae7 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[96] = address(block.coinbase)
                    require block.timestamp
                    if stor0:
                        stor0 = 0
                        if sub_8aa19122.length >= 500:
                            s = var34004
                            s = var34006
                            s = var34007
                            while var40005 < var40001:
                                require var42004 < sub_8aa19122.length
                                require block.timestamp
                                s = var42004
                                t = var42001
                                t = var42003
                                t = var42004
                                while sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var42004].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var42004].field_0] / block.timestamp)) / 1000) >= ext_call.return_data[0] + 5:
                                    if sub_8aa19122.length >= 500:
                                        mem[0] = sub_8aa19122[s].field_0
                                        mem[32] = 3
                                        require block.timestamp
                                        mem[96] = block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[s].field_0] / block.timestamp)
                                        s = sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[s].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[s].field_0] / block.timestamp)) / 1000)
                                        s = sub_8aa19122[s].field_0
                                        s = t + 1
                                        continue 
                                    if t + 1 >= sub_8aa19122.length:
                                        return 0
                                    mem[0] = sub_8aa19122[t].field_512
                                    mem[32] = 3
                                    require block.timestamp
                                    mem[96] = block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[t].field_512] / block.timestamp)
                                    s = t + 1
                                    t = sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[t].field_512] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[t].field_512] / block.timestamp)) / 1000)
                                    t = sub_8aa19122[s].field_0
                                    t = t + 1
                                    continue 
                                sub_a5008247[stor1[s].field_0]++
                                if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                                    u = 1
                                    v = 0
                                    while sub_a5008247[stor1[s].field_0] + 1 >= u:
                                        u = 256 * u
                                        v = v + 1
                                        continue 
                                    if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                                        mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                    else:
                                        if sub_a5008247[stor1[s].field_0] + 1 >= 128:
                                            mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                        else:
                                            mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                                    mem[128] = address(sha3(mem[96 len v + 23]))
                                    sub_7e1aa7a7[stor1[s].field_0] = sha3(mem[128 len 20])
                                else:
                                    if sub_a5008247[stor1[s].field_0] + 1 < 128:
                                        if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                                            sub_7e1aa7a7[stor1[s].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)))
                                        else:
                                            if sub_a5008247[stor1[s].field_0] + 1 >= 128:
                                                sub_7e1aa7a7[stor1[s].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)))
                                            else:
                                                sub_7e1aa7a7[stor1[s].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000) >> 72)))
                                    else:
                                        u = 1
                                        v = 0
                                        while sub_a5008247[stor1[s].field_0] + 1 >= u:
                                            u = 256 * u
                                            v = v + 1
                                            continue 
                                        if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                                            mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                        else:
                                            if sub_a5008247[stor1[s].field_0] + 1 >= 128:
                                                mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                            else:
                                                mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                                        mem[128] = address(sha3(mem[96 len v + 23]))
                                        sub_7e1aa7a7[stor1[s].field_0] = sha3(mem[128 len 20])
                                require ext_code.size(sub_8aa19122[s].field_0)
                                if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var42004].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var42004].field_0] / block.timestamp)) / 1000) < 5:
                                    call sub_8aa19122[s].field_0.0xde3a04ad with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                        args address(arg1), arg2, arg4, arg3
                                else:
                                    call sub_8aa19122[s].field_0.0xde3a04ad with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                        args address(arg1), arg2, 0, arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require eth.balance(tx.origin) < eth.balance(tx.origin)
                                return t
                        else:
                            s = var34004
                            s = var34006
                            s = var34007
                            while var40005 < var40001:
                                require var42004 < sub_8aa19122.length
                                require block.timestamp
                                s = var42004
                                t = var42001
                                t = var42003
                                t = var42004
                                while sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var42004].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var42004].field_0] / block.timestamp)) / 1000) >= ext_call.return_data[0] + 5:
                                    if sub_8aa19122.length < 500:
                                        mem[0] = sub_8aa19122[s].field_0
                                        mem[32] = 3
                                        require block.timestamp
                                        mem[96] = block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[s].field_0] / block.timestamp)
                                        s = sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[s].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[s].field_0] / block.timestamp)) / 1000)
                                        s = sub_8aa19122[s].field_0
                                        s = t + 1
                                        continue 
                                    if t + 1 >= 500:
                                        return 0
                                    require t + 1 < sub_8aa19122.length
                                    mem[0] = sub_8aa19122[t].field_512
                                    mem[32] = 3
                                    require block.timestamp
                                    mem[96] = block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[t].field_512] / block.timestamp)
                                    s = t + 1
                                    t = sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[t].field_512] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[t].field_512] / block.timestamp)) / 1000)
                                    t = sub_8aa19122[s].field_0
                                    t = t + 1
                                    continue 
                                sub_a5008247[stor1[s].field_0]++
                                if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                                    u = 1
                                    v = 0
                                    while sub_a5008247[stor1[s].field_0] + 1 >= u:
                                        u = 256 * u
                                        v = v + 1
                                        continue 
                                    if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                                        mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                    else:
                                        if sub_a5008247[stor1[s].field_0] + 1 >= 128:
                                            mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                        else:
                                            mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                                    mem[128] = address(sha3(mem[96 len v + 23]))
                                    sub_7e1aa7a7[stor1[s].field_0] = sha3(mem[128 len 20])
                                else:
                                    if sub_a5008247[stor1[s].field_0] + 1 < 128:
                                        if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                                            sub_7e1aa7a7[stor1[s].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)))
                                        else:
                                            if sub_a5008247[stor1[s].field_0] + 1 >= 128:
                                                sub_7e1aa7a7[stor1[s].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)))
                                            else:
                                                sub_7e1aa7a7[stor1[s].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000) >> 72)))
                                    else:
                                        u = 1
                                        v = 0
                                        while sub_a5008247[stor1[s].field_0] + 1 >= u:
                                            u = 256 * u
                                            v = v + 1
                                            continue 
                                        if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                                            mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                        else:
                                            if sub_a5008247[stor1[s].field_0] + 1 >= 128:
                                                mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                            else:
                                                mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                                        mem[128] = address(sha3(mem[96 len v + 23]))
                                        sub_7e1aa7a7[stor1[s].field_0] = sha3(mem[128 len 20])
                                require ext_code.size(sub_8aa19122[s].field_0)
                                if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var42004].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var42004].field_0] / block.timestamp)) / 1000) < 5:
                                    call sub_8aa19122[s].field_0.0xde3a04ad with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                        args address(arg1), arg2, arg4, arg3
                                else:
                                    call sub_8aa19122[s].field_0.0xde3a04ad with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                        args address(arg1), arg2, 0, arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require eth.balance(tx.origin) < eth.balance(tx.origin)
                                return t
                    else:
                        if 500 < sub_8aa19122.length:
                            stor0 = 1
                            if sub_8aa19122.length >= 500:
                                s = 0
                                s = 0
                                idx = 500
                                while idx < sub_8aa19122.length:
                                    mem[0] = sub_8aa19122[idx].field_0
                                    mem[32] = 3
                                    require block.timestamp
                                    mem[96] = block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx].field_0] / block.timestamp)
                                    if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx].field_0] / block.timestamp)) / 1000) >= ext_call.return_data[0] + 5:
                                        s = sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx].field_0] / block.timestamp)) / 1000)
                                        s = sub_8aa19122[idx].field_0
                                        idx = idx + 1
                                        continue 
                                    sub_a5008247[stor1[idx].field_0]++
                                    if 0 >= sub_a5008247[stor1[idx].field_0] + 1:
                                        s = 1
                                        t = 0
                                        while sub_a5008247[stor1[idx].field_0] + 1 >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if 0 >= sub_a5008247[stor1[idx].field_0] + 1:
                                            mem[96] = (t + 214 << 248) + (sub_8aa19122[idx].field_0 << 80) + (t + 128 << 72) + 256^(-t + 9) + (sub_a5008247[stor1[idx].field_0] * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                        else:
                                            if sub_a5008247[stor1[idx].field_0] + 1 >= 128:
                                                mem[96] = (t + 214 << 248) + (sub_8aa19122[idx].field_0 << 80) + (t + 128 << 72) + 256^(-t + 9) + (sub_a5008247[stor1[idx].field_0] * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                            else:
                                                mem[96] = (t + 214 << 248) + (sub_8aa19122[idx].field_0 << 80) + (sub_a5008247[stor1[idx].field_0] + 1 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                                        mem[128] = address(sha3(mem[96 len t + 23]))
                                        sub_7e1aa7a7[stor1[idx].field_0] = sha3(mem[128 len 20])
                                    else:
                                        if sub_a5008247[stor1[idx].field_0] + 1 < 128:
                                            if 0 >= sub_a5008247[stor1[idx].field_0] + 1:
                                                sub_7e1aa7a7[stor1[idx].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[idx].field_0 << 80) + (sub_a5008247[stor1[idx].field_0] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)))
                                            else:
                                                if sub_a5008247[stor1[idx].field_0] + 1 >= 128:
                                                    sub_7e1aa7a7[stor1[idx].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[idx].field_0 << 80) + (sub_a5008247[stor1[idx].field_0] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)))
                                                else:
                                                    sub_7e1aa7a7[stor1[idx].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[idx].field_0 << 80) + (sub_a5008247[stor1[idx].field_0] + 1 << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000) >> 72)))
                                        else:
                                            s = 1
                                            t = 0
                                            while sub_a5008247[stor1[idx].field_0] + 1 >= s:
                                                s = 256 * s
                                                t = t + 1
                                                continue 
                                            if 0 >= sub_a5008247[stor1[idx].field_0] + 1:
                                                mem[96] = (t + 214 << 248) + (sub_8aa19122[idx].field_0 << 80) + (t + 128 << 72) + 256^(-t + 9) + (sub_a5008247[stor1[idx].field_0] * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                            else:
                                                if sub_a5008247[stor1[idx].field_0] + 1 >= 128:
                                                    mem[96] = (t + 214 << 248) + (sub_8aa19122[idx].field_0 << 80) + (t + 128 << 72) + 256^(-t + 9) + (sub_a5008247[stor1[idx].field_0] * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                                else:
                                                    mem[96] = (t + 214 << 248) + (sub_8aa19122[idx].field_0 << 80) + (sub_a5008247[stor1[idx].field_0] + 1 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                                            mem[128] = address(sha3(mem[96 len t + 23]))
                                            sub_7e1aa7a7[stor1[idx].field_0] = sha3(mem[128 len 20])
                                    require ext_code.size(sub_8aa19122[idx].field_0)
                                    if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx].field_0] / block.timestamp)) / 1000) < 5:
                                        call sub_8aa19122[idx].field_0.0xde3a04ad with:
                                           value msg.value wei
                                             gas gas_remaining wei
                                            args address(arg1), arg2, arg4, arg3
                                    else:
                                        call sub_8aa19122[idx].field_0.0xde3a04ad with:
                                           value msg.value wei
                                             gas gas_remaining wei
                                            args address(arg1), arg2, 0, arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require eth.balance(tx.origin) < eth.balance(tx.origin)
                                    return idx
                            else:
                                s = 0
                                s = 0
                                idx = sub_8aa19122.length
                                while idx < sub_8aa19122.length:
                                    mem[0] = sub_8aa19122[idx].field_0
                                    mem[32] = 3
                                    require block.timestamp
                                    mem[96] = block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx].field_0] / block.timestamp)
                                    if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx].field_0] / block.timestamp)) / 1000) >= ext_call.return_data[0] + 5:
                                        s = sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx].field_0] / block.timestamp)) / 1000)
                                        s = sub_8aa19122[idx].field_0
                                        idx = idx + 1
                                        continue 
                                    sub_a5008247[stor1[idx].field_0]++
                                    if 0 >= sub_a5008247[stor1[idx].field_0] + 1:
                                        s = 1
                                        t = 0
                                        while sub_a5008247[stor1[idx].field_0] + 1 >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if 0 >= sub_a5008247[stor1[idx].field_0] + 1:
                                            mem[96] = (t + 214 << 248) + (sub_8aa19122[idx].field_0 << 80) + (t + 128 << 72) + 256^(-t + 9) + (sub_a5008247[stor1[idx].field_0] * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                        else:
                                            if sub_a5008247[stor1[idx].field_0] + 1 >= 128:
                                                mem[96] = (t + 214 << 248) + (sub_8aa19122[idx].field_0 << 80) + (t + 128 << 72) + 256^(-t + 9) + (sub_a5008247[stor1[idx].field_0] * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                            else:
                                                mem[96] = (t + 214 << 248) + (sub_8aa19122[idx].field_0 << 80) + (sub_a5008247[stor1[idx].field_0] + 1 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                                        mem[128] = address(sha3(mem[96 len t + 23]))
                                        sub_7e1aa7a7[stor1[idx].field_0] = sha3(mem[128 len 20])
                                    else:
                                        if sub_a5008247[stor1[idx].field_0] + 1 < 128:
                                            if 0 >= sub_a5008247[stor1[idx].field_0] + 1:
                                                sub_7e1aa7a7[stor1[idx].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[idx].field_0 << 80) + (sub_a5008247[stor1[idx].field_0] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)))
                                            else:
                                                if sub_a5008247[stor1[idx].field_0] + 1 >= 128:
                                                    sub_7e1aa7a7[stor1[idx].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[idx].field_0 << 80) + (sub_a5008247[stor1[idx].field_0] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)))
                                                else:
                                                    sub_7e1aa7a7[stor1[idx].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[idx].field_0 << 80) + (sub_a5008247[stor1[idx].field_0] + 1 << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000) >> 72)))
                                        else:
                                            s = 1
                                            t = 0
                                            while sub_a5008247[stor1[idx].field_0] + 1 >= s:
                                                s = 256 * s
                                                t = t + 1
                                                continue 
                                            if 0 >= sub_a5008247[stor1[idx].field_0] + 1:
                                                mem[96] = (t + 214 << 248) + (sub_8aa19122[idx].field_0 << 80) + (t + 128 << 72) + 256^(-t + 9) + (sub_a5008247[stor1[idx].field_0] * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                            else:
                                                if sub_a5008247[stor1[idx].field_0] + 1 >= 128:
                                                    mem[96] = (t + 214 << 248) + (sub_8aa19122[idx].field_0 << 80) + (t + 128 << 72) + 256^(-t + 9) + (sub_a5008247[stor1[idx].field_0] * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                                else:
                                                    mem[96] = (t + 214 << 248) + (sub_8aa19122[idx].field_0 << 80) + (sub_a5008247[stor1[idx].field_0] + 1 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                                            mem[128] = address(sha3(mem[96 len t + 23]))
                                            sub_7e1aa7a7[stor1[idx].field_0] = sha3(mem[128 len 20])
                                    require ext_code.size(sub_8aa19122[idx].field_0)
                                    if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx].field_0] / block.timestamp)) / 1000) < 5:
                                        call sub_8aa19122[idx].field_0.0xde3a04ad with:
                                           value msg.value wei
                                             gas gas_remaining wei
                                            args address(arg1), arg2, arg4, arg3
                                    else:
                                        call sub_8aa19122[idx].field_0.0xde3a04ad with:
                                           value msg.value wei
                                             gas gas_remaining wei
                                            args address(arg1), arg2, 0, arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require eth.balance(tx.origin) < eth.balance(tx.origin)
                                    return idx
                        else:
                            stor0 = 0
                            if sub_8aa19122.length >= 500:
                                s = var35004
                                s = var35006
                                s = var35007
                                while var41005 < var41001:
                                    require var43004 < sub_8aa19122.length
                                    require block.timestamp
                                    s = var43004
                                    t = var43001
                                    t = var43003
                                    t = var43004
                                    while sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var43004].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var43004].field_0] / block.timestamp)) / 1000) >= ext_call.return_data[0] + 5:
                                        if sub_8aa19122.length >= 500:
                                            mem[0] = sub_8aa19122[s].field_0
                                            mem[32] = 3
                                            require block.timestamp
                                            mem[96] = block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[s].field_0] / block.timestamp)
                                            s = sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[s].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[s].field_0] / block.timestamp)) / 1000)
                                            s = sub_8aa19122[s].field_0
                                            s = t + 1
                                            continue 
                                        if t + 1 >= sub_8aa19122.length:
                                            return 0
                                        mem[0] = sub_8aa19122[t].field_512
                                        mem[32] = 3
                                        require block.timestamp
                                        mem[96] = block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[t].field_512] / block.timestamp)
                                        s = t + 1
                                        t = sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[t].field_512] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[t].field_512] / block.timestamp)) / 1000)
                                        t = sub_8aa19122[s].field_0
                                        t = t + 1
                                        continue 
                                    sub_a5008247[stor1[s].field_0]++
                                    if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                                        u = 1
                                        v = 0
                                        while sub_a5008247[stor1[s].field_0] + 1 >= u:
                                            u = 256 * u
                                            v = v + 1
                                            continue 
                                        if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                                            mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                        else:
                                            if sub_a5008247[stor1[s].field_0] + 1 >= 128:
                                                mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                            else:
                                                mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                                        mem[128] = address(sha3(mem[96 len v + 23]))
                                        sub_7e1aa7a7[stor1[s].field_0] = sha3(mem[128 len 20])
                                    else:
                                        if sub_a5008247[stor1[s].field_0] + 1 < 128:
                                            if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                                                sub_7e1aa7a7[stor1[s].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)))
                                            else:
                                                if sub_a5008247[stor1[s].field_0] + 1 >= 128:
                                                    sub_7e1aa7a7[stor1[s].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)))
                                                else:
                                                    sub_7e1aa7a7[stor1[s].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000) >> 72)))
                                        else:
                                            u = 1
                                            v = 0
                                            while sub_a5008247[stor1[s].field_0] + 1 >= u:
                                                u = 256 * u
                                                v = v + 1
                                                continue 
                                            if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                                                mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                            else:
                                                if sub_a5008247[stor1[s].field_0] + 1 >= 128:
                                                    mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                                else:
                                                    mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                                            mem[128] = address(sha3(mem[96 len v + 23]))
                                            sub_7e1aa7a7[stor1[s].field_0] = sha3(mem[128 len 20])
                                    require ext_code.size(sub_8aa19122[s].field_0)
                                    if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var43004].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var43004].field_0] / block.timestamp)) / 1000) < 5:
                                        call sub_8aa19122[s].field_0.0xde3a04ad with:
                                           value msg.value wei
                                             gas gas_remaining wei
                                            args address(arg1), arg2, arg4, arg3
                                    else:
                                        call sub_8aa19122[s].field_0.0xde3a04ad with:
                                           value msg.value wei
                                             gas gas_remaining wei
                                            args address(arg1), arg2, 0, arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require eth.balance(tx.origin) < eth.balance(tx.origin)
                                    return t
                            else:
                                s = var35004
                                s = var35006
                                s = var35007
                                while var41005 < var41001:
                                    require var43004 < sub_8aa19122.length
                                    require block.timestamp
                                    s = var43004
                                    t = var43001
                                    t = var43003
                                    t = var43004
                                    while sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var43004].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var43004].field_0] / block.timestamp)) / 1000) >= ext_call.return_data[0] + 5:
                                        if sub_8aa19122.length < 500:
                                            mem[0] = sub_8aa19122[s].field_0
                                            mem[32] = 3
                                            require block.timestamp
                                            mem[96] = block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[s].field_0] / block.timestamp)
                                            s = sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[s].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[s].field_0] / block.timestamp)) / 1000)
                                            s = sub_8aa19122[s].field_0
                                            s = t + 1
                                            continue 
                                        if t + 1 >= 500:
                                            return 0
                                        require t + 1 < sub_8aa19122.length
                                        mem[0] = sub_8aa19122[t].field_512
                                        mem[32] = 3
                                        require block.timestamp
                                        mem[96] = block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[t].field_512] / block.timestamp)
                                        s = t + 1
                                        t = sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[t].field_512] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[t].field_512] / block.timestamp)) / 1000)
                                        t = sub_8aa19122[s].field_0
                                        t = t + 1
                                        continue 
                                    sub_a5008247[stor1[s].field_0]++
                                    if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                                        u = 1
                                        v = 0
                                        while sub_a5008247[stor1[s].field_0] + 1 >= u:
                                            u = 256 * u
                                            v = v + 1
                                            continue 
                                        if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                                            mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                        else:
                                            if sub_a5008247[stor1[s].field_0] + 1 >= 128:
                                                mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                            else:
                                                mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                                        mem[128] = address(sha3(mem[96 len v + 23]))
                                        sub_7e1aa7a7[stor1[s].field_0] = sha3(mem[128 len 20])
                                    else:
                                        if sub_a5008247[stor1[s].field_0] + 1 < 128:
                                            if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                                                sub_7e1aa7a7[stor1[s].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)))
                                            else:
                                                if sub_a5008247[stor1[s].field_0] + 1 >= 128:
                                                    sub_7e1aa7a7[stor1[s].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)))
                                                else:
                                                    sub_7e1aa7a7[stor1[s].field_0] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000) >> 72)))
                                        else:
                                            u = 1
                                            v = 0
                                            while sub_a5008247[stor1[s].field_0] + 1 >= u:
                                                u = 256 * u
                                                v = v + 1
                                                continue 
                                            if 0 >= sub_a5008247[stor1[s].field_0] + 1:
                                                mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                            else:
                                                if sub_a5008247[stor1[s].field_0] + 1 >= 128:
                                                    mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (v + 128 << 72) + 256^(-v + 9) + (sub_a5008247[stor1[s].field_0] * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                                else:
                                                    mem[96] = (v + 214 << 248) + (sub_8aa19122[s].field_0 << 80) + (sub_a5008247[stor1[s].field_0] + 1 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                                            mem[128] = address(sha3(mem[96 len v + 23]))
                                            sub_7e1aa7a7[stor1[s].field_0] = sha3(mem[128 len 20])
                                    require ext_code.size(sub_8aa19122[s].field_0)
                                    if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var43004].field_0] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[var43004].field_0] / block.timestamp)) / 1000) < 5:
                                        call sub_8aa19122[s].field_0.0xde3a04ad with:
                                           value msg.value wei
                                             gas gas_remaining wei
                                            args address(arg1), arg2, arg4, arg3
                                    else:
                                        call sub_8aa19122[s].field_0.0xde3a04ad with:
                                           value msg.value wei
                                             gas gas_remaining wei
                                            args address(arg1), arg2, 0, arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require eth.balance(tx.origin) < eth.balance(tx.origin)
                                    return t
    return 0
}



}
