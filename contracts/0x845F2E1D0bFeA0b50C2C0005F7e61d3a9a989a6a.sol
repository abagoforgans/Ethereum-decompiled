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
    call 0x53062a2cb2402919f257a3d520bbef73c3d57673 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_6388de28(?) {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < arg1:
        mem[96 len 886] = code.data[2794 len 886]
        create contract with 0 wei
                        code: code.data[2794 len 886]
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
    if ext_call.return_data[0] < 4 * 10^17:
        emit 0xa7cc25c2: ext_call.return_data[0]
    else:
        require ext_code.size(0xdd9fd6b6f8f7ea932997992bbe67eabb3e316f3c)
        staticcall 0xdd9fd6b6f8f7ea932997992bbe67eabb3e316f3c.airDropTracker_() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(2 * ceil32(return_data.size)) + 128] = address(block.coinbase)
        mem[(2 * ceil32(return_data.size)) + 96] = 20
        mem[64] = (2 * ceil32(return_data.size)) + 148
        mem[(2 * ceil32(return_data.size)) + 148 len 0] = None
        mem[(2 * ceil32(return_data.size)) + 148 len 20] = address(block.coinbase, 0)
        require block.timestamp
        s = 0
        s = 0
        s = 0
        s = 0
        idx = 0
        while idx < stor1.length:
            mem[0] = stor1[idx]
            mem[32] = 2
            if 0 >= sub_5df19e2a[stor1[idx]] + 1:
                s = 1
                t = 0
                while sub_5df19e2a[stor1[idx]] + 1 >= s:
                    s = 256 * s
                    t = t + 1
                    continue 
                if 0 >= sub_5df19e2a[stor1[idx]] + 1:
                    _859 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_859] = (t + 214 << 248) + (stor1[idx] << 80) + (t + 128 << 72) + 256^(-t + 9) + (sub_5df19e2a[stor1[idx]] * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                    _860 = sha3(mem[_859 len t + 23])
                    _863 = mem[64]
                    mem[mem[64] + 32] = address(sha3(mem[_859 len t + 23]))
                    _864 = mem[64]
                    mem[mem[64]] = 20
                    mem[64] = mem[64] + 52
                    _866 = mem[_864]
                    t = _864 + 32
                    u = _863 + 52
                    s = mem[_864]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_863 + floor32(mem[_864]) + 52] = mem[_863 + floor32(mem[_864]) + 52] and 256^(-(mem[_864] % 32) + 32) - 1 or mem[_864 + floor32(mem[_864]) + 32] and !(256^(-(mem[_864] % 32) + 32) - 1)
                    require block.timestamp
                    mem[_863 + 84] = block.timestamp + block.difficulty + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.gas_limit + block.number + (sha3(mem[_863 + 52 len _866]) / block.timestamp)
                    mem[_863 + 52] = 32
                    mem[64] = _863 + 116
                    t = _863 + 84
                    u = _863 + 116
                    s = 32
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    _1240 = sha3(mem[_863 + 116])
                    mem[_863 + 116] = sha3(mem[_863 + 116]) - (1000 * sha3(mem[_863 + 116]) / 1000)
                    emit 0xa7cc25c2: mem[_863 + 116]
                    if _1240 - (1000 * _1240 / 1000) > ext_call.return_data[0]:
                        s = _1240 - (1000 * _1240 / 1000)
                        s = _860
                        s = sub_5df19e2a[stor1[idx]] + 1
                        s = stor1[idx]
                        idx = idx + 1
                        continue 
                    emit 0xfefa99bf: address(_860)
                else:
                    if sub_5df19e2a[stor1[idx]] + 1 >= 128:
                        _867 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_867] = (t + 214 << 248) + (stor1[idx] << 80) + (t + 128 << 72) + 256^(-t + 9) + (sub_5df19e2a[stor1[idx]] * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                        _868 = sha3(mem[_867 len t + 23])
                        _879 = mem[64]
                        mem[mem[64] + 32] = address(sha3(mem[_867 len t + 23]))
                        _880 = mem[64]
                        mem[mem[64]] = 20
                        mem[64] = mem[64] + 52
                        _882 = mem[_880]
                        t = _880 + 32
                        u = _879 + 52
                        s = mem[_880]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_879 + floor32(mem[_880]) + 52] = mem[_879 + floor32(mem[_880]) + 52] and 256^(-(mem[_880] % 32) + 32) - 1 or mem[_880 + floor32(mem[_880]) + 32] and !(256^(-(mem[_880] % 32) + 32) - 1)
                        require block.timestamp
                        mem[_879 + 84] = block.timestamp + block.difficulty + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.gas_limit + block.number + (sha3(mem[_879 + 52 len _882]) / block.timestamp)
                        mem[_879 + 52] = 32
                        mem[64] = _879 + 116
                        t = _879 + 84
                        u = _879 + 116
                        s = 32
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        _1245 = sha3(mem[_879 + 116])
                        mem[_879 + 116] = sha3(mem[_879 + 116]) - (1000 * sha3(mem[_879 + 116]) / 1000)
                        emit 0xa7cc25c2: mem[_879 + 116]
                        if _1245 - (1000 * _1245 / 1000) > ext_call.return_data[0]:
                            s = _1245 - (1000 * _1245 / 1000)
                            s = _868
                            s = sub_5df19e2a[stor1[idx]] + 1
                            s = stor1[idx]
                            idx = idx + 1
                            continue 
                        emit 0xfefa99bf: address(_868)
                    else:
                        _869 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_869] = (t + 214 << 248) + (stor1[idx] << 80) + (sub_5df19e2a[stor1[idx]] + 1 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                        _870 = sha3(mem[_869 len t + 23])
                        _883 = mem[64]
                        mem[mem[64] + 32] = address(sha3(mem[_869 len t + 23]))
                        _884 = mem[64]
                        mem[mem[64]] = 20
                        mem[64] = mem[64] + 52
                        _886 = mem[_884]
                        t = _884 + 32
                        u = _883 + 52
                        s = mem[_884]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_883 + floor32(mem[_884]) + 52] = mem[_883 + floor32(mem[_884]) + 52] and 256^(-(mem[_884] % 32) + 32) - 1 or mem[_884 + floor32(mem[_884]) + 32] and !(256^(-(mem[_884] % 32) + 32) - 1)
                        require block.timestamp
                        mem[_883 + 84] = block.timestamp + block.difficulty + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.gas_limit + block.number + (sha3(mem[_883 + 52 len _886]) / block.timestamp)
                        mem[_883 + 52] = 32
                        mem[64] = _883 + 116
                        t = _883 + 84
                        u = _883 + 116
                        s = 32
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        _1250 = sha3(mem[_883 + 116])
                        mem[_883 + 116] = sha3(mem[_883 + 116]) - (1000 * sha3(mem[_883 + 116]) / 1000)
                        emit 0xa7cc25c2: mem[_883 + 116]
                        if _1250 - (1000 * _1250 / 1000) > ext_call.return_data[0]:
                            s = _1250 - (1000 * _1250 / 1000)
                            s = _870
                            s = sub_5df19e2a[stor1[idx]] + 1
                            s = stor1[idx]
                            idx = idx + 1
                            continue 
                        emit 0xfefa99bf: address(_870)
            else:
                if sub_5df19e2a[stor1[idx]] + 1 < 128:
                    if 0 >= sub_5df19e2a[stor1[idx]] + 1:
                        _553 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_553] = (stor1[idx] << 80) + (sub_5df19e2a[stor1[idx]] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000
                        _555 = mem[64]
                        mem[mem[64] + 32] = address(sha3(Mask(184, 72, (stor1[idx] << 80) + (sub_5df19e2a[stor1[idx]] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72))
                        _556 = mem[64]
                        mem[mem[64]] = 20
                        mem[64] = mem[64] + 52
                        _558 = mem[_556]
                        t = _556 + 32
                        u = _555 + 52
                        s = mem[_556]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_555 + floor32(mem[_556]) + 52] = mem[_555 + floor32(mem[_556]) + 52] and 256^(-(mem[_556] % 32) + 32) - 1 or mem[_556 + floor32(mem[_556]) + 32] and !(256^(-(mem[_556] % 32) + 32) - 1)
                        require block.timestamp
                        mem[_555 + 84] = block.timestamp + block.difficulty + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.gas_limit + block.number + (sha3(mem[_555 + 52 len _558]) / block.timestamp)
                        mem[_555 + 52] = 32
                        mem[64] = _555 + 116
                        t = _555 + 84
                        u = _555 + 116
                        s = 32
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        _1090 = sha3(mem[_555 + 116])
                        mem[_555 + 116] = sha3(mem[_555 + 116]) - (1000 * sha3(mem[_555 + 116]) / 1000)
                        emit 0xa7cc25c2: mem[_555 + 116]
                        if _1090 - (1000 * _1090 / 1000) > ext_call.return_data[0]:
                            s = _1090 - (1000 * _1090 / 1000)
                            s = sha3(Mask(184, 72, (stor1[idx] << 80) + (sub_5df19e2a[stor1[idx]] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)
                            s = sub_5df19e2a[stor1[idx]] + 1
                            s = stor1[idx]
                            idx = idx + 1
                            continue 
                        emit 0xfefa99bf: address(sha3(Mask(184, 72, (stor1[idx] << 80) + (sub_5df19e2a[stor1[idx]] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72))
                    else:
                        if sub_5df19e2a[stor1[idx]] + 1 >= 128:
                            _559 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_559] = (stor1[idx] << 80) + (sub_5df19e2a[stor1[idx]] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000
                            _563 = mem[64]
                            mem[mem[64] + 32] = address(sha3(Mask(184, 72, (stor1[idx] << 80) + (sub_5df19e2a[stor1[idx]] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72))
                            _564 = mem[64]
                            mem[mem[64]] = 20
                            mem[64] = mem[64] + 52
                            _566 = mem[_564]
                            t = _564 + 32
                            u = _563 + 52
                            s = mem[_564]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_563 + floor32(mem[_564]) + 52] = mem[_563 + floor32(mem[_564]) + 52] and 256^(-(mem[_564] % 32) + 32) - 1 or mem[_564 + floor32(mem[_564]) + 32] and !(256^(-(mem[_564] % 32) + 32) - 1)
                            require block.timestamp
                            mem[_563 + 84] = block.timestamp + block.difficulty + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.gas_limit + block.number + (sha3(mem[_563 + 52 len _566]) / block.timestamp)
                            mem[_563 + 52] = 32
                            mem[64] = _563 + 116
                            t = _563 + 84
                            u = _563 + 116
                            s = 32
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            _1095 = sha3(mem[_563 + 116])
                            mem[_563 + 116] = sha3(mem[_563 + 116]) - (1000 * sha3(mem[_563 + 116]) / 1000)
                            emit 0xa7cc25c2: mem[_563 + 116]
                            if _1095 - (1000 * _1095 / 1000) > ext_call.return_data[0]:
                                s = _1095 - (1000 * _1095 / 1000)
                                s = sha3(Mask(184, 72, (stor1[idx] << 80) + (sub_5df19e2a[stor1[idx]] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)
                                s = sub_5df19e2a[stor1[idx]] + 1
                                s = stor1[idx]
                                idx = idx + 1
                                continue 
                            emit 0xfefa99bf: address(sha3(Mask(184, 72, (stor1[idx] << 80) + (sub_5df19e2a[stor1[idx]] + 1 << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72))
                        else:
                            _561 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_561] = (stor1[idx] << 80) + (sub_5df19e2a[stor1[idx]] + 1 << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000
                            _567 = mem[64]
                            mem[mem[64] + 32] = address(sha3(Mask(184, 72, (stor1[idx] << 80) + (sub_5df19e2a[stor1[idx]] + 1 << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000) >> 72))
                            _568 = mem[64]
                            mem[mem[64]] = 20
                            mem[64] = mem[64] + 52
                            _570 = mem[_568]
                            t = _568 + 32
                            u = _567 + 52
                            s = mem[_568]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_567 + floor32(mem[_568]) + 52] = mem[_567 + floor32(mem[_568]) + 52] and 256^(-(mem[_568] % 32) + 32) - 1 or mem[_568 + floor32(mem[_568]) + 32] and !(256^(-(mem[_568] % 32) + 32) - 1)
                            require block.timestamp
                            mem[_567 + 84] = block.timestamp + block.difficulty + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.gas_limit + block.number + (sha3(mem[_567 + 52 len _570]) / block.timestamp)
                            mem[_567 + 52] = 32
                            mem[64] = _567 + 116
                            t = _567 + 84
                            u = _567 + 116
                            s = 32
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            _1100 = sha3(mem[_567 + 116])
                            mem[_567 + 116] = sha3(mem[_567 + 116]) - (1000 * sha3(mem[_567 + 116]) / 1000)
                            emit 0xa7cc25c2: mem[_567 + 116]
                            if _1100 - (1000 * _1100 / 1000) > ext_call.return_data[0]:
                                s = _1100 - (1000 * _1100 / 1000)
                                s = sha3(Mask(184, 72, (stor1[idx] << 80) + (sub_5df19e2a[stor1[idx]] + 1 << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000) >> 72)
                                s = sub_5df19e2a[stor1[idx]] + 1
                                s = stor1[idx]
                                idx = idx + 1
                                continue 
                            emit 0xfefa99bf: address(sha3(Mask(184, 72, (stor1[idx] << 80) + (sub_5df19e2a[stor1[idx]] + 1 << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000) >> 72))
                else:
                    s = 1
                    t = 0
                    while sub_5df19e2a[stor1[idx]] + 1 >= s:
                        s = 256 * s
                        t = t + 1
                        continue 
                    if 0 >= sub_5df19e2a[stor1[idx]] + 1:
                        _861 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_861] = (t + 214 << 248) + (stor1[idx] << 80) + (t + 128 << 72) + 256^(-t + 9) + (sub_5df19e2a[stor1[idx]] * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                        _862 = sha3(mem[_861 len t + 23])
                        _871 = mem[64]
                        mem[mem[64] + 32] = address(sha3(mem[_861 len t + 23]))
                        _872 = mem[64]
                        mem[mem[64]] = 20
                        mem[64] = mem[64] + 52
                        _874 = mem[_872]
                        t = _872 + 32
                        u = _871 + 52
                        s = mem[_872]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_871 + floor32(mem[_872]) + 52] = mem[_871 + floor32(mem[_872]) + 52] and 256^(-(mem[_872] % 32) + 32) - 1 or mem[_872 + floor32(mem[_872]) + 32] and !(256^(-(mem[_872] % 32) + 32) - 1)
                        require block.timestamp
                        mem[_871 + 84] = block.timestamp + block.difficulty + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.gas_limit + block.number + (sha3(mem[_871 + 52 len _874]) / block.timestamp)
                        mem[_871 + 52] = 32
                        mem[64] = _871 + 116
                        t = _871 + 84
                        u = _871 + 116
                        s = 32
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        _1255 = sha3(mem[_871 + 116])
                        mem[_871 + 116] = sha3(mem[_871 + 116]) - (1000 * sha3(mem[_871 + 116]) / 1000)
                        emit 0xa7cc25c2: mem[_871 + 116]
                        if _1255 - (1000 * _1255 / 1000) > ext_call.return_data[0]:
                            s = _1255 - (1000 * _1255 / 1000)
                            s = _862
                            s = sub_5df19e2a[stor1[idx]] + 1
                            s = stor1[idx]
                            idx = idx + 1
                            continue 
                        emit 0xfefa99bf: address(_862)
                    else:
                        if sub_5df19e2a[stor1[idx]] + 1 >= 128:
                            _875 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_875] = (t + 214 << 248) + (stor1[idx] << 80) + (t + 128 << 72) + 256^(-t + 9) + (sub_5df19e2a[stor1[idx]] * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                            _876 = sha3(mem[_875 len t + 23])
                            _887 = mem[64]
                            mem[mem[64] + 32] = address(sha3(mem[_875 len t + 23]))
                            _888 = mem[64]
                            mem[mem[64]] = 20
                            mem[64] = mem[64] + 52
                            _890 = mem[_888]
                            t = _888 + 32
                            u = _887 + 52
                            s = mem[_888]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_887 + floor32(mem[_888]) + 52] = mem[_887 + floor32(mem[_888]) + 52] and 256^(-(mem[_888] % 32) + 32) - 1 or mem[_888 + floor32(mem[_888]) + 32] and !(256^(-(mem[_888] % 32) + 32) - 1)
                            require block.timestamp
                            mem[_887 + 84] = block.timestamp + block.difficulty + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.gas_limit + block.number + (sha3(mem[_887 + 52 len _890]) / block.timestamp)
                            mem[_887 + 52] = 32
                            mem[64] = _887 + 116
                            t = _887 + 84
                            u = _887 + 116
                            s = 32
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            _1260 = sha3(mem[_887 + 116])
                            mem[_887 + 116] = sha3(mem[_887 + 116]) - (1000 * sha3(mem[_887 + 116]) / 1000)
                            emit 0xa7cc25c2: mem[_887 + 116]
                            if _1260 - (1000 * _1260 / 1000) > ext_call.return_data[0]:
                                s = _1260 - (1000 * _1260 / 1000)
                                s = _876
                                s = sub_5df19e2a[stor1[idx]] + 1
                                s = stor1[idx]
                                idx = idx + 1
                                continue 
                            emit 0xfefa99bf: address(_876)
                        else:
                            _877 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_877] = (t + 214 << 248) + (stor1[idx] << 80) + (sub_5df19e2a[stor1[idx]] + 1 << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                            _878 = sha3(mem[_877 len t + 23])
                            _891 = mem[64]
                            mem[mem[64] + 32] = address(sha3(mem[_877 len t + 23]))
                            _892 = mem[64]
                            mem[mem[64]] = 20
                            mem[64] = mem[64] + 52
                            _894 = mem[_892]
                            t = _892 + 32
                            u = _891 + 52
                            s = mem[_892]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_891 + floor32(mem[_892]) + 52] = mem[_891 + floor32(mem[_892]) + 52] and 256^(-(mem[_892] % 32) + 32) - 1 or mem[_892 + floor32(mem[_892]) + 32] and !(256^(-(mem[_892] % 32) + 32) - 1)
                            require block.timestamp
                            mem[_891 + 84] = block.timestamp + block.difficulty + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.gas_limit + block.number + (sha3(mem[_891 + 52 len _894]) / block.timestamp)
                            mem[_891 + 52] = 32
                            mem[64] = _891 + 116
                            t = _891 + 84
                            u = _891 + 116
                            s = 32
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            _1265 = sha3(mem[_891 + 116])
                            mem[_891 + 116] = sha3(mem[_891 + 116]) - (1000 * sha3(mem[_891 + 116]) / 1000)
                            emit 0xa7cc25c2: mem[_891 + 116]
                            if _1265 - (1000 * _1265 / 1000) > ext_call.return_data[0]:
                                s = _1265 - (1000 * _1265 / 1000)
                                s = _878
                                s = sub_5df19e2a[stor1[idx]] + 1
                                s = stor1[idx]
                                idx = idx + 1
                                continue 
                            emit 0xfefa99bf: address(_878)
            emit 0xfefa99bf: stor1[idx]
            sub_5df19e2a[stor1[idx]]++
            require ext_code.size(stor1[idx])
            call stor1[idx].0x5900c0dd with:
               value 10^17 wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}



}
