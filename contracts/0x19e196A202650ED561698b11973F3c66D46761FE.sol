contract main {


// =======================  Init code  ======================


uint8 stor0;
uint256 stor0; offset 8
uint256 stor1;

function _fallback() payable {
    stor1 = msg.sender or Mask(96, 160, stor1)
    uint8(stor0.field_0) = 255
    Mask(248, 0, stor0.field_8) = Mask(248, 0, code.data[1106 len 32])
    return code.data[224 len 882]
}



// =====================  Runtime code  =====================


const getAddress = address(this.address)

const getPongvalTransactional = -1


address pongAddress; offset 8
uint256 stor0; offset 8
uint256 stor0;
address stor1;

function getPongAddress() payable {
    return pongAddress
}

function kill() payable {
    if stor1 != msg.sender:
    selfdestruct(stor1)
}

function _fallback() payable {
  stop
}

function setPongAddress(address arg1) payable {
    Mask(248, 0, stor0.field_8) = Mask(248, 0, arg1)
}

function getPongvalConstant() payable {
    return ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('name', 'stor0', 0))))))
}

function getPongvalRemote() payable {
    call pongAddress.0xfb5d5729 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    uint256(stor0.field_0) = ext_call.return_data[31 len 1] or Mask(248, 8, uint256(stor0.field_0))
}



}
