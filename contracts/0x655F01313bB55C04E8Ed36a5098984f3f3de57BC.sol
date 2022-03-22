contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 319]




// =====================  Runtime code  =====================


mapping of uint256 stor0;
uint256 last;

function last() payable {
    return last
}

function _fallback() payable {
  stop
}

function RandomNumberFromSeed(uint256 arg1) payable {
    stor0[address(msg.sender)]++
    last = arg1 xor 202916155157117075457 * sha3(block.hash(block.number), stor0[address(msg.sender)] + 1)
    emit GeneratedNumber((arg1 xor 202916155157117075457 * sha3(block.hash(block.number), stor0[address(msg.sender)] + 1)));
    return last
}

function RandomNumber() payable {
    stor0[address(msg.sender)]++
    last = tx.origin xor msg.sender xor sha3(block.timestamp) xor sha3(block.number) xor 202916155157117075457 * sha3(block.hash(block.number), stor0[address(msg.sender)] + 1)
    emit GeneratedNumber((tx.origin xor msg.sender xor sha3(block.timestamp) xor sha3(block.number) xor 202916155157117075457 * sha3(block.hash(block.number), stor0[address(msg.sender)] + 1)));
    return last
}



}
