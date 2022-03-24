contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;

function _fallback() payable {
    stor1 = 1000
    stor2 = 1000
    stor3 = 1
    stor4 = 10^18
    stor5 = 10^16
    stor6 = 49
    stor7 = 720 * 24 * 3600
    stor8 = 10^18
    stor9 = 720 * 24 * 3600
    stor10 = 0
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[106 len 8384]
}



// =====================  Runtime code  =====================


#
#  - sub_6a6e1571(?)
#
address stor0;
array of uint256 stor1;
uint256 sub_b095703c;
uint256 sub_7f142f3f;
uint256 stor8;
uint256 stor9;
uint256 lastBlock;
array of struct stor11;
array of uint256 stor38901484280723486654731320340554522250784272260600125515269588111016184487965;
array of uint256 stor85942020533383191045557033000333984816175203531016604656299231614230893404189;

function sub_562b753f(?) payable {
    return stor11.length
}

function sub_7f142f3f(?) payable {
    return sub_7f142f3f
}

function getLastBlock() payable {
    return lastBlock
}

function sub_b095703c(?) payable {
    return sub_b095703c
}

function getOwner(uint256 arg1) payable {
    require arg1 < stor11.length
    return address(stor[code.data[8352 len 32] + (7 * arg1)].field_0)
}

function _fallback() payable {
  stop
}

function sub_38fc9944(?) payable {
    return (arg1 / stor9 * stor8)
}

function sub_2aaf3932(?) payable {
    if msg.sender == stor0:
        stor8 = arg1
}

function sub_bfa1fa31(?) payable {
    if msg.sender == stor0:
        sub_b095703c = arg1
}

function sub_f6d3644d(?) payable {
    if stor0 == msg.sender:
        call stor0 with:
           value arg1 wei
             gas 0 wei
}

function getBox(uint256 arg1) payable {
    require arg1 < stor11.length
    return address(stor[code.data[8352 len 32] + (7 * arg1)].field_0), 
           uint16(stor[code.data[8352 len 32] + (7 * arg1)].field_0),
           uint16(stor[code.data[8352 len 32] + (7 * arg1)].field_0),
           uint16(stor[code.data[8352 len 32] + (7 * arg1)].field_0),
           uint16(stor[code.data[8352 len 32] + (7 * arg1)].field_208),
           stor5601[arg1],
           storBE01[arg1]
}

function sub_7719265a(?) payable {
    mem[64] = 96
    require var20001 < stor11.length
    mem[0] = 11
    if uint16(stor[code.data[8352 len 32] + (7 * var20001)].field_160) > arg1:
        var20001 = var20001 + 1
        continue 
    require var20001 < stor11.length
    mem[0] = 11
    if uint16(stor[code.data[8352 len 32] + (7 * var20001)].field_176) > arg2:
        var20001 = var20001 + 1
        continue 
    require var20001 < stor11.length
    mem[0] = 11
    if uint16(stor[code.data[8352 len 32] + (7 * var20001)].field_192) < arg1:
        var20001 = var20001 + 1
        continue 
    require var20001 < stor11.length
    mem[0] = 11
    if uint16(stor[code.data[8352 len 32] + (7 * var20001)].field_208) < arg2:
        var20001 = var20001 + 1
        continue 
    require var20001 < stor11.length
    mem[0] = 11
    if address(stor[code.data[8352 len 32] + (7 * var20001)].field_0) != msg.sender:
        if stor0 != msg.sender:
            var20001 = var20001 + 1
            continue 
    require var20001 != -1
    if stor0 != msg.sender:
        require msg.value >= arg3 / stor9 * stor8
    require var20001 < stor11.length
    storBE01[var20001] = arg3 + stor9 + stor5601[var20001]
}

