contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor3;

function _fallback() payable {
    stor3 = 1
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[41 len 385]
}



// =====================  Runtime code  =====================


const rand = ((block.hash(block.number - 1) / 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f) + 1)


address owner;
address senderAddress;
uint256 stor1;
uint256 balance;
uint256 loss;

function sender() payable {
    return address(senderAddress)
}

function loss() payable {
    return loss
}

function owner() payable {
    return owner
}

function balance() payable {
    return balance
}

function enter() payable {
    uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
    balance = msg.value
    loss = msg.value + (block.hash(block.number - 1) / 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f * msg.value) / 100
    call msg.sender with:
       value msg.value - (msg.value + (block.hash(block.number - 1) / 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f * msg.value) / 100) wei
         gas 0 wei
    call owner with:
       value loss wei
         gas 0 wei
}

function _fallback() payable {
    uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
    balance = msg.value
    loss = msg.value + (block.hash(block.number - 1) / 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f * msg.value) / 100
    call msg.sender with:
       value msg.value - (msg.value + (block.hash(block.number - 1) / 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f * msg.value) / 100) wei
         gas 0 wei
    call owner with:
       value loss wei
         gas 0 wei
}



}
