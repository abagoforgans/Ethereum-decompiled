contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 startTime;
uint256 endTime;
uint256 etherMinimum;
uint256 soldTokens;
uint256 remainingTokens;
uint256 tokenPrice;
uint256 sub_0bdc77b8;
address priceFeedAddress;
mapping of uint256 etherUser;
mapping of uint256 pendingTokenUser;
mapping of uint256 tokenUser;

function sub_0bdc77b8(?) {
    return sub_0bdc77b8
}

function endTime() {
    return endTime
}

function pendingTokenUser(address arg1) {
    return pendingTokenUser[arg1]
}

function soldTokens() {
    return soldTokens
}

function etherMinimum() {
    return etherMinimum
}

function priceFeed() {
    return priceFeedAddress
}

function startTime() {
    return startTime
}

function tokenPrice() {
    return tokenPrice
}

function etherUser(address arg1) {
    return etherUser[arg1]
}

function remainingTokens() {
    return remainingTokens
}

function tokenUser(address arg1) {
    return tokenUser[arg1]
}

function totalTokens() {
    require soldTokens + remainingTokens >= remainingTokens
    return (soldTokens + remainingTokens)
}

function userBalance(address arg1) {
    return pendingTokenUser[address(arg1)], tokenUser[address(arg1)], etherUser[address(arg1)]
}

function ended() {
    if block.timestamp > endTime:
        return (block.timestamp > endTime)
    return not bool(remainingTokens)
}

function started() {
    if block.timestamp > startTime:
        return (block.timestamp > startTime)
    return not bool(remainingTokens)
}

function changeMinimum(uint256 arg1) {
    require ext_code.size(stor0)
    call stor0.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    etherMinimum = arg1
}

function setTime(uint256 arg1, uint256 arg2) {
    require ext_code.size(stor0)
    call stor0.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    if arg1:
        startTime = arg1
    if arg2:
        endTime = arg2
}

