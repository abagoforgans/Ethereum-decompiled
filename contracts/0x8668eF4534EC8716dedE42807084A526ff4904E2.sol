contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = code.data[1237 len 20]
    return code.data[126 len 1099]
}



// =====================  Runtime code  =====================


address owner;

function owner() {
    return owner
}

function _fallback() payable {
  stop
}

function drain(uint256 arg1) payable {
    require msg.sender == owner
    if arg1 < eth.balance(this.address):
        if arg1 > 0:
            call owner with:
               value arg1 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
    else:
        if eth.balance(this.address) > 0:
            call owner with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
}

function batchRefund(address[] arg1, uint256[] arg2) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    require arg1.length > 0
    require arg1.length == arg2.length
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg2.length
        idx = idx + 1
        s = s + mem[(32 * idx) + (32 * arg1.length) + 160]
        continue 
    require s * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length <= eth.balance(this.address)
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        if mem[(32 * idx) + (32 * arg1.length) + 160] > 0:
            require idx < arg1.length
            require idx < arg2.length
            call mem[(32 * idx) + 140 len 20] with:
               value mem[(32 * idx) + (32 * arg1.length) + 160] wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        idx = idx + 1
        continue 
}



}
