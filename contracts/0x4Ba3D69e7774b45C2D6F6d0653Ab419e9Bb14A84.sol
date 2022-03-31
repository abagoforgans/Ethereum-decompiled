contract main {


// =======================  Init code  ======================


address stor0;
mapping of uint8 stor1;

function _fallback() payable {
    stor1[address(msg.sender)] = 1
    stor0 = msg.sender
    return code.data[76 len 8682]
}



// =====================  Runtime code  =====================


#
#  - sub_c89c3d9e(?)
#
address owner;
array of uint8 stor1;
array of struct documents;
array of uint256 stor3;
mapping of struct sub_57324cd2;

function registrator(address arg1) {
    return bool(uint8(stor1[arg1]))
}

function sub_57324cd2(?) {
    require arg2 < uint256(sub_57324cd2[arg1].field_0)
    return uint256(sub_57324cd2[arg1][arg2].field_0)
}

function owner() {
    return owner
}

function documents(uint256 arg1) {
    require arg1 < documents.length
    return uint256(documents[arg1].field_768)
}

function _fallback() {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function updateRegistratorStatus(address arg1, bool arg2) {
    require owner == msg.sender
    uint8(stor1[address(arg1)]) = uint8(arg2)
}

function sub_bf1b9387(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + arg1.length + 128] = 3
    mem[ceil32(arg1.length) + 128] = uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]].field_0)
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function sub_a10b3220(?) {
    if uint256(sub_57324cd2[arg1].field_0):
        mem[160] = uint256(sub_57324cd2[arg1].field_0)
        idx = 160
        s = 0
        while (32 * uint256(sub_57324cd2[arg1].field_0)) + 128 > idx:
            mem[idx + 32] = uint256(sub_57324cd2[arg1][s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * uint256(sub_57324cd2[arg1].field_0)) + 160] = 32
    mem[(32 * uint256(sub_57324cd2[arg1].field_0)) + 192] = uint256(sub_57324cd2[arg1].field_0)
    if Mask(251, 0, sub_57324cd2[arg1].field_0):
        mem[(32 * uint256(sub_57324cd2[arg1].field_0)) + 224] = mem[160]
        mem[(32 * uint256(sub_57324cd2[arg1].field_0)) + 256 len floor32((32 * uint256(sub_57324cd2[arg1].field_0)) - 1)] = mem[192 len floor32((32 * uint256(sub_57324cd2[arg1].field_0)) - 1)]
    return Array(len=uint256(sub_57324cd2[arg1].field_0), data=mem[(32 * uint256(sub_57324cd2[arg1].field_0)) + 224 len 32 * uint256(sub_57324cd2[arg1].field_0)]), 
}

function sub_b11cfa7c(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + arg1.length + 128] = 3
    mem[ceil32(arg1.length) + 128] = stor3[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))]
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function sub_e991b59e(?) {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    if var8003 >= 32:
        mem[var8002] = mem[var8001]
        var8001 = var8001 + 32
        var8002 = var8002 + 32
        var8003 = var8003 - 32
        continue 
    mem[var8002] = 256^(-var8003 + 32) - 1 and mem[var8002] or mem[var8001] and !(256^(-var8003 + 32) - 1)
    mem[ceil32(arg1.length) + arg1.length + 128] = 3
    if var15001 >= uint256(stor[sha3(mem[ceil32(arg1.length) + 128 len arg1.length + 32])].field_0):
        return var15002
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + arg1.length + 128] = 3
    require var15001 < uint256(documents[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_0)
    mem[0] = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]) + 2
    var8001 = 128
    var8002 = ceil32(arg1.length) + 128
    var8003 = arg1.length
    continue 
}

function sub_d4448235(?) {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    if var9003 >= 32:
        mem[var9002] = mem[var9001]
        var9001 = var9001 + 32
        var9002 = var9002 + 32
        var9003 = var9003 - 32
        continue 
    mem[var9002] = 256^(-var9003 + 32) - 1 and mem[var9002] or mem[var9001] and !(256^(-var9003 + 32) - 1)
    mem[ceil32(arg1.length) + arg1.length + 128] = 3
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + arg1.length + 128] = 3
    if var16001 >= uint256(stor[sha3(mem[ceil32(arg1.length) + 128 len arg1.length + 32])].field_0):
        mem[ceil32(arg1.length) + 128] = uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]].field_0) == ceil32(arg1.length) + floor32(arg1.length) + 128
        return memory
          from ceil32(arg1.length) + 128
           len 32
    require var16001 < uint256(documents[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_0)
    mem[0] = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]) + 2
    var9001 = 128
    var9002 = ceil32(arg1.length) + 128
    var9003 = arg1.length
    continue 
}

function sub_8fcf1886(?) {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 0
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 160] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 160] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + arg1.length + 160] = 3
    _33 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32])
    mem[64] = ceil32(arg1.length) + (32 * uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]].field_0)) + 192
    mem[ceil32(arg1.length) + 160] = uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]].field_0)
    s = ceil32(arg1.length) + 192
    idx = 0
    while idx < uint256(stor[_33].field_0):
        mem[0] = _33
        _57 = mem[64]
        mem[64] = mem[64] + (32 * uint256(stor[idx + sha3(_33)].field_0)) + 32
        mem[_57] = uint256(stor[idx + sha3(_33)].field_0)
        if uint256(stor[idx + sha3(_33)].field_0):
            mem[0] = idx + sha3(_33)
            mem[_57 + 32] = uint256(stor[sha3(idx + sha3(_33))].field_0)
            t = _57 + 32
            u = sha3(mem[0])
            while _57 + (32 * uint256(stor[idx + sha3(_33)].field_0)) > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
        mem[s] = _57
        s = s + 32
        idx = idx + 1
        continue 
    idx = 0
    while idx < mem[ceil32(arg1.length) + 160]:
        require idx < mem[ceil32(arg1.length) + 160]
        require 1 < mem[mem[(32 * idx) + ceil32(arg1.length) + 192]]
        if mem[mem[(32 * idx) + ceil32(arg1.length) + 192] + 64] != arg2:
            idx = idx + 1
            continue 
        require idx < mem[ceil32(arg1.length) + 160]
        require 0 < mem[mem[(32 * idx) + ceil32(arg1.length) + 192]]
        require idx < mem[ceil32(arg1.length) + 160]
        require 1 < mem[mem[(32 * idx) + ceil32(arg1.length) + 192]]
        return idx, mem[mem[(32 * idx) + ceil32(arg1.length) + 192] + 32], mem[mem[(32 * idx) + ceil32(arg1.length) + 192] + 64]
    return 0
}

function sub_6b279ea3(?) {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 0
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 160] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 160] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + arg1.length + 160] = 3
    _31 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32])
    mem[64] = ceil32(arg1.length) + (32 * uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]].field_0)) + 192
    mem[ceil32(arg1.length) + 160] = uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]].field_0)
    s = ceil32(arg1.length) + 192
    idx = 0
    while idx < uint256(stor[_31].field_0):
        mem[0] = _31
        _53 = mem[64]
        mem[64] = mem[64] + (32 * uint256(stor[idx + sha3(_31)].field_0)) + 32
        mem[_53] = uint256(stor[idx + sha3(_31)].field_0)
        if uint256(stor[idx + sha3(_31)].field_0):
            mem[0] = idx + sha3(_31)
            mem[_53 + 32] = uint256(stor[sha3(idx + sha3(_31))].field_0)
            t = _53 + 32
            u = sha3(mem[0])
            while _53 + (32 * uint256(stor[idx + sha3(_31)].field_0)) > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
        mem[s] = _53
        s = s + 32
        idx = idx + 1
        continue 
    require 0 < mem[ceil32(arg1.length) + 160]
    require 0 < mem[ceil32(arg1.length) + 160]
    require 0 < mem[mem[ceil32(arg1.length) + 192]]
    s = 0
    while mem[mem[ceil32(arg1.length) + 192] + 32] != arg2:
        require s + 1 < mem[ceil32(arg1.length) + 160]
        require s + 1 < mem[ceil32(arg1.length) + 160]
        require 0 < mem[mem[ceil32(arg1.length) + 192]]
        s = s + 1
        continue 
    if s < mem[ceil32(arg1.length) + 160]:
        if 0 < mem[mem[(32 * s) + ceil32(arg1.length) + 192]]:
            if s < mem[ceil32(arg1.length) + 160]:
                if 1 < mem[mem[(32 * s) + ceil32(arg1.length) + 192]]:
                    return s, mem[mem[(32 * s) + ceil32(arg1.length) + 192] + 32], mem[mem[(32 * s) + ceil32(arg1.length) + 192] + 64]
    revert
}

function sub_267b6665(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 0
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 160] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 160] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + arg1.length + 160] = 3
    require arg2 < uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]].field_0)
    require 0 < uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][arg2].field_0)
    _63 = sha3(arg2 + sha3(sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32])))
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 160] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 160] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + arg1.length + 160] = 3
    require arg2 < uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]].field_0)
    require 1 < uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][arg2].field_0)
    _115 = sha3(arg2 + sha3(sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32])))
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 160] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 160] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + arg1.length + 160] = 3
    require arg2 < uint256(stor1[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))])
    _157 = sha3(sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32]) + 1)
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 160] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 160] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + arg1.length + 160] = 3
    require arg2 < uint256(documents[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_0)
    _191 = sha3(sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32]) + 2)
    mem[ceil32(arg1.length) + 192] = uint256(stor[sha3(arg2 + _157)].field_0)
    idx = ceil32(arg1.length) + 192
    s = 0
    while ceil32(arg1.length) + stor[arg2 + _157].length + 160 > idx:
        mem[idx + 32] = uint256(stor[s + sha3(arg2 + _157) + 1].field_0)
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg1.length) + ceil32(stor[arg2 + _157].length) + 192] = arg2
    mem[ceil32(arg1.length) + ceil32(stor[arg2 + _157].length) + 224] = uint256(stor[_63].field_0)
    mem[ceil32(arg1.length) + ceil32(stor[arg2 + _157].length) + 256] = uint256(stor1[_115])
    mem[ceil32(arg1.length) + ceil32(stor[arg2 + _157].length) + 320] = uint256(stor[arg2 + _191].field_0)
    mem[ceil32(arg1.length) + ceil32(stor[arg2 + _157].length) + 288] = 160
    mem[ceil32(arg1.length) + ceil32(stor[arg2 + _157].length) + 352] = stor[arg2 + _157].length
    if stor[arg2 + _157].length:
        mem[ceil32(arg1.length) + ceil32(stor[arg2 + _157].length) + 384] = mem[ceil32(arg1.length) + 192]
        mem[ceil32(arg1.length) + ceil32(stor[arg2 + _157].length) + 416 len floor32(stor[arg2 + _157].length - 1)] = mem[ceil32(arg1.length) + 224 len floor32(stor[arg2 + _157].length - 1)]
    return arg2, 
           uint256(stor[_63].field_0),
           uint256(stor1[_115]),
           Array(len=stor[arg2 + _157].length, data=mem[ceil32(arg1.length) + ceil32(stor[arg2 + _157].length) + 384 len stor[arg2 + _157].length]),
           uint256(stor[arg2 + _191].field_0)
}

