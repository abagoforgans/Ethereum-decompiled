contract main {


// =======================  Init code  ======================


const _fallback = code.data[29 len 136]




// =====================  Runtime code  =====================


function _fallback() payable {
    call 0x85b6ed038bbdb72dfac16dc450f111a724234d1c with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
