contract main {


// =======================  Init code  ======================


uint32 stor0; offset 160
address stor0;

function _fallback() payable {
    uint32(stor0.field_160) = 0
    require not msg.value
    address(stor0.field_0) = msg.sender
    return code.data[73 len 8841]
}



// =====================  Runtime code  =====================


#
#  - sub_7495684a(?)
#  - sub_f65212f8(?)
#
uint32 stor0; offset 160
address getOwner;
array of struct stor1;
mapping of struct sub_69485cca;
mapping of uint256 stor3;

function GetOwner() {
    return getOwner
}

function sub_5e5dddc8(?) {
    return bool(uint8(sub_69485cca[address(msg.sender)].field_0))
}

function sub_69485cca(?) {
    require uint8(sub_69485cca[address(msg.sender)].field_0)
    return uint32(sub_69485cca[address(msg.sender)].field_8)
}

function _fallback() payable {
    revert 
}

function sub_653c9fa9(?) {
    if getOwner != msg.sender:
        return 0
    return stor0
}

function sub_fffda6a8(?) {
    if getOwner != msg.sender:
        return 0
    if msg.value:
        return 0
    return stor3[arg2 << 224][arg1 << 224][arg3]
}

function sub_8ff11630(?) {
    if bool(uint8(sub_69485cca[address(msg.sender)].field_0)) != 1:
        return 0
    return stor3[uint32(stor2[address(msg.sender)].field_0)][arg1 << 224][arg2]
}

function sub_deae27ae(?) {
    if bool(uint8(sub_69485cca[address(msg.sender)].field_0)) != 1:
        return 0
    return stor3[arg1 << 224][uint32(stor2[address(msg.sender)].field_0)][arg2]
}

function sub_6ad4f788(?) {
    if getOwner != msg.sender:
        return 0, 0, 0, 160, 0, 0
    if msg.value:
        return 0, 0, 0, 160, 0, 0
    require arg1 < stor1.length
    if uint256(stor1[arg1].field_256):
        mem[160] = uint32(stor[sha3((7 * arg1) + ('name', 'stor1', 1) + 1)].field_0)
        idx = 160
        s = 0
        while (32 * uint256(stor1[arg1].field_256)) + 128 > idx:
            mem[idx + 32] = uint32(stor[sha3((7 * arg1) + ('name', 'stor1', 1) + 1)].field_8 * (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s))
            idx = idx + 32
            s = (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s)
            continue 
    mem[(32 * uint256(stor1[arg1].field_256)) + 160] = uint32(stor1[arg1].field_0)
    mem[(32 * uint256(stor1[arg1].field_256)) + 192] = address(stor1[arg1].field_32)
    mem[(32 * uint256(stor1[arg1].field_256)) + 224] = bool(uint8(stor1[arg1].field_192))
    mem[(32 * uint256(stor1[arg1].field_256)) + 288] = uint32(stor1[arg1].field_512)
    mem[(32 * uint256(stor1[arg1].field_256)) + 256] = 160
    mem[(32 * uint256(stor1[arg1].field_256)) + 320] = uint256(stor1[arg1].field_256)
    if Mask(251, 0, stor1[arg1].field_256):
        mem[(32 * uint256(stor1[arg1].field_256)) + 352] = mem[160]
        mem[(32 * uint256(stor1[arg1].field_256)) + 384 len floor32((32 * uint256(stor1[arg1].field_256)) - 1)] = mem[192 len floor32((32 * uint256(stor1[arg1].field_256)) - 1)]
    return uint32(stor1[arg1].field_0), 
           address(stor1[arg1].field_0),
           bool(uint8(stor1[arg1].field_192)),
           Array(len=uint256(stor1[arg1].field_256), data=mem[(32 * uint256(stor1[arg1].field_256)) + 352 len 32 * uint256(stor1[arg1].field_256)]),
           uint32(stor1[arg1].field_512)
}

function sub_2ccd6b09(?) {
    if bool(uint8(sub_69485cca[address(msg.sender)].field_0)) != 1:
        return ''
    require uint32(sub_69485cca[address(msg.sender)].field_8) < stor1.length
    if uint256(stor1[uint32(stor2[address(msg.sender)].field_8)].field_256):
        mem[160] = uint32(stor[sha3((7 * uint32(stor2[address(msg.sender)].field_8)) + ('name', 'stor1', 1) + 1)].field_0)
        idx = 160
        s = 0
        while (32 * uint256(stor1[uint32(stor2[address(msg.sender)].field_8)].field_256)) + 128 > idx:
            mem[idx + 32] = uint32(stor[sha3((7 * uint32(stor2[address(msg.sender)].field_8)) + ('name', 'stor1', 1) + 1)].field_8 * (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s))
            idx = idx + 32
            s = (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s)
            continue 
    mem[(32 * uint256(stor1[uint32(stor2[address(msg.sender)].field_8)].field_256)) + 160] = 32
    mem[(32 * uint256(stor1[uint32(stor2[address(msg.sender)].field_8)].field_256)) + 192] = uint256(stor1[uint32(stor2[address(msg.sender)].field_8)].field_256)
    if Mask(251, 0, stor1[uint32(stor2[address(msg.sender)].field_8)].field_256):
        mem[(32 * uint256(stor1[uint32(stor2[address(msg.sender)].field_8)].field_256)) + 224] = mem[160]
        mem[(32 * uint256(stor1[uint32(stor2[address(msg.sender)].field_8)].field_256)) + 256 len floor32((32 * uint256(stor1[uint32(stor2[address(msg.sender)].field_8)].field_256)) - 1)] = mem[192 len floor32((32 * uint256(stor1[uint32(stor2[address(msg.sender)].field_8)].field_256)) - 1)]
    return Array(len=uint256(stor1[uint32(stor2[address(msg.sender)].field_8)].field_256), data=mem[(32 * uint256(stor1[uint32(stor2[address(msg.sender)].field_8)].field_256)) + 224 len 32 * uint256(stor1[uint32(stor2[address(msg.sender)].field_8)].field_256)]), 
}

function sub_43a67943(?) {
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    s = 128
    idx = 0
    while idx < arg1.length:
        _47 = mem[64]
        mem[64] = mem[64] + 64
        mem[_47 len 64] = call.data[arg1 + (64 * idx) + 36 len 64]
        mem[s] = _47
        s = s + 32
        idx = idx + 1
        continue 
    if msg.value:
        return 0
    mem[0] = msg.sender
    mem[32] = 2
    if bool(uint8(sub_69485cca[address(msg.sender)].field_0)) != 1:
        return 0
    require arg3 > 0
    require mem[96] - 1 < mem[96]
    require 0 < mem[96]
    require mem[mem[128] + 28 len 4] == mem[mem[(32 * mem[96] - 1) + 128] + 60 len 4]
    idx = 0
    while uint32(idx) < mem[96]:
        if uint32(idx + 1) == mem[96]:
            require uint32(idx) < mem[96]
            mem[0] = mem[mem[(32 * uint32(idx)) + 128] + 28 len 4]
            mem[32] = 3
            require uint32(idx) < mem[96]
            _107 = sha3(mem[mem[(32 * uint32(idx)) + 128] + 60 len 4], sha3(mem[0], 3))
            mem[0] = arg2
            mem[32] = _107
            if uint256(stor[_107][arg2]) >= arg3:
                idx = idx + 1
                continue 
        else:
            require uint32(idx + 1) < mem[96]
            require uint32(idx) < mem[96]
            require mem[mem[(32 * uint32(idx)) + 128] + 60 len 4] == mem[mem[(32 * uint32(idx + 1)) + 128] + 28 len 4]
            require uint32(idx) < mem[96]
            mem[0] = mem[mem[(32 * uint32(idx)) + 128] + 28 len 4]
            mem[32] = 3
            require uint32(idx) < mem[96]
            _118 = sha3(mem[mem[(32 * uint32(idx)) + 128] + 60 len 4], sha3(mem[0], 3))
            mem[0] = arg2
            mem[32] = _118
            if uint256(stor[_118][arg2]) >= arg3:
                idx = idx + 1
                continue 
        return 0
    return 1
}

function sub_59c22ea5(?) {
    if bool(uint8(sub_69485cca[address(msg.sender)].field_0)) != 1:
        return ''
    require uint32(sub_69485cca[address(msg.sender)].field_8) < stor1.length
    if uint256(stor[(7 * uint32(stor2[address(msg.sender)].field_8)) + ('name', 'stor1', 1) + 3][arg1 << 224].field_256):
        mem[160] = uint256(stor[(7 * uint32(stor2[address(msg.sender)].field_8)) + ('name', 'stor1', 1) + 3][arg1 << 224][1].field_0)
        idx = 160
        s = 0
        while (32 * uint256(stor[(7 * uint32(stor2[address(msg.sender)].field_8)) + ('name', 'stor1', 1) + 3][arg1 << 224].field_256)) + 128 > idx:
            mem[idx + 32] = uint256(stor[(7 * uint32(stor2[address(msg.sender)].field_8)) + ('name', 'stor1', 1) + 3][arg1 << 224][s + 1].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * uint256(stor[(7 * uint32(stor2[address(msg.sender)].field_8)) + ('name', 'stor1', 1) + 3][arg1 << 224].field_256)) + 160] = 32
    mem[(32 * uint256(stor[(7 * uint32(stor2[address(msg.sender)].field_8)) + ('name', 'stor1', 1) + 3][arg1 << 224].field_256)) + 192] = uint256(stor[(7 * uint32(stor2[address(msg.sender)].field_8)) + ('name', 'stor1', 1) + 3][arg1 << 224].field_256)
    if Mask(251, 0, stor[(7 * uint32(stor2[address(msg.sender)].field_8)) + ('name', 'stor1', 1) + 3][arg1 << 224].field_256):
        mem[(32 * uint256(stor[(7 * uint32(stor2[address(msg.sender)].field_8)) + ('name', 'stor1', 1) + 3][arg1 << 224].field_256)) + 224] = mem[160]
        mem[(32 * uint256(stor[(7 * uint32(stor2[address(msg.sender)].field_8)) + ('name', 'stor1', 1) + 3][arg1 << 224].field_256)) + 256 len floor32((32 * uint256(stor[(7 * uint32(stor2[address(msg.sender)].field_8)) + ('name', 'stor1', 1) + 3][arg1 << 224].field_256)) - 1)] = mem[192 len floor32((32 * uint256(stor[(7 * uint32(stor2[address(msg.sender)].field_8)) + ('name', 'stor1', 1) + 3][arg1 << 224].field_256)) - 1)]
    return Array(len=uint256(stor[(7 * uint32(stor2[address(msg.sender)].field_8)) + ('name', 'stor1', 1) + 3][arg1 << 224].field_256), data=mem[(32 * uint256(stor[(7 * uint32(stor2[address(msg.sender)].field_8)) + ('name', 'stor1', 1) + 3][arg1 << 224].field_256)) + 224 len 32 * uint256(stor[(7 * uint32(stor2[address(msg.sender)].field_8)) + ('name', 'stor1', 1) + 3][arg1 << 224].field_256)]), 
}

