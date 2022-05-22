contract main {




// =====================  Runtime code  =====================


#
#  - getHashDigest(string arg1)
#
address stor0;
array of struct stor1;
array of uint256 stor2;
mapping of struct stor99;

function owner() {
    return address(stor1.length)
}

function _fallback() payable {
    revert
}

function restoreOwner() {
    require msg.sender == stor0
    address(stor1.length) = stor0
}

function changeOwner(address arg1) {
    require msg.sender == address(stor1.length)
    address(stor1.length) = arg1
}

function removeStudent(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    require msg.sender == address(stor1.length)
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + arg1.length + 128] = 2
    require stor2[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + arg1.length + 128] = 2
    stor2[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))] = 0
    mem[ceil32(arg1.length) + 128] = 0
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 160] = 256^(-(arg1.length % 32) + 32) - 1 and Mask(8 * arg1.length % 32, 0, 2), mem[ceil32(arg1.length) + arg1.length + 160 len -(arg1.length % 32) + 32] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + arg1.length + 160] = 2
    bool(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]].field_0) = 0
    uint255(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]].field_1) = 0
    Mask(248, 0, stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]].field_8) = mem[ceil32(arg1.length) + 160 len 31]
    idx = 0
    while stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]].length + 31 / 32 > idx:
        uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][idx].field_0) = 0
        idx = idx + 1
        continue 
    mem[ceil32(arg1.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[arg1.length + ceil32(arg1.length) + 192] = 2
    bool(stor1[sha3(call.data[arg1 + 36 len floor32(arg1.length)], Mask(8 * arg1.length % 32, 0, 2), 2)].field_0) = 0
    uint255(stor1[sha3(call.data[arg1 + 36 len floor32(arg1.length)], Mask(8 * arg1.length % 32, 0, 2), 2)].field_1) = 0
    Mask(248, 0, stor1[sha3(call.data[arg1 + 36 len floor32(arg1.length)], Mask(8 * arg1.length % 32, 0, 2), 2)].field_8) = mem[ceil32(arg1.length) + 192 len 31]
    idx = 0
    while stor[sha3(call.data[arg1 + 36 len floor32(arg1.length)], Mask(8 * arg1.length % 32, 0, 2), 2) + 1].length + 31 / 32 > idx:
        uint256(stor[idx + sha3(sha3(call.data[arg1 + 36 len floor32(arg1.length)], Mask(8 * arg1.length % 32, 0, 2), 2) + 1)].field_0) = 0
        idx = idx + 1
        continue 
}

function addStudent(string arg1, string arg2, string arg3, bytes32 arg4) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = arg3.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len arg3.length] = arg3[all]
    require msg.sender == address(stor1.length)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 192] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 192] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 192] = 2
    require not stor2[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 192, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 192] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 192] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 192] = 2
    stor2[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 192, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))] = arg4
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 192] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 192] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 192] = 2
    uint256(stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][].field_0) = Array(len=arg2.length, data=arg2[all])
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192] = 2
    uint256(stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][1][].field_0) = Array(len=arg3.length, data=arg3[all])
}

