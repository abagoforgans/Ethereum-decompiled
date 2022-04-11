contract main {


// =======================  Init code  ======================


array of address stor0;
uint8 stor1;

function _fallback() payable {
    mem[96 len 160] = code.data[324 len 160]
    mem[64] = 256
    require mem[code.data[324 len 32] + 96] >= 2
    stor0.length = mem[code.data[324 len 32] + 96]
    if not mem[code.data[324 len 32] + 96]:
        idx = 0
        while stor0.length > idx:
            address(stor0[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = code.data[324 len 32] + 128
        while code.data[324 len 32] + (32 * mem[code.data[324 len 32] + 96]) + 128 > idx:
            uint256(stor0[s]) = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[code.data[324 len 32] + 96]) + 31) >> 5
        while stor0.length > idx:
            address(stor0[idx]) = 0
            idx = idx + 1
            continue 
    stor1 = 0
    return 0xf3366000803760206000366000739957e95eb9b421483c608c8291e34524d344201e60325a03f41560015760206000
}



// =====================  Runtime code  =====================




}
