contract main {


// =======================  Init code  ======================


#
#  - _fallback()
#


// =====================  Runtime code  =====================


#
#  - sub_488c9419(?)
#
array of struct stor0;
mapping of uint256 stor1;
uint256 stor2;
mapping of uint256 stor3;

function _fallback() payable {
  stop
}

function SetReward(uint256 arg1) {
    stor2 = arg1
}

function sub_003005ff(?) {
    if stor1[address(arg1)] >= stor0.length:
        stor3[address(arg1)] = 0
        call arg1 with:
           value stor3[address(arg1)] wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
            return 1
        else:
            return 0
    else:
        return 0
}

function sub_81b3c35c(?) {
    if stor1[address(arg1)] >= stor0.length:
        return ''
    require stor1[address(arg1)] < stor0.length
    mem[160] = stor[sha3((4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3)].field_0
    idx = 160
    s = 0
    while stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length + 128 > idx:
        mem[idx + 32] = stor[s + sha3((4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length, data=mem[160 len stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length]), 
}

function sub_05d22f3c(?) {
    if stor1[address(arg1)] >= stor0.length:
        mem[256] = mem[281 len 7]
        return Array(len=7, data=mem[256])
    require stor1[address(arg1)] < stor0.length
    mem[160] = stor[sha3((4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2)].field_0
    idx = 160
    s = 0
    while stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length + 128 > idx:
        mem[idx + 32] = stor[s + sha3((4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length, data=mem[160 len stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length]), 
}

function sub_da0979b6(?) {
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    if stor1[address(arg1)] >= stor0.length:
        mem[192] = 7
        mem[224] = 'SUCCESS'
        mem[256] = 0
        if stor1[address(arg1)] >= stor0.length:
            mem[416] = mem[441 len 7]
            return 64, 128, 7, mem[416], 0
        mem[32] = 1
        require stor1[address(arg1)] < stor0.length
        mem[288] = stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length
        mem[320] = stor[sha3((4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3)].field_0
        idx = 320
        s = 0
        while stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length + 288 > idx:
            mem[idx + 32] = stor[s + sha3((4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3)].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length) + 320] = 64
        mem[ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length) + 384] = 7
        mem[ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length) + 416] = mem[ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length) + 441 len 7]
        mem[ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length) + 352] = 128
        mem[ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length) + 448] = stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length
        mem[ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length) + 480 len stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length] = mem[320 len stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length]
        if not stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length % 32:
            return 64, 
                   128,
                   7,
                   mem[ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length) + 416],
                   stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length,
                   mem[320 len stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length]
        mem[floor32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length) + ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length) + 480] = mem[floor32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length) + ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length) + -stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length % 32 + 512 len stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length % 32]
        return 64, 
               128,
               7,
               mem[ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length) + 416],
               stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length,
               mem[ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length) + 480 len floor32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length) + 32]
    require stor1[address(arg1)] < stor0.length
    mem[192] = stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length
    mem[224] = stor[sha3((4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2)].field_0
    idx = 224
    s = 0
    while stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length + 192 > idx:
        mem[idx + 32] = stor[s + sha3((4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length) + 224] = 0
    mem[0] = arg1
    mem[32] = 1
    if stor1[address(arg1)] >= stor0.length:
        mem[ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length) + 256] = 0
        mem[ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length) + 288] = 64
        mem[ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length) + 352] = stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length
        mem[ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length) + 384 len stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length] = mem[224 len stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length]
        if not stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length % 32:
            return 64, 
                   stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length + 96,
                   stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length,
                   mem[224 len stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length],
                   0
        mem[floor32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length) + ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length) + 384] = mem[floor32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length) + ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length) + -stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length % 32 + 416 len stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length % 32]
        return 64, 
               floor32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length) + 128,
               stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length,
               mem[ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length) + 384 len floor32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length) + 32],
               0
    mem[32] = 1
    require stor1[address(arg1)] < stor0.length
    mem[64] = ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length) + ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length) + 288
    mem[ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length) + 256] = stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length
    mem[0] = (4 * stor1[address(arg1)]) + sha3(0) + 3
    mem[ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length) + 288] = stor[sha3((4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3)].field_0
    idx = ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length) + 288
    s = 0
    while ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length) + stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length + 256 > idx:
        mem[idx + 32] = stor[s + sha3((4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length) + ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length) + 288] = 64
    mem[ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length) + ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length) + 352] = stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length
    mem[ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length) + ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length) + 384 len stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length] = mem[224 len stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length]
    mem[ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length) + ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length) + 320] = stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length + 96
    mem[stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length + ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length) + ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length) + 384] = stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length
    mem[stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length + ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length) + ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length) + 416 len stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length] = mem[ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length) + 288 len stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length]
    if not stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length % 32:
        return Array(len=stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length, data=mem[224 len stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length], stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length, mem[ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length) + 288 len stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length]), 
               stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length + 96
    mem[floor32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length) + stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length + ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length) + ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length) + 416] = mem[floor32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length) + stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length + ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length) + ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length) + -stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length % 32 + 448 len stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length % 32]
    return Array(len=stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length, data=mem[224 len stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length], stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length, mem[ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length) + ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length) + stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length + 416 len floor32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length) + 32]), 
           stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length + 96
}

