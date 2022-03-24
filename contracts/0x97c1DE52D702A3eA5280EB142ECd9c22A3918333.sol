contract main {


// =======================  Init code  ======================


function _fallback() payable {
    call 0x2bd2326c993dfaef84f696526064ff22eba5b362.forked() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    require not ext_call.return_data[0]
    call code.data[298 len 20] with:
       value msg.value wei
         gas 0 wei
    require ext_call.success
    selfdestruct(this.address)
}



// =====================  Runtime code  =====================


function _fallback() payable {
  stop
}



}
