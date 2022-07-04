contract main {




// =====================  Runtime code  =====================


#
#  - sub_4ecf870d(?)
#  - sub_fa5da74e(?)
#
const sub_06a05014(?) = 0

const getVersion = 'v1.00.01'

const getAttributes = 96, 160, 224, 11, 'alicecooper' << 168, 4, 'slot' << 224, 8, uint64('v1.00.01')

const getType = 'slot'

const getName = 'alicecooper'

const sub_1f4cefd2(?) = 20

const sub_4e633c2c(?) = 1

const getMultipliers = 10^10, 0

const sub_8afa7cee(?) = 2

const sub_a56e3d44(?) = 1

const sub_e6765e16(?) = 'v1.04.01'


function _fallback() payable {
    revert
}

function sub_9c3024a7(?) {
    if uint8(call.data[260]) <= 0:
        return 0
    return 1
}

function sub_ebb4998e(?) {
    if arg1 <= 0:
        return 1, 100 * arg1, 0
    if not uint8(call.data[68]):
        return 1, 100 * arg1, 0
    else:
        return 0
}

function sub_7e60d996(?) {
    mem[96 len 160] = code.data[13569 len 160]
    mem[64] = 416
    mem[256] = 3
    mem[288] = 4
    mem[320] = 5
    mem[352] = 6
    mem[384] = 10
    require uint8(arg1 % 5) < 5
    mem[416] = mem[(32 * uint8(arg1 % 5)) + 287 len 1]
    return memory
      from 416
       len 32
}

function sub_51ee0fbd(?) {
    mem[96 len 192] = code.data[13569 len 192]
    if arg1 > 5:
        mem[64] = 480
        mem[288] = 8
        mem[320] = 10
        mem[352] = 8
    else:
        if arg1 == 3:
            mem[64] = 480
            mem[288] = 3
            mem[320] = 4
            mem[352] = 6
        else:
            if arg1 == 4:
                mem[64] = 480
                mem[288] = 6
                mem[320] = 6
            else:
                if arg1 != 5:
                    return 0
                mem[64] = 480
                mem[288] = 8
                mem[320] = 10
            mem[352] = 8
    mem[384] = 10
    mem[416] = 15
    mem[448] = 20
    require arg2 % 6 < 6
    mem[480] = mem[(32 * arg2 % 6) + 319 len 1]
    return memory
      from 480
       len 32
}



}