function sub_30a9ba65(?) {
    require not uint8(sub_69485cca[address(msg.sender)].field_0)
    stor1.length++
    if not stor1.length <= stor1.length + 1:
        mem[0] = 1
        idx = (7 * stor1.length) + 7
        while sha3(1) + (7 * stor1.length) > idx + sha3(mem[0]):
            Mask(200, 0, stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            s = sha3(idx + sha3(mem[0]) + 1)
            while sha3(idx + sha3(mem[0]) + 1) + (uint256(stor[idx + sha3(mem[0]) + 1]) + 7 / 8) > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
            uint32(stor[idx + sha3(mem[0]) + 2]) = 0
            uint256(stor[idx + sha3(mem[0]) + 4]) = 0
            mem[0] = idx + sha3(mem[0]) + 4
            if sha3(idx + sha3(mem[0]) + 4) + (uint256(stor[idx + sha3(mem[0]) + 4]) + 7 / 8) > sha3(idx + sha3(mem[0]) + 4):
                uint256(stor[sha3(idx + sha3(mem[0]) + 4)]) = 0
                s = sha3(idx + sha3(mem[0]) + 4) + 1
                while sha3(idx + sha3(mem[0]) + 4) + (uint256(stor[idx + sha3(mem[0]) + 4]) + 7 / 8) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            uint32(stor[idx + sha3(mem[0]) + 5]) = 0
            idx = idx + 7
            continue 
    uint32(stor1[stor1.length].field_0) = stor0
    address(stor1[stor1.length].field_32) = msg.sender
    uint8(stor1[stor1.length].field_192) = 1
    stor1[stor1.length].field_200 % 72057594037927936 = 0
    uint256(stor1[stor1.length].field_256) = 0
    idx = 0
    while uint256(stor1[stor1.length].field_256) + 7 / 8 > idx:
        uint32(stor[idx + sha3((7 * stor1.length) + ('name', 'stor1', 1) + 1)].field_0) = 0
        idx = idx + 1
        continue 
    uint32(stor1[stor1.length].field_512) = 0
    stor1[stor1.length].field_768 % 1 = 0
    uint256(stor1[stor1.length].field_1024) = 0
    if sha3((7 * stor1.length) + sha3(1) + 4) + (uint256(stor1[stor1.length].field_1024) + 7 / 8) > sha3((7 * stor1.length) + sha3(1) + 4):
        uint32(stor[sha3((7 * stor1.length) + ('name', 'stor1', 1) + 4)].field_0) = 0
        idx = 1
        while uint256(stor1[stor1.length].field_1024) + 7 / 8 > idx:
            uint32(stor[idx + sha3((7 * stor1.length) + ('name', 'stor1', 1) + 4)].field_0) = 0
            idx = idx + 1
            continue 
    uint32(stor1[stor1.length].field_1280) = 0
    stor1[stor1.length].field_1536 % 1 = 0
    uint8(sub_69485cca[address(msg.sender)].field_0) = 1
    Mask(248, 0, sub_69485cca[address(msg.sender)].field_8) = stor0
    sub_69485cca[address(msg.sender)].field_256 % 1 = 0
    stor0 = uint32(stor0 + 1)
    return stor0
}

function sub_c98a400f(?) {
    if getOwner != msg.sender:
        return 0, 0, 96, 0
    if msg.value:
        return 0, 0, 96, 0
    require arg1 < stor1.length
    require uint32(stor[(7 * arg1) + ('name', 'stor1', 1) + 3][arg2 << 224].field_8) < uint256(stor1[arg1].field_256)
    if uint256(stor[(7 * arg1) + ('name', 'stor1', 1) + 3][arg2 << 224].field_256):
        mem[160] = uint256(stor[(7 * arg1) + ('name', 'stor1', 1) + 3][arg2 << 224][1].field_0)
        idx = 160
        s = 0
        while (32 * uint256(stor[(7 * arg1) + ('name', 'stor1', 1) + 3][arg2 << 224].field_256)) + 128 > idx:
            mem[idx + 32] = uint256(stor[(7 * arg1) + ('name', 'stor1', 1) + 3][arg2 << 224][s + 1].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * uint256(stor[(7 * arg1) + ('name', 'stor1', 1) + 3][arg2 << 224].field_256)) + 160] = stor(Mask(29, 11, stor[('map', ('mask_shl', 32, 0, 224, ('param', 'arg2')), ('add', 3, ('mul', 7, ('param', 'arg1')), ('name', 'stor1', 1)))]) + sha3((7 * arg1) + ('name', 'stor1', 1) + 1))[stor[(7 * arg1) + ('name', 'stor1', 1) + 3][arg2 << 224].field_8 % 8]
    mem[(32 * uint256(stor[(7 * arg1) + ('name', 'stor1', 1) + 3][arg2 << 224].field_256)) + 192] = bool(uint8(stor[(7 * arg1) + ('name', 'stor1', 1) + 3][arg2 << 224].field_0))
    mem[(32 * uint256(stor[(7 * arg1) + ('name', 'stor1', 1) + 3][arg2 << 224].field_256)) + 224] = 96
    mem[(32 * uint256(stor[(7 * arg1) + ('name', 'stor1', 1) + 3][arg2 << 224].field_256)) + 256] = uint256(stor[(7 * arg1) + ('name', 'stor1', 1) + 3][arg2 << 224].field_256)
    if Mask(251, 0, stor[(7 * arg1) + ('name', 'stor1', 1) + 3][arg2 << 224].field_256):
        mem[(32 * uint256(stor[(7 * arg1) + ('name', 'stor1', 1) + 3][arg2 << 224].field_256)) + 288] = mem[160]
        mem[(32 * uint256(stor[(7 * arg1) + ('name', 'stor1', 1) + 3][arg2 << 224].field_256)) + 320 len floor32((32 * uint256(stor[(7 * arg1) + ('name', 'stor1', 1) + 3][arg2 << 224].field_256)) - 1)] = mem[192 len floor32((32 * uint256(stor[(7 * arg1) + ('name', 'stor1', 1) + 3][arg2 << 224].field_256)) - 1)]
    return uint32(stor[stor[(7 * arg1) + ('name', 'stor1', 1) + 3][arg2 << 224].field_11 % 536870912 + sha3((7 * arg1) + ('name', 'stor1', 1) + 1)].field_(32 * stor[(7 * arg1) + ('name', 'stor1', 1) + 3][arg2 << 224].field_8 % 8) - 224), 
           bool(uint8(stor[(7 * arg1) + ('name', 'stor1', 1) + 3][arg2 << 224].field_0)),
           Array(len=uint256(stor[(7 * arg1) + ('name', 'stor1', 1) + 3][arg2 << 224].field_256), data=mem[(32 * uint256(stor[(7 * arg1) + ('name', 'stor1', 1) + 3][arg2 << 224].field_256)) + 288 len 32 * uint256(stor[(7 * arg1) + ('name', 'stor1', 1) + 3][arg2 << 224].field_256)])
}

