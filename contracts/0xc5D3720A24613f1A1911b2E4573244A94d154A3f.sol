contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[35 len 230]
}



// =====================  Runtime code  =====================


address stor0;

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function blockHexCoordsValid(int8 arg1, int8 arg2) payable {
    call 0x18b84dfffa22fc3bf502cc46ac64d13306df4d41 with:
       funct Mask(32, 224, 'blockHexCoordsValid') >> 224
         gas gas_remaining - 25050 wei
        args Mask(224, 0, 'blockHexCoordsValid'), ('signextend', 0, ('param', 'arg1')), ('signextend', 0, ('param', 'arg2'))
    return ext_call.success
}



}
