contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;

function _fallback() payable {
    stor0 = 0
    stor1 = 10000
    stor2 = 1
    stor3 = 1
    require not msg.value
    return code.data[49 len 614]
}



// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function randomGen(uint256 arg1) {
    return (sha3(block.hash(block.number - 1), arg1) % 10000)
}

function rollDice(uint256 arg1) {
    require arg1 >= 1
    require arg1 <= 99
    require arg1
    if sha3(block.hash(block.number - 1), 5252) % 10000 >= 100 * arg1:
        emit 0xaef6026e: sha3(block.hash(block.number - 1), 5252) % 10000, Array(len=4, data='lose')
        return 0
    emit 0xaef6026e: sha3(block.hash(block.number - 1), 5252) % 10000, Array(len=3, data='win')
    return 1
}



}
