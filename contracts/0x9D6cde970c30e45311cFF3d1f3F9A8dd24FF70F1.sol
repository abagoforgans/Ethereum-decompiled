contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[3928 len 32]
    stor2 = code.data[3960 len 32]
    stor3 = code.data[3992 len 32]
    return code.data[114 len 3814]
}



// =====================  Runtime code  =====================


address stor0;
uint256 defaultPrice;
uint256 feeRatio;
uint256 incrementRate;
mapping of uint256 checkPendingWithdrawal;
array of uint256 userMessage;

function incrementRate() {
    return incrementRate
}

function feeRatio() {
    return feeRatio
}

function getPixelColor(uint16 arg1, uint16 arg2) {
    require arg1 < 1000
    require arg2 < 1000
    require arg1 < 1000
    require arg2 < 1000
    return stor[(3 * arg2) + (3000 * arg1) + 6] % 16777216
}

function getUserMessage(address arg1) {
    return userMessage[address(arg1)][0 len userMessage[address(arg1)].length]
}

function defaultPrice() {
    return defaultPrice
}

function checkPendingWithdrawal() {
    return checkPendingWithdrawal[address(msg.sender)]
}

function _fallback() payable {
  stop
}

function setAdmin(address arg1) {
    require stor0 == msg.sender
    stor0 = arg1
}

function setFeeRatio(uint256 arg1) {
    require stor0 == msg.sender
    feeRatio = arg1
}

function setDefaultPrice(uint256 arg1) {
    require stor0 == msg.sender
    defaultPrice = arg1
}

function setUserMessage(string arg1) {
    userMessage[address(msg.sender)][] = Array(len=arg1.length, data=arg1[all])
}

