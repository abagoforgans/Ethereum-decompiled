contract main {


// =======================  Init code  ======================


const _fallback = code.data[19 len 378]




// =====================  Runtime code  =====================


address owner;
uint256 stor0;
address lastPlayerAddress;
uint256 stor1;
uint256 lastBlock;

function lastBlock() payable {
    return lastBlock
}

function owner() payable {
    return address(owner)
}

function lastPlayer() payable {
    return address(lastPlayerAddress)
}

function sub_bb4c4974(?) payable {
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
    uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
    lastBlock = block.number
}

function _fallback() payable {
    if eth.balance(this.address) <= 0:
        if msg.value >= 10^18:
            uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
            lastBlock = block.number
    else:
        if block.number - lastBlock > 200:
            call address(owner) with:
               value eth.balance(this.address) / 100 wei
                 gas 0 wei
            call address(lastPlayerAddress) with:
               value eth.balance(this.address) - (eth.balance(this.address) / 100) wei
                 gas 0 wei
        if msg.value >= 10^18:
            uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
            lastBlock = block.number
}



}
