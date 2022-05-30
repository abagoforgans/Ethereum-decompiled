contract main {




// =====================  Runtime code  =====================


const plebTimeBetweenIncrease = (672 * 24 * 3600)

const wayfarerTimeBetweenIncrease = (504 * 24 * 3600)

const kingTimeBetweenIncrease = (336 * 24 * 3600)

const auctionsAvailableDivisor = 10


uint8 stor0;
address godAddress; offset 8
address blindAuctionsContractAddress;
address openAuctionsContractAddress;
address kingOfEthContractAddress;
uint256 boundX1;
uint256 boundY1;
uint256 boundX2;
uint256 boundY2;
uint256 lastIncreaseTime;
uint8 stor9;
uint8 stor9; offset 2
uint8 nextIncreaseDirection;
uint256 auctionsRemaining;

function nextIncreaseDirection() {
    return nextIncreaseDirection
}

function lastIncreaseTime() {
    return lastIncreaseTime
}

function openAuctionsContract() {
    return openAuctionsContractAddress
}

function blindAuctionsContract() {
    return blindAuctionsContractAddress
}

function auctionsRemaining() {
    return auctionsRemaining
}

function boundY2() {
    return boundY2
}

function isPaused() {
    return bool(stor0)
}

function god() {
    return godAddress
}

function kingOfEthContract() {
    return kingOfEthContractAddress
}

function boundX2() {
    return boundX2
}

function boundY1() {
    return boundY1
}

function boundX1() {
    return boundX1
}

function _fallback() payable {
    revert
}

function godPause() {
    require msg.sender == godAddress
    stor0 = 1
    emit GodPaused()
}

function godChangeGod(address arg1) {
    require msg.sender == godAddress
    godAddress = arg1
}

function godUnpause() {
    require msg.sender == godAddress
    stor0 = 0
    emit GodUnpaused()
}

function godSetKingOfEthContract(address arg1) {
    require msg.sender == godAddress
    kingOfEthContractAddress = arg1
}

function godSetOpenAuctionsContract(address arg1) {
    require msg.sender == godAddress
    openAuctionsContractAddress = arg1
}

function godSetBlindAuctionsContract(address arg1) {
    require msg.sender == godAddress
    blindAuctionsContractAddress = arg1
}

function godStartGame() {
    require msg.sender == godAddress
    lastIncreaseTime = block.timestamp
    stor0 = 0
    emit GodUnpaused()
}

function auctionsDecrementAuctionsRemaining() {
    if blindAuctionsContractAddress != msg.sender:
        require msg.sender == openAuctionsContractAddress
    auctionsRemaining--
}

function auctionsIncrementAuctionsRemaining() {
    if blindAuctionsContractAddress != msg.sender:
        require msg.sender == openAuctionsContractAddress
    auctionsRemaining++
}

function plebIncreaseBoard() {
    require lastIncreaseTime + (672 * 24 * 3600) < block.timestamp
    if not nextIncreaseDirection:
        if (2 * boundX2) - boundX1 <= boundX2:
            boundX2 = -1
        else:
            if 2 * boundX2 > boundX2:
                boundX2 = (2 * boundX2) - boundX1
            else:
                boundX2 = -1
    else:
        if 1 == nextIncreaseDirection:
            if (2 * boundY2) - boundY1 <= boundY2:
                boundY2 = -1
            else:
                if 2 * boundY2 > boundY2:
                    boundY2 = (2 * boundY2) - boundY1
                else:
                    boundY2 = -1
        else:
            if 2 == nextIncreaseDirection:
                if boundX2 - boundX1 < boundX1:
                    boundX1 = (2 * boundX1) - boundX2
                else:
                    boundX1 = 0
            else:
                if 3 == nextIncreaseDirection:
                    if boundY2 - boundY1 < boundY1:
                        boundY1 = (2 * boundY1) - boundY2
                    else:
                        boundY1 = 0
    lastIncreaseTime = block.timestamp
    stor9.field_0 % 4 = nextIncreaseDirection + 1 % 4
    stor9.field_2 % 64 = 0
    auctionsRemaining = (boundY2 * boundX2) - (boundY1 * boundX2) - (boundY2 * boundX1) + (boundY1 * boundX1) / 2 / 10
    emit BoardSizeIncreased(msg.sender, boundX1, boundY1, boundX2, boundY2, block.timestamp, nextIncreaseDirection, auctionsRemaining);
}

function kingIncreaseBoard() {
    require ext_code.size(kingOfEthContractAddress)
    call kingOfEthContractAddress.king() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == msg.sender
    require lastIncreaseTime + (336 * 24 * 3600) < block.timestamp
    if not nextIncreaseDirection:
        if (2 * boundX2) - boundX1 <= boundX2:
            boundX2 = -1
        else:
            if 2 * boundX2 > boundX2:
                boundX2 = (2 * boundX2) - boundX1
            else:
                boundX2 = -1
    else:
        if 1 == nextIncreaseDirection:
            if (2 * boundY2) - boundY1 <= boundY2:
                boundY2 = -1
            else:
                if 2 * boundY2 > boundY2:
                    boundY2 = (2 * boundY2) - boundY1
                else:
                    boundY2 = -1
        else:
            if 2 == nextIncreaseDirection:
                if boundX2 - boundX1 < boundX1:
                    boundX1 = (2 * boundX1) - boundX2
                else:
                    boundX1 = 0
            else:
                if 3 == nextIncreaseDirection:
                    if boundY2 - boundY1 < boundY1:
                        boundY1 = (2 * boundY1) - boundY2
                    else:
                        boundY1 = 0
    lastIncreaseTime = block.timestamp
    stor9.field_0 % 4 = nextIncreaseDirection + 1 % 4
    stor9.field_2 % 64 = 0
    auctionsRemaining = (boundY2 * boundX2) - (boundY1 * boundX2) - (boundY2 * boundX1) + (boundY1 * boundX1) / 2 / 10
    emit BoardSizeIncreased(msg.sender, boundX1, boundY1, boundX2, boundY2, block.timestamp, nextIncreaseDirection, auctionsRemaining);
}

function wayfarerIncreaseBoard() {
    require ext_code.size(kingOfEthContractAddress)
    call kingOfEthContractAddress.wayfarer() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == msg.sender
    require lastIncreaseTime + (504 * 24 * 3600) < block.timestamp
    if not nextIncreaseDirection:
        if (2 * boundX2) - boundX1 <= boundX2:
            boundX2 = -1
        else:
            if 2 * boundX2 > boundX2:
                boundX2 = (2 * boundX2) - boundX1
            else:
                boundX2 = -1
    else:
        if 1 == nextIncreaseDirection:
            if (2 * boundY2) - boundY1 <= boundY2:
                boundY2 = -1
            else:
                if 2 * boundY2 > boundY2:
                    boundY2 = (2 * boundY2) - boundY1
                else:
                    boundY2 = -1
        else:
            if 2 == nextIncreaseDirection:
                if boundX2 - boundX1 < boundX1:
                    boundX1 = (2 * boundX1) - boundX2
                else:
                    boundX1 = 0
            else:
                if 3 == nextIncreaseDirection:
                    if boundY2 - boundY1 < boundY1:
                        boundY1 = (2 * boundY1) - boundY2
                    else:
                        boundY1 = 0
    lastIncreaseTime = block.timestamp
    stor9.field_0 % 4 = nextIncreaseDirection + 1 % 4
    stor9.field_2 % 64 = 0
    auctionsRemaining = (boundY2 * boundX2) - (boundY1 * boundX2) - (boundY2 * boundX1) + (boundY1 * boundX1) / 2 / 10
    emit BoardSizeIncreased(msg.sender, boundX1, boundY1, boundX2, boundY2, block.timestamp, nextIncreaseDirection, auctionsRemaining);
}



}
