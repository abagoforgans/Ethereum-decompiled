contract main {


// =======================  Init code  ======================


const _fallback = code.data[29 len 173]




// =====================  Runtime code  =====================


function _fallback() payable {
    call 0xecde0842e309c4b2d15c074512404207335f3096 with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