function sub_cb0d7927(?) {
    if bool(uint8(sub_69485cca[address(msg.sender)].field_0)) != 1:
        return ''
    require uint32(sub_69485cca[address(msg.sender)].field_8) < stor1.length
    if not uint256(stor1[uint32(stor2[address(msg.sender)].field_8)].field_1024):
        mem[(32 * uint256(stor1[uint32(stor2[address(msg.sender)].field_8)].field_1024)) + 160] = 32
        mem[(32 * uint256(stor1[uint32(stor2[address(msg.sender)].field_8)].field_1024)) + 192] = uint256(stor1[uint32(stor2[address(msg.sender)].field_8)].field_1024)
        if Mask(251, 0, stor1[uint32(stor2[address(msg.sender)].field_8)].field_1024):
            mem[(32 * uint256(stor1[uint32(stor2[address(msg.sender)].field_8)].field_1024)) + 224] = mem[160]
            mem[(32 * uint256(stor1[uint32(stor2[address(msg.sender)].field_8)].field_1024)) + 256 len floor32((32 * uint256(stor1[uint32(stor2[address(msg.sender)].field_8)].field_1024)) - 1)] = mem[192 len floor32((32 * uint256(stor1[uint32(stor2[address(msg.sender)].field_8)].field_1024)) - 1)]
    else:
        mem[160] = uint32(stor[sha3((7 * uint32(stor2[address(msg.sender)].field_8)) + ('name', 'stor1', 1) + 4)].field_0)
        if (32 * uint256(stor1[uint32(stor2[address(msg.sender)].field_8)].field_1024)) + 32 > 64:
            mem[192] = uint32(stor[sha3((7 * uint32(stor2[address(msg.sender)].field_8)) + ('name', 'stor1', 1) + 4)].field_32)
            idx = 192
            s = 4
            while (32 * uint256(stor1[uint32(stor2[address(msg.sender)].field_8)].field_1024)) + 128 > idx:
                mem[idx + 32] = uint32(stor[sha3((7 * uint32(stor2[address(msg.sender)].field_8)) + ('name', 'stor1', 1) + 4)].field_8 * (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s))
                idx = idx + 32
                s = (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s)
                continue 
        mem[(32 * uint256(stor1[uint32(stor2[address(msg.sender)].field_8)].field_1024)) + 160] = 32
        mem[(32 * uint256(stor1[uint32(stor2[address(msg.sender)].field_8)].field_1024)) + 192] = uint256(stor1[uint32(stor2[address(msg.sender)].field_8)].field_1024)
        if Mask(251, 0, stor1[uint32(stor2[address(msg.sender)].field_8)].field_1024):
            mem[(32 * uint256(stor1[uint32(stor2[address(msg.sender)].field_8)].field_1024)) + 224] = uint32(stor[sha3((7 * uint32(stor2[address(msg.sender)].field_8)) + ('name', 'stor1', 1) + 4)].field_0)
            mem[(32 * uint256(stor1[uint32(stor2[address(msg.sender)].field_8)].field_1024)) + 256 len floor32((32 * uint256(stor1[uint32(stor2[address(msg.sender)].field_8)].field_1024)) - 1)] = mem[192 len floor32((32 * uint256(stor1[uint32(stor2[address(msg.sender)].field_8)].field_1024)) - 1)]
    return Array(len=uint256(stor1[uint32(stor2[address(msg.sender)].field_8)].field_1024), data=mem[(32 * uint256(stor1[uint32(stor2[address(msg.sender)].field_8)].field_1024)) + 224 len 32 * uint256(stor1[uint32(stor2[address(msg.sender)].field_8)].field_1024)]), 
}

