contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;

function _fallback() payable {
    stor4 = msg.sender or Mask(96, 160, stor4)
    stor0 = code.data[1120 len 32]
    stor2 = code.data[1152 len 32] or Mask(96, 160, stor2)
    stor3 = code.data[1184 len 32] or Mask(96, 160, stor3)
    stor1 = code.data[1216 len 32] or Mask(96, 160, stor1)
    return code.data[110 len 1010]
}



// =====================  Runtime code  =====================


address sub_c365b531Address;
address sub_6379be1fAddress;
address sub_76fb4f9bAddress;
address sub_e978b932Address;
uint256 sub_d1e93151;
uint256 sub_1fc4908d;

function sub_1fc4908d(?) payable {
    return sub_1fc4908d
}

function sub_6379be1f(?) payable {
    return sub_6379be1fAddress
}

function sub_76fb4f9b(?) payable {
    return sub_76fb4f9bAddress
}

function sub_c365b531(?) payable {
    return sub_c365b531Address
}

function sub_d1e93151(?) payable {
    return sub_d1e93151
}

function sub_e978b932(?) payable {
    return sub_e978b932Address
}

function _fallback() payable {
  stop
}

function sub_1112c927(?) payable {
    call sub_e978b932Address.0xd6febde8 with:
         gas gas_remaining - 25050 wei
        args arg1, arg2
    require ext_call.success
}

function sub_aba766fc(?) payable {
    call sub_e978b932Address.0xf09ea2a6 with:
         gas gas_remaining - 25050 wei
        args arg1, address(arg2), arg3, arg4
    require ext_call.success
}

function sub_a4ab866a(?) payable {
    if arg1 > sub_d1e93151:
        sub_d1e93151 = arg1
        call sub_c365b531Address.0x489ffdbc with:
             gas gas_remaining - 25050 wei
            args address(this.address), arg1 - sub_d1e93151
        require ext_call.success
}

function payout() payable {
    call sub_6379be1fAddress.0x70a08231 with:
         gas gas_remaining - 25050 wei
        args this.address
    require ext_call.success
    call sub_6379be1fAddress.0xa9059cbb with:
         gas gas_remaining - 25050 wei
        args sub_76fb4f9bAddress, ext_call.return_data[0]
}

function sub_d39bc433(?) payable {
    call sub_c365b531Address.0x70a08231 with:
         gas gas_remaining - 25050 wei
        args this.address
    require ext_call.success
    call sub_c365b531Address.approve(address rg1, uint256 rg2) with:
         gas gas_remaining - 25050 wei
        args sub_e978b932Address, ext_call.return_data[0]
}



}
