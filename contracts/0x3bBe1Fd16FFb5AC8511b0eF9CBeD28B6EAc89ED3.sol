contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 785]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function randomGen(uint256 arg1) {
    return (sha3(block.hash(block.number - 1), arg1) % 10000)
}

function rollDice(uint256 arg1) payable {
    require arg1 >= 1
    require arg1 <= 99
    require arg1
    emit 0x1234cbcd: block.hash(block.number - 1), 100 * msg.value / arg1, 7, 'payout:'
    if sha3(block.hash(block.number - 1), 5252) % 10000 >= 100 * arg1:
        emit 0x1234cbcd: block.hash(block.number - 1), sha3(block.hash(block.number - 1), 5252) % 10000, 5, 'lose:'
        return 0
    emit 0x1234cbcd: block.hash(block.number - 1), sha3(block.hash(block.number - 1), 5252) % 10000, 4, 'win:'
    call msg.sender with:
       value msg.value * 100 * msg.value / arg1 wei
         gas 2300 * is_zero(value) wei
    return 1
}



}
