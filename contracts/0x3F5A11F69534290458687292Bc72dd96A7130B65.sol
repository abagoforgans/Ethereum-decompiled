contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 3992]




// =====================  Runtime code  =====================


#
#  - sub_52f33682(?)
#
uint256 totalUsers;
mapping of uint8 stor1;
mapping of struct stor2;

function totalUsers() {
    return totalUsers
}

function sub_f3a938e1(?) {
    return bool(stor1[arg1][arg2])
}

function _fallback() payable {
    revert
}

function review(string arg1, bool arg2) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 0
    if arg1.length:
        require stor2[mem[128]].field_2304
        require not stor1[address(msg.sender)][mem[128]]
        stor1[address(msg.sender)][mem[128]] = 1
        if not arg2:
            stor2[mem[128]].field_1536++
        else:
            stor2[mem[128]].field_1280++
    else:
        require stor2[0].field_2304
        require not stor1[address(msg.sender)][0]
        stor1[address(msg.sender)][0] = 1
        if not arg2:
            stor2[0].field_1536++
        else:
            stor2[0].field_1280++
    return 1
}

function update(string arg1, address arg2, string arg3, string arg4, string arg5) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg3.length
    if arg1.length:
        require stor2[mem[128]].field_2304
        require stor2[mem[128]].field_0 == msg.sender
        stor2[mem[128]].field_0 = arg2
        stor2[mem[128]][2][].field_0 = Array(len=arg3.length, data=arg3[all])
        stor2[mem[128]][3][].field_0 = Array(len=arg4.length, data=arg4[all])
        stor2[mem[128]][4][].field_0 = Array(len=arg5.length, data=arg5[all])
        stor2[mem[128]].field_2048 = block.timestamp
    else:
        require stor2[0].field_2304
        require stor2[0].field_0 == msg.sender
        stor2[0].field_0 = arg2
        stor2[0][2][].field_0 = Array(len=arg3.length, data=arg3[all])
        stor2[0][3][].field_0 = Array(len=arg4.length, data=arg4[all])
        stor2[0][4][].field_0 = Array(len=arg5.length, data=arg5[all])
        stor2[0].field_2048 = block.timestamp
    return 1
}

function register(string arg1, string arg2, string arg3, string arg4) {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = arg3.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len arg3.length] = arg3[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192] = arg4.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224 len arg4.length] = arg4[all]
    mem[64] = ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 256
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224] = 0
    require arg1.length <= 32
    s = 0
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        if Mask(8, 248, mem[idx + 128]) < 0x3000000000000000000000000000000000000000000000000000000000000000:
            if Mask(8, 248, mem[idx + 128]) != 0x2d00000000000000000000000000000000000000000000000000000000000000:
                require Mask(8, 248, mem[idx + 128]) == 0x2e00000000000000000000000000000000000000000000000000000000000000
                require not s
        else:
            if Mask(8, 248, mem[idx + 128]) > 0x3900000000000000000000000000000000000000000000000000000000000000:
                if Mask(8, 248, mem[idx + 128]) < 0x6100000000000000000000000000000000000000000000000000000000000000:
                    if Mask(8, 248, mem[idx + 128]) != 0x2d00000000000000000000000000000000000000000000000000000000000000:
                        require Mask(8, 248, mem[idx + 128]) == 0x2e00000000000000000000000000000000000000000000000000000000000000
                        require not s
                else:
                    if Mask(8, 248, mem[idx + 128]) > 0x7a00000000000000000000000000000000000000000000000000000000000000:
                        if Mask(8, 248, mem[idx + 128]) != 0x2d00000000000000000000000000000000000000000000000000000000000000:
                            require Mask(8, 248, mem[idx + 128]) == 0x2e00000000000000000000000000000000000000000000000000000000000000
                            require not s
        if Mask(8, 248, mem[idx + 128]) != 0x2e00000000000000000000000000000000000000000000000000000000000000:
            s = Mask(8, 248, mem[idx + 128])
            idx = idx + 1
            s = s
            continue 
        s = Mask(8, 248, mem[idx + 128])
        idx = idx + 1
        s = s + 1
        continue 
    if arg1.length:
        require not stor2[mem[128]].field_2304
        totalUsers++
        stor2[mem[128]].field_0 = msg.sender
        stor2[mem[128]][1][].field_0 = Array(len=arg1.length, data=arg1[all])
        stor2[mem[128]][2][].field_0 = Array(len=arg2.length, data=arg2[all])
        stor2[mem[128]][3][].field_0 = Array(len=arg3.length, data=arg3[all])
        stor2[mem[128]][4][].field_0 = Array(len=arg4.length, data=arg4[all])
        stor2[mem[128]].field_1792 = block.timestamp
        stor2[mem[128]].field_2048 = block.timestamp
        stor2[mem[128]].field_2304 = 1
    else:
        require not stor2[0].field_2304
        totalUsers++
        stor2[0].field_0 = msg.sender
        stor2[0][1][].field_0 = Array(len=arg1.length, data=arg1[all])
        stor2[0][2][].field_0 = Array(len=arg2.length, data=arg2[all])
        stor2[0][3][].field_0 = Array(len=arg3.length, data=arg3[all])
        stor2[0][4][].field_0 = Array(len=arg4.length, data=arg4[all])
        stor2[0].field_1792 = block.timestamp
        stor2[0].field_2048 = block.timestamp
        stor2[0].field_2304 = 1
    return 1
}



}
