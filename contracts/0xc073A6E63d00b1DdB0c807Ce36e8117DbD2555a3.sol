contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[657 len 20]
    return code.data[96 len 549]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
  stop
}

function withdrawAll() {
    require stor0 == msg.sender
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_d232e9c7(?) {
    require ext_code.size(stor1)
    call stor1.sealedBids(address rg1, bytes32 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg2), arg1
    require ext_call.success
    if not ext_call.return_data[12 len 20]:
    require ext_code.size(stor1)
    call stor1.cancelBid(address rg1, bytes32 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg2), arg1
    require ext_call.success
}



}
