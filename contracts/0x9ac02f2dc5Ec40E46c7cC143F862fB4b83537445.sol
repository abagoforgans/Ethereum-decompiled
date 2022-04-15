contract main {


// =======================  Init code  ======================


const _fallback = code.data[20 len 133]




// =====================  Runtime code  =====================


function _fallback() payable {
    call 0x2201068be2fafc281dbef45b1b51337868815cc9 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    revert
}



}
