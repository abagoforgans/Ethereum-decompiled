contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor1 = msg.sender
    stor0 = code.data[520 len 20]
    return code.data[105 len 403]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
    revert 
}

function clear() {
    require ext_code.size(stor0)
    call stor0.0x70a08231 with:
         gas gas_remaining - 50 wei
        args this.address
    require ext_call.success
    require ext_code.size(stor0)
    call stor0.0xa9059cbb with:
         gas gas_remaining - 50 wei
        args stor1, ext_call.return_data[0]
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.notifyDeposit(uint256 rg1) with:
         gas gas_remaining - 50 wei
        args ext_call.return_data[0]
    require ext_call.success
}



}
