contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 nonce;
address stor2;

function nonce() {
    return nonce
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

function sub_87f7d378(?) payable {
    mem[64] = 96
    require msg.sender == stor0
    require msg.value == 10^17
    require ext_code.size(stor2)
    call stor2.airDropPot_() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= 4 * 10^17
    require ext_code.size(stor2)
    call stor2.airDropTracker_() with:
         gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    s = nonce
    while uint8(idx) < arg1:
        _54 = mem[64]
        mem[mem[64] + 32] = address(sha3(0, 0, this.address, uint8(s)))
        _55 = mem[64]
        mem[mem[64]] = 20
        mem[64] = mem[64] + 52
        _57 = mem[_55]
        u = _55 + 32
        v = _54 + 52
        t = mem[_55]
        while t >= 32:
            mem[v] = mem[u]
            u = u + 32
            v = v + 32
            t = t - 32
            continue 
        mem[_54 + floor32(mem[_55]) + 52] = mem[_55 + -(mem[_55] % 32) + floor32(mem[_55]) + 64 len mem[_55] % 32] or Mask(8 * -(mem[_55] % 32) + 32, -(8 * -(mem[_55] % 32) + 32) + 256, mem[_54 + floor32(mem[_55]) + 52])
        _98 = sha3(mem[_54 + 52 len _57])
        require block.timestamp
        mem[_54 + 84] = address(block.coinbase)
        mem[_54 + 52] = 20
        mem[64] = _54 + 104
        u = _54 + 84
        v = _54 + 104
        t = 20
        while t >= 32:
            mem[v] = mem[u]
            u = u + 32
            v = v + 32
            t = t - 32
            continue 
        mem[_54 + 104] = mem[_54 + 96 len 20] or Mask(96, 160, mem[_54 + 104])
        require block.timestamp
        if block.timestamp + block.difficulty < block.timestamp:
            revert with 0, 'SafeMath add failed'
        if sha3(mem[_54 + 104 len 20]) / block.timestamp < 0:
            revert with 0, 'SafeMath add failed'
        if block.gas_limit < 0:
            revert with 0, 'SafeMath add failed'
        if _98 / block.timestamp < 0:
            revert with 0, 'SafeMath add failed'
        if block.number < 0:
            revert with 0, 'SafeMath add failed'
        mem[_54 + 136] = block.timestamp + block.difficulty + (sha3(mem[_54 + 104 len 20]) / block.timestamp) + block.gas_limit + (_98 / block.timestamp) + block.number
        mem[_54 + 104] = 32
        mem[64] = _54 + 168
        u = _54 + 136
        v = _54 + 168
        t = 32
        while t >= 32:
            mem[v] = mem[u]
            u = u + 32
            v = v + 32
            t = t - 32
            continue 
        mem[_54 + 200] = None or mem[_54 + 200]
        if sha3(mem[_54 + 168]) - (1000 * sha3(mem[_54 + 168]) / 1000) >= ext_call.return_data[0]:
            idx = idx + 1
            s = s + 1
            continue 
        t = 0
        while uint8(t) < uint8(idx):
            mem[_54 + 168 len 82] = code.data[2274 len 82]
            create contract with 0 wei
                            code: code.data[2274 len 82]
            if not create.new_address:
                revert with ext_call.return_data[0 len return_data.size]
            t = t + 1
            continue 
        create contract with callvalue wei
                        code: code.data[2356 len 493]
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        nonce = s
        require eth.balance(stor0) > eth.balance(stor0) + msg.value
    require eth.balance(stor0) > eth.balance(stor0) + msg.value
}



}
