contract main {


// =======================  Init code  ======================


uint256 stor2;
address stor3;
array of uint256 stor4;
uint8 stor5;
array of uint256 stor6;
uint64 stor7;

function _fallback() payable {
    stor2 = 0
    stor5 = 0
    stor7 = 0
    require not msg.value
    mem[96 len -6650] = code.data[7466 len -6650]
    mem[64] = -6554
    stor3 = msg.sender
    stor2 = mem[96]
    if msg.sender == stor3:
        uint256(stor4[]) = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
        stor5 = uint8(stor5 + 1)
        if 31 >= stor4.length:
            stor6[stor5] = stor4.length
            idx = 0
            while stor6[stor5].length + 31 / 32 > idx:
                stor6[stor5][idx] = 0
                idx = idx + 1
                continue 
        else:
            stor6[stor5] = Mask(255, 1, (256 * not bool(stor4.length)) - 1 and stor4.length) + 1
            if not Mask(255, 1, (256 * not bool(stor4.length)) - 1 and stor4.length):
                idx = 0
                while stor6[stor5].length + 31 / 32 > idx:
                    stor6[stor5][idx] = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while stor4.length + 31 / 32 > idx:
                    stor6[stor5][s] = uint256(stor4[idx])
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = stor4.length + 31 / 32
                while stor6[stor5].length + 31 / 32 > idx:
                    stor6[stor5][idx] = 0
                    idx = idx + 1
                    continue 
    return code.data[816 len 6650]
}



// =====================  Runtime code  =====================


array of bool stor1;
array of struct stor2;
address owner;
array of uint256 sub_64837567;
uint8 sub_a2629f9d;
array of uint256 sub_dca92315;
uint64 sub_0a2d61fc;

function sub_0a2d61fc(?) {
    return sub_0a2d61fc
}

function sub_64837567(?) {
    return uint256(sub_64837567[0 len sub_64837567.length])
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

function sub_dca92315(?) {
    return sub_dca92315[stor5][0 len sub_dca92315[stor5].length]
}

function _fallback() payable {
    revert
}

function sub_d4309f4b(?) {
    if msg.sender == owner:
        stor2.length = arg1
}

function changeOwner(address arg1) {
    if msg.sender == owner:
        owner = arg1
}

function withdraw(uint256 arg1) {
    if msg.sender == owner:
        if eth.balance(this.address) >= arg1:
            if eth.balance(this.address) > 0:
                call owner with:
                   value arg1 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
        else:
            if eth.balance(this.address) > 0:
                call owner with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
}

function sub_96fa426a(?) {
    if msg.sender == owner:
        uint256(sub_64837567[]) = Array(len=arg1.length, data=arg1[all])
        sub_a2629f9d = uint8(sub_a2629f9d + 1)
        if 31 >= sub_64837567.length:
            sub_dca92315[stor5] = sub_64837567.length
            idx = 0
            while sub_dca92315[stor5].length + 31 / 32 > idx:
                sub_dca92315[stor5][idx] = 0
                idx = idx + 1
                continue 
        else:
            sub_dca92315[stor5] = Mask(255, 1, (256 * not bool(sub_64837567.length)) - 1 and sub_64837567.length) + 1
            if not Mask(255, 1, (256 * not bool(sub_64837567.length)) - 1 and sub_64837567.length):
                idx = 0
                while sub_dca92315[stor5].length + 31 / 32 > idx:
                    sub_dca92315[stor5][idx] = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while sub_64837567.length + 31 / 32 > idx:
                    sub_dca92315[stor5][s] = uint256(sub_64837567[idx])
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = sub_64837567.length + 31 / 32
                while sub_dca92315[stor5].length + 31 / 32 > idx:
                    sub_dca92315[stor5][idx] = 0
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
    _57 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32])
    mem[64] = ceil32(arg1.length) + ceil32(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][1].length) + 192
    mem[ceil32(arg1.length) + 160] = stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][1].length
    mem[0] = _57 + 1
    mem[ceil32(arg1.length) + 192] = uint256(stor[sha3(_57 + 1)])
    idx = ceil32(arg1.length) + 192
    s = 0
    while ceil32(arg1.length) + stor[_57 + 1].length + 160 > idx:
        mem[idx + 32] = uint256(stor[s + sha3(_57 + 1) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    mem[mem[64] len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[mem[64] + floor32(arg1.length) + -(arg1.length % 32) + 32 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + mem[64]] = 1
    mem[mem[64] + 32] = uint64(stor2[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', ('mem', ('range', 64, 32)), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_16)
    mem[mem[64]] = 64
    mem[mem[64] + 64] = mem[ceil32(arg1.length) + 160]
    _152 = mem[ceil32(arg1.length) + 160]
    mem[mem[64] + 96 len ceil32(mem[ceil32(arg1.length) + 160])] = mem[ceil32(arg1.length) + 192 len ceil32(mem[ceil32(arg1.length) + 160])]
    if not _152 % 32:
        return 64, mem[mem[64] + 32 len _152 + 64]
    mem[floor32(_152) + mem[64] + 96] = mem[floor32(_152) + mem[64] + -(_152 % 32) + 128 len _152 % 32]
    return 64, mem[mem[64] + 32 len floor32(_152) + 96]
}

function sub_f8ea759c(?) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = arg3.length
    require msg.value >= stor2.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 416 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + -(arg1.length % 32) + 448 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 416] = 1
    uint256(stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 416 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][]) = Array(len=arg2.length, data=arg2[all])
    uint256(stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 416 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][1][]) = Array(len=arg3.length, data=arg3[all])
    uint8(stor2[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 416, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_0) = 0
    Mask(248, 0, stor2[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 416, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_8) = 1
    uint64(stor2[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 416, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_16) = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 448] = arg1.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 480 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        emit 0xb86c5045: Array(len=mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 448 len floor32(arg1.length) - (arg1.length % 32)], data=mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32], Mask(8 * arg1.length % 32, 0, 1), mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 448])
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 480] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg1.length % 32) + 512 len arg1.length % 32]
        emit 0xb86c5045: Array(len=mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 448 len floor32(arg1.length) - (arg1.length % 32)], data=mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32], Mask(8 * arg1.length % 32, 0, 1), mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 448 len -(arg1.length % 32) + 64])
}

