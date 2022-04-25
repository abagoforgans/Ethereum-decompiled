contract main {


// =======================  Init code  ======================


uint256 stor2;
address stor3;
uint8 stor5;
uint64 stor7;

function _fallback() payable {
    stor2 = 0
    stor5 = 0
    stor7 = 0
    require not msg.value
    stor3 = msg.sender
    return code.data[170 len 6277]
}



// =====================  Runtime code  =====================


array of uint256 stor1;
array of struct stor2;
address owner;
array of uint8 stor4;
uint8 sub_a2629f9d;
array of uint8 stor6;
uint64 sub_0a2d61fc;

function sub_0a2d61fc(?) {
    return sub_0a2d61fc
}

function owner() {
    return owner
}

function sub_a2629f9d(?) {
    return sub_a2629f9d
}

function verificationFee() {
    return stor2.length
}

function _fallback() payable {
    revert
}

function sub_d4309f4b(?) {
    if msg.sender == owner:
        stor2.length = arg1
}

function sub_5b8cd715(?) {
    require arg1 < stor4.length
    return (uint256(stor4[0.03125 / arg1]) / 256^(arg1 % 32) << 248)
}

function withdraw(uint256 arg1) {
    if msg.sender == owner:
        if eth.balance(this.address) >= arg1:
            call owner with:
               value arg1 wei
                 gas 2300 * is_zero(value) wei
        else:
            if eth.balance(this.address) <= 0:
                call owner with:
                   value arg1 wei
                     gas 2300 * is_zero(value) wei
            else:
                call owner with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
}

function sub_dca92315(?) {
    if not uint256(stor6[stor5]):
        mem[(32 * uint256(stor6[stor5])) + 160] = 32
        mem[(32 * uint256(stor6[stor5])) + 192] = uint256(stor6[stor5])
        mem[(32 * uint256(stor6[stor5])) + 224 len floor32(uint256(stor6[stor5]))] = mem[160 len floor32(uint256(stor6[stor5]))]
        return memory
          from (32 * uint256(stor6[stor5])) + 160
           len (96 * uint256(stor6[stor5])) + 64
    mem[160] = uint256(stor6[stor5]) / 256^0 << 248
    idx = 160
    s = 0
    while (32 * uint256(stor6[stor5])) + 128 > idx:
        mem[idx + 32] = uint256(stor6[stor5]) / 256^(-(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1) << 248
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    mem[(32 * uint256(stor6[stor5])) + 224 len floor32(uint256(stor6[stor5]))] = mem[160 len floor32(uint256(stor6[stor5]))]
    return Array(len=uint256(stor6[stor5]), data=mem[160 len floor32(uint256(stor6[stor5]))], mem[(32 * uint256(stor6[stor5])) + floor32(uint256(stor6[stor5])) + 224 len (32 * uint256(stor6[stor5])) - floor32(uint256(stor6[stor5]))]), 
}

function sub_2c53dd6c(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if msg.sender == owner:
        stor4.length = arg1.length
        if not arg1.length:
            idx = 0
            while stor4.length + 31 / 32 > idx:
                uint8(stor4[idx]) = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 128
            while (32 * arg1.length) + 128 > idx:
                uint256(stor4) = mem[idx len 1] * 256^s or !(255 * 256^s) and uint256(stor4)
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
            s = sha3(4)
            while idx:
                uint256(stor[s]) = !(255 * 256^idx) and uint256(stor[s])
                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                s = (idx + 1 / 32) + s
                continue 
            idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg1.length) + 31) >> 5 * None + 3 / 32)
            while stor4.length + 31 / 32 > idx:
                uint8(stor4[idx]) = 0
                idx = idx + 1
                continue 
        sub_a2629f9d = uint8(sub_a2629f9d + 1)
        uint256(stor6[stor5]) = stor4.length
        if not stor4.length:
            idx = 0
            while uint256(stor6[stor5]) + 31 / 32 > idx:
                uint8(stor6[stor5][idx]) = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while stor4.length + 31 / 32 > idx:
                uint256(stor6[stor5][s]) = uint256(stor4[idx])
                s = s + 1
                idx = idx + 1
                continue 
            idx = stor4.length + 31 / 32
            while uint256(stor6[stor5]) + 31 / 32 > idx:
                uint8(stor6[stor5][idx]) = 0
                idx = idx + 1
                continue 
}

