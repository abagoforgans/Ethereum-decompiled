contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor4;

function _fallback() {
    stor0 = msg.sender
    stor4 = 0
    return code.data[60 len 998]
}



// =====================  Runtime code  =====================


address owner;
address playerAddress;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor5;

function player() {
    return playerAddress
}

function owner() {
    return owner
}

function kill() {
    require owner == msg.sender
    selfdestruct(msg.sender)
}

function _fallback() payable {
  stop
}

function random(uint256 arg1) {
    stor2 = block.hash(block.number - 1)
    stor3 = block.timestamp
    stor4++
    require arg1
    return (sha3(block.hash(block.number - 1) + block.timestamp + stor4 + 1) % arg1)
}

function play() payable {
    playerAddress = msg.sender
    uint256(stor5) = msg.value
    if msg.value <= 10^18:
        stor2 = block.hash(block.number - 1)
        stor3 = block.timestamp
        stor4++
        if 42 == sha3(block.hash(block.number - 1) + block.timestamp + stor4 + 1) % 100:
            emit Loss(playerAddress, uint256(stor5));
        stor2 = block.hash(block.number - 1)
        stor3 = block.timestamp
        stor4++
        if not bool(sha3(block.hash(block.number - 1) + block.timestamp + stor4 + 1)):
            emit Loss(playerAddress, uint256(stor5));
        emit Win(playerAddress, 2 * uint256(stor5));
        call msg.sender with:
           value 2 * uint256(stor5) wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
    else:
        call msg.sender with:
           value 99 * uint256(stor5) / 100 wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
            emit Refund(playerAddress, 99 * uint256(stor5) / 100);
            stor2 = block.hash(block.number - 1)
            stor3 = block.timestamp
            stor4++
            if 42 == sha3(block.hash(block.number - 1) + block.timestamp + stor4 + 1) % 100:
                emit Loss(playerAddress, uint256(stor5));
            stor2 = block.hash(block.number - 1)
            stor3 = block.timestamp
            stor4++
            if not bool(sha3(block.hash(block.number - 1) + block.timestamp + stor4 + 1)):
                emit Loss(playerAddress, uint256(stor5));
            emit Win(playerAddress, 2 * uint256(stor5));
            call msg.sender with:
               value 2 * uint256(stor5) wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
    revert
}



}
