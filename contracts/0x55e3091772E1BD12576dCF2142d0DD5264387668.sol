contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = 0xf20c9fa34847f6bc42b2f60014268bec65676af7
    return code.data[74 len 492]
}



// =====================  Runtime code  =====================


const blockHexCoordsValid(int8 arg1, int8 arg2) = 0

const getUint8FromByte32(bytes32 arg1, uint8 arg2) = 0


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

function sub_37dc9206(?) payable {
    call stor1.0x4b42d208 with:
         gas gas_remaining - 25050 wei
        args block.hash(block.number - 1), 0
    require ext_call.success
    return ('signextend', 0, ('mask_shl', 5, 0, 0, ('ext_call.return_data', 0, 32)))
}



}
