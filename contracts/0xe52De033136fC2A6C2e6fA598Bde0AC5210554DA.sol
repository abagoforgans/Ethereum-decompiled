contract main {


// =======================  Init code  ======================


const _fallback = code.data[152 len 365]




// =====================  Runtime code  =====================


function _fallback() payable {
    require eth.balance(this.address) > 0
    call 0xaf1931c20ee0c11bea17a41bfbbad299b2763bc0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit 0xe659bb22: address(this.address), msg.sender, eth.balance(this.address)
    emit 0xaf1931c2: address(this.address), msg.sender, eth.balance(this.address)
}



}
