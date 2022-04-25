contract main {


// =======================  Init code  ======================


#
#  - _fallback()
#


// =====================  Runtime code  =====================


address owner;
array of uint256 version;
uint8 decimals;
uint256 tokenCap;
uint256 stor4;
uint256 stor5;
uint256 goal;
uint256 cap;
uint256 stor8;
uint256 stor9;
uint256 sub_94250069;
uint256 tokenPrice;
uint256 stor12;
uint256 sub_93acf6eb;
uint256 sub_f85221b6;
uint256 startTime;
uint256 endTime;
uint8 sub_ead0ebf7;
uint256 stor18;
uint256 minimumPurchase;
uint256 stor20;
uint256 stor21;
uint256 stor22;
uint256 stor23;

function getTokenCap() {
    return tokenCap
}

function decimals() {
    return decimals
}

function endTime() {
    return endTime
}

function cap() {
    return cap
}

function goal() {
    return goal
}

function version() {
    return version[0 len version.length]
}

function getCap() {
    return cap
}

function sub_63dbc756(?) {
    return sub_f85221b6
}

function startTime() {
    return startTime
}

function tokenPrice() {
    return tokenPrice
}

function owner() {
    return owner
}

function sub_93acf6eb(?) {
    return sub_93acf6eb
}

function sub_94250069(?) {
    return sub_94250069
}

function minimumPurchase() {
    return minimumPurchase
}

function getGoal() {
    return goal
}

function tokenCap() {
    return tokenCap
}

function sub_ead0ebf7(?) {
    return sub_ead0ebf7
}

function getDecimals() {
    return decimals
}

function sub_f85221b6(?) {
    return sub_f85221b6
}

function destroy() {
    require msg.sender == owner
    require block.timestamp >= endTime + (24 * 3600 * sub_ead0ebf7 % 16777216)
    require not eth.balance(this.address)
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function hasStarted() {
    return block.timestamp >= startTime
}

function sub_5add942b(?) {
    return (endTime < block.timestamp)
}

function sub_7d10f014(?) {
    return stor20, stor21, stor22, stor23
}

function sub_ffd06e05(?) {
    require msg.sender == owner
    require arg1 < 5 * 10^16
    sub_f85221b6 = arg1
}

function sub_83a5183e(?) {
    if block.timestamp < startTime:
        return block.timestamp >= startTime
    return endTime >= block.timestamp
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_076b07eb(?) {
    if not cap:
        return not cap
    if arg1 >= cap:
        return (arg1 < cap)
    require cap + stor8 >= cap
    require arg1 + arg2 >= arg1
    return arg1 + arg2 <= cap + stor8
}

function canMint(uint256 arg1, uint256 arg2) {
    if not tokenCap:
        return not tokenCap
    if arg1 >= tokenCap:
        return (arg1 < tokenCap)
    require arg1 + arg2 >= arg1
    return arg1 + arg2 <= stor9
}

function extendEndTime(uint256 arg1) {
    require msg.sender == owner
    require endTime >= block.timestamp
    require arg1 < 168 * 24 * 3600
    if arg1 > 0:
        emit 0x5c60b4c2: endTime
        require endTime + arg1 >= endTime
        endTime += arg1
    return 1
}

function sub_24d5e0a3(?) {
    if not arg2:
        if arg1 >= minimumPurchase:
            return arg1 >= minimumPurchase
        return arg1 <= 5 * 10^16
    require sub_f85221b6 <= arg1
    if arg1 - sub_f85221b6 >= minimumPurchase:
        return arg1 - sub_f85221b6 >= minimumPurchase
    return arg1 - sub_f85221b6 <= 5 * 10^16
}

function sub_6d5f28ed(?) {
    require msg.sender == owner
    require arg1 > 0
    emit LogPriceChanged(tokenPrice, arg1);
    tokenPrice = arg1
    if decimals >= 18:
        sub_93acf6eb = tokenPrice
    else:
        if not tokenPrice:
            sub_93acf6eb = 0
        else:
            require tokenPrice
            require tokenPrice * stor12 / tokenPrice == stor12
            sub_93acf6eb = tokenPrice * stor12
}

function setMinimumPurchase(uint256 arg1) {
    require msg.sender == owner
    if stor20:
        require stor20 >= arg1
    emit 0xf8aa244d: stor18, arg1
    stor18 = arg1
    if not arg1:
        require sub_94250069
        minimumPurchase = 0 / sub_94250069
    else:
        require arg1
        require 10^18 * arg1 / arg1 == 10^18
        require sub_94250069
        minimumPurchase = 10^18 * arg1 / sub_94250069
    return 1
}

function sub_e5b1a3fe(?) {
    require msg.sender == owner
    require block.timestamp < startTime
    require block.timestamp <= startTime
    if arg1 < 0:
        require -arg1 <= startTime
        require startTime + arg1 >= block.timestamp
        startTime += arg1
        require -arg1 <= endTime
        endTime += arg1
        emit 0xda0d6a0b: startTime, endTime
    else:
        if arg1 > 0:
            require arg1 < 168 * 24 * 3600
            require endTime + arg1 >= endTime
            endTime += arg1
            require startTime + arg1 >= startTime
            startTime += arg1
            emit 0xda0d6a0b: startTime, endTime
    return 1
}

function sub_f5014c1c(?) {
    require msg.sender == owner
    require endTime >= block.timestamp
    require arg1 > 0
    if decimals <= 18:
        emit 0x8be49810: sub_94250069, arg1
        sub_94250069 = arg1
    else:
        require stor12
        emit 0x8be49810: sub_94250069 / stor12, arg1
        if not arg1:
            sub_94250069 = 0
        else:
            require arg1
            require arg1 * stor12 / arg1 == stor12
            sub_94250069 = arg1 * stor12
    if not stor4:
        require sub_94250069
        goal = 0 / sub_94250069
    else:
        require stor4
        require 10^18 * stor4 / stor4 == 10^18
        require sub_94250069
        goal = 10^18 * stor4 / sub_94250069
    if not stor5:
        require sub_94250069
        cap = 0 / sub_94250069
    else:
        require stor5
        require 10^18 * stor5 / stor5 == 10^18
        require sub_94250069
        cap = 10^18 * stor5 / sub_94250069
    if not stor18:
        require sub_94250069
        minimumPurchase = 0 / sub_94250069
    else:
        require stor18
        require 10^18 * stor18 / stor18 == 10^18
        require sub_94250069
        minimumPurchase = 10^18 * stor18 / sub_94250069
    if not stor20:
        require sub_94250069
        stor21 = 0 / sub_94250069
    else:
        require stor20
        require 10^18 * stor20 / stor20 == 10^18
        require sub_94250069
        stor21 = 10^18 * stor20 / sub_94250069
}

function sub_6bcf4451(?) {
    require msg.sender == owner
    if arg1:
        require arg1 > 0
        require arg2 > 0
    else:
        if arg2:
            require arg1 > 0
            require arg2 > 0
    if not arg1:
        require sub_94250069
        if decimals >= 18:
            stor20 = arg1
            stor21 = 0 / sub_94250069
            stor22 = arg2
            stor23 = arg2
        else:
            if not arg2:
                stor20 = arg1
                stor21 = 0 / sub_94250069
                stor22 = arg2
                stor23 = 0
            else:
                require arg2
                require arg2 * stor12 / arg2 == stor12
                stor20 = arg1
                stor21 = 0 / sub_94250069
                stor22 = arg2
                stor23 = arg2 * stor12
    else:
        require arg1
        require 10^18 * arg1 / arg1 == 10^18
        require sub_94250069
        if decimals >= 18:
            stor20 = arg1
            stor21 = 10^18 * arg1 / sub_94250069
            stor22 = arg2
            stor23 = arg2
        else:
            if not arg2:
                stor20 = arg1
                stor21 = 10^18 * arg1 / sub_94250069
                stor22 = arg2
                stor23 = 0
            else:
                require arg2
                require arg2 * stor12 / arg2 == stor12
                stor20 = arg1
                stor21 = 10^18 * arg1 / sub_94250069
                stor22 = arg2
                stor23 = arg2 * stor12
}

function sub_84465d01(?) {
    if not arg2:
        if stor21 <= 0:
            if not arg1:
                if sub_93acf6eb:
                    return (0 / sub_93acf6eb)
            else:
                if arg1:
                    if arg1 * sub_94250069 / arg1 == sub_94250069:
                        if sub_93acf6eb:
                            return (arg1 * sub_94250069 / sub_93acf6eb)
        else:
            if arg1 >= stor21:
                if not arg1:
                    if stor23:
                        return (0 / stor23)
                else:
                    if arg1:
                        if arg1 * sub_94250069 / arg1 == sub_94250069:
                            if stor23:
                                return (arg1 * sub_94250069 / stor23)
            else:
                if not arg1:
                    if sub_93acf6eb:
                        return (0 / sub_93acf6eb)
                else:
                    if arg1:
                        if arg1 * sub_94250069 / arg1 == sub_94250069:
                            if sub_93acf6eb:
                                return (arg1 * sub_94250069 / sub_93acf6eb)
    else:
        if sub_f85221b6 <= arg1:
            if stor21 <= 0:
                if not arg1 - sub_f85221b6:
                    if sub_93acf6eb:
                        return (0 / sub_93acf6eb)
                else:
                    if arg1 - sub_f85221b6:
                        if (arg1 * sub_94250069) - (sub_f85221b6 * sub_94250069) / arg1 - sub_f85221b6 == sub_94250069:
                            if sub_93acf6eb:
                                return ((arg1 * sub_94250069) - (sub_f85221b6 * sub_94250069) / sub_93acf6eb)
            else:
                if arg1 - sub_f85221b6 >= stor21:
                    if not arg1 - sub_f85221b6:
                        if stor23:
                            return (0 / stor23)
                    else:
                        if arg1 - sub_f85221b6:
                            if (arg1 * sub_94250069) - (sub_f85221b6 * sub_94250069) / arg1 - sub_f85221b6 == sub_94250069:
                                if stor23:
                                    return ((arg1 * sub_94250069) - (sub_f85221b6 * sub_94250069) / stor23)
                else:
                    if not arg1 - sub_f85221b6:
                        if sub_93acf6eb:
                            return (0 / sub_93acf6eb)
                    else:
                        if arg1 - sub_f85221b6:
                            if (arg1 * sub_94250069) - (sub_f85221b6 * sub_94250069) / arg1 - sub_f85221b6 == sub_94250069:
                                if sub_93acf6eb:
                                    return ((arg1 * sub_94250069) - (sub_f85221b6 * sub_94250069) / sub_93acf6eb)
    revert
}



}
