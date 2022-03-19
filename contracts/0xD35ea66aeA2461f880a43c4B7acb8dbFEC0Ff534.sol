contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 411]
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
    loss = (block.hash(block.number - 1) / 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f) + 1
    if (block.hash(block.number - 1) / 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f) + 1 > 50:
        loss -= 50
    uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
    balance = msg.value
    loss = msg.value * loss / 100
    call msg.sender with:
       value msg.value - (msg.value * loss / 100) wei
         gas 0 wei
    call owner with:
       value loss wei
         gas 0 wei
}

function _fallback() payable {
    loss = (block.hash(block.number - 1) / 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f) + 1
    if (block.hash(block.number - 1) / 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f) + 1 > 50:
        loss -= 50
    uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
    balance = msg.value
    loss = msg.value * loss / 100
    call msg.sender with:
       value msg.value - (msg.value * loss / 100) wei
         gas 0 wei
    call owner with:
       value loss wei
         gas 0 wei
}



}
