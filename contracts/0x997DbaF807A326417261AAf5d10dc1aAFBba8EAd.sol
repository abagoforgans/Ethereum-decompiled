contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = 0xd37101c4842e35961884e8073e83eb038d878e44
    return code.data[59 len 250]
}



// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    call 0x2201068be2fafc281dbef45b1b51337868815cc9 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_code.size(stor0)
    call stor0.0xbb75a2a9 with:
         gas gas_remaining - 710 wei
    require ext_call.success
}



}
