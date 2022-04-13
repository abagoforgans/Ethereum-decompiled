contract main {


// =======================  Init code  ======================


mapping of uint256 stor1;
array of uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
address stor7;
uint256 stor8;
uint256 stor9;
address stor10;
address stor11;
uint256 stor12;
uint256 stor13;
uint256 stor3F5;
uint256 stor3F6;
uint256 stor3F7;
uint256 stor3F8;
uint256 stor3F9;
uint256 stor3FA;
uint256 stor3FB;

function _fallback() payable {
    bool(stor2.length) = 0
    stor2.length.field_1 = 3
    stor2.length.field_8 = '1.0' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor3 = 1
    stor4 = 10^12
    stor5 = 10^15
    stor6 = 10^18
    stor8 = 0
    stor9 = 0
    stor10 = 0x9ad7aebe8811b0e3071c627403b38803d91bc1ac
    stor11 = 0xc96c3da8bc6381db296959ec3e1fe1e430a4b65b
    stor12 = 5000000 * 10^18
    stor3F7 = 0
    stor3F8 = 0
    stor3F9 = 0
    stor3FA = 0
    stor3FB = 10000 * stor6
    require not msg.value
    stor7 = msg.sender
    stor1[stor11] = 2000000 * 10^18
    stor1[stor10] = 3000000 * 10^18
    stor8 = block.timestamp
    stor9 = block.timestamp + (2880 * 24 * 3600)
    stor3F7 = 0
    stor3F5 = 0
    stor3F6 = 0
    stor13 = block.hash(block.number - 1)
    stor3FA = block.timestamp + (720 * 24 * 3600)
    return code.data[946 len 7846]
}



// =====================  Runtime code  =====================


const name = 'Lottery Coin'

const gcExchangeRate = 1000

const decimals = 18

const symbol = 'SaberLC'

const AMOUNT_TeamSupport = 2000000 * 10^18

const ICOPERIOD = (2880 * 24 * 3600)

const AMOUNT_ICO = 5000000 * 10^18

const LOCKPERIOD = (8760 * 24 * 3600)

const SHAREPERIOD = (720 * 24 * 3600)

const LOCKAMOUNT = 3000000 * 10^18


uint256 totalSupply;
mapping of struct balanceOfEth;
array of uint256 version;
uint256 stor5;
uint256 stor6;
address creatorAddress;
uint256 gcStartTime;
uint256 gcEndTime;
address stor10;
address stor11;
uint256 gcSupply;
array of uint256 stor13;
array of uint256 stor14;
uint256 stor3F5;
uint256 stor3F6;
uint256 totalLotteryValue;
uint256 currentLotteryValue;
uint256 currentProfit;
uint256 shareTime;
uint256 shareLimit;

function creator() {
    return creatorAddress
}

function gcSupply() {
    return gcSupply
}

function gcStartTime() {
    return gcStartTime
}

function totalSupply() {
    return totalSupply
}

function shareLimit() {
    return shareLimit
}

function balanceOfEth(address arg1) {
    return balanceOfEth[address(arg1)].field_512
}

function gcEndTime() {
    return gcEndTime
}

function shareTime() {
    return shareTime
}

function version() {
    return version[0 len version.length]
}

function balanceOf(address arg1) {
    return balanceOfEth[address(arg1)].field_0
}

function currentProfit() {
    return currentProfit
}

function currentLotteryValue() {
    return currentLotteryValue
}

function totalLotteryValue() {
    return totalLotteryValue
}

function balanceOfLockTime(address arg1) {
    return balanceOfEth[address(arg1)].field_256
}

function endThisContact() {
    if creatorAddress != msg.sender:
    if balanceOfEth[address(msg.sender)].field_0 < 2500 * 3600 * stor6:
    selfdestruct(creatorAddress)
}

function unlockAccount() {
    balanceOfEth[address(msg.sender)].field_256 = 0
}

function lockAccount() {
    balanceOfEth[address(msg.sender)].field_256 = block.timestamp
}

function Add_totalLotteryValue() payable {
    if msg.value > 0:
        totalLotteryValue += msg.value
}

function transfer(address arg1, uint256 arg2) {
    if balanceOfEth[address(msg.sender)].field_0 < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if balanceOfEth[address(msg.sender)].field_256:
        return 0
    if msg.sender == stor10:
        return 0
    balanceOfEth[address(msg.sender)].field_0 -= arg2
    if arg1 != this.address:
        balanceOfEth[address(arg1)].field_0 += arg2
    else:
        balanceOfEth[stor7].field_0 += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function clearLC() {
    if block.timestamp < gcEndTime:
        if balanceOfEth[address(msg.sender)].field_0 > 0:
            if not balanceOfEth[address(msg.sender)].field_256:
                if msg.sender == stor10:
                    require block.timestamp >= gcStartTime + (8760 * 24 * 3600)
                gcSupply += balanceOfEth[address(msg.sender)].field_0
                balanceOfEth[address(msg.sender)].field_0 = 0
                call msg.sender with:
                   value 70 * balanceOfEth[address(msg.sender)].field_0 / 100 / 1000 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
}

function buyLC() payable {
    if block.timestamp >= gcEndTime:
        balanceOfEth[stor11].field_0 += gcSupply
        call stor11 with:
           value (-699 * gcSupply) + 3495000000 * 10^18 / 1000 / 1000 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        gcSupply = 0
    else:
        if msg.value >= 0:
            require gcSupply >= 1000 * msg.value
            gcSupply += -1000 * msg.value
            balanceOfEth[address(msg.sender)].field_0 += 1000 * msg.value
        call creatorAddress with:
           value 30 * msg.value / 100 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function _fallback() payable {
    if block.timestamp >= gcEndTime:
        balanceOfEth[stor11].field_0 += gcSupply
        call stor11 with:
           value (-699 * gcSupply) + 3495000000 * 10^18 / 1000 / 1000 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        gcSupply = 0
    else:
        if msg.value >= 0:
            require gcSupply >= 1000 * msg.value
            gcSupply += -1000 * msg.value
            balanceOfEth[address(msg.sender)].field_0 += 1000 * msg.value
        call creatorAddress with:
           value 30 * msg.value / 100 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function addHash(bytes32 arg1) {
    if stor3F6 + 1 == stor3F5:
        stor3F6++
        require stor3F6 < 1000
        stor13[stor3F6] = arg1
        if stor3F5 >= 999:
            stor3F5 = 0
        else:
            stor3F5++
    else:
        if stor3F5:
            if 999 > stor3F6:
                stor3F6++
            else:
                stor3F6 = 0
            require stor3F6 < 1000
            stor13[stor3F6] = arg1
        else:
            if stor3F6 != 999:
                if 999 > stor3F6:
                    stor3F6++
                else:
                    stor3F6 = 0
                require stor3F6 < 1000
                stor13[stor3F6] = arg1
            else:
                stor3F6 = 0
                require stor3F6 < 1000
                stor13[stor3F6] = arg1
                stor3F5 = 1
}

function getShare() {
    if shareTime + (720 * 24 * 3600) < block.timestamp:
        # nil
    else:
        if balanceOfEth[address(msg.sender)].field_256:
            if balanceOfEth[address(msg.sender)].field_256 + (720 * 24 * 3600) <= shareTime:
                if currentLotteryValue < totalLotteryValue:
                    if balanceOfEth[address(msg.sender)].field_0 >= shareLimit:
                        require stor6
                        if balanceOfEth[address(msg.sender)].field_0 / stor6 * currentProfit / 1000 <= totalLotteryValue:
                            totalLotteryValue -= balanceOfEth[address(msg.sender)].field_0 / stor6 * currentProfit / 1000
                            call msg.sender with:
                               value balanceOfEth[address(msg.sender)].field_0 / stor6 * currentProfit / 1000 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            totalLotteryValue = 0
                            call msg.sender with:
                               value totalLotteryValue wei
                                 gas 2300 * is_zero(value) wei
                        require ext_call.success
                        balanceOfEth[address(msg.sender)].field_256 = block.timestamp
}

function buyLottery(uint8 arg1) payable {
    require msg.value >= 10 * stor5
    require arg1 >= 0
    require arg1 <= 9
    require stor3F6 < 1000
    if stor13[stor3F6] != block.hash(block.number - 1):
        if stor3F6 + 1 == stor3F5:
            stor3F6++
            require stor3F6 < 1000
            stor13[stor3F6] = block.hash(block.number - 1)
            if stor3F5 >= 999:
                stor3F5 = 0
            else:
                stor3F5++
        else:
            if stor3F5:
                if 999 > stor3F6:
                    stor3F6++
                else:
                    stor3F6 = 0
                require stor3F6 < 1000
                stor13[stor3F6] = block.hash(block.number - 1)
            else:
                if stor3F6 != 999:
                    if 999 > stor3F6:
                        stor3F6++
                    else:
                        stor3F6 = 0
                    require stor3F6 < 1000
                    stor13[stor3F6] = block.hash(block.number - 1)
                else:
                    stor3F6 = 0
                    require stor3F6 < 1000
                    stor13[stor3F6] = block.hash(block.number - 1)
                    stor3F5 = 1
    balanceOfEth[address(msg.sender)].field_512 += msg.value
    balanceOfEth[address(msg.sender)].field_768 = stor3F6
    balanceOfEth[address(msg.sender)].field_1280 = arg1
    balanceOfEth[address(msg.sender)].field_1024 = block.hash(block.number - 1)
    totalLotteryValue += msg.value
    currentLotteryValue += msg.value
}

function openLottery() {
    require stor3F6 < 1000
    if stor13[stor3F6] != block.hash(block.number - 1):
        if stor3F6 + 1 == stor3F5:
            stor3F6++
            require stor3F6 < 1000
            stor13[stor3F6] = block.hash(block.number - 1)
            if stor3F5 >= 999:
                stor3F5 = 0
            else:
                stor3F5++
        else:
            if stor3F5:
                if 999 > stor3F6:
                    stor3F6++
                else:
                    stor3F6 = 0
                require stor3F6 < 1000
                stor13[stor3F6] = block.hash(block.number - 1)
            else:
                if stor3F6 != 999:
                    if 999 > stor3F6:
                        stor3F6++
                    else:
                        stor3F6 = 0
                    require stor3F6 < 1000
                    stor13[stor3F6] = block.hash(block.number - 1)
                else:
                    stor3F6 = 0
                    require stor3F6 < 1000
                    stor13[stor3F6] = block.hash(block.number - 1)
                    stor3F5 = 1
    if balanceOfEth[address(msg.sender)].field_512 >= 10 * stor5:
        if balanceOfEth[address(msg.sender)].field_1024 != block.hash(block.number - 1):
            currentLotteryValue -= balanceOfEth[address(msg.sender)].field_512
            if balanceOfEth[address(msg.sender)].field_1280 < 0:
                balanceOfEth[address(msg.sender)].field_512 = 0
            else:
                if balanceOfEth[address(msg.sender)].field_1280 > 9:
                    balanceOfEth[address(msg.sender)].field_512 = 0
                else:
                    require balanceOfEth[address(msg.sender)].field_768 < 1000
                    if balanceOfEth[address(msg.sender)].field_1024 != stor13[stor1[address(msg.sender)].field_768]:
                        balanceOfEth[address(msg.sender)].field_512 = 0
                    else:
                        if balanceOfEth[address(msg.sender)].field_768 + 1 > 999:
                            if stor13.length % 10 != balanceOfEth[address(msg.sender)].field_1280:
                                balanceOfEth[address(msg.sender)].field_512 = 0
                            else:
                                if 90 * balanceOfEth[address(msg.sender)].field_512 / 100 <= totalLotteryValue:
                                    totalLotteryValue -= 90 * balanceOfEth[address(msg.sender)].field_512 / 100
                                    balanceOfEth[address(msg.sender)].field_512 = 0
                                    call msg.sender with:
                                       value 90 * balanceOfEth[address(msg.sender)].field_512 / 100 wei
                                         gas 2300 * is_zero(value) wei
                                else:
                                    totalLotteryValue = 0
                                    balanceOfEth[address(msg.sender)].field_512 = 0
                                    call msg.sender with:
                                       value totalLotteryValue wei
                                         gas 2300 * is_zero(value) wei
                                require ext_call.success
                        else:
                            require balanceOfEth[address(msg.sender)].field_768 + 1 < 1000
                            if stor14[stor1[address(msg.sender)].field_768] % 10 != balanceOfEth[address(msg.sender)].field_1280:
                                balanceOfEth[address(msg.sender)].field_512 = 0
                            else:
                                if 90 * balanceOfEth[address(msg.sender)].field_512 / 100 <= totalLotteryValue:
                                    totalLotteryValue -= 90 * balanceOfEth[address(msg.sender)].field_512 / 100
                                    balanceOfEth[address(msg.sender)].field_512 = 0
                                    call msg.sender with:
                                       value 90 * balanceOfEth[address(msg.sender)].field_512 / 100 wei
                                         gas 2300 * is_zero(value) wei
                                else:
                                    totalLotteryValue = 0
                                    balanceOfEth[address(msg.sender)].field_512 = 0
                                    call msg.sender with:
                                       value totalLotteryValue wei
                                         gas 2300 * is_zero(value) wei
                                require ext_call.success
}



}
