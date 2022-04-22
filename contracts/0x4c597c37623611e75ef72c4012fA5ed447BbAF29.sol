contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor1;

function _fallback() {
    mem[96 len -253] = code.data[470 len -253]
    mem[64] = -157
    stor0 = mem[96]
    stor1.length = mem[mem[128] + 96]
    if not mem[mem[128] + 96]:
        idx = 0
        while stor1.length > idx:
            stor1[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = mem[128] + 128
        while mem[128] + (32 * mem[mem[128] + 96]) + 128 > idx:
            stor1[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[mem[128] + 96]) + 31) >> 5
        while stor1.length > idx:
            stor1[idx] = 0
            idx = idx + 1
            continue 
    return code.data[217 len 253]
}



// =====================  Runtime code  =====================


uint256 num;
array of uint256 values;

function num() {
    return num
}

function values(uint256 arg1) {
    require arg1 < values.length
    return values[arg1]
}

function _fallback() payable {
    revert
}



}
