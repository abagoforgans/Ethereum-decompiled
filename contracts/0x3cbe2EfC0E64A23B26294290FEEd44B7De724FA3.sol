contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[34 len 148]
}



// =====================  Runtime code  =====================


address sub_a4592aa2Address;

function sub_a4592aa2(?) {
    return sub_a4592aa2Address
}

function _fallback() payable {
    if msg.value <= 0:
    call sub_a4592aa2Address with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
