contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    require not msg.value
    return code.data[94 len 1562]
}



// =====================  Runtime code  =====================


address owner;

function Owner() {
    return owner
}

function _fallback() payable {
  stop
}

function withdraw() {
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function sub_a2b2cad2(?) payable {
    require msg.sender == owner
    call arg1 with:
       funct Mask(32, 224, sha3('init()')) >> 224
       value msg.value wei
         gas gas_remaining - 34710 wei
    require ext_call.success
    call arg1 with:
       funct Mask(32, 224, sha3('SetReleaseDate(uint256)')) >> 224
         gas gas_remaining - 25710 wei
        args 1
    require msg.value
    idx = 0
    while idx < eth.balance(arg1) / msg.value:
        mem[96] = Mask(32, 224, sha3('withdraw(uint256)'))
        mem[100] = msg.value
        call arg1 with:
           funct Mask(32, 224, sha3('withdraw(uint256)')) >> 224
             gas gas_remaining - 25710 wei
            args msg.value
        require ext_call.success
        idx = idx + 1
        continue 
    call arg1 with:
       funct Mask(32, 224, sha3('withdraw(uint256)')) >> 224
         gas gas_remaining - 25710 wei
        args (eth.balance(arg1) - (msg.value * eth.balance(arg1) / msg.value))
    require eth.balance(this.address) > eth.balance(this.address)
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
