contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;

function _fallback() payable {
    stor0 = 6
    stor1 = 2
    stor2 = msg.sender or Mask(96, 160, stor2)
    return code.data[80 len 777]
}



// =====================  Runtime code  =====================


const random = 0


uint256 stor0;
address stor2;
mapping of struct stor3;
uint256 stor4;

function kill() payable {
    if stor2 != msg.sender:
    selfdestruct(stor2)
}

function _fallback() payable {
  stop
}

function hash(uint256 arg1) payable {
    return uint32(sha3(arg1))
}

function commit(uint32 arg1) payable {
    stor3[address(msg.sender)].field_0 = arg1 or Mask(224, 32, stor3[address(msg.sender)].field_0)
    stor3[address(msg.sender)].field_256 = block.number
}

function reveal(uint256 arg1) payable {
    stor4 = 77
    if block.number < stor3[address(msg.sender)].field_256 + stor0:
        stor4 = 88
        return 0
    if uint32(sha3(arg1)) != stor3[address(msg.sender)].field_0:
        stor4 = 88
        return 0
    stor4 = 99
    stor4 = stor4 xor arg1
    return 1
}



}
