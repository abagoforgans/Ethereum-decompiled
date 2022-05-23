contract main {




// =====================  Runtime code  =====================


uint8 stor0;
array of address sub_8aa19122;
mapping of uint256 sub_a5008247;
mapping of uint256 sub_7e1aa7a7;

function sub_7e1aa7a7(?) {
    return sub_7e1aa7a7[arg1]
}

function sub_8aa19122(?) {
    require arg1 < sub_8aa19122.length
    return sub_8aa19122[arg1]
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
    if 0xa347d853f82639944d6ef8923c90d6f61afd9aab != tx.origin:
        if 0x2e6c87238a96dc327da9d0ba99f7ec81d65e698e != tx.origin:
            if 0x854cbc50451e643d9430e131e3ac3744d7bc82e1 != tx.origin:
                if 0xe36e97b0e6b6f943c8d0dc9c2c05754939faa85c != tx.origin:
                    require tx.origin == 0xb1914fb87880397400f64b487816bc2b3e8ed132
    require block.gas_limit < 10 * 10^6
    if arg1 > 0:
        call msg.sender with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_e35a34a8(?) payable {
    require 0 < sub_8aa19122.length
    sub_a5008247[stor1]++
    if 0 >= sub_a5008247[stor1] + 1:
        idx = 1
        s = 0
        while sub_a5008247[stor1] + 1 >= idx:
            idx = 256 * idx
            s = s + 1
            continue 
        if 0 >= sub_a5008247[stor1] + 1:
            mem[96] = (s + 214 << 248) + (sub_8aa19122 << 80) + (s + 128 << 72) + 256^(-s + 9) + (sub_a5008247[stor1] * 256^(-s + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
        else:
            if sub_a5008247[stor1] + 1 >= 128:
                mem[96] = (s + 214 << 248) + (sub_8aa19122 << 80) + (s + 128 << 72) + 256^(-s + 9) + (sub_a5008247[stor1] * 256^(-s + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
            else:
                mem[96] = (s + 214 << 248) + (sub_8aa19122 << 80) + (sub_a5008247[stor1] + 1 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
        mem[128] = address(sha3(mem[96 len s + 23]))
        sub_7e1aa7a7[stor1] = sha3(mem[128 len 20])
    else:
        if sub_a5008247[stor1] + 1 < 128:
            if 0 >= sub_a5008247[stor1] + 1:
                sub_7e1aa7a7[stor1] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122 << 80) + (sub_a5008247[stor1] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)))
            else:
                if sub_a5008247[stor1] + 1 >= 128:
                    sub_7e1aa7a7[stor1] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122 << 80) + (sub_a5008247[stor1] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)))
                else:
                    sub_7e1aa7a7[stor1] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122 << 80) + (sub_a5008247[stor1] + 1 << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000) >> 72)))
        else:
            idx = 1
            s = 0
            while sub_a5008247[stor1] + 1 >= idx:
                idx = 256 * idx
                s = s + 1
                continue 
            if 0 >= sub_a5008247[stor1] + 1:
                mem[96] = (s + 214 << 248) + (sub_8aa19122 << 80) + (s + 128 << 72) + 256^(-s + 9) + (sub_a5008247[stor1] * 256^(-s + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
            else:
                if sub_a5008247[stor1] + 1 >= 128:
                    mem[96] = (s + 214 << 248) + (sub_8aa19122 << 80) + (s + 128 << 72) + 256^(-s + 9) + (sub_a5008247[stor1] * 256^(-s + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                else:
                    mem[96] = (s + 214 << 248) + (sub_8aa19122 << 80) + (sub_a5008247[stor1] + 1 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
            mem[128] = address(sha3(mem[96 len s + 23]))
            sub_7e1aa7a7[stor1] = sha3(mem[128 len 20])
    require ext_code.size(sub_8aa19122)
    call sub_8aa19122.0xc52ab778 with:
       value msg.value wei
         gas gas_remaining wei
        args address(arg1), arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_7a637186(?) payable {
    mem[64] = 96
    require not msg.value
    if tx.origin == 0xa347d853f82639944d6ef8923c90d6f61afd9aab:
        idx = 0
        s = 0
        while idx < arg1:
            mem[mem[64] len 675] = code.data[2660 len 675]
            create contract with 0 wei
                            code: code.data[2660 len 675]
            if not create.new_address:
                revert with ext_call.return_data[0 len return_data.size]
            sub_8aa19122.length++
            sub_8aa19122[sub_8aa19122.length] = address(create.new_address)
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
        if tx.origin == 0x2e6c87238a96dc327da9d0ba99f7ec81d65e698e:
            idx = 0
            s = 0
            while idx < arg1:
                mem[mem[64] len 675] = code.data[2660 len 675]
                create contract with 0 wei
                                code: code.data[2660 len 675]
                if not create.new_address:
                    revert with ext_call.return_data[0 len return_data.size]
                sub_8aa19122.length++
                sub_8aa19122[sub_8aa19122.length] = address(create.new_address)
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
            if tx.origin == 0x854cbc50451e643d9430e131e3ac3744d7bc82e1:
                idx = 0
                s = 0
                while idx < arg1:
                    mem[mem[64] len 675] = code.data[2660 len 675]
                    create contract with 0 wei
                                    code: code.data[2660 len 675]
                    if not create.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    sub_8aa19122.length++
                    sub_8aa19122[sub_8aa19122.length] = address(create.new_address)
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
                if tx.origin == 0xe36e97b0e6b6f943c8d0dc9c2c05754939faa85c:
                    idx = 0
                    s = 0
                    while idx < arg1:
                        mem[mem[64] len 675] = code.data[2660 len 675]
                        create contract with 0 wei
                                        code: code.data[2660 len 675]
                        if not create.new_address:
                            revert with ext_call.return_data[0 len return_data.size]
                        sub_8aa19122.length++
                        sub_8aa19122[sub_8aa19122.length] = address(create.new_address)
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
                    require tx.origin == 0xb1914fb87880397400f64b487816bc2b3e8ed132
                    idx = 0
                    s = 0
                    while idx < arg1:
                        mem[mem[64] len 675] = code.data[2660 len 675]
                        create contract with 0 wei
                                        code: code.data[2660 len 675]
                        if not create.new_address:
                            revert with ext_call.return_data[0 len return_data.size]
                        sub_8aa19122.length++
                        sub_8aa19122[sub_8aa19122.length] = address(create.new_address)
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

function execute(address arg1, uint256 arg2, uint256 arg3) payable {
    if 0xa347d853f82639944d6ef8923c90d6f61afd9aab != tx.origin:
        if 0x2e6c87238a96dc327da9d0ba99f7ec81d65e698e != tx.origin:
            if 0x854cbc50451e643d9430e131e3ac3744d7bc82e1 != tx.origin:
                if 0xe36e97b0e6b6f943c8d0dc9c2c05754939faa85c != tx.origin:
                    require tx.origin == 0xb1914fb87880397400f64b487816bc2b3e8ed132
    require block.gas_limit < 10 * 10^6
    require ext_code.size(arg1)
    call arg1.airDropPot_() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > arg3
    require ext_code.size(arg1)
    call arg1.airDropTracker_() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = address(block.coinbase)
    require block.timestamp
    if sub_8aa19122.length >= 1000:
        if stor0:
            stor0 = 0
            s = 0
            s = 0
            idx = 0
            while idx < 1000:
                require idx < sub_8aa19122.length
                mem[0] = sub_8aa19122[idx]
                mem[32] = 3
                require block.timestamp
                mem[96] = block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx]] / block.timestamp)
                if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx]] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx]] / block.timestamp)) / 1000) >= ext_call.return_data[0] + 1:
                    s = sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx]] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx]] / block.timestamp)) / 1000)
                    s = sub_8aa19122[idx]
                    idx = idx + 1
                    continue 
                sub_a5008247[stor1[idx]]++
                if 0 >= sub_a5008247[stor1[idx]] + 1:
                    s = 1
                    t = 0
                    while sub_a5008247[stor1[idx]] + 1 >= s:
                        s = 256 * s
                        t = t + 1
                        continue 
                    if 0 >= sub_a5008247[stor1[idx]] + 1:
                        mem[96] = (t + 214 << 248) + (sub_8aa19122[idx] << 80) + (t + 128 << 72) + 256^(-t + 9) + (sub_a5008247[stor1[idx]] * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                    else:
                        if sub_a5008247[stor1[idx]] + 1 >= 128:
                            mem[96] = (t + 214 << 248) + (sub_8aa19122[idx] << 80) + (t + 128 << 72) + 256^(-t + 9) + (sub_a5008247[stor1[idx]] * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                        else:
                            mem[96] = (t + 214 << 248) + (sub_8aa19122[idx] << 80) + (sub_a5008247[stor1[idx]] + 1 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                    mem[128] = address(sha3(mem[96 len t + 23]))
                    sub_7e1aa7a7[stor1[idx]] = sha3(mem[128 len 20])
                else:
                    if sub_a5008247[stor1[idx]] + 1 < 128:
                        if 0 >= sub_a5008247[stor1[idx]] + 1:
                            sub_7e1aa7a7[stor1[idx]] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[idx] << 80) + (sub_a5008247[stor1[idx]] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)))
                        else:
                            if sub_a5008247[stor1[idx]] + 1 >= 128:
                                sub_7e1aa7a7[stor1[idx]] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[idx] << 80) + (sub_a5008247[stor1[idx]] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)))
                            else:
                                sub_7e1aa7a7[stor1[idx]] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[idx] << 80) + (sub_a5008247[stor1[idx]] + 1 << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000) >> 72)))
                    else:
                        s = 1
                        t = 0
                        while sub_a5008247[stor1[idx]] + 1 >= s:
                            s = 256 * s
                            t = t + 1
                            continue 
                        if 0 >= sub_a5008247[stor1[idx]] + 1:
                            mem[96] = (t + 214 << 248) + (sub_8aa19122[idx] << 80) + (t + 128 << 72) + 256^(-t + 9) + (sub_a5008247[stor1[idx]] * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                        else:
                            if sub_a5008247[stor1[idx]] + 1 >= 128:
                                mem[96] = (t + 214 << 248) + (sub_8aa19122[idx] << 80) + (t + 128 << 72) + 256^(-t + 9) + (sub_a5008247[stor1[idx]] * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                            else:
                                mem[96] = (t + 214 << 248) + (sub_8aa19122[idx] << 80) + (sub_a5008247[stor1[idx]] + 1 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                        mem[128] = address(sha3(mem[96 len t + 23]))
                        sub_7e1aa7a7[stor1[idx]] = sha3(mem[128 len 20])
                require ext_code.size(sub_8aa19122[idx])
                if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx]] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx]] / block.timestamp)) / 1000) > 0:
                    call sub_8aa19122[idx].0xc52ab778 with:
                       value msg.value wei
                         gas gas_remaining wei
                        args address(arg1), arg2, 0
                else:
                    if ext_call.return_data[0] >= 55 * 10^16:
                        call sub_8aa19122[idx].0xc52ab778 with:
                           value msg.value wei
                             gas gas_remaining wei
                            args address(arg1), arg2, 1
                    else:
                        call sub_8aa19122[idx].0xc52ab778 with:
                           value msg.value wei
                             gas gas_remaining wei
                            args address(arg1), arg2, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require eth.balance(tx.origin) < eth.balance(tx.origin)
                return idx
        else:
            if 1000 < sub_8aa19122.length:
                stor0 = 1
                s = 0
                s = 0
                idx = 1000
                while idx < sub_8aa19122.length:
                    mem[0] = sub_8aa19122[idx]
                    mem[32] = 3
                    require block.timestamp
                    mem[96] = block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx]] / block.timestamp)
                    if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx]] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx]] / block.timestamp)) / 1000) >= ext_call.return_data[0] + 1:
                        s = sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx]] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx]] / block.timestamp)) / 1000)
                        s = sub_8aa19122[idx]
                        idx = idx + 1
                        continue 
                    sub_a5008247[stor1[idx]]++
                    if 0 >= sub_a5008247[stor1[idx]] + 1:
                        s = 1
                        t = 0
                        while sub_a5008247[stor1[idx]] + 1 >= s:
                            s = 256 * s
                            t = t + 1
                            continue 
                        if 0 >= sub_a5008247[stor1[idx]] + 1:
                            mem[96] = (t + 214 << 248) + (sub_8aa19122[idx] << 80) + (t + 128 << 72) + 256^(-t + 9) + (sub_a5008247[stor1[idx]] * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                        else:
                            if sub_a5008247[stor1[idx]] + 1 >= 128:
                                mem[96] = (t + 214 << 248) + (sub_8aa19122[idx] << 80) + (t + 128 << 72) + 256^(-t + 9) + (sub_a5008247[stor1[idx]] * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                            else:
                                mem[96] = (t + 214 << 248) + (sub_8aa19122[idx] << 80) + (sub_a5008247[stor1[idx]] + 1 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                        mem[128] = address(sha3(mem[96 len t + 23]))
                        sub_7e1aa7a7[stor1[idx]] = sha3(mem[128 len 20])
                    else:
                        if sub_a5008247[stor1[idx]] + 1 < 128:
                            if 0 >= sub_a5008247[stor1[idx]] + 1:
                                sub_7e1aa7a7[stor1[idx]] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[idx] << 80) + (sub_a5008247[stor1[idx]] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)))
                            else:
                                if sub_a5008247[stor1[idx]] + 1 >= 128:
                                    sub_7e1aa7a7[stor1[idx]] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[idx] << 80) + (sub_a5008247[stor1[idx]] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)))
                                else:
                                    sub_7e1aa7a7[stor1[idx]] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[idx] << 80) + (sub_a5008247[stor1[idx]] + 1 << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000) >> 72)))
                        else:
                            s = 1
                            t = 0
                            while sub_a5008247[stor1[idx]] + 1 >= s:
                                s = 256 * s
                                t = t + 1
                                continue 
                            if 0 >= sub_a5008247[stor1[idx]] + 1:
                                mem[96] = (t + 214 << 248) + (sub_8aa19122[idx] << 80) + (t + 128 << 72) + 256^(-t + 9) + (sub_a5008247[stor1[idx]] * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                            else:
                                if sub_a5008247[stor1[idx]] + 1 >= 128:
                                    mem[96] = (t + 214 << 248) + (sub_8aa19122[idx] << 80) + (t + 128 << 72) + 256^(-t + 9) + (sub_a5008247[stor1[idx]] * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                else:
                                    mem[96] = (t + 214 << 248) + (sub_8aa19122[idx] << 80) + (sub_a5008247[stor1[idx]] + 1 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                            mem[128] = address(sha3(mem[96 len t + 23]))
                            sub_7e1aa7a7[stor1[idx]] = sha3(mem[128 len 20])
                    require ext_code.size(sub_8aa19122[idx])
                    if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx]] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx]] / block.timestamp)) / 1000) > 0:
                        call sub_8aa19122[idx].0xc52ab778 with:
                           value msg.value wei
                             gas gas_remaining wei
                            args address(arg1), arg2, 0
                    else:
                        if ext_call.return_data[0] >= 55 * 10^16:
                            call sub_8aa19122[idx].0xc52ab778 with:
                               value msg.value wei
                                 gas gas_remaining wei
                                args address(arg1), arg2, 1
                        else:
                            call sub_8aa19122[idx].0xc52ab778 with:
                               value msg.value wei
                                 gas gas_remaining wei
                                args address(arg1), arg2, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require eth.balance(tx.origin) < eth.balance(tx.origin)
                    return idx
            else:
                stor0 = 0
                s = 0
                s = 0
                idx = 0
                while idx < 1000:
                    require idx < sub_8aa19122.length
                    mem[0] = sub_8aa19122[idx]
                    mem[32] = 3
                    require block.timestamp
                    mem[96] = block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx]] / block.timestamp)
                    if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx]] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx]] / block.timestamp)) / 1000) >= ext_call.return_data[0] + 1:
                        s = sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx]] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx]] / block.timestamp)) / 1000)
                        s = sub_8aa19122[idx]
                        idx = idx + 1
                        continue 
                    sub_a5008247[stor1[idx]]++
                    if 0 >= sub_a5008247[stor1[idx]] + 1:
                        s = 1
                        t = 0
                        while sub_a5008247[stor1[idx]] + 1 >= s:
                            s = 256 * s
                            t = t + 1
                            continue 
                        if 0 >= sub_a5008247[stor1[idx]] + 1:
                            mem[96] = (t + 214 << 248) + (sub_8aa19122[idx] << 80) + (t + 128 << 72) + 256^(-t + 9) + (sub_a5008247[stor1[idx]] * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                        else:
                            if sub_a5008247[stor1[idx]] + 1 >= 128:
                                mem[96] = (t + 214 << 248) + (sub_8aa19122[idx] << 80) + (t + 128 << 72) + 256^(-t + 9) + (sub_a5008247[stor1[idx]] * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                            else:
                                mem[96] = (t + 214 << 248) + (sub_8aa19122[idx] << 80) + (sub_a5008247[stor1[idx]] + 1 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                        mem[128] = address(sha3(mem[96 len t + 23]))
                        sub_7e1aa7a7[stor1[idx]] = sha3(mem[128 len 20])
                    else:
                        if sub_a5008247[stor1[idx]] + 1 < 128:
                            if 0 >= sub_a5008247[stor1[idx]] + 1:
                                sub_7e1aa7a7[stor1[idx]] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[idx] << 80) + (sub_a5008247[stor1[idx]] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)))
                            else:
                                if sub_a5008247[stor1[idx]] + 1 >= 128:
                                    sub_7e1aa7a7[stor1[idx]] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[idx] << 80) + (sub_a5008247[stor1[idx]] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)))
                                else:
                                    sub_7e1aa7a7[stor1[idx]] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[idx] << 80) + (sub_a5008247[stor1[idx]] + 1 << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000) >> 72)))
                        else:
                            s = 1
                            t = 0
                            while sub_a5008247[stor1[idx]] + 1 >= s:
                                s = 256 * s
                                t = t + 1
                                continue 
                            if 0 >= sub_a5008247[stor1[idx]] + 1:
                                mem[96] = (t + 214 << 248) + (sub_8aa19122[idx] << 80) + (t + 128 << 72) + 256^(-t + 9) + (sub_a5008247[stor1[idx]] * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                            else:
                                if sub_a5008247[stor1[idx]] + 1 >= 128:
                                    mem[96] = (t + 214 << 248) + (sub_8aa19122[idx] << 80) + (t + 128 << 72) + 256^(-t + 9) + (sub_a5008247[stor1[idx]] * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                else:
                                    mem[96] = (t + 214 << 248) + (sub_8aa19122[idx] << 80) + (sub_a5008247[stor1[idx]] + 1 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                            mem[128] = address(sha3(mem[96 len t + 23]))
                            sub_7e1aa7a7[stor1[idx]] = sha3(mem[128 len 20])
                    require ext_code.size(sub_8aa19122[idx])
                    if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx]] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx]] / block.timestamp)) / 1000) > 0:
                        call sub_8aa19122[idx].0xc52ab778 with:
                           value msg.value wei
                             gas gas_remaining wei
                            args address(arg1), arg2, 0
                    else:
                        if ext_call.return_data[0] >= 55 * 10^16:
                            call sub_8aa19122[idx].0xc52ab778 with:
                               value msg.value wei
                                 gas gas_remaining wei
                                args address(arg1), arg2, 1
                        else:
                            call sub_8aa19122[idx].0xc52ab778 with:
                               value msg.value wei
                                 gas gas_remaining wei
                                args address(arg1), arg2, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require eth.balance(tx.origin) < eth.balance(tx.origin)
                    return idx
    else:
        if stor0:
            stor0 = 0
            s = 0
            s = 0
            idx = 0
            while idx < sub_8aa19122.length:
                mem[0] = sub_8aa19122[idx]
                mem[32] = 3
                require block.timestamp
                mem[96] = block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx]] / block.timestamp)
                if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx]] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx]] / block.timestamp)) / 1000) >= ext_call.return_data[0] + 1:
                    s = sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx]] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx]] / block.timestamp)) / 1000)
                    s = sub_8aa19122[idx]
                    idx = idx + 1
                    continue 
                sub_a5008247[stor1[idx]]++
                if 0 >= sub_a5008247[stor1[idx]] + 1:
                    s = 1
                    t = 0
                    while sub_a5008247[stor1[idx]] + 1 >= s:
                        s = 256 * s
                        t = t + 1
                        continue 
                    if 0 >= sub_a5008247[stor1[idx]] + 1:
                        mem[96] = (t + 214 << 248) + (sub_8aa19122[idx] << 80) + (t + 128 << 72) + 256^(-t + 9) + (sub_a5008247[stor1[idx]] * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                    else:
                        if sub_a5008247[stor1[idx]] + 1 >= 128:
                            mem[96] = (t + 214 << 248) + (sub_8aa19122[idx] << 80) + (t + 128 << 72) + 256^(-t + 9) + (sub_a5008247[stor1[idx]] * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                        else:
                            mem[96] = (t + 214 << 248) + (sub_8aa19122[idx] << 80) + (sub_a5008247[stor1[idx]] + 1 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                    mem[128] = address(sha3(mem[96 len t + 23]))
                    sub_7e1aa7a7[stor1[idx]] = sha3(mem[128 len 20])
                else:
                    if sub_a5008247[stor1[idx]] + 1 < 128:
                        if 0 >= sub_a5008247[stor1[idx]] + 1:
                            sub_7e1aa7a7[stor1[idx]] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[idx] << 80) + (sub_a5008247[stor1[idx]] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)))
                        else:
                            if sub_a5008247[stor1[idx]] + 1 >= 128:
                                sub_7e1aa7a7[stor1[idx]] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[idx] << 80) + (sub_a5008247[stor1[idx]] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)))
                            else:
                                sub_7e1aa7a7[stor1[idx]] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[idx] << 80) + (sub_a5008247[stor1[idx]] + 1 << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000) >> 72)))
                    else:
                        s = 1
                        t = 0
                        while sub_a5008247[stor1[idx]] + 1 >= s:
                            s = 256 * s
                            t = t + 1
                            continue 
                        if 0 >= sub_a5008247[stor1[idx]] + 1:
                            mem[96] = (t + 214 << 248) + (sub_8aa19122[idx] << 80) + (t + 128 << 72) + 256^(-t + 9) + (sub_a5008247[stor1[idx]] * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                        else:
                            if sub_a5008247[stor1[idx]] + 1 >= 128:
                                mem[96] = (t + 214 << 248) + (sub_8aa19122[idx] << 80) + (t + 128 << 72) + 256^(-t + 9) + (sub_a5008247[stor1[idx]] * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                            else:
                                mem[96] = (t + 214 << 248) + (sub_8aa19122[idx] << 80) + (sub_a5008247[stor1[idx]] + 1 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                        mem[128] = address(sha3(mem[96 len t + 23]))
                        sub_7e1aa7a7[stor1[idx]] = sha3(mem[128 len 20])
                require ext_code.size(sub_8aa19122[idx])
                if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx]] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx]] / block.timestamp)) / 1000) > 0:
                    call sub_8aa19122[idx].0xc52ab778 with:
                       value msg.value wei
                         gas gas_remaining wei
                        args address(arg1), arg2, 0
                else:
                    if ext_call.return_data[0] >= 55 * 10^16:
                        call sub_8aa19122[idx].0xc52ab778 with:
                           value msg.value wei
                             gas gas_remaining wei
                            args address(arg1), arg2, 1
                    else:
                        call sub_8aa19122[idx].0xc52ab778 with:
                           value msg.value wei
                             gas gas_remaining wei
                            args address(arg1), arg2, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require eth.balance(tx.origin) < eth.balance(tx.origin)
                return idx
        else:
            if 1000 < sub_8aa19122.length:
                stor0 = 1
                s = 0
                s = 0
                idx = sub_8aa19122.length
                while idx < sub_8aa19122.length:
                    mem[0] = sub_8aa19122[idx]
                    mem[32] = 3
                    require block.timestamp
                    mem[96] = block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx]] / block.timestamp)
                    if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx]] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx]] / block.timestamp)) / 1000) >= ext_call.return_data[0] + 1:
                        s = sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx]] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx]] / block.timestamp)) / 1000)
                        s = sub_8aa19122[idx]
                        idx = idx + 1
                        continue 
                    sub_a5008247[stor1[idx]]++
                    if 0 >= sub_a5008247[stor1[idx]] + 1:
                        s = 1
                        t = 0
                        while sub_a5008247[stor1[idx]] + 1 >= s:
                            s = 256 * s
                            t = t + 1
                            continue 
                        if 0 >= sub_a5008247[stor1[idx]] + 1:
                            mem[96] = (t + 214 << 248) + (sub_8aa19122[idx] << 80) + (t + 128 << 72) + 256^(-t + 9) + (sub_a5008247[stor1[idx]] * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                        else:
                            if sub_a5008247[stor1[idx]] + 1 >= 128:
                                mem[96] = (t + 214 << 248) + (sub_8aa19122[idx] << 80) + (t + 128 << 72) + 256^(-t + 9) + (sub_a5008247[stor1[idx]] * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                            else:
                                mem[96] = (t + 214 << 248) + (sub_8aa19122[idx] << 80) + (sub_a5008247[stor1[idx]] + 1 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                        mem[128] = address(sha3(mem[96 len t + 23]))
                        sub_7e1aa7a7[stor1[idx]] = sha3(mem[128 len 20])
                    else:
                        if sub_a5008247[stor1[idx]] + 1 < 128:
                            if 0 >= sub_a5008247[stor1[idx]] + 1:
                                sub_7e1aa7a7[stor1[idx]] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[idx] << 80) + (sub_a5008247[stor1[idx]] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)))
                            else:
                                if sub_a5008247[stor1[idx]] + 1 >= 128:
                                    sub_7e1aa7a7[stor1[idx]] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[idx] << 80) + (sub_a5008247[stor1[idx]] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)))
                                else:
                                    sub_7e1aa7a7[stor1[idx]] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[idx] << 80) + (sub_a5008247[stor1[idx]] + 1 << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000) >> 72)))
                        else:
                            s = 1
                            t = 0
                            while sub_a5008247[stor1[idx]] + 1 >= s:
                                s = 256 * s
                                t = t + 1
                                continue 
                            if 0 >= sub_a5008247[stor1[idx]] + 1:
                                mem[96] = (t + 214 << 248) + (sub_8aa19122[idx] << 80) + (t + 128 << 72) + 256^(-t + 9) + (sub_a5008247[stor1[idx]] * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                            else:
                                if sub_a5008247[stor1[idx]] + 1 >= 128:
                                    mem[96] = (t + 214 << 248) + (sub_8aa19122[idx] << 80) + (t + 128 << 72) + 256^(-t + 9) + (sub_a5008247[stor1[idx]] * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                else:
                                    mem[96] = (t + 214 << 248) + (sub_8aa19122[idx] << 80) + (sub_a5008247[stor1[idx]] + 1 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                            mem[128] = address(sha3(mem[96 len t + 23]))
                            sub_7e1aa7a7[stor1[idx]] = sha3(mem[128 len 20])
                    require ext_code.size(sub_8aa19122[idx])
                    if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx]] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx]] / block.timestamp)) / 1000) > 0:
                        call sub_8aa19122[idx].0xc52ab778 with:
                           value msg.value wei
                             gas gas_remaining wei
                            args address(arg1), arg2, 0
                    else:
                        if ext_call.return_data[0] >= 55 * 10^16:
                            call sub_8aa19122[idx].0xc52ab778 with:
                               value msg.value wei
                                 gas gas_remaining wei
                                args address(arg1), arg2, 1
                        else:
                            call sub_8aa19122[idx].0xc52ab778 with:
                               value msg.value wei
                                 gas gas_remaining wei
                                args address(arg1), arg2, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require eth.balance(tx.origin) < eth.balance(tx.origin)
                    return idx
            else:
                stor0 = 0
                s = 0
                s = 0
                idx = 0
                while idx < sub_8aa19122.length:
                    mem[0] = sub_8aa19122[idx]
                    mem[32] = 3
                    require block.timestamp
                    mem[96] = block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx]] / block.timestamp)
                    if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx]] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx]] / block.timestamp)) / 1000) >= ext_call.return_data[0] + 1:
                        s = sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx]] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx]] / block.timestamp)) / 1000)
                        s = sub_8aa19122[idx]
                        idx = idx + 1
                        continue 
                    sub_a5008247[stor1[idx]]++
                    if 0 >= sub_a5008247[stor1[idx]] + 1:
                        s = 1
                        t = 0
                        while sub_a5008247[stor1[idx]] + 1 >= s:
                            s = 256 * s
                            t = t + 1
                            continue 
                        if 0 >= sub_a5008247[stor1[idx]] + 1:
                            mem[96] = (t + 214 << 248) + (sub_8aa19122[idx] << 80) + (t + 128 << 72) + 256^(-t + 9) + (sub_a5008247[stor1[idx]] * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                        else:
                            if sub_a5008247[stor1[idx]] + 1 >= 128:
                                mem[96] = (t + 214 << 248) + (sub_8aa19122[idx] << 80) + (t + 128 << 72) + 256^(-t + 9) + (sub_a5008247[stor1[idx]] * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                            else:
                                mem[96] = (t + 214 << 248) + (sub_8aa19122[idx] << 80) + (sub_a5008247[stor1[idx]] + 1 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                        mem[128] = address(sha3(mem[96 len t + 23]))
                        sub_7e1aa7a7[stor1[idx]] = sha3(mem[128 len 20])
                    else:
                        if sub_a5008247[stor1[idx]] + 1 < 128:
                            if 0 >= sub_a5008247[stor1[idx]] + 1:
                                sub_7e1aa7a7[stor1[idx]] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[idx] << 80) + (sub_a5008247[stor1[idx]] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)))
                            else:
                                if sub_a5008247[stor1[idx]] + 1 >= 128:
                                    sub_7e1aa7a7[stor1[idx]] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[idx] << 80) + (sub_a5008247[stor1[idx]] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)))
                                else:
                                    sub_7e1aa7a7[stor1[idx]] = sha3(address(sha3(Mask(184, 72, (sub_8aa19122[idx] << 80) + (sub_a5008247[stor1[idx]] + 1 << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000) >> 72)))
                        else:
                            s = 1
                            t = 0
                            while sub_a5008247[stor1[idx]] + 1 >= s:
                                s = 256 * s
                                t = t + 1
                                continue 
                            if 0 >= sub_a5008247[stor1[idx]] + 1:
                                mem[96] = (t + 214 << 248) + (sub_8aa19122[idx] << 80) + (t + 128 << 72) + 256^(-t + 9) + (sub_a5008247[stor1[idx]] * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                            else:
                                if sub_a5008247[stor1[idx]] + 1 >= 128:
                                    mem[96] = (t + 214 << 248) + (sub_8aa19122[idx] << 80) + (t + 128 << 72) + 256^(-t + 9) + (sub_a5008247[stor1[idx]] * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                else:
                                    mem[96] = (t + 214 << 248) + (sub_8aa19122[idx] << 80) + (sub_a5008247[stor1[idx]] + 1 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                            mem[128] = address(sha3(mem[96 len t + 23]))
                            sub_7e1aa7a7[stor1[idx]] = sha3(mem[128 len 20])
                    require ext_code.size(sub_8aa19122[idx])
                    if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx]] / block.timestamp)) - (1000 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + block.number + (sub_7e1aa7a7[stor1[idx]] / block.timestamp)) / 1000) > 0:
                        call sub_8aa19122[idx].0xc52ab778 with:
                           value msg.value wei
                             gas gas_remaining wei
                            args address(arg1), arg2, 0
                    else:
                        if ext_call.return_data[0] >= 55 * 10^16:
                            call sub_8aa19122[idx].0xc52ab778 with:
                               value msg.value wei
                                 gas gas_remaining wei
                                args address(arg1), arg2, 1
                        else:
                            call sub_8aa19122[idx].0xc52ab778 with:
                               value msg.value wei
                                 gas gas_remaining wei
                                args address(arg1), arg2, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require eth.balance(tx.origin) < eth.balance(tx.origin)
                    return idx
    return 0
}



}
