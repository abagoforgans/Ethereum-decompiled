contract main {


// =======================  Init code  ======================


uint16 stor0; offset 160
address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;

function _fallback() {
    address(stor0.field_0) = msg.sender
    stor1 = code.data[6806 len 32]
    stor2 = code.data[6838 len 32]
    uint16(stor0.field_160) = code.data[6804 len 2]
    stor3 = code.data[6870 len 32]
    return code.data[206 len 6568]
}



// =====================  Runtime code  =====================


uint16 size; offset 160
address stor0;
uint256 defaultPrice;
uint256 feeRatio;
uint256 incrementRate;
mapping of struct stor4;
mapping of struct userTotalSales;
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

function getUserTotalSales(address arg1) {
    return userTotalSales[address(arg1)].field_256
}

function getUserMessage(address arg1) {
    return userMessage[address(arg1)][0 len userMessage[address(arg1)].length]
}

function defaultPrice() {
    return defaultPrice
}

function checkPendingWithdrawal() {
    return userTotalSales[address(msg.sender)].field_0
}

function _fallback() payable {
  stop
}

function setFeeRatio(uint256 arg1) {
    require msg.sender == address(stor0.field_0)
    feeRatio = arg1
}

function setDefaultPrice(uint256 arg1) {
    require msg.sender == address(stor0.field_0)
    defaultPrice = arg1
}

function setAdmin(address arg1) {
    require msg.sender == address(stor0.field_0)
    address(stor0.field_0) = arg1
}

function setUserMessage(string arg1) {
    userMessage[address(msg.sender)][] = Array(len=arg1.length, data=arg1[all])
    emit UserMessage(msg.sender, Array(len=arg1.length, data=arg1[all]));
}

function withdraw() {
    if userTotalSales[address(msg.sender)].field_0 > 0:
        userTotalSales[address(msg.sender)].field_0 = 0
        call msg.sender with:
           value userTotalSales[address(msg.sender)].field_0 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function getPixelPrice(uint16 arg1, uint16 arg2) {
    require arg1 < size
    require arg2 < size
    if arg1:
        require arg1
        require arg1 * size / arg1 == size
    require (arg1 * size) + arg2 >= arg1 * size
    if stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_0:
        return stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_256
    return defaultPrice
}

function getKey(uint16 arg1, uint16 arg2) {
    require arg1 < size
    require arg2 < size
    if not arg1:
        if (arg1 * size) + arg2 >= arg1 * size:
            return uint32((arg1 * size) + arg2)
    else:
        if arg1:
            if arg1 * size / arg1 == size:
                if (arg1 * size) + arg2 >= arg1 * size:
                    return uint32((arg1 * size) + arg2)
    revert
}

function getPixelOwner(uint16 arg1, uint16 arg2) {
    require arg1 < size
    require arg2 < size
    if arg1:
        require arg1
        require arg1 * size / arg1 == size
    require (arg1 * size) + arg2 >= arg1 * size
    if stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_0:
        return stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_0
    return address(stor0.field_0)
}

function getPixelColor(uint16 arg1, uint16 arg2) {
    require arg1 < size
    require arg2 < size
    if not arg1:
        if (arg1 * size) + arg2 >= arg1 * size:
            return stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_512
    else:
        if arg1:
            if arg1 * size / arg1 == size:
                if (arg1 * size) + arg2 >= arg1 * size:
                    return stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_512
    revert
}

function setPixelPrice(uint16 arg1, uint16 arg2, uint256 arg3) {
    require arg1 < size
    require arg2 < size
    if arg1:
        require arg1
        require arg1 * size / arg1 == size
    require (arg1 * size) + arg2 >= arg1 * size
    if stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_0:
        require msg.sender == stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_0
    else:
        require msg.sender == address(stor0.field_0)
    require arg1 < size
    require arg2 < size
    if arg1:
        require arg1
        require arg1 * size / arg1 == size
    require (arg1 * size) + arg2 >= arg1 * size
    require stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_256 > arg3
    stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_256 = arg3
    emit PixelPrice(arg1 << 240, arg2 << 240, stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_0, arg3);
}

function transferPixel(uint16 arg1, uint16 arg2, address arg3) {
    require arg1 < size
    require arg2 < size
    if arg1:
        require arg1
        require arg1 * size / arg1 == size
    require (arg1 * size) + arg2 >= arg1 * size
    if stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_0:
        require msg.sender == stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_0
    else:
        require msg.sender == address(stor0.field_0)
    require arg1 < size
    require arg2 < size
    if arg1:
        require arg1
        require arg1 * size / arg1 == size
    require (arg1 * size) + arg2 >= arg1 * size
    if stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_0 != arg3:
        stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_0 = arg3
        emit PixelTransfer(arg1 << 240, arg2 << 240, 0, stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_0, arg3);
}

function setPixelColor(uint16 arg1, uint16 arg2, uint24 arg3) {
    require arg1 < size
    require arg2 < size
    if arg1:
        require arg1
        require arg1 * size / arg1 == size
    require (arg1 * size) + arg2 >= arg1 * size
    if stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_0:
        require msg.sender == stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_0
    else:
        require msg.sender == address(stor0.field_0)
    require arg1 < size
    require arg2 < size
    if arg1:
        require arg1
        require arg1 * size / arg1 == size
    require (arg1 * size) + arg2 >= arg1 * size
    if stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_512 != arg3 % 16777216:
        stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_512 = arg3 % 16777216
        emit PixelColor(arg1 << 240, arg2 << 240, stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_0, arg3 % 16777216);
}

function buyPixel(uint16 arg1, uint16 arg2, uint24 arg3) payable {
    if arg1 >= size:
        require userTotalSales[address(msg.sender)].field_0 + msg.value >= userTotalSales[address(msg.sender)].field_0
        userTotalSales[address(msg.sender)].field_0 += msg.value
    else:
        if arg2 >= size:
            require userTotalSales[address(msg.sender)].field_0 + msg.value >= userTotalSales[address(msg.sender)].field_0
            userTotalSales[address(msg.sender)].field_0 += msg.value
        else:
            require arg1 < size
            require arg2 < size
            if arg1:
                require arg1
                require arg1 * size / arg1 == size
            require (arg1 * size) + arg2 >= arg1 * size
            require arg1 < size
            require arg2 < size
            if arg1:
                require arg1
                require arg1 * size / arg1 == size
            require (arg1 * size) + arg2 >= arg1 * size
            require arg1 < size
            require arg2 < size
            if arg1:
                require arg1
                require arg1 * size / arg1 == size
            require (arg1 * size) + arg2 >= arg1 * size
            if stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_0:
                if stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_0:
                    if msg.value < stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_256:
                        require userTotalSales[address(msg.sender)].field_0 + msg.value >= userTotalSales[address(msg.sender)].field_0
                        userTotalSales[address(msg.sender)].field_0 += msg.value
                    else:
                        require feeRatio
                        require msg.value / feeRatio <= msg.value
                        require userTotalSales[address(stor0.field_0)].field_0 + (msg.value / feeRatio) >= userTotalSales[address(stor0.field_0)].field_0
                        userTotalSales[address(stor0.field_0)].field_0 += msg.value / feeRatio
                        require userTotalSales[stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_0].field_0 + msg.value - (msg.value / feeRatio) >= userTotalSales[stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_0].field_0
                        userTotalSales[stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_0].field_0 = userTotalSales[stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_0].field_0 + msg.value - (msg.value / feeRatio)
                        require userTotalSales[stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_0].field_256 + msg.value - (msg.value / feeRatio) >= userTotalSales[stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_0].field_256
                        userTotalSales[stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_0].field_256 = userTotalSales[stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_0].field_256 + msg.value - (msg.value / feeRatio)
                        if stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_256:
                            require stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_256
                            require stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_256 * incrementRate / stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_256 == incrementRate
                        require stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_256 + (stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_256 * incrementRate / 100) >= stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_256
                        stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_256 += stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_256 * incrementRate / 100
                        stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_0 = msg.sender
                        emit PixelTransfer(arg1 << 240, arg2 << 240, stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_256, stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_0, msg.sender);
                        require arg1 < size
                        require arg2 < size
                        if arg1:
                            require arg1
                            require arg1 * size / arg1 == size
                        require (arg1 * size) + arg2 >= arg1 * size
                        if stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_0:
                            require msg.sender == stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_0
                        else:
                            require msg.sender == address(stor0.field_0)
                        require arg1 < size
                        require arg2 < size
                        if arg1:
                            require arg1
                            require arg1 * size / arg1 == size
                        require (arg1 * size) + arg2 >= arg1 * size
                        if stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_512 != arg3 % 16777216:
                            stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_512 = arg3 % 16777216
                            emit PixelColor(arg1 << 240, arg2 << 240, stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_0, arg3 % 16777216);
                else:
                    if msg.value < stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_256:
                        require userTotalSales[address(msg.sender)].field_0 + msg.value >= userTotalSales[address(msg.sender)].field_0
                        userTotalSales[address(msg.sender)].field_0 += msg.value
                    else:
                        require feeRatio
                        require msg.value / feeRatio <= msg.value
                        require userTotalSales[address(stor0.field_0)].field_0 + (msg.value / feeRatio) >= userTotalSales[address(stor0.field_0)].field_0
                        userTotalSales[address(stor0.field_0)].field_0 += msg.value / feeRatio
                        require userTotalSales[address(stor0.field_0)].field_0 + msg.value - (msg.value / feeRatio) >= userTotalSales[address(stor0.field_0)].field_0
                        userTotalSales[address(stor0.field_0)].field_0 = userTotalSales[address(stor0.field_0)].field_0 + msg.value - (msg.value / feeRatio)
                        require userTotalSales[address(stor0.field_0)].field_256 + msg.value - (msg.value / feeRatio) >= userTotalSales[address(stor0.field_0)].field_256
                        userTotalSales[address(stor0.field_0)].field_256 = userTotalSales[address(stor0.field_0)].field_256 + msg.value - (msg.value / feeRatio)
                        if stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_256:
                            require stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_256
                            require stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_256 * incrementRate / stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_256 == incrementRate
                        require stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_256 + (stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_256 * incrementRate / 100) >= stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_256
                        stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_256 += stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_256 * incrementRate / 100
                        stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_0 = msg.sender
                        emit PixelTransfer(arg1 << 240, arg2 << 240, stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_256, address(stor0.field_0), msg.sender);
                        require arg1 < size
                        require arg2 < size
                        if arg1:
                            require arg1
                            require arg1 * size / arg1 == size
                        require (arg1 * size) + arg2 >= arg1 * size
                        if stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_0:
                            require msg.sender == stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_0
                        else:
                            require msg.sender == address(stor0.field_0)
                        require arg1 < size
                        require arg2 < size
                        if arg1:
                            require arg1
                            require arg1 * size / arg1 == size
                        require (arg1 * size) + arg2 >= arg1 * size
                        if stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_512 != arg3 % 16777216:
                            stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_512 = arg3 % 16777216
                            emit PixelColor(arg1 << 240, arg2 << 240, stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_0, arg3 % 16777216);
            else:
                if stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_0:
                    if msg.value < defaultPrice:
                        require userTotalSales[address(msg.sender)].field_0 + msg.value >= userTotalSales[address(msg.sender)].field_0
                        userTotalSales[address(msg.sender)].field_0 += msg.value
                    else:
                        require feeRatio
                        require msg.value / feeRatio <= msg.value
                        require userTotalSales[address(stor0.field_0)].field_0 + (msg.value / feeRatio) >= userTotalSales[address(stor0.field_0)].field_0
                        userTotalSales[address(stor0.field_0)].field_0 += msg.value / feeRatio
                        require userTotalSales[stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_0].field_0 + msg.value - (msg.value / feeRatio) >= userTotalSales[stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_0].field_0
                        userTotalSales[stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_0].field_0 = userTotalSales[stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_0].field_0 + msg.value - (msg.value / feeRatio)
                        require userTotalSales[stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_0].field_256 + msg.value - (msg.value / feeRatio) >= userTotalSales[stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_0].field_256
                        userTotalSales[stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_0].field_256 = userTotalSales[stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_0].field_256 + msg.value - (msg.value / feeRatio)
                        if defaultPrice:
                            require defaultPrice
                            require defaultPrice * incrementRate / defaultPrice == incrementRate
                        require defaultPrice + (defaultPrice * incrementRate / 100) >= defaultPrice
                        stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_256 = defaultPrice + (defaultPrice * incrementRate / 100)
                        stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_0 = msg.sender
                        emit PixelTransfer(arg1 << 240, arg2 << 240, defaultPrice, stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_0, msg.sender);
                        require arg1 < size
                        require arg2 < size
                        if arg1:
                            require arg1
                            require arg1 * size / arg1 == size
                        require (arg1 * size) + arg2 >= arg1 * size
                        if stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_0:
                            require msg.sender == stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_0
                        else:
                            require msg.sender == address(stor0.field_0)
                        require arg1 < size
                        require arg2 < size
                        if arg1:
                            require arg1
                            require arg1 * size / arg1 == size
                        require (arg1 * size) + arg2 >= arg1 * size
                        if stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_512 != arg3 % 16777216:
                            stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_512 = arg3 % 16777216
                            emit PixelColor(arg1 << 240, arg2 << 240, stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_0, arg3 % 16777216);
                else:
                    if msg.value < defaultPrice:
                        require userTotalSales[address(msg.sender)].field_0 + msg.value >= userTotalSales[address(msg.sender)].field_0
                        userTotalSales[address(msg.sender)].field_0 += msg.value
                    else:
                        require feeRatio
                        require msg.value / feeRatio <= msg.value
                        require userTotalSales[address(stor0.field_0)].field_0 + (msg.value / feeRatio) >= userTotalSales[address(stor0.field_0)].field_0
                        userTotalSales[address(stor0.field_0)].field_0 += msg.value / feeRatio
                        require userTotalSales[address(stor0.field_0)].field_0 + msg.value - (msg.value / feeRatio) >= userTotalSales[address(stor0.field_0)].field_0
                        userTotalSales[address(stor0.field_0)].field_0 = userTotalSales[address(stor0.field_0)].field_0 + msg.value - (msg.value / feeRatio)
                        require userTotalSales[address(stor0.field_0)].field_256 + msg.value - (msg.value / feeRatio) >= userTotalSales[address(stor0.field_0)].field_256
                        userTotalSales[address(stor0.field_0)].field_256 = userTotalSales[address(stor0.field_0)].field_256 + msg.value - (msg.value / feeRatio)
                        if defaultPrice:
                            require defaultPrice
                            require defaultPrice * incrementRate / defaultPrice == incrementRate
                        require defaultPrice + (defaultPrice * incrementRate / 100) >= defaultPrice
                        stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_256 = defaultPrice + (defaultPrice * incrementRate / 100)
                        stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_0 = msg.sender
                        emit PixelTransfer(arg1 << 240, arg2 << 240, defaultPrice, address(stor0.field_0), msg.sender);
                        require arg1 < size
                        require arg2 < size
                        if arg1:
                            require arg1
                            require arg1 * size / arg1 == size
                        require (arg1 * size) + arg2 >= arg1 * size
                        if stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_0:
                            require msg.sender == stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_0
                        else:
                            require msg.sender == address(stor0.field_0)
                        require arg1 < size
                        require arg2 < size
                        if arg1:
                            require arg1
                            require arg1 * size / arg1 == size
                        require (arg1 * size) + arg2 >= arg1 * size
                        if stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_512 != arg3 % 16777216:
                            stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_512 = arg3 % 16777216
                            emit PixelColor(arg1 << 240, arg2 << 240, stor4[(arg1 * uint16(stor0.field_160)) + arg2 << 224].field_0, arg3 % 16777216);
}



}
