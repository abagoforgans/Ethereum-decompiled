contract main {


// =======================  Init code  ======================


function _fallback() {
    mem[96 len 64] = code.data[533 len 64]
    s = 0
    idx = 96
    while 160 > idx:
        stor[s] = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 2
    while 2 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    return code.data[216 len 317]
}



// =====================  Runtime code  =====================


function _fallback() payable {
    require not msg.value
    if not calldata.size:
        idx = 0
        while idx < 3:
            require idx < 2
            call stor[idx] with:
               value 5 * eth.balance(this.address) / 100 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            idx = idx + 1
            continue 
    else:
        idx = 0
        while idx < 3:
            require idx < 2
            call stor[idx] with:
               value 5 * eth.balance(this.address) / 100 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            idx = idx + 1
            continue 
}



}
