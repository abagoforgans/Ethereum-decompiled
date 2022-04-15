contract main {


// =======================  Init code  ======================


const _fallback = code.data[29 len 136]




// =====================  Runtime code  =====================


function _fallback() payable {
    call 0xd293a88c7ef49dad48b58bdf87a426ffaab338d4 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