function sub_5007d1f3(?) payable {
    mem[64] = ceil32(arg3.length) + 128
    mem[96] = arg3.length
    mem[128 len arg3.length] = arg3[all]
    require var20001 < stor11.length
    mem[0] = 11
    if uint16(stor[code.data[8352 len 32] + (7 * var20001)].field_160) > arg1:
        var20001 = var20001 + 1
        continue 
    require var20001 < stor11.length
    mem[0] = 11
    if uint16(stor[code.data[8352 len 32] + (7 * var20001)].field_176) > arg2:
        var20001 = var20001 + 1
        continue 
    require var20001 < stor11.length
    mem[0] = 11
    if uint16(stor[code.data[8352 len 32] + (7 * var20001)].field_192) < arg1:
        var20001 = var20001 + 1
        continue 
    require var20001 < stor11.length
    mem[0] = 11
    if uint16(stor[code.data[8352 len 32] + (7 * var20001)].field_208) < arg2:
        var20001 = var20001 + 1
        continue 
    require var20001 < stor11.length
    mem[0] = 11
    if address(stor[code.data[8352 len 32] + (7 * var20001)].field_0) != msg.sender:
        if stor0 != msg.sender:
            var20001 = var20001 + 1
            continue 
    require var20001 != -1
    require var20001 < stor11.length
    uint256(stor[sha3((7 * var20001) + ('name', 'stor11', 11) + 1)][].field_0) = Array(len=arg3.length, data=arg3[all])
}

function sub_c619ed69(?) payable {
    mem[64] = ceil32(arg3.length) + 128
    mem[96] = arg3.length
    mem[128 len arg3.length] = arg3[all]
    require var20001 < stor11.length
    mem[0] = 11
    if uint16(stor[code.data[8352 len 32] + (7 * var20001)].field_160) > arg1:
        var20001 = var20001 + 1
        continue 
    require var20001 < stor11.length
    mem[0] = 11
    if uint16(stor[code.data[8352 len 32] + (7 * var20001)].field_176) > arg2:
        var20001 = var20001 + 1
        continue 
    require var20001 < stor11.length
    mem[0] = 11
    if uint16(stor[code.data[8352 len 32] + (7 * var20001)].field_192) < arg1:
        var20001 = var20001 + 1
        continue 
    require var20001 < stor11.length
    mem[0] = 11
    if uint16(stor[code.data[8352 len 32] + (7 * var20001)].field_208) < arg2:
        var20001 = var20001 + 1
        continue 
    require var20001 < stor11.length
    mem[0] = 11
    if address(stor[code.data[8352 len 32] + (7 * var20001)].field_0) != msg.sender:
        if stor0 != msg.sender:
            var20001 = var20001 + 1
            continue 
    require var20001 != -1
    require var20001 < stor11.length
    uint256(stor[sha3((7 * var20001) + ('name', 'stor11', 11) + 3)][].field_0) = Array(len=arg3.length, data=arg3[all])
}

function sub_7c7da02d(?) payable {
    mem[96] = arg3.length
    mem[128 len arg3.length] = arg3[all]
    mem[64] = ceil32(arg3.length) + ceil32(arg4.length) + 160
    mem[ceil32(arg3.length) + 128] = arg4.length
    mem[ceil32(arg3.length) + 160 len arg4.length] = arg4[all]
    require var20001 < stor11.length
    mem[0] = 11
    if uint16(stor[code.data[8352 len 32] + (7 * var20001)].field_160) > arg1:
        var20001 = var20001 + 1
        continue 
    require var20001 < stor11.length
    mem[0] = 11
    if uint16(stor[code.data[8352 len 32] + (7 * var20001)].field_176) > arg2:
        var20001 = var20001 + 1
        continue 
    require var20001 < stor11.length
    mem[0] = 11
    if uint16(stor[code.data[8352 len 32] + (7 * var20001)].field_192) < arg1:
        var20001 = var20001 + 1
        continue 
    require var20001 < stor11.length
    mem[0] = 11
    if uint16(stor[code.data[8352 len 32] + (7 * var20001)].field_208) < arg2:
        var20001 = var20001 + 1
        continue 
    require var20001 < stor11.length
    mem[0] = 11
    if address(stor[code.data[8352 len 32] + (7 * var20001)].field_0) != msg.sender:
        if stor0 != msg.sender:
            var20001 = var20001 + 1
            continue 
    require var20001 != -1
    require var20001 < stor11.length
    uint256(stor[sha3((7 * var20001) + ('name', 'stor11', 11) + 3)][].field_0) = Array(len=arg3.length, data=arg3[all])
    require var20001 < stor11.length
    uint256(stor[sha3((7 * var20001) + ('name', 'stor11', 11) + 2)][].field_0) = Array(len=arg4.length, data=arg4[all])
}

