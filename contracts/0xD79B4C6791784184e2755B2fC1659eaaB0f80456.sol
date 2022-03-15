contract main {


// =======================  Init code  ======================


uint256 stor1;
uint256 stor2;
uint256 stor3;

function _fallback() payable {
    stor3 = 10^18
    stor1 = msg.sender or Mask(96, 160, stor1)
    stor2 = msg.sender or Mask(96, 160, stor2)
    return code.data[65 len 1889]
}



// =====================  Runtime code  =====================


const getBankroll = eth.balance(this.address)

const getMaxPayout = (5 * eth.balance(this.address) / 100)


uint256 betsLocked;
address stor1;
address stor2;
uint256 stor2;
uint256 minimumBet;
mapping of struct stor4;

function getBetsLocked() payable {
    return betsLocked
}

function getMinimumBet() payable {
    return minimumBet
}

function _fallback() payable {
  stop
}

function unlockBets() payable {
  stop
}

function lockBetsForWithdraw() payable {
  stop
}

function hash(bytes32 arg1) payable {
    return sha3(arg1)
}

function hashTo256(bytes32 arg1) payable {
    return uint8(arg1)
}

function calcWinnings(uint256 arg1, uint256 arg2) payable {
    return (256 * 99 * arg1 / 100 / arg2)
}

function isReady() payable {
    if stor4[address(msg.sender)].field_1024 != 0:
        return 1
    else:
        return 0
}

function setFeed(address arg1) payable {
    if msg.sender == stor1:
        uint256(stor2) = arg1 or Mask(96, 160, uint256(stor2))
}

function isReadyFor(address arg1) payable {
    if stor4[address(arg1)].field_1024 != 0:
        return 1
    else:
        return 0
}

function serverSeed(address arg1, bytes32 arg2) payable {
    if msg.sender == address(stor2):
        if not stor4[address(arg1)].field_1024:
            stor4[address(arg1)].field_1024 = arg2
}

function withdraw(uint256 arg1) payable {
    if msg.sender == stor1:
        if betsLocked:
            if block.number >= betsLocked + 5760:
                call stor1 with:
                   value arg1 wei
                     gas 0 wei
}

function getResult(bytes32 arg1) payable {
    if stor4[address(msg.sender)].field_1024 != 0:
        if sha3(arg1) == stor4[address(msg.sender)].field_768:
            return uint8(sha3(arg1, stor4[address(msg.sender)].field_1024))
        else:
            return 0
    else:
        return 0
}

function didWin(bytes32 arg1) payable {
    if 0 == stor4[address(msg.sender)].field_1024:
        return 0
    if sha3(arg1) != stor4[address(msg.sender)].field_768:
        return 0
    if uint8(sha3(arg1, stor4[address(msg.sender)].field_1024)) >= stor4[address(msg.sender)].field_256:
        return 0
    return 1
}

function canClaimTimeout() payable {
    if 0 == stor4[address(msg.sender)].field_1024:
        if stor4[address(msg.sender)].field_0 > 0:
            if block.number >= stor4[address(msg.sender)].field_512 + 20:
                return 1
            else:
                return 0
        else:
            return 0
    else:
        return 0
}

function claimTimeout() payable {
    if 0 == stor4[address(msg.sender)].field_1024:
        if stor4[address(msg.sender)].field_0 > 0:
            if block.number >= stor4[address(msg.sender)].field_512 + 20:
                call msg.sender with:
                   value stor4[address(msg.sender)].field_0 wei
                     gas 0 wei
                stor4[address(msg.sender)].field_0 = 0
                stor4[address(msg.sender)].field_256 = 0
                stor4[address(msg.sender)].field_512 = 0
                stor4[address(msg.sender)].field_768 = 0
                stor4[address(msg.sender)].field_1024 = 0
}

function claim(bytes32 arg1) payable {
    if stor4[address(msg.sender)].field_1024 != 0:
        if sha3(arg1) == stor4[address(msg.sender)].field_768:
            if uint8(sha3(arg1, stor4[address(msg.sender)].field_1024)) < stor4[address(msg.sender)].field_256:
                call msg.sender with:
                   value (256 * 99 * stor4[address(msg.sender)].field_0 / 100 / stor4[address(msg.sender)].field_256) - 10^17 wei
                     gas 0 wei
                emit Won(stor4[address(msg.sender)].field_0, stor4[address(msg.sender)].field_256, msg.sender);
            stor4[address(msg.sender)].field_0 = 0
            stor4[address(msg.sender)].field_256 = 0
            stor4[address(msg.sender)].field_512 = 0
            stor4[address(msg.sender)].field_768 = 0
            stor4[address(msg.sender)].field_1024 = 0
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
            if msg.value < minimumBet:
                call msg.sender with:
                   value msg.value wei
                     gas 0 wei
            else:
                if 256 * 99 * msg.value / 100 / arg1 > 5 * eth.balance(this.address) / 100:
                    call msg.sender with:
                       value msg.value wei
                         gas 0 wei
                else:
                    if betsLocked:
                        call msg.sender with:
                           value msg.value wei
                             gas 0 wei
                    else:
                        stor4[address(msg.sender)].field_0 = msg.value
                        stor4[address(msg.sender)].field_256 = arg1
                        stor4[address(msg.sender)].field_512 = block.number
                        stor4[address(msg.sender)].field_768 = arg2
                        stor4[address(msg.sender)].field_1024 = 0
                        emit Bet(block.number, msg.value, arg1, msg.sender);
}



}
