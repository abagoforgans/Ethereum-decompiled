contract main {




// =====================  Runtime code  =====================


const maxBet = ((eth.balance(this.address) / 5) - 1)


address stor0;
address stor1;
address currentPlayerAddress;
uint256 stor3;
uint256 currentBet;
uint256 stor4;
uint256 stor5;
uint256 playBlockNumber;

function getCurrentPlayer() {
    return currentPlayerAddress
}

function getCurrentBet() {
    return uint256(currentBet)
}

function getPlayBlockNumber() {
    return playBlockNumber
}

function getPlayNumber() {
    return (block.hash(playBlockNumber) % 100)
}

function setCroupier(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'Only I can set the new croupier!'
    stor1 = arg1
}

function _fallback() payable {
    if msg.value > (eth.balance(this.address) / 5) - 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    58,
                    0xfe546865207374616b6520697320746f20686967682c20636865636b206d61784265742829206265666f726520706c6163696e67206120626574,
                    mem[222 len 6]
    if msg.value:
        if currentPlayerAddress:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        43,
                        0x6545697468657220626574207769746820612076616c7565206f7220636f6c6c65637420776974686f7574,
                        mem[207 len 21]
        if msg.value <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        44,
                        0x2e596f75206d757374207365742061206265742062792073656e64696e6720736f6d652076616c7565203e20,
                        mem[208 len 20]
        currentPlayerAddress = msg.sender
        uint256(currentBet) = msg.value
        playBlockNumber = block.number
        stor4 += uint256(currentBet)
    else:
        if not currentPlayerAddress:
            if msg.value <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            44,
                            0x2e596f75206d757374207365742061206265742062792073656e64696e6720736f6d652076616c7565203e20,
                            mem[208 len 20]
            currentPlayerAddress = msg.sender
            uint256(currentBet) = msg.value
            playBlockNumber = block.number
            stor4 += uint256(currentBet)
        else:
            if currentPlayerAddress != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            45,
                            0x644f6e6c79207468652063757272656e7420706c617965722063616e20636f6c6c65637420746865207072697a,
                            mem[209 len 19]
            if block.number <= playBlockNumber + 1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            47,
                            0x2e506c65617365207761697420756e74696c6c20616e6f7468657220626c6f636b20686173206265656e206d696e65,
                            mem[211 len 17]
            if block.hash(playBlockNumber + 1) % 50 <= 0:
                if stor1 != msg.sender:
                    emit Lose(msg.sender, uint256(currentBet));
                    uint256(currentBet) = 0
                else:
                    emit Win(msg.sender, uint256(currentBet));
                    stor5 += uint256(currentBet)
                    uint256(currentBet) = 0
                    call msg.sender with:
                       value 2 * uint256(currentBet) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                if bool(block.hash(playBlockNumber + 1)) == bool(block.hash(playBlockNumber)):
                    emit Win(msg.sender, uint256(currentBet));
                    stor5 += uint256(currentBet)
                    uint256(currentBet) = 0
                    call msg.sender with:
                       value 2 * uint256(currentBet) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if stor1 != msg.sender:
                        emit Lose(msg.sender, uint256(currentBet));
                        uint256(currentBet) = 0
                    else:
                        emit Win(msg.sender, uint256(currentBet));
                        stor5 += uint256(currentBet)
                        uint256(currentBet) = 0
                        call msg.sender with:
                           value 2 * uint256(currentBet) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            currentPlayerAddress = 0
            uint256(currentBet) = 0
            playBlockNumber = 0
}



}
