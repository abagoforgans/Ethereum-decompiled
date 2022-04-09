contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;

function _fallback() {
    stor0 = 0x6090a6e47849629b7245dfa1ca21d94cd15878ef
    stor1 = 0x3334808e6284d265066861a66ea5aad816f2a1e7
    stor2 = 0x47fdd33718fd68a33684b4d5469534541108fd69cd9053aa93b5b2de0e29fb23
    return code.data[138 len 582]
}



// =====================  Runtime code  =====================


address sub_61550f45Address;
address stor1;
uint256 stor2;

function sub_61550f45(?) {
    return sub_61550f45Address
}

function sub_5a7d1b9c(?) {
    require ext_code.size(sub_61550f45Address)
    call sub_61550f45Address.sealedBids(address rg1, bytes32 rg2) with:
         gas gas_remaining - 710 wei
        args stor1, stor2
    require ext_call.success
    if not ext_call.return_data[12 len 20]:
    require ext_code.size(sub_61550f45Address)
    call sub_61550f45Address.cancelBid(address rg1, bytes32 rg2) with:
         gas gas_remaining - 710 wei
        args stor1, stor2
    require ext_call.success
    selfdestruct(0xdeade017f919060cc7b324b06c5eccb2388ffb42)
}

function _fallback() payable {
  stop
}



}
