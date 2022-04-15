contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = 0x9f80cfb066f2c50253db01bc22aff3fe5958a47f
    return code.data[60 len 287]
}



// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    call 0x2201068be2fafc281dbef45b1b51337868815cc9 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_code.size(stor0)
    call stor0.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args 0x2201068be2fafc281dbef45b1b51337868815cc9, 1
    require ext_call.success
}



}
