contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 310]




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
    last = arg1 xor 202916155157117075457 * sha3(block.hash(block.number), stor0[address(msg.sender)])
    emit GeneratedNumber((arg1 xor 202916155157117075457 * sha3(block.hash(block.number), stor0[address(msg.sender)])));
    return last
}

function RandomNumber() payable {
    last = tx.origin xor msg.sender xor sha3(block.timestamp) xor sha3(block.number) xor 202916155157117075457 * sha3(block.hash(block.number), stor0[address(msg.sender)])
    emit GeneratedNumber((tx.origin xor msg.sender xor sha3(block.timestamp) xor sha3(block.number) xor 202916155157117075457 * sha3(block.hash(block.number), stor0[address(msg.sender)])));
    return last
}



}
