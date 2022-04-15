contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 730]




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)

const getAddress = 0xc499dfd00aeeb20e091fa89275ecaa3e57545136


function _fallback() payable {
    emit 0x5f0e5863: msg.sender, msg.value, eth.balance(this.address)
    call 0xc499dfd00aeeb20e091fa89275ecaa3e57545136 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if ext_call.success:
        emit 0x7e7373a5: 0xc499dfd00aeeb20e091fa89275ecaa3e57545136, eth.balance(this.address), eth.balance(this.address)
}



}
