contract main {


// =======================  Init code  ======================


function _fallback() {
    mem[96 len 64] = code.data[475 len 64]
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
    return code.data[197 len 278]
}



// =====================  Runtime code  =====================


function _fallback() {
    idx = 0
    while idx < 2:
        call stor[idx] with:
           value eth.balance(this.address) / 2 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        idx = idx + 1
        continue 
}

function sendPayment() {
    idx = 0
    while idx < 2:
        call stor[idx] with:
           value eth.balance(this.address) / 2 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        idx = idx + 1
        continue 
}



}
