contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of address sub_3a9212d3;
mapping of uint256 sub_982e9074;
uint256 sub_e512e0ac;
uint256 sub_72d6ad88;
uint256 sub_7d01a2ff;
address stor7DFE;
address storD9D1;
address storEDC9;

function sub_3a9212d3(?) {
    return sub_3a9212d3[arg1]
}

function sub_72d6ad88(?) {
    return sub_72d6ad88
}

function sub_7d01a2ff(?) {
    return sub_7d01a2ff
}

function sub_982e9074(?) {
    return sub_982e9074[arg1]
}

function sub_e512e0ac(?) {
    return sub_e512e0ac
}

function _fallback() payable {
    revert
}

function sub_881a98f1(?) {
    require msg.sender == stor0
    sub_72d6ad88 = arg1
}

function sub_b2fda38d(?) {
    require msg.sender == stor0
    sub_7d01a2ff = arg1
}

function sub_c4ec0a8d(?) {
    require msg.sender == stor0
    sub_3a9212d3[stor3] = arg1
    sub_982e9074[stor3] = 1
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
        sub_3a9212d3[uint8(idx)] = sub_3a9212d3[stor3]
        sub_982e9074[uint8(idx)] = sub_982e9074[stor3]
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
    require ext_call.return_data[0] >= sub_7d01a2ff
    require ext_code.size(0xdd9fd6b6f8f7ea932997992bbe67eabb3e316f3c)
    call 0xdd9fd6b6f8f7ea932997992bbe67eabb3e316f3c.0x11a09ae7 with:
         gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    s = 0
    s = 0
    idx = 0
    while uint8(idx) < sub_e512e0ac:
        mem[0] = uint8(idx)
        mem[32] = 2
        s = 0
        while uint8(s) <= arg1:
            mem[0] = uint8(idx)
            mem[32] = 1
            _117 = mem[64]
            mem[mem[64] + 32] = address(sha3(0, 0, sub_3a9212d3[idx << 248], uint8(sub_982e9074[idx << 248] + uint8(s))))
            _118 = mem[64]
            mem[mem[64]] = 20
            mem[64] = mem[64] + 52
            _120 = mem[_118]
            u = _118 + 32
            v = _117 + 52
            t = mem[_118]
            while t >= 32:
                mem[v] = mem[u]
                u = u + 32
                v = v + 32
                t = t - 32
                continue 
            mem[_117 + floor32(mem[_118]) + 52] = mem[_117 + floor32(mem[_118]) + 52] and 256^(-(mem[_118] % 32) + 32) - 1 or mem[_118 + floor32(mem[_118]) + 32] and !(256^(-(mem[_118] % 32) + 32) - 1)
            _165 = sha3(mem[_117 + 52 len _120])
            require block.timestamp
            mem[_117 + 84] = address(block.coinbase)
            mem[_117 + 52] = 20
            mem[64] = _117 + 104
            u = _117 + 84
            v = _117 + 104
            t = 20
            while t >= 32:
                mem[v] = mem[u]
                u = u + 32
                v = v + 32
                t = t - 32
                continue 
            mem[_117 + 104] = mem[_117 + 124 len 12] or Mask(160, 96, mem[_117 + 84])
            require block.timestamp
            if block.difficulty + block.timestamp < block.timestamp:
                revert with 0, 'SafeMath add failed'
            if sha3(mem[_117 + 104 len 20]) / block.timestamp < 0:
                revert with 0, 'SafeMath add failed'
            if block.gas_limit < 0:
                revert with 0, 'SafeMath add failed'
            if _165 / block.timestamp < 0:
                revert with 0, 'SafeMath add failed'
            if block.number < 0:
                revert with 0, 'SafeMath add failed'
            mem[_117 + 136] = block.number + (_165 / block.timestamp) + block.gas_limit + (sha3(mem[_117 + 104 len 20]) / block.timestamp) + block.difficulty + block.timestamp
            mem[_117 + 104] = 32
            mem[64] = _117 + 168
            u = _117 + 136
            v = _117 + 168
            t = 32
            while t >= 32:
                mem[v] = mem[u]
                u = u + 32
                v = v + 32
                t = t - 32
                continue 
            if sha3(mem[_117 + 168]) - (1000 * sha3(mem[_117 + 168]) / 1000) >= ext_call.return_data[0]:
                s = s + 1
                continue 
            require ext_code.size(sub_3a9212d3[idx << 248])
            if sha3(mem[_117 + 168]) - (1000 * sha3(mem[_117 + 168]) / 1000) >= 5:
                call sub_3a9212d3[idx << 248].0x9eafaa84 with:
                   value msg.value wei
                     gas gas_remaining wei
                    args s << 248, 1
            else:
                call sub_3a9212d3[idx << 248].0x9eafaa84 with:
                   value msg.value wei
                     gas gas_remaining wei
                    args s << 248, sub_72d6ad88
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            sub_982e9074[idx << 248] = uint8(s) + sub_982e9074[idx << 248] + 1
            require msg.value + eth.balance(msg.sender) < eth.balance(msg.sender)
            call stor0 with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        s = sub_982e9074[idx << 248]
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
