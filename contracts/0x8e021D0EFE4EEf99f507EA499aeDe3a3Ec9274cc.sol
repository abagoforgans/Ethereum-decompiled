contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
address stor2;

function _fallback() payable {
    stor1 = 0xed8b2a6cdc772d2957a0c9eb98860f6674cfcd18
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor2 = 0xed8b2a6cdc772d2957a0c9eb98860f6674cfcd18
    return code.data[95 len 296]
}



// =====================  Runtime code  =====================


address stor0;
address stor2;

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
    call stor2.0x9ac99635 with:
         gas gas_remaining - 25050 wei
        args msg.value
    require ext_call.success
    require ext_call.return_data[0] >= msg.value
    call stor2.0x8261192e with:
         gas gas_remaining - 25050 wei
        args msg.sender, 0
    require ext_call.success
}



}
