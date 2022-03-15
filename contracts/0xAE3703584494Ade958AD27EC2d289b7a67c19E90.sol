contract main {


// =======================  Init code  ======================


uint256 stor0;
uint128 stor1; offset 160
uint256 stor1;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    uint256(stor1.field_0) = Mask(96, 0, stor1.field_160)
    return code.data[51 len 1660]
}



// =====================  Runtime code  =====================


const getMaxPayout = (5 * eth.balance(this.address) / 100)

const getMinimumBet = 0


address stor0;
address stor1;
uint256 stor1;
mapping of struct stor2;

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
    return (256 * 98 * arg1 / 100 / arg2)
}

function isReady() payable {
    if stor2[address(msg.sender)].field_1024 != 0:
        return 1
    else:
        return 0
}

function setFeed(address arg1) payable {
    if msg.sender == stor0:
        uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
}

function withdraw(uint256 arg1) payable {
    if msg.sender == stor0:
        call stor0 with:
           value arg1 wei
             gas 0 wei
}

function serverSeed(address arg1, bytes32 arg2) payable {
    if msg.sender == address(stor1):
        if not stor2[address(arg1)].field_1024:
            stor2[address(arg1)].field_1024 = arg2
}

function getResult(bytes32 arg1) payable {
    if stor2[address(msg.sender)].field_1024 != 0:
        if sha3(arg1) == stor2[address(msg.sender)].field_768:
            return uint8(sha3(arg1, stor2[address(msg.sender)].field_1024))
        else:
            return 0
    else:
        return 0
}

function didWin(bytes32 arg1) payable {
    if 0 == stor2[address(msg.sender)].field_1024:
        return 0
    if sha3(arg1) != stor2[address(msg.sender)].field_768:
        return 0
    if uint8(sha3(arg1, stor2[address(msg.sender)].field_1024)) >= stor2[address(msg.sender)].field_256:
        return 0
    return 1
}

function sub_da932856(?) payable {
    if 0 == stor2[address(msg.sender)].field_1024:
        if stor2[address(msg.sender)].field_0 > 0:
            if block.number >= stor2[address(msg.sender)].field_512 + 20:
                return 1
            else:
                return 0
        else:
            return 0
    else:
        return 0
}

function claimTimeout() payable {
    if 0 == stor2[address(msg.sender)].field_1024:
        if stor2[address(msg.sender)].field_0 > 0:
            if block.number >= stor2[address(msg.sender)].field_512 + 20:
                call msg.sender with:
                   value stor2[address(msg.sender)].field_0 wei
                     gas 0 wei
                stor2[address(msg.sender)].field_0 = 0
                stor2[address(msg.sender)].field_256 = 0
                stor2[address(msg.sender)].field_512 = 0
                stor2[address(msg.sender)].field_768 = 0
                stor2[address(msg.sender)].field_1024 = 0
}

function claim(bytes32 arg1) payable {
    if stor2[address(msg.sender)].field_1024 != 0:
        if sha3(arg1) == stor2[address(msg.sender)].field_768:
            if uint8(sha3(arg1, stor2[address(msg.sender)].field_1024)) < stor2[address(msg.sender)].field_256:
                call msg.sender with:
                   value 256 * 98 * stor2[address(msg.sender)].field_0 / 100 / stor2[address(msg.sender)].field_256 wei
                     gas 0 wei
                emit Won(stor2[address(msg.sender)].field_0, stor2[address(msg.sender)].field_256, msg.sender);
            stor2[address(msg.sender)].field_0 = 0
            stor2[address(msg.sender)].field_256 = 0
            stor2[address(msg.sender)].field_512 = 0
            stor2[address(msg.sender)].field_768 = 0
            stor2[address(msg.sender)].field_1024 = 0
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
            if msg.value < 0:
                call msg.sender with:
                   value msg.value wei
                     gas 0 wei
            else:
                if 256 * 98 * msg.value / 100 / arg1 > 5 * eth.balance(this.address) / 100:
                    call msg.sender with:
                       value msg.value wei
                         gas 0 wei
                else:
                    stor2[address(msg.sender)].field_0 = msg.value
                    stor2[address(msg.sender)].field_256 = arg1
                    stor2[address(msg.sender)].field_512 = block.number
                    stor2[address(msg.sender)].field_768 = arg2
                    stor2[address(msg.sender)].field_1024 = 0
                    emit Bet(msg.value, arg1, msg.sender);
}



}
