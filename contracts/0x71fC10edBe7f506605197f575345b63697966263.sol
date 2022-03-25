contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() payable {
    stor0 = 0x7aabdc7a08ba6635449b22d01576ff27648d2a33
    stor1 = 0xbb9bc244d798123fde783fcc1c72d3bb8c189413
    return code.data[146 len 528]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
    require not msg.value
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining - 50 wei
        args this.address
    require ext_call.success
    if ext_call.return_data[0] > 0:
        require ext_code.size(stor1)
        call stor1.0xa9059cbb with:
             gas gas_remaining - 50 wei
            args stor0, ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
        emit e(ext_call.return_data[0]);
}



}
