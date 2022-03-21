contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = code.data[528 len 32]
    return code.data[55 len 473]
}



// =====================  Runtime code  =====================


address sub_0d8c9797Address;
uint8 sub_c083f685; offset 160
uint128 stor1; offset 160
address stor1;
address sub_c5c439e9Address;
uint256 stor2;

function sub_0d8c9797(?) payable {
    return sub_0d8c9797Address
}

function sub_c083f685(?) payable {
    return sub_c083f685
}

function sub_c5c439e9(?) payable {
    return address(sub_c5c439e9Address)
}

function kill() payable {
    if address(stor1.field_0) != msg.sender:
    selfdestruct(address(stor1.field_0))
}

function _fallback() payable {
  stop
}

function sub_75bef391(?) payable {
    Mask(96, 0, stor1.field_160) = Mask(96, 0, arg2)
    uint256(stor2) = arg1 or Mask(96, 160, uint256(stor2))
}

function sub_84eeb02a(?) payable {
    if 0 == arg1:
        call sub_0d8c9797Address.0x573ef62b with:
             gas gas_remaining - 25050 wei
            args address(sub_c5c439e9Address), arg2
        require ext_call.success
        sub_c083f685 = 0
        address(sub_c5c439e9Address) = 0
}



}
