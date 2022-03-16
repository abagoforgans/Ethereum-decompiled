contract main {


// =======================  Init code  ======================


uint256 stor0;
uint8 stor1; offset 160
uint256 stor1;

function _fallback() payable {
    uint8(stor1.field_160) = 0
    uint256(stor1.field_0) = msg.sender or Mask(96, 160, uint256(stor1.field_0))
    stor0 = code.data[938 len 32] or Mask(96, 160, stor0)
    return code.data[156 len 782]
}



// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)

const getAddress = address(this.address)


address pongAddress;
uint256 stor0;
uint8 sub_443b8209; offset 160
uint128 stor1; offset 160
address stor1;

function sub_443b8209(?) payable {
    return sub_443b8209
}

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

function sub_0d6a4259(?) payable {
    call address(pongAddress) with:
       value 3 * 10^6 wei
         gas 0 wei
    Mask(96, 0, stor1.field_160) = Mask(96, 0, ext_call.success)
}



}
