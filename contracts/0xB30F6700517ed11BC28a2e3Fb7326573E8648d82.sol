contract main {


// =======================  Init code  ======================


uint256 stor1;
uint256 stor2;

function _fallback() payable {
    stor1 = msg.sender or Mask(96, 160, stor1)
    stor2 = 10^14
    return code.data[46 len 536]
}



// =====================  Runtime code  =====================


mapping of uint256 stor0;
address stor1;
uint256 stor1;
uint256 price;
uint256 last;

function last() payable {
    return last
}

function price() payable {
    return price
}

function end_contract() payable {
    if address(stor1) != msg.sender:
    selfdestruct(address(stor1))
}

function _fallback() payable {
  stop
}

function set_price(uint256 arg1) payable {
    if msg.sender == address(stor1):
        price = arg1
}

function set_owner(address arg1) payable {
    if address(stor1) == msg.sender:
        uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
}

function RandomNumberFromSeed(uint256 arg1) payable {
    stor0[address(msg.sender)]++
    if stor0[address(msg.sender)] > 0:
        require msg.value >= price
        call address(stor1) with:
           value eth.balance(this.address) wei
             gas 0 wei
    last = 202916155157117075457 * sha3(block.hash(block.number), stor0[address(msg.sender)]) xor arg1
    return (202916155157117075457 * sha3(block.hash(block.number), stor0[address(msg.sender)]) xor arg1)
}

function RandomNumber() payable {
    stor0[address(msg.sender)]++
    if stor0[address(msg.sender)] > 0:
        require msg.value >= price
        call address(stor1) with:
           value eth.balance(this.address) wei
             gas 0 wei
    last = 202916155157117075457 * sha3(block.hash(block.number), stor0[address(msg.sender)]) xor address(stor1) xor tx.origin xor msg.sender xor sha3(block.number) xor sha3(block.timestamp)
    return (202916155157117075457 * sha3(block.hash(block.number), stor0[address(msg.sender)]) xor address(stor1) xor tx.origin xor msg.sender xor sha3(block.number) xor sha3(block.timestamp))
}



}
