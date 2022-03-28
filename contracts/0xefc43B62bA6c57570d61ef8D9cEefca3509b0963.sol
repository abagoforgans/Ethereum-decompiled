contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 1997]




// =====================  Runtime code  =====================


#
#  - data()
#
array of uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
array of uint256 stor4;

function _fallback() payable {
    revert
}

function sub_1d37f4ac(?) {
    stor0.length++
    if not stor0.length <= stor0.length + 1:
        idx = stor0.length + 1
        while stor0.length > idx:
            uint256(stor0[idx]) = 0
            idx = idx + 1
            continue 
    uint256(stor0[stor0.length]) = arg1
    stor2.length++
    if not stor2.length <= stor2.length + 1:
        idx = stor2.length + 1
        while stor2.length > idx:
            stor2[idx] = 0
            idx = idx + 1
            continue 
    stor2[stor2.length] = arg2
    stor1.length++
    if not stor1.length <= stor1.length + 1:
        idx = stor1.length + 1
        while stor1.length > idx:
            stor1[idx] = 0
            idx = idx + 1
            continue 
    stor1[stor1.length] = arg3
}

function sub_8b0d8b12(?) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 0
    require stor0.length == arg2.length
    stor3.length++
    if not stor3.length > stor3.length + 1:
        stor3[stor3.length] = arg1
        idx = 0
        while idx < arg2.length:
            stor4.length++
            if not stor4.length <= stor4.length + 1:
                s = stor4.length + sha3(4) + 1
                while sha3(4) + stor4.length > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            mem[0] = 4
            require idx < arg2.length
            stor4[stor4.length] = mem[(32 * idx) + 128]
            idx = idx + 1
            continue 
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            require idx < stor2.length
            if stor2[idx] > mem[(32 * idx) + 128]:
                require idx < stor0.length
                mem[0] = 0
                uint256(stor0[0.03125 / idx]) = not stor2[idx] > mem[(32 * idx) + 128] * 256^(idx % 32) or !(255 * 256^(idx % 32)) and uint256(stor0[0.03125 / idx])
            else:
                require idx < stor1.length
                require idx < arg2.length
                require idx < stor0.length
                mem[0] = 0
                uint256(stor0[0.03125 / idx]) = not mem[(32 * idx) + 128] > stor1[idx] * 256^(idx % 32) or !(255 * 256^(idx % 32)) and uint256(stor0[0.03125 / idx])
            idx = idx + 1
            continue 
        if stor0.length:
            mem[(32 * arg2.length) + 192] = bool(uint8(stor0))
            idx = (32 * arg2.length) + 192
            s = 0
            while (32 * arg2.length) + (32 * stor0.length) + 160 > idx:
                mem[idx + 32] = bool(stor('name', 'stor0', 0)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1])
                idx = idx + 32
                s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                continue 
        mem[(32 * arg2.length) + (32 * stor0.length) + 192] = 32
        mem[(32 * arg2.length) + (32 * stor0.length) + 224] = stor0.length
        if Mask(251, 0, stor0.length):
            mem[(32 * arg2.length) + (32 * stor0.length) + 256] = mem[(32 * arg2.length) + 192]
            mem[(32 * arg2.length) + (32 * stor0.length) + 288 len floor32((32 * stor0.length) - 1)] = mem[(32 * arg2.length) + 224 len floor32((32 * stor0.length) - 1)]
    else:
        idx = stor3.length + 1
        while stor3.length > idx:
            stor3[idx] = 0
            idx = idx + 1
            continue 
        stor3[stor3.length] = arg1
        idx = 0
        while idx < arg2.length:
            stor4.length++
            if not stor4.length <= stor4.length + 1:
                s = stor4.length + sha3(4) + 1
                while sha3(4) + stor4.length > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            mem[0] = 4
            require idx < arg2.length
            stor4[stor4.length] = mem[(32 * idx) + 128]
            idx = idx + 1
            continue 
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            require idx < stor2.length
            if stor2[idx] > mem[(32 * idx) + 128]:
                require idx < stor0.length
                mem[0] = 0
                uint256(stor0[0.03125 / idx]) = not stor2[idx] > mem[(32 * idx) + 128] * 256^(idx % 32) or !(255 * 256^(idx % 32)) and uint256(stor0[0.03125 / idx])
            else:
                require idx < stor1.length
                require idx < arg2.length
                require idx < stor0.length
                mem[0] = 0
                uint256(stor0[0.03125 / idx]) = not mem[(32 * idx) + 128] > stor1[idx] * 256^(idx % 32) or !(255 * 256^(idx % 32)) and uint256(stor0[0.03125 / idx])
            idx = idx + 1
            continue 
        if not stor0.length:
            mem[(32 * arg2.length) + (32 * stor0.length) + 192] = 32
            mem[(32 * arg2.length) + (32 * stor0.length) + 224] = stor0.length
            if Mask(251, 0, stor0.length):
                mem[(32 * arg2.length) + (32 * stor0.length) + 256] = mem[(32 * arg2.length) + 192]
                mem[(32 * arg2.length) + (32 * stor0.length) + 288 len floor32((32 * stor0.length) - 1)] = mem[(32 * arg2.length) + 224 len floor32((32 * stor0.length) - 1)]
        else:
            mem[(32 * arg2.length) + 192] = bool(uint8(stor0))
            idx = (32 * arg2.length) + 192
            s = 0
            while (32 * arg2.length) + (32 * stor0.length) + 160 > idx:
                mem[idx + 32] = bool(stor('name', 'stor0', 0)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1])
                idx = idx + 32
                s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                continue 
            mem[(32 * arg2.length) + (32 * stor0.length) + 192] = 32
            mem[(32 * arg2.length) + (32 * stor0.length) + 224] = stor0.length
            if Mask(251, 0, stor0.length):
                mem[(32 * arg2.length) + (32 * stor0.length) + 256] = mem[(32 * arg2.length) + 192]
                mem[(32 * arg2.length) + (32 * stor0.length) + 288 len floor32((32 * stor0.length) - 1)] = mem[(32 * arg2.length) + 224 len floor32((32 * stor0.length) - 1)]
                idx = (32 * arg2.length) + (32 * stor0.length) + floor32((32 * stor0.length) - 1) + 256
    return Array(len=stor0.length, data=mem[(32 * arg2.length) + (32 * stor0.length) + 256 len 32 * stor0.length])
}



}