function withdraw() {
    if checkPendingWithdrawal[address(msg.sender)] > 0:
        checkPendingWithdrawal[address(msg.sender)] = 0
        call msg.sender with:
           value checkPendingWithdrawal[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function getPixelOwner(uint16 arg1, uint16 arg2) {
    require arg1 < 1000
    require arg2 < 1000
    require arg1 < 1000
    require arg2 < 1000
    if not address(stor[(3 * arg2) + (3000 * arg1) + 4]):
        return stor0
    require arg1 < 1000
    require arg2 < 1000
    return address(stor[(3 * arg2) + (3000 * arg1) + 4])
}

function getPixelPrice(uint16 arg1, uint16 arg2) {
    require arg1 < 1000
    require arg2 < 1000
    require arg1 < 1000
    require arg2 < 1000
    if not address(stor[(3 * arg2) + (3000 * arg1) + 4]):
        return defaultPrice
    require arg1 < 1000
    require arg2 < 1000
    return uint256(stor[(3 * arg2) + (3000 * arg1) + 5])
}

function setPixelPrice(uint16 arg1, uint16 arg2, uint256 arg3) {
    require arg1 < 1000
    require arg2 < 1000
    require arg1 < 1000
    require arg2 < 1000
    require arg1 < 1000
    require arg2 < 1000
    if not address(stor[(3 * arg2) + (3000 * arg1) + 4]):
        require msg.sender == stor0
    else:
        require arg1 < 1000
        require arg2 < 1000
        require msg.sender == address(stor[(3 * arg2) + (3000 * arg1) + 4])
    require arg1 < 1000
    require arg2 < 1000
    require uint256(stor[(3 * arg2) + (3000 * arg1) + 5]) > arg3
    require arg1 < 1000
    require arg2 < 1000
    uint256(stor[(3 * arg2) + (3000 * arg1) + 5]) = arg3
    require arg1 < 1000
    require arg2 < 1000
    emit PixelPrice(arg1 << 240, arg2 << 240, address(stor[(3 * arg2) + (3000 * arg1) + 4]), arg3);
}

function setPixelColor(uint16 arg1, uint16 arg2, uint24 arg3) {
    require arg1 < 1000
    require arg2 < 1000
    require arg1 < 1000
    require arg2 < 1000
    require arg1 < 1000
    require arg2 < 1000
    if not address(stor[(3 * arg2) + (3000 * arg1) + 4]):
        require msg.sender == stor0
    else:
        require arg1 < 1000
        require arg2 < 1000
        require msg.sender == address(stor[(3 * arg2) + (3000 * arg1) + 4])
    require arg1 < 1000
    require arg2 < 1000
    if stor[(3 * arg2) + (3000 * arg1) + 6] % 16777216 != arg3 % 16777216:
        require arg1 < 1000
        require arg2 < 1000
        stor[(3 * arg2) + (3000 * arg1) + 6] % 16777216 = arg3 % 16777216
        require arg1 < 1000
        require arg2 < 1000
        emit PixelColor(arg1 << 240, arg2 << 240, address(stor[(3 * arg2) + (3000 * arg1) + 4]), arg3 % 16777216);
}

function buyPixel(uint16 arg1, uint16 arg2, uint24 arg3) payable {
    if arg1 >= 1000:
        require msg.value + checkPendingWithdrawal[address(msg.sender)] >= checkPendingWithdrawal[address(msg.sender)]
        checkPendingWithdrawal[address(msg.sender)] += msg.value
    else:
        if arg2 >= 1000:
            require msg.value + checkPendingWithdrawal[address(msg.sender)] >= checkPendingWithdrawal[address(msg.sender)]
            checkPendingWithdrawal[address(msg.sender)] += msg.value
        else:
            require arg1 < 1000
            require arg2 < 1000
            require arg1 < 1000
            require arg2 < 1000
            if not address(stor[(3 * arg2) + (3000 * arg1) + 4]):
                require arg1 < 1000
                require arg2 < 1000
                require arg1 < 1000
                require arg2 < 1000
                if not address(stor[(3 * arg2) + (3000 * arg1) + 4]):
                    if msg.value < defaultPrice:
                        require msg.value + checkPendingWithdrawal[address(msg.sender)] >= checkPendingWithdrawal[address(msg.sender)]
                        checkPendingWithdrawal[address(msg.sender)] += msg.value
                    else:
                        require feeRatio
                        require msg.value / feeRatio <= msg.value
                        require (msg.value / feeRatio) + checkPendingWithdrawal[stor0] >= checkPendingWithdrawal[stor0]
                        checkPendingWithdrawal[stor0] += msg.value / feeRatio
                        require msg.value - (msg.value / feeRatio) + checkPendingWithdrawal[stor0] >= checkPendingWithdrawal[stor0]
                        checkPendingWithdrawal[stor0] = msg.value - (msg.value / feeRatio) + checkPendingWithdrawal[stor0]
                        if defaultPrice:
                            require defaultPrice
                            require incrementRate * defaultPrice / defaultPrice == incrementRate
                        require (incrementRate * defaultPrice / 100) + defaultPrice >= defaultPrice
                        require arg1 < 1000
                        require arg2 < 1000
                        uint256(stor[(3 * arg2) + (3000 * arg1) + 5]) = (incrementRate * defaultPrice / 100) + defaultPrice
                        require arg1 < 1000
                        require arg2 < 1000
                        address(stor[(3 * arg2) + (3000 * arg1) + 4]) = msg.sender
                        emit PixelTransfer(arg1 << 240, arg2 << 240, defaultPrice, stor0, msg.sender);
                        require arg1 < 1000
                        require arg2 < 1000
                        require arg1 < 1000
                        require arg2 < 1000
                        require arg1 < 1000
                        require arg2 < 1000
                        if not address(stor[(3 * arg2) + (3000 * arg1) + 4]):
                            require msg.sender == stor0
                        else:
                            require arg1 < 1000
                            require arg2 < 1000
                            require msg.sender == address(stor[(3 * arg2) + (3000 * arg1) + 4])
                        require arg1 < 1000
                        require arg2 < 1000
                        if stor[(3 * arg2) + (3000 * arg1) + 6] % 16777216 != arg3 % 16777216:
                            require arg1 < 1000
                            require arg2 < 1000
                            stor[(3 * arg2) + (3000 * arg1) + 6] % 16777216 = arg3 % 16777216
                            require arg1 < 1000
                            require arg2 < 1000
                            emit PixelColor(arg1 << 240, arg2 << 240, address(stor[(3 * arg2) + (3000 * arg1) + 4]), arg3 % 16777216);
                else:
                    require arg1 < 1000
                    require arg2 < 1000
                    if msg.value < defaultPrice:
                        require msg.value + checkPendingWithdrawal[address(msg.sender)] >= checkPendingWithdrawal[address(msg.sender)]
                        checkPendingWithdrawal[address(msg.sender)] += msg.value
                    else:
                        require feeRatio
                        require msg.value / feeRatio <= msg.value
                        require (msg.value / feeRatio) + checkPendingWithdrawal[stor0] >= checkPendingWithdrawal[stor0]
                        checkPendingWithdrawal[stor0] += msg.value / feeRatio
                        require msg.value - (msg.value / feeRatio) + checkPendingWithdrawal[address(stor[(3 * arg2) + (3000 * arg1) + 4])] >= checkPendingWithdrawal[address(stor[(3 * arg2) + (3000 * arg1) + 4])]
                        checkPendingWithdrawal[address(stor[(3 * arg2) + (3000 * arg1) + 4])] = msg.value - (msg.value / feeRatio) + checkPendingWithdrawal[address(stor[(3 * arg2) + (3000 * arg1) + 4])]
                        if defaultPrice:
                            require defaultPrice
                            require incrementRate * defaultPrice / defaultPrice == incrementRate
                        require (incrementRate * defaultPrice / 100) + defaultPrice >= defaultPrice
                        require arg1 < 1000
                        require arg2 < 1000
                        uint256(stor[(3 * arg2) + (3000 * arg1) + 5]) = (incrementRate * defaultPrice / 100) + defaultPrice
                        require arg1 < 1000
                        require arg2 < 1000
                        address(stor[(3 * arg2) + (3000 * arg1) + 4]) = msg.sender
                        emit PixelTransfer(arg1 << 240, arg2 << 240, defaultPrice, address(stor[(3 * arg2) + (3000 * arg1) + 4]), msg.sender);
                        require arg1 < 1000
                        require arg2 < 1000
                        require arg1 < 1000
                        require arg2 < 1000
                        require arg1 < 1000
                        require arg2 < 1000
                        if not address(stor[(3 * arg2) + (3000 * arg1) + 4]):
                            require msg.sender == stor0
                        else:
                            require arg1 < 1000
                            require arg2 < 1000
                            require msg.sender == address(stor[(3 * arg2) + (3000 * arg1) + 4])
                        require arg1 < 1000
                        require arg2 < 1000
                        if stor[(3 * arg2) + (3000 * arg1) + 6] % 16777216 != arg3 % 16777216:
                            require arg1 < 1000
                            require arg2 < 1000
                            stor[(3 * arg2) + (3000 * arg1) + 6] % 16777216 = arg3 % 16777216
                            require arg1 < 1000
                            require arg2 < 1000
                            emit PixelColor(arg1 << 240, arg2 << 240, address(stor[(3 * arg2) + (3000 * arg1) + 4]), arg3 % 16777216);
            else:
                require arg1 < 1000
                require arg2 < 1000
                require arg1 < 1000
                require arg2 < 1000
                require arg1 < 1000
                require arg2 < 1000
                if not address(stor[(3 * arg2) + (3000 * arg1) + 4]):
                    if msg.value < uint256(stor[(3 * arg2) + (3000 * arg1) + 5]):
                        require msg.value + checkPendingWithdrawal[address(msg.sender)] >= checkPendingWithdrawal[address(msg.sender)]
                        checkPendingWithdrawal[address(msg.sender)] += msg.value
                    else:
                        require feeRatio
                        require msg.value / feeRatio <= msg.value
                        require (msg.value / feeRatio) + checkPendingWithdrawal[stor0] >= checkPendingWithdrawal[stor0]
                        checkPendingWithdrawal[stor0] += msg.value / feeRatio
                        require msg.value - (msg.value / feeRatio) + checkPendingWithdrawal[stor0] >= checkPendingWithdrawal[stor0]
                        checkPendingWithdrawal[stor0] = msg.value - (msg.value / feeRatio) + checkPendingWithdrawal[stor0]
                        if uint256(stor[(3 * arg2) + (3000 * arg1) + 5]):
                            require uint256(stor[(3 * arg2) + (3000 * arg1) + 5])
                            require incrementRate * uint256(stor[(3 * arg2) + (3000 * arg1) + 5]) / uint256(stor[(3 * arg2) + (3000 * arg1) + 5]) == incrementRate
                        require (incrementRate * uint256(stor[(3 * arg2) + (3000 * arg1) + 5]) / 100) + uint256(stor[(3 * arg2) + (3000 * arg1) + 5]) >= uint256(stor[(3 * arg2) + (3000 * arg1) + 5])
                        require arg1 < 1000
                        require arg2 < 1000
                        uint256(stor[(3 * arg2) + (3000 * arg1) + 5]) += incrementRate * uint256(stor[(3 * arg2) + (3000 * arg1) + 5]) / 100
                        require arg1 < 1000
                        require arg2 < 1000
                        address(stor[(3 * arg2) + (3000 * arg1) + 4]) = msg.sender
                        emit PixelTransfer(arg1 << 240, arg2 << 240, uint256(stor[(3 * arg2) + (3000 * arg1) + 5]), stor0, msg.sender);
                        require arg1 < 1000
                        require arg2 < 1000
                        require arg1 < 1000
                        require arg2 < 1000
                        require arg1 < 1000
                        require arg2 < 1000
                        if not address(stor[(3 * arg2) + (3000 * arg1) + 4]):
                            require msg.sender == stor0
                        else:
                            require arg1 < 1000
                            require arg2 < 1000
                            require msg.sender == address(stor[(3 * arg2) + (3000 * arg1) + 4])
                        require arg1 < 1000
                        require arg2 < 1000
                        if stor[(3 * arg2) + (3000 * arg1) + 6] % 16777216 != arg3 % 16777216:
                            require arg1 < 1000
                            require arg2 < 1000
                            stor[(3 * arg2) + (3000 * arg1) + 6] % 16777216 = arg3 % 16777216
                            require arg1 < 1000
                            require arg2 < 1000
                            emit PixelColor(arg1 << 240, arg2 << 240, address(stor[(3 * arg2) + (3000 * arg1) + 4]), arg3 % 16777216);
                else:
                    require arg1 < 1000
                    require arg2 < 1000
                    if msg.value < uint256(stor[(3 * arg2) + (3000 * arg1) + 5]):
                        require msg.value + checkPendingWithdrawal[address(msg.sender)] >= checkPendingWithdrawal[address(msg.sender)]
                        checkPendingWithdrawal[address(msg.sender)] += msg.value
                    else:
                        require feeRatio
                        require msg.value / feeRatio <= msg.value
                        require (msg.value / feeRatio) + checkPendingWithdrawal[stor0] >= checkPendingWithdrawal[stor0]
                        checkPendingWithdrawal[stor0] += msg.value / feeRatio
                        require msg.value - (msg.value / feeRatio) + checkPendingWithdrawal[address(stor[(3 * arg2) + (3000 * arg1) + 4])] >= checkPendingWithdrawal[address(stor[(3 * arg2) + (3000 * arg1) + 4])]
                        checkPendingWithdrawal[address(stor[(3 * arg2) + (3000 * arg1) + 4])] = msg.value - (msg.value / feeRatio) + checkPendingWithdrawal[address(stor[(3 * arg2) + (3000 * arg1) + 4])]
                        if uint256(stor[(3 * arg2) + (3000 * arg1) + 5]):
                            require uint256(stor[(3 * arg2) + (3000 * arg1) + 5])
                            require incrementRate * uint256(stor[(3 * arg2) + (3000 * arg1) + 5]) / uint256(stor[(3 * arg2) + (3000 * arg1) + 5]) == incrementRate
                        require (incrementRate * uint256(stor[(3 * arg2) + (3000 * arg1) + 5]) / 100) + uint256(stor[(3 * arg2) + (3000 * arg1) + 5]) >= uint256(stor[(3 * arg2) + (3000 * arg1) + 5])
                        require arg1 < 1000
                        require arg2 < 1000
                        uint256(stor[(3 * arg2) + (3000 * arg1) + 5]) += incrementRate * uint256(stor[(3 * arg2) + (3000 * arg1) + 5]) / 100
                        require arg1 < 1000
                        require arg2 < 1000
                        address(stor[(3 * arg2) + (3000 * arg1) + 4]) = msg.sender
                        emit PixelTransfer(arg1 << 240, arg2 << 240, uint256(stor[(3 * arg2) + (3000 * arg1) + 5]), address(stor[(3 * arg2) + (3000 * arg1) + 4]), msg.sender);
                        require arg1 < 1000
                        require arg2 < 1000
                        require arg1 < 1000
                        require arg2 < 1000
                        require arg1 < 1000
                        require arg2 < 1000
                        if not address(stor[(3 * arg2) + (3000 * arg1) + 4]):
                            require msg.sender == stor0
                        else:
                            require arg1 < 1000
                            require arg2 < 1000
                            require msg.sender == address(stor[(3 * arg2) + (3000 * arg1) + 4])
                        require arg1 < 1000
                        require arg2 < 1000
                        if stor[(3 * arg2) + (3000 * arg1) + 6] % 16777216 != arg3 % 16777216:
                            require arg1 < 1000
                            require arg2 < 1000
                            stor[(3 * arg2) + (3000 * arg1) + 6] % 16777216 = arg3 % 16777216
                            require arg1 < 1000
                            require arg2 < 1000
                            emit PixelColor(arg1 << 240, arg2 << 240, address(stor[(3 * arg2) + (3000 * arg1) + 4]), arg3 % 16777216);
}



}