function addStudents(string arg1, string arg2, string arg3, bytes32[] arg4, uint256 arg5) {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = arg3.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len arg3.length] = arg3[all]
    mem[64] = (32 * arg4.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192] = arg4.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require msg.sender == address(stor1.length)
    idx = 0
    s = 96
    s = 96
    s = 96
    while idx < arg5:
        _85 = mem[64]
        mem[mem[64]] = 11
        mem[64] = mem[64] + 64
        mem[_85 + 32 len 352] = code.data[3518 len 352]
        s = 11 * idx
        while s < (11 * idx) + 11:
            require s < mem[96]
            require s - (11 * idx) < mem[_85]
            mem[_85 + s + (-11 * idx) + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 1)), 32))), 0) - 256
            s = s + 1
            continue 
        _159 = mem[64]
        mem[mem[64]] = 16
        mem[64] = mem[64] + 64
        mem[_159 + 32 len 512] = code.data[3518 len 512]
        s = 16 * idx
        while s < (16 * idx) + 16:
            require s < mem[ceil32(arg1.length) + 128]
            require s - (16 * idx) < mem[_159]
            mem[_159 + s + -(16 * idx) + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 1)), 32))), 0) - 256
            s = s + 1
            continue 
        _229 = mem[64]
        mem[mem[64]] = 10
        mem[64] = mem[64] + 64
        mem[_229 + 32 len 320] = code.data[3518 len 320]
        s = 10 * idx
        while s < (10 * idx) + 10:
            require s < mem[ceil32(arg1.length) + ceil32(arg2.length) + 160]
            require s - (10 * idx) < mem[_229]
            mem[_229 + s + (-10 * idx) + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('var', 1)), 32))), 0) - 256
            s = s + 1
            continue 
        require idx < mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192]
        _296 = mem[(32 * idx) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224]
        require msg.sender == address(stor1.length)
        _298 = mem[_85]
        t = _85 + 32
        u = mem[64]
        s = mem[_85]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[_85])] = 256^(-(mem[_85] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_85])] or mem[_85 + floor32(mem[_85]) + 32] and !(256^(-(mem[_85] % 32) + 32) - 1)
        mem[mem[64] + _298] = 2
        require not stor2[sha3(mem[mem[64] len _298 + 32])]
        _360 = mem[_85]
        t = _85 + 32
        u = mem[64]
        s = mem[_85]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[_85])] = 256^(-(mem[_85] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_85])] or mem[_85 + floor32(mem[_85]) + 32] and !(256^(-(mem[_85] % 32) + 32) - 1)
        mem[mem[64] + _360] = 2
        _411 = mem[64]
        stor2[sha3(mem[mem[64] len _360 + 32])] = _296
        _413 = mem[_85]
        t = _85 + 32
        u = mem[64]
        s = mem[_85]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[_85])] = 256^(-(mem[_85] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_85])] or mem[_85 + floor32(mem[_85]) + 32] and !(256^(-(mem[_85] % 32) + 32) - 1)
        mem[mem[64] + _413] = 2
        _460 = sha3(mem[mem[64] len _411 + _413 + -mem[64] + 32])
        _461 = mem[_159]
        mem[0] = sha3(mem[mem[64] len _411 + _413 + -mem[64] + 32])
        uint256(stor[_460].field_0) = (2 * _461) + 1
        t = sha3(mem[0])
        s = _159 + 32
        while _159 + _461 + 32 > s:
            uint256(stor[t].field_0) = mem[s]
            t = t + 1
            s = s + 32
            continue 
        s = sha3(mem[0]) + (Mask(251, 0, _461 + 31) >> 5)
        while sha3(mem[0]) + (stor[_460].length + 31 / 32) > s:
            uint256(stor[s].field_0) = 0
            s = s + 1
            continue 
        _550 = mem[_85]
        t = _85 + 32
        u = mem[64]
        s = mem[_85]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[_85])] = mem[_85 + floor32(mem[_85]) + -(mem[_85] % 32) + 64 len mem[_85] % 32] or Mask(8 * -(mem[_85] % 32) + 32, -(8 * -(mem[_85] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_85])])
        mem[_550 + mem[64]] = 2
        _566 = sha3(mem[mem[64] len _550 + 32])
        _567 = mem[_229]
        mem[0] = sha3(mem[mem[64] len _550 + 32]) + 1
        uint256(stor1[_566].field_0) = (2 * _567) + 1
        t = sha3(mem[0])
        s = _229 + 32
        while _229 + _567 + 32 > s:
            uint256(stor[t].field_0) = mem[s]
            t = t + 1
            s = s + 32
            continue 
        s = sha3(mem[0]) + (Mask(251, 0, _567 + 31) >> 5)
        while sha3(mem[0]) + (stor[_566 + 1].length + 31 / 32) > s:
            uint256(stor[s].field_0) = 0
            s = s + 1
            continue 
        idx = idx + 1
        s = _229
        s = _159
        s = _85
        continue 
}



}
