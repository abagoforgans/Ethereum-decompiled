contract main {




// =====================  Runtime code  =====================


address owner;
array of address stor1;
mapping of uint256 sub_5df19e2a;

function sub_5df19e2a(?) {
    require calldata.size - 4 >= 32
    return sub_5df19e2a[arg1]
}

function owner() {
    return owner
}

function deposit() payable {
  stop
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_4d539562(?) {
    call 0xb5f5655e8be6039173fef87191e53c86f799f7ca with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_6388de28(?) {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < arg1:
        mem[96 len 587] = code.data[2552 len 587]
        create contract with 0 wei
                        code: code.data[2552 len 587]
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        stor1.length++
        mem[0] = 1
        stor1[stor1.length] = address(create.new_address)
        idx = idx + 1
        continue 
}

function mk_contract_address(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if 0 < arg2:
        if arg2 < 128:
            if 0 >= arg2:
                return address(sha3(Mask(184, 72, (address(arg1) << 80) + (arg2 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72))
            if arg2 >= 128:
                return address(sha3(Mask(184, 72, (address(arg1) << 80) + (arg2 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72))
            return address(sha3(Mask(184, 72, (address(arg1) << 80) + (arg2 << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000) >> 72))
    idx = 1
    s = 0
    while arg2 >= idx:
        idx = 256 * idx
        s = s + 1
        continue 
    if 0 >= arg2:
        mem[96] = (s + 214 << 248) + (address(arg1) << 80) + (s + 128 << 72) + (arg2 * 256^(-s + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
    else:
        if arg2 >= 128:
            mem[96] = (s + 214 << 248) + (address(arg1) << 80) + (s + 128 << 72) + (arg2 * 256^(-s + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
        else:
            mem[96] = (s + 214 << 248) + (address(arg1) << 80) + (arg2 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
    mem[128] = address(sha3(mem[96 len s + 23]))
    return memory
      from 128
       len 32
}

function sub_5427f111(?) {
    require ext_code.size(0xdd9fd6b6f8f7ea932997992bbe67eabb3e316f3c)
    staticcall 0xdd9fd6b6f8f7ea932997992bbe67eabb3e316f3c.airDropPot_() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= 4 * 10^17:
        require ext_code.size(0xdd9fd6b6f8f7ea932997992bbe67eabb3e316f3c)
        staticcall 0xdd9fd6b6f8f7ea932997992bbe67eabb3e316f3c.airDropTracker_() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= 3:
            mem[(2 * ceil32(return_data.size)) + 128] = address(block.coinbase)
            mem[(2 * ceil32(return_data.size)) + 96] = 20
            mem[64] = (2 * ceil32(return_data.size)) + 148
            mem[(2 * ceil32(return_data.size)) + 148 len 0] = None
            mem[(2 * ceil32(return_data.size)) + 148 len 20] = address(block.coinbase, 0)
            require block.timestamp
            s = 0
            t = 0
            u = 0
            v = 0
            idx = 0
            while idx < stor1.length:
                mem[0] = stor1[idx]
                mem[32] = 2
                if 0 >= sub_5df19e2a[stor1[idx]] + 1:
                    v = 1
                    w = 0
                    while sub_5df19e2a[stor1[idx]] + 1 >= v:
                        v = 256 * v
                        w = w + 1
                        continue 
                    if 0 >= sub_5df19e2a[stor1[idx]] + 1:
                        _692 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_692] = (w + 214 << 248) + (stor1[idx] << 80) + (w + 128 << 72) + 256^(-w + 9) + (sub_5df19e2a[stor1[idx]] * 256^(-w + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                        _693 = sha3(mem[_692 len w + 23])
                        _705 = mem[64]
                        mem[mem[64] + 32] = address(sha3(mem[_692 len w + 23]))
                        _706 = mem[64]
                        mem[mem[64]] = 20
                        mem[64] = mem[64] + 52
                        _708 = mem[_706]
                        t = _706 + 32
                        u = _705 + 52
                        s = mem[_706]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_705 + floor32(mem[_706]) + 52] = mem[_705 + floor32(mem[_706]) + 52] and 256^(-(mem[_706] % 32) + 32) - 1 or mem[_706 + floor32(mem[_706]) + 32] and !(256^(-(mem[_706] % 32) + 32) - 1)
                        require block.timestamp
                        mem[_705 + 84] = block.timestamp + block.difficulty + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.gas_limit + block.number + (sha3(mem[_705 + 52 len _708]) / block.timestamp)
                        mem[_705 + 52] = 32
                        mem[64] = _705 + 116
                        t = _705 + 84
                        u = _705 + 116
                        s = 32
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        if sha3(mem[_705 + 116]) - (1000 * sha3(mem[_705 + 116]) / 1000) > ext_call.return_data[0]:
                            s = sha3(mem[_705 + 116]) - (1000 * sha3(mem[_705 + 116]) / 1000)
                            t = _693
                            u = sub_5df19e2a[stor1[idx]] + 1
                            v = stor1[idx]
                            idx = idx + 1
                            continue 
                    else:
                        if sub_5df19e2a[stor1[idx]] + 1 >= 128:
                            _709 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_709] = (w + 214 << 248) + (stor1[idx] << 80) + (w + 128 << 72) + 256^(-w + 9) + (sub_5df19e2a[stor1[idx]] * 256^(-w + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                            _710 = sha3(mem[_709 len w + 23])
                            _721 = mem[64]
                            mem[mem[64] + 32] = address(sha3(mem[_709 len w + 23]))
                            _722 = mem[64]
                            mem[mem[64]] = 20
                            mem[64] = mem[64] + 52
                            _724 = mem[_722]
                            u = _722 + 32
                            w = _721 + 52
                            v = mem[_722]
                            while v >= 32:
                                mem[w] = mem[u]
                                u = u + 32
                                w = w + 32
                                v = v - 32
                                continue 
                            mem[_721 + floor32(mem[_722]) + 52] = mem[_721 + floor32(mem[_722]) + 52] and 256^(-(mem[_722] % 32) + 32) - 1 or mem[_722 + floor32(mem[_722]) + 32] and !(256^(-(mem[_722] % 32) + 32) - 1)
                            require block.timestamp
                            mem[_721 + 84] = block.timestamp + block.difficulty + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.gas_limit + block.number + (sha3(mem[_721 + 52 len _724]) / block.timestamp)
                            mem[_721 + 52] = 32
                            mem[64] = _721 + 116
                            t = _721 + 84
                            u = _721 + 116
                            s = 32
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            if sha3(mem[_721 + 116]) - (1000 * sha3(mem[_721 + 116]) / 1000) > ext_call.return_data[0]:
                                u = sha3(mem[_721 + 116]) - (1000 * sha3(mem[_721 + 116]) / 1000)
                                w = _710
                                v = sub_5df19e2a[stor1[idx]] + 1
                                v = stor1[idx]
                                idx = idx + 1
                                continue 
                        else:
                            _711 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_711] = (w + 214 << 248) + (stor1[idx] << 80) + (sub_5df19e2a[stor1[idx]] + 1 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                            _712 = sha3(mem[_711 len w + 23])
                            _725 = mem[64]
                            mem[mem[64] + 32] = address(sha3(mem[_711 len w + 23]))
                            _726 = mem[64]
                            mem[mem[64]] = 20
                            mem[64] = mem[64] + 52
                            _728 = mem[_726]
                            u = _726 + 32
                            w = _725 + 52
                            v = mem[_726]
                            while v >= 32:
                                mem[w] = mem[u]
                                u = u + 32
                                w = w + 32
                                v = v - 32
                                continue 
                            mem[_725 + floor32(mem[_726]) + 52] = mem[_725 + floor32(mem[_726]) + 52] and 256^(-(mem[_726] % 32) + 32) - 1 or mem[_726 + floor32(mem[_726]) + 32] and !(256^(-(mem[_726] % 32) + 32) - 1)
                            require block.timestamp
                            mem[_725 + 84] = block.timestamp + block.difficulty + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.gas_limit + block.number + (sha3(mem[_725 + 52 len _728]) / block.timestamp)
                            mem[_725 + 52] = 32
                            mem[64] = _725 + 116
                            t = _725 + 84
                            u = _725 + 116
                            s = 32
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            if sha3(mem[_725 + 116]) - (1000 * sha3(mem[_725 + 116]) / 1000) > ext_call.return_data[0]:
                                u = sha3(mem[_725 + 116]) - (1000 * sha3(mem[_725 + 116]) / 1000)
                                w = _712
                                v = sub_5df19e2a[stor1[idx]] + 1
                                v = stor1[idx]
                                idx = idx + 1
                                continue 
                else:
                    if sub_5df19e2a[stor1[idx]] + 1 < 128:
                        if 0 >= sub_5df19e2a[stor1[idx]] + 1:
                            _443 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_443] = (stor1[idx] << 80) + (sub_5df19e2a[stor1[idx]] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000
                            _445 = mem[64]
                            mem[mem[64] + 32] = address(sha3(Mask(184, 72, (stor1[idx] << 80) + (sub_5df19e2a[stor1[idx]] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72))
                            _446 = mem[64]
                            mem[mem[64]] = 20
                            mem[64] = mem[64] + 52
                            _448 = mem[_446]
                            t = _446 + 32
                            u = _445 + 52
                            s = mem[_446]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_445 + floor32(mem[_446]) + 52] = mem[_445 + floor32(mem[_446]) + 52] and 256^(-(mem[_446] % 32) + 32) - 1 or mem[_446 + floor32(mem[_446]) + 32] and !(256^(-(mem[_446] % 32) + 32) - 1)
                            require block.timestamp
                            mem[_445 + 84] = block.timestamp + block.difficulty + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.gas_limit + block.number + (sha3(mem[_445 + 52 len _448]) / block.timestamp)
                            mem[_445 + 52] = 32
                            mem[64] = _445 + 116
                            t = _445 + 84
                            u = _445 + 116
                            s = 32
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            if sha3(mem[_445 + 116]) - (1000 * sha3(mem[_445 + 116]) / 1000) > ext_call.return_data[0]:
                                s = sha3(mem[_445 + 116]) - (1000 * sha3(mem[_445 + 116]) / 1000)
                                t = sha3(Mask(184, 72, (stor1[idx] << 80) + (sub_5df19e2a[stor1[idx]] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)
                                u = sub_5df19e2a[stor1[idx]] + 1
                                v = stor1[idx]
                                idx = idx + 1
                                continue 
                        else:
                            if sub_5df19e2a[stor1[idx]] + 1 >= 128:
                                _449 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_449] = (stor1[idx] << 80) + (sub_5df19e2a[stor1[idx]] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000
                                _453 = mem[64]
                                mem[mem[64] + 32] = address(sha3(Mask(184, 72, (stor1[idx] << 80) + (sub_5df19e2a[stor1[idx]] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72))
                                _454 = mem[64]
                                mem[mem[64]] = 20
                                mem[64] = mem[64] + 52
                                _456 = mem[_454]
                                w = _454 + 32
                                x = _453 + 52
                                v = mem[_454]
                                while v >= 32:
                                    mem[x] = mem[w]
                                    w = w + 32
                                    x = x + 32
                                    v = v - 32
                                    continue 
                                mem[_453 + floor32(mem[_454]) + 52] = mem[_453 + floor32(mem[_454]) + 52] and 256^(-(mem[_454] % 32) + 32) - 1 or mem[_454 + floor32(mem[_454]) + 32] and !(256^(-(mem[_454] % 32) + 32) - 1)
                                require block.timestamp
                                mem[_453 + 84] = block.timestamp + block.difficulty + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.gas_limit + block.number + (sha3(mem[_453 + 52 len _456]) / block.timestamp)
                                mem[_453 + 52] = 32
                                mem[64] = _453 + 116
                                u = _453 + 84
                                w = _453 + 116
                                v = 32
                                while v >= 32:
                                    mem[w] = mem[u]
                                    u = u + 32
                                    w = w + 32
                                    v = v - 32
                                    continue 
                                if sha3(mem[_453 + 116]) - (1000 * sha3(mem[_453 + 116]) / 1000) > ext_call.return_data[0]:
                                    u = sha3(mem[_453 + 116]) - (1000 * sha3(mem[_453 + 116]) / 1000)
                                    w = sha3(Mask(184, 72, (stor1[idx] << 80) + (sub_5df19e2a[stor1[idx]] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)
                                    v = sub_5df19e2a[stor1[idx]] + 1
                                    v = stor1[idx]
                                    idx = idx + 1
                                    continue 
                            else:
                                _451 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_451] = (stor1[idx] << 80) + (sub_5df19e2a[stor1[idx]] + 1 << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000
                                _457 = mem[64]
                                mem[mem[64] + 32] = address(sha3(Mask(184, 72, (stor1[idx] << 80) + (sub_5df19e2a[stor1[idx]] + 1 << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000) >> 72))
                                _458 = mem[64]
                                mem[mem[64]] = 20
                                mem[64] = mem[64] + 52
                                _460 = mem[_458]
                                w = _458 + 32
                                x = _457 + 52
                                v = mem[_458]
                                while v >= 32:
                                    mem[x] = mem[w]
                                    w = w + 32
                                    x = x + 32
                                    v = v - 32
                                    continue 
                                mem[_457 + floor32(mem[_458]) + 52] = mem[_457 + floor32(mem[_458]) + 52] and 256^(-(mem[_458] % 32) + 32) - 1 or mem[_458 + floor32(mem[_458]) + 32] and !(256^(-(mem[_458] % 32) + 32) - 1)
                                require block.timestamp
                                mem[_457 + 84] = block.timestamp + block.difficulty + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.gas_limit + block.number + (sha3(mem[_457 + 52 len _460]) / block.timestamp)
                                mem[_457 + 52] = 32
                                mem[64] = _457 + 116
                                u = _457 + 84
                                w = _457 + 116
                                v = 32
                                while v >= 32:
                                    mem[w] = mem[u]
                                    u = u + 32
                                    w = w + 32
                                    v = v - 32
                                    continue 
                                if sha3(mem[_457 + 116]) - (1000 * sha3(mem[_457 + 116]) / 1000) > ext_call.return_data[0]:
                                    u = sha3(mem[_457 + 116]) - (1000 * sha3(mem[_457 + 116]) / 1000)
                                    w = sha3(Mask(184, 72, (stor1[idx] << 80) + (sub_5df19e2a[stor1[idx]] + 1 << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000) >> 72)
                                    v = sub_5df19e2a[stor1[idx]] + 1
                                    v = stor1[idx]
                                    idx = idx + 1
                                    continue 
                    else:
                        v = 1
                        w = 0
                        while sub_5df19e2a[stor1[idx]] + 1 >= v:
                            v = 256 * v
                            w = w + 1
                            continue 
                        if 0 >= sub_5df19e2a[stor1[idx]] + 1:
                            _694 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_694] = (w + 214 << 248) + (stor1[idx] << 80) + (w + 128 << 72) + 256^(-w + 9) + (sub_5df19e2a[stor1[idx]] * 256^(-w + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                            _695 = sha3(mem[_694 len w + 23])
                            _713 = mem[64]
                            mem[mem[64] + 32] = address(sha3(mem[_694 len w + 23]))
                            _714 = mem[64]
                            mem[mem[64]] = 20
                            mem[64] = mem[64] + 52
                            _716 = mem[_714]
                            u = _714 + 32
                            w = _713 + 52
                            v = mem[_714]
                            while v >= 32:
                                mem[w] = mem[u]
                                u = u + 32
                                w = w + 32
                                v = v - 32
                                continue 
                            mem[_713 + floor32(mem[_714]) + 52] = mem[_713 + floor32(mem[_714]) + 52] and 256^(-(mem[_714] % 32) + 32) - 1 or mem[_714 + floor32(mem[_714]) + 32] and !(256^(-(mem[_714] % 32) + 32) - 1)
                            require block.timestamp
                            mem[_713 + 84] = block.timestamp + block.difficulty + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.gas_limit + block.number + (sha3(mem[_713 + 52 len _716]) / block.timestamp)
                            mem[_713 + 52] = 32
                            mem[64] = _713 + 116
                            t = _713 + 84
                            u = _713 + 116
                            s = 32
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            if sha3(mem[_713 + 116]) - (1000 * sha3(mem[_713 + 116]) / 1000) > ext_call.return_data[0]:
                                u = sha3(mem[_713 + 116]) - (1000 * sha3(mem[_713 + 116]) / 1000)
                                w = _695
                                v = sub_5df19e2a[stor1[idx]] + 1
                                v = stor1[idx]
                                idx = idx + 1
                                continue 
                        else:
                            if sub_5df19e2a[stor1[idx]] + 1 >= 128:
                                _717 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_717] = (w + 214 << 248) + (stor1[idx] << 80) + (w + 128 << 72) + 256^(-w + 9) + (sub_5df19e2a[stor1[idx]] * 256^(-w + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                _718 = sha3(mem[_717 len w + 23])
                                _729 = mem[64]
                                mem[mem[64] + 32] = address(sha3(mem[_717 len w + 23]))
                                _730 = mem[64]
                                mem[mem[64]] = 20
                                mem[64] = mem[64] + 52
                                _732 = mem[_730]
                                t = _730 + 32
                                u = _729 + 52
                                s = mem[_730]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_729 + floor32(mem[_730]) + 52] = mem[_729 + floor32(mem[_730]) + 52] and 256^(-(mem[_730] % 32) + 32) - 1 or mem[_730 + floor32(mem[_730]) + 32] and !(256^(-(mem[_730] % 32) + 32) - 1)
                                require block.timestamp
                                mem[_729 + 84] = block.timestamp + block.difficulty + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.gas_limit + block.number + (sha3(mem[_729 + 52 len _732]) / block.timestamp)
                                mem[_729 + 52] = 32
                                mem[64] = _729 + 116
                                t = _729 + 84
                                u = _729 + 116
                                s = 32
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                if sha3(mem[_729 + 116]) - (1000 * sha3(mem[_729 + 116]) / 1000) > ext_call.return_data[0]:
                                    s = sha3(mem[_729 + 116]) - (1000 * sha3(mem[_729 + 116]) / 1000)
                                    t = _718
                                    u = sub_5df19e2a[stor1[idx]] + 1
                                    v = stor1[idx]
                                    idx = idx + 1
                                    continue 
                            else:
                                _719 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_719] = (w + 214 << 248) + (stor1[idx] << 80) + (sub_5df19e2a[stor1[idx]] + 1 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                                _720 = sha3(mem[_719 len w + 23])
                                _733 = mem[64]
                                mem[mem[64] + 32] = address(sha3(mem[_719 len w + 23]))
                                _734 = mem[64]
                                mem[mem[64]] = 20
                                mem[64] = mem[64] + 52
                                _736 = mem[_734]
                                t = _734 + 32
                                u = _733 + 52
                                s = mem[_734]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_733 + floor32(mem[_734]) + 52] = mem[_733 + floor32(mem[_734]) + 52] and 256^(-(mem[_734] % 32) + 32) - 1 or mem[_734 + floor32(mem[_734]) + 32] and !(256^(-(mem[_734] % 32) + 32) - 1)
                                require block.timestamp
                                mem[_733 + 84] = block.timestamp + block.difficulty + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.gas_limit + block.number + (sha3(mem[_733 + 52 len _736]) / block.timestamp)
                                mem[_733 + 52] = 32
                                mem[64] = _733 + 116
                                t = _733 + 84
                                u = _733 + 116
                                s = 32
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                if sha3(mem[_733 + 116]) - (1000 * sha3(mem[_733 + 116]) / 1000) > ext_call.return_data[0]:
                                    s = sha3(mem[_733 + 116]) - (1000 * sha3(mem[_733 + 116]) / 1000)
                                    t = _720
                                    u = sub_5df19e2a[stor1[idx]] + 1
                                    v = stor1[idx]
                                    idx = idx + 1
                                    continue 
                sub_5df19e2a[stor1[idx]]++
                require ext_code.size(stor1[idx])
                call stor1[idx].0x5900c0dd with:
                   value 10^17 wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
}



}
