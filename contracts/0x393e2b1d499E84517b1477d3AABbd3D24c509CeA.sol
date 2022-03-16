contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
uint256 stor0;

function _fallback() payable {
    uint256(stor0.field_0) = msg.sender or Mask(96, 160, uint256(stor0.field_0))
    uint8(stor0.field_160) = uint8(code.data[834 len 32])
    return code.data[149 len 685]
}



// =====================  Runtime code  =====================


const getAddress = address(this.address)


uint8 stor0; offset 160
uint8 stor0; offset 168
uint128 stor0; offset 168
uint128 stor0; offset 160
address stor0;

function kill() payable {
    if address(stor0.field_0) != msg.sender:
    selfdestruct(address(stor0.field_0))
}

function _fallback() payable {
  stop
}

function setPongval(int8 arg1) payable {
    uint8(stor0.field_160) = arg1
}

function getPongvalConstant() payable {
    return ('signextend', 0, ('signextend', 0, ('type', 96, ('field', 160, ('stor', ('name', 'stor0', 0))))))
}

function getPongvalTxRetrievalAttempted() payable {
    return ('signextend', 0, ('signextend', 0, ('type', 88, ('field', 168, ('stor', ('name', 'stor0', 0))))))
}

function getPongvalTransactional() payable {
    uint8(stor0.field_168) = 1
    return ('signextend', 0, ('signextend', 0, ('type', 96, ('field', 160, ('stor', ('name', 'stor0', 0))))))
}



}
