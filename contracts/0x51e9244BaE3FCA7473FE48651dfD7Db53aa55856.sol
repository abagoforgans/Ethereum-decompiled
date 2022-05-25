contract main {




// =====================  Runtime code  =====================


#
#  - buyAgain(uint256 arg1)
#  - buy(uint256 arg1, address arg2)
#
const BASE_PRICE = 3 * 10^15


address owner;
address serviceAddress;
mapping of struct bigRound;
mapping of struct smallRound;
address RTB1Address;
address RTB2Address;
mapping of uint256 userSmallRoundkey;
mapping of uint256 userBigRoundKey;
array of struct userXkeyPurchases;
uint256 stor9;
mapping of uint256 recommender;
mapping of uint8 stor11;
uint256 allowPrice;
uint256 stor13;
uint256 smallId;
uint256 bigId;
uint8 stor16;

function bigId() {
    return bigId
}

function smallId() {
    return smallId
}

function allowPrice() {
    return allowPrice
}

function smallRound(uint256 arg1, uint256 arg2) {
    return smallRound[arg1][arg2].field_0, 
           smallRound[arg1][arg2].field_256,
           smallRound[arg1][arg2].field_512,
           smallRound[arg1][arg2].field_768,
           smallRound[arg1][arg2].field_1024,
           smallRound[arg1][arg2].field_1280
}

function bigRound(uint256 arg1) {
    return bigRound[arg1].field_0, 
           bigRound[arg1].field_256,
           bigRound[arg1].field_512,
           bigRound[arg1].field_1024,
           bigRound[arg1].field_1280
}

function owner() {
    return owner
}

function recommender(address arg1) {
    return recommender[arg1]
}

function RTB1() {
    return RTB1Address
}

function isPaused() {
    return bool(stor16)
}

function userSmallRoundkey(uint256 arg1, uint256 arg2, address arg3) {
    return userSmallRoundkey[arg1][arg2][arg3]
}

function userBigRoundKey(uint256 arg1, address arg2) {
    return userBigRoundKey[arg1][arg2]
}

function service() {
    return serviceAddress
}

function RTB2() {
    return RTB2Address
}

function recommenderAllow(address arg1) {
    return bool(stor11[arg1])
}

function userXkeyPurchases(uint256 arg1, uint256 arg2, address arg3) {
    return userXkeyPurchases[arg1][arg2][arg3].field_256
}

function setGame(bool arg1) {
    if owner != msg.sender:
        revert with 0, 'only owner'
    stor16 = uint8(arg1)
}

function setAllowPrice(uint256 arg1) {
    if owner != msg.sender:
        revert with 0, 'only owner'
    allowPrice = arg1
}

function setService(address arg1) {
    if owner != msg.sender:
        revert with 0, 'only owner'
    serviceAddress = arg1
}

function _fallback() payable {
    require msg.value > 0
    require msg.value + bigRound[stor15].field_256 >= bigRound[stor15].field_256
    bigRound[stor15].field_256 += msg.value
}

function startGame() {
    if owner != msg.sender:
        revert with 0, 'only owner'
    smallRound[stor15][stor14].field_512 = block.timestamp
    smallRound[stor15][stor14].field_768 = block.timestamp + 41400
}

function setRecommenderAllow() payable {
    require msg.value == allowPrice
    require not stor11[address(msg.sender)]
    require msg.value + stor13 >= stor13
    stor13 += msg.value
    emit RecommenderAllow(1, msg.sender);
    stor11[address(msg.sender)] = 1
}

function devWithdraw() {
    if owner != msg.sender:
        revert with 0, 'only owner'
    call owner with:
       value stor13 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit withdrawEvent(stor13, 0, owner);
    stor13 = 0
}

function getMyProfit(uint256 arg1) {
    if not bigRound[arg1].field_512:
        if bigRound[arg1][3][address(msg.sender)].field_0 <= 0:
            return -bigRound[arg1][3][address(msg.sender)].field_0
    else:
        if userBigRoundKey[arg1][address(msg.sender)] * bigRound[arg1].field_512 / bigRound[arg1].field_512 == userBigRoundKey[arg1][address(msg.sender)]:
            if bigRound[arg1][3][address(msg.sender)].field_0 <= userBigRoundKey[arg1][address(msg.sender)] * bigRound[arg1].field_512:
                return ((userBigRoundKey[arg1][address(msg.sender)] * bigRound[arg1].field_512) - bigRound[arg1][3][address(msg.sender)].field_0)
    revert
}

function getPrice() {
    require smallId >= 1
    require smallId <= 50
    require 1 <= smallId
    if not smallId - 1:
        return 3 * 10^15
    require (-2 * smallId) + (smallId * smallId) + 1 / smallId - 1 == smallId - 1
    if not (-2 * smallId) + (smallId * smallId) + 1:
        return 3 * 10^15
    require (-24 * 10^14 * smallId) + (12 * 10^14 * smallId * smallId) + 12 * 10^14 / (-2 * smallId) + (smallId * smallId) + 1 == 12 * 10^14
    require (-24 * 10^14 * smallId) + (12 * 10^14 * smallId * smallId) + 12 * 10^14 == (25 * (-24 * 10^14 * smallId) + (12 * 10^14 * smallId * smallId) + 12 * 10^14 / 25) + ((-24 * 10^14 * smallId) + (12 * 10^14 * smallId * smallId) + 12 * 10^14 % 25)
    require ((-24 * 10^14 * smallId) + (12 * 10^14 * smallId * smallId) + 12 * 10^14 / 25) + 3 * 10^15 >= (-24 * 10^14 * smallId) + (12 * 10^14 * smallId * smallId) + 12 * 10^14 / 25
    return (((-24 * 10^14 * smallId) + (12 * 10^14 * smallId * smallId) + 12 * 10^14 / 25) + 3 * 10^15)
}

function createWinner() {
    if serviceAddress != msg.sender:
        revert with 0, 'only service'
    if stor16:
        revert with 0, 'is Paused'
    require block.timestamp > smallRound[stor15][stor14].field_768
    require not smallRound[stor15][stor14].field_1024
    require block.timestamp
    require block.timestamp
    require block.difficulty + block.timestamp >= block.timestamp
    require sha3(address(block.coinbase, 0)) / block.timestamp >= 0
    require block.gas_limit >= 0
    require sha3(address(msg.sender, 0)) / block.timestamp >= 0
    require block.number >= 0
    require smallRound[stor15][stor14].field_0
    smallRound[stor15][stor14].field_1024 = mulmod(block.hash(block.number - 1), sha3(block.number + (sha3(address(msg.sender, 0)) / block.timestamp) + block.gas_limit + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.difficulty + block.timestamp), smallRound[stor15][stor14].field_0)
    emit createKey(smallRound[stor15][stor14].field_1024, bigId, smallId);
}

function withdraw(uint256 arg1) {
    if stor16:
        revert with 0, 'is Paused'
    if not bigRound[arg1].field_512:
        require bigRound[arg1][3][address(msg.sender)].field_0 <= 0
        require -bigRound[arg1][3][address(msg.sender)].field_0 + recommender[address(msg.sender)] >= recommender[address(msg.sender)]
        require -bigRound[arg1][3][address(msg.sender)].field_0 + recommender[address(msg.sender)] > 0
        recommender[address(msg.sender)] = 0
        require 0 >= bigRound[arg1][3][address(msg.sender)].field_0
        bigRound[arg1][3][address(msg.sender)].field_0 = 0
        call msg.sender with:
           value -bigRound[arg1][3][address(msg.sender)].field_0 + recommender[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit withdrawEvent(-bigRound[arg1][3][address(msg.sender)].field_0 + recommender[address(msg.sender)], arg1, msg.sender);
    else:
        require userBigRoundKey[arg1][address(msg.sender)] * bigRound[arg1].field_512 / bigRound[arg1].field_512 == userBigRoundKey[arg1][address(msg.sender)]
        require bigRound[arg1][3][address(msg.sender)].field_0 <= userBigRoundKey[arg1][address(msg.sender)] * bigRound[arg1].field_512
        require (userBigRoundKey[arg1][address(msg.sender)] * bigRound[arg1].field_512) - bigRound[arg1][3][address(msg.sender)].field_0 + recommender[address(msg.sender)] >= recommender[address(msg.sender)]
        require (userBigRoundKey[arg1][address(msg.sender)] * bigRound[arg1].field_512) - bigRound[arg1][3][address(msg.sender)].field_0 + recommender[address(msg.sender)] > 0
        recommender[address(msg.sender)] = 0
        require userBigRoundKey[arg1][address(msg.sender)] * bigRound[arg1].field_512 >= bigRound[arg1][3][address(msg.sender)].field_0
        bigRound[arg1][3][address(msg.sender)].field_0 = userBigRoundKey[arg1][address(msg.sender)] * bigRound[arg1].field_512
        call msg.sender with:
           value (userBigRoundKey[arg1][address(msg.sender)] * bigRound[arg1].field_512) - bigRound[arg1][3][address(msg.sender)].field_0 + recommender[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit withdrawEvent((userBigRoundKey[arg1][address(msg.sender)] * bigRound[arg1].field_512) - bigRound[arg1][3][address(msg.sender)].field_0 + recommender[address(msg.sender)], arg1, msg.sender);
}

function lottery(address arg1, uint256 arg2) {
    if serviceAddress != msg.sender:
        revert with 0, 'only service'
    if stor16:
        revert with 0, 'is Paused'
    require arg1
    require eth.balance(this.address) > smallRound[stor15][stor14].field_1280
    if userXkeyPurchases[stor15][stor14][address(arg1)].field_256 > 0:
        if arg2 < userXkeyPurchases[stor15][stor14][address(arg1)].field_256:
            require arg2 < userXkeyPurchases[stor15][stor14][address(arg1)].field_0
            if userXkeyPurchases[stor15][stor14][address(arg1)][arg2].field_0 <= smallRound[stor15][stor14].field_1024:
                if smallRound[stor15][stor14].field_1024 <= userXkeyPurchases[stor15][stor14][address(arg1)][arg2].field_256:
                    smallRound[stor15][stor14].field_256 = arg1
                    call arg1 with:
                       value smallRound[stor15][stor14].field_1280 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit lotteryEvent(bigId, smallId, smallRound[stor15][stor14].field_1280, 1, arg1);
                    if stor16:
                        revert with 0, 'is Paused'
                    require block.timestamp
                    require block.timestamp
                    require block.difficulty + block.timestamp >= block.timestamp
                    require sha3(address(block.coinbase, 0)) / block.timestamp >= 0
                    require block.gas_limit >= 0
                    require sha3(address(msg.sender, 0)) / block.timestamp >= 0
                    require block.number >= 0
                    if smallId >= 50:
                        if mulmod(block.hash(block.number - 1), sha3(block.number + (sha3(address(msg.sender, 0)) / block.timestamp) + block.gas_limit + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.difficulty + block.timestamp), 1):
                            smallId++
                        else:
                            require eth.balance(this.address) >= bigRound[stor15].field_256
                            if not bigRound[stor15].field_256:
                                require bigRound[stor15].field_0 > 0
                                require bigRound[stor15].field_0
                                require 0 == (bigRound[stor15].field_0 * 0 / bigRound[stor15].field_0) + (0 % bigRound[stor15].field_0)
                                require bigRound[stor15].field_512 + (0 / bigRound[stor15].field_0) >= 0 / bigRound[stor15].field_0
                                bigRound[stor15].field_512 += 0 / bigRound[stor15].field_0
                            else:
                                require 10 * bigRound[stor15].field_256 / bigRound[stor15].field_256 == 10
                                require 10 * bigRound[stor15].field_256 == (100 * 10 * bigRound[stor15].field_256 / 100) + (10 * bigRound[stor15].field_256 % 100)
                                require bigRound[stor15].field_0 > 0
                                require bigRound[stor15].field_0
                                require 10 * bigRound[stor15].field_256 / 100 == (bigRound[stor15].field_0 * 10 * bigRound[stor15].field_256 / 100 / bigRound[stor15].field_0) + (10 * bigRound[stor15].field_256 / 100 % bigRound[stor15].field_0)
                                require bigRound[stor15].field_512 + (10 * bigRound[stor15].field_256 / 100 / bigRound[stor15].field_0) >= 10 * bigRound[stor15].field_256 / 100 / bigRound[stor15].field_0
                                bigRound[stor15].field_512 += 10 * bigRound[stor15].field_256 / 100 / bigRound[stor15].field_0
                            if not bigRound[stor15].field_256:
                                if not bigRound[stor15].field_256:
                                    require ext_code.size(RTB1Address)
                                    call RTB1Address.increaseProfit() with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(RTB2Address)
                                    call RTB2Address.increaseProfit() with:
                                         gas gas_remaining wei
                                else:
                                    require 10 * bigRound[stor15].field_256 / bigRound[stor15].field_256 == 10
                                    require 10 * bigRound[stor15].field_256 == (100 * 10 * bigRound[stor15].field_256 / 100) + (10 * bigRound[stor15].field_256 % 100)
                                    if not 10 * bigRound[stor15].field_256 / 100:
                                        require ext_code.size(RTB1Address)
                                        call RTB1Address.increaseProfit() with:
                                             gas gas_remaining wei
                                    else:
                                        require 3 * 10 * bigRound[stor15].field_256 / 100 / 10 * bigRound[stor15].field_256 / 100 == 3
                                        require 3 * 10 * bigRound[stor15].field_256 / 100 == (10 * 3 * 10 * bigRound[stor15].field_256 / 100 / 10) + (3 * 10 * bigRound[stor15].field_256 / 100 % 10)
                                        require ext_code.size(RTB1Address)
                                        call RTB1Address.increaseProfit() with:
                                           value 3 * 10 * bigRound[stor15].field_256 / 100 / 10 wei
                                             gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not 10 * bigRound[stor15].field_256 / 100:
                                        require ext_code.size(RTB2Address)
                                        call RTB2Address.increaseProfit() with:
                                             gas gas_remaining wei
                                    else:
                                        require 7 * 10 * bigRound[stor15].field_256 / 100 / 10 * bigRound[stor15].field_256 / 100 == 7
                                        require 7 * 10 * bigRound[stor15].field_256 / 100 == (10 * 7 * 10 * bigRound[stor15].field_256 / 100 / 10) + (7 * 10 * bigRound[stor15].field_256 / 100 % 10)
                                        require ext_code.size(RTB2Address)
                                        call RTB2Address.increaseProfit() with:
                                           value 7 * 10 * bigRound[stor15].field_256 / 100 / 10 wei
                                             gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not bigRound[stor15].field_256:
                                    require stor13 >= 0
                                else:
                                    require 8 * bigRound[stor15].field_256 / bigRound[stor15].field_256 == 8
                                    require 8 * bigRound[stor15].field_256 == (100 * 8 * bigRound[stor15].field_256 / 100) + (8 * bigRound[stor15].field_256 % 100)
                                    require stor13 + (8 * bigRound[stor15].field_256 / 100) >= 8 * bigRound[stor15].field_256 / 100
                                    stor13 += 8 * bigRound[stor15].field_256 / 100
                                if not bigRound[stor15].field_256:
                                    call arg1 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit lotteryEvent(bigId, smallId, 0, 2, arg1);
                                    bigRound[stor15].field_1280 = 0
                                else:
                                    require 62 * bigRound[stor15].field_256 / bigRound[stor15].field_256 == 62
                                    require 62 * bigRound[stor15].field_256 == (100 * 62 * bigRound[stor15].field_256 / 100) + (62 * bigRound[stor15].field_256 % 100)
                                    call arg1 with:
                                       value 62 * bigRound[stor15].field_256 / 100 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit lotteryEvent(bigId, smallId, 62 * bigRound[stor15].field_256 / 100, 2, arg1);
                                    bigRound[stor15].field_1280 = 62 * bigRound[stor15].field_256 / 100
                                bigId++
                                smallId = 1
                                bigRound[stor15 + 1].field_256 = 0
                            else:
                                require 10 * bigRound[stor15].field_256 / bigRound[stor15].field_256 == 10
                                require 10 * bigRound[stor15].field_256 == (100 * 10 * bigRound[stor15].field_256 / 100) + (10 * bigRound[stor15].field_256 % 100)
                                if not bigRound[stor15].field_256:
                                    require ext_code.size(RTB1Address)
                                    call RTB1Address.increaseProfit() with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(RTB2Address)
                                    call RTB2Address.increaseProfit() with:
                                         gas gas_remaining wei
                                else:
                                    require 10 * bigRound[stor15].field_256 / bigRound[stor15].field_256 == 10
                                    require 10 * bigRound[stor15].field_256 == (100 * 10 * bigRound[stor15].field_256 / 100) + (10 * bigRound[stor15].field_256 % 100)
                                    if not 10 * bigRound[stor15].field_256 / 100:
                                        require ext_code.size(RTB1Address)
                                        call RTB1Address.increaseProfit() with:
                                             gas gas_remaining wei
                                    else:
                                        require 3 * 10 * bigRound[stor15].field_256 / 100 / 10 * bigRound[stor15].field_256 / 100 == 3
                                        require 3 * 10 * bigRound[stor15].field_256 / 100 == (10 * 3 * 10 * bigRound[stor15].field_256 / 100 / 10) + (3 * 10 * bigRound[stor15].field_256 / 100 % 10)
                                        require ext_code.size(RTB1Address)
                                        call RTB1Address.increaseProfit() with:
                                           value 3 * 10 * bigRound[stor15].field_256 / 100 / 10 wei
                                             gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not 10 * bigRound[stor15].field_256 / 100:
                                        require ext_code.size(RTB2Address)
                                        call RTB2Address.increaseProfit() with:
                                             gas gas_remaining wei
                                    else:
                                        require 7 * 10 * bigRound[stor15].field_256 / 100 / 10 * bigRound[stor15].field_256 / 100 == 7
                                        require 7 * 10 * bigRound[stor15].field_256 / 100 == (10 * 7 * 10 * bigRound[stor15].field_256 / 100 / 10) + (7 * 10 * bigRound[stor15].field_256 / 100 % 10)
                                        require ext_code.size(RTB2Address)
                                        call RTB2Address.increaseProfit() with:
                                           value 7 * 10 * bigRound[stor15].field_256 / 100 / 10 wei
                                             gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not bigRound[stor15].field_256:
                                    require stor13 >= 0
                                else:
                                    require 8 * bigRound[stor15].field_256 / bigRound[stor15].field_256 == 8
                                    require 8 * bigRound[stor15].field_256 == (100 * 8 * bigRound[stor15].field_256 / 100) + (8 * bigRound[stor15].field_256 % 100)
                                    require stor13 + (8 * bigRound[stor15].field_256 / 100) >= 8 * bigRound[stor15].field_256 / 100
                                    stor13 += 8 * bigRound[stor15].field_256 / 100
                                if not bigRound[stor15].field_256:
                                    call arg1 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit lotteryEvent(bigId, smallId, 0, 2, arg1);
                                    bigRound[stor15].field_1280 = 0
                                else:
                                    require 62 * bigRound[stor15].field_256 / bigRound[stor15].field_256 == 62
                                    require 62 * bigRound[stor15].field_256 == (100 * 62 * bigRound[stor15].field_256 / 100) + (62 * bigRound[stor15].field_256 % 100)
                                    call arg1 with:
                                       value 62 * bigRound[stor15].field_256 / 100 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit lotteryEvent(bigId, smallId, 62 * bigRound[stor15].field_256 / 100, 2, arg1);
                                    bigRound[stor15].field_1280 = 62 * bigRound[stor15].field_256 / 100
                                bigId++
                                smallId = 1
                                bigRound[stor15 + 1].field_256 = 10 * bigRound[stor15].field_256 / 100
                    else:
                        require (-3 * smallId) + 149
                        if mulmod(block.hash(block.number - 1), sha3(block.number + (sha3(address(msg.sender, 0)) / block.timestamp) + block.gas_limit + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.difficulty + block.timestamp), (-3 * smallId) + 149):
                            smallId++
                        else:
                            require eth.balance(this.address) >= bigRound[stor15].field_256
                            if not bigRound[stor15].field_256:
                                require bigRound[stor15].field_0 > 0
                                require bigRound[stor15].field_0
                                require 0 == (bigRound[stor15].field_0 * 0 / bigRound[stor15].field_0) + (0 % bigRound[stor15].field_0)
                                require bigRound[stor15].field_512 + (0 / bigRound[stor15].field_0) >= 0 / bigRound[stor15].field_0
                                bigRound[stor15].field_512 += 0 / bigRound[stor15].field_0
                            else:
                                require 10 * bigRound[stor15].field_256 / bigRound[stor15].field_256 == 10
                                require 10 * bigRound[stor15].field_256 == (100 * 10 * bigRound[stor15].field_256 / 100) + (10 * bigRound[stor15].field_256 % 100)
                                require bigRound[stor15].field_0 > 0
                                require bigRound[stor15].field_0
                                require 10 * bigRound[stor15].field_256 / 100 == (bigRound[stor15].field_0 * 10 * bigRound[stor15].field_256 / 100 / bigRound[stor15].field_0) + (10 * bigRound[stor15].field_256 / 100 % bigRound[stor15].field_0)
                                require bigRound[stor15].field_512 + (10 * bigRound[stor15].field_256 / 100 / bigRound[stor15].field_0) >= 10 * bigRound[stor15].field_256 / 100 / bigRound[stor15].field_0
                                bigRound[stor15].field_512 += 10 * bigRound[stor15].field_256 / 100 / bigRound[stor15].field_0
                            if not bigRound[stor15].field_256:
                                if not bigRound[stor15].field_256:
                                    require ext_code.size(RTB1Address)
                                    call RTB1Address.increaseProfit() with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(RTB2Address)
                                    call RTB2Address.increaseProfit() with:
                                         gas gas_remaining wei
                                else:
                                    require 10 * bigRound[stor15].field_256 / bigRound[stor15].field_256 == 10
                                    require 10 * bigRound[stor15].field_256 == (100 * 10 * bigRound[stor15].field_256 / 100) + (10 * bigRound[stor15].field_256 % 100)
                                    if not 10 * bigRound[stor15].field_256 / 100:
                                        require ext_code.size(RTB1Address)
                                        call RTB1Address.increaseProfit() with:
                                             gas gas_remaining wei
                                    else:
                                        require 3 * 10 * bigRound[stor15].field_256 / 100 / 10 * bigRound[stor15].field_256 / 100 == 3
                                        require 3 * 10 * bigRound[stor15].field_256 / 100 == (10 * 3 * 10 * bigRound[stor15].field_256 / 100 / 10) + (3 * 10 * bigRound[stor15].field_256 / 100 % 10)
                                        require ext_code.size(RTB1Address)
                                        call RTB1Address.increaseProfit() with:
                                           value 3 * 10 * bigRound[stor15].field_256 / 100 / 10 wei
                                             gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not 10 * bigRound[stor15].field_256 / 100:
                                        require ext_code.size(RTB2Address)
                                        call RTB2Address.increaseProfit() with:
                                             gas gas_remaining wei
                                    else:
                                        require 7 * 10 * bigRound[stor15].field_256 / 100 / 10 * bigRound[stor15].field_256 / 100 == 7
                                        require 7 * 10 * bigRound[stor15].field_256 / 100 == (10 * 7 * 10 * bigRound[stor15].field_256 / 100 / 10) + (7 * 10 * bigRound[stor15].field_256 / 100 % 10)
                                        require ext_code.size(RTB2Address)
                                        call RTB2Address.increaseProfit() with:
                                           value 7 * 10 * bigRound[stor15].field_256 / 100 / 10 wei
                                             gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not bigRound[stor15].field_256:
                                    require stor13 >= 0
                                else:
                                    require 8 * bigRound[stor15].field_256 / bigRound[stor15].field_256 == 8
                                    require 8 * bigRound[stor15].field_256 == (100 * 8 * bigRound[stor15].field_256 / 100) + (8 * bigRound[stor15].field_256 % 100)
                                    require stor13 + (8 * bigRound[stor15].field_256 / 100) >= 8 * bigRound[stor15].field_256 / 100
                                    stor13 += 8 * bigRound[stor15].field_256 / 100
                                if not bigRound[stor15].field_256:
                                    call arg1 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit lotteryEvent(bigId, smallId, 0, 2, arg1);
                                    bigRound[stor15].field_1280 = 0
                                else:
                                    require 62 * bigRound[stor15].field_256 / bigRound[stor15].field_256 == 62
                                    require 62 * bigRound[stor15].field_256 == (100 * 62 * bigRound[stor15].field_256 / 100) + (62 * bigRound[stor15].field_256 % 100)
                                    call arg1 with:
                                       value 62 * bigRound[stor15].field_256 / 100 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit lotteryEvent(bigId, smallId, 62 * bigRound[stor15].field_256 / 100, 2, arg1);
                                    bigRound[stor15].field_1280 = 62 * bigRound[stor15].field_256 / 100
                                bigId++
                                smallId = 1
                                bigRound[stor15 + 1].field_256 = 0
                            else:
                                require 10 * bigRound[stor15].field_256 / bigRound[stor15].field_256 == 10
                                require 10 * bigRound[stor15].field_256 == (100 * 10 * bigRound[stor15].field_256 / 100) + (10 * bigRound[stor15].field_256 % 100)
                                if not bigRound[stor15].field_256:
                                    require ext_code.size(RTB1Address)
                                    call RTB1Address.increaseProfit() with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(RTB2Address)
                                    call RTB2Address.increaseProfit() with:
                                         gas gas_remaining wei
                                else:
                                    require 10 * bigRound[stor15].field_256 / bigRound[stor15].field_256 == 10
                                    require 10 * bigRound[stor15].field_256 == (100 * 10 * bigRound[stor15].field_256 / 100) + (10 * bigRound[stor15].field_256 % 100)
                                    if not 10 * bigRound[stor15].field_256 / 100:
                                        require ext_code.size(RTB1Address)
                                        call RTB1Address.increaseProfit() with:
                                             gas gas_remaining wei
                                    else:
                                        require 3 * 10 * bigRound[stor15].field_256 / 100 / 10 * bigRound[stor15].field_256 / 100 == 3
                                        require 3 * 10 * bigRound[stor15].field_256 / 100 == (10 * 3 * 10 * bigRound[stor15].field_256 / 100 / 10) + (3 * 10 * bigRound[stor15].field_256 / 100 % 10)
                                        require ext_code.size(RTB1Address)
                                        call RTB1Address.increaseProfit() with:
                                           value 3 * 10 * bigRound[stor15].field_256 / 100 / 10 wei
                                             gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not 10 * bigRound[stor15].field_256 / 100:
                                        require ext_code.size(RTB2Address)
                                        call RTB2Address.increaseProfit() with:
                                             gas gas_remaining wei
                                    else:
                                        require 7 * 10 * bigRound[stor15].field_256 / 100 / 10 * bigRound[stor15].field_256 / 100 == 7
                                        require 7 * 10 * bigRound[stor15].field_256 / 100 == (10 * 7 * 10 * bigRound[stor15].field_256 / 100 / 10) + (7 * 10 * bigRound[stor15].field_256 / 100 % 10)
                                        require ext_code.size(RTB2Address)
                                        call RTB2Address.increaseProfit() with:
                                           value 7 * 10 * bigRound[stor15].field_256 / 100 / 10 wei
                                             gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not bigRound[stor15].field_256:
                                    require stor13 >= 0
                                else:
                                    require 8 * bigRound[stor15].field_256 / bigRound[stor15].field_256 == 8
                                    require 8 * bigRound[stor15].field_256 == (100 * 8 * bigRound[stor15].field_256 / 100) + (8 * bigRound[stor15].field_256 % 100)
                                    require stor13 + (8 * bigRound[stor15].field_256 / 100) >= 8 * bigRound[stor15].field_256 / 100
                                    stor13 += 8 * bigRound[stor15].field_256 / 100
                                if not bigRound[stor15].field_256:
                                    call arg1 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit lotteryEvent(bigId, smallId, 0, 2, arg1);
                                    bigRound[stor15].field_1280 = 0
                                else:
                                    require 62 * bigRound[stor15].field_256 / bigRound[stor15].field_256 == 62
                                    require 62 * bigRound[stor15].field_256 == (100 * 62 * bigRound[stor15].field_256 / 100) + (62 * bigRound[stor15].field_256 % 100)
                                    call arg1 with:
                                       value 62 * bigRound[stor15].field_256 / 100 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit lotteryEvent(bigId, smallId, 62 * bigRound[stor15].field_256 / 100, 2, arg1);
                                    bigRound[stor15].field_1280 = 62 * bigRound[stor15].field_256 / 100
                                bigId++
                                smallId = 1
                                bigRound[stor15 + 1].field_256 = 10 * bigRound[stor15].field_256 / 100
                    stor9 = 0
}



}
