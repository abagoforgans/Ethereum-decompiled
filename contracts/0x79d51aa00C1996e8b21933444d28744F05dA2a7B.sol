contract main {


// =======================  Init code  ======================


uint128 stor0; offset 160
uint256 stor0;
uint256 stor1;

function _fallback() payable {
    uint256(stor0.field_0) = Mask(96, 0, stor0.field_160)
    stor1 = code.data[296 len 32]
    return code.data[69 len 227]
}



// =====================  Runtime code  =====================


const blockHexCoordsValid(int8 arg1, int8 arg2) = 0


address stor0;
address stor1;

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function sub_b1f74f06(?) payable {
    call stor1.0x46c52b1a with:
         gas gas_remaining - 25050 wei
        args ('signextend', 0, ('param', 'arg1')), ('signextend', 0, ('param', 'arg2'))
    require ext_call.success
    return ext_call.return_data[0]
}



}