function sub_ccf580c5(?) {
    mem[96] = 0
    mem[128] = 0
    stor1[address(arg1)] = 1
    mem[160] = 0
    if stor1[address(arg1)] >= stor0.length:
        mem[192] = 7
        mem[224] = 'SUCCESS'
        mem[256] = 0
        if stor1[address(arg1)] >= stor0.length:
            mem[416] = mem[441 len 7]
            return 64, 128, 7, mem[416], 0
        mem[32] = 1
        require stor1[address(arg1)] < stor0.length
        mem[288] = stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length
        mem[320] = stor[sha3((4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3)].field_0
        idx = 320
        s = 0
        while stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length + 288 > idx:
            mem[idx + 32] = stor[s + sha3((4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3)].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length) + 320] = 64
        mem[ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length) + 384] = 7
        mem[ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length) + 416] = mem[ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length) + 441 len 7]
        mem[ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length) + 352] = 128
        mem[ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length) + 448] = stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length
        mem[ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length) + 480 len stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length] = mem[320 len stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length]
        if not stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length % 32:
            return 64, 
                   128,
                   7,
                   mem[ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length) + 416],
                   stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length,
                   mem[320 len stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length]
        mem[floor32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length) + ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length) + 480] = mem[floor32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length) + ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length) + -stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length % 32 + 512 len stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length % 32]
        return 64, 
               128,
               7,
               mem[ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length) + 416],
               stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length,
               mem[ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length) + 480 len floor32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length) + 32]
    require stor1[address(arg1)] < stor0.length
    mem[192] = stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length
    mem[224] = stor[sha3((4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2)].field_0
    idx = 224
    s = 0
    while stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length + 192 > idx:
        mem[idx + 32] = stor[s + sha3((4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length) + 224] = 0
    mem[0] = arg1
    mem[32] = 1
    if stor1[address(arg1)] >= stor0.length:
        mem[ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length) + 256] = 0
        mem[ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length) + 288] = 64
        mem[ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length) + 352] = stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length
        mem[ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length) + 384 len stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length] = mem[224 len stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length]
        if not stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length % 32:
            return 64, 
                   stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length + 96,
                   stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length,
                   mem[224 len stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length],
                   0
        mem[floor32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length) + ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length) + 384] = mem[floor32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length) + ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length) + -stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length % 32 + 416 len stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length % 32]
        return 64, 
               floor32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length) + 128,
               stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length,
               mem[ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length) + 384 len floor32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length) + 32],
               0
    mem[32] = 1
    require stor1[address(arg1)] < stor0.length
    mem[64] = ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length) + ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length) + 288
    mem[ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length) + 256] = stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length
    mem[0] = (4 * stor1[address(arg1)]) + sha3(0) + 3
    mem[ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length) + 288] = stor[sha3((4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3)].field_0
    idx = ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length) + 288
    s = 0
    while ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length) + stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length + 256 > idx:
        mem[idx + 32] = stor[s + sha3((4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length) + ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length) + 288] = 64
    mem[ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length) + ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length) + 352] = stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length
    mem[ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length) + ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length) + 384 len stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length] = mem[224 len stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length]
    mem[ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length) + ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length) + 320] = stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length + 96
    mem[stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length + ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length) + ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length) + 384] = stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length
    mem[stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length + ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length) + ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length) + 416 len stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length] = mem[ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length) + 288 len stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length]
    if not stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length % 32:
        return Array(len=stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length, data=mem[224 len stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length], stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length, mem[ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length) + 288 len stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length]), 
               stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length + 96
    mem[floor32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length) + stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length + ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length) + ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length) + 416] = mem[floor32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length) + stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length + ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length) + ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length) + -stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length % 32 + 448 len stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length % 32]
    return Array(len=stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length, data=mem[224 len stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length], stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length, mem[ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length) + ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length) + stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length + 416 len floor32(stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 3].length) + 32]), 
           stor[(4 * stor1[address(arg1)]) + ('name', 'stor0', 0) + 2].length + 96
}

