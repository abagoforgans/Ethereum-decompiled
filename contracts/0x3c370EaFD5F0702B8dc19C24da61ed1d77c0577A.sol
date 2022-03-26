contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;

function _fallback() {
    stor0 = msg.sender
    stor2 = block.timestamp
    return code.data[65 len 4711]
}



// =====================  Runtime code  =====================


#
#  - sub_49aa5e54(?)
#
address owner;
mapping of uint8 stor1;
uint256 sub_acdc969b;
mapping of struct stor3;
mapping of struct stor4;

function sub_47fa23ff(?) {
    return bool(stor1[arg1])
}

function owner() {
    return owner
}

function sub_acdc969b(?) {
    return sub_acdc969b
}

function _fallback() payable {
    revert 
}

function updateOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function sub_748efefe(?) {
    require owner == msg.sender
    stor1[address(arg1)] = arg2
}

function sub_573eb35c(?) {
    if stor3[arg1].field_768 >= sub_acdc969b:
        return stor3[arg1].field_0
    else:
        return 0
}

function sub_106d0e0c(?) {
    if stor4[address(arg1)].field_256 >= sub_acdc969b:
        return stor4[address(arg1)].field_0
    else:
        return 0
}

function sub_0281b58d(?) {
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 276 len arg3.length] = arg3[all]
    mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 276 len arg4.length] = arg4[all]
    return sha3(arg1, arg2, arg5, arg6, mem[ceil32(arg3.length) + ceil32(arg4.length) + 276 len arg4.length + arg3.length])
}

function sub_e0f9a9fd(?) {
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 276 len arg3.length] = arg3[all]
    mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 276 len arg4.length] = arg4[all]
    return (sha3(arg1, arg2, arg5, arg6, mem[ceil32(arg3.length) + ceil32(arg4.length) + 276 len arg3.length + arg4.length]) == arg7)
}

function sub_5b256e10(?) {
    mem[ceil32(arg3.length) + 160 len arg4.length] = arg4[all]
    require owner == msg.sender
    require stor3[arg1].field_1024 <= block.timestamp
    require stor4[address(arg2)].field_512 <= block.timestamp
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = arg2
    stor3[arg1].field_0 = arg2
    stor3[arg1][1][].field_0 = Array(len=arg3.length, data=arg3[all])
    stor3[arg1].field_512 = (2 * arg4.length) + 1
    s = 0
    idx = ceil32(arg3.length) + 160
    while ceil32(arg3.length) + arg4.length + 160 > idx:
        stor3[arg1][s + 2].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    if stor3[arg1][2].length + 31 / 32 > Mask(251, 0, arg4.length + 31) >> 5:
        stor[('array', 2, ('map', ('param', 'arg1'), ('name', 'stor3', 3))) + (Mask(251, 0, arg4.length + 31) >> 5)].field_0 = 0
        idx = (Mask(251, 0, arg4.length + 31) >> 5) + 1
        while stor3[arg1][2].length + 31 / 32 > idx:
            stor3[arg1][idx + 2].field_0 = 0
            idx = idx + 1
            continue 
    stor3[arg1].field_768 = arg5
    stor3[arg1].field_1024 = block.timestamp
    emit 0x707dee33: arg1, address(arg2), Array(len=arg3.length, data=arg3[all]), arg3.length + 224, arg5, block.timestamp
    stor4[address(arg2)].field_0 = arg1
    stor4[address(arg2)].field_256 = arg5
    stor4[address(arg2)].field_512 = block.timestamp
    emit 0xba52317b: address(arg2), arg1, arg5, block.timestamp
    sub_acdc969b = block.timestamp
    return 0
}