function withdraw(address arg1, uint256 arg2) {
    require ext_code.size(stor0)
    call stor0.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function refundEther(address arg1) {
    require ext_code.size(stor0)
    call stor0.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    call arg1 with:
       value etherUser[address(arg1)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    etherUser[address(arg1)] = 0
    pendingTokenUser[address(arg1)] = 0
}

function price() {
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == sub_0bdc77b8:
        return tokenPrice
    require ext_code.size(priceFeedAddress)
    call priceFeedAddress.read(bytes32 arg1) with:
         gas gas_remaining wei
        args sub_0bdc77b8
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not tokenPrice:
        if ext_call.return_data[0]:
            return (0 / ext_call.return_data[0])
    else:
        if 10^18 * tokenPrice / tokenPrice == 10^18:
            if ext_call.return_data[0]:
                return (10^18 * tokenPrice / ext_call.return_data[0])
    revert
}

function _fallback() payable {
    if msg.value > 0:
        if block.timestamp <= startTime:
            revert with 0, 'now > startTime'
        if block.timestamp >= endTime:
            revert with 0, 'now < endTime'
        if msg.value < etherMinimum:
            revert with 0, 'msg.value >= etherMinimum'
        if 0 >= remainingTokens:
            revert with 0, 'remainingTokens > 0'
        require ext_code.size(stor0)
        call stor0.0x313ce567 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == sub_0bdc77b8:
            if not msg.value:
                require tokenPrice
                require ext_code.size(stor0)
                call stor0.0x55a373d6 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x70a08231 with:
                     gas gas_remaining wei
                    args stor0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= remainingTokens:
                    if ext_call.return_data[0] >= 0 / tokenPrice:
                        require 0 / tokenPrice <= remainingTokens
                        remainingTokens -= 0 / tokenPrice
                        require 0 <= msg.value
                        require msg.value + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                        etherUser[address(msg.sender)] += msg.value
                        require (0 / tokenPrice) + pendingTokenUser[address(msg.sender)] >= pendingTokenUser[address(msg.sender)]
                        pendingTokenUser[address(msg.sender)] += 0 / tokenPrice
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == sub_0bdc77b8:
                            emit TakeEther(address(msg.sender), msg.value, 0 / tokenPrice, tokenPrice);
                        else:
                            require ext_code.size(priceFeedAddress)
                            call priceFeedAddress.read(bytes32 arg1) with:
                                 gas gas_remaining wei
                                args sub_0bdc77b8
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not tokenPrice:
                                require ext_call.return_data[0]
                                emit TakeEther(address(msg.sender), msg.value, 0 / tokenPrice, 0 / ext_call.return_data[0]);
                            else:
                                require 10^18 * tokenPrice / tokenPrice == 10^18
                                require ext_call.return_data[0]
                                emit TakeEther(address(msg.sender), msg.value, 0 / tokenPrice, 10^18 * tokenPrice / ext_call.return_data[0]);
                    else:
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == sub_0bdc77b8:
                            if not (0 / tokenPrice) - ext_call.return_data[0]:
                                require 10^ext_call.return_data[0]
                                remainingTokens = 0
                                call msg.sender with:
                                   value 0 / 10^ext_call.return_data[0] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 0 / 10^ext_call.return_data[0] <= msg.value
                                require msg.value - (0 / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                                etherUser[address(msg.sender)] = msg.value - (0 / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)]
                            else:
                                require (0 / tokenPrice * tokenPrice) - (ext_call.return_data[0] * tokenPrice) / (0 / tokenPrice) - ext_call.return_data[0] == tokenPrice
                                require 10^ext_call.return_data[0]
                                remainingTokens = 0
                                call msg.sender with:
                                   value (0 / tokenPrice * tokenPrice) - (ext_call.return_data[0] * tokenPrice) / 10^ext_call.return_data[0] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require (0 / tokenPrice * tokenPrice) - (ext_call.return_data[0] * tokenPrice) / 10^ext_call.return_data[0] <= msg.value
                                require msg.value - ((0 / tokenPrice * tokenPrice) - (ext_call.return_data[0] * tokenPrice) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                                etherUser[address(msg.sender)] = msg.value - ((0 / tokenPrice * tokenPrice) - (ext_call.return_data[0] * tokenPrice) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)]
                        else:
                            require ext_code.size(priceFeedAddress)
                            call priceFeedAddress.read(bytes32 arg1) with:
                                 gas gas_remaining wei
                                args sub_0bdc77b8
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not tokenPrice:
                                require ext_call.return_data[0]
                                if not (0 / tokenPrice) - ext_call.return_data[0]:
                                    require 10^ext_call.return_data[0]
                                    remainingTokens = 0
                                    call msg.sender with:
                                       value 0 / 10^ext_call.return_data[0] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 0 / 10^ext_call.return_data[0] <= msg.value
                                    require msg.value - (0 / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                                    etherUser[address(msg.sender)] = msg.value - (0 / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)]
                                else:
                                    require (0 / tokenPrice * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / ext_call.return_data[0]) / (0 / tokenPrice) - ext_call.return_data[0] == 0 / ext_call.return_data[0]
                                    require 10^ext_call.return_data[0]
                                    remainingTokens = 0
                                    call msg.sender with:
                                       value (0 / tokenPrice * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / ext_call.return_data[0]) / 10^ext_call.return_data[0] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require (0 / tokenPrice * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / ext_call.return_data[0]) / 10^ext_call.return_data[0] <= msg.value
                                    require msg.value - ((0 / tokenPrice * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / ext_call.return_data[0]) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                                    etherUser[address(msg.sender)] = msg.value - ((0 / tokenPrice * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / ext_call.return_data[0]) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)]
                            else:
                                require 10^18 * tokenPrice / tokenPrice == 10^18
                                require ext_call.return_data[0]
                                if not (0 / tokenPrice) - ext_call.return_data[0]:
                                    require 10^ext_call.return_data[0]
                                    remainingTokens = 0
                                    call msg.sender with:
                                       value 0 / 10^ext_call.return_data[0] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 0 / 10^ext_call.return_data[0] <= msg.value
                                    require msg.value - (0 / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                                    etherUser[address(msg.sender)] = msg.value - (0 / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)]
                                else:
                                    require (0 / tokenPrice * 10^18 * tokenPrice / ext_call.return_data[0]) - (ext_call.return_data[0] * 10^18 * tokenPrice / ext_call.return_data[0]) / (0 / tokenPrice) - ext_call.return_data[0] == 10^18 * tokenPrice / ext_call.return_data[0]
                                    require 10^ext_call.return_data[0]
                                    remainingTokens = 0
                                    call msg.sender with:
                                       value (0 / tokenPrice * 10^18 * tokenPrice / ext_call.return_data[0]) - (ext_call.return_data[0] * 10^18 * tokenPrice / ext_call.return_data[0]) / 10^ext_call.return_data[0] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require (0 / tokenPrice * 10^18 * tokenPrice / ext_call.return_data[0]) - (ext_call.return_data[0] * 10^18 * tokenPrice / ext_call.return_data[0]) / 10^ext_call.return_data[0] <= msg.value
                                    require msg.value - ((0 / tokenPrice * 10^18 * tokenPrice / ext_call.return_data[0]) - (ext_call.return_data[0] * 10^18 * tokenPrice / ext_call.return_data[0]) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                                    etherUser[address(msg.sender)] = msg.value - ((0 / tokenPrice * 10^18 * tokenPrice / ext_call.return_data[0]) - (ext_call.return_data[0] * 10^18 * tokenPrice / ext_call.return_data[0]) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)]
                        require ext_call.return_data[0] + pendingTokenUser[address(msg.sender)] >= pendingTokenUser[address(msg.sender)]
                        pendingTokenUser[address(msg.sender)] += ext_call.return_data[0]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == sub_0bdc77b8:
                            emit TakeEther(address(msg.sender), msg.value, ext_call.return_data[0], tokenPrice);
                        else:
                            require ext_code.size(priceFeedAddress)
                            call priceFeedAddress.read(bytes32 arg1) with:
                                 gas gas_remaining wei
                                args sub_0bdc77b8
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not tokenPrice:
                                require ext_call.return_data[0]
                                emit TakeEther(address(msg.sender), msg.value, ext_call.return_data[0], 0 / ext_call.return_data[0]);
                            else:
                                require 10^18 * tokenPrice / tokenPrice == 10^18
                                require ext_call.return_data[0]
                                emit TakeEther(address(msg.sender), msg.value, ext_call.return_data[0], 10^18 * tokenPrice / ext_call.return_data[0]);
                else:
                    if remainingTokens >= 0 / tokenPrice:
                        require 0 / tokenPrice <= remainingTokens
                        remainingTokens -= 0 / tokenPrice
                        require 0 <= msg.value
                        require msg.value + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                        etherUser[address(msg.sender)] += msg.value
                        require (0 / tokenPrice) + pendingTokenUser[address(msg.sender)] >= pendingTokenUser[address(msg.sender)]
                        pendingTokenUser[address(msg.sender)] += 0 / tokenPrice
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == sub_0bdc77b8:
                            emit TakeEther(address(msg.sender), msg.value, 0 / tokenPrice, tokenPrice);
                        else:
                            require ext_code.size(priceFeedAddress)
                            call priceFeedAddress.read(bytes32 arg1) with:
                                 gas gas_remaining wei
                                args sub_0bdc77b8
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not tokenPrice:
                                require ext_call.return_data[0]
                                emit TakeEther(address(msg.sender), msg.value, 0 / tokenPrice, 0 / ext_call.return_data[0]);
                            else:
                                require 10^18 * tokenPrice / tokenPrice == 10^18
                                require ext_call.return_data[0]
                                emit TakeEther(address(msg.sender), msg.value, 0 / tokenPrice, 10^18 * tokenPrice / ext_call.return_data[0]);
                    else:
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == sub_0bdc77b8:
                            if not (0 / tokenPrice) - remainingTokens:
                                require 10^ext_call.return_data[0]
                                remainingTokens = 0
                                call msg.sender with:
                                   value 0 / 10^ext_call.return_data[0] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 0 / 10^ext_call.return_data[0] <= msg.value
                                require msg.value - (0 / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                                etherUser[address(msg.sender)] = msg.value - (0 / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)]
                            else:
                                require (0 / tokenPrice * tokenPrice) - (remainingTokens * tokenPrice) / (0 / tokenPrice) - remainingTokens == tokenPrice
                                require 10^ext_call.return_data[0]
                                remainingTokens = 0
                                call msg.sender with:
                                   value (0 / tokenPrice * tokenPrice) - (remainingTokens * tokenPrice) / 10^ext_call.return_data[0] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require (0 / tokenPrice * tokenPrice) - (remainingTokens * tokenPrice) / 10^ext_call.return_data[0] <= msg.value
                                require msg.value - ((0 / tokenPrice * tokenPrice) - (remainingTokens * tokenPrice) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                                etherUser[address(msg.sender)] = msg.value - ((0 / tokenPrice * tokenPrice) - (remainingTokens * tokenPrice) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)]
                        else:
                            require ext_code.size(priceFeedAddress)
                            call priceFeedAddress.read(bytes32 arg1) with:
                                 gas gas_remaining wei
                                args sub_0bdc77b8
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not tokenPrice:
                                require ext_call.return_data[0]
                                if not (0 / tokenPrice) - remainingTokens:
                                    require 10^ext_call.return_data[0]
                                    remainingTokens = 0
                                    call msg.sender with:
                                       value 0 / 10^ext_call.return_data[0] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 0 / 10^ext_call.return_data[0] <= msg.value
                                    require msg.value - (0 / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                                    etherUser[address(msg.sender)] = msg.value - (0 / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)]
                                else:
                                    require (0 / tokenPrice * 0 / ext_call.return_data[0]) - (remainingTokens * 0 / ext_call.return_data[0]) / (0 / tokenPrice) - remainingTokens == 0 / ext_call.return_data[0]
                                    require 10^ext_call.return_data[0]
                                    remainingTokens = 0
                                    call msg.sender with:
                                       value (0 / tokenPrice * 0 / ext_call.return_data[0]) - (remainingTokens * 0 / ext_call.return_data[0]) / 10^ext_call.return_data[0] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require (0 / tokenPrice * 0 / ext_call.return_data[0]) - (remainingTokens * 0 / ext_call.return_data[0]) / 10^ext_call.return_data[0] <= msg.value
                                    require msg.value - ((0 / tokenPrice * 0 / ext_call.return_data[0]) - (remainingTokens * 0 / ext_call.return_data[0]) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                                    etherUser[address(msg.sender)] = msg.value - ((0 / tokenPrice * 0 / ext_call.return_data[0]) - (remainingTokens * 0 / ext_call.return_data[0]) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)]
                            else:
                                require 10^18 * tokenPrice / tokenPrice == 10^18
                                require ext_call.return_data[0]
                                if not (0 / tokenPrice) - remainingTokens:
                                    require 10^ext_call.return_data[0]
                                    remainingTokens = 0
                                    call msg.sender with:
                                       value 0 / 10^ext_call.return_data[0] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 0 / 10^ext_call.return_data[0] <= msg.value
                                    require msg.value - (0 / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                                    etherUser[address(msg.sender)] = msg.value - (0 / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)]
                                else:
                                    require (0 / tokenPrice * 10^18 * tokenPrice / ext_call.return_data[0]) - (remainingTokens * 10^18 * tokenPrice / ext_call.return_data[0]) / (0 / tokenPrice) - remainingTokens == 10^18 * tokenPrice / ext_call.return_data[0]
                                    require 10^ext_call.return_data[0]
                                    remainingTokens = 0
                                    call msg.sender with:
                                       value (0 / tokenPrice * 10^18 * tokenPrice / ext_call.return_data[0]) - (remainingTokens * 10^18 * tokenPrice / ext_call.return_data[0]) / 10^ext_call.return_data[0] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require (0 / tokenPrice * 10^18 * tokenPrice / ext_call.return_data[0]) - (remainingTokens * 10^18 * tokenPrice / ext_call.return_data[0]) / 10^ext_call.return_data[0] <= msg.value
                                    require msg.value - ((0 / tokenPrice * 10^18 * tokenPrice / ext_call.return_data[0]) - (remainingTokens * 10^18 * tokenPrice / ext_call.return_data[0]) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                                    etherUser[address(msg.sender)] = msg.value - ((0 / tokenPrice * 10^18 * tokenPrice / ext_call.return_data[0]) - (remainingTokens * 10^18 * tokenPrice / ext_call.return_data[0]) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)]
                        require remainingTokens + pendingTokenUser[address(msg.sender)] >= pendingTokenUser[address(msg.sender)]
                        pendingTokenUser[address(msg.sender)] += remainingTokens
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == sub_0bdc77b8:
                            emit TakeEther(address(msg.sender), msg.value, remainingTokens, tokenPrice);
                        else:
                            require ext_code.size(priceFeedAddress)
                            call priceFeedAddress.read(bytes32 arg1) with:
                                 gas gas_remaining wei
                                args sub_0bdc77b8
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not tokenPrice:
                                require ext_call.return_data[0]
                                emit TakeEther(address(msg.sender), msg.value, remainingTokens, 0 / ext_call.return_data[0]);
                            else:
                                require 10^18 * tokenPrice / tokenPrice == 10^18
                                require ext_call.return_data[0]
                                emit TakeEther(address(msg.sender), msg.value, remainingTokens, 10^18 * tokenPrice / ext_call.return_data[0]);
            else:
                require 10^ext_call.return_data[0] * msg.value / msg.value == 10^ext_call.return_data[0]
                require tokenPrice
                require ext_code.size(stor0)
                call stor0.0x55a373d6 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x70a08231 with:
                     gas gas_remaining wei
                    args stor0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= remainingTokens:
                    if ext_call.return_data[0] >= 10^ext_call.return_data[0] * msg.value / tokenPrice:
                        require 10^ext_call.return_data[0] * msg.value / tokenPrice <= remainingTokens
                        remainingTokens -= 10^ext_call.return_data[0] * msg.value / tokenPrice
                        require 0 <= msg.value
                        require msg.value + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                        etherUser[address(msg.sender)] += msg.value
                        require (10^ext_call.return_data[0] * msg.value / tokenPrice) + pendingTokenUser[address(msg.sender)] >= pendingTokenUser[address(msg.sender)]
                        pendingTokenUser[address(msg.sender)] += 10^ext_call.return_data[0] * msg.value / tokenPrice
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == sub_0bdc77b8:
                            emit TakeEther(address(msg.sender), msg.value, 10^ext_call.return_data[0] * msg.value / tokenPrice, tokenPrice);
                        else:
                            require ext_code.size(priceFeedAddress)
                            call priceFeedAddress.read(bytes32 arg1) with:
                                 gas gas_remaining wei
                                args sub_0bdc77b8
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not tokenPrice:
                                require ext_call.return_data[0]
                                emit TakeEther(address(msg.sender), msg.value, 10^ext_call.return_data[0] * msg.value / tokenPrice, 0 / ext_call.return_data[0]);
                            else:
                                require 10^18 * tokenPrice / tokenPrice == 10^18
                                require ext_call.return_data[0]
                                emit TakeEther(address(msg.sender), msg.value, 10^ext_call.return_data[0] * msg.value / tokenPrice, 10^18 * tokenPrice / ext_call.return_data[0]);
                    else:
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == sub_0bdc77b8:
                            if not (10^ext_call.return_data[0] * msg.value / tokenPrice) - ext_call.return_data[0]:
                                require 10^ext_call.return_data[0]
                                remainingTokens = 0
                                call msg.sender with:
                                   value 0 / 10^ext_call.return_data[0] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 0 / 10^ext_call.return_data[0] <= msg.value
                                require msg.value - (0 / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                                etherUser[address(msg.sender)] = msg.value - (0 / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)]
                            else:
                                require (10^ext_call.return_data[0] * msg.value / tokenPrice * tokenPrice) - (ext_call.return_data[0] * tokenPrice) / (10^ext_call.return_data[0] * msg.value / tokenPrice) - ext_call.return_data[0] == tokenPrice
                                require 10^ext_call.return_data[0]
                                remainingTokens = 0
                                call msg.sender with:
                                   value (10^ext_call.return_data[0] * msg.value / tokenPrice * tokenPrice) - (ext_call.return_data[0] * tokenPrice) / 10^ext_call.return_data[0] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require (10^ext_call.return_data[0] * msg.value / tokenPrice * tokenPrice) - (ext_call.return_data[0] * tokenPrice) / 10^ext_call.return_data[0] <= msg.value
                                require msg.value - ((10^ext_call.return_data[0] * msg.value / tokenPrice * tokenPrice) - (ext_call.return_data[0] * tokenPrice) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                                etherUser[address(msg.sender)] = msg.value - ((10^ext_call.return_data[0] * msg.value / tokenPrice * tokenPrice) - (ext_call.return_data[0] * tokenPrice) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)]
                        else:
                            require ext_code.size(priceFeedAddress)
                            call priceFeedAddress.read(bytes32 arg1) with:
                                 gas gas_remaining wei
                                args sub_0bdc77b8
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not tokenPrice:
                                require ext_call.return_data[0]
                                if not (10^ext_call.return_data[0] * msg.value / tokenPrice) - ext_call.return_data[0]:
                                    require 10^ext_call.return_data[0]
                                    remainingTokens = 0
                                    call msg.sender with:
                                       value 0 / 10^ext_call.return_data[0] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 0 / 10^ext_call.return_data[0] <= msg.value
                                    require msg.value - (0 / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                                    etherUser[address(msg.sender)] = msg.value - (0 / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)]
                                else:
                                    require (10^ext_call.return_data[0] * msg.value / tokenPrice * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / ext_call.return_data[0]) / (10^ext_call.return_data[0] * msg.value / tokenPrice) - ext_call.return_data[0] == 0 / ext_call.return_data[0]
                                    require 10^ext_call.return_data[0]
                                    remainingTokens = 0
                                    call msg.sender with:
                                       value (10^ext_call.return_data[0] * msg.value / tokenPrice * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / ext_call.return_data[0]) / 10^ext_call.return_data[0] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require (10^ext_call.return_data[0] * msg.value / tokenPrice * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / ext_call.return_data[0]) / 10^ext_call.return_data[0] <= msg.value
                                    require msg.value - ((10^ext_call.return_data[0] * msg.value / tokenPrice * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / ext_call.return_data[0]) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                                    etherUser[address(msg.sender)] = msg.value - ((10^ext_call.return_data[0] * msg.value / tokenPrice * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / ext_call.return_data[0]) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)]
                            else:
                                require 10^18 * tokenPrice / tokenPrice == 10^18
                                require ext_call.return_data[0]
                                if not (10^ext_call.return_data[0] * msg.value / tokenPrice) - ext_call.return_data[0]:
                                    require 10^ext_call.return_data[0]
                                    remainingTokens = 0
                                    call msg.sender with:
                                       value 0 / 10^ext_call.return_data[0] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 0 / 10^ext_call.return_data[0] <= msg.value
                                    require msg.value - (0 / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                                    etherUser[address(msg.sender)] = msg.value - (0 / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)]
                                else:
                                    require (10^ext_call.return_data[0] * msg.value / tokenPrice * 10^18 * tokenPrice / ext_call.return_data[0]) - (ext_call.return_data[0] * 10^18 * tokenPrice / ext_call.return_data[0]) / (10^ext_call.return_data[0] * msg.value / tokenPrice) - ext_call.return_data[0] == 10^18 * tokenPrice / ext_call.return_data[0]
                                    require 10^ext_call.return_data[0]
                                    remainingTokens = 0
                                    call msg.sender with:
                                       value (10^ext_call.return_data[0] * msg.value / tokenPrice * 10^18 * tokenPrice / ext_call.return_data[0]) - (ext_call.return_data[0] * 10^18 * tokenPrice / ext_call.return_data[0]) / 10^ext_call.return_data[0] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require (10^ext_call.return_data[0] * msg.value / tokenPrice * 10^18 * tokenPrice / ext_call.return_data[0]) - (ext_call.return_data[0] * 10^18 * tokenPrice / ext_call.return_data[0]) / 10^ext_call.return_data[0] <= msg.value
                                    require msg.value - ((10^ext_call.return_data[0] * msg.value / tokenPrice * 10^18 * tokenPrice / ext_call.return_data[0]) - (ext_call.return_data[0] * 10^18 * tokenPrice / ext_call.return_data[0]) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                                    etherUser[address(msg.sender)] = msg.value - ((10^ext_call.return_data[0] * msg.value / tokenPrice * 10^18 * tokenPrice / ext_call.return_data[0]) - (ext_call.return_data[0] * 10^18 * tokenPrice / ext_call.return_data[0]) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)]
                        require ext_call.return_data[0] + pendingTokenUser[address(msg.sender)] >= pendingTokenUser[address(msg.sender)]
                        pendingTokenUser[address(msg.sender)] += ext_call.return_data[0]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == sub_0bdc77b8:
                            emit TakeEther(address(msg.sender), msg.value, ext_call.return_data[0], tokenPrice);
                        else:
                            require ext_code.size(priceFeedAddress)
                            call priceFeedAddress.read(bytes32 arg1) with:
                                 gas gas_remaining wei
                                args sub_0bdc77b8
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not tokenPrice:
                                require ext_call.return_data[0]
                                emit TakeEther(address(msg.sender), msg.value, ext_call.return_data[0], 0 / ext_call.return_data[0]);
                            else:
                                require 10^18 * tokenPrice / tokenPrice == 10^18
                                require ext_call.return_data[0]
                                emit TakeEther(address(msg.sender), msg.value, ext_call.return_data[0], 10^18 * tokenPrice / ext_call.return_data[0]);
                else:
                    if remainingTokens >= 10^ext_call.return_data[0] * msg.value / tokenPrice:
                        require 10^ext_call.return_data[0] * msg.value / tokenPrice <= remainingTokens
                        remainingTokens -= 10^ext_call.return_data[0] * msg.value / tokenPrice
                        require 0 <= msg.value
                        require msg.value + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                        etherUser[address(msg.sender)] += msg.value
                        require (10^ext_call.return_data[0] * msg.value / tokenPrice) + pendingTokenUser[address(msg.sender)] >= pendingTokenUser[address(msg.sender)]
                        pendingTokenUser[address(msg.sender)] += 10^ext_call.return_data[0] * msg.value / tokenPrice
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == sub_0bdc77b8:
                            emit TakeEther(address(msg.sender), msg.value, 10^ext_call.return_data[0] * msg.value / tokenPrice, tokenPrice);
                        else:
                            require ext_code.size(priceFeedAddress)
                            call priceFeedAddress.read(bytes32 arg1) with:
                                 gas gas_remaining wei
                                args sub_0bdc77b8
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not tokenPrice:
                                require ext_call.return_data[0]
                                emit TakeEther(address(msg.sender), msg.value, 10^ext_call.return_data[0] * msg.value / tokenPrice, 0 / ext_call.return_data[0]);
                            else:
                                require 10^18 * tokenPrice / tokenPrice == 10^18
                                require ext_call.return_data[0]
                                emit TakeEther(address(msg.sender), msg.value, 10^ext_call.return_data[0] * msg.value / tokenPrice, 10^18 * tokenPrice / ext_call.return_data[0]);
                    else:
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == sub_0bdc77b8:
                            if not (10^ext_call.return_data[0] * msg.value / tokenPrice) - remainingTokens:
                                require 10^ext_call.return_data[0]
                                remainingTokens = 0
                                call msg.sender with:
                                   value 0 / 10^ext_call.return_data[0] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 0 / 10^ext_call.return_data[0] <= msg.value
                                require msg.value - (0 / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                                etherUser[address(msg.sender)] = msg.value - (0 / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)]
                            else:
                                require (10^ext_call.return_data[0] * msg.value / tokenPrice * tokenPrice) - (remainingTokens * tokenPrice) / (10^ext_call.return_data[0] * msg.value / tokenPrice) - remainingTokens == tokenPrice
                                require 10^ext_call.return_data[0]
                                remainingTokens = 0
                                call msg.sender with:
                                   value (10^ext_call.return_data[0] * msg.value / tokenPrice * tokenPrice) - (remainingTokens * tokenPrice) / 10^ext_call.return_data[0] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require (10^ext_call.return_data[0] * msg.value / tokenPrice * tokenPrice) - (remainingTokens * tokenPrice) / 10^ext_call.return_data[0] <= msg.value
                                require msg.value - ((10^ext_call.return_data[0] * msg.value / tokenPrice * tokenPrice) - (remainingTokens * tokenPrice) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                                etherUser[address(msg.sender)] = msg.value - ((10^ext_call.return_data[0] * msg.value / tokenPrice * tokenPrice) - (remainingTokens * tokenPrice) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)]
                        else:
                            require ext_code.size(priceFeedAddress)
                            call priceFeedAddress.read(bytes32 arg1) with:
                                 gas gas_remaining wei
                                args sub_0bdc77b8
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not tokenPrice:
                                require ext_call.return_data[0]
                                if not (10^ext_call.return_data[0] * msg.value / tokenPrice) - remainingTokens:
                                    require 10^ext_call.return_data[0]
                                    remainingTokens = 0
                                    call msg.sender with:
                                       value 0 / 10^ext_call.return_data[0] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 0 / 10^ext_call.return_data[0] <= msg.value
                                    require msg.value - (0 / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                                    etherUser[address(msg.sender)] = msg.value - (0 / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)]
                                else:
                                    require (10^ext_call.return_data[0] * msg.value / tokenPrice * 0 / ext_call.return_data[0]) - (remainingTokens * 0 / ext_call.return_data[0]) / (10^ext_call.return_data[0] * msg.value / tokenPrice) - remainingTokens == 0 / ext_call.return_data[0]
                                    require 10^ext_call.return_data[0]
                                    remainingTokens = 0
                                    call msg.sender with:
                                       value (10^ext_call.return_data[0] * msg.value / tokenPrice * 0 / ext_call.return_data[0]) - (remainingTokens * 0 / ext_call.return_data[0]) / 10^ext_call.return_data[0] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require (10^ext_call.return_data[0] * msg.value / tokenPrice * 0 / ext_call.return_data[0]) - (remainingTokens * 0 / ext_call.return_data[0]) / 10^ext_call.return_data[0] <= msg.value
                                    require msg.value - ((10^ext_call.return_data[0] * msg.value / tokenPrice * 0 / ext_call.return_data[0]) - (remainingTokens * 0 / ext_call.return_data[0]) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                                    etherUser[address(msg.sender)] = msg.value - ((10^ext_call.return_data[0] * msg.value / tokenPrice * 0 / ext_call.return_data[0]) - (remainingTokens * 0 / ext_call.return_data[0]) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)]
                            else:
                                require 10^18 * tokenPrice / tokenPrice == 10^18
                                require ext_call.return_data[0]
                                if not (10^ext_call.return_data[0] * msg.value / tokenPrice) - remainingTokens:
                                    require 10^ext_call.return_data[0]
                                    remainingTokens = 0
                                    call msg.sender with:
                                       value 0 / 10^ext_call.return_data[0] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 0 / 10^ext_call.return_data[0] <= msg.value
                                    require msg.value - (0 / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                                    etherUser[address(msg.sender)] = msg.value - (0 / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)]
                                else:
                                    require (10^ext_call.return_data[0] * msg.value / tokenPrice * 10^18 * tokenPrice / ext_call.return_data[0]) - (remainingTokens * 10^18 * tokenPrice / ext_call.return_data[0]) / (10^ext_call.return_data[0] * msg.value / tokenPrice) - remainingTokens == 10^18 * tokenPrice / ext_call.return_data[0]
                                    require 10^ext_call.return_data[0]
                                    remainingTokens = 0
                                    call msg.sender with:
                                       value (10^ext_call.return_data[0] * msg.value / tokenPrice * 10^18 * tokenPrice / ext_call.return_data[0]) - (remainingTokens * 10^18 * tokenPrice / ext_call.return_data[0]) / 10^ext_call.return_data[0] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require (10^ext_call.return_data[0] * msg.value / tokenPrice * 10^18 * tokenPrice / ext_call.return_data[0]) - (remainingTokens * 10^18 * tokenPrice / ext_call.return_data[0]) / 10^ext_call.return_data[0] <= msg.value
                                    require msg.value - ((10^ext_call.return_data[0] * msg.value / tokenPrice * 10^18 * tokenPrice / ext_call.return_data[0]) - (remainingTokens * 10^18 * tokenPrice / ext_call.return_data[0]) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                                    etherUser[address(msg.sender)] = msg.value - ((10^ext_call.return_data[0] * msg.value / tokenPrice * 10^18 * tokenPrice / ext_call.return_data[0]) - (remainingTokens * 10^18 * tokenPrice / ext_call.return_data[0]) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)]
                        require remainingTokens + pendingTokenUser[address(msg.sender)] >= pendingTokenUser[address(msg.sender)]
                        pendingTokenUser[address(msg.sender)] += remainingTokens
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == sub_0bdc77b8:
                            emit TakeEther(address(msg.sender), msg.value, remainingTokens, tokenPrice);
                        else:
                            require ext_code.size(priceFeedAddress)
                            call priceFeedAddress.read(bytes32 arg1) with:
                                 gas gas_remaining wei
                                args sub_0bdc77b8
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not tokenPrice:
                                require ext_call.return_data[0]
                                emit TakeEther(address(msg.sender), msg.value, remainingTokens, 0 / ext_call.return_data[0]);
                            else:
                                require 10^18 * tokenPrice / tokenPrice == 10^18
                                require ext_call.return_data[0]
                                emit TakeEther(address(msg.sender), msg.value, remainingTokens, 10^18 * tokenPrice / ext_call.return_data[0]);
        else:
            require ext_code.size(priceFeedAddress)
            call priceFeedAddress.read(bytes32 arg1) with:
                 gas gas_remaining wei
                args sub_0bdc77b8
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not tokenPrice:
                require ext_call.return_data[0]
                if not msg.value:
                    require 0 / ext_call.return_data[0]
                    require ext_code.size(stor0)
                    call stor0.0x55a373d6 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x70a08231 with:
                         gas gas_remaining wei
                        args stor0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= remainingTokens:
                        if ext_call.return_data[0] >= 0 / 0 / ext_call.return_data[0]:
                            require 0 / 0 / ext_call.return_data[0] <= remainingTokens
                            remainingTokens -= 0 / 0 / ext_call.return_data[0]
                            require 0 <= msg.value
                            require msg.value + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                            etherUser[address(msg.sender)] += msg.value
                            require (0 / 0 / ext_call.return_data[0]) + pendingTokenUser[address(msg.sender)] >= pendingTokenUser[address(msg.sender)]
                            pendingTokenUser[address(msg.sender)] += 0 / 0 / ext_call.return_data[0]
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == sub_0bdc77b8:
                                emit TakeEther(address(msg.sender), msg.value, 0 / 0 / ext_call.return_data[0], tokenPrice);
                            else:
                                require ext_code.size(priceFeedAddress)
                                call priceFeedAddress.read(bytes32 arg1) with:
                                     gas gas_remaining wei
                                    args sub_0bdc77b8
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not tokenPrice:
                                    require ext_call.return_data[0]
                                    emit TakeEther(address(msg.sender), msg.value, 0 / 0 / ext_call.return_data[0], 0 / ext_call.return_data[0]);
                                else:
                                    require 10^18 * tokenPrice / tokenPrice == 10^18
                                    require ext_call.return_data[0]
                                    emit TakeEther(address(msg.sender), msg.value, 0 / 0 / ext_call.return_data[0], 10^18 * tokenPrice / ext_call.return_data[0]);
                        else:
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == sub_0bdc77b8:
                                if not (0 / 0 / ext_call.return_data[0]) - ext_call.return_data[0]:
                                    require 10^ext_call.return_data[0]
                                    remainingTokens = 0
                                    call msg.sender with:
                                       value 0 / 10^ext_call.return_data[0] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 0 / 10^ext_call.return_data[0] <= msg.value
                                    require msg.value - (0 / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                                    etherUser[address(msg.sender)] = msg.value - (0 / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)]
                                else:
                                    require (0 / 0 / ext_call.return_data[0] * tokenPrice) - (ext_call.return_data[0] * tokenPrice) / (0 / 0 / ext_call.return_data[0]) - ext_call.return_data[0] == tokenPrice
                                    require 10^ext_call.return_data[0]
                                    remainingTokens = 0
                                    call msg.sender with:
                                       value (0 / 0 / ext_call.return_data[0] * tokenPrice) - (ext_call.return_data[0] * tokenPrice) / 10^ext_call.return_data[0] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require (0 / 0 / ext_call.return_data[0] * tokenPrice) - (ext_call.return_data[0] * tokenPrice) / 10^ext_call.return_data[0] <= msg.value
                                    require msg.value - ((0 / 0 / ext_call.return_data[0] * tokenPrice) - (ext_call.return_data[0] * tokenPrice) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                                    etherUser[address(msg.sender)] = msg.value - ((0 / 0 / ext_call.return_data[0] * tokenPrice) - (ext_call.return_data[0] * tokenPrice) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)]
                            else:
                                require ext_code.size(priceFeedAddress)
                                call priceFeedAddress.read(bytes32 arg1) with:
                                     gas gas_remaining wei
                                    args sub_0bdc77b8
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not tokenPrice:
                                    require ext_call.return_data[0]
                                    if not (0 / 0 / ext_call.return_data[0]) - ext_call.return_data[0]:
                                        require 10^ext_call.return_data[0]
                                        remainingTokens = 0
                                        call msg.sender with:
                                           value 0 / 10^ext_call.return_data[0] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require 0 / 10^ext_call.return_data[0] <= msg.value
                                        require msg.value - (0 / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                                        etherUser[address(msg.sender)] = msg.value - (0 / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)]
                                    else:
                                        require (0 / 0 / ext_call.return_data[0] * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / ext_call.return_data[0]) / (0 / 0 / ext_call.return_data[0]) - ext_call.return_data[0] == 0 / ext_call.return_data[0]
                                        require 10^ext_call.return_data[0]
                                        remainingTokens = 0
                                        call msg.sender with:
                                           value (0 / 0 / ext_call.return_data[0] * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / ext_call.return_data[0]) / 10^ext_call.return_data[0] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require (0 / 0 / ext_call.return_data[0] * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / ext_call.return_data[0]) / 10^ext_call.return_data[0] <= msg.value
                                        require msg.value - ((0 / 0 / ext_call.return_data[0] * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / ext_call.return_data[0]) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                                        etherUser[address(msg.sender)] = msg.value - ((0 / 0 / ext_call.return_data[0] * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / ext_call.return_data[0]) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)]
                                else:
                                    require 10^18 * tokenPrice / tokenPrice == 10^18
                                    require ext_call.return_data[0]
                                    if not (0 / 0 / ext_call.return_data[0]) - ext_call.return_data[0]:
                                        require 10^ext_call.return_data[0]
                                        remainingTokens = 0
                                        call msg.sender with:
                                           value 0 / 10^ext_call.return_data[0] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require 0 / 10^ext_call.return_data[0] <= msg.value
                                        require msg.value - (0 / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                                        etherUser[address(msg.sender)] = msg.value - (0 / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)]
                                    else:
                                        require (0 / 0 / ext_call.return_data[0] * 10^18 * tokenPrice / ext_call.return_data[0]) - (ext_call.return_data[0] * 10^18 * tokenPrice / ext_call.return_data[0]) / (0 / 0 / ext_call.return_data[0]) - ext_call.return_data[0] == 10^18 * tokenPrice / ext_call.return_data[0]
                                        require 10^ext_call.return_data[0]
                                        remainingTokens = 0
                                        call msg.sender with:
                                           value (0 / 0 / ext_call.return_data[0] * 10^18 * tokenPrice / ext_call.return_data[0]) - (ext_call.return_data[0] * 10^18 * tokenPrice / ext_call.return_data[0]) / 10^ext_call.return_data[0] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require (0 / 0 / ext_call.return_data[0] * 10^18 * tokenPrice / ext_call.return_data[0]) - (ext_call.return_data[0] * 10^18 * tokenPrice / ext_call.return_data[0]) / 10^ext_call.return_data[0] <= msg.value
                                        require msg.value - ((0 / 0 / ext_call.return_data[0] * 10^18 * tokenPrice / ext_call.return_data[0]) - (ext_call.return_data[0] * 10^18 * tokenPrice / ext_call.return_data[0]) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                                        etherUser[address(msg.sender)] = msg.value - ((0 / 0 / ext_call.return_data[0] * 10^18 * tokenPrice / ext_call.return_data[0]) - (ext_call.return_data[0] * 10^18 * tokenPrice / ext_call.return_data[0]) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)]
                            require ext_call.return_data[0] + pendingTokenUser[address(msg.sender)] >= pendingTokenUser[address(msg.sender)]
                            pendingTokenUser[address(msg.sender)] += ext_call.return_data[0]
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == sub_0bdc77b8:
                                emit TakeEther(address(msg.sender), msg.value, ext_call.return_data[0], tokenPrice);
                            else:
                                require ext_code.size(priceFeedAddress)
                                call priceFeedAddress.read(bytes32 arg1) with:
                                     gas gas_remaining wei
                                    args sub_0bdc77b8
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not tokenPrice:
                                    require ext_call.return_data[0]
                                    emit TakeEther(address(msg.sender), msg.value, ext_call.return_data[0], 0 / ext_call.return_data[0]);
                                else:
                                    require 10^18 * tokenPrice / tokenPrice == 10^18
                                    require ext_call.return_data[0]
                                    emit TakeEther(address(msg.sender), msg.value, ext_call.return_data[0], 10^18 * tokenPrice / ext_call.return_data[0]);
                    else:
                        if remainingTokens >= 0 / 0 / ext_call.return_data[0]:
                            require 0 / 0 / ext_call.return_data[0] <= remainingTokens
                            remainingTokens -= 0 / 0 / ext_call.return_data[0]
                            require 0 <= msg.value
                            require msg.value + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                            etherUser[address(msg.sender)] += msg.value
                            require (0 / 0 / ext_call.return_data[0]) + pendingTokenUser[address(msg.sender)] >= pendingTokenUser[address(msg.sender)]
                            pendingTokenUser[address(msg.sender)] += 0 / 0 / ext_call.return_data[0]
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == sub_0bdc77b8:
                                emit TakeEther(address(msg.sender), msg.value, 0 / 0 / ext_call.return_data[0], tokenPrice);
                            else:
                                require ext_code.size(priceFeedAddress)
                                call priceFeedAddress.read(bytes32 arg1) with:
                                     gas gas_remaining wei
                                    args sub_0bdc77b8
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not tokenPrice:
                                    require ext_call.return_data[0]
                                    emit TakeEther(address(msg.sender), msg.value, 0 / 0 / ext_call.return_data[0], 0 / ext_call.return_data[0]);
                                else:
                                    require 10^18 * tokenPrice / tokenPrice == 10^18
                                    require ext_call.return_data[0]
                                    emit TakeEther(address(msg.sender), msg.value, 0 / 0 / ext_call.return_data[0], 10^18 * tokenPrice / ext_call.return_data[0]);
                        else:
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == sub_0bdc77b8:
                                if not (0 / 0 / ext_call.return_data[0]) - remainingTokens:
                                    require 10^ext_call.return_data[0]
                                    remainingTokens = 0
                                    call msg.sender with:
                                       value 0 / 10^ext_call.return_data[0] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 0 / 10^ext_call.return_data[0] <= msg.value
                                    require msg.value - (0 / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                                    etherUser[address(msg.sender)] = msg.value - (0 / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)]
                                else:
                                    require (0 / 0 / ext_call.return_data[0] * tokenPrice) - (remainingTokens * tokenPrice) / (0 / 0 / ext_call.return_data[0]) - remainingTokens == tokenPrice
                                    require 10^ext_call.return_data[0]
                                    remainingTokens = 0
                                    call msg.sender with:
                                       value (0 / 0 / ext_call.return_data[0] * tokenPrice) - (remainingTokens * tokenPrice) / 10^ext_call.return_data[0] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require (0 / 0 / ext_call.return_data[0] * tokenPrice) - (remainingTokens * tokenPrice) / 10^ext_call.return_data[0] <= msg.value
                                    require msg.value - ((0 / 0 / ext_call.return_data[0] * tokenPrice) - (remainingTokens * tokenPrice) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                                    etherUser[address(msg.sender)] = msg.value - ((0 / 0 / ext_call.return_data[0] * tokenPrice) - (remainingTokens * tokenPrice) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)]
                            else:
                                require ext_code.size(priceFeedAddress)
                                call priceFeedAddress.read(bytes32 arg1) with:
                                     gas gas_remaining wei
                                    args sub_0bdc77b8
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not tokenPrice:
                                    require ext_call.return_data[0]
                                    if not (0 / 0 / ext_call.return_data[0]) - remainingTokens:
                                        require 10^ext_call.return_data[0]
                                        remainingTokens = 0
                                        call msg.sender with:
                                           value 0 / 10^ext_call.return_data[0] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require 0 / 10^ext_call.return_data[0] <= msg.value
                                        require msg.value - (0 / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                                        etherUser[address(msg.sender)] = msg.value - (0 / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)]
                                    else:
                                        require (0 / 0 / ext_call.return_data[0] * 0 / ext_call.return_data[0]) - (remainingTokens * 0 / ext_call.return_data[0]) / (0 / 0 / ext_call.return_data[0]) - remainingTokens == 0 / ext_call.return_data[0]
                                        require 10^ext_call.return_data[0]
                                        remainingTokens = 0
                                        call msg.sender with:
                                           value (0 / 0 / ext_call.return_data[0] * 0 / ext_call.return_data[0]) - (remainingTokens * 0 / ext_call.return_data[0]) / 10^ext_call.return_data[0] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require (0 / 0 / ext_call.return_data[0] * 0 / ext_call.return_data[0]) - (remainingTokens * 0 / ext_call.return_data[0]) / 10^ext_call.return_data[0] <= msg.value
                                        require msg.value - ((0 / 0 / ext_call.return_data[0] * 0 / ext_call.return_data[0]) - (remainingTokens * 0 / ext_call.return_data[0]) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                                        etherUser[address(msg.sender)] = msg.value - ((0 / 0 / ext_call.return_data[0] * 0 / ext_call.return_data[0]) - (remainingTokens * 0 / ext_call.return_data[0]) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)]
                                else:
                                    require 10^18 * tokenPrice / tokenPrice == 10^18
                                    require ext_call.return_data[0]
                                    if not (0 / 0 / ext_call.return_data[0]) - remainingTokens:
                                        require 10^ext_call.return_data[0]
                                        remainingTokens = 0
                                        call msg.sender with:
                                           value 0 / 10^ext_call.return_data[0] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require 0 / 10^ext_call.return_data[0] <= msg.value
                                        require msg.value - (0 / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                                        etherUser[address(msg.sender)] = msg.value - (0 / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)]
                                    else:
                                        require (0 / 0 / ext_call.return_data[0] * 10^18 * tokenPrice / ext_call.return_data[0]) - (remainingTokens * 10^18 * tokenPrice / ext_call.return_data[0]) / (0 / 0 / ext_call.return_data[0]) - remainingTokens == 10^18 * tokenPrice / ext_call.return_data[0]
                                        require 10^ext_call.return_data[0]
                                        remainingTokens = 0
                                        call msg.sender with:
                                           value (0 / 0 / ext_call.return_data[0] * 10^18 * tokenPrice / ext_call.return_data[0]) - (remainingTokens * 10^18 * tokenPrice / ext_call.return_data[0]) / 10^ext_call.return_data[0] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require (0 / 0 / ext_call.return_data[0] * 10^18 * tokenPrice / ext_call.return_data[0]) - (remainingTokens * 10^18 * tokenPrice / ext_call.return_data[0]) / 10^ext_call.return_data[0] <= msg.value
                                        require msg.value - ((0 / 0 / ext_call.return_data[0] * 10^18 * tokenPrice / ext_call.return_data[0]) - (remainingTokens * 10^18 * tokenPrice / ext_call.return_data[0]) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                                        etherUser[address(msg.sender)] = msg.value - ((0 / 0 / ext_call.return_data[0] * 10^18 * tokenPrice / ext_call.return_data[0]) - (remainingTokens * 10^18 * tokenPrice / ext_call.return_data[0]) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)]
                            require remainingTokens + pendingTokenUser[address(msg.sender)] >= pendingTokenUser[address(msg.sender)]
                            pendingTokenUser[address(msg.sender)] += remainingTokens
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == sub_0bdc77b8:
                                emit TakeEther(address(msg.sender), msg.value, remainingTokens, tokenPrice);
                            else:
                                require ext_code.size(priceFeedAddress)
                                call priceFeedAddress.read(bytes32 arg1) with:
                                     gas gas_remaining wei
                                    args sub_0bdc77b8
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not tokenPrice:
                                    require ext_call.return_data[0]
                                    emit TakeEther(address(msg.sender), msg.value, remainingTokens, 0 / ext_call.return_data[0]);
                                else:
                                    require 10^18 * tokenPrice / tokenPrice == 10^18
                                    require ext_call.return_data[0]
                                    emit TakeEther(address(msg.sender), msg.value, remainingTokens, 10^18 * tokenPrice / ext_call.return_data[0]);
                else:
                    require 10^ext_call.return_data[0] * msg.value / msg.value == 10^ext_call.return_data[0]
                    require 0 / ext_call.return_data[0]
                    require ext_code.size(stor0)
                    call stor0.0x55a373d6 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x70a08231 with:
                         gas gas_remaining wei
                        args stor0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= remainingTokens:
                        if ext_call.return_data[0] >= 10^ext_call.return_data[0] * msg.value / 0 / ext_call.return_data[0]:
                            require 10^ext_call.return_data[0] * msg.value / 0 / ext_call.return_data[0] <= remainingTokens
                            remainingTokens -= 10^ext_call.return_data[0] * msg.value / 0 / ext_call.return_data[0]
                            require 0 <= msg.value
                            require msg.value + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                            etherUser[address(msg.sender)] += msg.value
                            require (10^ext_call.return_data[0] * msg.value / 0 / ext_call.return_data[0]) + pendingTokenUser[address(msg.sender)] >= pendingTokenUser[address(msg.sender)]
                            pendingTokenUser[address(msg.sender)] += 10^ext_call.return_data[0] * msg.value / 0 / ext_call.return_data[0]
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == sub_0bdc77b8:
                                emit TakeEther(address(msg.sender), msg.value, 10^ext_call.return_data[0] * msg.value / 0 / ext_call.return_data[0], tokenPrice);
                            else:
                                require ext_code.size(priceFeedAddress)
                                call priceFeedAddress.read(bytes32 arg1) with:
                                     gas gas_remaining wei
                                    args sub_0bdc77b8
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not tokenPrice:
                                    require ext_call.return_data[0]
                                    emit TakeEther(address(msg.sender), msg.value, 10^ext_call.return_data[0] * msg.value / 0 / ext_call.return_data[0], 0 / ext_call.return_data[0]);
                                else:
                                    require 10^18 * tokenPrice / tokenPrice == 10^18
                                    require ext_call.return_data[0]
                                    emit TakeEther(address(msg.sender), msg.value, 10^ext_call.return_data[0] * msg.value / 0 / ext_call.return_data[0], 10^18 * tokenPrice / ext_call.return_data[0]);
                        else:
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == sub_0bdc77b8:
                                if not (10^ext_call.return_data[0] * msg.value / 0 / ext_call.return_data[0]) - ext_call.return_data[0]:
                                    require 10^ext_call.return_data[0]
                                    remainingTokens = 0
                                    call msg.sender with:
                                       value 0 / 10^ext_call.return_data[0] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 0 / 10^ext_call.return_data[0] <= msg.value
                                    require msg.value - (0 / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                                    etherUser[address(msg.sender)] = msg.value - (0 / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)]
                                else:
                                    require (10^ext_call.return_data[0] * msg.value / 0 / ext_call.return_data[0] * tokenPrice) - (ext_call.return_data[0] * tokenPrice) / (10^ext_call.return_data[0] * msg.value / 0 / ext_call.return_data[0]) - ext_call.return_data[0] == tokenPrice
                                    require 10^ext_call.return_data[0]
                                    remainingTokens = 0
                                    call msg.sender with:
                                       value (10^ext_call.return_data[0] * msg.value / 0 / ext_call.return_data[0] * tokenPrice) - (ext_call.return_data[0] * tokenPrice) / 10^ext_call.return_data[0] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require (10^ext_call.return_data[0] * msg.value / 0 / ext_call.return_data[0] * tokenPrice) - (ext_call.return_data[0] * tokenPrice) / 10^ext_call.return_data[0] <= msg.value
                                    require msg.value - ((10^ext_call.return_data[0] * msg.value / 0 / ext_call.return_data[0] * tokenPrice) - (ext_call.return_data[0] * tokenPrice) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                                    etherUser[address(msg.sender)] = msg.value - ((10^ext_call.return_data[0] * msg.value / 0 / ext_call.return_data[0] * tokenPrice) - (ext_call.return_data[0] * tokenPrice) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)]
                            else:
                                require ext_code.size(priceFeedAddress)
                                call priceFeedAddress.read(bytes32 arg1) with:
                                     gas gas_remaining wei
                                    args sub_0bdc77b8
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not tokenPrice:
                                    require ext_call.return_data[0]
                                    if not (10^ext_call.return_data[0] * msg.value / 0 / ext_call.return_data[0]) - ext_call.return_data[0]:
                                        require 10^ext_call.return_data[0]
                                        remainingTokens = 0
                                        call msg.sender with:
                                           value 0 / 10^ext_call.return_data[0] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require 0 / 10^ext_call.return_data[0] <= msg.value
                                        require msg.value - (0 / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                                        etherUser[address(msg.sender)] = msg.value - (0 / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)]
                                    else:
                                        require (10^ext_call.return_data[0] * msg.value / 0 / ext_call.return_data[0] * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / ext_call.return_data[0]) / (10^ext_call.return_data[0] * msg.value / 0 / ext_call.return_data[0]) - ext_call.return_data[0] == 0 / ext_call.return_data[0]
                                        require 10^ext_call.return_data[0]
                                        remainingTokens = 0
                                        call msg.sender with:
                                           value (10^ext_call.return_data[0] * msg.value / 0 / ext_call.return_data[0] * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / ext_call.return_data[0]) / 10^ext_call.return_data[0] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require (10^ext_call.return_data[0] * msg.value / 0 / ext_call.return_data[0] * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / ext_call.return_data[0]) / 10^ext_call.return_data[0] <= msg.value
                                        require msg.value - ((10^ext_call.return_data[0] * msg.value / 0 / ext_call.return_data[0] * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / ext_call.return_data[0]) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                                        etherUser[address(msg.sender)] = msg.value - ((10^ext_call.return_data[0] * msg.value / 0 / ext_call.return_data[0] * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / ext_call.return_data[0]) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)]
                                else:
                                    require 10^18 * tokenPrice / tokenPrice == 10^18
                                    require ext_call.return_data[0]
                                    if not (10^ext_call.return_data[0] * msg.value / 0 / ext_call.return_data[0]) - ext_call.return_data[0]:
                                        require 10^ext_call.return_data[0]
                                        remainingTokens = 0
                                        call msg.sender with:
                                           value 0 / 10^ext_call.return_data[0] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require 0 / 10^ext_call.return_data[0] <= msg.value
                                        require msg.value - (0 / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                                        etherUser[address(msg.sender)] = msg.value - (0 / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)]
                                    else:
                                        require (10^ext_call.return_data[0] * msg.value / 0 / ext_call.return_data[0] * 10^18 * tokenPrice / ext_call.return_data[0]) - (ext_call.return_data[0] * 10^18 * tokenPrice / ext_call.return_data[0]) / (10^ext_call.return_data[0] * msg.value / 0 / ext_call.return_data[0]) - ext_call.return_data[0] == 10^18 * tokenPrice / ext_call.return_data[0]
                                        require 10^ext_call.return_data[0]
                                        remainingTokens = 0
                                        call msg.sender with:
                                           value (10^ext_call.return_data[0] * msg.value / 0 / ext_call.return_data[0] * 10^18 * tokenPrice / ext_call.return_data[0]) - (ext_call.return_data[0] * 10^18 * tokenPrice / ext_call.return_data[0]) / 10^ext_call.return_data[0] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require (10^ext_call.return_data[0] * msg.value / 0 / ext_call.return_data[0] * 10^18 * tokenPrice / ext_call.return_data[0]) - (ext_call.return_data[0] * 10^18 * tokenPrice / ext_call.return_data[0]) / 10^ext_call.return_data[0] <= msg.value
                                        require msg.value - ((10^ext_call.return_data[0] * msg.value / 0 / ext_call.return_data[0] * 10^18 * tokenPrice / ext_call.return_data[0]) - (ext_call.return_data[0] * 10^18 * tokenPrice / ext_call.return_data[0]) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                                        etherUser[address(msg.sender)] = msg.value - ((10^ext_call.return_data[0] * msg.value / 0 / ext_call.return_data[0] * 10^18 * tokenPrice / ext_call.return_data[0]) - (ext_call.return_data[0] * 10^18 * tokenPrice / ext_call.return_data[0]) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)]
                            require ext_call.return_data[0] + pendingTokenUser[address(msg.sender)] >= pendingTokenUser[address(msg.sender)]
                            pendingTokenUser[address(msg.sender)] += ext_call.return_data[0]
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == sub_0bdc77b8:
                                emit TakeEther(address(msg.sender), msg.value, ext_call.return_data[0], tokenPrice);
                            else:
                                require ext_code.size(priceFeedAddress)
                                call priceFeedAddress.read(bytes32 arg1) with:
                                     gas gas_remaining wei
                                    args sub_0bdc77b8
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not tokenPrice:
                                    require ext_call.return_data[0]
                                    emit TakeEther(address(msg.sender), msg.value, ext_call.return_data[0], 0 / ext_call.return_data[0]);
                                else:
                                    require 10^18 * tokenPrice / tokenPrice == 10^18
                                    require ext_call.return_data[0]
                                    emit TakeEther(address(msg.sender), msg.value, ext_call.return_data[0], 10^18 * tokenPrice / ext_call.return_data[0]);
                    else:
                        if remainingTokens >= 10^ext_call.return_data[0] * msg.value / 0 / ext_call.return_data[0]:
                            require 10^ext_call.return_data[0] * msg.value / 0 / ext_call.return_data[0] <= remainingTokens
                            remainingTokens -= 10^ext_call.return_data[0] * msg.value / 0 / ext_call.return_data[0]
                            require 0 <= msg.value
                            require msg.value + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                            etherUser[address(msg.sender)] += msg.value
                            require (10^ext_call.return_data[0] * msg.value / 0 / ext_call.return_data[0]) + pendingTokenUser[address(msg.sender)] >= pendingTokenUser[address(msg.sender)]
                            pendingTokenUser[address(msg.sender)] += 10^ext_call.return_data[0] * msg.value / 0 / ext_call.return_data[0]
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == sub_0bdc77b8:
                                emit TakeEther(address(msg.sender), msg.value, 10^ext_call.return_data[0] * msg.value / 0 / ext_call.return_data[0], tokenPrice);
                            else:
                                require ext_code.size(priceFeedAddress)
                                call priceFeedAddress.read(bytes32 arg1) with:
                                     gas gas_remaining wei
                                    args sub_0bdc77b8
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not tokenPrice:
                                    require ext_call.return_data[0]
                                    emit TakeEther(address(msg.sender), msg.value, 10^ext_call.return_data[0] * msg.value / 0 / ext_call.return_data[0], 0 / ext_call.return_data[0]);
                                else:
                                    require 10^18 * tokenPrice / tokenPrice == 10^18
                                    require ext_call.return_data[0]
                                    emit TakeEther(address(msg.sender), msg.value, 10^ext_call.return_data[0] * msg.value / 0 / ext_call.return_data[0], 10^18 * tokenPrice / ext_call.return_data[0]);
                        else:
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == sub_0bdc77b8:
                                if not (10^ext_call.return_data[0] * msg.value / 0 / ext_call.return_data[0]) - remainingTokens:
                                    require 10^ext_call.return_data[0]
                                    remainingTokens = 0
                                    call msg.sender with:
                                       value 0 / 10^ext_call.return_data[0] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 0 / 10^ext_call.return_data[0] <= msg.value
                                    require msg.value - (0 / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                                    etherUser[address(msg.sender)] = msg.value - (0 / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)]
                                else:
                                    require (10^ext_call.return_data[0] * msg.value / 0 / ext_call.return_data[0] * tokenPrice) - (remainingTokens * tokenPrice) / (10^ext_call.return_data[0] * msg.value / 0 / ext_call.return_data[0]) - remainingTokens == tokenPrice
                                    require 10^ext_call.return_data[0]
                                    remainingTokens = 0
                                    call msg.sender with:
                                       value (10^ext_call.return_data[0] * msg.value / 0 / ext_call.return_data[0] * tokenPrice) - (remainingTokens * tokenPrice) / 10^ext_call.return_data[0] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require (10^ext_call.return_data[0] * msg.value / 0 / ext_call.return_data[0] * tokenPrice) - (remainingTokens * tokenPrice) / 10^ext_call.return_data[0] <= msg.value
                                    require msg.value - ((10^ext_call.return_data[0] * msg.value / 0 / ext_call.return_data[0] * tokenPrice) - (remainingTokens * tokenPrice) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                                    etherUser[address(msg.sender)] = msg.value - ((10^ext_call.return_data[0] * msg.value / 0 / ext_call.return_data[0] * tokenPrice) - (remainingTokens * tokenPrice) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)]
                            else:
                                require ext_code.size(priceFeedAddress)
                                call priceFeedAddress.read(bytes32 arg1) with:
                                     gas gas_remaining wei
                                    args sub_0bdc77b8
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not tokenPrice:
                                    require ext_call.return_data[0]
                                    if not (10^ext_call.return_data[0] * msg.value / 0 / ext_call.return_data[0]) - remainingTokens:
                                        require 10^ext_call.return_data[0]
                                        remainingTokens = 0
                                        call msg.sender with:
                                           value 0 / 10^ext_call.return_data[0] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require 0 / 10^ext_call.return_data[0] <= msg.value
                                        require msg.value - (0 / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                                        etherUser[address(msg.sender)] = msg.value - (0 / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)]
                                    else:
                                        require (10^ext_call.return_data[0] * msg.value / 0 / ext_call.return_data[0] * 0 / ext_call.return_data[0]) - (remainingTokens * 0 / ext_call.return_data[0]) / (10^ext_call.return_data[0] * msg.value / 0 / ext_call.return_data[0]) - remainingTokens == 0 / ext_call.return_data[0]
                                        require 10^ext_call.return_data[0]
                                        remainingTokens = 0
                                        call msg.sender with:
                                           value (10^ext_call.return_data[0] * msg.value / 0 / ext_call.return_data[0] * 0 / ext_call.return_data[0]) - (remainingTokens * 0 / ext_call.return_data[0]) / 10^ext_call.return_data[0] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require (10^ext_call.return_data[0] * msg.value / 0 / ext_call.return_data[0] * 0 / ext_call.return_data[0]) - (remainingTokens * 0 / ext_call.return_data[0]) / 10^ext_call.return_data[0] <= msg.value
                                        require msg.value - ((10^ext_call.return_data[0] * msg.value / 0 / ext_call.return_data[0] * 0 / ext_call.return_data[0]) - (remainingTokens * 0 / ext_call.return_data[0]) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                                        etherUser[address(msg.sender)] = msg.value - ((10^ext_call.return_data[0] * msg.value / 0 / ext_call.return_data[0] * 0 / ext_call.return_data[0]) - (remainingTokens * 0 / ext_call.return_data[0]) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)]
                                else:
                                    require 10^18 * tokenPrice / tokenPrice == 10^18
                                    require ext_call.return_data[0]
                                    if not (10^ext_call.return_data[0] * msg.value / 0 / ext_call.return_data[0]) - remainingTokens:
                                        require 10^ext_call.return_data[0]
                                        remainingTokens = 0
                                        call msg.sender with:
                                           value 0 / 10^ext_call.return_data[0] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require 0 / 10^ext_call.return_data[0] <= msg.value
                                        require msg.value - (0 / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                                        etherUser[address(msg.sender)] = msg.value - (0 / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)]
                                    else:
                                        require (10^ext_call.return_data[0] * msg.value / 0 / ext_call.return_data[0] * 10^18 * tokenPrice / ext_call.return_data[0]) - (remainingTokens * 10^18 * tokenPrice / ext_call.return_data[0]) / (10^ext_call.return_data[0] * msg.value / 0 / ext_call.return_data[0]) - remainingTokens == 10^18 * tokenPrice / ext_call.return_data[0]
                                        require 10^ext_call.return_data[0]
                                        remainingTokens = 0
                                        call msg.sender with:
                                           value (10^ext_call.return_data[0] * msg.value / 0 / ext_call.return_data[0] * 10^18 * tokenPrice / ext_call.return_data[0]) - (remainingTokens * 10^18 * tokenPrice / ext_call.return_data[0]) / 10^ext_call.return_data[0] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require (10^ext_call.return_data[0] * msg.value / 0 / ext_call.return_data[0] * 10^18 * tokenPrice / ext_call.return_data[0]) - (remainingTokens * 10^18 * tokenPrice / ext_call.return_data[0]) / 10^ext_call.return_data[0] <= msg.value
                                        require msg.value - ((10^ext_call.return_data[0] * msg.value / 0 / ext_call.return_data[0] * 10^18 * tokenPrice / ext_call.return_data[0]) - (remainingTokens * 10^18 * tokenPrice / ext_call.return_data[0]) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                                        etherUser[address(msg.sender)] = msg.value - ((10^ext_call.return_data[0] * msg.value / 0 / ext_call.return_data[0] * 10^18 * tokenPrice / ext_call.return_data[0]) - (remainingTokens * 10^18 * tokenPrice / ext_call.return_data[0]) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)]
                            require remainingTokens + pendingTokenUser[address(msg.sender)] >= pendingTokenUser[address(msg.sender)]
                            pendingTokenUser[address(msg.sender)] += remainingTokens
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == sub_0bdc77b8:
                                emit TakeEther(address(msg.sender), msg.value, remainingTokens, tokenPrice);
                            else:
                                require ext_code.size(priceFeedAddress)
                                call priceFeedAddress.read(bytes32 arg1) with:
                                     gas gas_remaining wei
                                    args sub_0bdc77b8
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not tokenPrice:
                                    require ext_call.return_data[0]
                                    emit TakeEther(address(msg.sender), msg.value, remainingTokens, 0 / ext_call.return_data[0]);
                                else:
                                    require 10^18 * tokenPrice / tokenPrice == 10^18
                                    require ext_call.return_data[0]
                                    emit TakeEther(address(msg.sender), msg.value, remainingTokens, 10^18 * tokenPrice / ext_call.return_data[0]);
            else:
                require 10^18 * tokenPrice / tokenPrice == 10^18
                require ext_call.return_data[0]
                if not msg.value:
                    require 10^18 * tokenPrice / ext_call.return_data[0]
                    require ext_code.size(stor0)
                    call stor0.0x55a373d6 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x70a08231 with:
                         gas gas_remaining wei
                        args stor0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= remainingTokens:
                        if ext_call.return_data[0] >= 0 / 10^18 * tokenPrice / ext_call.return_data[0]:
                            require 0 / 10^18 * tokenPrice / ext_call.return_data[0] <= remainingTokens
                            remainingTokens -= 0 / 10^18 * tokenPrice / ext_call.return_data[0]
                            require 0 <= msg.value
                            require msg.value + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                            etherUser[address(msg.sender)] += msg.value
                            require (0 / 10^18 * tokenPrice / ext_call.return_data[0]) + pendingTokenUser[address(msg.sender)] >= pendingTokenUser[address(msg.sender)]
                            pendingTokenUser[address(msg.sender)] += 0 / 10^18 * tokenPrice / ext_call.return_data[0]
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == sub_0bdc77b8:
                                emit TakeEther(address(msg.sender), msg.value, 0 / 10^18 * tokenPrice / ext_call.return_data[0], tokenPrice);
                            else:
                                require ext_code.size(priceFeedAddress)
                                call priceFeedAddress.read(bytes32 arg1) with:
                                     gas gas_remaining wei
                                    args sub_0bdc77b8
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not tokenPrice:
                                    require ext_call.return_data[0]
                                    emit TakeEther(address(msg.sender), msg.value, 0 / 10^18 * tokenPrice / ext_call.return_data[0], 0 / ext_call.return_data[0]);
                                else:
                                    require 10^18 * tokenPrice / tokenPrice == 10^18
                                    require ext_call.return_data[0]
                                    emit TakeEther(address(msg.sender), msg.value, 0 / 10^18 * tokenPrice / ext_call.return_data[0], 10^18 * tokenPrice / ext_call.return_data[0]);
                        else:
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == sub_0bdc77b8:
                                if not (0 / 10^18 * tokenPrice / ext_call.return_data[0]) - ext_call.return_data[0]:
                                    require 10^ext_call.return_data[0]
                                    remainingTokens = 0
                                    call msg.sender with:
                                       value 0 / 10^ext_call.return_data[0] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 0 / 10^ext_call.return_data[0] <= msg.value
                                    require msg.value - (0 / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                                    etherUser[address(msg.sender)] = msg.value - (0 / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)]
                                else:
                                    require (0 / 10^18 * tokenPrice / ext_call.return_data[0] * tokenPrice) - (ext_call.return_data[0] * tokenPrice) / (0 / 10^18 * tokenPrice / ext_call.return_data[0]) - ext_call.return_data[0] == tokenPrice
                                    require 10^ext_call.return_data[0]
                                    remainingTokens = 0
                                    call msg.sender with:
                                       value (0 / 10^18 * tokenPrice / ext_call.return_data[0] * tokenPrice) - (ext_call.return_data[0] * tokenPrice) / 10^ext_call.return_data[0] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require (0 / 10^18 * tokenPrice / ext_call.return_data[0] * tokenPrice) - (ext_call.return_data[0] * tokenPrice) / 10^ext_call.return_data[0] <= msg.value
                                    require msg.value - ((0 / 10^18 * tokenPrice / ext_call.return_data[0] * tokenPrice) - (ext_call.return_data[0] * tokenPrice) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                                    etherUser[address(msg.sender)] = msg.value - ((0 / 10^18 * tokenPrice / ext_call.return_data[0] * tokenPrice) - (ext_call.return_data[0] * tokenPrice) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)]
                            else:
                                require ext_code.size(priceFeedAddress)
                                call priceFeedAddress.read(bytes32 arg1) with:
                                     gas gas_remaining wei
                                    args sub_0bdc77b8
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not tokenPrice:
                                    require ext_call.return_data[0]
                                    if not (0 / 10^18 * tokenPrice / ext_call.return_data[0]) - ext_call.return_data[0]:
                                        require 10^ext_call.return_data[0]
                                        remainingTokens = 0
                                        call msg.sender with:
                                           value 0 / 10^ext_call.return_data[0] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require 0 / 10^ext_call.return_data[0] <= msg.value
                                        require msg.value - (0 / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                                        etherUser[address(msg.sender)] = msg.value - (0 / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)]
                                    else:
                                        require (0 / 10^18 * tokenPrice / ext_call.return_data[0] * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / ext_call.return_data[0]) / (0 / 10^18 * tokenPrice / ext_call.return_data[0]) - ext_call.return_data[0] == 0 / ext_call.return_data[0]
                                        require 10^ext_call.return_data[0]
                                        remainingTokens = 0
                                        call msg.sender with:
                                           value (0 / 10^18 * tokenPrice / ext_call.return_data[0] * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / ext_call.return_data[0]) / 10^ext_call.return_data[0] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require (0 / 10^18 * tokenPrice / ext_call.return_data[0] * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / ext_call.return_data[0]) / 10^ext_call.return_data[0] <= msg.value
                                        require msg.value - ((0 / 10^18 * tokenPrice / ext_call.return_data[0] * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / ext_call.return_data[0]) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                                        etherUser[address(msg.sender)] = msg.value - ((0 / 10^18 * tokenPrice / ext_call.return_data[0] * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / ext_call.return_data[0]) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)]
                                else:
                                    require 10^18 * tokenPrice / tokenPrice == 10^18
                                    require ext_call.return_data[0]
                                    if not (0 / 10^18 * tokenPrice / ext_call.return_data[0]) - ext_call.return_data[0]:
                                        require 10^ext_call.return_data[0]
                                        remainingTokens = 0
                                        call msg.sender with:
                                           value 0 / 10^ext_call.return_data[0] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require 0 / 10^ext_call.return_data[0] <= msg.value
                                        require msg.value - (0 / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                                        etherUser[address(msg.sender)] = msg.value - (0 / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)]
                                    else:
                                        require (0 / 10^18 * tokenPrice / ext_call.return_data[0] * 10^18 * tokenPrice / ext_call.return_data[0]) - (ext_call.return_data[0] * 10^18 * tokenPrice / ext_call.return_data[0]) / (0 / 10^18 * tokenPrice / ext_call.return_data[0]) - ext_call.return_data[0] == 10^18 * tokenPrice / ext_call.return_data[0]
                                        require 10^ext_call.return_data[0]
                                        remainingTokens = 0
                                        call msg.sender with:
                                           value (0 / 10^18 * tokenPrice / ext_call.return_data[0] * 10^18 * tokenPrice / ext_call.return_data[0]) - (ext_call.return_data[0] * 10^18 * tokenPrice / ext_call.return_data[0]) / 10^ext_call.return_data[0] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require (0 / 10^18 * tokenPrice / ext_call.return_data[0] * 10^18 * tokenPrice / ext_call.return_data[0]) - (ext_call.return_data[0] * 10^18 * tokenPrice / ext_call.return_data[0]) / 10^ext_call.return_data[0] <= msg.value
                                        require msg.value - ((0 / 10^18 * tokenPrice / ext_call.return_data[0] * 10^18 * tokenPrice / ext_call.return_data[0]) - (ext_call.return_data[0] * 10^18 * tokenPrice / ext_call.return_data[0]) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                                        etherUser[address(msg.sender)] = msg.value - ((0 / 10^18 * tokenPrice / ext_call.return_data[0] * 10^18 * tokenPrice / ext_call.return_data[0]) - (ext_call.return_data[0] * 10^18 * tokenPrice / ext_call.return_data[0]) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)]
                            require ext_call.return_data[0] + pendingTokenUser[address(msg.sender)] >= pendingTokenUser[address(msg.sender)]
                            pendingTokenUser[address(msg.sender)] += ext_call.return_data[0]
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == sub_0bdc77b8:
                                emit TakeEther(address(msg.sender), msg.value, ext_call.return_data[0], tokenPrice);
                            else:
                                require ext_code.size(priceFeedAddress)
                                call priceFeedAddress.read(bytes32 arg1) with:
                                     gas gas_remaining wei
                                    args sub_0bdc77b8
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not tokenPrice:
                                    require ext_call.return_data[0]
                                    emit TakeEther(address(msg.sender), msg.value, ext_call.return_data[0], 0 / ext_call.return_data[0]);
                                else:
                                    require 10^18 * tokenPrice / tokenPrice == 10^18
                                    require ext_call.return_data[0]
                                    emit TakeEther(address(msg.sender), msg.value, ext_call.return_data[0], 10^18 * tokenPrice / ext_call.return_data[0]);
                    else:
                        if remainingTokens >= 0 / 10^18 * tokenPrice / ext_call.return_data[0]:
                            require 0 / 10^18 * tokenPrice / ext_call.return_data[0] <= remainingTokens
                            remainingTokens -= 0 / 10^18 * tokenPrice / ext_call.return_data[0]
                            require 0 <= msg.value
                            require msg.value + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                            etherUser[address(msg.sender)] += msg.value
                            require (0 / 10^18 * tokenPrice / ext_call.return_data[0]) + pendingTokenUser[address(msg.sender)] >= pendingTokenUser[address(msg.sender)]
                            pendingTokenUser[address(msg.sender)] += 0 / 10^18 * tokenPrice / ext_call.return_data[0]
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == sub_0bdc77b8:
                                emit TakeEther(address(msg.sender), msg.value, 0 / 10^18 * tokenPrice / ext_call.return_data[0], tokenPrice);
                            else:
                                require ext_code.size(priceFeedAddress)
                                call priceFeedAddress.read(bytes32 arg1) with:
                                     gas gas_remaining wei
                                    args sub_0bdc77b8
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not tokenPrice:
                                    require ext_call.return_data[0]
                                    emit TakeEther(address(msg.sender), msg.value, 0 / 10^18 * tokenPrice / ext_call.return_data[0], 0 / ext_call.return_data[0]);
                                else:
                                    require 10^18 * tokenPrice / tokenPrice == 10^18
                                    require ext_call.return_data[0]
                                    emit TakeEther(address(msg.sender), msg.value, 0 / 10^18 * tokenPrice / ext_call.return_data[0], 10^18 * tokenPrice / ext_call.return_data[0]);
                        else:
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == sub_0bdc77b8:
                                if not (0 / 10^18 * tokenPrice / ext_call.return_data[0]) - remainingTokens:
                                    require 10^ext_call.return_data[0]
                                    remainingTokens = 0
                                    call msg.sender with:
                                       value 0 / 10^ext_call.return_data[0] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 0 / 10^ext_call.return_data[0] <= msg.value
                                    require msg.value - (0 / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                                    etherUser[address(msg.sender)] = msg.value - (0 / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)]
                                else:
                                    require (0 / 10^18 * tokenPrice / ext_call.return_data[0] * tokenPrice) - (remainingTokens * tokenPrice) / (0 / 10^18 * tokenPrice / ext_call.return_data[0]) - remainingTokens == tokenPrice
                                    require 10^ext_call.return_data[0]
                                    remainingTokens = 0
                                    call msg.sender with:
                                       value (0 / 10^18 * tokenPrice / ext_call.return_data[0] * tokenPrice) - (remainingTokens * tokenPrice) / 10^ext_call.return_data[0] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require (0 / 10^18 * tokenPrice / ext_call.return_data[0] * tokenPrice) - (remainingTokens * tokenPrice) / 10^ext_call.return_data[0] <= msg.value
                                    require msg.value - ((0 / 10^18 * tokenPrice / ext_call.return_data[0] * tokenPrice) - (remainingTokens * tokenPrice) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                                    etherUser[address(msg.sender)] = msg.value - ((0 / 10^18 * tokenPrice / ext_call.return_data[0] * tokenPrice) - (remainingTokens * tokenPrice) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)]
                            else:
                                require ext_code.size(priceFeedAddress)
                                call priceFeedAddress.read(bytes32 arg1) with:
                                     gas gas_remaining wei
                                    args sub_0bdc77b8
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not tokenPrice:
                                    require ext_call.return_data[0]
                                    if not (0 / 10^18 * tokenPrice / ext_call.return_data[0]) - remainingTokens:
                                        require 10^ext_call.return_data[0]
                                        remainingTokens = 0
                                        call msg.sender with:
                                           value 0 / 10^ext_call.return_data[0] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require 0 / 10^ext_call.return_data[0] <= msg.value
                                        require msg.value - (0 / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                                        etherUser[address(msg.sender)] = msg.value - (0 / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)]
                                    else:
                                        require (0 / 10^18 * tokenPrice / ext_call.return_data[0] * 0 / ext_call.return_data[0]) - (remainingTokens * 0 / ext_call.return_data[0]) / (0 / 10^18 * tokenPrice / ext_call.return_data[0]) - remainingTokens == 0 / ext_call.return_data[0]
                                        require 10^ext_call.return_data[0]
                                        remainingTokens = 0
                                        call msg.sender with:
                                           value (0 / 10^18 * tokenPrice / ext_call.return_data[0] * 0 / ext_call.return_data[0]) - (remainingTokens * 0 / ext_call.return_data[0]) / 10^ext_call.return_data[0] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require (0 / 10^18 * tokenPrice / ext_call.return_data[0] * 0 / ext_call.return_data[0]) - (remainingTokens * 0 / ext_call.return_data[0]) / 10^ext_call.return_data[0] <= msg.value
                                        require msg.value - ((0 / 10^18 * tokenPrice / ext_call.return_data[0] * 0 / ext_call.return_data[0]) - (remainingTokens * 0 / ext_call.return_data[0]) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                                        etherUser[address(msg.sender)] = msg.value - ((0 / 10^18 * tokenPrice / ext_call.return_data[0] * 0 / ext_call.return_data[0]) - (remainingTokens * 0 / ext_call.return_data[0]) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)]
                                else:
                                    require 10^18 * tokenPrice / tokenPrice == 10^18
                                    require ext_call.return_data[0]
                                    if not (0 / 10^18 * tokenPrice / ext_call.return_data[0]) - remainingTokens:
                                        require 10^ext_call.return_data[0]
                                        remainingTokens = 0
                                        call msg.sender with:
                                           value 0 / 10^ext_call.return_data[0] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require 0 / 10^ext_call.return_data[0] <= msg.value
                                        require msg.value - (0 / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                                        etherUser[address(msg.sender)] = msg.value - (0 / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)]
                                    else:
                                        require (0 / 10^18 * tokenPrice / ext_call.return_data[0] * 10^18 * tokenPrice / ext_call.return_data[0]) - (remainingTokens * 10^18 * tokenPrice / ext_call.return_data[0]) / (0 / 10^18 * tokenPrice / ext_call.return_data[0]) - remainingTokens == 10^18 * tokenPrice / ext_call.return_data[0]
                                        require 10^ext_call.return_data[0]
                                        remainingTokens = 0
                                        call msg.sender with:
                                           value (0 / 10^18 * tokenPrice / ext_call.return_data[0] * 10^18 * tokenPrice / ext_call.return_data[0]) - (remainingTokens * 10^18 * tokenPrice / ext_call.return_data[0]) / 10^ext_call.return_data[0] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require (0 / 10^18 * tokenPrice / ext_call.return_data[0] * 10^18 * tokenPrice / ext_call.return_data[0]) - (remainingTokens * 10^18 * tokenPrice / ext_call.return_data[0]) / 10^ext_call.return_data[0] <= msg.value
                                        require msg.value - ((0 / 10^18 * tokenPrice / ext_call.return_data[0] * 10^18 * tokenPrice / ext_call.return_data[0]) - (remainingTokens * 10^18 * tokenPrice / ext_call.return_data[0]) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                                        etherUser[address(msg.sender)] = msg.value - ((0 / 10^18 * tokenPrice / ext_call.return_data[0] * 10^18 * tokenPrice / ext_call.return_data[0]) - (remainingTokens * 10^18 * tokenPrice / ext_call.return_data[0]) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)]
                            require remainingTokens + pendingTokenUser[address(msg.sender)] >= pendingTokenUser[address(msg.sender)]
                            pendingTokenUser[address(msg.sender)] += remainingTokens
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == sub_0bdc77b8:
                                emit TakeEther(address(msg.sender), msg.value, remainingTokens, tokenPrice);
                            else:
                                require ext_code.size(priceFeedAddress)
                                call priceFeedAddress.read(bytes32 arg1) with:
                                     gas gas_remaining wei
                                    args sub_0bdc77b8
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not tokenPrice:
                                    require ext_call.return_data[0]
                                    emit TakeEther(address(msg.sender), msg.value, remainingTokens, 0 / ext_call.return_data[0]);
                                else:
                                    require 10^18 * tokenPrice / tokenPrice == 10^18
                                    require ext_call.return_data[0]
                                    emit TakeEther(address(msg.sender), msg.value, remainingTokens, 10^18 * tokenPrice / ext_call.return_data[0]);
                else:
                    require 10^ext_call.return_data[0] * msg.value / msg.value == 10^ext_call.return_data[0]
                    require 10^18 * tokenPrice / ext_call.return_data[0]
                    require ext_code.size(stor0)
                    call stor0.0x55a373d6 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x70a08231 with:
                         gas gas_remaining wei
                        args stor0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= remainingTokens:
                        if ext_call.return_data[0] >= 10^ext_call.return_data[0] * msg.value / 10^18 * tokenPrice / ext_call.return_data[0]:
                            require 10^ext_call.return_data[0] * msg.value / 10^18 * tokenPrice / ext_call.return_data[0] <= remainingTokens
                            remainingTokens -= 10^ext_call.return_data[0] * msg.value / 10^18 * tokenPrice / ext_call.return_data[0]
                            require 0 <= msg.value
                            require msg.value + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                            etherUser[address(msg.sender)] += msg.value
                            require (10^ext_call.return_data[0] * msg.value / 10^18 * tokenPrice / ext_call.return_data[0]) + pendingTokenUser[address(msg.sender)] >= pendingTokenUser[address(msg.sender)]
                            pendingTokenUser[address(msg.sender)] += 10^ext_call.return_data[0] * msg.value / 10^18 * tokenPrice / ext_call.return_data[0]
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == sub_0bdc77b8:
                                emit TakeEther(address(msg.sender), msg.value, 10^ext_call.return_data[0] * msg.value / 10^18 * tokenPrice / ext_call.return_data[0], tokenPrice);
                            else:
                                require ext_code.size(priceFeedAddress)
                                call priceFeedAddress.read(bytes32 arg1) with:
                                     gas gas_remaining wei
                                    args sub_0bdc77b8
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not tokenPrice:
                                    require ext_call.return_data[0]
                                    emit TakeEther(address(msg.sender), msg.value, 10^ext_call.return_data[0] * msg.value / 10^18 * tokenPrice / ext_call.return_data[0], 0 / ext_call.return_data[0]);
                                else:
                                    require 10^18 * tokenPrice / tokenPrice == 10^18
                                    require ext_call.return_data[0]
                                    emit TakeEther(address(msg.sender), msg.value, 10^ext_call.return_data[0] * msg.value / 10^18 * tokenPrice / ext_call.return_data[0], 10^18 * tokenPrice / ext_call.return_data[0]);
                        else:
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == sub_0bdc77b8:
                                if not (10^ext_call.return_data[0] * msg.value / 10^18 * tokenPrice / ext_call.return_data[0]) - ext_call.return_data[0]:
                                    require 10^ext_call.return_data[0]
                                    remainingTokens = 0
                                    call msg.sender with:
                                       value 0 / 10^ext_call.return_data[0] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 0 / 10^ext_call.return_data[0] <= msg.value
                                    require msg.value - (0 / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                                    etherUser[address(msg.sender)] = msg.value - (0 / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)]
                                else:
                                    require (10^ext_call.return_data[0] * msg.value / 10^18 * tokenPrice / ext_call.return_data[0] * tokenPrice) - (ext_call.return_data[0] * tokenPrice) / (10^ext_call.return_data[0] * msg.value / 10^18 * tokenPrice / ext_call.return_data[0]) - ext_call.return_data[0] == tokenPrice
                                    require 10^ext_call.return_data[0]
                                    remainingTokens = 0
                                    call msg.sender with:
                                       value (10^ext_call.return_data[0] * msg.value / 10^18 * tokenPrice / ext_call.return_data[0] * tokenPrice) - (ext_call.return_data[0] * tokenPrice) / 10^ext_call.return_data[0] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require (10^ext_call.return_data[0] * msg.value / 10^18 * tokenPrice / ext_call.return_data[0] * tokenPrice) - (ext_call.return_data[0] * tokenPrice) / 10^ext_call.return_data[0] <= msg.value
                                    require msg.value - ((10^ext_call.return_data[0] * msg.value / 10^18 * tokenPrice / ext_call.return_data[0] * tokenPrice) - (ext_call.return_data[0] * tokenPrice) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                                    etherUser[address(msg.sender)] = msg.value - ((10^ext_call.return_data[0] * msg.value / 10^18 * tokenPrice / ext_call.return_data[0] * tokenPrice) - (ext_call.return_data[0] * tokenPrice) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)]
                            else:
                                require ext_code.size(priceFeedAddress)
                                call priceFeedAddress.read(bytes32 arg1) with:
                                     gas gas_remaining wei
                                    args sub_0bdc77b8
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not tokenPrice:
                                    require ext_call.return_data[0]
                                    if not (10^ext_call.return_data[0] * msg.value / 10^18 * tokenPrice / ext_call.return_data[0]) - ext_call.return_data[0]:
                                        require 10^ext_call.return_data[0]
                                        remainingTokens = 0
                                        call msg.sender with:
                                           value 0 / 10^ext_call.return_data[0] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require 0 / 10^ext_call.return_data[0] <= msg.value
                                        require msg.value - (0 / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                                        etherUser[address(msg.sender)] = msg.value - (0 / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)]
                                    else:
                                        require (10^ext_call.return_data[0] * msg.value / 10^18 * tokenPrice / ext_call.return_data[0] * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / ext_call.return_data[0]) / (10^ext_call.return_data[0] * msg.value / 10^18 * tokenPrice / ext_call.return_data[0]) - ext_call.return_data[0] == 0 / ext_call.return_data[0]
                                        require 10^ext_call.return_data[0]
                                        remainingTokens = 0
                                        call msg.sender with:
                                           value (10^ext_call.return_data[0] * msg.value / 10^18 * tokenPrice / ext_call.return_data[0] * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / ext_call.return_data[0]) / 10^ext_call.return_data[0] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require (10^ext_call.return_data[0] * msg.value / 10^18 * tokenPrice / ext_call.return_data[0] * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / ext_call.return_data[0]) / 10^ext_call.return_data[0] <= msg.value
                                        require msg.value - ((10^ext_call.return_data[0] * msg.value / 10^18 * tokenPrice / ext_call.return_data[0] * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / ext_call.return_data[0]) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                                        etherUser[address(msg.sender)] = msg.value - ((10^ext_call.return_data[0] * msg.value / 10^18 * tokenPrice / ext_call.return_data[0] * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / ext_call.return_data[0]) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)]
                                else:
                                    require 10^18 * tokenPrice / tokenPrice == 10^18
                                    require ext_call.return_data[0]
                                    if not (10^ext_call.return_data[0] * msg.value / 10^18 * tokenPrice / ext_call.return_data[0]) - ext_call.return_data[0]:
                                        require 10^ext_call.return_data[0]
                                        remainingTokens = 0
                                        call msg.sender with:
                                           value 0 / 10^ext_call.return_data[0] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require 0 / 10^ext_call.return_data[0] <= msg.value
                                        require msg.value - (0 / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                                        etherUser[address(msg.sender)] = msg.value - (0 / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)]
                                    else:
                                        require (10^ext_call.return_data[0] * msg.value / 10^18 * tokenPrice / ext_call.return_data[0] * 10^18 * tokenPrice / ext_call.return_data[0]) - (ext_call.return_data[0] * 10^18 * tokenPrice / ext_call.return_data[0]) / (10^ext_call.return_data[0] * msg.value / 10^18 * tokenPrice / ext_call.return_data[0]) - ext_call.return_data[0] == 10^18 * tokenPrice / ext_call.return_data[0]
                                        require 10^ext_call.return_data[0]
                                        remainingTokens = 0
                                        call msg.sender with:
                                           value (10^ext_call.return_data[0] * msg.value / 10^18 * tokenPrice / ext_call.return_data[0] * 10^18 * tokenPrice / ext_call.return_data[0]) - (ext_call.return_data[0] * 10^18 * tokenPrice / ext_call.return_data[0]) / 10^ext_call.return_data[0] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require (10^ext_call.return_data[0] * msg.value / 10^18 * tokenPrice / ext_call.return_data[0] * 10^18 * tokenPrice / ext_call.return_data[0]) - (ext_call.return_data[0] * 10^18 * tokenPrice / ext_call.return_data[0]) / 10^ext_call.return_data[0] <= msg.value
                                        require msg.value - ((10^ext_call.return_data[0] * msg.value / 10^18 * tokenPrice / ext_call.return_data[0] * 10^18 * tokenPrice / ext_call.return_data[0]) - (ext_call.return_data[0] * 10^18 * tokenPrice / ext_call.return_data[0]) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                                        etherUser[address(msg.sender)] = msg.value - ((10^ext_call.return_data[0] * msg.value / 10^18 * tokenPrice / ext_call.return_data[0] * 10^18 * tokenPrice / ext_call.return_data[0]) - (ext_call.return_data[0] * 10^18 * tokenPrice / ext_call.return_data[0]) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)]
                            require ext_call.return_data[0] + pendingTokenUser[address(msg.sender)] >= pendingTokenUser[address(msg.sender)]
                            pendingTokenUser[address(msg.sender)] += ext_call.return_data[0]
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == sub_0bdc77b8:
                                emit TakeEther(address(msg.sender), msg.value, ext_call.return_data[0], tokenPrice);
                            else:
                                require ext_code.size(priceFeedAddress)
                                call priceFeedAddress.read(bytes32 arg1) with:
                                     gas gas_remaining wei
                                    args sub_0bdc77b8
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not tokenPrice:
                                    require ext_call.return_data[0]
                                    emit TakeEther(address(msg.sender), msg.value, ext_call.return_data[0], 0 / ext_call.return_data[0]);
                                else:
                                    require 10^18 * tokenPrice / tokenPrice == 10^18
                                    require ext_call.return_data[0]
                                    emit TakeEther(address(msg.sender), msg.value, ext_call.return_data[0], 10^18 * tokenPrice / ext_call.return_data[0]);
                    else:
                        if remainingTokens >= 10^ext_call.return_data[0] * msg.value / 10^18 * tokenPrice / ext_call.return_data[0]:
                            require 10^ext_call.return_data[0] * msg.value / 10^18 * tokenPrice / ext_call.return_data[0] <= remainingTokens
                            remainingTokens -= 10^ext_call.return_data[0] * msg.value / 10^18 * tokenPrice / ext_call.return_data[0]
                            require 0 <= msg.value
                            require msg.value + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                            etherUser[address(msg.sender)] += msg.value
                            require (10^ext_call.return_data[0] * msg.value / 10^18 * tokenPrice / ext_call.return_data[0]) + pendingTokenUser[address(msg.sender)] >= pendingTokenUser[address(msg.sender)]
                            pendingTokenUser[address(msg.sender)] += 10^ext_call.return_data[0] * msg.value / 10^18 * tokenPrice / ext_call.return_data[0]
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == sub_0bdc77b8:
                                emit TakeEther(address(msg.sender), msg.value, 10^ext_call.return_data[0] * msg.value / 10^18 * tokenPrice / ext_call.return_data[0], tokenPrice);
                            else:
                                require ext_code.size(priceFeedAddress)
                                call priceFeedAddress.read(bytes32 arg1) with:
                                     gas gas_remaining wei
                                    args sub_0bdc77b8
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not tokenPrice:
                                    require ext_call.return_data[0]
                                    emit TakeEther(address(msg.sender), msg.value, 10^ext_call.return_data[0] * msg.value / 10^18 * tokenPrice / ext_call.return_data[0], 0 / ext_call.return_data[0]);
                                else:
                                    require 10^18 * tokenPrice / tokenPrice == 10^18
                                    require ext_call.return_data[0]
                                    emit TakeEther(address(msg.sender), msg.value, 10^ext_call.return_data[0] * msg.value / 10^18 * tokenPrice / ext_call.return_data[0], 10^18 * tokenPrice / ext_call.return_data[0]);
                        else:
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == sub_0bdc77b8:
                                if not (10^ext_call.return_data[0] * msg.value / 10^18 * tokenPrice / ext_call.return_data[0]) - remainingTokens:
                                    require 10^ext_call.return_data[0]
                                    remainingTokens = 0
                                    call msg.sender with:
                                       value 0 / 10^ext_call.return_data[0] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 0 / 10^ext_call.return_data[0] <= msg.value
                                    require msg.value - (0 / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                                    etherUser[address(msg.sender)] = msg.value - (0 / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)]
                                else:
                                    require (10^ext_call.return_data[0] * msg.value / 10^18 * tokenPrice / ext_call.return_data[0] * tokenPrice) - (remainingTokens * tokenPrice) / (10^ext_call.return_data[0] * msg.value / 10^18 * tokenPrice / ext_call.return_data[0]) - remainingTokens == tokenPrice
                                    require 10^ext_call.return_data[0]
                                    remainingTokens = 0
                                    call msg.sender with:
                                       value (10^ext_call.return_data[0] * msg.value / 10^18 * tokenPrice / ext_call.return_data[0] * tokenPrice) - (remainingTokens * tokenPrice) / 10^ext_call.return_data[0] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require (10^ext_call.return_data[0] * msg.value / 10^18 * tokenPrice / ext_call.return_data[0] * tokenPrice) - (remainingTokens * tokenPrice) / 10^ext_call.return_data[0] <= msg.value
                                    require msg.value - ((10^ext_call.return_data[0] * msg.value / 10^18 * tokenPrice / ext_call.return_data[0] * tokenPrice) - (remainingTokens * tokenPrice) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                                    etherUser[address(msg.sender)] = msg.value - ((10^ext_call.return_data[0] * msg.value / 10^18 * tokenPrice / ext_call.return_data[0] * tokenPrice) - (remainingTokens * tokenPrice) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)]
                            else:
                                require ext_code.size(priceFeedAddress)
                                call priceFeedAddress.read(bytes32 arg1) with:
                                     gas gas_remaining wei
                                    args sub_0bdc77b8
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not tokenPrice:
                                    require ext_call.return_data[0]
                                    if not (10^ext_call.return_data[0] * msg.value / 10^18 * tokenPrice / ext_call.return_data[0]) - remainingTokens:
                                        require 10^ext_call.return_data[0]
                                        remainingTokens = 0
                                        call msg.sender with:
                                           value 0 / 10^ext_call.return_data[0] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require 0 / 10^ext_call.return_data[0] <= msg.value
                                        require msg.value - (0 / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                                        etherUser[address(msg.sender)] = msg.value - (0 / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)]
                                    else:
                                        require (10^ext_call.return_data[0] * msg.value / 10^18 * tokenPrice / ext_call.return_data[0] * 0 / ext_call.return_data[0]) - (remainingTokens * 0 / ext_call.return_data[0]) / (10^ext_call.return_data[0] * msg.value / 10^18 * tokenPrice / ext_call.return_data[0]) - remainingTokens == 0 / ext_call.return_data[0]
                                        require 10^ext_call.return_data[0]
                                        remainingTokens = 0
                                        call msg.sender with:
                                           value (10^ext_call.return_data[0] * msg.value / 10^18 * tokenPrice / ext_call.return_data[0] * 0 / ext_call.return_data[0]) - (remainingTokens * 0 / ext_call.return_data[0]) / 10^ext_call.return_data[0] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require (10^ext_call.return_data[0] * msg.value / 10^18 * tokenPrice / ext_call.return_data[0] * 0 / ext_call.return_data[0]) - (remainingTokens * 0 / ext_call.return_data[0]) / 10^ext_call.return_data[0] <= msg.value
                                        require msg.value - ((10^ext_call.return_data[0] * msg.value / 10^18 * tokenPrice / ext_call.return_data[0] * 0 / ext_call.return_data[0]) - (remainingTokens * 0 / ext_call.return_data[0]) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                                        etherUser[address(msg.sender)] = msg.value - ((10^ext_call.return_data[0] * msg.value / 10^18 * tokenPrice / ext_call.return_data[0] * 0 / ext_call.return_data[0]) - (remainingTokens * 0 / ext_call.return_data[0]) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)]
                                else:
                                    require 10^18 * tokenPrice / tokenPrice == 10^18
                                    require ext_call.return_data[0]
                                    if not (10^ext_call.return_data[0] * msg.value / 10^18 * tokenPrice / ext_call.return_data[0]) - remainingTokens:
                                        require 10^ext_call.return_data[0]
                                        remainingTokens = 0
                                        call msg.sender with:
                                           value 0 / 10^ext_call.return_data[0] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require 0 / 10^ext_call.return_data[0] <= msg.value
                                        require msg.value - (0 / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                                        etherUser[address(msg.sender)] = msg.value - (0 / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)]
                                    else:
                                        require (10^ext_call.return_data[0] * msg.value / 10^18 * tokenPrice / ext_call.return_data[0] * 10^18 * tokenPrice / ext_call.return_data[0]) - (remainingTokens * 10^18 * tokenPrice / ext_call.return_data[0]) / (10^ext_call.return_data[0] * msg.value / 10^18 * tokenPrice / ext_call.return_data[0]) - remainingTokens == 10^18 * tokenPrice / ext_call.return_data[0]
                                        require 10^ext_call.return_data[0]
                                        remainingTokens = 0
                                        call msg.sender with:
                                           value (10^ext_call.return_data[0] * msg.value / 10^18 * tokenPrice / ext_call.return_data[0] * 10^18 * tokenPrice / ext_call.return_data[0]) - (remainingTokens * 10^18 * tokenPrice / ext_call.return_data[0]) / 10^ext_call.return_data[0] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require (10^ext_call.return_data[0] * msg.value / 10^18 * tokenPrice / ext_call.return_data[0] * 10^18 * tokenPrice / ext_call.return_data[0]) - (remainingTokens * 10^18 * tokenPrice / ext_call.return_data[0]) / 10^ext_call.return_data[0] <= msg.value
                                        require msg.value - ((10^ext_call.return_data[0] * msg.value / 10^18 * tokenPrice / ext_call.return_data[0] * 10^18 * tokenPrice / ext_call.return_data[0]) - (remainingTokens * 10^18 * tokenPrice / ext_call.return_data[0]) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)] >= etherUser[address(msg.sender)]
                                        etherUser[address(msg.sender)] = msg.value - ((10^ext_call.return_data[0] * msg.value / 10^18 * tokenPrice / ext_call.return_data[0] * 10^18 * tokenPrice / ext_call.return_data[0]) - (remainingTokens * 10^18 * tokenPrice / ext_call.return_data[0]) / 10^ext_call.return_data[0]) + etherUser[address(msg.sender)]
                            require remainingTokens + pendingTokenUser[address(msg.sender)] >= pendingTokenUser[address(msg.sender)]
                            pendingTokenUser[address(msg.sender)] += remainingTokens
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == sub_0bdc77b8:
                                emit TakeEther(address(msg.sender), msg.value, remainingTokens, tokenPrice);
                            else:
                                require ext_code.size(priceFeedAddress)
                                call priceFeedAddress.read(bytes32 arg1) with:
                                     gas gas_remaining wei
                                    args sub_0bdc77b8
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not tokenPrice:
                                    require ext_call.return_data[0]
                                    emit TakeEther(address(msg.sender), msg.value, remainingTokens, 0 / ext_call.return_data[0]);
                                else:
                                    require 10^18 * tokenPrice / tokenPrice == 10^18
                                    require ext_call.return_data[0]
                                    emit TakeEther(address(msg.sender), msg.value, remainingTokens, 10^18 * tokenPrice / ext_call.return_data[0]);
    if pendingTokenUser[address(msg.sender)] <= 0:
        revert with 0, 'pendingTokenUser[_buyer] > 0'
    require pendingTokenUser[address(msg.sender)] + tokenUser[address(msg.sender)] >= tokenUser[address(msg.sender)]
    tokenUser[address(msg.sender)] += pendingTokenUser[address(msg.sender)]
    require ext_code.size(stor0)
    call stor0.sendTokens(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, pendingTokenUser[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require pendingTokenUser[address(msg.sender)] + soldTokens >= soldTokens
    soldTokens += pendingTokenUser[address(msg.sender)]
    pendingTokenUser[address(msg.sender)] = 0
    call stor0 with:
       funct Mask(32, 224, sha3('forwardEther()')) >> 224
       value etherUser[address(msg.sender)] wei
         gas gas_remaining wei
    require ext_call.success
    etherUser[address(msg.sender)] = 0
}



}
