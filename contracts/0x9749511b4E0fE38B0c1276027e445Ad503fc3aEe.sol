contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;

function _fallback() {
    stor0 = 0x6090a6e47849629b7245dfa1ca21d94cd15878ef
    stor1 = 0xc9e33b9fadd019c46d9b9bc7ca21b7ea61955e4e
    stor2 = 0x2f2c58e10abc2e69937b5fe315cff9e93682c31136034a1ccbdc1402bf2d0180
    return code.data[246 len 868]
}



// =====================  Runtime code  =====================


address sub_61550f45Address;
address stor1;
uint256 stor2;

function sub_61550f45(?) {
    return sub_61550f45Address
}

function sub_074fded5(?) {
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
