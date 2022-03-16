contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[63 len 469]
}



// =====================  Runtime code  =====================


address stor0;
uint256 savedVar;
address stor2;

function getSavedVar() payable {
    return savedVar
}

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function getTileDescription(uint8 arg1, uint8 arg2) payable {
    call stor2.getDescription() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    savedVar = ext_call.return_data[0]
}



}
