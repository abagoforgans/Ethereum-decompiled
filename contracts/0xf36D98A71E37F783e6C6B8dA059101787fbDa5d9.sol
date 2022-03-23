contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = code.data[3179 len 32]
    stor2 = code.data[3211 len 32]
    return code.data[190 len 2989]
}



// =====================  Runtime code  =====================


address stor0;
address sub_f63397c9Address;
address sub_b95812f4Address;
mapping of uint256 sub_452d9839;
mapping of uint256 sub_55a185dc;

function sub_452d9839(?) payable {
    return sub_452d9839[arg1]
}

function sub_55a185dc(?) payable {
    return sub_55a185dc[arg1]
}

function sub_b95812f4(?) payable {
    return sub_b95812f4Address
}

function sub_f63397c9(?) payable {
    return sub_f63397c9Address
}

function _fallback() payable {
  stop
}

function commitCurrency(address arg1, uint256 arg2, uint256 arg3) payable {
    require msg.sender == sub_b95812f4Address
    sub_55a185dc[address(arg1)] += arg2
    emit 0x240be97a: address(arg1), arg2, arg3
}

function commitSecurity(address arg1, uint256 arg2, uint256 arg3) payable {
    require msg.sender == sub_f63397c9Address
    sub_452d9839[address(arg1)] += arg2
    emit 0x807a9b5d: address(arg1), arg2, arg3
}

function refundSecurity(address arg1, uint256 arg2, uint256 arg3) payable {
    require msg.sender == stor0
    require sub_452d9839[address(arg1)] >= arg2
    sub_452d9839[address(arg1)] -= arg2
    call sub_f63397c9Address.0xa9059cbb with:
         gas gas_remaining - 25050 wei
        args address(arg1), arg2
    require ext_call.success
    emit 0xf17729a0: address(arg1), arg2, arg3
}

function refundCurrency(address arg1, uint256 arg2, uint256 arg3) payable {
    require msg.sender == stor0
    require sub_55a185dc[address(arg1)] >= arg2
    sub_55a185dc[address(arg1)] -= arg2
    call sub_b95812f4Address.0xa9059cbb with:
         gas gas_remaining - 25050 wei
        args address(arg1), arg2
    require ext_call.success
    emit 0x68736f8b: address(arg1), arg2, arg3
}

function settle(address arg1, address arg2, uint256 arg3, uint256 arg4) payable {
    require msg.sender == stor0
    require sub_452d9839[address(arg1)] >= arg3
    require sub_55a185dc[address(arg2)] >= arg4
    sub_452d9839[address(arg1)] -= arg3
    sub_55a185dc[address(arg2)] -= arg4
    call sub_f63397c9Address.0xa9059cbb with:
         gas gas_remaining - 25050 wei
        args address(arg2), arg3
    require ext_call.success
    call sub_b95812f4Address.0xa9059cbb with:
         gas gas_remaining - 25050 wei
        args address(arg1), arg4
    emit 0xddd2b8bf: address(arg1), address(arg2), arg3, arg4
}



}