function sub_aa5f020a(?) {
    if bool(uint8(sub_69485cca[address(msg.sender)].field_0)) != 1:
        return ''
    require arg1 < stor1.length
    if not uint256(stor[(7 * arg1) + ('name', 'stor1', 1) + 3][uint32(stor2[address(msg.sender)].field_0)].field_256):
        mem[(32 * uint256(stor[(7 * arg1) + ('name', 'stor1', 1) + 3][uint32(stor2[address(msg.sender)].field_0)].field_256)) + 160] = 32
        mem[(32 * uint256(stor[(7 * arg1) + ('name', 'stor1', 1) + 3][uint32(stor2[address(msg.sender)].field_0)].field_256)) + 192] = uint256(stor[(7 * arg1) + ('name', 'stor1', 1) + 3][uint32(stor2[address(msg.sender)].field_0)].field_256)
        if Mask(251, 0, stor[(7 * arg1) + ('name', 'stor1', 1) + 3][uint32(stor2[address(msg.sender)].field_0)].field_256):
            mem[(32 * uint256(stor[(7 * arg1) + ('name', 'stor1', 1) + 3][uint32(stor2[address(msg.sender)].field_0)].field_256)) + 224] = mem[160]
            mem[(32 * uint256(stor[(7 * arg1) + ('name', 'stor1', 1) + 3][uint32(stor2[address(msg.sender)].field_0)].field_256)) + 256 len floor32((32 * uint256(stor[(7 * arg1) + ('name', 'stor1', 1) + 3][uint32(stor2[address(msg.sender)].field_0)].field_256)) - 1)] = mem[192 len floor32((32 * uint256(stor[(7 * arg1) + ('name', 'stor1', 1) + 3][uint32(stor2[address(msg.sender)].field_0)].field_256)) - 1)]
    else:
        mem[160] = uint256(stor[(7 * arg1) + ('name', 'stor1', 1) + 3][uint32(stor2[address(msg.sender)].field_0)][1].field_0)
        if (32 * uint256(stor[(7 * arg1) + ('name', 'stor1', 1) + 3][uint32(stor2[address(msg.sender)].field_0)].field_256)) + 32 > 64:
            mem[192] = uint256(stor[(7 * arg1) + ('name', 'stor1', 1) + 3][uint32(stor2[address(msg.sender)].field_0)][1].field_256)
            idx = 192
            s = 1
            while (32 * uint256(stor[(7 * arg1) + ('name', 'stor1', 1) + 3][uint32(stor2[address(msg.sender)].field_0)].field_256)) + 128 > idx:
                mem[idx + 32] = uint256(stor[(7 * arg1) + ('name', 'stor1', 1) + 3][uint32(stor2[address(msg.sender)].field_0)][s + 1].field_256)
                idx = idx + 32
                s = s + 1
                continue 
        mem[(32 * uint256(stor[(7 * arg1) + ('name', 'stor1', 1) + 3][uint32(stor2[address(msg.sender)].field_0)].field_256)) + 160] = 32
        mem[(32 * uint256(stor[(7 * arg1) + ('name', 'stor1', 1) + 3][uint32(stor2[address(msg.sender)].field_0)].field_256)) + 192] = uint256(stor[(7 * arg1) + ('name', 'stor1', 1) + 3][uint32(stor2[address(msg.sender)].field_0)].field_256)
        if Mask(251, 0, stor[(7 * arg1) + ('name', 'stor1', 1) + 3][uint32(stor2[address(msg.sender)].field_0)].field_256):
            mem[(32 * uint256(stor[(7 * arg1) + ('name', 'stor1', 1) + 3][uint32(stor2[address(msg.sender)].field_0)].field_256)) + 224] = uint256(stor[(7 * arg1) + ('name', 'stor1', 1) + 3][uint32(stor2[address(msg.sender)].field_0)][1].field_0)
            mem[(32 * uint256(stor[(7 * arg1) + ('name', 'stor1', 1) + 3][uint32(stor2[address(msg.sender)].field_0)].field_256)) + 256 len floor32((32 * uint256(stor[(7 * arg1) + ('name', 'stor1', 1) + 3][uint32(stor2[address(msg.sender)].field_0)].field_256)) - 1)] = mem[192 len floor32((32 * uint256(stor[(7 * arg1) + ('name', 'stor1', 1) + 3][uint32(stor2[address(msg.sender)].field_0)].field_256)) - 1)]
    return Array(len=uint256(stor[(7 * arg1) + ('name', 'stor1', 1) + 3][uint32(stor2[address(msg.sender)].field_0)].field_256), data=mem[(32 * uint256(stor[(7 * arg1) + ('name', 'stor1', 1) + 3][uint32(stor2[address(msg.sender)].field_0)].field_256)) + 224 len 32 * uint256(stor[(7 * arg1) + ('name', 'stor1', 1) + 3][uint32(stor2[address(msg.sender)].field_0)].field_256)]), 
}



}
