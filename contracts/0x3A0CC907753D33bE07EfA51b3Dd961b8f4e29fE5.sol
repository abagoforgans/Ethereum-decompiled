contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
uint8 stor0; offset 168
uint128 stor0; offset 160
uint256 stor0;

function _fallback() payable {
    uint8(stor0.field_160) = 0
    uint8(stor0.field_168) = 0
    uint256(stor0.field_0) = msg.sender or Mask(96, 160, uint256(stor0.field_0))
    uint8(stor0.field_160) = uint8(('signextend', 0, ('type', 96, ('field', 160, ('stor', ('name', 'stor0', 0))))) + 1)
    return code.data[266 len 623]
}



// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)

const getAddress = address(this.address)


uint8 stor0; offset 168
uint128 stor0; offset 168
uint128 stor0; offset 160
address stor0;

function kill() payable {
    if address(stor0.field_0) != msg.sender:
    selfdestruct(address(stor0.field_0))
}

function getNamelessTouches() payable {
    return ('signextend', 0, ('signextend', 0, ('type', 88, ('field', 168, ('stor', ('name', 'stor0', 0))))))
}

function _fallback() payable {
    uint8(stor0.field_168) = uint8(('signextend', 0, ('type', 88, ('field', 168, ('stor', ('name', 'stor0', 0))))) + 1)
}

function getConstructorTouches() payable {
    return ('signextend', 0, ('signextend', 0, ('type', 96, ('field', 160, ('stor', ('name', 'stor0', 0))))))
}



}