function sub_d9c0b512(?) {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 0
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 160] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 160] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + arg1.length + 160] = 3
    require stor3[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))]
    mem[ceil32(arg1.length) + 160] = 0
    mem[ceil32(arg1.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 192] = 256^(-(arg1.length % 32) + 32) - 1 and Mask(8 * arg1.length % 32, 0, 3), mem[ceil32(arg1.length) + arg1.length + 192 len -(arg1.length % 32) + 32] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + arg1.length + 192] = 3
    _154 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 32])
    mem[64] = ceil32(arg1.length) + (32 * uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]].field_0)) + 224
    mem[ceil32(arg1.length) + 192] = uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]].field_0)
    s = ceil32(arg1.length) + 224
    idx = 0
    while idx < uint256(stor[_154].field_0):
        mem[0] = _154
        _218 = mem[64]
        mem[64] = mem[64] + (32 * uint256(stor[idx + sha3(_154)].field_0)) + 32
        mem[_218] = uint256(stor[idx + sha3(_154)].field_0)
        if uint256(stor[idx + sha3(_154)].field_0):
            mem[0] = idx + sha3(_154)
            mem[_218 + 32] = uint256(stor[sha3(idx + sha3(_154))].field_0)
            t = _218 + 32
            u = sha3(mem[0])
            while _218 + (32 * uint256(stor[idx + sha3(_154)].field_0)) > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
        mem[s] = _218
        s = s + 32
        idx = idx + 1
        continue 
    require 0 < mem[ceil32(arg1.length) + 192]
    require 0 < mem[ceil32(arg1.length) + 192]
    require 0 < mem[mem[ceil32(arg1.length) + 224]]
    s = 0
    while mem[mem[ceil32(arg1.length) + 224] + 32] != arg2:
        require s + 1 < mem[ceil32(arg1.length) + 192]
        require s + 1 < mem[ceil32(arg1.length) + 192]
        require 0 < mem[mem[ceil32(arg1.length) + 224]]
        s = s + 1
        continue 
    require s < mem[ceil32(arg1.length) + 192]
    require 0 < mem[mem[(32 * s) + ceil32(arg1.length) + 224]]
    require s < mem[ceil32(arg1.length) + 192]
    require 1 < mem[mem[(32 * s) + ceil32(arg1.length) + 224]]
    _290 = mem[96]
    mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + floor32(mem[96])] = 256^(-(mem[96] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[96])] or mem[floor32(mem[96]) + 128] and !(256^(-(mem[96] % 32) + 32) - 1)
    mem[mem[64] + _290] = 3
    require s < uint256(documents[sha3(mem[mem[64] len _290 + 32])].field_0)
    mem[0] = sha3(mem[mem[64] len _290 + 32]) + 2
    _338 = sha3(mem[0])
    _340 = mem[96]
    mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + floor32(mem[96])] = 256^(-(mem[96] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[96])] or mem[floor32(mem[96]) + 128] and !(256^(-(mem[96] % 32) + 32) - 1)
    mem[mem[64] + _340] = 3
    require s < uint256(documents[sha3(mem[mem[64] len _340 + 32])].field_0)
    mem[0] = sha3(mem[mem[64] len _340 + 32]) + 2
    _380 = sha3(mem[0])
    _382 = mem[96]
    mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + floor32(mem[96])] = 256^(-(mem[96] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[96])] or mem[floor32(mem[96]) + 128] and !(256^(-(mem[96] % 32) + 32) - 1)
    mem[mem[64] + _382] = 3
    require s < uint256(stor1[sha3(mem[mem[64] len _382 + 32])])
    mem[0] = sha3(mem[mem[64] len _382 + 32]) + 1
    _414 = sha3(mem[0])
    _415 = mem[64]
    mem[64] = mem[64] + ceil32(stor[s + sha3(mem[0])].length) + 32
    mem[_415] = stor[s + sha3(mem[0])].length
    mem[0] = s + _414
    mem[_415 + 32] = uint256(stor[sha3(s + _414)].field_0)
    t = _415 + 32
    u = 0
    while _415 + stor[s + _414].length > t:
        mem[t + 32] = uint256(stor[u + sha3(mem[0]) + 1].field_0)
        t = t + 32
        u = u + 1
        continue 
    mem[mem[64]] = uint256(stor[s + _338].field_0) > 0
    mem[mem[64] + 32] = uint256(stor[s + _380].field_0)
    mem[mem[64] + 64] = 96
    mem[mem[64] + 96] = mem[_415]
    _445 = mem[_415]
    if not mem[_415]:
        if not mem[_415] % 32:
            return uint256(stor[s + _338].field_0) > 0, uint256(stor[s + _380].field_0), 96, mem[mem[64] + 96 len mem[_415] + 32]
        mem[floor32(mem[_415]) + mem[64] + 128] = mem[floor32(mem[_415]) + mem[64] + -(mem[_415] % 32) + 160 len mem[_415] % 32]
    else:
        mem[mem[64] + 128] = mem[_415 + 32]
        mem[mem[64] + 160 len floor32(_445 - 1)] = mem[_415 + 64 len floor32(_445 - 1)]
        if not _445 % 32:
            return uint256(stor[s + _338].field_0) > 0, uint256(stor[s + _380].field_0), 96, mem[mem[64] + 96 len _445 + 32]
        mem[floor32(_445) + mem[64] + 128] = mem[floor32(_445) + mem[64] + -(_445 % 32) + 160 len _445 % 32]
    return uint256(stor[s + _338].field_0) > 0, uint256(stor[s + _380].field_0), 96, mem[mem[64] + 96 len floor32(_445) + 64]
}

