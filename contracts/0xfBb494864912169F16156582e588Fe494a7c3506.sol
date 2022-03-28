contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;

function _fallback() {
    mem[96 len -1843] = code.data[2230 len -1843]
    mem[64] = -1747
    require mem[mem[96] + 96] == mem[mem[160] + 96]
    require mem[mem[96] + 96] == mem[mem[128] + 96]
    stor0.length = mem[mem[96] + 96]
    if not mem[mem[96] + 96]:
        idx = 0
        while stor0.length > idx:
            stor0[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = mem[96] + 128
        while mem[96] + (32 * mem[mem[96] + 96]) + 128 > idx:
            stor0[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[mem[96] + 96]) + 31) >> 5
        while stor0.length > idx:
            stor0[idx] = 0
            idx = idx + 1
            continue 
    stor1.length = mem[mem[160] + 96]
    mem[0] = 1
    if not mem[mem[160] + 96]:
        idx = 0
        while stor1.length > idx:
            stor1[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = mem[160] + 128
        while mem[160] + (32 * mem[mem[160] + 96]) + 128 > idx:
            stor1[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[mem[160] + 96]) + 31) >> 5
        while stor1.length > idx:
            stor1[idx] = 0
            idx = idx + 1
            continue 
    stor2.length = mem[mem[128] + 96]
    if not mem[mem[128] + 96]:
        idx = 0
        while stor2.length > idx:
            stor2[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = mem[128] + 128
        while mem[128] + (32 * mem[mem[128] + 96]) + 128 > idx:
            stor2[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[mem[128] + 96]) + 31) >> 5
        while stor2.length > idx:
            stor2[idx] = 0
            idx = idx + 1
            continue 
    return code.data[387 len 1843]
}



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

function sub_8b0d8b12(?) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 0
    require stor0.length == arg2.length
    stor3.length++
    if not stor3.length <= stor3.length + 1:
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
    return Array(len=stor0.length, data=mem[(32 * arg2.length) + (32 * stor0.length) + 256 len 32 * stor0.length])
}



}
