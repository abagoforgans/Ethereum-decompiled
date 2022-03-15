contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[37 len 1523]
}



// =====================  Runtime code  =====================


const getMaxPayout = (5 * eth.balance(this.address) / 100)

const getMinimumBet = 10 * 10^18


address stor0;
mapping of struct stor1;

function _fallback() payable {
  stop
}

function hash(bytes32 arg1) payable {
    return sha3(arg1)
}

function hashTo256(bytes32 arg1) payable {
    return uint8(arg1)
}

function calcWinnings(uint256 arg1, uint256 arg2) payable {
    return (98 * arg1 * 256 / arg2 / 100)
}

function isReady() payable {
    if stor1[address(msg.sender)].field_1024 != 0:
        return 1
    else:
        return 0
}

function withdraw(uint256 arg1) payable {
    if msg.sender == stor0:
        call stor0 with:
           value arg1 wei
             gas 0 wei
}

function serverSeed(address arg1, bytes32 arg2) payable {
    if msg.sender == stor0:
        if not stor1[address(arg1)].field_1024:
            stor1[address(arg1)].field_1024 = arg2
}

function getResult(bytes32 arg1) payable {
    if stor1[address(msg.sender)].field_1024 != 0:
        if sha3(arg1) == stor1[address(msg.sender)].field_768:
            return uint8(sha3(arg1, stor1[address(msg.sender)].field_1024))
        else:
            return 0
    else:
        return 0
}

function didWin(bytes32 arg1) payable {
    if 0 == stor1[address(msg.sender)].field_1024:
        return 0
    if sha3(arg1) != stor1[address(msg.sender)].field_768:
        return 0
    if uint8(sha3(arg1, stor1[address(msg.sender)].field_1024)) >= stor1[address(msg.sender)].field_256:
        return 0
    return 1
}

function claimTimeout() payable {
    if 0 == stor1[address(msg.sender)].field_1024:
        if stor1[address(msg.sender)].field_0 > 0:
            if block.number >= stor1[address(msg.sender)].field_512 + 20:
                call msg.sender with:
                   value stor1[address(msg.sender)].field_0 wei
                     gas 0 wei
                stor1[address(msg.sender)].field_0 = 0
                stor1[address(msg.sender)].field_256 = 0
                stor1[address(msg.sender)].field_512 = 0
                stor1[address(msg.sender)].field_768 = 0
                stor1[address(msg.sender)].field_1024 = 0
}

function claim(bytes32 arg1) payable {
    if stor1[address(msg.sender)].field_1024 != 0:
        if sha3(arg1) == stor1[address(msg.sender)].field_768:
            if uint8(sha3(arg1, stor1[address(msg.sender)].field_1024)) < stor1[address(msg.sender)].field_256:
                call msg.sender with:
                   value 98 * stor1[address(msg.sender)].field_0 * 256 / stor1[address(msg.sender)].field_256 / 100 wei
                     gas 0 wei
                emit Won(stor1[address(msg.sender)].field_0, stor1[address(msg.sender)].field_256, msg.sender);
            stor1[address(msg.sender)].field_0 = 0
            stor1[address(msg.sender)].field_256 = 0
            stor1[address(msg.sender)].field_512 = 0
            stor1[address(msg.sender)].field_768 = 0
            stor1[address(msg.sender)].field_1024 = 0
}

function roll(uint256 arg1, bytes32 arg2) payable {
    if arg1 < 1:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    else:
        if arg1 > 255:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
        else:
            if 98 * msg.value * 256 / arg1 / 100 > 5 * eth.balance(this.address) / 100:
                call msg.sender with:
                   value msg.value wei
                     gas 0 wei
            else:
                stor1[address(msg.sender)].field_0 = msg.value
                stor1[address(msg.sender)].field_256 = arg1
                stor1[address(msg.sender)].field_512 = block.number
                stor1[address(msg.sender)].field_768 = arg2
                stor1[address(msg.sender)].field_1024 = 0
                emit Bet(msg.value, arg1, msg.sender);
}



}
