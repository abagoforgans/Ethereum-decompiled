contract main {


// =======================  Init code  ======================


array of address stor0;

function _fallback() {
    mem[96 len -445] = code.data[737 len -445]
    mem[64] = -349
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
            stor0[s] = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[mem[96] + 96]) + 31) >> 5
        while stor0.length > idx:
            stor0[idx] = 0
            idx = idx + 1
            continue 
    return code.data[292 len 445]
}



// =====================  Runtime code  =====================


array of address recipients;

function recipients(uint256 arg1) {
    require arg1 < recipients.length
    return recipients[arg1]
}

function _fallback() payable {
    idx = 0
    while idx < recipients.length:
        mem[0] = 0
        require recipients.length
        call recipients[idx] with:
           value msg.value / recipients.length wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        idx = idx + 1
        continue 
}



}