function sub_d357bf2d(?) {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 0
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 160] = 1
    _39 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32])
    mem[64] = ceil32(arg1.length) + (32 * stor1[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))]) + 192
    mem[ceil32(arg1.length) + 160] = stor1[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))]
    if not stor1[_39]:
        mem[mem[64] len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[mem[64] + floor32(arg1.length) + -(arg1.length % 32) + 32 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
        mem[arg1.length + mem[64]] = 1
        mem[mem[64] + 32] = uint64(stor2[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', ('mem', ('range', 64, 32)), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_16)
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[ceil32(arg1.length) + 160]
        _74 = mem[ceil32(arg1.length) + 160]
        mem[mem[64] + 96 len floor32(mem[ceil32(arg1.length) + 160])] = mem[ceil32(arg1.length) + 192 len floor32(mem[ceil32(arg1.length) + 160])]
        return 64, mem[mem[64] + 32 len (32 * _74) + 64]
    mem[0] = _39 + 1
    mem[ceil32(arg1.length) + 192] = uint256(stor[sha3(_39 + 1)]) / 256^0 << 248
    idx = ceil32(arg1.length) + 192
    s = 0
    while ceil32(arg1.length) + (32 * stor1[_39]) + 160 > idx:
        mem[idx + 32] = uint256(stor[sha3(_39 + 1)]) / 256^(-(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1) << 248
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    mem[mem[64] len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[mem[64] + floor32(arg1.length) + -(arg1.length % 32) + 32 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + mem[64]] = 1
    mem[mem[64] + 32] = uint64(stor2[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', ('mem', ('range', 64, 32)), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_16)
    mem[mem[64]] = 64
    mem[mem[64] + 64] = mem[ceil32(arg1.length) + 160]
    _98 = mem[ceil32(arg1.length) + 160]
    mem[mem[64] + 96 len floor32(mem[ceil32(arg1.length) + 160])] = mem[ceil32(arg1.length) + 192 len floor32(mem[ceil32(arg1.length) + 160])]
    return 64, mem[mem[64] + 32 len (32 * _98) + 64]
}

function sub_b7fc4538(?) {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 0
    mem[ceil32(arg1.length) + 160] = 0
    mem[ceil32(arg1.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 192] = 1
    _101 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 32])
    mem[ceil32(arg1.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 192] = 1
    _193 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 32])
    mem[64] = ceil32(arg1.length) + (32 * uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]])) + 224
    mem[ceil32(arg1.length) + 192] = uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]])
    if not uint256(stor[_193]):
        mem[mem[64] len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[mem[64] + floor32(arg1.length) + -(arg1.length % 32) + 32 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
        mem[arg1.length + mem[64]] = 1
        _278 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[mem[64] + floor32(arg1.length) len (arg1.length % 32) + 32])
        _279 = mem[64]
        mem[64] = mem[64] + (32 * stor1[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', ('mem', ('range', 64, 32)), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))]) + 32
        mem[_279] = stor1[_278]
        if not stor1[_278]:
            mem[mem[64] len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            mem[mem[64] + floor32(arg1.length) + -(arg1.length % 32) + 32 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
            mem[arg1.length + mem[64]] = 1
            _354 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[mem[64] + floor32(arg1.length) len (arg1.length % 32) + 32])
            _362 = mem[64]
            mem[mem[64]] = uint8(stor2[_101].field_0)
            mem[mem[64] + 96] = uint64(stor2[_354].field_16)
            mem[mem[64] + 32] = 128
            mem[_362 + 128] = mem[ceil32(arg1.length) + 192]
            _364 = mem[ceil32(arg1.length) + 192]
            mem[_362 + 160 len floor32(mem[ceil32(arg1.length) + 192])] = mem[ceil32(arg1.length) + 224 len floor32(mem[ceil32(arg1.length) + 192])]
            mem[_362 + 64] = (32 * _364) + 160
            mem[(32 * _364) + _362 + 160] = stor1[_278]
            mem[(32 * _364) + _362 + 192 len floor32(stor1[_278])] = mem[_279 + 32 len floor32(stor1[_278])]
            return memory
              from mem[64]
               len (32 * stor1[_278]) + (32 * _364) + _362 + -mem[64] + 192
        mem[0] = _278 + 1
        mem[_279 + 32] = uint256(stor[sha3(_278 + 1)]) / 256^0 << 248
        idx = _279 + 32
        s = 0
        while _279 + (32 * stor1[_278]) > idx:
            mem[idx + 32] = uint256(stor[sha3(_278 + 1)]) / 256^(-(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1) << 248
            idx = idx + 32
            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
            continue 
        _366 = mem[96]
        mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
        mem[_366 + mem[64]] = 1
        _422 = sha3(mem[mem[64] len _366 + 32])
        _429 = mem[64]
        mem[mem[64]] = uint8(stor2[_101].field_0)
        mem[mem[64] + 96] = uint64(stor2[_422].field_16)
        mem[mem[64] + 32] = 128
        mem[_429 + 128] = mem[ceil32(arg1.length) + 192]
        _431 = mem[ceil32(arg1.length) + 192]
        mem[_429 + 160 len floor32(mem[ceil32(arg1.length) + 192])] = mem[ceil32(arg1.length) + 224 len floor32(mem[ceil32(arg1.length) + 192])]
        mem[_429 + 64] = (32 * _431) + 160
        mem[(32 * _431) + _429 + 160] = stor1[_278]
        mem[(32 * _431) + _429 + 192 len floor32(stor1[_278])] = mem[_279 + 32 len floor32(stor1[_278])]
        return memory
          from mem[64]
           len (32 * stor1[_278]) + (32 * _431) + _429 + -mem[64] + 192
    mem[0] = _193
    mem[ceil32(arg1.length) + 224] = uint256(stor[sha3(_193)]) / 256^0 << 248
    idx = ceil32(arg1.length) + 224
    s = 0
    while ceil32(arg1.length) + (32 * uint256(stor[_193])) + 192 > idx:
        mem[idx + 32] = uint256(stor[sha3(_193)]) / 256^(-(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1) << 248
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    mem[mem[64] len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[mem[64] + floor32(arg1.length) + -(arg1.length % 32) + 32 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + mem[64]] = 1
    _359 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[mem[64] + floor32(arg1.length) len (arg1.length % 32) + 32])
    _360 = mem[64]
    mem[64] = mem[64] + (32 * stor1[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', ('mem', ('range', 64, 32)), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))]) + 32
    mem[_360] = stor1[_359]
    if not stor1[_359]:
        mem[mem[64] len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[mem[64] + floor32(arg1.length) + -(arg1.length % 32) + 32 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
        mem[arg1.length + mem[64]] = 1
        _427 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[mem[64] + floor32(arg1.length) len (arg1.length % 32) + 32])
        _432 = mem[64]
        mem[mem[64]] = uint8(stor2[_101].field_0)
        mem[mem[64] + 96] = uint64(stor2[_427].field_16)
        mem[mem[64] + 32] = 128
        mem[_432 + 128] = mem[ceil32(arg1.length) + 192]
        _434 = mem[ceil32(arg1.length) + 192]
        mem[_432 + 160 len floor32(mem[ceil32(arg1.length) + 192])] = mem[ceil32(arg1.length) + 224 len floor32(mem[ceil32(arg1.length) + 192])]
        mem[_432 + 64] = (32 * _434) + 160
        mem[(32 * _434) + _432 + 160] = stor1[_359]
        mem[(32 * _434) + _432 + 192 len floor32(stor1[_359])] = mem[_360 + 32 len floor32(stor1[_359])]
        return memory
          from mem[64]
           len (32 * stor1[_359]) + (32 * _434) + _432 + -mem[64] + 192
    mem[0] = _359 + 1
    mem[_360 + 32] = uint256(stor[sha3(_359 + 1)]) / 256^0 << 248
    idx = _360 + 32
    s = 0
    while _360 + (32 * stor1[_359]) > idx:
        mem[idx + 32] = uint256(stor[sha3(_359 + 1)]) / 256^(-(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1) << 248
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    _436 = mem[96]
    mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
    mem[_436 + mem[64]] = 1
    _473 = sha3(mem[mem[64] len _436 + 32])
    _475 = mem[64]
    mem[mem[64]] = uint8(stor2[_101].field_0)
    mem[mem[64] + 96] = uint64(stor2[_473].field_16)
    mem[mem[64] + 32] = 128
    mem[_475 + 128] = mem[ceil32(arg1.length) + 192]
    _477 = mem[ceil32(arg1.length) + 192]
    mem[_475 + 160 len floor32(mem[ceil32(arg1.length) + 192])] = mem[ceil32(arg1.length) + 224 len floor32(mem[ceil32(arg1.length) + 192])]
    mem[_475 + 64] = (32 * _477) + 160
    mem[(32 * _477) + _475 + 160] = stor1[_359]
    mem[(32 * _477) + _475 + 192 len floor32(stor1[_359])] = mem[_360 + 32 len floor32(stor1[_359])]
    return memory
      from mem[64]
       len (32 * stor1[_359]) + (32 * _477) + _475 + -mem[64] + 192
}

function sub_cc96c594(?) {
    mem[128 len arg1.length] = arg1[all]
    if msg.sender == owner:
        mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
        mem[arg1.length + ceil32(arg1.length) + 128] = 1
        _61 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32])
        mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
        mem[arg1.length + ceil32(arg1.length) + 128] = 0
        uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]) = uint256(stor[_61])
        if not uint256(stor[_61]):
            idx = 0
            while uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]) + 31 / 32 > idx:
                uint8(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][idx]) = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while uint256(stor[_61]) + 31 / 32 > idx:
                uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][s]) = uint256(stor[idx + sha3(_61)])
                s = s + 1
                idx = idx + 1
                continue 
            idx = uint256(stor[_61]) + 31 / 32
            while uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]) + 31 / 32 > idx:
                uint8(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][idx]) = 0
                idx = idx + 1
                continue 
        stor1[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))] = stor1[_61]
        if not stor1[_61]:
            idx = 0
            while stor1[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))] + 31 / 32 > idx:
                uint8(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][idx + 1]) = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while stor1[_61] + 31 / 32 > idx:
                uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][s + 1]) = uint256(stor[idx + sha3(_61 + 1)])
                s = s + 1
                idx = idx + 1
                continue 
            idx = stor1[_61] + 31 / 32
            while stor1[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))] + 31 / 32 > idx:
                uint8(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][idx + 1]) = 0
                idx = idx + 1
                continue 
        uint8(stor2[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_0) = uint8(stor2[_61].field_0)
        Mask(248, 0, stor2[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_8) = Mask(248, 0, bool(uint8(stor2[_61].field_8)))
        Mask(240, 0, stor2[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_16) = uint64(stor2[_61].field_16)
        sub_0a2d61fc = uint64(sub_0a2d61fc + 1)
        mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
        mem[arg1.length + ceil32(arg1.length) + 128] = 1
        uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]) = 0
        idx = 0
        while uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]) + 31 / 32 > idx:
            uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][idx]) = 0
            idx = idx + 1
            continue 
        stor1[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))] = 0
        idx = 0
        while stor1[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))] + 31 / 32 > idx:
            uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][idx + 1]) = 0
            idx = idx + 1
            continue 
        uint8(stor2[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_0) = 0
        uint8(stor2[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_8) = 0
        uint64(stor2[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_16) = 0
}

function sub_e79a708a(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[ceil32(arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[ceil32(arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require msg.value >= stor2.length
    mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = ceil32(arg1.length) + 128
    mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 416 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + floor32(arg1.length) + -(arg1.length % 32) + 448 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 416] = 1
    uint256(stor[mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + floor32(arg1.length) + 416 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]) = arg2.length
    if not arg2.length:
        idx = 0
        while uint256(stor[mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + floor32(arg1.length) + 416 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]) + 31 / 32 > idx:
            uint8(stor[mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + floor32(arg1.length) + 416 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][idx]) = 0
            idx = idx + 1
            continue 
        stor1[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 416, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', 32, ('cd', ('add', 4, ('param', 'arg2')))), ('mul', 32, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))] = arg3.length
        if not arg3.length:
            idx = 0
            while stor1[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 416, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', 32, ('cd', ('add', 4, ('param', 'arg2')))), ('mul', 32, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))] + 31 / 32 > idx:
                uint8(stor[mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + floor32(arg1.length) + 416 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][idx + 1]) = 0
                idx = idx + 1
                continue 
            uint8(stor2[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 416, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', 32, ('cd', ('add', 4, ('param', 'arg2')))), ('mul', 32, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_0) = 0
            Mask(248, 0, stor2[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 416, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', 32, ('cd', ('add', 4, ('param', 'arg2')))), ('mul', 32, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_8) = 1
            uint64(stor2[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 416, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', 32, ('cd', ('add', 4, ('param', 'arg2')))), ('mul', 32, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_16) = 0
            mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 448] = arg1.length
            mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 480 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
            var34001 = ceil32(arg1.length)
        else:
            s = 0
            idx = ceil32(arg1.length) + (32 * arg2.length) + 192
            while ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192 > idx:
                uint256(stor[mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + floor32(arg1.length) + 416 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][1]) = mem[idx len 1] * 256^s or !(255 * 256^s) and uint256(stor[mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + floor32(arg1.length) + 416 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][1])
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg3.length) + 31) >> 5
            s = sha3(sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + floor32(arg1.length) + 416 len (arg1.length % 32) + 32]) + 1)
            while idx:
                uint256(stor[s]) = !(255 * 256^idx) and uint256(stor[s])
                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                s = (idx + 1 / 32) + s
                continue 
            idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg3.length) + 31) >> 5 * None + 3 / 32)
            while stor1[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 416, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', 32, ('cd', ('add', 4, ('param', 'arg2')))), ('mul', 32, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))] + 31 / 32 > idx:
                uint8(stor[mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + floor32(arg1.length) + 416 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][idx + 1]) = 0
                idx = idx + 1
                continue 
            uint8(stor2[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 416, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', 32, ('cd', ('add', 4, ('param', 'arg2')))), ('mul', 32, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_0) = 0
            Mask(248, 0, stor2[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 416, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', 32, ('cd', ('add', 4, ('param', 'arg2')))), ('mul', 32, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_8) = 1
            uint64(stor2[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 416, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', 32, ('cd', ('add', 4, ('param', 'arg2')))), ('mul', 32, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_16) = 0
            mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 448] = arg1.length
            mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 480 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        if not arg1.length % 32:
            emit 0xb86c5045: Array(len=mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 448 len floor32(arg1.length) - (arg1.length % 32)], data=mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32], Mask(8 * arg1.length % 32, 0, 1), mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + arg1.length + 448])
        else:
            mem[floor32(arg1.length) + ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 480] = mem[floor32(arg1.length) + ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + -(arg1.length % 32) + 512 len arg1.length % 32]
            emit 0xb86c5045: Array(len=mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 448 len floor32(arg1.length) - (arg1.length % 32)], data=mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32], Mask(8 * arg1.length % 32, 0, 1), mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + arg1.length + 448 len -(arg1.length % 32) + 64])
    else:
        s = 0
        idx = ceil32(arg1.length) + 160
        while ceil32(arg1.length) + (32 * arg2.length) + 160 > idx:
            uint256(stor[mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + floor32(arg1.length) + 416 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]) = mem[idx len 1] * 256^s or !(255 * 256^s) and uint256(stor[mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + floor32(arg1.length) + 416 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]])
            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
        s = sha3(sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + floor32(arg1.length) + 416 len (arg1.length % 32) + 32]))
        while idx:
            uint256(stor[s]) = !(255 * 256^idx) and uint256(stor[s])
            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
            s = (idx + 1 / 32) + s
            continue 
        idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg2.length) + 31) >> 5 * None + 3 / 32)
        while uint256(stor[mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + floor32(arg1.length) + 416 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]) + 31 / 32 > idx:
            uint8(stor[mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + floor32(arg1.length) + 416 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][idx]) = 0
            idx = idx + 1
            continue 
        stor1[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 416, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', 32, ('cd', ('add', 4, ('param', 'arg2')))), ('mul', 32, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))] = arg3.length
        if not arg3.length:
            idx = 0
            while stor1[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 416, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', 32, ('cd', ('add', 4, ('param', 'arg2')))), ('mul', 32, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))] + 31 / 32 > idx:
                uint8(stor[mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + floor32(arg1.length) + 416 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][idx + 1]) = 0
                idx = idx + 1
                continue 
            uint8(stor2[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 416, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', 32, ('cd', ('add', 4, ('param', 'arg2')))), ('mul', 32, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_0) = 0
            Mask(248, 0, stor2[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 416, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', 32, ('cd', ('add', 4, ('param', 'arg2')))), ('mul', 32, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_8) = 1
            uint64(stor2[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 416, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', 32, ('cd', ('add', 4, ('param', 'arg2')))), ('mul', 32, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_16) = 0
            mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 448] = arg1.length
            mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 480 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
            var40001 = ceil32(arg1.length)
        else:
            s = 0
            idx = ceil32(arg1.length) + (32 * arg2.length) + 192
            while ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192 > idx:
                uint256(stor[mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + floor32(arg1.length) + 416 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][1]) = mem[idx len 1] * 256^s or !(255 * 256^s) and uint256(stor[mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + floor32(arg1.length) + 416 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][1])
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg3.length) + 31) >> 5
            s = sha3(sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + floor32(arg1.length) + 416 len (arg1.length % 32) + 32]) + 1)
            while idx:
                uint256(stor[s]) = !(255 * 256^idx) and uint256(stor[s])
                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                s = (idx + 1 / 32) + s
                continue 
            idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg3.length) + 31) >> 5 * None + 3 / 32)
            while stor1[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 416, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', 32, ('cd', ('add', 4, ('param', 'arg2')))), ('mul', 32, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))] + 31 / 32 > idx:
                uint8(stor[mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + floor32(arg1.length) + 416 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][idx + 1]) = 0
                idx = idx + 1
                continue 
            uint8(stor2[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 416, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', 32, ('cd', ('add', 4, ('param', 'arg2')))), ('mul', 32, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_0) = 0
            Mask(248, 0, stor2[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 416, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', 32, ('cd', ('add', 4, ('param', 'arg2')))), ('mul', 32, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_8) = 1
            uint64(stor2[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 416, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', 32, ('cd', ('add', 4, ('param', 'arg2')))), ('mul', 32, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_16) = 0
            mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 448] = arg1.length
            mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 480 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        if not arg1.length % 32:
            emit 0xb86c5045: Array(len=mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 448 len floor32(arg1.length) - (arg1.length % 32)], data=mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32], Mask(8 * arg1.length % 32, 0, 1), mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + arg1.length + 448])
        else:
            mem[floor32(arg1.length) + ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 480] = mem[floor32(arg1.length) + ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + -(arg1.length % 32) + 512 len arg1.length % 32]
            emit 0xb86c5045: Array(len=mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 448 len floor32(arg1.length) - (arg1.length % 32)], data=mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32], Mask(8 * arg1.length % 32, 0, 1), mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + arg1.length + 448 len -(arg1.length % 32) + 64])
}



}
