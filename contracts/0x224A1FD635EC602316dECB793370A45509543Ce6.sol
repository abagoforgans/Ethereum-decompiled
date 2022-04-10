contract main {


// =======================  Init code  ======================


uint16 stor0; offset 160
address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;

function _fallback() {
    stor1 = code.data[3709 len 32]
    stor2 = code.data[3741 len 32]
    address(stor0.field_0) = msg.sender
    uint16(stor0.field_160) = code.data[3707 len 2]
    stor3 = code.data[3773 len 32]
    return code.data[162 len 3515]
}



// =====================  Runtime code  =====================


uint16 size; offset 160
address stor0;
uint256 defaultPrice;
uint256 feeRatio;
uint256 incrementRate;
mapping of struct stor4;
mapping of uint256 checkPendingWithdrawal;
array of uint256 userMessage;

function incrementRate() {
    return incrementRate
}

function feeRatio() {
    return feeRatio
}

function size() {
    return size
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

function setFeeRatio(uint256 arg1) {
    require address(stor0.field_0) == msg.sender
    feeRatio = arg1
}

function setDefaultPrice(uint256 arg1) {
    require address(stor0.field_0) == msg.sender
    defaultPrice = arg1
}

function setAdmin(address arg1) {
    require address(stor0.field_0) == msg.sender
    address(stor0.field_0) = arg1
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

function getPixelPrice(uint16 arg1, uint16 arg2) {
    require arg1 < size
    require arg2 < size
    if arg1:
        require arg1
        require size * arg1 / arg1 == size
    require arg2 + (size * arg1) >= size * arg1
    if stor4[arg2 + (uint16(stor0.field_160) * arg1) << 224].field_0:
        return stor4[arg2 + (uint16(stor0.field_160) * arg1) << 224].field_256
    return defaultPrice
}

function getKey(uint16 arg1, uint16 arg2) {
    require arg1 < size
    require arg2 < size
    if not arg1:
        if arg2 + (size * arg1) >= size * arg1:
            return uint32(arg2 + (size * arg1))
    else:
        if arg1:
            if size * arg1 / arg1 == size:
                if arg2 + (size * arg1) >= size * arg1:
                    return uint32(arg2 + (size * arg1))
    revert
}

function getPixelOwner(uint16 arg1, uint16 arg2) {
    require arg1 < size
    require arg2 < size
    if arg1:
        require arg1
        require size * arg1 / arg1 == size
    require arg2 + (size * arg1) >= size * arg1
    if stor4[arg2 + (uint16(stor0.field_160) * arg1) << 224].field_0:
        return stor4[arg2 + (uint16(stor0.field_160) * arg1) << 224].field_0
    return address(stor0.field_0)
}

function getPixelColor(uint16 arg1, uint16 arg2) {
    require arg1 < size
    require arg2 < size
    if not arg1:
        if arg2 + (size * arg1) >= size * arg1:
            return stor4[arg2 + (uint16(stor0.field_160) * arg1) << 224].field_512
    else:
        if arg1:
            if size * arg1 / arg1 == size:
                if arg2 + (size * arg1) >= size * arg1:
                    return stor4[arg2 + (uint16(stor0.field_160) * arg1) << 224].field_512
    revert
}

function setPixelPrice(uint16 arg1, uint16 arg2, uint256 arg3) {
    require arg1 < size
    require arg2 < size
    if arg1:
        require arg1
        require size * arg1 / arg1 == size
    require arg2 + (size * arg1) >= size * arg1
    if stor4[arg2 + (uint16(stor0.field_160) * arg1) << 224].field_0:
        require msg.sender == stor4[arg2 + (uint16(stor0.field_160) * arg1) << 224].field_0
    else:
        require msg.sender == address(stor0.field_0)
    require arg1 < size
    require arg2 < size
    if arg1:
        require arg1
        require size * arg1 / arg1 == size
    require arg2 + (size * arg1) >= size * arg1
    require stor4[arg2 + (uint16(stor0.field_160) * arg1) << 224].field_256 > arg3
    stor4[arg2 + (uint16(stor0.field_160) * arg1) << 224].field_256 = arg3
    emit PixelPrice(arg1 << 240, arg2 << 240, stor4[arg2 + (uint16(stor0.field_160) * arg1) << 224].field_0, arg3);
}

function setPixelColor(uint16 arg1, uint16 arg2, uint24 arg3) {
    require arg1 < size
    require arg2 < size
    if arg1:
        require arg1
        require size * arg1 / arg1 == size
    require arg2 + (size * arg1) >= size * arg1
    if stor4[arg2 + (uint16(stor0.field_160) * arg1) << 224].field_0:
        require msg.sender == stor4[arg2 + (uint16(stor0.field_160) * arg1) << 224].field_0
    else:
        require msg.sender == address(stor0.field_0)
    require arg1 < size
    require arg2 < size
    if arg1:
        require arg1
        require size * arg1 / arg1 == size
    require arg2 + (size * arg1) >= size * arg1
    if stor4[arg2 + (uint16(stor0.field_160) * arg1) << 224].field_512 != arg3 % 16777216:
        stor4[arg2 + (uint16(stor0.field_160) * arg1) << 224].field_512 = arg3 % 16777216
        emit PixelColor(arg1 << 240, arg2 << 240, stor4[arg2 + (uint16(stor0.field_160) * arg1) << 224].field_0, arg3 % 16777216);
}

function buyPixel(uint16 arg1, uint16 arg2, uint24 arg3) payable {
    if arg1 >= size:
        require msg.value + checkPendingWithdrawal[address(msg.sender)] >= checkPendingWithdrawal[address(msg.sender)]
        checkPendingWithdrawal[address(msg.sender)] += msg.value
    else:
        if arg2 >= size:
            require msg.value + checkPendingWithdrawal[address(msg.sender)] >= checkPendingWithdrawal[address(msg.sender)]
            checkPendingWithdrawal[address(msg.sender)] += msg.value
        else:
            require arg1 < size
            require arg2 < size
            if arg1:
                require arg1
                require size * arg1 / arg1 == size
            require arg2 + (size * arg1) >= size * arg1
            require arg1 < size
            require arg2 < size
            if arg1:
                require arg1
                require size * arg1 / arg1 == size
            require arg2 + (size * arg1) >= size * arg1
            require arg1 < size
            require arg2 < size
            if arg1:
                require arg1
                require size * arg1 / arg1 == size
            require arg2 + (size * arg1) >= size * arg1
            if stor4[arg2 + (uint16(stor0.field_160) * arg1) << 224].field_0:
                if stor4[arg2 + (uint16(stor0.field_160) * arg1) << 224].field_0:
                    if msg.value < stor4[arg2 + (uint16(stor0.field_160) * arg1) << 224].field_256:
                        require msg.value + checkPendingWithdrawal[address(msg.sender)] >= checkPendingWithdrawal[address(msg.sender)]
                        checkPendingWithdrawal[address(msg.sender)] += msg.value
                    else:
                        require feeRatio
                        require msg.value / feeRatio <= msg.value
                        require (msg.value / feeRatio) + checkPendingWithdrawal[address(stor0.field_0)] >= checkPendingWithdrawal[address(stor0.field_0)]
                        checkPendingWithdrawal[address(stor0.field_0)] += msg.value / feeRatio
                        require msg.value - (msg.value / feeRatio) + checkPendingWithdrawal[stor4[arg2 + (uint16(stor0.field_160) * arg1) << 224].field_0] >= checkPendingWithdrawal[stor4[arg2 + (uint16(stor0.field_160) * arg1) << 224].field_0]
                        checkPendingWithdrawal[stor4[arg2 + (uint16(stor0.field_160) * arg1) << 224].field_0] = msg.value - (msg.value / feeRatio) + checkPendingWithdrawal[stor4[arg2 + (uint16(stor0.field_160) * arg1) << 224].field_0]
                        if stor4[arg2 + (uint16(stor0.field_160) * arg1) << 224].field_256:
                            require stor4[arg2 + (uint16(stor0.field_160) * arg1) << 224].field_256
                            require incrementRate * stor4[arg2 + (uint16(stor0.field_160) * arg1) << 224].field_256 / stor4[arg2 + (uint16(stor0.field_160) * arg1) << 224].field_256 == incrementRate
                        require (incrementRate * stor4[arg2 + (uint16(stor0.field_160) * arg1) << 224].field_256 / 100) + stor4[arg2 + (uint16(stor0.field_160) * arg1) << 224].field_256 >= stor4[arg2 + (uint16(stor0.field_160) * arg1) << 224].field_256
                        stor4[arg2 + (uint16(stor0.field_160) * arg1) << 224].field_256 += incrementRate * stor4[arg2 + (uint16(stor0.field_160) * arg1) << 224].field_256 / 100
                        stor4[arg2 + (uint16(stor0.field_160) * arg1) << 224].field_0 = msg.sender
                        emit PixelTransfer(arg1 << 240, arg2 << 240, stor4[arg2 + (uint16(stor0.field_160) * arg1) << 224].field_256, stor4[arg2 + (uint16(stor0.field_160) * arg1) << 224].field_0, msg.sender);
                        require arg1 < size
                        require arg2 < size
                        if arg1:
                            require arg1
                            require size * arg1 / arg1 == size
                        require arg2 + (size * arg1) >= size * arg1
                        if stor4[arg2 + (uint16(stor0.field_160) * arg1) << 224].field_0:
                            require msg.sender == stor4[arg2 + (uint16(stor0.field_160) * arg1) << 224].field_0
                        else:
                            require msg.sender == address(stor0.field_0)
                        require arg1 < size
                        require arg2 < size
                        if arg1:
                            require arg1
                            require size * arg1 / arg1 == size
                        require arg2 + (size * arg1) >= size * arg1
                        if stor4[arg2 + (uint16(stor0.field_160) * arg1) << 224].field_512 != arg3 % 16777216:
                            stor4[arg2 + (uint16(stor0.field_160) * arg1) << 224].field_512 = arg3 % 16777216
                            emit PixelColor(arg1 << 240, arg2 << 240, stor4[arg2 + (uint16(stor0.field_160) * arg1) << 224].field_0, arg3 % 16777216);
                else:
                    if msg.value < stor4[arg2 + (uint16(stor0.field_160) * arg1) << 224].field_256:
                        require msg.value + checkPendingWithdrawal[address(msg.sender)] >= checkPendingWithdrawal[address(msg.sender)]
                        checkPendingWithdrawal[address(msg.sender)] += msg.value
                    else:
                        require feeRatio
                        require msg.value / feeRatio <= msg.value
                        require (msg.value / feeRatio) + checkPendingWithdrawal[address(stor0.field_0)] >= checkPendingWithdrawal[address(stor0.field_0)]
                        checkPendingWithdrawal[address(stor0.field_0)] += msg.value / feeRatio
                        require msg.value - (msg.value / feeRatio) + checkPendingWithdrawal[address(stor0.field_0)] >= checkPendingWithdrawal[address(stor0.field_0)]
                        checkPendingWithdrawal[address(stor0.field_0)] = msg.value - (msg.value / feeRatio) + checkPendingWithdrawal[address(stor0.field_0)]
                        if stor4[arg2 + (uint16(stor0.field_160) * arg1) << 224].field_256:
                            require stor4[arg2 + (uint16(stor0.field_160) * arg1) << 224].field_256
                            require incrementRate * stor4[arg2 + (uint16(stor0.field_160) * arg1) << 224].field_256 / stor4[arg2 + (uint16(stor0.field_160) * arg1) << 224].field_256 == incrementRate
                        require (incrementRate * stor4[arg2 + (uint16(stor0.field_160) * arg1) << 224].field_256 / 100) + stor4[arg2 + (uint16(stor0.field_160) * arg1) << 224].field_256 >= stor4[arg2 + (uint16(stor0.field_160) * arg1) << 224].field_256
                        stor4[arg2 + (uint16(stor0.field_160) * arg1) << 224].field_256 += incrementRate * stor4[arg2 + (uint16(stor0.field_160) * arg1) << 224].field_256 / 100
                        stor4[arg2 + (uint16(stor0.field_160) * arg1) << 224].field_0 = msg.sender
                        emit PixelTransfer(arg1 << 240, arg2 << 240, stor4[arg2 + (uint16(stor0.field_160) * arg1) << 224].field_256, address(stor0.field_0), msg.sender);
                        require arg1 < size
                        require arg2 < size
                        if arg1:
                            require arg1
                            require size * arg1 / arg1 == size
                        require arg2 + (size * arg1) >= size * arg1
                        if stor4[arg2 + (uint16(stor0.field_160) * arg1) << 224].field_0:
                            require msg.sender == stor4[arg2 + (uint16(stor0.field_160) * arg1) << 224].field_0
                        else:
                            require msg.sender == address(stor0.field_0)
                        require arg1 < size
                        require arg2 < size
                        if arg1:
                            require arg1
                            require size * arg1 / arg1 == size
                        require arg2 + (size * arg1) >= size * arg1
                        if stor4[arg2 + (uint16(stor0.field_160) * arg1) << 224].field_512 != arg3 % 16777216:
                            stor4[arg2 + (uint16(stor0.field_160) * arg1) << 224].field_512 = arg3 % 16777216
                            emit PixelColor(arg1 << 240, arg2 << 240, stor4[arg2 + (uint16(stor0.field_160) * arg1) << 224].field_0, arg3 % 16777216);
            else:
                if stor4[arg2 + (uint16(stor0.field_160) * arg1) << 224].field_0:
                    if msg.value < defaultPrice:
                        require msg.value + checkPendingWithdrawal[address(msg.sender)] >= checkPendingWithdrawal[address(msg.sender)]
                        checkPendingWithdrawal[address(msg.sender)] += msg.value
                    else:
                        require feeRatio
                        require msg.value / feeRatio <= msg.value
                        require (msg.value / feeRatio) + checkPendingWithdrawal[address(stor0.field_0)] >= checkPendingWithdrawal[address(stor0.field_0)]
                        checkPendingWithdrawal[address(stor0.field_0)] += msg.value / feeRatio
                        require msg.value - (msg.value / feeRatio) + checkPendingWithdrawal[stor4[arg2 + (uint16(stor0.field_160) * arg1) << 224].field_0] >= checkPendingWithdrawal[stor4[arg2 + (uint16(stor0.field_160) * arg1) << 224].field_0]
                        checkPendingWithdrawal[stor4[arg2 + (uint16(stor0.field_160) * arg1) << 224].field_0] = msg.value - (msg.value / feeRatio) + checkPendingWithdrawal[stor4[arg2 + (uint16(stor0.field_160) * arg1) << 224].field_0]
                        if defaultPrice:
                            require defaultPrice
                            require incrementRate * defaultPrice / defaultPrice == incrementRate
                        require (incrementRate * defaultPrice / 100) + defaultPrice >= defaultPrice
                        stor4[arg2 + (uint16(stor0.field_160) * arg1) << 224].field_256 = (incrementRate * defaultPrice / 100) + defaultPrice
                        stor4[arg2 + (uint16(stor0.field_160) * arg1) << 224].field_0 = msg.sender
                        emit PixelTransfer(arg1 << 240, arg2 << 240, defaultPrice, stor4[arg2 + (uint16(stor0.field_160) * arg1) << 224].field_0, msg.sender);
                        require arg1 < size
                        require arg2 < size
                        if arg1:
                            require arg1
                            require size * arg1 / arg1 == size
                        require arg2 + (size * arg1) >= size * arg1
                        if stor4[arg2 + (uint16(stor0.field_160) * arg1) << 224].field_0:
                            require msg.sender == stor4[arg2 + (uint16(stor0.field_160) * arg1) << 224].field_0
                        else:
                            require msg.sender == address(stor0.field_0)
                        require arg1 < size
                        require arg2 < size
                        if arg1:
                            require arg1
                            require size * arg1 / arg1 == size
                        require arg2 + (size * arg1) >= size * arg1
                        if stor4[arg2 + (uint16(stor0.field_160) * arg1) << 224].field_512 != arg3 % 16777216:
                            stor4[arg2 + (uint16(stor0.field_160) * arg1) << 224].field_512 = arg3 % 16777216
                            emit PixelColor(arg1 << 240, arg2 << 240, stor4[arg2 + (uint16(stor0.field_160) * arg1) << 224].field_0, arg3 % 16777216);
                else:
                    if msg.value < defaultPrice:
                        require msg.value + checkPendingWithdrawal[address(msg.sender)] >= checkPendingWithdrawal[address(msg.sender)]
                        checkPendingWithdrawal[address(msg.sender)] += msg.value
                    else:
                        require feeRatio
                        require msg.value / feeRatio <= msg.value
                        require (msg.value / feeRatio) + checkPendingWithdrawal[address(stor0.field_0)] >= checkPendingWithdrawal[address(stor0.field_0)]
                        checkPendingWithdrawal[address(stor0.field_0)] += msg.value / feeRatio
                        require msg.value - (msg.value / feeRatio) + checkPendingWithdrawal[address(stor0.field_0)] >= checkPendingWithdrawal[address(stor0.field_0)]
                        checkPendingWithdrawal[address(stor0.field_0)] = msg.value - (msg.value / feeRatio) + checkPendingWithdrawal[address(stor0.field_0)]
                        if defaultPrice:
                            require defaultPrice
                            require incrementRate * defaultPrice / defaultPrice == incrementRate
                        require (incrementRate * defaultPrice / 100) + defaultPrice >= defaultPrice
                        stor4[arg2 + (uint16(stor0.field_160) * arg1) << 224].field_256 = (incrementRate * defaultPrice / 100) + defaultPrice
                        stor4[arg2 + (uint16(stor0.field_160) * arg1) << 224].field_0 = msg.sender
                        emit PixelTransfer(arg1 << 240, arg2 << 240, defaultPrice, address(stor0.field_0), msg.sender);
                        require arg1 < size
                        require arg2 < size
                        if arg1:
                            require arg1
                            require size * arg1 / arg1 == size
                        require arg2 + (size * arg1) >= size * arg1
                        if stor4[arg2 + (uint16(stor0.field_160) * arg1) << 224].field_0:
                            require msg.sender == stor4[arg2 + (uint16(stor0.field_160) * arg1) << 224].field_0
                        else:
                            require msg.sender == address(stor0.field_0)
                        require arg1 < size
                        require arg2 < size
                        if arg1:
                            require arg1
                            require size * arg1 / arg1 == size
                        require arg2 + (size * arg1) >= size * arg1
                        if stor4[arg2 + (uint16(stor0.field_160) * arg1) << 224].field_512 != arg3 % 16777216:
                            stor4[arg2 + (uint16(stor0.field_160) * arg1) << 224].field_512 = arg3 % 16777216
                            emit PixelColor(arg1 << 240, arg2 << 240, stor4[arg2 + (uint16(stor0.field_160) * arg1) << 224].field_0, arg3 % 16777216);
}



}
