contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of struct sub_b3e0cf7e;
uint256 sub_e512e0ac;
uint8 stor3;
uint256 stor3;
uint256 sub_7d01a2ff;
address stor7DFE; offset 16
address storD9D1;
address storEDC9;

function sub_7d01a2ff(?) {
    return sub_7d01a2ff
}

function sub_b3e0cf7e(?) {
    return ('signextend', 1, ('signextend', 1, ('signextend', 1, ('field', 0, ('stor', ('map', ('param', 'arg1'), ('name', 'sub_b3e0cf7e', 1))))))), 
           sub_b3e0cf7e[arg1].field_16
}

function sub_e512e0ac(?) {
    return sub_e512e0ac
}

function _fallback() payable {
    revert
}

function sub_b2fda38d(?) {
    require msg.sender == stor0
    sub_7d01a2ff = arg1
}

function sub_36e103c4(?) {
    require msg.sender == stor0
    uint8(stor3) = uint8(('signextend', 0, ('signextend', 0, ('param', 'arg1'))))
}

function sub_72d6ad88(?) {
    return ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('stor', ('name', 'stor3', 3))))))
}

function sub_c4ec0a8d(?) {
    require msg.sender == stor0
    sub_b3e0cf7e[stor2].field_16 = arg1
    sub_b3e0cf7e[stor2].field_0 = 1
    sub_b3e0cf7e[stor2].field_8 = 0
    sub_e512e0ac++
}

function sub_ce7929b5(?) {
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_a43c7cf1(?) {
    require msg.sender == stor0
    return ('signextend', 1, ('signextend', 1, ('stor', ('name', 'sub_e512e0ac', 2)))), 
           sub_b3e0cf7e[0].field_0,
           sub_b3e0cf7e[1].field_0,
           storD9D1,
           stor7DFE,
           storEDC9
}

function sub_0d69e26a(?) {
    require msg.sender == stor0
    idx = 0
    while idx < sub_e512e0ac:
        mem[0] = idx
        mem[32] = 1
        if sub_b3e0cf7e[idx].field_16 != arg1:
            idx = idx + 1
            continue 
        sub_b3e0cf7e[idx].field_16 = sub_b3e0cf7e[stor2].field_16
        sub_b3e0cf7e[idx].field_0 = uint16(('signextend', 1, ('signextend', 1, ('field', 0, ('stor', ('map', ('stor', ('name', 'stor2', 2)), ('name', 'sub_b3e0cf7e', 1)))))))
        sub_b3e0cf7e[idx].field_16 = 0
        sub_b3e0cf7e[idx].field_16 = sub_b3e0cf7e[stor2].field_16
        sub_e512e0ac--
}

function LetsGo(uint256 arg1) payable {
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
    idx = 0
    while idx < sub_e512e0ac:
        mem[0] = idx
        mem[32] = 1
        s = 0
        while s <= arg1:
            mem[0] = idx
            mem[32] = 1
            _117 = mem[64]
            mem[mem[64] + 32] = address(sha3(0, 0, sub_b3e0cf7e[idx].field_16, uint8(('signextend', 1, ('signextend', 1, ('field', 0, ('stor', ('map', ('var', 0), ('name', 'sub_b3e0cf7e', 1)))))) + s)))
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
            _166 = sha3(mem[_117 + 52 len _120])
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
            if _166 / block.timestamp < 0:
                revert with 0, 'SafeMath add failed'
            if block.number < 0:
                revert with 0, 'SafeMath add failed'
            mem[_117 + 136] = block.number + (_166 / block.timestamp) + block.gas_limit + (sha3(mem[_117 + 104 len 20]) / block.timestamp) + block.difficulty + block.timestamp
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
            require ext_code.size(sub_b3e0cf7e[idx].field_16)
            if sha3(mem[_117 + 168]) - (1000 * sha3(mem[_117 + 168]) / 1000) >= 5:
                call sub_b3e0cf7e[idx].field_16.0x50a11a53 with:
                   value msg.value wei
                     gas gas_remaining wei
                    args s, 1
            else:
                call sub_b3e0cf7e[idx].field_16.0x50a11a53 with:
                   value msg.value wei
                     gas gas_remaining wei
                    args s, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('stor', ('name', 'stor3', 3))))))
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            sub_b3e0cf7e[idx].field_0 = uint16(('signextend', 1, ('add', 1, ('var', 1), ('signextend', 1, ('field', 0, ('stor', ('map', ('var', 0), ('name', 'sub_b3e0cf7e', 1))))))))
            require msg.value + eth.balance(msg.sender) < eth.balance(msg.sender)
            call stor0 with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        s = ('signextend', 1, ('signextend', 1, ('field', 0, ('stor', ('map', ('var', 0), ('name', 'sub_b3e0cf7e', 1))))))
        idx = idx + 1
        continue 
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
