contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 524]
}



// =====================  Runtime code  =====================


address stor0;
uint256 stor0;

function kill() payable {
    if address(stor0) != msg.sender:
    selfdestruct(msg.sender)
}

function _fallback() payable {
  stop
}

function setOwner(address arg1) payable {
    if msg.sender == address(stor0):
        uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function transfer(uint256 arg1) payable {
    if msg.sender == address(stor0):
        call msg.sender with:
           value arg1 wei
             gas 0 wei
}

function transfer(address arg1, uint256 arg2) payable {
    if msg.sender == address(stor0):
        call arg1 with:
           value arg2 wei
             gas 0 wei
}

function query(bytes arg1) payable {
    emit Incoming(sha3(block.number, block.timestamp, arg1[all], msg.sender), msg.sender, Array(len=arg1.length, data=arg1[all]));
    return sha3(block.number, block.timestamp, arg1[all], msg.sender)
}



}
