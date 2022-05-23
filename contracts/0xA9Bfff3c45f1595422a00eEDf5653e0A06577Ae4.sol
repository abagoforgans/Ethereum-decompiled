contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of address sub_3a9212d3;
uint256 sub_e512e0ac;
uint256 POT;
uint256 sub_f9f7b890;
uint256 sub_7d01a2ff;
uint256 sub_6f761128;
address stor7DFE;
address storD9D1;
address storEDC9;

function sub_3a9212d3(?) {
    return sub_3a9212d3[arg1]
}

function POT() {
    return POT
}

function sub_6f761128(?) {
    return sub_6f761128
}

function sub_7d01a2ff(?) {
    return sub_7d01a2ff
}

function sub_e512e0ac(?) {
    return sub_e512e0ac
}

function sub_f9f7b890(?) {
    return sub_f9f7b890
}

function _fallback() payable {
    revert
}

function sub_b2fda38d(?) {
    require msg.sender == stor0
    sub_7d01a2ff = arg1
}

function sub_e5287692(?) {
    require msg.sender == stor0
    sub_6f761128 = arg1
}

function sub_c4ec0a8d(?) {
    require msg.sender == stor0
    sub_3a9212d3[stor2] = arg1
    sub_e512e0ac++
}

function sub_a43c7cf1(?) {
    require msg.sender == stor0
    return sub_e512e0ac, sub_3a9212d3[0], sub_3a9212d3[1], storD9D1, stor7DFE, storEDC9
}

function sub_ce7929b5(?) {
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_0d69e26a(?) {
    require msg.sender == stor0
    idx = 0
    while uint8(idx) < sub_e512e0ac:
        mem[0] = uint8(idx)
        mem[32] = 1
        if sub_3a9212d3[idx << 248] != arg1:
            idx = idx + 1
            continue 
        sub_3a9212d3[uint8(idx)] = sub_3a9212d3[stor2]
        sub_e512e0ac--
}

function sub_87f7d378(?) payable {
    mem[64] = 96
    require msg.value <= 10^17
    require ext_code.size(0xdd9fd6b6f8f7ea932997992bbe67eabb3e316f3c)
    call 0xdd9fd6b6f8f7ea932997992bbe67eabb3e316f3c.0xd87574e0 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < sub_7d01a2ff:
        POT = ext_call.return_data[0]
        revert
    require ext_code.size(0xdd9fd6b6f8f7ea932997992bbe67eabb3e316f3c)
    call 0xdd9fd6b6f8f7ea932997992bbe67eabb3e316f3c.0x11a09ae7 with:
         gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_f9f7b890 = ext_call.return_data[0]
    if ext_call.return_data[0] < sub_6f761128:
        sub_f9f7b890 = ext_call.return_data[0]
        revert
    s = 0
    s = 0
    idx = 0
    while uint8(idx) < sub_e512e0ac:
        mem[0] = uint8(idx)
        mem[32] = 1
        require ext_code.size(sub_3a9212d3[idx << 248])
        call sub_3a9212d3[idx << 248].getNonce() with:
             gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        s = 0
        while uint8(s) <= arg1:
            mem[0] = uint8(idx)
            mem[32] = 1
            _113 = mem[64]
            mem[mem[64] + 32] = address(sha3(0, 0, sub_3a9212d3[idx << 248], uint8(ext_call.return_data[0] + uint8(s))))
            _114 = mem[64]
            mem[mem[64]] = 20
            mem[64] = mem[64] + 52
            _116 = mem[_114]
            u = _114 + 32
            v = _113 + 52
            t = mem[_114]
            while t >= 32:
                mem[v] = mem[u]
                u = u + 32
                v = v + 32
                t = t - 32
                continue 
            mem[_113 + floor32(mem[_114]) + 52] = mem[_113 + floor32(mem[_114]) + 52] and 256^(-(mem[_114] % 32) + 32) - 1 or mem[_114 + floor32(mem[_114]) + 32] and !(256^(-(mem[_114] % 32) + 32) - 1)
            _156 = sha3(mem[_113 + 52 len _116])
            require block.timestamp
            mem[_113 + 84] = address(block.coinbase)
            mem[_113 + 52] = 20
            mem[64] = _113 + 104
            u = _113 + 84
            v = _113 + 104
            t = 20
            while t >= 32:
                mem[v] = mem[u]
                u = u + 32
                v = v + 32
                t = t - 32
                continue 
            mem[_113 + 104] = mem[_113 + 124 len 12] or Mask(160, 96, mem[_113 + 84])
            require block.timestamp
            if block.difficulty + block.timestamp < block.timestamp:
                revert with 0, 'SafeMath add failed'
            if sha3(mem[_113 + 104 len 20]) / block.timestamp < 0:
                revert with 0, 'SafeMath add failed'
            if block.gas_limit < 0:
                revert with 0, 'SafeMath add failed'
            if _156 / block.timestamp < 0:
                revert with 0, 'SafeMath add failed'
            if block.number < 0:
                revert with 0, 'SafeMath add failed'
            mem[_113 + 136] = block.number + (_156 / block.timestamp) + block.gas_limit + (sha3(mem[_113 + 104 len 20]) / block.timestamp) + block.difficulty + block.timestamp
            mem[_113 + 104] = 32
            mem[64] = _113 + 168
            u = _113 + 136
            v = _113 + 168
            t = 32
            while t >= 32:
                mem[v] = mem[u]
                u = u + 32
                v = v + 32
                t = t - 32
                continue 
            if sha3(mem[_113 + 168]) - (1000 * sha3(mem[_113 + 168]) / 1000) >= ext_call.return_data[0]:
                s = s + 1
                continue 
            require ext_code.size(sub_3a9212d3[idx << 248])
            call sub_3a9212d3[idx << 248].0xd8ef6136 with:
               value msg.value wei
                 gas gas_remaining wei
                args uint8(s)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call stor0 with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            require msg.value + eth.balance(stor0) < eth.balance(stor0)
        s = ext_call.return_data[0]
        s = sub_3a9212d3[idx << 248]
        idx = idx + 1
        continue 
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
