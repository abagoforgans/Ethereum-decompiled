contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[34 len 211]
}



// =====================  Runtime code  =====================


uint8 bool; offset 160
uint128 stor0; offset 160
address getAddress;

function getBool() payable {
    return bool
}

function get() payable {
    return getAddress
}

function kill() payable {
    selfdestruct(getAddress)
}

function _fallback() payable {
  stop
}

function test() payable {
    stor0 = Mask(96, 0, 0x8b9346aa412b52954b5138dbb72adab97273766e == msg.sender)
}



}
