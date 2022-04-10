contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[60 len 510]
}



// =====================  Runtime code  =====================


address destinationAddress;

function destinationAddress() {
    return destinationAddress
}

function _fallback() payable {
    revert
}

function sub_0695048a(?) {
    require ext_code.size(0x983f6d60db79ea8ca4eb9968c6aff8cfa04b3c63)
    call 0x983f6d60db79ea8ca4eb9968c6aff8cfa04b3c63.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if ext_call.return_data[0] >= 0:
        require ext_code.size(0x983f6d60db79ea8ca4eb9968c6aff8cfa04b3c63)
        call 0x983f6d60db79ea8ca4eb9968c6aff8cfa04b3c63.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args destinationAddress, ext_call.return_data[0]
        require ext_call.success
}



}