function sub_ef957b76(?) payable {
    mem[96] = arg3.length
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128] = arg4.length
    mem[ceil32(arg3.length) + 160 len arg4.length] = arg4[all]
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = arg5.length
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len arg5.length] = arg5[all]
    mem[64] = ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 224
    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 192] = arg6.length
    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 224 len arg6.length] = arg6[all]
    require arg1 >= 0
    require arg1 <= 99
    require arg2 >= 0
    require arg2 <= 99
    require var30001 < stor11.length
    mem[0] = 11
    if uint16(stor[code.data[8352 len 32] + (7 * var30001)].field_160) > arg1:
        var30001 = var30001 + 1
        continue 
    require var30001 < stor11.length
    mem[0] = 11
    if uint16(stor[code.data[8352 len 32] + (7 * var30001)].field_176) > arg2:
        var30001 = var30001 + 1
        continue 
    require var30001 < stor11.length
    mem[0] = 11
    if uint16(stor[code.data[8352 len 32] + (7 * var30001)].field_192) < arg1:
        var30001 = var30001 + 1
        continue 
    require var30001 < stor11.length
    mem[0] = 11
    if uint16(stor[code.data[8352 len 32] + (7 * var30001)].field_208) < arg2:
        var30001 = var30001 + 1
        continue 
    require var30001 < stor11.length
    require storBE01[var30001] < block.timestamp
    require var30001 < stor11.length
    uint256(stor[code.data[8352 len 32] + (7 * var30001)].field_0) = msg.sender or Mask(96, 160, uint256(stor[code.data[8352 len 32] + (7 * var30001)].field_0))
    uint256(stor[sha3(code.data[8352 len 32] + (7 * var30001) + 1)][].field_0) = Array(len=arg3.length, data=arg3[all])
    require var30001 < stor11.length
    uint256(stor[sha3(code.data[8352 len 32] + (7 * var30001) + 3)][].field_0) = Array(len=arg4.length, data=arg4[all])
    require var30001 < stor11.length
    uint256(stor[sha3(code.data[8352 len 32] + (7 * var30001) + 2)][].field_0) = Array(len=arg5.length, data=arg5[all])
    require var30001 < stor11.length
    uint256(stor[sha3(code.data[8352 len 32] + (7 * var30001) + 4)][].field_0) = Array(len=arg6.length, data=arg6[all])
    require var30001 < stor11.length
    stor5601[var30001] = block.timestamp
    storBE01[var30001] = block.timestamp + stor9
    lastBlock = var30001
}

