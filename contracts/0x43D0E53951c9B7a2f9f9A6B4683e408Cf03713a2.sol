contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 1297]




// =====================  Runtime code  =====================


#
#  - _fallback()
#
uint8 sub_ab552a27;

function sub_ab552a27(?) payable {
    return sub_ab552a27
}

function sub_d57bb6a9(?) payable {
    mem[96] = 0
    idx = 0
    while idx < 32:
        require -idx + 31 < mem[96]
        mem[-idx + 159] = arg1 / 2^(8 * idx) << 248
        idx = idx + 1
        continue 
    mem[128] = 32
    mem[160] = mem[96]
    mem[192 len mem[96]] = mem[128 len mem[96]]
    if not mem[96] % 32:
        return 32, mem[160 len mem[96] + 32]
    mem[floor32(mem[96]) + 192] = mem[floor32(mem[96]) + -(mem[96] % 32) + 224 len mem[96] % 32]
    return Array(len=mem[96], data=mem[192 len floor32(mem[96]) + 32])
}



}
