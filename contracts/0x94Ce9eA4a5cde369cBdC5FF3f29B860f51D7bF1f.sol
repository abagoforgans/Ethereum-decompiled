contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of struct sub_b3e0cf7e;
uint256 sub_e512e0ac;
uint256 sub_5142c373;
uint8 stor4;
uint256 stor4;
uint256 sub_7d01a2ff;

function sub_5142c373(?) {
    return sub_5142c373
}

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
    uint8(stor4) = uint8(('signextend', 0, ('signextend', 0, ('param', 'arg1'))))
}

function sub_72d6ad88(?) {
    return ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('stor', ('name', 'stor4', 4))))))
}

function sub_ce7929b5(?) {
    call msg.sender with:
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
           sub_b3e0cf7e[2].field_0,
           sub_b3e0cf7e[3].field_16,
           sub_b3e0cf7e[4].field_0
}

function sub_c4ec0a8d(?) {
    require msg.sender == stor0
    require ext_code.size(arg1)
    call arg1.0xd087d288 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_b3e0cf7e[stor2].field_16 = arg1
    sub_b3e0cf7e[stor2].field_0 = uint16(('signextend', 1, ('signextend', 0, ('ext_call.return_data', 0, 32))))
    sub_e512e0ac++
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
        sub_e512e0ac--
}

function sub_edc6c131(?) payable {
    mem[64] = 96
    require msg.value <= 10^17
    require ext_code.size(arg2)
    call arg2.airFropPot_() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= sub_7d01a2ff
    require ext_code.size(arg2)
    call arg2.airFropTracker_() with:
         gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while idx <= arg1:
        s = 0
        while s < sub_e512e0ac:
            mem[0] = s
            mem[32] = 1
            _128 = mem[64]
            mem[mem[64] + 32] = address(sha3(0, 0, sub_b3e0cf7e[s].field_16, uint8(('signextend', 1, ('signextend', 1, ('field', 0, ('stor', ('map', ('var', 1), ('name', 'sub_b3e0cf7e', 1)))))) + idx)))
            _129 = mem[64]
            mem[mem[64]] = 20
            mem[64] = mem[64] + 52
            _131 = mem[_129]
            u = _129 + 32
            v = mem[64]
            t = mem[_129]
            while t >= 32:
                mem[v] = mem[u]
                u = u + 32
                v = v + 32
                t = t - 32
                continue 
            mem[mem[64] + floor32(mem[_129])] = mem[_129 + floor32(mem[_129]) + -(mem[_129] % 32) + 64 len mem[_129] % 32] or Mask(8 * -(mem[_129] % 32) + 32, -(8 * -(mem[_129] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_129])])
            _181 = sha3(mem[mem[64] len _131 + _128 + -mem[64] + 52])
            require block.timestamp
            _183 = mem[64]
            mem[mem[64] + 32] = address(block.coinbase)
            _184 = mem[64]
            mem[mem[64]] = 20
            mem[64] = mem[64] + 52
            _186 = mem[_184]
            u = _184 + 32
            v = mem[64]
            t = mem[_184]
            while t >= 32:
                mem[v] = mem[u]
                u = u + 32
                v = v + 32
                t = t - 32
                continue 
            mem[mem[64] + floor32(mem[_184])] = mem[_184 + floor32(mem[_184]) + -(mem[_184] % 32) + 64 len mem[_184] % 32] or Mask(8 * -(mem[_184] % 32) + 32, -(8 * -(mem[_184] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_184])])
            require block.timestamp
            if block.timestamp + block.difficulty < block.timestamp:
                revert with 0, 'SafeMath add failed'
            if sha3(mem[mem[64] len _186 + _183 + -mem[64] + 52]) / block.timestamp < 0:
                revert with 0, 'SafeMath add failed'
            if block.gas_limit < 0:
                revert with 0, 'SafeMath add failed'
            if _181 / block.timestamp < 0:
                revert with 0, 'SafeMath add failed'
            if block.number < 0:
                revert with 0, 'SafeMath add failed'
            _239 = mem[64]
            mem[mem[64] + 32] = block.timestamp + block.difficulty + (sha3(mem[mem[64] len _186 + _183 + -mem[64] + 52]) / block.timestamp) + block.gas_limit + (_181 / block.timestamp) + block.number
            _240 = mem[64]
            mem[mem[64]] = 32
            mem[64] = mem[64] + 64
            _242 = mem[_240]
            u = _240 + 32
            v = mem[64]
            t = mem[_240]
            while t >= 32:
                mem[v] = mem[u]
                u = u + 32
                v = v + 32
                t = t - 32
                continue 
            mem[mem[64] + floor32(mem[_240])] = mem[_240 + floor32(mem[_240]) + -(mem[_240] % 32) + 64 len mem[_240] % 32] or Mask(8 * -(mem[_240] % 32) + 32, -(8 * -(mem[_240] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_240])])
            if sha3(mem[mem[64] len _242 + _239 + -mem[64] + 64]) - (1000 * sha3(mem[mem[64] len _242 + _239 + -mem[64] + 64]) / 1000) >= ext_call.return_data[0] + sub_5142c373:
                s = s + 1
                continue 
            require ext_code.size(sub_b3e0cf7e[s].field_16)
            if sha3(mem[mem[64] len _242 + _239 + -mem[64] + 64]) - (1000 * sha3(mem[mem[64] len _242 + _239 + -mem[64] + 64]) / 1000) >= 5:
                call sub_b3e0cf7e[s].field_16.0xe90e3ba6 with:
                   value msg.value wei
                     gas gas_remaining wei
                    args idx, 1, address(arg2), arg3
            else:
                call sub_b3e0cf7e[s].field_16.0xe90e3ba6 with:
                   value msg.value wei
                     gas gas_remaining wei
                    args idx, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('stor', ('name', 'stor4', 4)))))), address(arg2), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            sub_b3e0cf7e[s].field_0 = uint16(('signextend', 1, ('add', 1, ('signextend', 1, ('field', 0, ('stor', ('map', ('var', 1), ('name', 'sub_b3e0cf7e', 1))))), ('var', 0))))
            require eth.balance(msg.sender) > eth.balance(msg.sender) + msg.value
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