function sub_b7fc4538(?) {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 0
    mem[ceil32(arg1.length) + 160] = 0
    mem[ceil32(arg1.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 192] = 1
    _266 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 32])
    mem[ceil32(arg1.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 192] = 1
    _523 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 32])
    mem[64] = ceil32(arg1.length) + ceil32(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]].length) + 224
    mem[ceil32(arg1.length) + 192] = stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]].length
    mem[0] = _523
    mem[ceil32(arg1.length) + 224] = uint256(stor[sha3(_523)])
    idx = ceil32(arg1.length) + 224
    s = 0
    while ceil32(arg1.length) + stor[_523].length + 192 > idx:
        mem[idx + 32] = uint256(stor[s + sha3(_523) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    mem[mem[64] len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[mem[64] + floor32(arg1.length) + -(arg1.length % 32) + 32 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + mem[64]] = 1
    _1022 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[mem[64] + floor32(arg1.length) len (arg1.length % 32) + 32])
    _1023 = mem[64]
    mem[64] = mem[64] + ceil32(stor[mem[mem[64] + floor32(arg1.length) len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][1].length) + 32
    mem[_1023] = stor[_1022 + 1].length
    mem[0] = _1022 + 1
    mem[_1023 + 32] = uint256(stor[sha3(_1022 + 1)])
    idx = _1023 + 32
    s = 0
    while _1023 + stor[_1022 + 1].length > idx:
        mem[idx + 32] = uint256(stor[s + sha3(_1022 + 1) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    _1261 = mem[96]
    mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
    mem[_1261 + mem[64]] = 1
    _1401 = sha3(mem[mem[64] len _1261 + 32])
    _1423 = mem[64]
    mem[mem[64]] = uint8(stor2[_266].field_0)
    mem[mem[64] + 96] = uint64(stor2[_1401].field_16)
    mem[mem[64] + 32] = 128
    mem[_1423 + 128] = mem[ceil32(arg1.length) + 192]
    _1425 = mem[ceil32(arg1.length) + 192]
    mem[_1423 + 160 len ceil32(mem[ceil32(arg1.length) + 192])] = mem[ceil32(arg1.length) + 224 len ceil32(mem[ceil32(arg1.length) + 192])]
    if not _1425 % 32:
        mem[_1423 + 64] = _1425 + 160
        mem[_1425 + _1423 + 160] = stor[_1022 + 1].length
        mem[_1425 + _1423 + 192 len ceil32(stor[_1022 + 1].length)] = mem[_1023 + 32 len ceil32(stor[_1022 + 1].length)]
        if not stor[_1022 + 1].length % 32:
            return memory
              from mem[64]
               len stor[_1022 + 1].length + _1425 + _1423 + -mem[64] + 192
        mem[floor32(stor[_1022 + 1].length) + _1425 + _1423 + 192] = mem[floor32(stor[_1022 + 1].length) + _1425 + _1423 + -stor[_1022 + 1].length % 32 + 224 len stor[_1022 + 1].length % 32]
        return memory
          from mem[64]
           len floor32(stor[_1022 + 1].length) + _1425 + _1423 + -mem[64] + 224
    mem[floor32(_1425) + _1423 + 160] = mem[floor32(_1425) + _1423 + -(_1425 % 32) + 192 len _1425 % 32]
    mem[_1423 + 64] = floor32(_1425) + 192
    mem[floor32(_1425) + _1423 + 192] = stor[_1022 + 1].length
    mem[floor32(_1425) + _1423 + 224 len ceil32(stor[_1022 + 1].length)] = mem[_1023 + 32 len ceil32(stor[_1022 + 1].length)]
    if not stor[_1022 + 1].length % 32:
        return memory
          from mem[64]
           len stor[_1022 + 1].length + floor32(_1425) + _1423 + -mem[64] + 224
    mem[floor32(stor[_1022 + 1].length) + floor32(_1425) + _1423 + 224] = mem[floor32(stor[_1022 + 1].length) + floor32(_1425) + _1423 + -stor[_1022 + 1].length % 32 + 256 len stor[_1022 + 1].length % 32]
    return memory
      from mem[64]
       len floor32(stor[_1022 + 1].length) + floor32(_1425) + _1423 + -mem[64] + 256
}

function sub_cc96c594(?) {
    mem[128 len arg1.length] = arg1[all]
    if msg.sender == owner:
        mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
        mem[arg1.length + ceil32(arg1.length) + 128] = 1
        _117 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32])
        mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
        mem[arg1.length + ceil32(arg1.length) + 128] = 0
        if 31 >= stor[_117].length:
            uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]) = uint256(stor[_117])
            idx = 0
            while stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]].length + 31 / 32 > idx:
                uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][idx]) = 0
                idx = idx + 1
                continue 
            if 31 >= stor[_117 + 1].length:
                uint256(stor1[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))]) = uint256(stor1[_117])
                idx = 0
                while stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][1].length + 31 / 32 > idx:
                    uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][idx + 1]) = 0
                    idx = idx + 1
                    continue 
                uint8(stor2[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_0) = uint8(stor2[_117].field_0)
                Mask(248, 0, stor2[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_8) = Mask(248, 0, bool(uint8(stor2[_117].field_8)))
                Mask(240, 0, stor2[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_16) = uint64(stor2[_117].field_16)
                sub_0a2d61fc = uint64(sub_0a2d61fc + 1)
                mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
                mem[arg1.length + ceil32(arg1.length) + 128] = 1
                uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]) = 0
                if 31 < stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]].length:
                    idx = 0
                    while stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]].length + 31 / 32 > idx:
                        uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][idx]) = 0
                        idx = idx + 1
                        continue 
                uint256(stor1[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))]) = 0
                if 31 < stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][1].length:
                    idx = 0
                    while stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][1].length + 31 / 32 > idx:
                        uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][idx + 1]) = 0
                        idx = idx + 1
                        continue 
            else:
                uint256(stor1[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))]) = Mask(255, 1, (256 * not bool(stor1[_117])) - 1 and uint256(stor1[_117])) + 1
                if not Mask(255, 1, (256 * not bool(stor1[_117])) - 1 and uint256(stor1[_117])):
                    idx = 0
                    while stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][1].length + 31 / 32 > idx:
                        uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][idx + 1]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = 0
                    while stor[_117 + 1].length + 31 / 32 > idx:
                        uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][s + 1]) = uint256(stor[idx + sha3(_117 + 1)])
                        s = s + 1
                        idx = idx + 1
                        continue 
                    idx = stor[_117 + 1].length + 31 / 32
                    while stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][1].length + 31 / 32 > idx:
                        uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][idx + 1]) = 0
                        idx = idx + 1
                        continue 
                uint8(stor2[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_0) = uint8(stor2[_117].field_0)
                Mask(248, 0, stor2[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_8) = Mask(248, 0, bool(uint8(stor2[_117].field_8)))
                Mask(240, 0, stor2[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_16) = uint64(stor2[_117].field_16)
                sub_0a2d61fc = uint64(sub_0a2d61fc + 1)
                mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
                mem[arg1.length + ceil32(arg1.length) + 128] = 1
                uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]) = 0
                if 31 < stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]].length:
                    idx = 0
                    while stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]].length + 31 / 32 > idx:
                        uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][idx]) = 0
                        idx = idx + 1
                        continue 
                uint256(stor1[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))]) = 0
                if 31 < stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][1].length:
                    idx = 0
                    while stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][1].length + 31 / 32 > idx:
                        uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][idx + 1]) = 0
                        idx = idx + 1
                        continue 
        else:
            uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]) = Mask(255, 1, (256 * not bool(stor[_117])) - 1 and uint256(stor[_117])) + 1
            if not Mask(255, 1, (256 * not bool(stor[_117])) - 1 and uint256(stor[_117])):
                idx = 0
                while stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]].length + 31 / 32 > idx:
                    uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][idx]) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while stor[_117].length + 31 / 32 > idx:
                    uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][s]) = uint256(stor[idx + sha3(_117)])
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = stor[_117].length + 31 / 32
                while stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]].length + 31 / 32 > idx:
                    uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][idx]) = 0
                    idx = idx + 1
                    continue 
            if 31 >= stor[_117 + 1].length:
                uint256(stor1[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))]) = uint256(stor1[_117])
                idx = 0
                while stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][1].length + 31 / 32 > idx:
                    uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][idx + 1]) = 0
                    idx = idx + 1
                    continue 
                uint8(stor2[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_0) = uint8(stor2[_117].field_0)
                Mask(248, 0, stor2[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_8) = Mask(248, 0, bool(uint8(stor2[_117].field_8)))
                Mask(240, 0, stor2[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_16) = uint64(stor2[_117].field_16)
                sub_0a2d61fc = uint64(sub_0a2d61fc + 1)
                mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
                mem[arg1.length + ceil32(arg1.length) + 128] = 1
                uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]) = 0
                if 31 < stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]].length:
                    idx = 0
                    while stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]].length + 31 / 32 > idx:
                        uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][idx]) = 0
                        idx = idx + 1
                        continue 
                uint256(stor1[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))]) = 0
                if 31 < stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][1].length:
                    idx = 0
                    while stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][1].length + 31 / 32 > idx:
                        uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][idx + 1]) = 0
                        idx = idx + 1
                        continue 
            else:
                uint256(stor1[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))]) = Mask(255, 1, (256 * not bool(stor1[_117])) - 1 and uint256(stor1[_117])) + 1
                if not Mask(255, 1, (256 * not bool(stor1[_117])) - 1 and uint256(stor1[_117])):
                    idx = 0
                    while stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][1].length + 31 / 32 > idx:
                        uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][idx + 1]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = 0
                    while stor[_117 + 1].length + 31 / 32 > idx:
                        uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][s + 1]) = uint256(stor[idx + sha3(_117 + 1)])
                        s = s + 1
                        idx = idx + 1
                        continue 
                    idx = stor[_117 + 1].length + 31 / 32
                    while stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][1].length + 31 / 32 > idx:
                        uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][idx + 1]) = 0
                        idx = idx + 1
                        continue 
                uint8(stor2[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_0) = uint8(stor2[_117].field_0)
                Mask(248, 0, stor2[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_8) = Mask(248, 0, bool(uint8(stor2[_117].field_8)))
                Mask(240, 0, stor2[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_16) = uint64(stor2[_117].field_16)
                sub_0a2d61fc = uint64(sub_0a2d61fc + 1)
                mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
                mem[arg1.length + ceil32(arg1.length) + 128] = 1
                uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]) = 0
                if 31 < stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]].length:
                    idx = 0
                    while stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]].length + 31 / 32 > idx:
                        uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][idx]) = 0
                        idx = idx + 1
                        continue 
                uint256(stor1[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))]) = 0
                if 31 < stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][1].length:
                    idx = 0
                    while stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][1].length + 31 / 32 > idx:
                        uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][idx + 1]) = 0
                        idx = idx + 1
                        continue 
        uint8(stor2[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_0) = 0
        uint8(stor2[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_8) = 0
        uint64(stor2[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_16) = 0
}



}
