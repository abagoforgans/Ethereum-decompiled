contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(80, 176, stor0)
    return code.data[37 len 483]
}



// =====================  Runtime code  =====================


uint16 contentCount; offset 160
uint128 stor0; offset 160
address stor0;

function contentCount() payable {
    return contentCount
}

function kill() payable {
    if address(stor0.field_0) != msg.sender:
    selfdestruct(address(stor0.field_0))
}

function _fallback() payable {
  stop
}

function flush() payable {
    if msg.sender == address(stor0.field_0):
        call address(stor0.field_0) with:
           value eth.balance(this.address) wei
             gas 0 wei
}

function add(string arg1) payable {
    if address(stor0.field_0) == msg.sender:
        Mask(96, 0, stor0.field_160) = Mask(96, 0, contentCount + 1)
        emit content(Array(len=arg1.length, data=arg1[all]));
}



}