function sub_437b7e25(?) {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[64] = (32 * arg3.length) + (32 * arg2.length) + ceil32(arg1.length) + 192
    mem[(32 * arg2.length) + ceil32(arg1.length) + 160] = arg3.length
    mem[(32 * arg2.length) + ceil32(arg1.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[0] = msg.sender
    mem[32] = 1
    require uint8(stor1[address(msg.sender)])
    mem[(32 * arg3.length) + (32 * arg2.length) + ceil32(arg1.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(32 * arg3.length) + (32 * arg2.length) + ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + (32 * arg3.length) + (32 * arg2.length) + ceil32(arg1.length) + 192] = 3
    require stor3[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 192, ('mul', 32, ('cd', ('add', 4, ('param', 'arg3')))), ('mul', 32, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))] <= 0
    documents.length++
    if not documents.length > documents.length + 1:
        mem[(32 * arg3.length) + (32 * arg2.length) + ceil32(arg1.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[(32 * arg3.length) + (32 * arg2.length) + ceil32(arg1.length) + floor32(arg1.length) + 192] = 256^(-(arg1.length % 32) + 32) - 1 and mem[(32 * arg3.length) + (32 * arg2.length) + ceil32(arg1.length) + floor32(arg1.length) + 192 len -(arg1.length % 32) + 32], mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
        mem[(32 * arg3.length) + (32 * arg2.length) + ceil32(arg1.length) + arg1.length + 192] = 3
        _3664 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg3.length) + (32 * arg2.length) + ceil32(arg1.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 32])
        s = 0
        s = 0
        idx = 0
        while idx < arg2.length:
            uint256(stor[_3664].field_0)++
            if not uint256(stor[_3664].field_0) > uint256(stor[_3664].field_0) + 1:
                require idx < uint256(stor[_3664].field_0)
                uint256(stor[idx + sha3(_3664)].field_0)++
                if not uint256(stor[idx + sha3(_3664)].field_0) > uint256(stor[idx + sha3(_3664)].field_0) + 1:
                    require idx < mem[ceil32(arg1.length) + 128]
                    require uint256(stor[_3664].field_0) < uint256(stor[_3664].field_0)
                    require uint256(stor[idx + sha3(_3664)].field_0) < uint256(stor[uint256(stor[_3664].field_0) + sha3(_3664)].field_0)
                    uint256(stor[uint256(stor[idx + sha3(_3664)].field_0) + sha3(uint256(stor[_3664].field_0) + sha3(_3664))].field_0) = mem[ceil32(arg1.length) + (32 * idx) + 160]
                    require idx < uint256(stor[_3664].field_0)
                    uint256(stor[idx + sha3(_3664)].field_0)++
                    if not uint256(stor[idx + sha3(_3664)].field_0) > uint256(stor[idx + sha3(_3664)].field_0) + 1:
                        require idx < mem[(32 * arg2.length) + ceil32(arg1.length) + 160]
                        require uint256(stor[_3664].field_0) < uint256(stor[_3664].field_0)
                        require uint256(stor[idx + sha3(_3664)].field_0) < uint256(stor[uint256(stor[_3664].field_0) + sha3(_3664)].field_0)
                        mem[0] = uint256(stor[_3664].field_0) + sha3(_3664)
                        uint256(stor[uint256(stor[idx + sha3(_3664)].field_0) + sha3(uint256(stor[_3664].field_0) + sha3(_3664))].field_0) = mem[(32 * arg2.length) + ceil32(arg1.length) + (32 * idx) + 192]
                        _5579 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_5579] = 0
                        uint256(stor1[_3664])++
                        if not uint256(stor1[_3664]) > uint256(stor1[_3664]) + 1:
                            require uint256(stor1[_3664]) < uint256(stor1[_3664])
                            bool(stor[uint256(stor1[_3664]) + sha3(_3664 + 1)].field_0) = 0
                            uint255(stor[uint256(stor1[_3664]) + sha3(_3664 + 1)].field_1) = 0
                            Mask(248, 0, stor[uint256(stor1[_3664]) + sha3(_3664 + 1)].field_8) = mem[_5579 + 32 len 31]
                            s = sha3(uint256(stor1[_3664]) + sha3(_3664 + 1))
                            while sha3(uint256(stor1[_3664]) + sha3(_3664 + 1)) + (stor[uint256(stor1[_3664]) + sha3(_3664 + 1)].length + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                        else:
                            mem[0] = _3664 + 1
                            s = uint256(stor1[_3664]) + sha3(mem[0]) + 1
                            while sha3(_3664 + 1) + uint256(stor1[_3664]) > s:
                                uint256(stor[s].field_0) = 0
                                if 31 < stor[s].length:
                                    mem[0] = s
                                    t = sha3(s)
                                    while sha3(s) + (stor[s].length + 31 / 32) > t:
                                        uint256(stor[t].field_0) = 0
                                        t = t + 1
                                        continue 
                                s = s + 1
                                continue 
                            require uint256(stor1[_3664]) < uint256(stor1[_3664])
                            mem[0] = _3664 + 1
                            _7337 = mem[_5579]
                            mem[0] = uint256(stor1[_3664]) + sha3(_3664 + 1)
                            uint256(stor[uint256(stor1[_3664]) + sha3(_3664 + 1)].field_0) = (2 * _7337) + 1
                            t = sha3(uint256(stor1[_3664]) + sha3(_3664 + 1))
                            s = _5579 + 32
                            while _5579 + _7337 + 32 > s:
                                uint256(stor[t].field_0) = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(uint256(stor1[_3664]) + sha3(_3664 + 1)) + (Mask(251, 0, _7337 + 31) >> 5)
                            while sha3(uint256(stor1[_3664]) + sha3(_3664 + 1)) + (stor[uint256(stor1[_3664]) + sha3(_3664 + 1)].length + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    else:
                        s = uint256(stor[idx + sha3(_3664)].field_0) + sha3(idx + sha3(_3664)) + 1
                        while sha3(idx + sha3(_3664)) + uint256(stor[idx + sha3(_3664)].field_0) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                        require idx < mem[(32 * arg2.length) + ceil32(arg1.length) + 160]
                        require uint256(stor[_3664].field_0) < uint256(stor[_3664].field_0)
                        require uint256(stor[idx + sha3(_3664)].field_0) < uint256(stor[uint256(stor[_3664].field_0) + sha3(_3664)].field_0)
                        mem[0] = uint256(stor[_3664].field_0) + sha3(_3664)
                        uint256(stor[uint256(stor[idx + sha3(_3664)].field_0) + sha3(uint256(stor[_3664].field_0) + sha3(_3664))].field_0) = mem[(32 * arg2.length) + ceil32(arg1.length) + (32 * idx) + 192]
                        _7356 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_7356] = 0
                        uint256(stor1[_3664])++
                        if not uint256(stor1[_3664]) > uint256(stor1[_3664]) + 1:
                            require uint256(stor1[_3664]) < uint256(stor1[_3664])
                            bool(stor[uint256(stor1[_3664]) + sha3(_3664 + 1)].field_0) = 0
                            uint255(stor[uint256(stor1[_3664]) + sha3(_3664 + 1)].field_1) = 0
                            Mask(248, 0, stor[uint256(stor1[_3664]) + sha3(_3664 + 1)].field_8) = mem[_7356 + 32 len 31]
                            s = sha3(uint256(stor1[_3664]) + sha3(_3664 + 1))
                            while sha3(uint256(stor1[_3664]) + sha3(_3664 + 1)) + (stor[uint256(stor1[_3664]) + sha3(_3664 + 1)].length + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                        else:
                            mem[0] = _3664 + 1
                            s = uint256(stor1[_3664]) + sha3(mem[0]) + 1
                            while sha3(_3664 + 1) + uint256(stor1[_3664]) > s:
                                uint256(stor[s].field_0) = 0
                                if 31 < stor[s].length:
                                    mem[0] = s
                                    t = sha3(s)
                                    while sha3(s) + (stor[s].length + 31 / 32) > t:
                                        uint256(stor[t].field_0) = 0
                                        t = t + 1
                                        continue 
                                s = s + 1
                                continue 
                            require uint256(stor1[_3664]) < uint256(stor1[_3664])
                            mem[0] = _3664 + 1
                            _9161 = mem[_7356]
                            mem[0] = uint256(stor1[_3664]) + sha3(_3664 + 1)
                            uint256(stor[uint256(stor1[_3664]) + sha3(_3664 + 1)].field_0) = (2 * _9161) + 1
                            t = sha3(uint256(stor1[_3664]) + sha3(_3664 + 1))
                            s = _7356 + 32
                            while _7356 + _9161 + 32 > s:
                                uint256(stor[t].field_0) = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(uint256(stor1[_3664]) + sha3(_3664 + 1)) + (Mask(251, 0, _9161 + 31) >> 5)
                            while sha3(uint256(stor1[_3664]) + sha3(_3664 + 1)) + (stor[uint256(stor1[_3664]) + sha3(_3664 + 1)].length + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                else:
                    s = uint256(stor[idx + sha3(_3664)].field_0) + sha3(idx + sha3(_3664)) + 1
                    while sha3(idx + sha3(_3664)) + uint256(stor[idx + sha3(_3664)].field_0) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
                    require idx < mem[ceil32(arg1.length) + 128]
                    require uint256(stor[_3664].field_0) < uint256(stor[_3664].field_0)
                    require uint256(stor[idx + sha3(_3664)].field_0) < uint256(stor[uint256(stor[_3664].field_0) + sha3(_3664)].field_0)
                    uint256(stor[uint256(stor[idx + sha3(_3664)].field_0) + sha3(uint256(stor[_3664].field_0) + sha3(_3664))].field_0) = mem[ceil32(arg1.length) + (32 * idx) + 160]
                    require idx < uint256(stor[_3664].field_0)
                    uint256(stor[idx + sha3(_3664)].field_0)++
                    if not uint256(stor[idx + sha3(_3664)].field_0) > uint256(stor[idx + sha3(_3664)].field_0) + 1:
                        require idx < mem[(32 * arg2.length) + ceil32(arg1.length) + 160]
                        require uint256(stor[_3664].field_0) < uint256(stor[_3664].field_0)
                        require uint256(stor[idx + sha3(_3664)].field_0) < uint256(stor[uint256(stor[_3664].field_0) + sha3(_3664)].field_0)
                        mem[0] = uint256(stor[_3664].field_0) + sha3(_3664)
                        uint256(stor[uint256(stor[idx + sha3(_3664)].field_0) + sha3(uint256(stor[_3664].field_0) + sha3(_3664))].field_0) = mem[(32 * arg2.length) + ceil32(arg1.length) + (32 * idx) + 192]
                        _7434 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_7434] = 0
                        uint256(stor1[_3664])++
                        if not uint256(stor1[_3664]) > uint256(stor1[_3664]) + 1:
                            require uint256(stor1[_3664]) < uint256(stor1[_3664])
                            bool(stor[uint256(stor1[_3664]) + sha3(_3664 + 1)].field_0) = 0
                            uint255(stor[uint256(stor1[_3664]) + sha3(_3664 + 1)].field_1) = 0
                            Mask(248, 0, stor[uint256(stor1[_3664]) + sha3(_3664 + 1)].field_8) = mem[_7434 + 32 len 31]
                            s = sha3(uint256(stor1[_3664]) + sha3(_3664 + 1))
                            while sha3(uint256(stor1[_3664]) + sha3(_3664 + 1)) + (stor[uint256(stor1[_3664]) + sha3(_3664 + 1)].length + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                        else:
                            mem[0] = _3664 + 1
                            s = uint256(stor1[_3664]) + sha3(mem[0]) + 1
                            while sha3(_3664 + 1) + uint256(stor1[_3664]) > s:
                                uint256(stor[s].field_0) = 0
                                if 31 < stor[s].length:
                                    mem[0] = s
                                    t = sha3(s)
                                    while sha3(s) + (stor[s].length + 31 / 32) > t:
                                        uint256(stor[t].field_0) = 0
                                        t = t + 1
                                        continue 
                                s = s + 1
                                continue 
                            require uint256(stor1[_3664]) < uint256(stor1[_3664])
                            mem[0] = _3664 + 1
                            _9162 = mem[_7434]
                            mem[0] = uint256(stor1[_3664]) + sha3(_3664 + 1)
                            uint256(stor[uint256(stor1[_3664]) + sha3(_3664 + 1)].field_0) = (2 * _9162) + 1
                            t = sha3(uint256(stor1[_3664]) + sha3(_3664 + 1))
                            s = _7434 + 32
                            while _7434 + _9162 + 32 > s:
                                uint256(stor[t].field_0) = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(uint256(stor1[_3664]) + sha3(_3664 + 1)) + (Mask(251, 0, _9162 + 31) >> 5)
                            while sha3(uint256(stor1[_3664]) + sha3(_3664 + 1)) + (stor[uint256(stor1[_3664]) + sha3(_3664 + 1)].length + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    else:
                        s = uint256(stor[idx + sha3(_3664)].field_0) + sha3(idx + sha3(_3664)) + 1
                        while sha3(idx + sha3(_3664)) + uint256(stor[idx + sha3(_3664)].field_0) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                        require idx < mem[(32 * arg2.length) + ceil32(arg1.length) + 160]
                        require uint256(stor[_3664].field_0) < uint256(stor[_3664].field_0)
                        require uint256(stor[idx + sha3(_3664)].field_0) < uint256(stor[uint256(stor[_3664].field_0) + sha3(_3664)].field_0)
                        mem[0] = uint256(stor[_3664].field_0) + sha3(_3664)
                        uint256(stor[uint256(stor[idx + sha3(_3664)].field_0) + sha3(uint256(stor[_3664].field_0) + sha3(_3664))].field_0) = mem[(32 * arg2.length) + ceil32(arg1.length) + (32 * idx) + 192]
                        _9213 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_9213] = 0
                        uint256(stor1[_3664])++
                        if not uint256(stor1[_3664]) > uint256(stor1[_3664]) + 1:
                            require uint256(stor1[_3664]) < uint256(stor1[_3664])
                            bool(stor[uint256(stor1[_3664]) + sha3(_3664 + 1)].field_0) = 0
                            uint255(stor[uint256(stor1[_3664]) + sha3(_3664 + 1)].field_1) = 0
                            Mask(248, 0, stor[uint256(stor1[_3664]) + sha3(_3664 + 1)].field_8) = mem[_9213 + 32 len 31]
                            s = sha3(uint256(stor1[_3664]) + sha3(_3664 + 1))
                            while sha3(uint256(stor1[_3664]) + sha3(_3664 + 1)) + (stor[uint256(stor1[_3664]) + sha3(_3664 + 1)].length + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                        else:
                            mem[0] = _3664 + 1
                            s = uint256(stor1[_3664]) + sha3(mem[0]) + 1
                            while sha3(_3664 + 1) + uint256(stor1[_3664]) > s:
                                uint256(stor[s].field_0) = 0
                                if 31 < stor[s].length:
                                    mem[0] = s
                                    t = sha3(s)
                                    while sha3(s) + (stor[s].length + 31 / 32) > t:
                                        uint256(stor[t].field_0) = 0
                                        t = t + 1
                                        continue 
                                s = s + 1
                                continue 
                            require uint256(stor1[_3664]) < uint256(stor1[_3664])
                            mem[0] = _3664 + 1
                            _10902 = mem[_9213]
                            mem[0] = uint256(stor1[_3664]) + sha3(_3664 + 1)
                            uint256(stor[uint256(stor1[_3664]) + sha3(_3664 + 1)].field_0) = (2 * _10902) + 1
                            t = sha3(uint256(stor1[_3664]) + sha3(_3664 + 1))
                            s = _9213 + 32
                            while _9213 + _10902 + 32 > s:
                                uint256(stor[t].field_0) = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(uint256(stor1[_3664]) + sha3(_3664 + 1)) + (Mask(251, 0, _10902 + 31) >> 5)
                            while sha3(uint256(stor1[_3664]) + sha3(_3664 + 1)) + (stor[uint256(stor1[_3664]) + sha3(_3664 + 1)].length + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
            else:
                mem[0] = _3664
                s = uint256(stor[_3664].field_0) + sha3(mem[0]) + 1
                while sha3(_3664) + uint256(stor[_3664].field_0) > s:
                    uint256(stor[s].field_0) = 0
                    mem[0] = s
                    t = sha3(s)
                    while sha3(s) + uint256(stor[s].field_0) > t:
                        uint256(stor[t].field_0) = 0
                        t = t + 1
                        continue 
                    s = s + 1
                    continue 
                require idx < uint256(stor[_3664].field_0)
                uint256(stor[idx + sha3(_3664)].field_0)++
                if not uint256(stor[idx + sha3(_3664)].field_0) > uint256(stor[idx + sha3(_3664)].field_0) + 1:
                    require idx < mem[ceil32(arg1.length) + 128]
                    require uint256(stor[_3664].field_0) < uint256(stor[_3664].field_0)
                    require uint256(stor[idx + sha3(_3664)].field_0) < uint256(stor[uint256(stor[_3664].field_0) + sha3(_3664)].field_0)
                    uint256(stor[uint256(stor[idx + sha3(_3664)].field_0) + sha3(uint256(stor[_3664].field_0) + sha3(_3664))].field_0) = mem[ceil32(arg1.length) + (32 * idx) + 160]
                    require idx < uint256(stor[_3664].field_0)
                    uint256(stor[idx + sha3(_3664)].field_0)++
                    if not uint256(stor[idx + sha3(_3664)].field_0) > uint256(stor[idx + sha3(_3664)].field_0) + 1:
                        require idx < mem[(32 * arg2.length) + ceil32(arg1.length) + 160]
                        require uint256(stor[_3664].field_0) < uint256(stor[_3664].field_0)
                        require uint256(stor[idx + sha3(_3664)].field_0) < uint256(stor[uint256(stor[_3664].field_0) + sha3(_3664)].field_0)
                        mem[0] = uint256(stor[_3664].field_0) + sha3(_3664)
                        uint256(stor[uint256(stor[idx + sha3(_3664)].field_0) + sha3(uint256(stor[_3664].field_0) + sha3(_3664))].field_0) = mem[(32 * arg2.length) + ceil32(arg1.length) + (32 * idx) + 192]
                        _7485 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_7485] = 0
                        uint256(stor1[_3664])++
                        if not uint256(stor1[_3664]) > uint256(stor1[_3664]) + 1:
                            require uint256(stor1[_3664]) < uint256(stor1[_3664])
                            bool(stor[uint256(stor1[_3664]) + sha3(_3664 + 1)].field_0) = 0
                            uint255(stor[uint256(stor1[_3664]) + sha3(_3664 + 1)].field_1) = 0
                            Mask(248, 0, stor[uint256(stor1[_3664]) + sha3(_3664 + 1)].field_8) = mem[_7485 + 32 len 31]
                            s = sha3(uint256(stor1[_3664]) + sha3(_3664 + 1))
                            while sha3(uint256(stor1[_3664]) + sha3(_3664 + 1)) + (stor[uint256(stor1[_3664]) + sha3(_3664 + 1)].length + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                        else:
                            mem[0] = _3664 + 1
                            s = uint256(stor1[_3664]) + sha3(mem[0]) + 1
                            while sha3(_3664 + 1) + uint256(stor1[_3664]) > s:
                                uint256(stor[s].field_0) = 0
                                if 31 < stor[s].length:
                                    mem[0] = s
                                    t = sha3(s)
                                    while sha3(s) + (stor[s].length + 31 / 32) > t:
                                        uint256(stor[t].field_0) = 0
                                        t = t + 1
                                        continue 
                                s = s + 1
                                continue 
                            require uint256(stor1[_3664]) < uint256(stor1[_3664])
                            mem[0] = _3664 + 1
                            _9164 = mem[_7485]
                            mem[0] = uint256(stor1[_3664]) + sha3(_3664 + 1)
                            uint256(stor[uint256(stor1[_3664]) + sha3(_3664 + 1)].field_0) = (2 * _9164) + 1
                            t = sha3(uint256(stor1[_3664]) + sha3(_3664 + 1))
                            s = _7485 + 32
                            while _7485 + _9164 + 32 > s:
                                uint256(stor[t].field_0) = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(uint256(stor1[_3664]) + sha3(_3664 + 1)) + (Mask(251, 0, _9164 + 31) >> 5)
                            while sha3(uint256(stor1[_3664]) + sha3(_3664 + 1)) + (stor[uint256(stor1[_3664]) + sha3(_3664 + 1)].length + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    else:
                        s = uint256(stor[idx + sha3(_3664)].field_0) + sha3(idx + sha3(_3664)) + 1
                        while sha3(idx + sha3(_3664)) + uint256(stor[idx + sha3(_3664)].field_0) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                        require idx < mem[(32 * arg2.length) + ceil32(arg1.length) + 160]
                        require uint256(stor[_3664].field_0) < uint256(stor[_3664].field_0)
                        require uint256(stor[idx + sha3(_3664)].field_0) < uint256(stor[uint256(stor[_3664].field_0) + sha3(_3664)].field_0)
                        mem[0] = uint256(stor[_3664].field_0) + sha3(_3664)
                        uint256(stor[uint256(stor[idx + sha3(_3664)].field_0) + sha3(uint256(stor[_3664].field_0) + sha3(_3664))].field_0) = mem[(32 * arg2.length) + ceil32(arg1.length) + (32 * idx) + 192]
                        _9217 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_9217] = 0
                        uint256(stor1[_3664])++
                        if not uint256(stor1[_3664]) > uint256(stor1[_3664]) + 1:
                            require uint256(stor1[_3664]) < uint256(stor1[_3664])
                            bool(stor[uint256(stor1[_3664]) + sha3(_3664 + 1)].field_0) = 0
                            uint255(stor[uint256(stor1[_3664]) + sha3(_3664 + 1)].field_1) = 0
                            Mask(248, 0, stor[uint256(stor1[_3664]) + sha3(_3664 + 1)].field_8) = mem[_9217 + 32 len 31]
                            s = sha3(uint256(stor1[_3664]) + sha3(_3664 + 1))
                            while sha3(uint256(stor1[_3664]) + sha3(_3664 + 1)) + (stor[uint256(stor1[_3664]) + sha3(_3664 + 1)].length + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                        else:
                            mem[0] = _3664 + 1
                            s = uint256(stor1[_3664]) + sha3(mem[0]) + 1
                            while sha3(_3664 + 1) + uint256(stor1[_3664]) > s:
                                uint256(stor[s].field_0) = 0
                                if 31 < stor[s].length:
                                    mem[0] = s
                                    t = sha3(s)
                                    while sha3(s) + (stor[s].length + 31 / 32) > t:
                                        uint256(stor[t].field_0) = 0
                                        t = t + 1
                                        continue 
                                s = s + 1
                                continue 
                            require uint256(stor1[_3664]) < uint256(stor1[_3664])
                            mem[0] = _3664 + 1
                            _10905 = mem[_9217]
                            mem[0] = uint256(stor1[_3664]) + sha3(_3664 + 1)
                            uint256(stor[uint256(stor1[_3664]) + sha3(_3664 + 1)].field_0) = (2 * _10905) + 1
                            t = sha3(uint256(stor1[_3664]) + sha3(_3664 + 1))
                            s = _9217 + 32
                            while _9217 + _10905 + 32 > s:
                                uint256(stor[t].field_0) = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(uint256(stor1[_3664]) + sha3(_3664 + 1)) + (Mask(251, 0, _10905 + 31) >> 5)
                            while sha3(uint256(stor1[_3664]) + sha3(_3664 + 1)) + (stor[uint256(stor1[_3664]) + sha3(_3664 + 1)].length + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                else:
                    s = uint256(stor[idx + sha3(_3664)].field_0) + sha3(idx + sha3(_3664)) + 1
                    while sha3(idx + sha3(_3664)) + uint256(stor[idx + sha3(_3664)].field_0) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
                    require idx < mem[ceil32(arg1.length) + 128]
                    require uint256(stor[_3664].field_0) < uint256(stor[_3664].field_0)
                    require uint256(stor[idx + sha3(_3664)].field_0) < uint256(stor[uint256(stor[_3664].field_0) + sha3(_3664)].field_0)
                    uint256(stor[uint256(stor[idx + sha3(_3664)].field_0) + sha3(uint256(stor[_3664].field_0) + sha3(_3664))].field_0) = mem[ceil32(arg1.length) + (32 * idx) + 160]
                    require idx < uint256(stor[_3664].field_0)
                    uint256(stor[idx + sha3(_3664)].field_0)++
                    if not uint256(stor[idx + sha3(_3664)].field_0) > uint256(stor[idx + sha3(_3664)].field_0) + 1:
                        require idx < mem[(32 * arg2.length) + ceil32(arg1.length) + 160]
                        require uint256(stor[_3664].field_0) < uint256(stor[_3664].field_0)
                        require uint256(stor[idx + sha3(_3664)].field_0) < uint256(stor[uint256(stor[_3664].field_0) + sha3(_3664)].field_0)
                        mem[0] = uint256(stor[_3664].field_0) + sha3(_3664)
                        uint256(stor[uint256(stor[idx + sha3(_3664)].field_0) + sha3(uint256(stor[_3664].field_0) + sha3(_3664))].field_0) = mem[(32 * arg2.length) + ceil32(arg1.length) + (32 * idx) + 192]
                        _9459 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_9459] = 0
                        uint256(stor1[_3664])++
                        if not uint256(stor1[_3664]) > uint256(stor1[_3664]) + 1:
                            require uint256(stor1[_3664]) < uint256(stor1[_3664])
                            bool(stor[uint256(stor1[_3664]) + sha3(_3664 + 1)].field_0) = 0
                            uint255(stor[uint256(stor1[_3664]) + sha3(_3664 + 1)].field_1) = 0
                            Mask(248, 0, stor[uint256(stor1[_3664]) + sha3(_3664 + 1)].field_8) = mem[_9459 + 32 len 31]
                            s = sha3(uint256(stor1[_3664]) + sha3(_3664 + 1))
                            while sha3(uint256(stor1[_3664]) + sha3(_3664 + 1)) + (stor[uint256(stor1[_3664]) + sha3(_3664 + 1)].length + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                        else:
                            mem[0] = _3664 + 1
                            s = uint256(stor1[_3664]) + sha3(mem[0]) + 1
                            while sha3(_3664 + 1) + uint256(stor1[_3664]) > s:
                                uint256(stor[s].field_0) = 0
                                if 31 < stor[s].length:
                                    mem[0] = s
                                    t = sha3(s)
                                    while sha3(s) + (stor[s].length + 31 / 32) > t:
                                        uint256(stor[t].field_0) = 0
                                        t = t + 1
                                        continue 
                                s = s + 1
                                continue 
                            require uint256(stor1[_3664]) < uint256(stor1[_3664])
                            mem[0] = _3664 + 1
                            _10906 = mem[_9459]
                            mem[0] = uint256(stor1[_3664]) + sha3(_3664 + 1)
                            uint256(stor[uint256(stor1[_3664]) + sha3(_3664 + 1)].field_0) = (2 * _10906) + 1
                            t = sha3(uint256(stor1[_3664]) + sha3(_3664 + 1))
                            s = _9459 + 32
                            while _9459 + _10906 + 32 > s:
                                uint256(stor[t].field_0) = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(uint256(stor1[_3664]) + sha3(_3664 + 1)) + (Mask(251, 0, _10906 + 31) >> 5)
                            while sha3(uint256(stor1[_3664]) + sha3(_3664 + 1)) + (stor[uint256(stor1[_3664]) + sha3(_3664 + 1)].length + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    else:
                        s = uint256(stor[idx + sha3(_3664)].field_0) + sha3(idx + sha3(_3664)) + 1
                        while sha3(idx + sha3(_3664)) + uint256(stor[idx + sha3(_3664)].field_0) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                        require idx < mem[(32 * arg2.length) + ceil32(arg1.length) + 160]
                        require uint256(stor[_3664].field_0) < uint256(stor[_3664].field_0)
                        require uint256(stor[idx + sha3(_3664)].field_0) < uint256(stor[uint256(stor[_3664].field_0) + sha3(_3664)].field_0)
                        mem[0] = uint256(stor[_3664].field_0) + sha3(_3664)
                        uint256(stor[uint256(stor[idx + sha3(_3664)].field_0) + sha3(uint256(stor[_3664].field_0) + sha3(_3664))].field_0) = mem[(32 * arg2.length) + ceil32(arg1.length) + (32 * idx) + 192]
                        _11012 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_11012] = 0
                        uint256(stor1[_3664])++
                        if not uint256(stor1[_3664]) > uint256(stor1[_3664]) + 1:
                            require uint256(stor1[_3664]) < uint256(stor1[_3664])
                            bool(stor[uint256(stor1[_3664]) + sha3(_3664 + 1)].field_0) = 0
                            uint255(stor[uint256(stor1[_3664]) + sha3(_3664 + 1)].field_1) = 0
                            Mask(248, 0, stor[uint256(stor1[_3664]) + sha3(_3664 + 1)].field_8) = mem[_11012 + 32 len 31]
                            s = sha3(uint256(stor1[_3664]) + sha3(_3664 + 1))
                            while sha3(uint256(stor1[_3664]) + sha3(_3664 + 1)) + (stor[uint256(stor1[_3664]) + sha3(_3664 + 1)].length + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                        else:
                            mem[0] = _3664 + 1
                            s = uint256(stor1[_3664]) + sha3(mem[0]) + 1
                            while sha3(_3664 + 1) + uint256(stor1[_3664]) > s:
                                uint256(stor[s].field_0) = 0
                                if 31 < stor[s].length:
                                    mem[0] = s
                                    t = sha3(s)
                                    while sha3(s) + (stor[s].length + 31 / 32) > t:
                                        uint256(stor[t].field_0) = 0
                                        t = t + 1
                                        continue 
                                s = s + 1
                                continue 
                            require uint256(stor1[_3664]) < uint256(stor1[_3664])
                            mem[0] = _3664 + 1
                            _12433 = mem[_11012]
                            mem[0] = uint256(stor1[_3664]) + sha3(_3664 + 1)
                            uint256(stor[uint256(stor1[_3664]) + sha3(_3664 + 1)].field_0) = (2 * _12433) + 1
                            t = sha3(uint256(stor1[_3664]) + sha3(_3664 + 1))
                            s = _11012 + 32
                            while _11012 + _12433 + 32 > s:
                                uint256(stor[t].field_0) = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(uint256(stor1[_3664]) + sha3(_3664 + 1)) + (Mask(251, 0, _12433 + 31) >> 5)
                            while sha3(uint256(stor1[_3664]) + sha3(_3664 + 1)) + (stor[uint256(stor1[_3664]) + sha3(_3664 + 1)].length + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
            uint256(documents[_3664].field_0)++
            if not uint256(documents[_3664].field_0) <= uint256(documents[_3664].field_0) + 1:
                s = uint256(documents[_3664].field_0) + sha3(_3664 + 2) + 1
                while sha3(_3664 + 2) + uint256(documents[_3664].field_0) > s:
                    uint256(stor[s].field_0) = 0
                    s = s + 1
                    continue 
            require uint256(documents[_3664].field_0) < uint256(documents[_3664].field_0)
            uint256(stor[uint256(stor2[_3664].field_0) + sha3(_3664 + 2)].field_0) = 0
            require idx < mem[ceil32(arg1.length) + 128]
            mem[32] = 4
            uint256(sub_57324cd2[mem[ceil32(arg1.length) + (32 * idx) + 160]].field_0)++
            if not uint256(sub_57324cd2[mem[ceil32(arg1.length) + (32 * idx) + 160]].field_0) <= uint256(sub_57324cd2[mem[ceil32(arg1.length) + (32 * idx) + 160]].field_0) + 1:
                s = uint256(sub_57324cd2[mem[ceil32(arg1.length) + (32 * idx) + 160]].field_0) + sha3(sha3(mem[ceil32(arg1.length) + (32 * idx) + 160], 4)) + 1
                while sha3(sha3(mem[ceil32(arg1.length) + (32 * idx) + 160], 4)) + uint256(sub_57324cd2[mem[ceil32(arg1.length) + (32 * idx) + 160]].field_0) > s:
                    uint256(stor[s].field_0) = 0
                    s = s + 1
                    continue 
            mem[0] = sha3(mem[ceil32(arg1.length) + (32 * idx) + 160], 4)
            uint256(sub_57324cd2[mem[ceil32(arg1.length) + (32 * idx) + 160]][uint256(sub_57324cd2[mem[ceil32(arg1.length) + (32 * idx) + 160]].field_0)].field_0) = documents.length
            s = uint256(stor[idx + sha3(_3664)].field_0)
            s = uint256(stor[_3664].field_0)
            idx = idx + 1
            continue 
        stor3[_3664] = block.timestamp
        _5481 = mem[64]
        mem[mem[64] + 64] = block.timestamp
        mem[mem[64]] = 96
        mem[mem[64] + 96] = mem[96]
        _5483 = mem[96]
        if not mem[96]:
            if not mem[96] % 32:
                mem[mem[64] + 32] = mem[96] + 128
                mem[mem[96] + _5481 + 128] = mem[ceil32(arg1.length) + 128]
                _5492 = mem[ceil32(arg1.length) + 128]
                if not Mask(251, 0, mem[ceil32(arg1.length) + 128]):
                    emit 0x928c9e25: mem[mem[64] len (32 * mem[ceil32(arg1.length) + 128]) + mem[96] + _5481 + -mem[64] + 160]
                else:
                    mem[mem[96] + _5481 + 160] = mem[ceil32(arg1.length) + 160]
                    mem[mem[96] + _5481 + 192 len floor32((32 * _5492) - 1)] = mem[ceil32(arg1.length) + 192 len floor32((32 * _5492) - 1)]
                    emit 0x928c9e25: mem[mem[64] len (32 * _5492) + mem[96] + _5481 + -mem[64] + 160]
            else:
                mem[floor32(mem[96]) + mem[64] + 128] = mem[floor32(mem[96]) + mem[64] + -(mem[96] % 32) + 160 len mem[96] % 32]
                mem[mem[64] + 32] = floor32(mem[96]) + 160
                mem[floor32(_5483) + _5481 + 160] = mem[ceil32(arg1.length) + 128]
                _5500 = mem[ceil32(arg1.length) + 128]
                if not Mask(251, 0, mem[ceil32(arg1.length) + 128]):
                    emit 0x928c9e25: mem[mem[64] len (32 * mem[ceil32(arg1.length) + 128]) + floor32(_5483) + _5481 + -mem[64] + 192]
                else:
                    mem[floor32(_5483) + _5481 + 192] = mem[ceil32(arg1.length) + 160]
                    mem[floor32(_5483) + _5481 + 224 len floor32((32 * _5500) - 1)] = mem[ceil32(arg1.length) + 192 len floor32((32 * _5500) - 1)]
                    emit 0x928c9e25: mem[mem[64] len (32 * _5500) + floor32(_5483) + _5481 + -mem[64] + 192]
        else:
            mem[mem[64] + 128] = mem[128]
            mem[mem[64] + 160 len floor32(mem[96] - 1)] = mem[160 len floor32(mem[96] - 1)]
            if not mem[96] % 32:
                mem[mem[64] + 32] = mem[96] + 128
                mem[_5483 + _5481 + 128] = mem[ceil32(arg1.length) + 128]
                _9097 = mem[ceil32(arg1.length) + 128]
                if not Mask(251, 0, mem[ceil32(arg1.length) + 128]):
                    emit 0x928c9e25: mem[mem[64] len (32 * mem[ceil32(arg1.length) + 128]) + _5483 + _5481 + -mem[64] + 160]
                else:
                    mem[_5483 + _5481 + 160] = mem[ceil32(arg1.length) + 160]
                    mem[_5483 + _5481 + 192 len floor32((32 * _9097) - 1)] = mem[ceil32(arg1.length) + 192 len floor32((32 * _9097) - 1)]
                    emit 0x928c9e25: mem[mem[64] len (32 * _9097) + _5483 + _5481 + -mem[64] + 160]
            else:
                mem[floor32(mem[96]) + mem[64] + 128] = mem[floor32(mem[96]) + mem[64] + -(mem[96] % 32) + 160 len mem[96] % 32]
                mem[mem[64] + 32] = floor32(mem[96]) + 160
                mem[floor32(_5483) + _5481 + 160] = mem[ceil32(arg1.length) + 128]
                _9105 = mem[ceil32(arg1.length) + 128]
                if not Mask(251, 0, mem[ceil32(arg1.length) + 128]):
                    emit 0x928c9e25: mem[mem[64] len (32 * mem[ceil32(arg1.length) + 128]) + floor32(_5483) + _5481 + -mem[64] + 192]
                else:
                    mem[floor32(_5483) + _5481 + 192] = mem[ceil32(arg1.length) + 160]
                    mem[floor32(_5483) + _5481 + 224 len floor32((32 * _9105) - 1)] = mem[ceil32(arg1.length) + 192 len floor32((32 * _9105) - 1)]
                    emit 0x928c9e25: mem[mem[64] len (32 * _9105) + floor32(_5483) + _5481 + -mem[64] + 192]
        return stor3[_3664]
    mem[0] = 2
    idx = 4 * documents.length + 1
    while sha3(2) + (4 * documents.length) > idx + sha3(mem[0]):
        uint256(stor[idx + sha3(mem[0])].field_0) = 0
        mem[0] = idx + sha3(mem[0])
        s = sha3(mem[0])
        while sha3(idx + sha3(mem[0])) + uint256(stor[idx + sha3(mem[0])].field_0) > s:
            uint256(stor[s].field_0) = 0
            mem[0] = s
            t = sha3(s)
            while sha3(s) + uint256(stor[s].field_0) > t:
                uint256(stor[t].field_0) = 0
                t = t + 1
                continue 
            s = s + 1
            continue 
        uint256(stor[idx + sha3(mem[0]) + 1].field_0) = 0
        mem[0] = idx + sha3(mem[0]) + 1
        s = sha3(mem[0])
        while sha3(idx + sha3(mem[0]) + 1) + uint256(stor[idx + sha3(mem[0]) + 1].field_0) > s:
            uint256(stor[s].field_0) = 0
            if 31 < stor[s].length:
                mem[0] = s
                t = sha3(s)
                while sha3(s) + (stor[s].length + 31 / 32) > t:
                    uint256(stor[t].field_0) = 0
                    t = t + 1
                    continue 
            s = s + 1
            continue 
        uint256(stor[idx + sha3(mem[0]) + 2].field_0) = 0
        mem[0] = idx + sha3(mem[0]) + 2
        s = sha3(idx + sha3(mem[0]) + 2)
        while sha3(idx + sha3(mem[0]) + 2) + uint256(stor[idx + sha3(mem[0]) + 2].field_0) > s:
            uint256(stor[s].field_0) = 0
            s = s + 1
            continue 
        uint256(stor[idx + sha3(mem[0]) + 3].field_0) = 0
        idx = idx + 4
        continue 
    mem[(32 * arg3.length) + (32 * arg2.length) + ceil32(arg1.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(32 * arg3.length) + (32 * arg2.length) + ceil32(arg1.length) + floor32(arg1.length) + 192] = 256^(-(arg1.length % 32) + 32) - 1 and mem[(32 * arg3.length) + (32 * arg2.length) + ceil32(arg1.length) + floor32(arg1.length) + 192 len -(arg1.length % 32) + 32], mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[(32 * arg3.length) + (32 * arg2.length) + ceil32(arg1.length) + arg1.length + 192] = 3
    _5487 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg3.length) + (32 * arg2.length) + ceil32(arg1.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 32])
    t = 0
    t = 0
    s = 0
    while s < arg2.length:
        uint256(stor[_5487].field_0)++
        if not uint256(stor[_5487].field_0) > uint256(stor[_5487].field_0) + 1:
            require s < uint256(stor[_5487].field_0)
            uint256(stor[s + sha3(_5487)].field_0)++
            if not uint256(stor[s + sha3(_5487)].field_0) > uint256(stor[s + sha3(_5487)].field_0) + 1:
                require s < mem[ceil32(arg1.length) + 128]
                require uint256(stor[_5487].field_0) < uint256(stor[_5487].field_0)
                require uint256(stor[s + sha3(_5487)].field_0) < uint256(stor[uint256(stor[_5487].field_0) + sha3(_5487)].field_0)
                uint256(stor[uint256(stor[s + sha3(_5487)].field_0) + sha3(uint256(stor[_5487].field_0) + sha3(_5487))].field_0) = mem[ceil32(arg1.length) + (32 * s) + 160]
                require s < uint256(stor[_5487].field_0)
                uint256(stor[s + sha3(_5487)].field_0)++
                if not uint256(stor[s + sha3(_5487)].field_0) > uint256(stor[s + sha3(_5487)].field_0) + 1:
                    require s < mem[(32 * arg2.length) + ceil32(arg1.length) + 160]
                    require uint256(stor[_5487].field_0) < uint256(stor[_5487].field_0)
                    require uint256(stor[s + sha3(_5487)].field_0) < uint256(stor[uint256(stor[_5487].field_0) + sha3(_5487)].field_0)
                    mem[0] = uint256(stor[_5487].field_0) + sha3(_5487)
                    uint256(stor[uint256(stor[s + sha3(_5487)].field_0) + sha3(uint256(stor[_5487].field_0) + sha3(_5487))].field_0) = mem[(32 * arg2.length) + ceil32(arg1.length) + (32 * s) + 192]
                    _7488 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_7488] = 0
                    uint256(stor1[_5487])++
                    if not uint256(stor1[_5487]) > uint256(stor1[_5487]) + 1:
                        require uint256(stor1[_5487]) < uint256(stor1[_5487])
                        bool(stor[uint256(stor1[_5487]) + sha3(_5487 + 1)].field_0) = 0
                        uint255(stor[uint256(stor1[_5487]) + sha3(_5487 + 1)].field_1) = 0
                        Mask(248, 0, stor[uint256(stor1[_5487]) + sha3(_5487 + 1)].field_8) = mem[_7488 + 32 len 31]
                        idx = sha3(uint256(stor1[_5487]) + sha3(_5487 + 1))
                        while sha3(uint256(stor1[_5487]) + sha3(_5487 + 1)) + (stor[uint256(stor1[_5487]) + sha3(_5487 + 1)].length + 31 / 32) > idx:
                            uint256(stor[idx].field_0) = 0
                            idx = idx + 1
                            continue 
                    else:
                        mem[0] = _5487 + 1
                        idx = uint256(stor1[_5487]) + sha3(mem[0]) + 1
                        while sha3(_5487 + 1) + uint256(stor1[_5487]) > idx:
                            uint256(stor[idx].field_0) = 0
                            if 31 < stor[idx].length:
                                mem[0] = idx
                                s = sha3(idx)
                                while sha3(idx) + (stor[idx].length + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                            idx = idx + 1
                            continue 
                        require uint256(stor1[_5487]) < uint256(stor1[_5487])
                        mem[0] = _5487 + 1
                        _9169 = mem[_7488]
                        mem[0] = uint256(stor1[_5487]) + sha3(_5487 + 1)
                        uint256(stor[uint256(stor1[_5487]) + sha3(_5487 + 1)].field_0) = (2 * _9169) + 1
                        t = sha3(uint256(stor1[_5487]) + sha3(_5487 + 1))
                        idx = _7488 + 32
                        while _7488 + _9169 + 32 > idx:
                            uint256(stor[t].field_0) = mem[idx]
                            t = t + 1
                            idx = idx + 32
                            continue 
                        idx = sha3(uint256(stor1[_5487]) + sha3(_5487 + 1)) + (Mask(251, 0, _9169 + 31) >> 5)
                        while sha3(uint256(stor1[_5487]) + sha3(_5487 + 1)) + (stor[uint256(stor1[_5487]) + sha3(_5487 + 1)].length + 31 / 32) > idx:
                            uint256(stor[idx].field_0) = 0
                            idx = idx + 1
                            continue 
                else:
                    t = uint256(stor[s + sha3(_5487)].field_0) + sha3(s + sha3(_5487)) + 1
                    while sha3(s + sha3(_5487)) + uint256(stor[s + sha3(_5487)].field_0) > t:
                        uint256(stor[t].field_0) = 0
                        t = t + 1
                        continue 
                    require s < mem[(32 * arg2.length) + ceil32(arg1.length) + 160]
                    require uint256(stor[_5487].field_0) < uint256(stor[_5487].field_0)
                    require uint256(stor[s + sha3(_5487)].field_0) < uint256(stor[uint256(stor[_5487].field_0) + sha3(_5487)].field_0)
                    mem[0] = uint256(stor[_5487].field_0) + sha3(_5487)
                    uint256(stor[uint256(stor[s + sha3(_5487)].field_0) + sha3(uint256(stor[_5487].field_0) + sha3(_5487))].field_0) = mem[(32 * arg2.length) + ceil32(arg1.length) + (32 * s) + 192]
                    _9221 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_9221] = 0
                    uint256(stor1[_5487])++
                    if not uint256(stor1[_5487]) > uint256(stor1[_5487]) + 1:
                        require uint256(stor1[_5487]) < uint256(stor1[_5487])
                        bool(stor[uint256(stor1[_5487]) + sha3(_5487 + 1)].field_0) = 0
                        uint255(stor[uint256(stor1[_5487]) + sha3(_5487 + 1)].field_1) = 0
                        Mask(248, 0, stor[uint256(stor1[_5487]) + sha3(_5487 + 1)].field_8) = mem[_9221 + 32 len 31]
                        idx = sha3(uint256(stor1[_5487]) + sha3(_5487 + 1))
                        while sha3(uint256(stor1[_5487]) + sha3(_5487 + 1)) + (stor[uint256(stor1[_5487]) + sha3(_5487 + 1)].length + 31 / 32) > idx:
                            uint256(stor[idx].field_0) = 0
                            idx = idx + 1
                            continue 
                    else:
                        mem[0] = _5487 + 1
                        idx = uint256(stor1[_5487]) + sha3(mem[0]) + 1
                        while sha3(_5487 + 1) + uint256(stor1[_5487]) > idx:
                            uint256(stor[idx].field_0) = 0
                            if 31 < stor[idx].length:
                                mem[0] = idx
                                s = sha3(idx)
                                while sha3(idx) + (stor[idx].length + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                            idx = idx + 1
                            continue 
                        require uint256(stor1[_5487]) < uint256(stor1[_5487])
                        mem[0] = _5487 + 1
                        _10912 = mem[_9221]
                        mem[0] = uint256(stor1[_5487]) + sha3(_5487 + 1)
                        uint256(stor[uint256(stor1[_5487]) + sha3(_5487 + 1)].field_0) = (2 * _10912) + 1
                        t = sha3(uint256(stor1[_5487]) + sha3(_5487 + 1))
                        idx = _9221 + 32
                        while _9221 + _10912 + 32 > idx:
                            uint256(stor[t].field_0) = mem[idx]
                            t = t + 1
                            idx = idx + 32
                            continue 
                        idx = sha3(uint256(stor1[_5487]) + sha3(_5487 + 1)) + (Mask(251, 0, _10912 + 31) >> 5)
                        while sha3(uint256(stor1[_5487]) + sha3(_5487 + 1)) + (stor[uint256(stor1[_5487]) + sha3(_5487 + 1)].length + 31 / 32) > idx:
                            uint256(stor[idx].field_0) = 0
                            idx = idx + 1
                            continue 
            else:
                t = uint256(stor[s + sha3(_5487)].field_0) + sha3(s + sha3(_5487)) + 1
                while sha3(s + sha3(_5487)) + uint256(stor[s + sha3(_5487)].field_0) > t:
                    uint256(stor[t].field_0) = 0
                    t = t + 1
                    continue 
                require s < mem[ceil32(arg1.length) + 128]
                require uint256(stor[_5487].field_0) < uint256(stor[_5487].field_0)
                require uint256(stor[s + sha3(_5487)].field_0) < uint256(stor[uint256(stor[_5487].field_0) + sha3(_5487)].field_0)
                uint256(stor[uint256(stor[s + sha3(_5487)].field_0) + sha3(uint256(stor[_5487].field_0) + sha3(_5487))].field_0) = mem[ceil32(arg1.length) + (32 * s) + 160]
                require s < uint256(stor[_5487].field_0)
                uint256(stor[s + sha3(_5487)].field_0)++
                if not uint256(stor[s + sha3(_5487)].field_0) > uint256(stor[s + sha3(_5487)].field_0) + 1:
                    require s < mem[(32 * arg2.length) + ceil32(arg1.length) + 160]
                    require uint256(stor[_5487].field_0) < uint256(stor[_5487].field_0)
                    require uint256(stor[s + sha3(_5487)].field_0) < uint256(stor[uint256(stor[_5487].field_0) + sha3(_5487)].field_0)
                    mem[0] = uint256(stor[_5487].field_0) + sha3(_5487)
                    uint256(stor[uint256(stor[s + sha3(_5487)].field_0) + sha3(uint256(stor[_5487].field_0) + sha3(_5487))].field_0) = mem[(32 * arg2.length) + ceil32(arg1.length) + (32 * s) + 192]
                    _9464 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_9464] = 0
                    uint256(stor1[_5487])++
                    if not uint256(stor1[_5487]) > uint256(stor1[_5487]) + 1:
                        require uint256(stor1[_5487]) < uint256(stor1[_5487])
                        bool(stor[uint256(stor1[_5487]) + sha3(_5487 + 1)].field_0) = 0
                        uint255(stor[uint256(stor1[_5487]) + sha3(_5487 + 1)].field_1) = 0
                        Mask(248, 0, stor[uint256(stor1[_5487]) + sha3(_5487 + 1)].field_8) = mem[_9464 + 32 len 31]
                        idx = sha3(uint256(stor1[_5487]) + sha3(_5487 + 1))
                        while sha3(uint256(stor1[_5487]) + sha3(_5487 + 1)) + (stor[uint256(stor1[_5487]) + sha3(_5487 + 1)].length + 31 / 32) > idx:
                            uint256(stor[idx].field_0) = 0
                            idx = idx + 1
                            continue 
                    else:
                        mem[0] = _5487 + 1
                        idx = uint256(stor1[_5487]) + sha3(mem[0]) + 1
                        while sha3(_5487 + 1) + uint256(stor1[_5487]) > idx:
                            uint256(stor[idx].field_0) = 0
                            if 31 < stor[idx].length:
                                mem[0] = idx
                                s = sha3(idx)
                                while sha3(idx) + (stor[idx].length + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                            idx = idx + 1
                            continue 
                        require uint256(stor1[_5487]) < uint256(stor1[_5487])
                        mem[0] = _5487 + 1
                        _10913 = mem[_9464]
                        mem[0] = uint256(stor1[_5487]) + sha3(_5487 + 1)
                        uint256(stor[uint256(stor1[_5487]) + sha3(_5487 + 1)].field_0) = (2 * _10913) + 1
                        t = sha3(uint256(stor1[_5487]) + sha3(_5487 + 1))
                        idx = _9464 + 32
                        while _9464 + _10913 + 32 > idx:
                            uint256(stor[t].field_0) = mem[idx]
                            t = t + 1
                            idx = idx + 32
                            continue 
                        idx = sha3(uint256(stor1[_5487]) + sha3(_5487 + 1)) + (Mask(251, 0, _10913 + 31) >> 5)
                        while sha3(uint256(stor1[_5487]) + sha3(_5487 + 1)) + (stor[uint256(stor1[_5487]) + sha3(_5487 + 1)].length + 31 / 32) > idx:
                            uint256(stor[idx].field_0) = 0
                            idx = idx + 1
                            continue 
                else:
                    t = uint256(stor[s + sha3(_5487)].field_0) + sha3(s + sha3(_5487)) + 1
                    while sha3(s + sha3(_5487)) + uint256(stor[s + sha3(_5487)].field_0) > t:
                        uint256(stor[t].field_0) = 0
                        t = t + 1
                        continue 
                    require s < mem[(32 * arg2.length) + ceil32(arg1.length) + 160]
                    require uint256(stor[_5487].field_0) < uint256(stor[_5487].field_0)
                    require uint256(stor[s + sha3(_5487)].field_0) < uint256(stor[uint256(stor[_5487].field_0) + sha3(_5487)].field_0)
                    mem[0] = uint256(stor[_5487].field_0) + sha3(_5487)
                    uint256(stor[uint256(stor[s + sha3(_5487)].field_0) + sha3(uint256(stor[_5487].field_0) + sha3(_5487))].field_0) = mem[(32 * arg2.length) + ceil32(arg1.length) + (32 * s) + 192]
                    _11025 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_11025] = 0
                    uint256(stor1[_5487])++
                    if not uint256(stor1[_5487]) > uint256(stor1[_5487]) + 1:
                        require uint256(stor1[_5487]) < uint256(stor1[_5487])
                        bool(stor[uint256(stor1[_5487]) + sha3(_5487 + 1)].field_0) = 0
                        uint255(stor[uint256(stor1[_5487]) + sha3(_5487 + 1)].field_1) = 0
                        Mask(248, 0, stor[uint256(stor1[_5487]) + sha3(_5487 + 1)].field_8) = mem[_11025 + 32 len 31]
                        idx = sha3(uint256(stor1[_5487]) + sha3(_5487 + 1))
                        while sha3(uint256(stor1[_5487]) + sha3(_5487 + 1)) + (stor[uint256(stor1[_5487]) + sha3(_5487 + 1)].length + 31 / 32) > idx:
                            uint256(stor[idx].field_0) = 0
                            idx = idx + 1
                            continue 
                    else:
                        mem[0] = _5487 + 1
                        idx = uint256(stor1[_5487]) + sha3(mem[0]) + 1
                        while sha3(_5487 + 1) + uint256(stor1[_5487]) > idx:
                            uint256(stor[idx].field_0) = 0
                            if 31 < stor[idx].length:
                                mem[0] = idx
                                s = sha3(idx)
                                while sha3(idx) + (stor[idx].length + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                            idx = idx + 1
                            continue 
                        require uint256(stor1[_5487]) < uint256(stor1[_5487])
                        mem[0] = _5487 + 1
                        _12441 = mem[_11025]
                        mem[0] = uint256(stor1[_5487]) + sha3(_5487 + 1)
                        uint256(stor[uint256(stor1[_5487]) + sha3(_5487 + 1)].field_0) = (2 * _12441) + 1
                        t = sha3(uint256(stor1[_5487]) + sha3(_5487 + 1))
                        idx = _11025 + 32
                        while _11025 + _12441 + 32 > idx:
                            uint256(stor[t].field_0) = mem[idx]
                            t = t + 1
                            idx = idx + 32
                            continue 
                        idx = sha3(uint256(stor1[_5487]) + sha3(_5487 + 1)) + (Mask(251, 0, _12441 + 31) >> 5)
                        while sha3(uint256(stor1[_5487]) + sha3(_5487 + 1)) + (stor[uint256(stor1[_5487]) + sha3(_5487 + 1)].length + 31 / 32) > idx:
                            uint256(stor[idx].field_0) = 0
                            idx = idx + 1
                            continue 
        else:
            mem[0] = _5487
            t = uint256(stor[_5487].field_0) + sha3(mem[0]) + 1
            while sha3(_5487) + uint256(stor[_5487].field_0) > t:
                uint256(stor[t].field_0) = 0
                mem[0] = t
                s = sha3(t)
                while sha3(t) + uint256(stor[t].field_0) > s:
                    uint256(stor[s].field_0) = 0
                    s = s + 1
                    continue 
                t = t + 1
                continue 
            require s < uint256(stor[_5487].field_0)
            uint256(stor[s + sha3(_5487)].field_0)++
            if not uint256(stor[s + sha3(_5487)].field_0) > uint256(stor[s + sha3(_5487)].field_0) + 1:
                require s < mem[ceil32(arg1.length) + 128]
                require uint256(stor[_5487].field_0) < uint256(stor[_5487].field_0)
                require uint256(stor[s + sha3(_5487)].field_0) < uint256(stor[uint256(stor[_5487].field_0) + sha3(_5487)].field_0)
                uint256(stor[uint256(stor[s + sha3(_5487)].field_0) + sha3(uint256(stor[_5487].field_0) + sha3(_5487))].field_0) = mem[ceil32(arg1.length) + (32 * s) + 160]
                require s < uint256(stor[_5487].field_0)
                uint256(stor[s + sha3(_5487)].field_0)++
                if not uint256(stor[s + sha3(_5487)].field_0) > uint256(stor[s + sha3(_5487)].field_0) + 1:
                    require s < mem[(32 * arg2.length) + ceil32(arg1.length) + 160]
                    require uint256(stor[_5487].field_0) < uint256(stor[_5487].field_0)
                    require uint256(stor[s + sha3(_5487)].field_0) < uint256(stor[uint256(stor[_5487].field_0) + sha3(_5487)].field_0)
                    mem[0] = uint256(stor[_5487].field_0) + sha3(_5487)
                    uint256(stor[uint256(stor[s + sha3(_5487)].field_0) + sha3(uint256(stor[_5487].field_0) + sha3(_5487))].field_0) = mem[(32 * arg2.length) + ceil32(arg1.length) + (32 * s) + 192]
                    _9585 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_9585] = 0
                    uint256(stor1[_5487])++
                    if not uint256(stor1[_5487]) > uint256(stor1[_5487]) + 1:
                        require uint256(stor1[_5487]) < uint256(stor1[_5487])
                        bool(stor[uint256(stor1[_5487]) + sha3(_5487 + 1)].field_0) = 0
                        uint255(stor[uint256(stor1[_5487]) + sha3(_5487 + 1)].field_1) = 0
                        Mask(248, 0, stor[uint256(stor1[_5487]) + sha3(_5487 + 1)].field_8) = mem[_9585 + 32 len 31]
                        idx = sha3(uint256(stor1[_5487]) + sha3(_5487 + 1))
                        while sha3(uint256(stor1[_5487]) + sha3(_5487 + 1)) + (stor[uint256(stor1[_5487]) + sha3(_5487 + 1)].length + 31 / 32) > idx:
                            uint256(stor[idx].field_0) = 0
                            idx = idx + 1
                            continue 
                    else:
                        mem[0] = _5487 + 1
                        idx = uint256(stor1[_5487]) + sha3(mem[0]) + 1
                        while sha3(_5487 + 1) + uint256(stor1[_5487]) > idx:
                            uint256(stor[idx].field_0) = 0
                            if 31 < stor[idx].length:
                                mem[0] = idx
                                s = sha3(idx)
                                while sha3(idx) + (stor[idx].length + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                            idx = idx + 1
                            continue 
                        require uint256(stor1[_5487]) < uint256(stor1[_5487])
                        mem[0] = _5487 + 1
                        _10915 = mem[_9585]
                        mem[0] = uint256(stor1[_5487]) + sha3(_5487 + 1)
                        uint256(stor[uint256(stor1[_5487]) + sha3(_5487 + 1)].field_0) = (2 * _10915) + 1
                        t = sha3(uint256(stor1[_5487]) + sha3(_5487 + 1))
                        idx = _9585 + 32
                        while _9585 + _10915 + 32 > idx:
                            uint256(stor[t].field_0) = mem[idx]
                            t = t + 1
                            idx = idx + 32
                            continue 
                        idx = sha3(uint256(stor1[_5487]) + sha3(_5487 + 1)) + (Mask(251, 0, _10915 + 31) >> 5)
                        while sha3(uint256(stor1[_5487]) + sha3(_5487 + 1)) + (stor[uint256(stor1[_5487]) + sha3(_5487 + 1)].length + 31 / 32) > idx:
                            uint256(stor[idx].field_0) = 0
                            idx = idx + 1
                            continue 
                else:
                    t = uint256(stor[s + sha3(_5487)].field_0) + sha3(s + sha3(_5487)) + 1
                    while sha3(s + sha3(_5487)) + uint256(stor[s + sha3(_5487)].field_0) > t:
                        uint256(stor[t].field_0) = 0
                        t = t + 1
                        continue 
                    require s < mem[(32 * arg2.length) + ceil32(arg1.length) + 160]
                    require uint256(stor[_5487].field_0) < uint256(stor[_5487].field_0)
                    require uint256(stor[s + sha3(_5487)].field_0) < uint256(stor[uint256(stor[_5487].field_0) + sha3(_5487)].field_0)
                    mem[0] = uint256(stor[_5487].field_0) + sha3(_5487)
                    uint256(stor[uint256(stor[s + sha3(_5487)].field_0) + sha3(uint256(stor[_5487].field_0) + sha3(_5487))].field_0) = mem[(32 * arg2.length) + ceil32(arg1.length) + (32 * s) + 192]
                    _11029 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_11029] = 0
                    uint256(stor1[_5487])++
                    if not uint256(stor1[_5487]) > uint256(stor1[_5487]) + 1:
                        require uint256(stor1[_5487]) < uint256(stor1[_5487])
                        bool(stor[uint256(stor1[_5487]) + sha3(_5487 + 1)].field_0) = 0
                        uint255(stor[uint256(stor1[_5487]) + sha3(_5487 + 1)].field_1) = 0
                        Mask(248, 0, stor[uint256(stor1[_5487]) + sha3(_5487 + 1)].field_8) = mem[_11029 + 32 len 31]
                        idx = sha3(uint256(stor1[_5487]) + sha3(_5487 + 1))
                        while sha3(uint256(stor1[_5487]) + sha3(_5487 + 1)) + (stor[uint256(stor1[_5487]) + sha3(_5487 + 1)].length + 31 / 32) > idx:
                            uint256(stor[idx].field_0) = 0
                            idx = idx + 1
                            continue 
                    else:
                        mem[0] = _5487 + 1
                        idx = uint256(stor1[_5487]) + sha3(mem[0]) + 1
                        while sha3(_5487 + 1) + uint256(stor1[_5487]) > idx:
                            uint256(stor[idx].field_0) = 0
                            if 31 < stor[idx].length:
                                mem[0] = idx
                                s = sha3(idx)
                                while sha3(idx) + (stor[idx].length + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                            idx = idx + 1
                            continue 
                        require uint256(stor1[_5487]) < uint256(stor1[_5487])
                        mem[0] = _5487 + 1
                        _12444 = mem[_11029]
                        mem[0] = uint256(stor1[_5487]) + sha3(_5487 + 1)
                        uint256(stor[uint256(stor1[_5487]) + sha3(_5487 + 1)].field_0) = (2 * _12444) + 1
                        t = sha3(uint256(stor1[_5487]) + sha3(_5487 + 1))
                        idx = _11029 + 32
                        while _11029 + _12444 + 32 > idx:
                            uint256(stor[t].field_0) = mem[idx]
                            t = t + 1
                            idx = idx + 32
                            continue 
                        idx = sha3(uint256(stor1[_5487]) + sha3(_5487 + 1)) + (Mask(251, 0, _12444 + 31) >> 5)
                        while sha3(uint256(stor1[_5487]) + sha3(_5487 + 1)) + (stor[uint256(stor1[_5487]) + sha3(_5487 + 1)].length + 31 / 32) > idx:
                            uint256(stor[idx].field_0) = 0
                            idx = idx + 1
                            continue 
            else:
                t = uint256(stor[s + sha3(_5487)].field_0) + sha3(s + sha3(_5487)) + 1
                while sha3(s + sha3(_5487)) + uint256(stor[s + sha3(_5487)].field_0) > t:
                    uint256(stor[t].field_0) = 0
                    t = t + 1
                    continue 
                require s < mem[ceil32(arg1.length) + 128]
                require uint256(stor[_5487].field_0) < uint256(stor[_5487].field_0)
                require uint256(stor[s + sha3(_5487)].field_0) < uint256(stor[uint256(stor[_5487].field_0) + sha3(_5487)].field_0)
                uint256(stor[uint256(stor[s + sha3(_5487)].field_0) + sha3(uint256(stor[_5487].field_0) + sha3(_5487))].field_0) = mem[ceil32(arg1.length) + (32 * s) + 160]
                require s < uint256(stor[_5487].field_0)
                uint256(stor[s + sha3(_5487)].field_0)++
                if not uint256(stor[s + sha3(_5487)].field_0) > uint256(stor[s + sha3(_5487)].field_0) + 1:
                    require s < mem[(32 * arg2.length) + ceil32(arg1.length) + 160]
                    require uint256(stor[_5487].field_0) < uint256(stor[_5487].field_0)
                    require uint256(stor[s + sha3(_5487)].field_0) < uint256(stor[uint256(stor[_5487].field_0) + sha3(_5487)].field_0)
                    mem[0] = uint256(stor[_5487].field_0) + sha3(_5487)
                    uint256(stor[uint256(stor[s + sha3(_5487)].field_0) + sha3(uint256(stor[_5487].field_0) + sha3(_5487))].field_0) = mem[(32 * arg2.length) + ceil32(arg1.length) + (32 * s) + 192]
                    _11484 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_11484] = 0
                    uint256(stor1[_5487])++
                    if not uint256(stor1[_5487]) > uint256(stor1[_5487]) + 1:
                        require uint256(stor1[_5487]) < uint256(stor1[_5487])
                        bool(stor[uint256(stor1[_5487]) + sha3(_5487 + 1)].field_0) = 0
                        uint255(stor[uint256(stor1[_5487]) + sha3(_5487 + 1)].field_1) = 0
                        Mask(248, 0, stor[uint256(stor1[_5487]) + sha3(_5487 + 1)].field_8) = mem[_11484 + 32 len 31]
                        idx = sha3(uint256(stor1[_5487]) + sha3(_5487 + 1))
                        while sha3(uint256(stor1[_5487]) + sha3(_5487 + 1)) + (stor[uint256(stor1[_5487]) + sha3(_5487 + 1)].length + 31 / 32) > idx:
                            uint256(stor[idx].field_0) = 0
                            idx = idx + 1
                            continue 
                    else:
                        mem[0] = _5487 + 1
                        idx = uint256(stor1[_5487]) + sha3(mem[0]) + 1
                        while sha3(_5487 + 1) + uint256(stor1[_5487]) > idx:
                            uint256(stor[idx].field_0) = 0
                            if 31 < stor[idx].length:
                                mem[0] = idx
                                s = sha3(idx)
                                while sha3(idx) + (stor[idx].length + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                            idx = idx + 1
                            continue 
                        require uint256(stor1[_5487]) < uint256(stor1[_5487])
                        mem[0] = _5487 + 1
                        _12445 = mem[_11484]
                        mem[0] = uint256(stor1[_5487]) + sha3(_5487 + 1)
                        uint256(stor[uint256(stor1[_5487]) + sha3(_5487 + 1)].field_0) = (2 * _12445) + 1
                        t = sha3(uint256(stor1[_5487]) + sha3(_5487 + 1))
                        idx = _11484 + 32
                        while _11484 + _12445 + 32 > idx:
                            uint256(stor[t].field_0) = mem[idx]
                            t = t + 1
                            idx = idx + 32
                            continue 
                        idx = sha3(uint256(stor1[_5487]) + sha3(_5487 + 1)) + (Mask(251, 0, _12445 + 31) >> 5)
                        while sha3(uint256(stor1[_5487]) + sha3(_5487 + 1)) + (stor[uint256(stor1[_5487]) + sha3(_5487 + 1)].length + 31 / 32) > idx:
                            uint256(stor[idx].field_0) = 0
                            idx = idx + 1
                            continue 
                else:
                    t = uint256(stor[s + sha3(_5487)].field_0) + sha3(s + sha3(_5487)) + 1
                    while sha3(s + sha3(_5487)) + uint256(stor[s + sha3(_5487)].field_0) > t:
                        uint256(stor[t].field_0) = 0
                        t = t + 1
                        continue 
                    require s < mem[(32 * arg2.length) + ceil32(arg1.length) + 160]
                    require uint256(stor[_5487].field_0) < uint256(stor[_5487].field_0)
                    require uint256(stor[s + sha3(_5487)].field_0) < uint256(stor[uint256(stor[_5487].field_0) + sha3(_5487)].field_0)
                    mem[0] = uint256(stor[_5487].field_0) + sha3(_5487)
                    uint256(stor[uint256(stor[s + sha3(_5487)].field_0) + sha3(uint256(stor[_5487].field_0) + sha3(_5487))].field_0) = mem[(32 * arg2.length) + ceil32(arg1.length) + (32 * s) + 192]
                    _12601 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_12601] = 0
                    uint256(stor1[_5487])++
                    if not uint256(stor1[_5487]) > uint256(stor1[_5487]) + 1:
                        require uint256(stor1[_5487]) < uint256(stor1[_5487])
                        bool(stor[uint256(stor1[_5487]) + sha3(_5487 + 1)].field_0) = 0
                        uint255(stor[uint256(stor1[_5487]) + sha3(_5487 + 1)].field_1) = 0
                        Mask(248, 0, stor[uint256(stor1[_5487]) + sha3(_5487 + 1)].field_8) = mem[_12601 + 32 len 31]
                        idx = sha3(uint256(stor1[_5487]) + sha3(_5487 + 1))
                        while sha3(uint256(stor1[_5487]) + sha3(_5487 + 1)) + (stor[uint256(stor1[_5487]) + sha3(_5487 + 1)].length + 31 / 32) > idx:
                            uint256(stor[idx].field_0) = 0
                            idx = idx + 1
                            continue 
                    else:
                        mem[0] = _5487 + 1
                        idx = uint256(stor1[_5487]) + sha3(mem[0]) + 1
                        while sha3(_5487 + 1) + uint256(stor1[_5487]) > idx:
                            uint256(stor[idx].field_0) = 0
                            if 31 < stor[idx].length:
                                mem[0] = idx
                                s = sha3(idx)
                                while sha3(idx) + (stor[idx].length + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                            idx = idx + 1
                            continue 
                        require uint256(stor1[_5487]) < uint256(stor1[_5487])
                        mem[0] = _5487 + 1
                        _13588 = mem[_12601]
                        mem[0] = uint256(stor1[_5487]) + sha3(_5487 + 1)
                        uint256(stor[uint256(stor1[_5487]) + sha3(_5487 + 1)].field_0) = (2 * _13588) + 1
                        t = sha3(uint256(stor1[_5487]) + sha3(_5487 + 1))
                        idx = _12601 + 32
                        while _12601 + _13588 + 32 > idx:
                            uint256(stor[t].field_0) = mem[idx]
                            t = t + 1
                            idx = idx + 32
                            continue 
                        idx = sha3(uint256(stor1[_5487]) + sha3(_5487 + 1)) + (Mask(251, 0, _13588 + 31) >> 5)
                        while sha3(uint256(stor1[_5487]) + sha3(_5487 + 1)) + (stor[uint256(stor1[_5487]) + sha3(_5487 + 1)].length + 31 / 32) > idx:
                            uint256(stor[idx].field_0) = 0
                            idx = idx + 1
                            continue 
        uint256(documents[_5487].field_0)++
        if not uint256(documents[_5487].field_0) <= uint256(documents[_5487].field_0) + 1:
            idx = uint256(documents[_5487].field_0) + sha3(_5487 + 2) + 1
            while sha3(_5487 + 2) + uint256(documents[_5487].field_0) > idx:
                uint256(stor[idx].field_0) = 0
                idx = idx + 1
                continue 
        require uint256(documents[_5487].field_0) < uint256(documents[_5487].field_0)
        uint256(stor[uint256(stor2[_5487].field_0) + sha3(_5487 + 2)].field_0) = 0
        require s < mem[ceil32(arg1.length) + 128]
        mem[32] = 4
        uint256(sub_57324cd2[mem[ceil32(arg1.length) + (32 * s) + 160]].field_0)++
        if not uint256(sub_57324cd2[mem[ceil32(arg1.length) + (32 * s) + 160]].field_0) <= uint256(sub_57324cd2[mem[ceil32(arg1.length) + (32 * s) + 160]].field_0) + 1:
            t = uint256(sub_57324cd2[mem[ceil32(arg1.length) + (32 * s) + 160]].field_0) + sha3(sha3(mem[ceil32(arg1.length) + (32 * s) + 160], 4)) + 1
            while sha3(sha3(mem[ceil32(arg1.length) + (32 * s) + 160], 4)) + uint256(sub_57324cd2[mem[ceil32(arg1.length) + (32 * s) + 160]].field_0) > t:
                uint256(stor[t].field_0) = 0
                t = t + 1
                continue 
        mem[0] = sha3(mem[ceil32(arg1.length) + (32 * s) + 160], 4)
        uint256(sub_57324cd2[mem[ceil32(arg1.length) + (32 * s) + 160]][uint256(sub_57324cd2[mem[ceil32(arg1.length) + (32 * s) + 160]].field_0)].field_0) = documents.length
        t = uint256(stor[s + sha3(_5487)].field_0)
        t = uint256(stor[_5487].field_0)
        s = s + 1
        continue 
    stor3[_5487] = block.timestamp
    _7298 = mem[64]
    mem[mem[64] + 64] = block.timestamp
    mem[mem[64]] = 96
    mem[mem[64] + 96] = mem[96]
    _7300 = mem[96]
    if not mem[96]:
        if not mem[96] % 32:
            mem[mem[64] + 32] = mem[96] + 128
            mem[mem[96] + _7298 + 128] = mem[ceil32(arg1.length) + 128]
            _7310 = mem[ceil32(arg1.length) + 128]
            if not Mask(251, 0, mem[ceil32(arg1.length) + 128]):
                emit 0x928c9e25: mem[mem[64] len (32 * mem[ceil32(arg1.length) + 128]) + mem[96] + _7298 + -mem[64] + 160]
            else:
                mem[mem[96] + _7298 + 160] = mem[ceil32(arg1.length) + 160]
                mem[mem[96] + _7298 + 192 len floor32((32 * _7310) - 1)] = mem[ceil32(arg1.length) + 192 len floor32((32 * _7310) - 1)]
                emit 0x928c9e25: mem[mem[64] len (32 * _7310) + mem[96] + _7298 + -mem[64] + 160]
        else:
            mem[floor32(mem[96]) + mem[64] + 128] = mem[floor32(mem[96]) + mem[64] + -(mem[96] % 32) + 160 len mem[96] % 32]
            mem[mem[64] + 32] = floor32(mem[96]) + 160
            mem[floor32(_7300) + _7298 + 160] = mem[ceil32(arg1.length) + 128]
            _7321 = mem[ceil32(arg1.length) + 128]
            if not Mask(251, 0, mem[ceil32(arg1.length) + 128]):
                emit 0x928c9e25: mem[mem[64] len (32 * mem[ceil32(arg1.length) + 128]) + floor32(_7300) + _7298 + -mem[64] + 192]
            else:
                mem[floor32(_7300) + _7298 + 192] = mem[ceil32(arg1.length) + 160]
                mem[floor32(_7300) + _7298 + 224 len floor32((32 * _7321) - 1)] = mem[ceil32(arg1.length) + 192 len floor32((32 * _7321) - 1)]
                emit 0x928c9e25: mem[mem[64] len (32 * _7321) + floor32(_7300) + _7298 + -mem[64] + 192]
    else:
        mem[mem[64] + 128] = mem[128]
        mem[mem[64] + 160 len floor32(mem[96] - 1)] = mem[160 len floor32(mem[96] - 1)]
        if not mem[96] % 32:
            mem[mem[64] + 32] = mem[96] + 128
            mem[_7300 + _7298 + 128] = mem[ceil32(arg1.length) + 128]
            _10810 = mem[ceil32(arg1.length) + 128]
            if not Mask(251, 0, mem[ceil32(arg1.length) + 128]):
                emit 0x928c9e25: mem[mem[64] len (32 * mem[ceil32(arg1.length) + 128]) + _7300 + _7298 + -mem[64] + 160]
            else:
                mem[_7300 + _7298 + 160] = mem[ceil32(arg1.length) + 160]
                mem[_7300 + _7298 + 192 len floor32((32 * _10810) - 1)] = mem[ceil32(arg1.length) + 192 len floor32((32 * _10810) - 1)]
                emit 0x928c9e25: mem[mem[64] len (32 * _10810) + _7300 + _7298 + -mem[64] + 160]
        else:
            mem[floor32(mem[96]) + mem[64] + 128] = mem[floor32(mem[96]) + mem[64] + -(mem[96] % 32) + 160 len mem[96] % 32]
            mem[mem[64] + 32] = floor32(mem[96]) + 160
            mem[floor32(_7300) + _7298 + 160] = mem[ceil32(arg1.length) + 128]
            _10817 = mem[ceil32(arg1.length) + 128]
            if not Mask(251, 0, mem[ceil32(arg1.length) + 128]):
                emit 0x928c9e25: mem[mem[64] len (32 * mem[ceil32(arg1.length) + 128]) + floor32(_7300) + _7298 + -mem[64] + 192]
            else:
                mem[floor32(_7300) + _7298 + 192] = mem[ceil32(arg1.length) + 160]
                mem[floor32(_7300) + _7298 + 224 len floor32((32 * _10817) - 1)] = mem[ceil32(arg1.length) + 192 len floor32((32 * _10817) - 1)]
                emit 0x928c9e25: mem[mem[64] len (32 * _10817) + floor32(_7300) + _7298 + -mem[64] + 192]
    return stor3[_5487]
}



}
