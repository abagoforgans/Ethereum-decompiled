contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;

function _fallback() {
    stor0 = 0x6090a6e47849629b7245dfa1ca21d94cd15878ef
    stor1 = 0xf2f1c4e6b946f55d5c7da75d776d10fec1d4a7c4
    stor2 = 0x3e09715dc95d911ce4e64e2059e1075c8903d0fbb3733fbb78d666541ad8421e
    return code.data[138 len 582]
}



// =====================  Runtime code  =====================


address sub_61550f45Address;
address stor1;
uint256 stor2;

function sub_61550f45(?) {
    return sub_61550f45Address
}

function sub_a6eedf13(?) {
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
