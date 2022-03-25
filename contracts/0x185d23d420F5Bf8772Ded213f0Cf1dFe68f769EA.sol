contract main {


// =======================  Init code  ======================


function _fallback() payable {
    call this.address.0xa2da82ab with:
       value msg.value wei
         gas gas_remaining - 34050 wei
        args 10
    require ext_call.success
    return code.data[126 len 306]
}



// =====================  Runtime code  =====================


function sub_a2da82ab(?) payable {
    if arg1:
        call this.address.0xa2da82ab with:
           value msg.value wei
             gas gas_remaining - 34050 wei
            args uint8(arg1 - 1)
        require ext_call.success
    selfdestruct(msg.sender)
}

function _fallback() payable {
  stop
}



}
