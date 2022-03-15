contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor3;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = 10^16
    stor3 = 5760
    return code.data[93 len 1539]
}



// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


address stor0;
uint256 sendAmount;
mapping of uint256 stor2;
uint256 blockLimit;

function getBlockLimit() payable {
    return blockLimit
}

function getSendAmount() payable {
    return sendAmount
}

function killMe() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function setBlockLimit(uint256 arg1) payable {
    if stor0 != msg.sender:
        return 0
    blockLimit = arg1
    return 1
}

function setSendAmount(uint256 arg1) payable {
    if stor0 != msg.sender:
        return 0
    sendAmount = arg1
    return 1
}

function getRemainingBlocks() payable {
    if blockLimit <= block.number - stor2[address(msg.sender)]:
        return 0
    return (blockLimit - block.number + stor2[address(msg.sender)])
}

function getWei() payable {
    if stor2[address(msg.sender)] >= block.number - blockLimit:
        return 0
    if eth.balance(this.address) <= sendAmount:
        return 0
    call msg.sender with:
       value sendAmount wei
         gas 0 wei
    stor2[address(msg.sender)] = block.number
    return 1
}

function sendWei(address arg1) payable {
    if stor2[address(msg.sender)] >= block.number - blockLimit:
        return 0
    if eth.balance(this.address) <= sendAmount:
        return 0
    call arg1 with:
       value sendAmount wei
         gas 0 wei
    stor2[address(msg.sender)] = block.number
    return 1
}



}