function sub_5a5845b6(?) {
    mem[96] = 0
    mem[128] = 0
    mem[32] = 3
    mem[160] = stor3[arg1][1].length
    mem[192] = stor3[arg1][1].field_0
    idx = 192
    s = 0
    while stor3[arg1][1].length + 160 > idx:
        mem[idx + 32] = stor3[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor3[arg1][1].length) + ceil32(stor3[arg1][2].length) + 224
    mem[ceil32(stor3[arg1][1].length) + 192] = stor3[arg1][2].length
    mem[0] = sha3(arg1, 3) + 2
    mem[ceil32(stor3[arg1][1].length) + 224] = stor3[arg1][2].field_0
    idx = ceil32(stor3[arg1][1].length) + 224
    s = 0
    while ceil32(stor3[arg1][1].length) + stor3[arg1][2].length + 192 > idx:
        mem[idx + 32] = stor3[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor3[arg1][1].length) + ceil32(stor3[arg1][2].length) + 224] = arg1
    mem[ceil32(stor3[arg1][1].length) + ceil32(stor3[arg1][2].length) + 256] = stor3[arg1].field_0
    mem[ceil32(stor3[arg1][1].length) + ceil32(stor3[arg1][2].length) + 352] = stor3[arg1].field_768
    mem[ceil32(stor3[arg1][1].length) + ceil32(stor3[arg1][2].length) + 288] = 160
    mem[ceil32(stor3[arg1][1].length) + ceil32(stor3[arg1][2].length) + 384] = stor3[arg1][1].length
    mem[ceil32(stor3[arg1][1].length) + ceil32(stor3[arg1][2].length) + 416 len stor3[arg1][1].length] = mem[192 len stor3[arg1][1].length]
    mem[ceil32(stor3[arg1][1].length) + ceil32(stor3[arg1][2].length) + 320] = stor3[arg1][1].length + 192
    mem[stor3[arg1][1].length + ceil32(stor3[arg1][1].length) + ceil32(stor3[arg1][2].length) + 416] = stor3[arg1][2].length
    mem[stor3[arg1][1].length + ceil32(stor3[arg1][1].length) + ceil32(stor3[arg1][2].length) + 448 len stor3[arg1][2].length] = mem[ceil32(stor3[arg1][1].length) + 224 len stor3[arg1][2].length]
    if not stor3[arg1][2].length % 32:
        return arg1, 
               stor3[arg1].field_0,
               Array(len=stor3[arg1][1].length, data=mem[192 len stor3[arg1][1].length], stor3[arg1][2].length, mem[ceil32(stor3[arg1][1].length) + 224 len stor3[arg1][2].length]),
               stor3[arg1][1].length + 192,
               stor3[arg1].field_768
    mem[floor32(stor3[arg1][2].length) + stor3[arg1][1].length + ceil32(stor3[arg1][1].length) + ceil32(stor3[arg1][2].length) + 448] = mem[floor32(stor3[arg1][2].length) + stor3[arg1][1].length + ceil32(stor3[arg1][1].length) + ceil32(stor3[arg1][2].length) + -stor3[arg1][2].length % 32 + 480 len stor3[arg1][2].length % 32]
    return arg1, 
           stor3[arg1].field_0,
           Array(len=stor3[arg1][1].length, data=mem[192 len stor3[arg1][1].length], stor3[arg1][2].length, mem[ceil32(stor3[arg1][1].length) + ceil32(stor3[arg1][2].length) + stor3[arg1][1].length + 448 len floor32(stor3[arg1][2].length) + 32]),
           stor3[arg1][1].length + 192,
           stor3[arg1].field_768
}

