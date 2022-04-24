contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    require not msg.value
    return code.data[57 len 672]
}



// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
  stop
}

function withdraw() {
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function sub_d0c9b8c7(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 'giveBirth(uint256)'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if mem[(32 * idx) + 156 len 4] <= block.number:
            require idx < arg2.length
            _21 = mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = Mask(32, 224, sha3('giveBirth(uint256)'))
            mem[(32 * arg1.length) + (32 * arg2.length) + 164] = uint32(_21)
            call 0x06012c8cf97bead5deae237070f9587f8e7a266d with:
               funct Mask(32, 224, sha3('giveBirth(uint256)')) >> 224
                 gas gas_remaining - 25710 wei
                args uint32(_21)
        idx = idx + 1
        continue 
    if eth.balance(this.address) > eth.balance(this.address):
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
}



}