function sub_d92ed137(?) payable {
    mem[96] = arg5.length
    mem[128 len arg5.length] = arg5[all]
    mem[ceil32(arg5.length) + 128] = arg6.length
    mem[ceil32(arg5.length) + 160 len arg6.length] = arg6[all]
    mem[ceil32(arg5.length) + ceil32(arg6.length) + 160] = arg7.length
    mem[ceil32(arg5.length) + ceil32(arg6.length) + 192 len arg7.length] = arg7[all]
    mem[ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 192] = arg8.length
    mem[ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 224 len arg8.length] = arg8[all]
    mem[ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(arg8.length) + 576] = 0
    mem[ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(arg8.length) + 608] = 0
    mem[ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(arg8.length) + 640] = 0
    mem[64] = ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(arg8.length) + 704
    mem[ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(arg8.length) + 672] = 0
    require uint16(arg3 + -arg1 + arg4 + (arg3 * arg4) + (-1 * arg1 * arg4) + -arg2 + (-1 * arg3 * arg2) + (arg1 * arg2) + 1) <= sub_7f142f3f
    require uint16(arg1) >= 0
    require uint16(arg1) <= 99
    require uint16(arg3) >= 0
    require uint16(arg3) <= 99
    require uint16(arg2) >= 0
    require uint16(arg2) <= 99
    require uint16(arg4) >= 0
    require uint16(arg4) <= 99
    mem[ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(arg8.length) + 224] = msg.sender
    mem[ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(arg8.length) + 256] = uint16(arg1)
    mem[ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(arg8.length) + 288] = uint16(arg2)
    mem[ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(arg8.length) + 320] = uint16(arg3)
    mem[ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(arg8.length) + 352] = uint16(arg4)
    mem[ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(arg8.length) + 384] = 96
    mem[ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(arg8.length) + 480] = ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 192
    mem[ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(arg8.length) + 448] = ceil32(arg5.length) + 128
    mem[ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(arg8.length) + 416] = ceil32(arg5.length) + ceil32(arg6.length) + 160
    mem[ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(arg8.length) + 512] = block.timestamp
    mem[ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(arg8.length) + 544] = stor9 + block.timestamp
    idx = 0
    while idx < stor11.length:
        mem[0] = 11
        _1505 = mem[64]
        mem[64] = mem[64] + 352
        mem[_1505] = address(stor[code.data[8352 len 32] + (7 * idx)].field_0)
        mem[_1505 + 32] = uint16(stor[code.data[8352 len 32] + (7 * idx)].field_160)
        mem[_1505 + 64] = uint16(stor[code.data[8352 len 32] + (7 * idx)].field_176)
        mem[_1505 + 96] = uint16(stor[code.data[8352 len 32] + (7 * idx)].field_192)
        mem[_1505 + 128] = uint16(stor[code.data[8352 len 32] + (7 * idx)].field_208)
        _1506 = mem[64]
        mem[64] = mem[64] + ceil32(stor[code.data[8352 len 32] + (7 * idx) + 1].length) + 32
        mem[_1506] = stor[code.data[8352 len 32] + (7 * idx) + 1].length
        mem[0] = code.data[8352 len 32] + (7 * idx) + 1
        mem[_1506 + 32] = uint256(stor[sha3(code.data[8352 len 32] + (7 * idx) + 1)].field_0)
        s = _1506 + 32
        t = sha3(mem[0])
        while _1506 + stor[code.data[8352 len 32] + (7 * idx) + 1].length > s:
            mem[s + 32] = stor1[t]
            s = s + 32
            t = t + 1
            continue 
        mem[_1505 + 160] = _1506
        _3004 = mem[64]
        mem[64] = mem[64] + ceil32(stor[code.data[8352 len 32] + (7 * idx) + 2].length) + 32
        mem[_3004] = stor[code.data[8352 len 32] + (7 * idx) + 2].length
        mem[0] = code.data[8352 len 32] + (7 * idx) + 2
        mem[_3004 + 32] = uint256(stor[sha3(code.data[8352 len 32] + (7 * idx) + 2)].field_0)
        s = _3004 + 32
        t = sha3(mem[0])
        while _3004 + stor[code.data[8352 len 32] + (7 * idx) + 2].length > s:
            mem[s + 32] = stor1[t]
            s = s + 32
            t = t + 1
            continue 
        mem[_1505 + 192] = _3004
        _4325 = mem[64]
        mem[64] = mem[64] + ceil32(stor[code.data[8352 len 32] + (7 * idx) + 3].length) + 32
        mem[_4325] = stor[code.data[8352 len 32] + (7 * idx) + 3].length
        mem[0] = code.data[8352 len 32] + (7 * idx) + 3
        mem[_4325 + 32] = uint256(stor[sha3(code.data[8352 len 32] + (7 * idx) + 3)].field_0)
        s = _4325 + 32
        t = sha3(mem[0])
        while _4325 + stor[code.data[8352 len 32] + (7 * idx) + 3].length > s:
            mem[s + 32] = stor1[t]
            s = s + 32
            t = t + 1
            continue 
        mem[_1505 + 224] = _4325
        _5349 = mem[64]
        mem[64] = mem[64] + ceil32(stor[code.data[8352 len 32] + (7 * idx) + 4].length) + 32
        mem[_5349] = stor[code.data[8352 len 32] + (7 * idx) + 4].length
        mem[0] = code.data[8352 len 32] + (7 * idx) + 4
        mem[_5349 + 32] = uint256(stor[sha3(code.data[8352 len 32] + (7 * idx) + 4)].field_0)
        s = _5349 + 32
        t = sha3(mem[0])
        while _5349 + stor[code.data[8352 len 32] + (7 * idx) + 4].length > s:
            mem[s + 32] = stor1[t]
            s = s + 32
            t = t + 1
            continue 
        mem[_1505 + 256] = _5349
        mem[_1505 + 288] = uint256(stor[code.data[8352 len 32] + (7 * idx) + 5].field_0)
        mem[_1505 + 320] = uint256(stor[code.data[8352 len 32] + (7 * idx) + 6].field_0)
        if mem[_1505 + 62 len 2] <= mem[ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(arg8.length) + 350 len 2]:
            if mem[ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(arg8.length) + 286 len 2] <= mem[_1505 + 126 len 2]:
                if mem[_1505 + 94 len 2] <= mem[ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(arg8.length) + 382 len 2]:
                    require mem[ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(arg8.length) + 318 len 2] > mem[_1505 + 158 len 2]
        idx = idx + 1
        continue 
    stor11.length++
    mem[0] = 11
    if not stor11.length > stor11.length + 1:
        address(stor11[stor11.length].field_0) = mem[ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(arg8.length) + 236 len 20]
        uint16(stor11[stor11.length].field_160) = mem[ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(arg8.length) + 286 len 2]
        uint16(stor11[stor11.length].field_176) = mem[ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(arg8.length) + 318 len 2]
        uint16(stor11[stor11.length].field_192) = mem[ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(arg8.length) + 350 len 2]
        stor11[stor11.length].field_208 % 281474976710656 = mem[ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(arg8.length) + 378 len 6]
        uint32(stor11[stor11.length].field_224) = mem[ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(arg8.length) + 344 len 4]
        uint32(stor11[stor11.length].field_224) = mem[ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(arg8.length) + 310 len 4]
        uint32(stor11[stor11.length].field_224) = mem[ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(arg8.length) + 276 len 4]
        uint32(stor11[stor11.length].field_224) = mem[ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(arg8.length) + 224 len 4]
        _1500 = mem[mem[ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(arg8.length) + 384]]
        mem[0] = sha3(11) + (7 * stor11.length) + 1
        uint256(stor[sha3(('name', 'stor11', 11) + (7 * stor11.length) + 1)][].field_0) = Array(len=_1500, data=mem[mem[ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(arg8.length) + 384] + 32 len _1500])
        _4297 = mem[mem[ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(arg8.length) + 416]]
        mem[0] = sha3(11) + (7 * stor11.length) + 2
        uint256(stor[sha3(('name', 'stor11', 11) + (7 * stor11.length) + 2)][].field_0) = Array(len=_4297, data=mem[mem[ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(arg8.length) + 416] + 32 len _4297])
        _6092 = mem[mem[ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(arg8.length) + 448]]
        mem[0] = sha3(11) + (7 * stor11.length) + 3
        uint256(stor[sha3(('name', 'stor11', 11) + (7 * stor11.length) + 3)][].field_0) = Array(len=_6092, data=mem[mem[ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(arg8.length) + 448] + 32 len _6092])
        _7146 = mem[mem[ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(arg8.length) + 480]]
        mem[0] = sha3(11) + (7 * stor11.length) + 4
        uint256(stor[sha3(('name', 'stor11', 11) + (7 * stor11.length) + 4)][].field_0) = Array(len=_7146, data=mem[mem[ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(arg8.length) + 480] + 32 len _7146])
    else:
        idx = (7 * stor11.length) + 7
        while sha3(11) + (7 * stor11.length) > idx + sha3(mem[0]):
            Mask(224, 0, stor[idx + sha3(mem[0])].field_0) = 0
            uint256(stor[idx + sha3(mem[0]) + 1].field_0) = 0
            if 31 >= stor[idx + sha3(mem[0]) + 1].length:
                uint256(stor[idx + sha3(mem[0]) + 2].field_0) = 0
                if 31 >= stor[idx + sha3(mem[0]) + 2].length:
                    uint256(stor[idx + sha3(mem[0]) + 3].field_0) = 0
                    if 31 >= stor[idx + sha3(mem[0]) + 3].length:
                        uint256(stor[idx + sha3(mem[0]) + 4].field_0) = 0
                        if 31 < stor[idx + sha3(mem[0]) + 4].length:
                            mem[0] = idx + sha3(mem[0]) + 4
                            s = sha3(idx + sha3(mem[0]) + 4)
                            while sha3(idx + sha3(mem[0]) + 4) + (stor[idx + sha3(mem[0]) + 4].length + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                        uint256(stor[idx + sha3(mem[0]) + 5].field_0) = 0
                        uint256(stor[idx + sha3(mem[0]) + 6].field_0) = 0
                        idx = idx + 7
                        continue 
                    mem[0] = idx + sha3(mem[0]) + 3
                    s = sha3(s + sha3(mem[0]) + 3)
                    while sha3(s + sha3(mem[0]) + 3) + (stor[s + sha3(mem[0]) + 3].length + 31 / 32) > s + sha3(mem[0]):
                        uint256(stor[s + sha3(mem[0])].field_0) = 0
                        s = s + 1
                        continue 
                    uint256(stor[s + sha3(mem[0]) + 4].field_0) = 0
                    if 31 < stor[s + sha3(mem[0]) + 4].length:
                        mem[0] = s + sha3(mem[0]) + 4
                        t = sha3(s + sha3(mem[0]) + 4)
                        while sha3(s + sha3(mem[0]) + 4) + (stor[s + sha3(mem[0]) + 4].length + 31 / 32) > t:
                            uint256(stor[t].field_0) = 0
                            t = t + 1
                            continue 
                    uint256(stor[s + sha3(mem[0]) + 5].field_0) = 0
                    uint256(stor[s + sha3(mem[0]) + 6].field_0) = 0
                    s = s + 7
                    continue 
                mem[0] = idx + sha3(mem[0]) + 2
                s = sha3(idx + sha3(mem[0]) + 2)
                while sha3(idx + sha3(mem[0]) + 2) + (stor[idx + sha3(mem[0]) + 2].length + 31 / 32) > s:
                    uint256(stor[s].field_0) = 0
                    s = s + 1
                    continue 
            else:
                mem[0] = idx + sha3(mem[0]) + 1
                s = sha3(idx + sha3(mem[0]) + 1)
                while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                    uint256(stor[s].field_0) = 0
                    s = s + 1
                    continue 
                uint256(stor[idx + sha3(mem[0]) + 2].field_0) = 0
                if 31 < stor[idx + sha3(mem[0]) + 2].length:
                    mem[0] = idx + sha3(mem[0]) + 2
                    s = sha3(idx + sha3(mem[0]) + 2)
                    while sha3(idx + sha3(mem[0]) + 2) + (stor[idx + sha3(mem[0]) + 2].length + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
            uint256(stor[idx + sha3(mem[0]) + 3].field_0) = 0
            if 31 < stor[idx + sha3(mem[0]) + 3].length:
                mem[0] = idx + sha3(mem[0]) + 3
                s = sha3(idx + sha3(mem[0]) + 3)
                while sha3(idx + sha3(mem[0]) + 3) + (stor[idx + sha3(mem[0]) + 3].length + 31 / 32) > s:
                    uint256(stor[s].field_0) = 0
                    s = s + 1
                    continue 
            uint256(stor[idx + sha3(mem[0]) + 4].field_0) = 0
            if 31 < stor[idx + sha3(mem[0]) + 4].length:
                mem[0] = idx + sha3(mem[0]) + 4
                s = sha3(idx + sha3(mem[0]) + 4)
                while sha3(idx + sha3(mem[0]) + 4) + (stor[idx + sha3(mem[0]) + 4].length + 31 / 32) > s:
                    uint256(stor[s].field_0) = 0
                    s = s + 1
                    continue 
            uint256(stor[idx + sha3(mem[0]) + 5].field_0) = 0
            uint256(stor[idx + sha3(mem[0]) + 6].field_0) = 0
            idx = idx + 7
            continue 
        mem[0] = 11
        address(stor11[stor11.length].field_0) = mem[ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(arg8.length) + 236 len 20]
        uint16(stor11[stor11.length].field_160) = mem[ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(arg8.length) + 286 len 2]
        uint16(stor11[stor11.length].field_176) = mem[ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(arg8.length) + 318 len 2]
        uint16(stor11[stor11.length].field_192) = mem[ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(arg8.length) + 350 len 2]
        stor11[stor11.length].field_208 % 281474976710656 = mem[ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(arg8.length) + 378 len 6]
        uint32(stor11[stor11.length].field_224) = mem[ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(arg8.length) + 344 len 4]
        uint32(stor11[stor11.length].field_224) = mem[ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(arg8.length) + 310 len 4]
        uint32(stor11[stor11.length].field_224) = mem[ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(arg8.length) + 276 len 4]
        uint32(stor11[stor11.length].field_224) = mem[ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(arg8.length) + 224 len 4]
        _2990 = mem[mem[ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(arg8.length) + 384]]
        mem[0] = sha3(11) + (7 * stor11.length) + 1
        uint256(stor[sha3(('name', 'stor11', 11) + (7 * stor11.length) + 1)][].field_0) = Array(len=_2990, data=mem[mem[ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(arg8.length) + 384] + 32 len _2990])
        _5335 = mem[mem[ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(arg8.length) + 416]]
        mem[0] = sha3(11) + (7 * stor11.length) + 2
        uint256(stor[sha3(('name', 'stor11', 11) + (7 * stor11.length) + 2)][].field_0) = Array(len=_5335, data=mem[mem[ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(arg8.length) + 416] + 32 len _5335])
        _6792 = mem[mem[ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(arg8.length) + 448]]
        mem[0] = sha3(11) + (7 * stor11.length) + 3
        uint256(stor[sha3(('name', 'stor11', 11) + (7 * stor11.length) + 3)][].field_0) = Array(len=_6792, data=mem[mem[ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(arg8.length) + 448] + 32 len _6792])
        _7405 = mem[mem[ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(arg8.length) + 480]]
        mem[0] = sha3(11) + (7 * stor11.length) + 4
        uint256(stor[sha3(('name', 'stor11', 11) + (7 * stor11.length) + 4)][].field_0) = Array(len=_7405, data=mem[mem[ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(arg8.length) + 480] + 32 len _7405])
    uint256(stor11[stor11.length].field_1280) = mem[ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(arg8.length) + 512]
    uint256(stor11[stor11.length].field_1536) = mem[ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(arg8.length) + 544]
    lastBlock = stor11.length - 1
}



}
