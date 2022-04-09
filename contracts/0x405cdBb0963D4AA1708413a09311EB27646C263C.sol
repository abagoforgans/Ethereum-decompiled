contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 3781]




// =====================  Runtime code  =====================


#
#  - getPost(uint256 arg1)
#
array of uint256 username;
mapping of struct stor1;
mapping of struct stor2;
array of struct stor3;

function getUsername(address arg1) {
    return username[address(arg1)][0 len username[address(arg1)].length]
}

function _fallback() payable {
    revert
}

function setUsername(string arg1) {
    username[address(msg.sender)][] = Array(len=arg1.length, data=arg1[all])
}

function sub_a973db7d(?) {
    require stor1[arg1][5][address(msg.sender)].field_0 <= 2
    require stor1[arg1][5][address(msg.sender)].field_0 != 2
    require stor1[arg1][5][address(msg.sender)].field_0 <= 2
    if stor1[arg1][5][address(msg.sender)].field_0 != 1:
        stor1[arg1].field_256--
    else:
        stor1[arg1].field_256 -= 2
    stor1[arg1][5][address(msg.sender)].field_0 = 2
    emit 0x3f4fd0cc: msg.sender, arg1
}

function like(uint256 arg1) {
    require stor1[arg1][5][address(msg.sender)].field_0 <= 2
    require stor1[arg1][5][address(msg.sender)].field_0 != 1
    require stor1[arg1][5][address(msg.sender)].field_0 <= 2
    if stor1[arg1][5][address(msg.sender)].field_0 != 2:
        stor1[arg1].field_256++
    else:
        stor1[arg1].field_256 += 2
    stor1[arg1][5][address(msg.sender)].field_0 = 1
    emit 0x3e0a2361: msg.sender, arg1
}

function sub_acb346ac(?) {
    if stor2[arg1].field_0:
        mem[160] = stor2[arg1].field_0
        idx = 160
        s = 0
        while (32 * stor2[arg1].field_0) + 128 > idx:
            mem[idx + 32] = stor2[arg1][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * stor2[arg1].field_0) + 160] = 32
    mem[(32 * stor2[arg1].field_0) + 192] = stor2[arg1].field_0
    if stor2[arg1].field_0:
        mem[(32 * stor2[arg1].field_0) + 224] = mem[160]
        mem[(32 * stor2[arg1].field_0) + 256 len floor32((32 * stor2[arg1].field_0) - 1)] = mem[192 len floor32((32 * stor2[arg1].field_0) - 1)]
    return Array(len=stor2[arg1].field_0, data=mem[(32 * stor2[arg1].field_0) + 224 len 32 * stor2[arg1].field_0])
}

function sub_81c6e4b1(?) {
    if stor3.length:
        mem[ceil32(arg3.length) + 320] = uint256(stor3.field_0)
        idx = ceil32(arg3.length) + 320
        s = 0
        while ceil32(arg3.length) + (32 * stor3.length) + 288 > idx:
            mem[idx + 32] = stor3[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    stor1[arg2].field_0 = arg2
    stor1[arg2].field_256 = 0
    stor1[arg2][2][].field_0 = Array(len=arg3.length, data=arg3[all])
    stor1[arg2].field_768 = msg.sender
    stor1[arg2].field_1024 = stor3.length
    if not stor3.length:
        idx = 0
        while stor1[arg2].field_1024 > idx:
            stor1[arg2][idx + 4].field_0 = 0
            idx = idx + 1
            continue 
        stor2[arg1].field_0++
        if not stor2[arg1].field_0 <= stor2[arg1].field_0 + 1:
            idx = stor2[arg1].field_0 + 1
            while stor2[arg1].field_0 > idx:
                stor2[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if 32 * stor3.length <= 0:
            idx = 0
            while stor1[arg2].field_1024 > idx:
                stor1[arg2][idx + 4].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor1[arg2][4].field_0 = mem[ceil32(arg3.length) + 320]
            s = 1
            idx = ceil32(arg3.length) + 352
            while ceil32(arg3.length) + (32 * stor3.length) + 320 > idx:
                stor1[arg2][s + 4].field_0 = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = (Mask(251, 0, (32 * stor3.length) - 1) >> 5) + 1
            while stor1[arg2].field_1024 > idx:
                stor1[arg2][idx + 4].field_0 = 0
                idx = idx + 1
                continue 
        stor2[arg1].field_0++
        if not stor2[arg1].field_0 <= stor2[arg1].field_0 + 1:
            idx = stor2[arg1].field_0 + 1
            while stor2[arg1].field_0 > idx:
                stor2[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    stor2[arg1][stor2[arg1].field_0].field_0 = arg2
    emit 0x932f1f20: msg.sender, arg2
}

function sub_5688e6df(?) {
    require not stor1[arg1].field_0
    if stor3.length:
        mem[ceil32(arg2.length) + 320] = uint256(stor3.field_0)
        idx = ceil32(arg2.length) + 320
        s = 0
        while ceil32(arg2.length) + (32 * stor3.length) + 288 > idx:
            mem[idx + 32] = stor3[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    stor1[arg1].field_0 = arg1
    stor1[arg1].field_256 = 0
    stor1[arg1][2][].field_0 = Array(len=arg2.length, data=arg2[all])
    stor1[arg1].field_768 = msg.sender
    stor1[arg1].field_1024 = stor3.length
    if not stor3.length:
        idx = 0
        while stor1[arg1].field_1024 > idx:
            stor1[arg1][idx + 4].field_0 = 0
            idx = idx + 1
            continue 
        stor1[arg3].field_1024++
        if not stor1[arg3].field_1024 <= stor1[arg3].field_1024 + 1:
            idx = stor1[arg3].field_1024 + 1
            while stor1[arg3].field_1024 > idx:
                stor1[arg3][idx + 4].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if 32 * stor3.length <= 0:
            idx = 0
            while stor1[arg1].field_1024 > idx:
                stor1[arg1][idx + 4].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor1[arg1][4].field_0 = mem[ceil32(arg2.length) + 320]
            s = 1
            idx = ceil32(arg2.length) + 352
            while ceil32(arg2.length) + (32 * stor3.length) + 320 > idx:
                stor1[arg1][s + 4].field_0 = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = (Mask(251, 0, (32 * stor3.length) - 1) >> 5) + 1
            while stor1[arg1].field_1024 > idx:
                stor1[arg1][idx + 4].field_0 = 0
                idx = idx + 1
                continue 
        stor1[arg3].field_1024++
        if not stor1[arg3].field_1024 <= stor1[arg3].field_1024 + 1:
            idx = stor1[arg3].field_1024 + 1
            while stor1[arg3].field_1024 > idx:
                stor1[arg3][idx + 4].field_0 = 0
                idx = idx + 1
                continue 
    stor[stor1[arg3].field_1024 + ('array', 4, ('map', ('param', 'arg3'), ('name', 'stor1', 1)))].field_0 = arg1
    emit 0x932f1f20: msg.sender, arg1
}



}
