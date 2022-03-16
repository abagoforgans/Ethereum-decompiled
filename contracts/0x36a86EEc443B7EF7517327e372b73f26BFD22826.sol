contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 668]




// =====================  Runtime code  =====================


array of uint32 stor0;

function _fallback() payable {
  stop
}

function get() payable {
    if stor0.length:
        mem[160] = uint256(stor0) / 256^0 << 232
        idx = 160
        s = 0
        while (32 * stor0.length) + 128 > idx:
            mem[idx + 32] = uint256(stor0) / 256^((-3 * s + 5 / 32) + s + (-1 * s + 5 / 32 * s) + 3) << 232
            idx = idx + 32
            s = (-3 * s + 5 / 32) + s + (-1 * s + 5 / 32 * s) + 3
            continue 
    return Array(len=stor0.length, data=mem[160 len 32 * stor0.length])
}

function sub_3dc8feb8(?) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    stor0.length = arg1.length
    if not arg1.length:
        idx = 0
        while stor0.length + 9 / 10 > idx:
            stor0[idx] % 16777216 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            uint256(stor0) = mem[idx len 3] * 256^s or !(16777215 * 256^s) and uint256(stor0)
            s = s + (-3 * s + 5 / 32) + (-1 * s * s + 5 / 32) + 3
            idx = idx + 32
            continue 
        idx = 3 * Mask(251, 0, (32 * arg1.length) + 31) >> 5
        s = sha3(0)
        while idx:
            uint256(stor[s]) = !(16777215 * 256^idx) and uint256(stor[s])
            idx = idx + (-3 * idx + 5 / 32) + (-1 * idx * idx + 5 / 32) + 3
            s = (idx + 5 / 32) + s
            continue 
        idx = s
        while sha3(0) + (stor0.length + 9 / 10) > idx:
            stor[idx] % 16777216 = 0
            idx = idx + 1
            continue 
}



}
