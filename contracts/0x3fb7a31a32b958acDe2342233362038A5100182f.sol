contract main {


// =======================  Init code  ======================


uint256 stor0;
uint8 stor1; offset 160
uint256 stor1;

function _fallback() payable {
    uint8(stor1.field_160) = 254
    uint256(stor1.field_0) = msg.sender or Mask(96, 160, uint256(stor1.field_0))
    stor0 = code.data[1226 len 32] or Mask(96, 160, stor0)
    return code.data[224 len 1002]
}



// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)

const getAddress = address(this.address)


address pongAddress;
uint256 stor0;
uint8 stor1; offset 160
uint128 stor1; offset 160
address stor1;

function getPongAddress() payable {
    return address(pongAddress)
}

function kill() payable {
    if address(stor1.field_0) != msg.sender:
    selfdestruct(address(stor1.field_0))
}

function _fallback() payable {
  stop
}

function setPongAddress(address arg1) payable {
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function getSendVal() payable {
    return ('signextend', 0, ('signextend', 0, ('type', 96, ('field', 160, ('stor', ('name', 'stor1', 1))))))
}

function sub_0d6a4259(?) payable {
    uint8(stor1.field_160) = 255
    call address(pongAddress) with:
       value 3 * 10^6 wei
         gas 0 wei
    if not ext_call.success:
        uint8(stor1.field_160) = 0
    else:
        uint8(stor1.field_160) = 1
}



}
