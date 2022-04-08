contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = 0x6090a6e47849629b7245dfa1ca21d94cd15878ef
    return code.data[68 len 727]
}



// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
  stop
}

function w() {
    call 0xdeade017f919060cc7b324b06c5eccb2388ffb42 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function check(address arg1, bytes32 arg2) {
    require ext_code.size(stor0)
    call stor0.sealedBids(address rg1, bytes32 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function sub_aa98cba3(?) {
    require ext_code.size(stor0)
    call stor0.sealedBids(address rg1, bytes32 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    if not ext_call.return_data[12 len 20]:
    require ext_code.size(stor0)
    call stor0.cancelBid(address rg1, bytes32 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
}



}