function sub_b675b7db(?) {
    mem[96] = 0
    mem[128] = 0
    mem[32] = 3
    mem[160] = stor3[arg1][1].length
    mem[192] = stor3[arg1][1].field_0
    idx = 192
    s = 0
    while stor3[arg1][1].length + 160 > idx:
        mem[idx + 32] = stor3[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor3[arg1][1].length) + ceil32(stor3[arg1][2].length) + 224
    mem[ceil32(stor3[arg1][1].length) + 192] = stor3[arg1][2].length
    mem[0] = sha3(arg1, 3) + 2
    mem[ceil32(stor3[arg1][1].length) + 224] = stor3[arg1][2].field_0
    idx = ceil32(stor3[arg1][1].length) + 224
    s = 0
    while ceil32(stor3[arg1][1].length) + stor3[arg1][2].length + 192 > idx:
        mem[idx + 32] = stor3[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor3[arg1][1].length) + ceil32(stor3[arg1][2].length) + 224] = arg1
    mem[ceil32(stor3[arg1][1].length) + ceil32(stor3[arg1][2].length) + 256] = stor3[arg1].field_0
    mem[ceil32(stor3[arg1][1].length) + ceil32(stor3[arg1][2].length) + 352] = stor3[arg1].field_768
    mem[ceil32(stor3[arg1][1].length) + ceil32(stor3[arg1][2].length) + 288] = 160
    mem[ceil32(stor3[arg1][1].length) + ceil32(stor3[arg1][2].length) + 384] = stor3[arg1][1].length
    mem[ceil32(stor3[arg1][1].length) + ceil32(stor3[arg1][2].length) + 416 len stor3[arg1][1].length] = mem[192 len stor3[arg1][1].length]
    mem[ceil32(stor3[arg1][1].length) + ceil32(stor3[arg1][2].length) + 320] = stor3[arg1][1].length + 192
    mem[stor3[arg1][1].length + ceil32(stor3[arg1][1].length) + ceil32(stor3[arg1][2].length) + 416] = stor3[arg1][2].length
    mem[stor3[arg1][1].length + ceil32(stor3[arg1][1].length) + ceil32(stor3[arg1][2].length) + 448 len stor3[arg1][2].length] = mem[ceil32(stor3[arg1][1].length) + 224 len stor3[arg1][2].length]
    if not stor3[arg1][2].length % 32:
        return arg1, 
               stor3[arg1].field_0,
               Array(len=stor3[arg1][1].length, data=mem[192 len stor3[arg1][1].length], stor3[arg1][2].length, mem[ceil32(stor3[arg1][1].length) + 224 len stor3[arg1][2].length]),
               stor3[arg1][1].length + 192,
               stor3[arg1].field_768
    mem[floor32(stor3[arg1][2].length) + stor3[arg1][1].length + ceil32(stor3[arg1][1].length) + ceil32(stor3[arg1][2].length) + 448] = mem[floor32(stor3[arg1][2].length) + stor3[arg1][1].length + ceil32(stor3[arg1][1].length) + ceil32(stor3[arg1][2].length) + -stor3[arg1][2].length % 32 + 480 len stor3[arg1][2].length % 32]
    return arg1, 
           stor3[arg1].field_0,
           Array(len=stor3[arg1][1].length, data=mem[192 len stor3[arg1][1].length], stor3[arg1][2].length, mem[ceil32(stor3[arg1][1].length) + ceil32(stor3[arg1][2].length) + stor3[arg1][1].length + 448 len floor32(stor3[arg1][2].length) + 32]),
           stor3[arg1][1].length + 192,
           stor3[arg1].field_768
}

