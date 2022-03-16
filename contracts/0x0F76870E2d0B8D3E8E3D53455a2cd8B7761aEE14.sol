contract main {


// =======================  Init code  ======================


uint8 stor0;
uint8 stor0; offset 168
uint256 stor0; offset 8

function _fallback() payable {
    uint8(stor0.field_0) = 0
    Mask(248, 0, stor0.field_8) = Mask(248, 0, msg.sender)
    uint8(stor0.field_168) = uint8(code.data[897 len 32])
    return code.data[212 len 685]
}



// =====================  Runtime code  =====================


const getAddress = address(this.address)


uint8 stor0;
uint8 stor0; offset 168
uint128 stor0; offset 168
address stor0; offset 8
uint256 stor0;

function kill() payable {
    if address(stor0.field_8) != msg.sender:
    selfdestruct(address(stor0.field_8))
}

function _fallback() payable {
  stop
}

function setPongval(int8 arg1) payable {
    uint8(stor0.field_168) = arg1
}

function getPongvalConstant() payable {
    return ('signextend', 0, ('signextend', 0, ('type', 88, ('field', 168, ('stor', ('name', 'stor0', 0))))))
}

function getPongvalTxRetrievalAttempted() payable {
    return ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('name', 'stor0', 0))))))
}

function getPongvalTransactional() payable {
    uint8(stor0.field_0) = 1
    return ('signextend', 0, ('signextend', 0, ('type', 88, ('field', 168, ('stor', ('name', 'stor0', 0))))))
}



}
