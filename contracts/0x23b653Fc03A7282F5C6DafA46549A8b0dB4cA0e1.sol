contract main {


// =======================  Init code  ======================


array of address stor0;
uint8 stor1;

function _fallback() {
    mem[96 len 160] = code.data[382 len 160]
    mem[64] = 256
    require mem[code.data[382 len 32] + 96] == 3
    stor0.length = mem[code.data[382 len 32] + 96]
    if not mem[code.data[382 len 32] + 96]:
        idx = 0
        while stor0.length > idx:
            stor0[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = code.data[382 len 32] + 128
        while code.data[382 len 32] + (32 * mem[code.data[382 len 32] + 96]) + 128 > idx:
            stor0[s] = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[code.data[382 len 32] + 96]) + 31) >> 5
        while stor0.length > idx:
            stor0[idx] = 0
            idx = idx + 1
            continue 
    stor1 = 0
    return 0x366000803760206000366000735b9e8728e316bbeb692d22daaab74f6cbf2c46916102c65a03f41515602d57fe5b60206000
}



// =====================  Runtime code  =====================




}