function sub_24f251fd(?) {
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[32] = 3
    if stor4[address(arg1)].field_256 >= sub_acdc969b:
        mem[224] = stor3[stor4[address(arg1)].field_0][1].length
        mem[256] = stor3[stor4[address(arg1)].field_0][1].field_0
        idx = 256
        s = 0
        while stor3[stor4[address(arg1)].field_0][1].length + 224 > idx:
            mem[idx + 32] = stor3[stor4[address(arg1)].field_0][s + 1].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[64] = ceil32(stor3[stor4[address(arg1)].field_0][1].length) + ceil32(stor3[stor4[address(arg1)].field_0][2].length) + 288
        mem[ceil32(stor3[stor4[address(arg1)].field_0][1].length) + 256] = stor3[stor4[address(arg1)].field_0][2].length
        mem[0] = sha3(stor4[address(arg1)].field_0, 3) + 2
        mem[ceil32(stor3[stor4[address(arg1)].field_0][1].length) + 288] = stor3[stor4[address(arg1)].field_0][2].field_0
        idx = ceil32(stor3[stor4[address(arg1)].field_0][1].length) + 288
        s = 0
        while ceil32(stor3[stor4[address(arg1)].field_0][1].length) + stor3[stor4[address(arg1)].field_0][2].length + 256 > idx:
            mem[idx + 32] = stor3[stor4[address(arg1)].field_0][s + 2].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(stor3[stor4[address(arg1)].field_0][1].length) + ceil32(stor3[stor4[address(arg1)].field_0][2].length) + 288] = stor4[address(arg1)].field_0
        mem[ceil32(stor3[stor4[address(arg1)].field_0][1].length) + ceil32(stor3[stor4[address(arg1)].field_0][2].length) + 320] = stor3[stor4[address(arg1)].field_0].field_0
        mem[ceil32(stor3[stor4[address(arg1)].field_0][1].length) + ceil32(stor3[stor4[address(arg1)].field_0][2].length) + 416] = stor3[stor4[address(arg1)].field_0].field_768
        mem[ceil32(stor3[stor4[address(arg1)].field_0][1].length) + ceil32(stor3[stor4[address(arg1)].field_0][2].length) + 352] = 160
        mem[ceil32(stor3[stor4[address(arg1)].field_0][1].length) + ceil32(stor3[stor4[address(arg1)].field_0][2].length) + 448] = stor3[stor4[address(arg1)].field_0][1].length
        mem[ceil32(stor3[stor4[address(arg1)].field_0][1].length) + ceil32(stor3[stor4[address(arg1)].field_0][2].length) + 480 len stor3[stor4[address(arg1)].field_0][1].length] = mem[256 len stor3[stor4[address(arg1)].field_0][1].length]
        mem[ceil32(stor3[stor4[address(arg1)].field_0][1].length) + ceil32(stor3[stor4[address(arg1)].field_0][2].length) + 384] = stor3[stor4[address(arg1)].field_0][1].length + 192
        mem[stor3[stor4[address(arg1)].field_0][1].length + ceil32(stor3[stor4[address(arg1)].field_0][1].length) + ceil32(stor3[stor4[address(arg1)].field_0][2].length) + 480] = stor3[stor4[address(arg1)].field_0][2].length
        mem[stor3[stor4[address(arg1)].field_0][1].length + ceil32(stor3[stor4[address(arg1)].field_0][1].length) + ceil32(stor3[stor4[address(arg1)].field_0][2].length) + 512 len stor3[stor4[address(arg1)].field_0][2].length] = mem[ceil32(stor3[stor4[address(arg1)].field_0][1].length) + 288 len stor3[stor4[address(arg1)].field_0][2].length]
        if not stor3[stor4[address(arg1)].field_0][2].length % 32:
            return stor4[address(arg1)].field_0, 
                   stor3[stor4[address(arg1)].field_0].field_0,
                   Array(len=stor3[stor4[address(arg1)].field_0][1].length, data=mem[256 len stor3[stor4[address(arg1)].field_0][1].length], stor3[stor4[address(arg1)].field_0][2].length, mem[ceil32(stor3[stor4[address(arg1)].field_0][1].length) + 288 len stor3[stor4[address(arg1)].field_0][2].length]),
                   stor3[stor4[address(arg1)].field_0][1].length + 192,
                   stor3[stor4[address(arg1)].field_0].field_768
        mem[floor32(stor3[stor4[address(arg1)].field_0][2].length) + stor3[stor4[address(arg1)].field_0][1].length + ceil32(stor3[stor4[address(arg1)].field_0][1].length) + ceil32(stor3[stor4[address(arg1)].field_0][2].length) + 512] = mem[floor32(stor3[stor4[address(arg1)].field_0][2].length) + stor3[stor4[address(arg1)].field_0][1].length + ceil32(stor3[stor4[address(arg1)].field_0][1].length) + ceil32(stor3[stor4[address(arg1)].field_0][2].length) + -stor3[stor4[address(arg1)].field_0][2].length % 32 + 544 len stor3[stor4[address(arg1)].field_0][2].length % 32]
        return stor4[address(arg1)].field_0, 
               stor3[stor4[address(arg1)].field_0].field_0,
               Array(len=stor3[stor4[address(arg1)].field_0][1].length, data=mem[256 len stor3[stor4[address(arg1)].field_0][1].length], stor3[stor4[address(arg1)].field_0][2].length, mem[ceil32(stor3[stor4[address(arg1)].field_0][1].length) + ceil32(stor3[stor4[address(arg1)].field_0][2].length) + stor3[stor4[address(arg1)].field_0][1].length + 512 len floor32(stor3[stor4[address(arg1)].field_0][2].length) + 32]),
               stor3[stor4[address(arg1)].field_0][1].length + 192,
               stor3[stor4[address(arg1)].field_0].field_768
    mem[224] = stor3[0][1].length
    mem[256] = stor3[0][1].field_0
    idx = 256
    s = 0
    while stor3[0][1].length + 224 > idx:
        mem[idx + 32] = stor3[0][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor3[0][1].length) + ceil32(stor3[0][2].length) + 288
    mem[ceil32(stor3[0][1].length) + 256] = stor3[0][2].length
    mem[0] = sha3(0, 3) + 2
    mem[ceil32(stor3[0][1].length) + 288] = stor3[0][2].field_0
    idx = ceil32(stor3[0][1].length) + 288
    s = 0
    while ceil32(stor3[0][1].length) + stor3[0][2].length + 256 > idx:
        mem[idx + 32] = stor3[0][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor3[0][1].length) + ceil32(stor3[0][2].length) + 288] = 0
    mem[ceil32(stor3[0][1].length) + ceil32(stor3[0][2].length) + 320] = stor3[0].field_0
    mem[ceil32(stor3[0][1].length) + ceil32(stor3[0][2].length) + 416] = stor3[0].field_768
    mem[ceil32(stor3[0][1].length) + ceil32(stor3[0][2].length) + 352] = 160
    mem[ceil32(stor3[0][1].length) + ceil32(stor3[0][2].length) + 448] = stor3[0][1].length
    mem[ceil32(stor3[0][1].length) + ceil32(stor3[0][2].length) + 480 len stor3[0][1].length] = mem[256 len stor3[0][1].length]
    if not stor3[0][1].length % 32:
        mem[ceil32(stor3[0][1].length) + ceil32(stor3[0][2].length) + 384] = stor3[0][1].length + 192
        mem[stor3[0][1].length + ceil32(stor3[0][1].length) + ceil32(stor3[0][2].length) + 480] = stor3[0][2].length
        mem[stor3[0][1].length + ceil32(stor3[0][1].length) + ceil32(stor3[0][2].length) + 512 len stor3[0][2].length] = mem[ceil32(stor3[0][1].length) + 288 len stor3[0][2].length]
        if not stor3[0][2].length % 32:
            return 0, 
                   stor3[0].field_0,
                   160,
                   stor3[0][1].length + 192,
                   stor3[0].field_768,
                   stor3[0][1].length,
                   mem[256 len stor3[0][1].length],
                   stor3[0][2].length,
                   mem[ceil32(stor3[0][1].length) + 288 len stor3[0][2].length]
        mem[floor32(stor3[0][2].length) + stor3[0][1].length + ceil32(stor3[0][1].length) + ceil32(stor3[0][2].length) + 512] = mem[floor32(stor3[0][2].length) + stor3[0][1].length + ceil32(stor3[0][1].length) + ceil32(stor3[0][2].length) + -stor3[0][2].length % 32 + 544 len stor3[0][2].length % 32]
        return 0, 
               stor3[0].field_0,
               160,
               stor3[0][1].length + 192,
               stor3[0].field_768,
               stor3[0][1].length,
               mem[256 len stor3[0][1].length],
               stor3[0][2].length,
               mem[ceil32(stor3[0][1].length) + ceil32(stor3[0][2].length) + stor3[0][1].length + 512 len floor32(stor3[0][2].length) + 32]
    mem[floor32(stor3[0][1].length) + ceil32(stor3[0][1].length) + ceil32(stor3[0][2].length) + 480] = mem[floor32(stor3[0][1].length) + ceil32(stor3[0][1].length) + ceil32(stor3[0][2].length) + -stor3[0][1].length % 32 + 512 len stor3[0][1].length % 32]
    mem[ceil32(stor3[0][1].length) + ceil32(stor3[0][2].length) + 384] = floor32(stor3[0][1].length) + 224
    mem[floor32(stor3[0][1].length) + ceil32(stor3[0][1].length) + ceil32(stor3[0][2].length) + 512] = stor3[0][2].length
    mem[floor32(stor3[0][1].length) + ceil32(stor3[0][1].length) + ceil32(stor3[0][2].length) + 544 len stor3[0][2].length] = mem[ceil32(stor3[0][1].length) + 288 len stor3[0][2].length]
    if not stor3[0][2].length % 32:
        return 0, 
               stor3[0].field_0,
               160,
               floor32(stor3[0][1].length) + 224,
               stor3[0].field_768,
               stor3[0][1].length,
               mem[ceil32(stor3[0][1].length) + ceil32(stor3[0][2].length) + 480 len floor32(stor3[0][1].length) + 32],
               stor3[0][2].length,
               mem[ceil32(stor3[0][1].length) + 288 len stor3[0][2].length]
    mem[floor32(stor3[0][2].length) + floor32(stor3[0][1].length) + ceil32(stor3[0][1].length) + ceil32(stor3[0][2].length) + 544] = mem[floor32(stor3[0][2].length) + floor32(stor3[0][1].length) + ceil32(stor3[0][1].length) + ceil32(stor3[0][2].length) + -stor3[0][2].length % 32 + 576 len stor3[0][2].length % 32]
    return 0, 
           stor3[0].field_0,
           160,
           floor32(stor3[0][1].length) + 224,
           stor3[0].field_768,
           stor3[0][1].length,
           mem[ceil32(stor3[0][1].length) + ceil32(stor3[0][2].length) + 480 len floor32(stor3[0][1].length) + 32],
           stor3[0][2].length,
           mem[ceil32(stor3[0][1].length) + ceil32(stor3[0][2].length) + floor32(stor3[0][1].length) + 544 len floor32(stor3[0][2].length) + 32]
}



}
