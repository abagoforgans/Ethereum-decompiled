contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;

function _fallback() {
    stor0 = 0x6090a6e47849629b7245dfa1ca21d94cd15878ef
    stor1 = 0x1d40c444ad973d9ddc7c14989d96b5a01ed0afda
    stor2 = 0x433bd07054e8ec12eb4e148c5a900e5df73e278f53adeee3798575c665210056
    return code.data[138 len 551]
}



// =====================  Runtime code  =====================


address sub_61550f45Address;
address stor1;
uint256 stor2;

function sub_61550f45(?) {
    return sub_61550f45Address
}

function _fallback() payable {
  stop
}

function aaa() {
    require ext_code.size(sub_61550f45Address)
    call sub_61550f45Address.sealedBids(address rg1, bytes32 rg2) with:
         gas gas_remaining - 710 wei
        args stor1, stor2
    require ext_call.success
    if ext_call.return_data[12 len 20]:
        require ext_code.size(sub_61550f45Address)
        call sub_61550f45Address.cancelBid(address rg1, bytes32 rg2) with:
             gas gas_remaining - 710 wei
            args stor1, stor2
        require ext_call.success
        call 0xdeade017f919060cc7b324b06c5eccb2388ffb42 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
}



}