function sub_2e4b8953(?) {
    mem[96] = 0
    mem[128] = 0
    if stor1[address(arg3)] >= stor0.length:
        mem[352] = mem[377 len 7]
        return 0, 96, 160, 7, mem[352], 0
    require stor1[address(arg3)] < stor0.length
    if arg1 == stor0[stor1[address(arg3)]].field_0:
        require stor1[address(arg3)] < stor0.length
        if arg2 == stor0[stor1[address(arg3)]].field_256:
            stor1[address(arg3)]++
            mem[160] = 0
            if stor1[address(arg3)] >= stor0.length:
                mem[192] = 7
                mem[224] = 'SUCCESS'
                mem[256] = 0
                if stor1[address(arg3)] >= stor0.length:
                    stor1[address(arg3)]--
                    mem[448] = mem[473 len 7]
                    return 1, 96, 160, 7, mem[448], 0
                require stor1[address(arg3)] < stor0.length
                mem[288] = stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length
                mem[320] = stor[sha3((4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3)].field_0
                idx = 320
                s = 0
                while stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length + 288 > idx:
                    mem[idx + 32] = stor[s + sha3((4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                stor1[address(arg3)]--
                mem[ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length) + 320] = 1
                mem[ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length) + 352] = 96
                mem[ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length) + 416] = 7
                mem[ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length) + 448] = mem[ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length) + 473 len 7]
                mem[ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length) + 384] = 160
                mem[ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length) + 480] = stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length
                mem[ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length) + 512 len stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length] = mem[320 len stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length]
                if not stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length % 32:
                    return 1, 
                           96,
                           160,
                           7,
                           mem[ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length) + 448],
                           stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length,
                           mem[320 len stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length]
                mem[floor32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length) + ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length) + 512] = mem[floor32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length) + ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length) + -stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length % 32 + 544 len stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length % 32]
                return 1, 
                       96,
                       160,
                       7,
                       mem[ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length) + 448],
                       stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length,
                       mem[ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length) + 512 len floor32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length) + 32]
            require stor1[address(arg3)] < stor0.length
            mem[192] = stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length
            mem[224] = stor[sha3((4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2)].field_0
            idx = 224
            s = 0
            while stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length + 192 > idx:
                mem[idx + 32] = stor[s + sha3((4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2)].field_256
                idx = idx + 32
                s = s + 1
                continue 
            mem[ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + 224] = 0
            if stor1[address(arg3)] >= stor0.length:
                mem[64] = ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + 288
                mem[ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + 256] = 0
                mem[0] = arg3
                mem[32] = 1
                stor1[address(arg3)]--
                mem[ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + 288] = 1
                mem[ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + 320] = 96
                mem[ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + 384] = stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length
                mem[ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + 416 len stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length] = mem[224 len stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length]
                if not stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length % 32:
                    return 1, 
                           96,
                           stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length + 128,
                           stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length,
                           mem[224 len stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length],
                           0
                mem[floor32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + 416] = mem[floor32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + -stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length % 32 + 448 len stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length % 32]
                return 1, 
                       96,
                       floor32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + 160,
                       stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length,
                       mem[ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + 416 len floor32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + 32],
                       0
            require stor1[address(arg3)] < stor0.length
            mem[64] = ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length) + 288
            mem[ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + 256] = stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length
            mem[ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + 288] = stor[sha3((4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3)].field_0
            idx = ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + 288
            s = 0
            while ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length + 256 > idx:
                mem[idx + 32] = stor[s + sha3((4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3)].field_256
                idx = idx + 32
                s = s + 1
                continue 
            mem[0] = arg3
            mem[32] = 1
            stor1[address(arg3)]--
            mem[ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length) + 288] = 1
            mem[ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length) + 320] = 96
            mem[ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length) + 384] = stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length
            mem[ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length) + 416 len stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length] = mem[224 len stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length]
            mem[ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length) + 352] = stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length + 128
            mem[stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length + ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length) + 416] = stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length
            mem[stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length + ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length) + 448 len stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length] = mem[ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + 288 len stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length]
            if not stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length % 32:
                return 1, 
                       Array(len=stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length, data=mem[224 len stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length], stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length, mem[ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + 288 len stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length]),
                       stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length + 128
            mem[floor32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length) + stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length + ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length) + 448] = mem[floor32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length) + stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length + ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length) + -stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length % 32 + 480 len stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length % 32]
            return 1, 
                   Array(len=stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length, data=mem[224 len stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length], stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length, mem[ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length) + stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length + 448 len floor32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length) + 32]),
                   stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length + 128
    mem[160] = 0
    if stor1[address(arg3)] >= stor0.length:
        mem[192] = 7
        mem[224] = 'SUCCESS'
        mem[256] = 0
        if stor1[address(arg3)] >= stor0.length:
            mem[448] = mem[473 len 7]
            return 0, 96, 160, 7, mem[448], 0
        mem[32] = 1
        require stor1[address(arg3)] < stor0.length
        mem[288] = stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length
        mem[320] = stor[sha3((4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3)].field_0
        idx = 320
        s = 0
        while stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length + 288 > idx:
            mem[idx + 32] = stor[s + sha3((4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3)].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length) + 320] = 0
        mem[ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length) + 352] = 96
        mem[ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length) + 416] = 7
        mem[ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length) + 448] = mem[ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length) + 473 len 7]
        mem[ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length) + 384] = 160
        mem[ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length) + 480] = stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length
        mem[ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length) + 512 len stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length] = mem[320 len stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length]
        if not stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length % 32:
            return 0, 
                   96,
                   160,
                   7,
                   mem[ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length) + 448],
                   stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length,
                   mem[320 len stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length]
        mem[floor32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length) + ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length) + 512] = mem[floor32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length) + ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length) + -stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length % 32 + 544 len stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length % 32]
        return 0, 
               96,
               160,
               7,
               mem[ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length) + 448],
               stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length,
               mem[ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length) + 512 len floor32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length) + 32]
    require stor1[address(arg3)] < stor0.length
    mem[192] = stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length
    mem[224] = stor[sha3((4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2)].field_0
    idx = 224
    s = 0
    while stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length + 192 > idx:
        mem[idx + 32] = stor[s + sha3((4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + 224] = 0
    mem[0] = arg3
    mem[32] = 1
    if stor1[address(arg3)] >= stor0.length:
        mem[64] = ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + 288
        mem[ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + 256] = 0
        mem[ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + 288] = 0
        mem[ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + 320] = 96
        mem[ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + 384] = stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length
        mem[ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + 416 len stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length] = mem[224 len stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length]
        if not stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length % 32:
            return 0, 
                   96,
                   stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length + 128,
                   stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length,
                   mem[224 len stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length],
                   0
        mem[floor32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + 416] = mem[floor32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + -stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length % 32 + 448 len stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length % 32]
        return 0, 
               96,
               floor32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + 160,
               stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length,
               mem[ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + 416 len floor32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + 32],
               0
    mem[32] = 1
    require stor1[address(arg3)] < stor0.length
    mem[64] = ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length) + 288
    mem[ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + 256] = stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length
    mem[0] = (4 * stor1[address(arg3)]) + sha3(0) + 3
    mem[ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + 288] = stor[sha3((4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3)].field_0
    idx = ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + 288
    s = 0
    while ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length + 256 > idx:
        mem[idx + 32] = stor[s + sha3((4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length) + 288] = 0
    mem[ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length) + 320] = 96
    mem[ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length) + 384] = stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length
    mem[ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length) + 416 len stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length] = mem[224 len stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length]
    if not stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length % 32:
        mem[ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length) + 352] = stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length + 128
        mem[stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length + ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length) + 416] = stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length
        mem[stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length + ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length) + 448 len stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length] = mem[ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + 288 len stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length]
        if not stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length % 32:
            return 0, 
                   96,
                   stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length + 128,
                   stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length,
                   mem[224 len stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length],
                   stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length,
                   mem[ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + 288 len stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length]
        mem[floor32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length) + stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length + ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length) + 448] = mem[floor32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length) + stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length + ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length) + -stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length % 32 + 480 len stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length % 32]
        return 0, 
               96,
               stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length + 128,
               stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length,
               mem[224 len stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length],
               stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length,
               mem[ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length) + stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length + 448 len floor32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length) + 32]
    mem[floor32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length) + 416] = mem[floor32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length) + -stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length % 32 + 448 len stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length % 32]
    mem[ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length) + 352] = floor32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + 160
    mem[floor32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length) + 448] = stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length
    mem[floor32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length) + 480 len stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length] = mem[ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + 288 len stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length]
    if not stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length % 32:
        return 0, 
               96,
               floor32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + 160,
               stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length,
               mem[ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length) + 416 len floor32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + 32],
               stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length,
               mem[ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + 288 len stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length]
    mem[floor32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length) + floor32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length) + 480] = mem[floor32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length) + floor32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length) + -stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length % 32 + 512 len stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length % 32]
    return 0, 
           96,
           floor32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + 160,
           stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length,
           mem[ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length) + 416 len floor32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + 32],
           stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length,
           mem[ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + ceil32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length) + floor32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 2].length) + 480 len floor32(stor[(4 * stor1[address(arg3)]) + ('name', 'stor0', 0) + 3].length) + 32]
}



}
