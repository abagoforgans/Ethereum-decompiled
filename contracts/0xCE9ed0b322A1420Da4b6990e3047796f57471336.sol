contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor7;

function _fallback() {
    stor7 = msg.sender
    stor0 = block.timestamp + msg.sender % 100
    return code.data[69 len 1817]
}



// =====================  Runtime code  =====================


uint256 stor0;
uint256 stor1;
uint256 currentJackpotInWei;
uint256 stor3;
array of address stor4;
address ourLastWinnerAddress;
address ourLastJackpotWinnerAddress;
address stor7;
mapping of uint8 stor8;

function ourLastJackpotWinner() {
    return ourLastJackpotWinnerAddress
}

function currentJackpotInWei() {
    return currentJackpotInWei
}

function amountOfRegisters() {
    return stor4.length
}

function ourLastWinner() {
    return ourLastWinnerAddress
}

function die() {
    require stor7 == msg.sender
    selfdestruct(stor7)
}

function withdraw() {
    require stor7 == msg.sender
    call stor7 with:
       value eth.balance(this.address) - currentJackpotInWei wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    emit LotteryLog(address(msg.sender), Array(len=21, data='Received new funds...'));
    if msg.value < 5 * 10^17:
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit LotteryLog(address(msg.sender), Array(len=61, data='Failed: not enough Ether sent! S', 'ending back received ether...'));
    else:
        if stor8[address(msg.sender)]:
            call msg.sender with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit LotteryLog(address(msg.sender), Array(len=54, data='Failed: already joined! Sending ', 'back received ether...'));
        else:
            stor8[address(msg.sender)] = 1
            stor4.length++
            if not stor4.length <= stor4.length + 1:
                idx = stor4.length + 1
                while stor4.length > idx:
                    uint256(stor4[idx]) = 0
                    idx = idx + 1
                    continue 
            address(stor4[stor4.length]) = msg.sender
            stor0++
            require stor4.length
            stor1 = sha3(msg.sender + block.timestamp + block.number + stor0 + 1) % stor4.length
            require sha3(msg.sender + block.timestamp + block.number + stor0 + 1) % stor4.length < stor4.length
            ourLastWinnerAddress = address(stor4[sha3(msg.sender + block.timestamp + block.number + stor0 + 1) % stor4.length])
            stor3 = sha3(block.number + block.timestamp + stor1) % 100
            if sha3(block.number + block.timestamp + stor1) % 100 >= 5:
                currentJackpotInWei += 10^17
                call ourLastWinnerAddress with:
                   value msg.value - 10^17 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                emit LotteryLog(ourLastWinnerAddress, Array(len=17, data='We have a Winner!'));
            else:
                ourLastJackpotWinnerAddress = ourLastWinnerAddress
                call ourLastWinnerAddress with:
                   value msg.value + currentJackpotInWei wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                currentJackpotInWei = 0
                emit LotteryLog(ourLastJackpotWinnerAddress, Array(len=15, data='Jackpot is hit!'));
}



}
