contract main {




// =====================  Runtime code  =====================


const sub_06a05014(?) = 0

const getVersion = 'v1.00.00'

const getAttributes = 96, 160, 224, 16, 'DiceGameStandard' << 128, 5, 'table' << 216, 8, uint64('v1.00.00')

const getType = 'table'

const getName = 'DiceGameStandard'

const sub_1f4cefd2(?) = 10

const sub_4e633c2c(?) = 1

const getMultipliers = 10^9, 0

const sub_8afa7cee(?) = 2

const sub_9c3024a7(?) = 0

const sub_a56e3d44(?) = 1

const sub_e6765e16(?) = 'v1.04.01'

const sub_fa5da74e(?) = 0, 0, code.data[3768 len 192], code.data[3768 len 288]


function _fallback() payable {
    revert
}

function sub_0745ece2(?) {
    return arg1 << 248, arg2, code.data[3832 len 32]
}

function sub_c91bd8b3(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require 0 < arg1.length
    require 1 < arg1.length
    _5 = mem[160]
    mem[(32 * arg1.length) + 128] = mem[159 len 1]
    return mem[(32 * arg1.length) + 128], _5 << 248
}

function sub_ebb4998e(?) {
    mem[416 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if arg2.length != 2:
        return 0
    require 0 < arg2.length
    require 1 < arg2.length
    if mem[447 len 1] > 4:
        return 0
    if mem[479 len 1] > 33:
        return 0
    return 1, 10 * arg1, 0
}

function sub_b19d001a(?) {
    if not arg4:
        if arg1 >= arg2:
            return 0
        if arg3:
            if not 100 * 10^6 * arg2 / arg3:
                return 0
            if 100 * 10^6 * arg2 / arg3:
                return (98 * 10^16 / 100 * 10^6 * arg2 / arg3 / 100)
    else:
        if 1 == arg4:
            if arg1 > arg2:
                return 0
            if arg3:
                if not (100 * 10^6 * arg2) + 100 * 10^6 / arg3:
                    return 0
                if (100 * 10^6 * arg2) + 100 * 10^6 / arg3:
                    return (98 * 10^16 / (100 * 10^6 * arg2) + 100 * 10^6 / arg3 / 100)
        else:
            if 2 == arg4:
                if arg1 != arg2:
                    return 0
                if arg3:
                    if not 100 * 10^6 / arg3:
                        return 0
                    if 100 * 10^6 / arg3:
                        return (98 * 10^16 / 100 * 10^6 / arg3 / 100)
            else:
                if 3 == arg4:
                    if arg1 < arg2:
                        return 0
                    if arg3:
                        if not (100 * 10^6 * arg3) - (100 * 10^6 * arg2) / arg3:
                            return 0
                        if (100 * 10^6 * arg3) - (100 * 10^6 * arg2) / arg3:
                            return (98 * 10^16 / (100 * 10^6 * arg3) - (100 * 10^6 * arg2) / arg3 / 100)
                else:
                    if arg4 != 4:
                        return 0
                    if arg1 <= arg2:
                        return 0
                    if arg3:
                        if not (100 * 10^6 * arg3) + (-100 * 10^6 * arg2) - 100 * 10^6 / arg3:
                            return 0
                        if (100 * 10^6 * arg3) + (-100 * 10^6 * arg2) - 100 * 10^6 / arg3:
                            return (98 * 10^16 / (100 * 10^6 * arg3) + (-100 * 10^6 * arg2) - 100 * 10^6 / arg3 / 100)
    revert
}

function sub_4ecf870d(?) {
    mem[416 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 416 len 192] = code.data[3768 len 192]
    if arg3.length != 2:
        return 0, 0, code.data[3768 len 192], code.data[3768 len 288]
    require 0 < arg3.length
    require 1 < arg3.length
    if mem[447 len 1] > 4:
        return 0, 0, code.data[3768 len 192], code.data[3768 len 288]
    if mem[479 len 1] > 33:
        return 0, 0, code.data[3768 len 192], code.data[3768 len 288]
    require 0 < arg3.length
    require 1 < arg3.length
    mem[(32 * arg3.length) + 1984] = 100000
    mem[(32 * arg3.length) + 2016] = 125000
    mem[(32 * arg3.length) + 2048] = 150000
    mem[(32 * arg3.length) + 2080] = 170000
    mem[(32 * arg3.length) + 2112] = 200000
    mem[(32 * arg3.length) + 2144] = 235000
    mem[(32 * arg3.length) + 2176] = 250000
    mem[(32 * arg3.length) + 2208] = 75 * 3600
    mem[(32 * arg3.length) + 2240] = 300000
    mem[(32 * arg3.length) + 2272] = 320000
    mem[(32 * arg3.length) + 2304] = 355000
    mem[(32 * arg3.length) + 2336] = 370000
    mem[(32 * arg3.length) + 2368] = 400000
    mem[(32 * arg3.length) + 2400] = 425000
    mem[(32 * arg3.length) + 2432] = 125 * 3600
    mem[(32 * arg3.length) + 2464] = 480000
    mem[(32 * arg3.length) + 2496] = 500000
    mem[(32 * arg3.length) + 2528] = 535000
    mem[(32 * arg3.length) + 2560] = 150 * 3600
    mem[(32 * arg3.length) + 2592] = 565000
    mem[(32 * arg3.length) + 2624] = 590000
    mem[(32 * arg3.length) + 2656] = 610000
    mem[(32 * arg3.length) + 2688] = 620000
    mem[(32 * arg3.length) + 2720] = 640000
    mem[(32 * arg3.length) + 2752] = 675000
    mem[(32 * arg3.length) + 2784] = 710000
    mem[(32 * arg3.length) + 2816] = 200 * 3600
    mem[(32 * arg3.length) + 2848] = 745000
    mem[(32 * arg3.length) + 2880] = 780000
    mem[(32 * arg3.length) + 2912] = 815000
    mem[(32 * arg3.length) + 2944] = 840000
    mem[(32 * arg3.length) + 2976] = 870000
    mem[(32 * arg3.length) + 3008] = 890000
    require mem[479 len 1] < 33
    if not mem[447 len 1]:
        if arg2 % 999999 >= mem[(32 * uint8(mem[448])) + (32 * arg3.length) + 2013 len 3]:
            return 2, -arg1, code.data[3800 len 160] >> 1280, code.data[3768 len 288]
        if not 100 * 10^6 * mem[(32 * uint8(mem[448])) + (32 * arg3.length) + 2013 len 3] / 10^6:
            return 2, -arg1, code.data[3800 len 160] >> 1280, code.data[3768 len 288]
        require 100 * 10^6 * mem[(32 * uint8(mem[448])) + (32 * arg3.length) + 2013 len 3] / 10^6
        if 98 * 10^16 / 100 * 10^6 * mem[(32 * uint8(mem[448])) + (32 * arg3.length) + 2013 len 3] / 10^6 / 100 <= 0:
            return 2, -arg1, code.data[3800 len 160] >> 1280, code.data[3768 len 288]
        return 2, 
               -arg1 + (arg1 * 98 * 10^16 / 100 * 10^6 * mem[(32 * uint8(mem[448])) + (32 * arg3.length) + 2013 len 3] / 10^6 / 100 / 100 * 10^6),
               code.data[3800 len 160] >> 1280,
               code.data[3768 len 288]
    if 1 == mem[447 len 1]:
        if arg2 % 999999 > mem[(32 * uint8(mem[448])) + (32 * arg3.length) + 2013 len 3]:
            return 2, -arg1, code.data[3800 len 160] >> 1280, code.data[3768 len 288]
        if not (100 * 10^6 * mem[(32 * uint8(mem[448])) + (32 * arg3.length) + 2013 len 3]) + 100 * 10^6 / 10^6:
            return 2, -arg1, code.data[3800 len 160] >> 1280, code.data[3768 len 288]
        require (100 * 10^6 * mem[(32 * uint8(mem[448])) + (32 * arg3.length) + 2013 len 3]) + 100 * 10^6 / 10^6
        if 98 * 10^16 / (100 * 10^6 * mem[(32 * uint8(mem[448])) + (32 * arg3.length) + 2013 len 3]) + 100 * 10^6 / 10^6 / 100 <= 0:
            return 2, -arg1, code.data[3800 len 160] >> 1280, code.data[3768 len 288]
        return 2, 
               -arg1 + (arg1 * 98 * 10^16 / (100 * 10^6 * mem[(32 * uint8(mem[448])) + (32 * arg3.length) + 2013 len 3]) + 100 * 10^6 / 10^6 / 100 / 100 * 10^6),
               code.data[3800 len 160] >> 1280,
               code.data[3768 len 288]
    if 2 == mem[447 len 1]:
        if arg2 % 999999 != mem[(32 * uint8(mem[448])) + (32 * arg3.length) + 2013 len 3]:
            return 2, -arg1, code.data[3800 len 160] >> 1280, code.data[3768 len 288]
        return 2, -arg1 + (98 * 10^12 * arg1 / 100 * 10^6), code.data[3800 len 160] >> 1280, code.data[3768 len 288]
    if 3 == mem[447 len 1]:
        if arg2 % 999999 < mem[(32 * uint8(mem[448])) + (32 * arg3.length) + 2013 len 3]:
            return 2, -arg1, code.data[3800 len 160] >> 1280, code.data[3768 len 288]
        if not (-100 * 10^6 * mem[(32 * uint8(mem[448])) + (32 * arg3.length) + 2013 len 3]) + 10^14 / 10^6:
            return 2, -arg1, code.data[3800 len 160] >> 1280, code.data[3768 len 288]
        require (-100 * 10^6 * mem[(32 * uint8(mem[448])) + (32 * arg3.length) + 2013 len 3]) + 10^14 / 10^6
        if 98 * 10^16 / (-100 * 10^6 * mem[(32 * uint8(mem[448])) + (32 * arg3.length) + 2013 len 3]) + 10^14 / 10^6 / 100 <= 0:
            return 2, -arg1, code.data[3800 len 160] >> 1280, code.data[3768 len 288]
        return 2, 
               -arg1 + (arg1 * 98 * 10^16 / (-100 * 10^6 * mem[(32 * uint8(mem[448])) + (32 * arg3.length) + 2013 len 3]) + 10^14 / 10^6 / 100 / 100 * 10^6),
               code.data[3800 len 160] >> 1280,
               code.data[3768 len 288]
    if mem[447 len 1] != 4:
        return 2, -arg1, code.data[3800 len 160] >> 1280, code.data[3768 len 288]
    if arg2 % 999999 <= mem[(32 * uint8(mem[448])) + (32 * arg3.length) + 2013 len 3]:
        return 2, -arg1, code.data[3800 len 160] >> 1280, code.data[3768 len 288]
    if not (-100 * 10^6 * mem[(32 * uint8(mem[448])) + (32 * arg3.length) + 2013 len 3]) + (27777750000 * 24 * 3600) / 10^6:
        return 2, -arg1, code.data[3800 len 160] >> 1280, code.data[3768 len 288]
    require (-100 * 10^6 * mem[(32 * uint8(mem[448])) + (32 * arg3.length) + 2013 len 3]) + (27777750000 * 24 * 3600) / 10^6
    if 98 * 10^16 / (-100 * 10^6 * mem[(32 * uint8(mem[448])) + (32 * arg3.length) + 2013 len 3]) + (27777750000 * 24 * 3600) / 10^6 / 100 <= 0:
        return 2, -arg1, code.data[3800 len 160] >> 1280, code.data[3768 len 288]
    return 2, 
           -arg1 + (arg1 * 98 * 10^16 / (-100 * 10^6 * mem[(32 * uint8(mem[448])) + (32 * arg3.length) + 2013 len 3]) + (27777750000 * 24 * 3600) / 10^6 / 100 / 100 * 10^6),
           code.data[3800 len 160] >> 1280,
           code.data[3768 len 288]
}



}
