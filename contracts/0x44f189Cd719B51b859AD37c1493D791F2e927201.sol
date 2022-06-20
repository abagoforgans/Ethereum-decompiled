contract main {




// =====================  Runtime code  =====================


#
#  - sub_fa5da74e(?)
#
const sub_06a05014(?) = 0

const getVersion = 'v1.02.00'

const getAttributes = 96, 160, 224, 4, 'hilo' << 224, 4, 'card' << 224, 8, uint64('v1.02.00')

const getType = 'card'

const getName = 'hilo'

const sub_1f4cefd2(?) = 10

const sub_4e633c2c(?) = 1

const getMultipliers = 3750000 * 24 * 3600, 0

const sub_8afa7cee(?) = 2

const getSetupParameters = 135, 3, 0

const sub_a56e3d44(?) = 1

const sub_e6765e16(?) = 'v1.04.01'


function _fallback() payable {
    revert
}

function sub_ebb4998e(?) {
    if arg1 <= 0:
        return 0
    return 1, 3750000 * 24 * 3600 * arg1 / 100 * 10^6, 0
}

function sub_9c3024a7(?) {
    mem[608 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if arg1:
        return 0
    if arg2.length != 1:
        return 0
    require 0 < arg2.length
    if mem[639 len 1] > 11:
        return 0
    return 1
}

function sub_4ecf870d(?) {
    if arg1 <= 0:
        return 0, 0, code.data[6829 len 192], code.data[6829 len 288]
    mem[(32 * arg2.length) + 3136] = 3
    mem[(32 * arg2.length) + 3168] = 5
    mem[(32 * arg2.length) + 3200] = 8
    mem[(32 * arg2.length) + 3232] = 14
    mem[(32 * arg2.length) + 3264] = 19
    mem[(32 * arg2.length) + 3296] = 21
    mem[(32 * arg2.length) + 3328] = 24
    mem[(32 * arg2.length) + 3360] = 30
    mem[(32 * arg2.length) + 3392] = 39
    mem[(32 * arg2.length) + 3424] = 41
    mem[(32 * arg2.length) + 3456] = 44
    mem[(32 * arg2.length) + 3488] = 50
    idx = 0
    while uint8(idx) < 12:
        mem[(32 * uint8(idx)) + (32 * arg2.length) + 2368] = mem[(32 * uint8(idx)) + (32 * arg2.length) + 3167 len 1]
        idx = idx + 1
        continue 
    return 1, -arg1, code.data[6989 len 32] >> 1280, code.data[6829 len 288]
}



}
