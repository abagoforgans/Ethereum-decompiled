contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 12895]




// =====================  Runtime code  =====================


#
#  - selectWinner(uint256 arg1)
#  - process(address arg1, uint256 arg2)
#  - processWithITG(address arg1, uint256 arg2)
#
address owner;
address executorAddress;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint8 stor6;
uint8 stor6; offset 8
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint256 stor20;
uint256 stor21;
uint256 stor22;
uint256 stor23;
uint256 stor24;
uint256 stor25;
uint256 stor26;
uint256 stor27;
array of struct participants;
mapping of uint256 winners;
mapping of uint256 tokTakers;
mapping of uint256 winPrizes;
mapping of uint256 tokPrizes;

function tokTakers(uint256 arg1, address arg2) {
    return tokTakers[arg1][arg2]
}

function participants(uint256 arg1) {
    require arg1 < participants.length
    return participants[arg1].field_0, participants[arg1].field_256, participants[arg1].field_512
}

function owner() {
    return owner
}

function tokPrizes(uint256 arg1) {
    return tokPrizes[arg1]
}

function winners(uint256 arg1, address arg2) {
    return winners[arg1][arg2]
}

function executor() {
    return executorAddress
}

function winPrizes(uint256 arg1) {
    return winPrizes[arg1]
}

function _fallback() payable {
    revert
}

function r() {
    return stor25, stor26, stor27
}

function d() {
    return stor2, stor3, stor4, stor5
}

function f() {
    return stor11, stor12, stor13, stor14, stor15
}

function getHour(uint256 arg1) {
    return uint8(arg1 / 60 / 60 % 24)
}

function p() {
    return stor16, stor17, stor18, stor19, stor20, stor21, stor22, stor23, stor24
}

function charityAmtToCharity() {
    require msg.sender == owner
    stor10 = 0
    return stor10
}

function setOwner(address arg1) {
    if owner:
        require owner == msg.sender
    owner = arg1
}

function leapYearsBefore(uint256 arg1) {
    return ((arg1 - 1 / 4) - (arg1 - 1 / 100) + (arg1 - 1 / 400))
}

function setExecutor(address arg1) {
    if executorAddress:
        if owner != msg.sender:
            require executorAddress == msg.sender
    executorAddress = arg1
}

function c() {
    require uint8(stor6.field_0) <= 3
    require uint8(stor6.field_8) <= 1
    return uint8(stor6.field_0), uint8(stor6.field_0), stor7, stor8, stor9, stor10
}

function lossToCharity(uint256 arg1) {
    require msg.sender == owner
    require arg1 < stor2 - 1
    tokPrizes[arg1] = 0
    winPrizes[arg1] = 0
    return winPrizes[arg1]
}

function setRangeGameAttr(uint256 arg1, uint256 arg2, uint256 arg3) {
    if owner != msg.sender:
        require msg.sender == executorAddress
    stor25 = arg1
    stor26 = arg2
    stor27 = arg3
}

function isLeapYear(uint16 arg1) {
    if not arg1 % 4:
        if uint16(arg1 % 100):
            return 1
        if not uint16(arg1 % 400):
            return 1
        else:
            return 0
    else:
        return 0
}

function distributeTokenSale(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require msg.sender == owner
    require stor7 + arg1 >= stor7
    stor7 += arg1
    require stor8 + arg2 >= stor8
    stor8 += arg2
    require stor9 + arg3 >= stor9
    stor9 += arg3
    require stor10 + arg4 >= stor10
    stor10 += arg4
}

function setPriceAttr(uint8 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10) {
    if owner != msg.sender:
        require msg.sender == executorAddress
    require arg1 <= 1
    uint8(stor6.field_8) = arg1
    stor16 = arg2
    stor17 = arg3
    stor18 = arg4
    stor19 = arg5
    stor20 = arg6
    stor21 = arg7
    stor22 = arg8
    stor23 = arg9
    stor24 = arg10
}

function getDaysInMonth(uint8 arg1, uint16 arg2) {
    if arg1 == 1:
        return 31
    if arg1 == 3:
        return 31
    if arg1 == 5:
        return 31
    if arg1 == 7:
        return 31
    if arg1 == 8:
        return 31
    if arg1 == 10:
        return 31
    if arg1 == 12:
        return 31
    if arg1 == 4:
        return 30
    if arg1 == 6:
        return 30
    if arg1 == 9:
        return 30
    if arg1 == 11:
        return 30
    if not arg2 % 4:
        if uint16(arg2 % 100):
            return 29
        if not uint16(arg2 % 400):
            return 29
    return 28
}

function getYear(uint256 arg1) {
    s = (arg1 / 8760 * 24 * 3600) + 1970
    idx = (24 * 3600 * uint16((arg1 / 8760 * 24 * 3600) + 1970) - 1 / 4) + (-86400 * uint16((arg1 / 8760 * 24 * 3600) + 1970) - 1 / 100) + (24 * 3600 * uint16((arg1 / 8760 * 24 * 3600) + 1970) - 1 / 400) + (8760 * 24 * 3600 * uint16(arg1 / 8760 * 24 * 3600)) - (11448 * 24 * 3600)
    while idx > arg1:
        if not s - 1 % 4:
            if uint16(uint16(s - 1) % 100):
                s = s - 1
                idx = idx - (8784 * 24 * 3600)
                continue 
            if not uint16(uint16(s - 1) % 400):
                s = s - 1
                idx = idx - (8784 * 24 * 3600)
                continue 
        s = s - 1
        idx = idx - (8760 * 24 * 3600)
        continue 
    return uint16(s)
}

function getPrize(address arg1) {
    require msg.sender == owner
    require winners[stor2][address(arg1)] + winners[stor2 - 1][address(arg1)] >= winners[stor2][address(arg1)]
    require tokTakers[stor2][address(arg1)] + tokTakers[stor2 - 1][address(arg1)] >= tokTakers[stor2][address(arg1)]
    require winPrizes[stor2] - winners[stor2][address(arg1)] <= winPrizes[stor2]
    winPrizes[stor2] -= winners[stor2][address(arg1)]
    require tokPrizes[stor2] - tokTakers[stor2][address(arg1)] <= tokPrizes[stor2]
    tokPrizes[stor2] -= tokTakers[stor2][address(arg1)]
    winners[stor2][address(arg1)] = 0
    tokTakers[stor2][address(arg1)] = 0
    require winPrizes[stor2 - 1] - winners[stor2 - 1][address(arg1)] <= winPrizes[stor2 - 1]
    winPrizes[stor2 - 1] -= winners[stor2 - 1][address(arg1)]
    require tokPrizes[stor2 - 1] - tokTakers[stor2 - 1][address(arg1)] <= tokPrizes[stor2 - 1]
    tokPrizes[stor2 - 1] -= tokTakers[stor2 - 1][address(arg1)]
    winners[stor2 - 1][address(arg1)] = 0
    tokTakers[stor2 - 1][address(arg1)] = 0
    return winners[stor2][address(arg1)] + winners[stor2 - 1][address(arg1)], 
           tokTakers[stor2][address(arg1)] + tokTakers[stor2 - 1][address(arg1)]
}

function getDay(uint256 arg1) {
    mem[64] = 320
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    s = (arg1 / 8760 * 24 * 3600) + 1970
    idx = (24 * 3600 * uint16((arg1 / 8760 * 24 * 3600) + 1970) - 1 / 4) + (-86400 * uint16((arg1 / 8760 * 24 * 3600) + 1970) - 1 / 100) + (24 * 3600 * uint16((arg1 / 8760 * 24 * 3600) + 1970) - 1 / 400) + (8760 * 24 * 3600 * uint16(arg1 / 8760 * 24 * 3600)) - (11448 * 24 * 3600)
    while idx > arg1:
        if not s - 1 % 4:
            if uint16(uint16(s - 1) % 100):
                s = s - 1
                idx = idx - (8784 * 24 * 3600)
                continue 
            if not uint16(uint16(s - 1) % 400):
                s = s - 1
                idx = idx - (8784 * 24 * 3600)
                continue 
        s = s - 1
        idx = idx - (8760 * 24 * 3600)
        continue 
    mem[96] = uint16(s)
    t = 0
    idx = 1
    t = (24 * 3600 * uint16(s) - 1 / 4) + (-86400 * uint16(s) - 1 / 100) + (24 * 3600 * uint16(s) - 1 / 400) + (8760 * 24 * 3600 * uint16(uint16(s) - 1970)) - (11448 * 24 * 3600)
    while uint8(idx) <= 12:
        if uint8(idx) == 1:
            if t + (744 * 24 * 3600) <= arg1:
                t = 744 * 24 * 3600
                idx = idx + 1
                t = t + (744 * 24 * 3600)
                continue 
            mem[128] = uint8(idx)
            if uint8(var75002) == 1:
                if var72001:
                    if uint8(var72007) > 31:
                        return 0
                else:
                    if uint8(var72004) == 5:
                        if uint8(var72007) > 31:
                            return 0
                    else:
                        if uint8(var72004) == 7:
                            if uint8(var72007) > 31:
                                return 0
                        else:
                            if uint8(var72004) == 8:
                                if uint8(var72007) > 31:
                                    return 0
                            else:
                                if uint8(var72004) == 10:
                                    if uint8(var72007) > 31:
                                        return 0
                                else:
                                    if uint8(var72004) == 12:
                                        if uint8(var72007) > 31:
                                            return 0
                                    else:
                                        if uint8(var72004) == 4:
                                            if uint8(var72007) > 30:
                                                return 0
                                        else:
                                            if uint8(var72004) == 6:
                                                if uint8(var72007) > 30:
                                                    return 0
                                            else:
                                                if uint8(var72004) == 9:
                                                    if uint8(var72007) > 30:
                                                        return 0
                                                else:
                                                    if uint8(var72004) == 11:
                                                        if uint8(var72007) > 30:
                                                            return 0
                                                    else:
                                                        if var72003 % 4:
                                                            if uint8(var72007) > 28:
                                                                return 0
                                                        else:
                                                            if uint16(uint16(var72003) % 100):
                                                                if uint8(var72007) > 29:
                                                                    return 0
                                                            else:
                                                                if not uint16(uint16(var72003) % 400):
                                                                    if uint8(var72007) > 29:
                                                                        return 0
                                                                else:
                                                                    if uint8(var72007) > 28:
                                                                        return 0
                if var72009 + (24 * 3600) > arg1:
                    return uint8(var72007)
                if uint8(idx) == 1:
                    var72001 = 0 == 1
                    var72003 = uint16(s)
                    var72004 = uint8(idx)
                    var72007 = var72007 + 1
                    var72009 = var72009 + (24 * 3600)
                    continue 
                var72001 = 0 == 3
                var72003 = uint16(s)
                var72004 = uint8(idx)
                var72007 = var72007 + 1
                var72009 = var72009 + (24 * 3600)
                continue 
            if var78001:
                if uint8(var78007) > 31:
                    return 0
            else:
                if uint8(var78004) == 5:
                    if uint8(var78007) > 31:
                        return 0
                else:
                    if uint8(var78004) == 7:
                        if uint8(var78007) > 31:
                            return 0
                    else:
                        if uint8(var78004) == 8:
                            if uint8(var78007) > 31:
                                return 0
                        else:
                            if uint8(var78004) == 10:
                                if uint8(var78007) > 31:
                                    return 0
                            else:
                                if uint8(var78004) == 12:
                                    if uint8(var78007) > 31:
                                        return 0
                                else:
                                    if uint8(var78004) == 4:
                                        if uint8(var78007) > 30:
                                            return 0
                                    else:
                                        if uint8(var78004) == 6:
                                            if uint8(var78007) > 30:
                                                return 0
                                        else:
                                            if uint8(var78004) == 9:
                                                if uint8(var78007) > 30:
                                                    return 0
                                            else:
                                                if uint8(var78004) == 11:
                                                    if uint8(var78007) > 30:
                                                        return 0
                                                else:
                                                    if var78003 % 4:
                                                        if uint8(var78007) > 28:
                                                            return 0
                                                    else:
                                                        if uint16(uint16(var78003) % 100):
                                                            if uint8(var78007) > 29:
                                                                return 0
                                                        else:
                                                            if not uint16(uint16(var78003) % 400):
                                                                if uint8(var78007) > 29:
                                                                    return 0
                                                            else:
                                                                if uint8(var78007) > 28:
                                                                    return 0
            if var78009 + (24 * 3600) > arg1:
                return uint8(var78007)
            if uint8(idx) == 1:
                var78001 = 0 == 1
                var78003 = uint16(s)
                var78004 = uint8(idx)
                var78007 = var78007 + 1
                var78009 = var78009 + (24 * 3600)
                continue 
            var77001 = 0 == 1
            var77003 = uint16(s)
            var77004 = uint8(idx)
            var77007 = var78007 + 1
            var77009 = var78009 + (24 * 3600)
            continue 
        if uint8(idx) == 3:
            if t + (744 * 24 * 3600) <= arg1:
                t = 744 * 24 * 3600
                idx = idx + 1
                t = t + (744 * 24 * 3600)
                continue 
            mem[128] = uint8(idx)
            if uint8(var76002) == 1:
                if var73001:
                    if uint8(var73007) > 31:
                        return 0
                else:
                    if uint8(var73004) == 5:
                        if uint8(var73007) > 31:
                            return 0
                    else:
                        if uint8(var73004) == 7:
                            if uint8(var73007) > 31:
                                return 0
                        else:
                            if uint8(var73004) == 8:
                                if uint8(var73007) > 31:
                                    return 0
                            else:
                                if uint8(var73004) == 10:
                                    if uint8(var73007) > 31:
                                        return 0
                                else:
                                    if uint8(var73004) == 12:
                                        if uint8(var73007) > 31:
                                            return 0
                                    else:
                                        if uint8(var73004) == 4:
                                            if uint8(var73007) > 30:
                                                return 0
                                        else:
                                            if uint8(var73004) == 6:
                                                if uint8(var73007) > 30:
                                                    return 0
                                            else:
                                                if uint8(var73004) == 9:
                                                    if uint8(var73007) > 30:
                                                        return 0
                                                else:
                                                    if uint8(var73004) == 11:
                                                        if uint8(var73007) > 30:
                                                            return 0
                                                    else:
                                                        if var73003 % 4:
                                                            if uint8(var73007) > 28:
                                                                return 0
                                                        else:
                                                            if uint16(uint16(var73003) % 100):
                                                                if uint8(var73007) > 29:
                                                                    return 0
                                                            else:
                                                                if not uint16(uint16(var73003) % 400):
                                                                    if uint8(var73007) > 29:
                                                                        return 0
                                                                else:
                                                                    if uint8(var73007) > 28:
                                                                        return 0
                if var73009 + (24 * 3600) > arg1:
                    return uint8(var73007)
                if uint8(idx) == 1:
                    var73001 = 0 == 1
                    var73003 = uint16(s)
                    var73004 = uint8(idx)
                    var73007 = var73007 + 1
                    var73009 = var73009 + (24 * 3600)
                    continue 
                var73001 = 0 == 3
                var73003 = uint16(s)
                var73004 = uint8(idx)
                var73007 = var73007 + 1
                var73009 = var73009 + (24 * 3600)
                continue 
            if var79001:
                if uint8(var79007) > 31:
                    return 0
            else:
                if uint8(var79004) == 5:
                    if uint8(var79007) > 31:
                        return 0
                else:
                    if uint8(var79004) == 7:
                        if uint8(var79007) > 31:
                            return 0
                    else:
                        if uint8(var79004) == 8:
                            if uint8(var79007) > 31:
                                return 0
                        else:
                            if uint8(var79004) == 10:
                                if uint8(var79007) > 31:
                                    return 0
                            else:
                                if uint8(var79004) == 12:
                                    if uint8(var79007) > 31:
                                        return 0
                                else:
                                    if uint8(var79004) == 4:
                                        if uint8(var79007) > 30:
                                            return 0
                                    else:
                                        if uint8(var79004) == 6:
                                            if uint8(var79007) > 30:
                                                return 0
                                        else:
                                            if uint8(var79004) == 9:
                                                if uint8(var79007) > 30:
                                                    return 0
                                            else:
                                                if uint8(var79004) == 11:
                                                    if uint8(var79007) > 30:
                                                        return 0
                                                else:
                                                    if var79003 % 4:
                                                        if uint8(var79007) > 28:
                                                            return 0
                                                    else:
                                                        if uint16(uint16(var79003) % 100):
                                                            if uint8(var79007) > 29:
                                                                return 0
                                                        else:
                                                            if not uint16(uint16(var79003) % 400):
                                                                if uint8(var79007) > 29:
                                                                    return 0
                                                            else:
                                                                if uint8(var79007) > 28:
                                                                    return 0
            if var79009 + (24 * 3600) > arg1:
                return uint8(var79007)
            if uint8(idx) == 1:
                var79001 = 0 == 1
                var79003 = uint16(s)
                var79004 = uint8(idx)
                var79007 = var79007 + 1
                var79009 = var79009 + (24 * 3600)
                continue 
            var78001 = 0 == 1
            var78003 = uint16(s)
            var78004 = uint8(idx)
            var78007 = var79007 + 1
            var78009 = var79009 + (24 * 3600)
            continue 
        if uint8(idx) == 5:
            if t + (744 * 24 * 3600) <= arg1:
                t = 744 * 24 * 3600
                idx = idx + 1
                t = t + (744 * 24 * 3600)
                continue 
            mem[128] = uint8(idx)
            if uint8(var77002) == 1:
                if var74001:
                    if uint8(var74007) > 31:
                        return 0
                else:
                    if uint8(var74004) == 5:
                        if uint8(var74007) > 31:
                            return 0
                    else:
                        if uint8(var74004) == 7:
                            if uint8(var74007) > 31:
                                return 0
                        else:
                            if uint8(var74004) == 8:
                                if uint8(var74007) > 31:
                                    return 0
                            else:
                                if uint8(var74004) == 10:
                                    if uint8(var74007) > 31:
                                        return 0
                                else:
                                    if uint8(var74004) == 12:
                                        if uint8(var74007) > 31:
                                            return 0
                                    else:
                                        if uint8(var74004) == 4:
                                            if uint8(var74007) > 30:
                                                return 0
                                        else:
                                            if uint8(var74004) == 6:
                                                if uint8(var74007) > 30:
                                                    return 0
                                            else:
                                                if uint8(var74004) == 9:
                                                    if uint8(var74007) > 30:
                                                        return 0
                                                else:
                                                    if uint8(var74004) == 11:
                                                        if uint8(var74007) > 30:
                                                            return 0
                                                    else:
                                                        if var74003 % 4:
                                                            if uint8(var74007) > 28:
                                                                return 0
                                                        else:
                                                            if uint16(uint16(var74003) % 100):
                                                                if uint8(var74007) > 29:
                                                                    return 0
                                                            else:
                                                                if not uint16(uint16(var74003) % 400):
                                                                    if uint8(var74007) > 29:
                                                                        return 0
                                                                else:
                                                                    if uint8(var74007) > 28:
                                                                        return 0
                if var74009 + (24 * 3600) > arg1:
                    return uint8(var74007)
                if uint8(idx) == 1:
                    var74001 = 0 == 1
                    var74003 = uint16(s)
                    var74004 = uint8(idx)
                    var74007 = var74007 + 1
                    var74009 = var74009 + (24 * 3600)
                    continue 
                var74001 = 0 == 3
                var74003 = uint16(s)
                var74004 = uint8(idx)
                var74007 = var74007 + 1
                var74009 = var74009 + (24 * 3600)
                continue 
            if var80001:
                if uint8(var80007) > 31:
                    return 0
            else:
                if uint8(var80004) == 5:
                    if uint8(var80007) > 31:
                        return 0
                else:
                    if uint8(var80004) == 7:
                        if uint8(var80007) > 31:
                            return 0
                    else:
                        if uint8(var80004) == 8:
                            if uint8(var80007) > 31:
                                return 0
                        else:
                            if uint8(var80004) == 10:
                                if uint8(var80007) > 31:
                                    return 0
                            else:
                                if uint8(var80004) == 12:
                                    if uint8(var80007) > 31:
                                        return 0
                                else:
                                    if uint8(var80004) == 4:
                                        if uint8(var80007) > 30:
                                            return 0
                                    else:
                                        if uint8(var80004) == 6:
                                            if uint8(var80007) > 30:
                                                return 0
                                        else:
                                            if uint8(var80004) == 9:
                                                if uint8(var80007) > 30:
                                                    return 0
                                            else:
                                                if uint8(var80004) == 11:
                                                    if uint8(var80007) > 30:
                                                        return 0
                                                else:
                                                    if var80003 % 4:
                                                        if uint8(var80007) > 28:
                                                            return 0
                                                    else:
                                                        if uint16(uint16(var80003) % 100):
                                                            if uint8(var80007) > 29:
                                                                return 0
                                                        else:
                                                            if not uint16(uint16(var80003) % 400):
                                                                if uint8(var80007) > 29:
                                                                    return 0
                                                            else:
                                                                if uint8(var80007) > 28:
                                                                    return 0
            if var80009 + (24 * 3600) > arg1:
                return uint8(var80007)
            if uint8(idx) == 1:
                var80001 = 0 == 1
                var80003 = uint16(s)
                var80004 = uint8(idx)
                var80007 = var80007 + 1
                var80009 = var80009 + (24 * 3600)
                continue 
            var79001 = 0 == 1
            var79003 = uint16(s)
            var79004 = uint8(idx)
            var79007 = var80007 + 1
            var79009 = var80009 + (24 * 3600)
            continue 
        if uint8(idx) == 7:
            if t + (744 * 24 * 3600) <= arg1:
                t = 744 * 24 * 3600
                idx = idx + 1
                t = t + (744 * 24 * 3600)
                continue 
            mem[128] = uint8(idx)
            if uint8(var78002) == 1:
                if var75001:
                    if uint8(var75007) > 31:
                        return 0
                else:
                    if uint8(var75004) == 5:
                        if uint8(var75007) > 31:
                            return 0
                    else:
                        if uint8(var75004) == 7:
                            if uint8(var75007) > 31:
                                return 0
                        else:
                            if uint8(var75004) == 8:
                                if uint8(var75007) > 31:
                                    return 0
                            else:
                                if uint8(var75004) == 10:
                                    if uint8(var75007) > 31:
                                        return 0
                                else:
                                    if uint8(var75004) == 12:
                                        if uint8(var75007) > 31:
                                            return 0
                                    else:
                                        if uint8(var75004) == 4:
                                            if uint8(var75007) > 30:
                                                return 0
                                        else:
                                            if uint8(var75004) == 6:
                                                if uint8(var75007) > 30:
                                                    return 0
                                            else:
                                                if uint8(var75004) == 9:
                                                    if uint8(var75007) > 30:
                                                        return 0
                                                else:
                                                    if uint8(var75004) == 11:
                                                        if uint8(var75007) > 30:
                                                            return 0
                                                    else:
                                                        if var75003 % 4:
                                                            if uint8(var75007) > 28:
                                                                return 0
                                                        else:
                                                            if uint16(uint16(var75003) % 100):
                                                                if uint8(var75007) > 29:
                                                                    return 0
                                                            else:
                                                                if not uint16(uint16(var75003) % 400):
                                                                    if uint8(var75007) > 29:
                                                                        return 0
                                                                else:
                                                                    if uint8(var75007) > 28:
                                                                        return 0
                if var75009 + (24 * 3600) > arg1:
                    return uint8(var75007)
                if uint8(idx) == 1:
                    var75001 = 0 == 1
                    var75003 = uint16(s)
                    var75004 = uint8(idx)
                    var75007 = var75007 + 1
                    var75009 = var75009 + (24 * 3600)
                    continue 
                var75001 = 0 == 3
                var75003 = uint16(s)
                var75004 = uint8(idx)
                var75007 = var75007 + 1
                var75009 = var75009 + (24 * 3600)
                continue 
            if var81001:
                if uint8(var81007) > 31:
                    return 0
            else:
                if uint8(var81004) == 5:
                    if uint8(var81007) > 31:
                        return 0
                else:
                    if uint8(var81004) == 7:
                        if uint8(var81007) > 31:
                            return 0
                    else:
                        if uint8(var81004) == 8:
                            if uint8(var81007) > 31:
                                return 0
                        else:
                            if uint8(var81004) == 10:
                                if uint8(var81007) > 31:
                                    return 0
                            else:
                                if uint8(var81004) == 12:
                                    if uint8(var81007) > 31:
                                        return 0
                                else:
                                    if uint8(var81004) == 4:
                                        if uint8(var81007) > 30:
                                            return 0
                                    else:
                                        if uint8(var81004) == 6:
                                            if uint8(var81007) > 30:
                                                return 0
                                        else:
                                            if uint8(var81004) == 9:
                                                if uint8(var81007) > 30:
                                                    return 0
                                            else:
                                                if uint8(var81004) == 11:
                                                    if uint8(var81007) > 30:
                                                        return 0
                                                else:
                                                    if var81003 % 4:
                                                        if uint8(var81007) > 28:
                                                            return 0
                                                    else:
                                                        if uint16(uint16(var81003) % 100):
                                                            if uint8(var81007) > 29:
                                                                return 0
                                                        else:
                                                            if not uint16(uint16(var81003) % 400):
                                                                if uint8(var81007) > 29:
                                                                    return 0
                                                            else:
                                                                if uint8(var81007) > 28:
                                                                    return 0
            if var81009 + (24 * 3600) > arg1:
                return uint8(var81007)
            if uint8(idx) == 1:
                var81001 = 0 == 1
                var81003 = uint16(s)
                var81004 = uint8(idx)
                var81007 = var81007 + 1
                var81009 = var81009 + (24 * 3600)
                continue 
            var80001 = 0 == 1
            var80003 = uint16(s)
            var80004 = uint8(idx)
            var80007 = var81007 + 1
            var80009 = var81009 + (24 * 3600)
            continue 
        if uint8(idx) == 8:
            if t + (744 * 24 * 3600) <= arg1:
                t = 744 * 24 * 3600
                idx = idx + 1
                t = t + (744 * 24 * 3600)
                continue 
            mem[128] = uint8(idx)
            if uint8(var79002) == 1:
                if var76001:
                    if uint8(var76007) > 31:
                        return 0
                else:
                    if uint8(var76004) == 5:
                        if uint8(var76007) > 31:
                            return 0
                    else:
                        if uint8(var76004) == 7:
                            if uint8(var76007) > 31:
                                return 0
                        else:
                            if uint8(var76004) == 8:
                                if uint8(var76007) > 31:
                                    return 0
                            else:
                                if uint8(var76004) == 10:
                                    if uint8(var76007) > 31:
                                        return 0
                                else:
                                    if uint8(var76004) == 12:
                                        if uint8(var76007) > 31:
                                            return 0
                                    else:
                                        if uint8(var76004) == 4:
                                            if uint8(var76007) > 30:
                                                return 0
                                        else:
                                            if uint8(var76004) == 6:
                                                if uint8(var76007) > 30:
                                                    return 0
                                            else:
                                                if uint8(var76004) == 9:
                                                    if uint8(var76007) > 30:
                                                        return 0
                                                else:
                                                    if uint8(var76004) == 11:
                                                        if uint8(var76007) > 30:
                                                            return 0
                                                    else:
                                                        if var76003 % 4:
                                                            if uint8(var76007) > 28:
                                                                return 0
                                                        else:
                                                            if uint16(uint16(var76003) % 100):
                                                                if uint8(var76007) > 29:
                                                                    return 0
                                                            else:
                                                                if not uint16(uint16(var76003) % 400):
                                                                    if uint8(var76007) > 29:
                                                                        return 0
                                                                else:
                                                                    if uint8(var76007) > 28:
                                                                        return 0
                if var76009 + (24 * 3600) > arg1:
                    return uint8(var76007)
                if uint8(idx) == 1:
                    var76001 = 0 == 1
                    var76003 = uint16(s)
                    var76004 = uint8(idx)
                    var76007 = var76007 + 1
                    var76009 = var76009 + (24 * 3600)
                    continue 
                var76001 = 0 == 3
                var76003 = uint16(s)
                var76004 = uint8(idx)
                var76007 = var76007 + 1
                var76009 = var76009 + (24 * 3600)
                continue 
            if var82001:
                if uint8(var82007) > 31:
                    return 0
            else:
                if uint8(var82004) == 5:
                    if uint8(var82007) > 31:
                        return 0
                else:
                    if uint8(var82004) == 7:
                        if uint8(var82007) > 31:
                            return 0
                    else:
                        if uint8(var82004) == 8:
                            if uint8(var82007) > 31:
                                return 0
                        else:
                            if uint8(var82004) == 10:
                                if uint8(var82007) > 31:
                                    return 0
                            else:
                                if uint8(var82004) == 12:
                                    if uint8(var82007) > 31:
                                        return 0
                                else:
                                    if uint8(var82004) == 4:
                                        if uint8(var82007) > 30:
                                            return 0
                                    else:
                                        if uint8(var82004) == 6:
                                            if uint8(var82007) > 30:
                                                return 0
                                        else:
                                            if uint8(var82004) == 9:
                                                if uint8(var82007) > 30:
                                                    return 0
                                            else:
                                                if uint8(var82004) == 11:
                                                    if uint8(var82007) > 30:
                                                        return 0
                                                else:
                                                    if var82003 % 4:
                                                        if uint8(var82007) > 28:
                                                            return 0
                                                    else:
                                                        if uint16(uint16(var82003) % 100):
                                                            if uint8(var82007) > 29:
                                                                return 0
                                                        else:
                                                            if not uint16(uint16(var82003) % 400):
                                                                if uint8(var82007) > 29:
                                                                    return 0
                                                            else:
                                                                if uint8(var82007) > 28:
                                                                    return 0
            if var82009 + (24 * 3600) > arg1:
                return uint8(var82007)
            if uint8(idx) == 1:
                var82001 = 0 == 1
                var82003 = uint16(s)
                var82004 = uint8(idx)
                var82007 = var82007 + 1
                var82009 = var82009 + (24 * 3600)
                continue 
            var81001 = 0 == 1
            var81003 = uint16(s)
            var81004 = uint8(idx)
            var81007 = var82007 + 1
            var81009 = var82009 + (24 * 3600)
            continue 
        if uint8(idx) == 10:
            if t + (744 * 24 * 3600) <= arg1:
                t = 744 * 24 * 3600
                idx = idx + 1
                t = t + (744 * 24 * 3600)
                continue 
            mem[128] = uint8(idx)
            if uint8(var80002) == 1:
                if var77001:
                    if uint8(var77007) > 31:
                        return 0
                else:
                    if uint8(var77004) == 5:
                        if uint8(var77007) > 31:
                            return 0
                    else:
                        if uint8(var77004) == 7:
                            if uint8(var77007) > 31:
                                return 0
                        else:
                            if uint8(var77004) == 8:
                                if uint8(var77007) > 31:
                                    return 0
                            else:
                                if uint8(var77004) == 10:
                                    if uint8(var77007) > 31:
                                        return 0
                                else:
                                    if uint8(var77004) == 12:
                                        if uint8(var77007) > 31:
                                            return 0
                                    else:
                                        if uint8(var77004) == 4:
                                            if uint8(var77007) > 30:
                                                return 0
                                        else:
                                            if uint8(var77004) == 6:
                                                if uint8(var77007) > 30:
                                                    return 0
                                            else:
                                                if uint8(var77004) == 9:
                                                    if uint8(var77007) > 30:
                                                        return 0
                                                else:
                                                    if uint8(var77004) == 11:
                                                        if uint8(var77007) > 30:
                                                            return 0
                                                    else:
                                                        if var77003 % 4:
                                                            if uint8(var77007) > 28:
                                                                return 0
                                                        else:
                                                            if uint16(uint16(var77003) % 100):
                                                                if uint8(var77007) > 29:
                                                                    return 0
                                                            else:
                                                                if not uint16(uint16(var77003) % 400):
                                                                    if uint8(var77007) > 29:
                                                                        return 0
                                                                else:
                                                                    if uint8(var77007) > 28:
                                                                        return 0
                if var77009 + (24 * 3600) > arg1:
                    return uint8(var77007)
                if uint8(idx) == 1:
                    var77001 = 0 == 1
                    var77003 = uint16(s)
                    var77004 = uint8(idx)
                    var77007 = var77007 + 1
                    var77009 = var77009 + (24 * 3600)
                    continue 
                var77001 = 0 == 3
                var77003 = uint16(s)
                var77004 = uint8(idx)
                var77007 = var77007 + 1
                var77009 = var77009 + (24 * 3600)
                continue 
            if var83001:
                if uint8(var83007) > 31:
                    return 0
            else:
                if uint8(var83004) == 5:
                    if uint8(var83007) > 31:
                        return 0
                else:
                    if uint8(var83004) == 7:
                        if uint8(var83007) > 31:
                            return 0
                    else:
                        if uint8(var83004) == 8:
                            if uint8(var83007) > 31:
                                return 0
                        else:
                            if uint8(var83004) == 10:
                                if uint8(var83007) > 31:
                                    return 0
                            else:
                                if uint8(var83004) == 12:
                                    if uint8(var83007) > 31:
                                        return 0
                                else:
                                    if uint8(var83004) == 4:
                                        if uint8(var83007) > 30:
                                            return 0
                                    else:
                                        if uint8(var83004) == 6:
                                            if uint8(var83007) > 30:
                                                return 0
                                        else:
                                            if uint8(var83004) == 9:
                                                if uint8(var83007) > 30:
                                                    return 0
                                            else:
                                                if uint8(var83004) == 11:
                                                    if uint8(var83007) > 30:
                                                        return 0
                                                else:
                                                    if var83003 % 4:
                                                        if uint8(var83007) > 28:
                                                            return 0
                                                    else:
                                                        if uint16(uint16(var83003) % 100):
                                                            if uint8(var83007) > 29:
                                                                return 0
                                                        else:
                                                            if not uint16(uint16(var83003) % 400):
                                                                if uint8(var83007) > 29:
                                                                    return 0
                                                            else:
                                                                if uint8(var83007) > 28:
                                                                    return 0
            if var83009 + (24 * 3600) > arg1:
                return uint8(var83007)
            if uint8(idx) == 1:
                var83001 = 0 == 1
                var83003 = uint16(s)
                var83004 = uint8(idx)
                var83007 = var83007 + 1
                var83009 = var83009 + (24 * 3600)
                continue 
            var82001 = 0 == 1
            var82003 = uint16(s)
            var82004 = uint8(idx)
            var82007 = var83007 + 1
            var82009 = var83009 + (24 * 3600)
            continue 
        if uint8(idx) == 12:
            if t + (744 * 24 * 3600) <= arg1:
                t = 744 * 24 * 3600
                idx = idx + 1
                t = t + (744 * 24 * 3600)
                continue 
            mem[128] = uint8(idx)
            if uint8(var81002) == 1:
                if var78001:
                    if uint8(var78007) > 31:
                        return 0
                else:
                    if uint8(var78004) == 5:
                        if uint8(var78007) > 31:
                            return 0
                    else:
                        if uint8(var78004) == 7:
                            if uint8(var78007) > 31:
                                return 0
                        else:
                            if uint8(var78004) == 8:
                                if uint8(var78007) > 31:
                                    return 0
                            else:
                                if uint8(var78004) == 10:
                                    if uint8(var78007) > 31:
                                        return 0
                                else:
                                    if uint8(var78004) == 12:
                                        if uint8(var78007) > 31:
                                            return 0
                                    else:
                                        if uint8(var78004) == 4:
                                            if uint8(var78007) > 30:
                                                return 0
                                        else:
                                            if uint8(var78004) == 6:
                                                if uint8(var78007) > 30:
                                                    return 0
                                            else:
                                                if uint8(var78004) == 9:
                                                    if uint8(var78007) > 30:
                                                        return 0
                                                else:
                                                    if uint8(var78004) == 11:
                                                        if uint8(var78007) > 30:
                                                            return 0
                                                    else:
                                                        if var78003 % 4:
                                                            if uint8(var78007) > 28:
                                                                return 0
                                                        else:
                                                            if uint16(uint16(var78003) % 100):
                                                                if uint8(var78007) > 29:
                                                                    return 0
                                                            else:
                                                                if not uint16(uint16(var78003) % 400):
                                                                    if uint8(var78007) > 29:
                                                                        return 0
                                                                else:
                                                                    if uint8(var78007) > 28:
                                                                        return 0
                if var78009 + (24 * 3600) > arg1:
                    return uint8(var78007)
                if uint8(idx) == 1:
                    var78001 = 0 == 1
                    var78003 = uint16(s)
                    var78004 = uint8(idx)
                    var78007 = var78007 + 1
                    var78009 = var78009 + (24 * 3600)
                    continue 
                var78001 = 0 == 3
                var78003 = uint16(s)
                var78004 = uint8(idx)
                var78007 = var78007 + 1
                var78009 = var78009 + (24 * 3600)
                continue 
            if var84001:
                if uint8(var84007) > 31:
                    return 0
            else:
                if uint8(var84004) == 5:
                    if uint8(var84007) > 31:
                        return 0
                else:
                    if uint8(var84004) == 7:
                        if uint8(var84007) > 31:
                            return 0
                    else:
                        if uint8(var84004) == 8:
                            if uint8(var84007) > 31:
                                return 0
                        else:
                            if uint8(var84004) == 10:
                                if uint8(var84007) > 31:
                                    return 0
                            else:
                                if uint8(var84004) == 12:
                                    if uint8(var84007) > 31:
                                        return 0
                                else:
                                    if uint8(var84004) == 4:
                                        if uint8(var84007) > 30:
                                            return 0
                                    else:
                                        if uint8(var84004) == 6:
                                            if uint8(var84007) > 30:
                                                return 0
                                        else:
                                            if uint8(var84004) == 9:
                                                if uint8(var84007) > 30:
                                                    return 0
                                            else:
                                                if uint8(var84004) == 11:
                                                    if uint8(var84007) > 30:
                                                        return 0
                                                else:
                                                    if var84003 % 4:
                                                        if uint8(var84007) > 28:
                                                            return 0
                                                    else:
                                                        if uint16(uint16(var84003) % 100):
                                                            if uint8(var84007) > 29:
                                                                return 0
                                                        else:
                                                            if not uint16(uint16(var84003) % 400):
                                                                if uint8(var84007) > 29:
                                                                    return 0
                                                            else:
                                                                if uint8(var84007) > 28:
                                                                    return 0
            if var84009 + (24 * 3600) > arg1:
                return uint8(var84007)
            if uint8(idx) == 1:
                var84001 = 0 == 1
                var84003 = uint16(s)
                var84004 = uint8(idx)
                var84007 = var84007 + 1
                var84009 = var84009 + (24 * 3600)
                continue 
            var83001 = 0 == 1
            var83003 = uint16(s)
            var83004 = uint8(idx)
            var83007 = var84007 + 1
            var83009 = var84009 + (24 * 3600)
            continue 
        if uint8(idx) == 4:
            if t + (720 * 24 * 3600) <= arg1:
                t = 720 * 24 * 3600
                idx = idx + 1
                t = t + (720 * 24 * 3600)
                continue 
            mem[128] = uint8(idx)
            if uint8(var85002) == 1:
                if var82001:
                    if uint8(var82007) > 31:
                        return 0
                else:
                    if uint8(var82004) == 5:
                        if uint8(var82007) > 31:
                            return 0
                    else:
                        if uint8(var82004) == 7:
                            if uint8(var82007) > 31:
                                return 0
                        else:
                            if uint8(var82004) == 8:
                                if uint8(var82007) > 31:
                                    return 0
                            else:
                                if uint8(var82004) == 10:
                                    if uint8(var82007) > 31:
                                        return 0
                                else:
                                    if uint8(var82004) == 12:
                                        if uint8(var82007) > 31:
                                            return 0
                                    else:
                                        if uint8(var82004) == 4:
                                            if uint8(var82007) > 30:
                                                return 0
                                        else:
                                            if uint8(var82004) == 6:
                                                if uint8(var82007) > 30:
                                                    return 0
                                            else:
                                                if uint8(var82004) == 9:
                                                    if uint8(var82007) > 30:
                                                        return 0
                                                else:
                                                    if uint8(var82004) == 11:
                                                        if uint8(var82007) > 30:
                                                            return 0
                                                    else:
                                                        if var82003 % 4:
                                                            if uint8(var82007) > 28:
                                                                return 0
                                                        else:
                                                            if uint16(uint16(var82003) % 100):
                                                                if uint8(var82007) > 29:
                                                                    return 0
                                                            else:
                                                                if not uint16(uint16(var82003) % 400):
                                                                    if uint8(var82007) > 29:
                                                                        return 0
                                                                else:
                                                                    if uint8(var82007) > 28:
                                                                        return 0
                if var82009 + (24 * 3600) > arg1:
                    return uint8(var82007)
                if uint8(idx) == 1:
                    var82001 = 0 == 1
                    var82003 = uint16(s)
                    var82004 = uint8(idx)
                    var82007 = var82007 + 1
                    var82009 = var82009 + (24 * 3600)
                    continue 
                var82001 = 0 == 3
                var82003 = uint16(s)
                var82004 = uint8(idx)
                var82007 = var82007 + 1
                var82009 = var82009 + (24 * 3600)
                continue 
            if var88001:
                if uint8(var88007) > 31:
                    return 0
            else:
                if uint8(var88004) == 5:
                    if uint8(var88007) > 31:
                        return 0
                else:
                    if uint8(var88004) == 7:
                        if uint8(var88007) > 31:
                            return 0
                    else:
                        if uint8(var88004) == 8:
                            if uint8(var88007) > 31:
                                return 0
                        else:
                            if uint8(var88004) == 10:
                                if uint8(var88007) > 31:
                                    return 0
                            else:
                                if uint8(var88004) == 12:
                                    if uint8(var88007) > 31:
                                        return 0
                                else:
                                    if uint8(var88004) == 4:
                                        if uint8(var88007) > 30:
                                            return 0
                                    else:
                                        if uint8(var88004) == 6:
                                            if uint8(var88007) > 30:
                                                return 0
                                        else:
                                            if uint8(var88004) == 9:
                                                if uint8(var88007) > 30:
                                                    return 0
                                            else:
                                                if uint8(var88004) == 11:
                                                    if uint8(var88007) > 30:
                                                        return 0
                                                else:
                                                    if var88003 % 4:
                                                        if uint8(var88007) > 28:
                                                            return 0
                                                    else:
                                                        if uint16(uint16(var88003) % 100):
                                                            if uint8(var88007) > 29:
                                                                return 0
                                                        else:
                                                            if not uint16(uint16(var88003) % 400):
                                                                if uint8(var88007) > 29:
                                                                    return 0
                                                            else:
                                                                if uint8(var88007) > 28:
                                                                    return 0
            if var88009 + (24 * 3600) > arg1:
                return uint8(var88007)
            if uint8(idx) == 1:
                var88001 = 0 == 1
                var88003 = uint16(s)
                var88004 = uint8(idx)
                var88007 = var88007 + 1
                var88009 = var88009 + (24 * 3600)
                continue 
            var87001 = 0 == 1
            var87003 = uint16(s)
            var87004 = uint8(idx)
            var87007 = var88007 + 1
            var87009 = var88009 + (24 * 3600)
            continue 
        if uint8(idx) == 6:
            if t + (720 * 24 * 3600) <= arg1:
                t = 720 * 24 * 3600
                idx = idx + 1
                t = t + (720 * 24 * 3600)
                continue 
            mem[128] = uint8(idx)
            if uint8(var86002) == 1:
                if var83001:
                    if uint8(var83007) > 31:
                        return 0
                else:
                    if uint8(var83004) == 5:
                        if uint8(var83007) > 31:
                            return 0
                    else:
                        if uint8(var83004) == 7:
                            if uint8(var83007) > 31:
                                return 0
                        else:
                            if uint8(var83004) == 8:
                                if uint8(var83007) > 31:
                                    return 0
                            else:
                                if uint8(var83004) == 10:
                                    if uint8(var83007) > 31:
                                        return 0
                                else:
                                    if uint8(var83004) == 12:
                                        if uint8(var83007) > 31:
                                            return 0
                                    else:
                                        if uint8(var83004) == 4:
                                            if uint8(var83007) > 30:
                                                return 0
                                        else:
                                            if uint8(var83004) == 6:
                                                if uint8(var83007) > 30:
                                                    return 0
                                            else:
                                                if uint8(var83004) == 9:
                                                    if uint8(var83007) > 30:
                                                        return 0
                                                else:
                                                    if uint8(var83004) == 11:
                                                        if uint8(var83007) > 30:
                                                            return 0
                                                    else:
                                                        if var83003 % 4:
                                                            if uint8(var83007) > 28:
                                                                return 0
                                                        else:
                                                            if uint16(uint16(var83003) % 100):
                                                                if uint8(var83007) > 29:
                                                                    return 0
                                                            else:
                                                                if not uint16(uint16(var83003) % 400):
                                                                    if uint8(var83007) > 29:
                                                                        return 0
                                                                else:
                                                                    if uint8(var83007) > 28:
                                                                        return 0
                if var83009 + (24 * 3600) > arg1:
                    return uint8(var83007)
                if uint8(idx) == 1:
                    var83001 = 0 == 1
                    var83003 = uint16(s)
                    var83004 = uint8(idx)
                    var83007 = var83007 + 1
                    var83009 = var83009 + (24 * 3600)
                    continue 
                var83001 = 0 == 3
                var83003 = uint16(s)
                var83004 = uint8(idx)
                var83007 = var83007 + 1
                var83009 = var83009 + (24 * 3600)
                continue 
            if var89001:
                if uint8(var89007) > 31:
                    return 0
            else:
                if uint8(var89004) == 5:
                    if uint8(var89007) > 31:
                        return 0
                else:
                    if uint8(var89004) == 7:
                        if uint8(var89007) > 31:
                            return 0
                    else:
                        if uint8(var89004) == 8:
                            if uint8(var89007) > 31:
                                return 0
                        else:
                            if uint8(var89004) == 10:
                                if uint8(var89007) > 31:
                                    return 0
                            else:
                                if uint8(var89004) == 12:
                                    if uint8(var89007) > 31:
                                        return 0
                                else:
                                    if uint8(var89004) == 4:
                                        if uint8(var89007) > 30:
                                            return 0
                                    else:
                                        if uint8(var89004) == 6:
                                            if uint8(var89007) > 30:
                                                return 0
                                        else:
                                            if uint8(var89004) == 9:
                                                if uint8(var89007) > 30:
                                                    return 0
                                            else:
                                                if uint8(var89004) == 11:
                                                    if uint8(var89007) > 30:
                                                        return 0
                                                else:
                                                    if var89003 % 4:
                                                        if uint8(var89007) > 28:
                                                            return 0
                                                    else:
                                                        if uint16(uint16(var89003) % 100):
                                                            if uint8(var89007) > 29:
                                                                return 0
                                                        else:
                                                            if not uint16(uint16(var89003) % 400):
                                                                if uint8(var89007) > 29:
                                                                    return 0
                                                            else:
                                                                if uint8(var89007) > 28:
                                                                    return 0
            if var89009 + (24 * 3600) > arg1:
                return uint8(var89007)
            if uint8(idx) == 1:
                var89001 = 0 == 1
                var89003 = uint16(s)
                var89004 = uint8(idx)
                var89007 = var89007 + 1
                var89009 = var89009 + (24 * 3600)
                continue 
            var88001 = 0 == 1
            var88003 = uint16(s)
            var88004 = uint8(idx)
            var88007 = var89007 + 1
            var88009 = var89009 + (24 * 3600)
            continue 
        if uint8(idx) == 9:
            if t + (720 * 24 * 3600) <= arg1:
                t = 720 * 24 * 3600
                idx = idx + 1
                t = t + (720 * 24 * 3600)
                continue 
            mem[128] = uint8(idx)
            if uint8(var87002) == 1:
                if var84001:
                    if uint8(var84007) > 31:
                        return 0
                else:
                    if uint8(var84004) == 5:
                        if uint8(var84007) > 31:
                            return 0
                    else:
                        if uint8(var84004) == 7:
                            if uint8(var84007) > 31:
                                return 0
                        else:
                            if uint8(var84004) == 8:
                                if uint8(var84007) > 31:
                                    return 0
                            else:
                                if uint8(var84004) == 10:
                                    if uint8(var84007) > 31:
                                        return 0
                                else:
                                    if uint8(var84004) == 12:
                                        if uint8(var84007) > 31:
                                            return 0
                                    else:
                                        if uint8(var84004) == 4:
                                            if uint8(var84007) > 30:
                                                return 0
                                        else:
                                            if uint8(var84004) == 6:
                                                if uint8(var84007) > 30:
                                                    return 0
                                            else:
                                                if uint8(var84004) == 9:
                                                    if uint8(var84007) > 30:
                                                        return 0
                                                else:
                                                    if uint8(var84004) == 11:
                                                        if uint8(var84007) > 30:
                                                            return 0
                                                    else:
                                                        if var84003 % 4:
                                                            if uint8(var84007) > 28:
                                                                return 0
                                                        else:
                                                            if uint16(uint16(var84003) % 100):
                                                                if uint8(var84007) > 29:
                                                                    return 0
                                                            else:
                                                                if not uint16(uint16(var84003) % 400):
                                                                    if uint8(var84007) > 29:
                                                                        return 0
                                                                else:
                                                                    if uint8(var84007) > 28:
                                                                        return 0
                if var84009 + (24 * 3600) > arg1:
                    return uint8(var84007)
                if uint8(idx) == 1:
                    var84001 = 0 == 1
                    var84003 = uint16(s)
                    var84004 = uint8(idx)
                    var84007 = var84007 + 1
                    var84009 = var84009 + (24 * 3600)
                    continue 
                var84001 = 0 == 3
                var84003 = uint16(s)
                var84004 = uint8(idx)
                var84007 = var84007 + 1
                var84009 = var84009 + (24 * 3600)
                continue 
            if var90001:
                if uint8(var90007) > 31:
                    return 0
            else:
                if uint8(var90004) == 5:
                    if uint8(var90007) > 31:
                        return 0
                else:
                    if uint8(var90004) == 7:
                        if uint8(var90007) > 31:
                            return 0
                    else:
                        if uint8(var90004) == 8:
                            if uint8(var90007) > 31:
                                return 0
                        else:
                            if uint8(var90004) == 10:
                                if uint8(var90007) > 31:
                                    return 0
                            else:
                                if uint8(var90004) == 12:
                                    if uint8(var90007) > 31:
                                        return 0
                                else:
                                    if uint8(var90004) == 4:
                                        if uint8(var90007) > 30:
                                            return 0
                                    else:
                                        if uint8(var90004) == 6:
                                            if uint8(var90007) > 30:
                                                return 0
                                        else:
                                            if uint8(var90004) == 9:
                                                if uint8(var90007) > 30:
                                                    return 0
                                            else:
                                                if uint8(var90004) == 11:
                                                    if uint8(var90007) > 30:
                                                        return 0
                                                else:
                                                    if var90003 % 4:
                                                        if uint8(var90007) > 28:
                                                            return 0
                                                    else:
                                                        if uint16(uint16(var90003) % 100):
                                                            if uint8(var90007) > 29:
                                                                return 0
                                                        else:
                                                            if not uint16(uint16(var90003) % 400):
                                                                if uint8(var90007) > 29:
                                                                    return 0
                                                            else:
                                                                if uint8(var90007) > 28:
                                                                    return 0
            if var90009 + (24 * 3600) > arg1:
                return uint8(var90007)
            if uint8(idx) == 1:
                var90001 = 0 == 1
                var90003 = uint16(s)
                var90004 = uint8(idx)
                var90007 = var90007 + 1
                var90009 = var90009 + (24 * 3600)
                continue 
            var89001 = 0 == 1
            var89003 = uint16(s)
            var89004 = uint8(idx)
            var89007 = var90007 + 1
            var89009 = var90009 + (24 * 3600)
            continue 
        if uint8(idx) == 11:
            if t + (720 * 24 * 3600) <= arg1:
                t = 720 * 24 * 3600
                idx = idx + 1
                t = t + (720 * 24 * 3600)
                continue 
            mem[128] = uint8(idx)
            if uint8(var88002) == 1:
                if var85001:
                    if uint8(var85007) > 31:
                        return 0
                else:
                    if uint8(var85004) == 5:
                        if uint8(var85007) > 31:
                            return 0
                    else:
                        if uint8(var85004) == 7:
                            if uint8(var85007) > 31:
                                return 0
                        else:
                            if uint8(var85004) == 8:
                                if uint8(var85007) > 31:
                                    return 0
                            else:
                                if uint8(var85004) == 10:
                                    if uint8(var85007) > 31:
                                        return 0
                                else:
                                    if uint8(var85004) == 12:
                                        if uint8(var85007) > 31:
                                            return 0
                                    else:
                                        if uint8(var85004) == 4:
                                            if uint8(var85007) > 30:
                                                return 0
                                        else:
                                            if uint8(var85004) == 6:
                                                if uint8(var85007) > 30:
                                                    return 0
                                            else:
                                                if uint8(var85004) == 9:
                                                    if uint8(var85007) > 30:
                                                        return 0
                                                else:
                                                    if uint8(var85004) == 11:
                                                        if uint8(var85007) > 30:
                                                            return 0
                                                    else:
                                                        if var85003 % 4:
                                                            if uint8(var85007) > 28:
                                                                return 0
                                                        else:
                                                            if uint16(uint16(var85003) % 100):
                                                                if uint8(var85007) > 29:
                                                                    return 0
                                                            else:
                                                                if not uint16(uint16(var85003) % 400):
                                                                    if uint8(var85007) > 29:
                                                                        return 0
                                                                else:
                                                                    if uint8(var85007) > 28:
                                                                        return 0
                if var85009 + (24 * 3600) > arg1:
                    return uint8(var85007)
                if uint8(idx) == 1:
                    var85001 = 0 == 1
                    var85003 = uint16(s)
                    var85004 = uint8(idx)
                    var85007 = var85007 + 1
                    var85009 = var85009 + (24 * 3600)
                    continue 
                var85001 = 0 == 3
                var85003 = uint16(s)
                var85004 = uint8(idx)
                var85007 = var85007 + 1
                var85009 = var85009 + (24 * 3600)
                continue 
            if var91001:
                if uint8(var91007) > 31:
                    return 0
            else:
                if uint8(var91004) == 5:
                    if uint8(var91007) > 31:
                        return 0
                else:
                    if uint8(var91004) == 7:
                        if uint8(var91007) > 31:
                            return 0
                    else:
                        if uint8(var91004) == 8:
                            if uint8(var91007) > 31:
                                return 0
                        else:
                            if uint8(var91004) == 10:
                                if uint8(var91007) > 31:
                                    return 0
                            else:
                                if uint8(var91004) == 12:
                                    if uint8(var91007) > 31:
                                        return 0
                                else:
                                    if uint8(var91004) == 4:
                                        if uint8(var91007) > 30:
                                            return 0
                                    else:
                                        if uint8(var91004) == 6:
                                            if uint8(var91007) > 30:
                                                return 0
                                        else:
                                            if uint8(var91004) == 9:
                                                if uint8(var91007) > 30:
                                                    return 0
                                            else:
                                                if uint8(var91004) == 11:
                                                    if uint8(var91007) > 30:
                                                        return 0
                                                else:
                                                    if var91003 % 4:
                                                        if uint8(var91007) > 28:
                                                            return 0
                                                    else:
                                                        if uint16(uint16(var91003) % 100):
                                                            if uint8(var91007) > 29:
                                                                return 0
                                                        else:
                                                            if not uint16(uint16(var91003) % 400):
                                                                if uint8(var91007) > 29:
                                                                    return 0
                                                            else:
                                                                if uint8(var91007) > 28:
                                                                    return 0
            if var91009 + (24 * 3600) > arg1:
                return uint8(var91007)
            if uint8(idx) == 1:
                var91001 = 0 == 1
                var91003 = uint16(s)
                var91004 = uint8(idx)
                var91007 = var91007 + 1
                var91009 = var91009 + (24 * 3600)
                continue 
            var90001 = 0 == 1
            var90003 = uint16(s)
            var90004 = uint8(idx)
            var90007 = var91007 + 1
            var90009 = var91009 + (24 * 3600)
            continue 
        if s % 4:
            if t + (672 * 24 * 3600) <= arg1:
                t = 672 * 24 * 3600
                idx = idx + 1
                t = t + (672 * 24 * 3600)
                continue 
            mem[128] = uint8(idx)
            if uint8(var94002) == 1:
                if var91001:
                    if uint8(var91007) > 31:
                        return 0
                else:
                    if uint8(var91004) == 5:
                        if uint8(var91007) > 31:
                            return 0
                    else:
                        if uint8(var91004) == 7:
                            if uint8(var91007) > 31:
                                return 0
                        else:
                            if uint8(var91004) == 8:
                                if uint8(var91007) > 31:
                                    return 0
                            else:
                                if uint8(var91004) == 10:
                                    if uint8(var91007) > 31:
                                        return 0
                                else:
                                    if uint8(var91004) == 12:
                                        if uint8(var91007) > 31:
                                            return 0
                                    else:
                                        if uint8(var91004) == 4:
                                            if uint8(var91007) > 30:
                                                return 0
                                        else:
                                            if uint8(var91004) == 6:
                                                if uint8(var91007) > 30:
                                                    return 0
                                            else:
                                                if uint8(var91004) == 9:
                                                    if uint8(var91007) > 30:
                                                        return 0
                                                else:
                                                    if uint8(var91004) == 11:
                                                        if uint8(var91007) > 30:
                                                            return 0
                                                    else:
                                                        if var91003 % 4:
                                                            if uint8(var91007) > 28:
                                                                return 0
                                                        else:
                                                            if uint16(uint16(var91003) % 100):
                                                                if uint8(var91007) > 29:
                                                                    return 0
                                                            else:
                                                                if not uint16(uint16(var91003) % 400):
                                                                    if uint8(var91007) > 29:
                                                                        return 0
                                                                else:
                                                                    if uint8(var91007) > 28:
                                                                        return 0
                if var91009 + (24 * 3600) > arg1:
                    return uint8(var91007)
                if uint8(idx) == 1:
                    var91001 = 0 == 1
                    var91003 = uint16(s)
                    var91004 = uint8(idx)
                    var91007 = var91007 + 1
                    var91009 = var91009 + (24 * 3600)
                    continue 
                var91001 = 0 == 3
                var91003 = uint16(s)
                var91004 = uint8(idx)
                var91007 = var91007 + 1
                var91009 = var91009 + (24 * 3600)
                continue 
            if var97001:
                if uint8(var97007) > 31:
                    return 0
            else:
                if uint8(var97004) == 5:
                    if uint8(var97007) > 31:
                        return 0
                else:
                    if uint8(var97004) == 7:
                        if uint8(var97007) > 31:
                            return 0
                    else:
                        if uint8(var97004) == 8:
                            if uint8(var97007) > 31:
                                return 0
                        else:
                            if uint8(var97004) == 10:
                                if uint8(var97007) > 31:
                                    return 0
                            else:
                                if uint8(var97004) == 12:
                                    if uint8(var97007) > 31:
                                        return 0
                                else:
                                    if uint8(var97004) == 4:
                                        if uint8(var97007) > 30:
                                            return 0
                                    else:
                                        if uint8(var97004) == 6:
                                            if uint8(var97007) > 30:
                                                return 0
                                        else:
                                            if uint8(var97004) == 9:
                                                if uint8(var97007) > 30:
                                                    return 0
                                            else:
                                                if uint8(var97004) == 11:
                                                    if uint8(var97007) > 30:
                                                        return 0
                                                else:
                                                    if var97003 % 4:
                                                        if uint8(var97007) > 28:
                                                            return 0
                                                    else:
                                                        if uint16(uint16(var97003) % 100):
                                                            if uint8(var97007) > 29:
                                                                return 0
                                                        else:
                                                            if not uint16(uint16(var97003) % 400):
                                                                if uint8(var97007) > 29:
                                                                    return 0
                                                            else:
                                                                if uint8(var97007) > 28:
                                                                    return 0
            if var97009 + (24 * 3600) > arg1:
                return uint8(var97007)
            if uint8(idx) == 1:
                var97001 = 0 == 1
                var97003 = uint16(s)
                var97004 = uint8(idx)
                var97007 = var97007 + 1
                var97009 = var97009 + (24 * 3600)
                continue 
            var96001 = 0 == 1
            var96003 = uint16(s)
            var96004 = uint8(idx)
            var96007 = var97007 + 1
            var96009 = var97009 + (24 * 3600)
            continue 
        if uint16(uint16(s) % 100):
            if t + (696 * 24 * 3600) <= arg1:
                t = 696 * 24 * 3600
                idx = idx + 1
                t = t + (696 * 24 * 3600)
                continue 
            mem[128] = uint8(idx)
            if uint8(var96002) == 1:
                if var93001:
                    if uint8(var93007) > 31:
                        return 0
                else:
                    if uint8(var93004) == 5:
                        if uint8(var93007) > 31:
                            return 0
                    else:
                        if uint8(var93004) == 7:
                            if uint8(var93007) > 31:
                                return 0
                        else:
                            if uint8(var93004) == 8:
                                if uint8(var93007) > 31:
                                    return 0
                            else:
                                if uint8(var93004) == 10:
                                    if uint8(var93007) > 31:
                                        return 0
                                else:
                                    if uint8(var93004) == 12:
                                        if uint8(var93007) > 31:
                                            return 0
                                    else:
                                        if uint8(var93004) == 4:
                                            if uint8(var93007) > 30:
                                                return 0
                                        else:
                                            if uint8(var93004) == 6:
                                                if uint8(var93007) > 30:
                                                    return 0
                                            else:
                                                if uint8(var93004) == 9:
                                                    if uint8(var93007) > 30:
                                                        return 0
                                                else:
                                                    if uint8(var93004) == 11:
                                                        if uint8(var93007) > 30:
                                                            return 0
                                                    else:
                                                        if var93003 % 4:
                                                            if uint8(var93007) > 28:
                                                                return 0
                                                        else:
                                                            if uint16(uint16(var93003) % 100):
                                                                if uint8(var93007) > 29:
                                                                    return 0
                                                            else:
                                                                if not uint16(uint16(var93003) % 400):
                                                                    if uint8(var93007) > 29:
                                                                        return 0
                                                                else:
                                                                    if uint8(var93007) > 28:
                                                                        return 0
                if var93009 + (24 * 3600) > arg1:
                    return uint8(var93007)
                if uint8(idx) == 1:
                    var93001 = 0 == 1
                    var93003 = uint16(s)
                    var93004 = uint8(idx)
                    var93007 = var93007 + 1
                    var93009 = var93009 + (24 * 3600)
                    continue 
                var93001 = 0 == 3
                var93003 = uint16(s)
                var93004 = uint8(idx)
                var93007 = var93007 + 1
                var93009 = var93009 + (24 * 3600)
                continue 
            if var99001:
                if uint8(var99007) > 31:
                    return 0
            else:
                if uint8(var99004) == 5:
                    if uint8(var99007) > 31:
                        return 0
                else:
                    if uint8(var99004) == 7:
                        if uint8(var99007) > 31:
                            return 0
                    else:
                        if uint8(var99004) == 8:
                            if uint8(var99007) > 31:
                                return 0
                        else:
                            if uint8(var99004) == 10:
                                if uint8(var99007) > 31:
                                    return 0
                            else:
                                if uint8(var99004) == 12:
                                    if uint8(var99007) > 31:
                                        return 0
                                else:
                                    if uint8(var99004) == 4:
                                        if uint8(var99007) > 30:
                                            return 0
                                    else:
                                        if uint8(var99004) == 6:
                                            if uint8(var99007) > 30:
                                                return 0
                                        else:
                                            if uint8(var99004) == 9:
                                                if uint8(var99007) > 30:
                                                    return 0
                                            else:
                                                if uint8(var99004) == 11:
                                                    if uint8(var99007) > 30:
                                                        return 0
                                                else:
                                                    if var99003 % 4:
                                                        if uint8(var99007) > 28:
                                                            return 0
                                                    else:
                                                        if uint16(uint16(var99003) % 100):
                                                            if uint8(var99007) > 29:
                                                                return 0
                                                        else:
                                                            if not uint16(uint16(var99003) % 400):
                                                                if uint8(var99007) > 29:
                                                                    return 0
                                                            else:
                                                                if uint8(var99007) > 28:
                                                                    return 0
            if var99009 + (24 * 3600) > arg1:
                return uint8(var99007)
            if uint8(idx) == 1:
                var99001 = 0 == 1
                var99003 = uint16(s)
                var99004 = uint8(idx)
                var99007 = var99007 + 1
                var99009 = var99009 + (24 * 3600)
                continue 
            var98001 = 0 == 1
            var98003 = uint16(s)
            var98004 = uint8(idx)
            var98007 = var99007 + 1
            var98009 = var99009 + (24 * 3600)
            continue 
        if not uint16(uint16(s) % 400):
            if t + (696 * 24 * 3600) <= arg1:
                t = 696 * 24 * 3600
                idx = idx + 1
                t = t + (696 * 24 * 3600)
                continue 
        else:
            if t + (672 * 24 * 3600) <= arg1:
                t = 672 * 24 * 3600
                idx = idx + 1
                t = t + (672 * 24 * 3600)
                continue 
        mem[128] = uint8(idx)
        if uint8(var98002) == 1:
            if var95001:
                if uint8(var95007) > 31:
                    return 0
            else:
                if uint8(var95004) == 5:
                    if uint8(var95007) > 31:
                        return 0
                else:
                    if uint8(var95004) == 7:
                        if uint8(var95007) > 31:
                            return 0
                    else:
                        if uint8(var95004) == 8:
                            if uint8(var95007) > 31:
                                return 0
                        else:
                            if uint8(var95004) == 10:
                                if uint8(var95007) > 31:
                                    return 0
                            else:
                                if uint8(var95004) == 12:
                                    if uint8(var95007) > 31:
                                        return 0
                                else:
                                    if uint8(var95004) == 4:
                                        if uint8(var95007) > 30:
                                            return 0
                                    else:
                                        if uint8(var95004) == 6:
                                            if uint8(var95007) > 30:
                                                return 0
                                        else:
                                            if uint8(var95004) == 9:
                                                if uint8(var95007) > 30:
                                                    return 0
                                            else:
                                                if uint8(var95004) == 11:
                                                    if uint8(var95007) > 30:
                                                        return 0
                                                else:
                                                    if var95003 % 4:
                                                        if uint8(var95007) > 28:
                                                            return 0
                                                    else:
                                                        if uint16(uint16(var95003) % 100):
                                                            if uint8(var95007) > 29:
                                                                return 0
                                                        else:
                                                            if not uint16(uint16(var95003) % 400):
                                                                if uint8(var95007) > 29:
                                                                    return 0
                                                            else:
                                                                if uint8(var95007) > 28:
                                                                    return 0
            if var95009 + (24 * 3600) > arg1:
                return uint8(var95007)
            if uint8(idx) == 1:
                var95001 = 0 == 1
                var95003 = uint16(s)
                var95004 = uint8(idx)
                var95007 = var95007 + 1
                var95009 = var95009 + (24 * 3600)
                continue 
            var95001 = 0 == 3
            var95003 = uint16(s)
            var95004 = uint8(idx)
            var95007 = var95007 + 1
            var95009 = var95009 + (24 * 3600)
            continue 
        if var101001:
            if uint8(var101007) > 31:
                return 0
        else:
            if uint8(var101004) == 5:
                if uint8(var101007) > 31:
                    return 0
            else:
                if uint8(var101004) == 7:
                    if uint8(var101007) > 31:
                        return 0
                else:
                    if uint8(var101004) == 8:
                        if uint8(var101007) > 31:
                            return 0
                    else:
                        if uint8(var101004) == 10:
                            if uint8(var101007) > 31:
                                return 0
                        else:
                            if uint8(var101004) == 12:
                                if uint8(var101007) > 31:
                                    return 0
                            else:
                                if uint8(var101004) == 4:
                                    if uint8(var101007) > 30:
                                        return 0
                                else:
                                    if uint8(var101004) == 6:
                                        if uint8(var101007) > 30:
                                            return 0
                                    else:
                                        if uint8(var101004) == 9:
                                            if uint8(var101007) > 30:
                                                return 0
                                        else:
                                            if uint8(var101004) == 11:
                                                if uint8(var101007) > 30:
                                                    return 0
                                            else:
                                                if var101003 % 4:
                                                    if uint8(var101007) > 28:
                                                        return 0
                                                else:
                                                    if uint16(uint16(var101003) % 100):
                                                        if uint8(var101007) > 29:
                                                            return 0
                                                    else:
                                                        if not uint16(uint16(var101003) % 400):
                                                            if uint8(var101007) > 29:
                                                                return 0
                                                        else:
                                                            if uint8(var101007) > 28:
                                                                return 0
        if var101009 + (24 * 3600) > arg1:
            return uint8(var101007)
        if uint8(idx) == 1:
            var101001 = 0 == 1
            var101003 = uint16(s)
            var101004 = uint8(idx)
            var101007 = var101007 + 1
            var101009 = var101009 + (24 * 3600)
            continue 
        var100001 = 0 == 1
        var100003 = uint16(s)
        var100004 = uint8(idx)
        var100007 = var101007 + 1
        var100009 = var101009 + (24 * 3600)
        continue 
    if uint8(var63002) == 1:
        if var60001:
            if uint8(var60007) > 31:
                return 0
        else:
            if uint8(var60004) == 5:
                if uint8(var60007) > 31:
                    return 0
            else:
                if uint8(var60004) == 7:
                    if uint8(var60007) > 31:
                        return 0
                else:
                    if uint8(var60004) == 8:
                        if uint8(var60007) > 31:
                            return 0
                    else:
                        if uint8(var60004) == 10:
                            if uint8(var60007) > 31:
                                return 0
                        else:
                            if uint8(var60004) == 12:
                                if uint8(var60007) > 31:
                                    return 0
                            else:
                                if uint8(var60004) == 4:
                                    if uint8(var60007) > 30:
                                        return 0
                                else:
                                    if uint8(var60004) == 6:
                                        if uint8(var60007) > 30:
                                            return 0
                                    else:
                                        if uint8(var60004) == 9:
                                            if uint8(var60007) > 30:
                                                return 0
                                        else:
                                            if uint8(var60004) == 11:
                                                if uint8(var60007) > 30:
                                                    return 0
                                            else:
                                                if var60003 % 4:
                                                    if uint8(var60007) > 28:
                                                        return 0
                                                else:
                                                    if uint16(uint16(var60003) % 100):
                                                        if uint8(var60007) > 29:
                                                            return 0
                                                    else:
                                                        if not uint16(uint16(var60003) % 400):
                                                            if uint8(var60007) > 29:
                                                                return 0
                                                        else:
                                                            if uint8(var60007) > 28:
                                                                return 0
        if var60009 + (24 * 3600) > arg1:
            return uint8(var60007)
        if mem[159 len 1] == 1:
            var60001 = mem[159 len 1] == 1
            var60003 = uint16(s)
            var60004 = mem[128]
            var60007 = var60007 + 1
            var60009 = var60009 + (24 * 3600)
            continue 
        var60001 = mem[159 len 1] == 3
        var60003 = uint16(s)
        var60004 = mem[128]
        var60007 = var60007 + 1
        var60009 = var60009 + (24 * 3600)
        continue 
    if var66001:
        if uint8(var66007) > 31:
            return 0
    else:
        if uint8(var66004) == 5:
            if uint8(var66007) > 31:
                return 0
        else:
            if uint8(var66004) == 7:
                if uint8(var66007) > 31:
                    return 0
            else:
                if uint8(var66004) == 8:
                    if uint8(var66007) > 31:
                        return 0
                else:
                    if uint8(var66004) == 10:
                        if uint8(var66007) > 31:
                            return 0
                    else:
                        if uint8(var66004) == 12:
                            if uint8(var66007) > 31:
                                return 0
                        else:
                            if uint8(var66004) == 4:
                                if uint8(var66007) > 30:
                                    return 0
                            else:
                                if uint8(var66004) == 6:
                                    if uint8(var66007) > 30:
                                        return 0
                                else:
                                    if uint8(var66004) == 9:
                                        if uint8(var66007) > 30:
                                            return 0
                                    else:
                                        if uint8(var66004) == 11:
                                            if uint8(var66007) > 30:
                                                return 0
                                        else:
                                            if var66003 % 4:
                                                if uint8(var66007) > 28:
                                                    return 0
                                            else:
                                                if uint16(uint16(var66003) % 100):
                                                    if uint8(var66007) > 29:
                                                        return 0
                                                else:
                                                    if not uint16(uint16(var66003) % 400):
                                                        if uint8(var66007) > 29:
                                                            return 0
                                                    else:
                                                        if uint8(var66007) > 28:
                                                            return 0
    if var66009 + (24 * 3600) > arg1:
        return uint8(var66007)
    if mem[159 len 1] == 1:
        var66001 = mem[159 len 1] == 1
        var66003 = uint16(s)
        var66004 = mem[128]
        var66007 = var66007 + 1
        var66009 = var66009 + (24 * 3600)
        continue 
    var65001 = mem[159 len 1] == 1
    var65003 = uint16(s)
    var65004 = mem[128]
    var65007 = var66007 + 1
    var65009 = var66009 + (24 * 3600)
    continue 
}

function getMonth(uint256 arg1) {
    mem[64] = 320
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    s = (arg1 / 8760 * 24 * 3600) + 1970
    idx = (24 * 3600 * uint16((arg1 / 8760 * 24 * 3600) + 1970) - 1 / 4) + (-86400 * uint16((arg1 / 8760 * 24 * 3600) + 1970) - 1 / 100) + (24 * 3600 * uint16((arg1 / 8760 * 24 * 3600) + 1970) - 1 / 400) + (8760 * 24 * 3600 * uint16(arg1 / 8760 * 24 * 3600)) - (11448 * 24 * 3600)
    while idx > arg1:
        if not s - 1 % 4:
            if uint16(uint16(s - 1) % 100):
                s = s - 1
                idx = idx - (8784 * 24 * 3600)
                continue 
            if not uint16(uint16(s - 1) % 400):
                s = s - 1
                idx = idx - (8784 * 24 * 3600)
                continue 
        s = s - 1
        idx = idx - (8760 * 24 * 3600)
        continue 
    mem[96] = uint16(s)
    t = 0
    idx = 1
    t = (24 * 3600 * uint16(s) - 1 / 4) + (-86400 * uint16(s) - 1 / 100) + (24 * 3600 * uint16(s) - 1 / 400) + (8760 * 24 * 3600 * uint16(uint16(s) - 1970)) - (11448 * 24 * 3600)
    while uint8(idx) <= 12:
        if uint8(idx) == 1:
            if t + (744 * 24 * 3600) <= arg1:
                t = 744 * 24 * 3600
                idx = idx + 1
                t = t + (744 * 24 * 3600)
                continue 
            mem[128] = uint8(idx)
            if uint8(var75002) == 1:
                if var72001:
                    if uint8(var72007) > 31:
                        return uint8(idx)
                else:
                    if uint8(var72004) == 5:
                        if uint8(var72007) > 31:
                            return uint8(idx)
                    else:
                        if uint8(var72004) == 7:
                            if uint8(var72007) > 31:
                                return uint8(idx)
                        else:
                            if uint8(var72004) == 8:
                                if uint8(var72007) > 31:
                                    return uint8(idx)
                            else:
                                if uint8(var72004) == 10:
                                    if uint8(var72007) > 31:
                                        return uint8(idx)
                                else:
                                    if uint8(var72004) == 12:
                                        if uint8(var72007) > 31:
                                            return uint8(idx)
                                    else:
                                        if uint8(var72004) == 4:
                                            if uint8(var72007) > 30:
                                                return uint8(idx)
                                        else:
                                            if uint8(var72004) == 6:
                                                if uint8(var72007) > 30:
                                                    return uint8(idx)
                                            else:
                                                if uint8(var72004) == 9:
                                                    if uint8(var72007) > 30:
                                                        return uint8(idx)
                                                else:
                                                    if uint8(var72004) == 11:
                                                        if uint8(var72007) > 30:
                                                            return uint8(idx)
                                                    else:
                                                        if var72003 % 4:
                                                            if uint8(var72007) > 28:
                                                                return uint8(idx)
                                                        else:
                                                            if uint16(uint16(var72003) % 100):
                                                                if uint8(var72007) > 29:
                                                                    return uint8(idx)
                                                            else:
                                                                if not uint16(uint16(var72003) % 400):
                                                                    if uint8(var72007) > 29:
                                                                        return uint8(idx)
                                                                else:
                                                                    if uint8(var72007) > 28:
                                                                        return uint8(idx)
                if var72009 + (24 * 3600) > arg1:
                    return uint8(idx)
                if uint8(idx) == 1:
                    var72001 = 0 == 1
                    var72003 = uint16(s)
                    var72004 = uint8(idx)
                    var72007 = var72007 + 1
                    var72009 = var72009 + (24 * 3600)
                    continue 
                var72001 = 0 == 3
                var72003 = uint16(s)
                var72004 = uint8(idx)
                var72007 = var72007 + 1
                var72009 = var72009 + (24 * 3600)
                continue 
            if var78001:
                if uint8(var78007) > 31:
                    return uint8(idx)
            else:
                if uint8(var78004) == 5:
                    if uint8(var78007) > 31:
                        return uint8(idx)
                else:
                    if uint8(var78004) == 7:
                        if uint8(var78007) > 31:
                            return uint8(idx)
                    else:
                        if uint8(var78004) == 8:
                            if uint8(var78007) > 31:
                                return uint8(idx)
                        else:
                            if uint8(var78004) == 10:
                                if uint8(var78007) > 31:
                                    return uint8(idx)
                            else:
                                if uint8(var78004) == 12:
                                    if uint8(var78007) > 31:
                                        return uint8(idx)
                                else:
                                    if uint8(var78004) == 4:
                                        if uint8(var78007) > 30:
                                            return uint8(idx)
                                    else:
                                        if uint8(var78004) == 6:
                                            if uint8(var78007) > 30:
                                                return uint8(idx)
                                        else:
                                            if uint8(var78004) == 9:
                                                if uint8(var78007) > 30:
                                                    return uint8(idx)
                                            else:
                                                if uint8(var78004) == 11:
                                                    if uint8(var78007) > 30:
                                                        return uint8(idx)
                                                else:
                                                    if var78003 % 4:
                                                        if uint8(var78007) > 28:
                                                            return uint8(idx)
                                                    else:
                                                        if uint16(uint16(var78003) % 100):
                                                            if uint8(var78007) > 29:
                                                                return uint8(idx)
                                                        else:
                                                            if not uint16(uint16(var78003) % 400):
                                                                if uint8(var78007) > 29:
                                                                    return uint8(idx)
                                                            else:
                                                                if uint8(var78007) > 28:
                                                                    return uint8(idx)
            if var78009 + (24 * 3600) > arg1:
                return uint8(idx)
            if uint8(idx) == 1:
                var78001 = 0 == 1
                var78003 = uint16(s)
                var78004 = uint8(idx)
                var78007 = var78007 + 1
                var78009 = var78009 + (24 * 3600)
                continue 
            var77001 = 0 == 1
            var77003 = uint16(s)
            var77004 = uint8(idx)
            var77007 = var78007 + 1
            var77009 = var78009 + (24 * 3600)
            continue 
        if uint8(idx) == 3:
            if t + (744 * 24 * 3600) <= arg1:
                t = 744 * 24 * 3600
                idx = idx + 1
                t = t + (744 * 24 * 3600)
                continue 
            mem[128] = uint8(idx)
            if uint8(var76002) == 1:
                if var73001:
                    if uint8(var73007) > 31:
                        return uint8(idx)
                else:
                    if uint8(var73004) == 5:
                        if uint8(var73007) > 31:
                            return uint8(idx)
                    else:
                        if uint8(var73004) == 7:
                            if uint8(var73007) > 31:
                                return uint8(idx)
                        else:
                            if uint8(var73004) == 8:
                                if uint8(var73007) > 31:
                                    return uint8(idx)
                            else:
                                if uint8(var73004) == 10:
                                    if uint8(var73007) > 31:
                                        return uint8(idx)
                                else:
                                    if uint8(var73004) == 12:
                                        if uint8(var73007) > 31:
                                            return uint8(idx)
                                    else:
                                        if uint8(var73004) == 4:
                                            if uint8(var73007) > 30:
                                                return uint8(idx)
                                        else:
                                            if uint8(var73004) == 6:
                                                if uint8(var73007) > 30:
                                                    return uint8(idx)
                                            else:
                                                if uint8(var73004) == 9:
                                                    if uint8(var73007) > 30:
                                                        return uint8(idx)
                                                else:
                                                    if uint8(var73004) == 11:
                                                        if uint8(var73007) > 30:
                                                            return uint8(idx)
                                                    else:
                                                        if var73003 % 4:
                                                            if uint8(var73007) > 28:
                                                                return uint8(idx)
                                                        else:
                                                            if uint16(uint16(var73003) % 100):
                                                                if uint8(var73007) > 29:
                                                                    return uint8(idx)
                                                            else:
                                                                if not uint16(uint16(var73003) % 400):
                                                                    if uint8(var73007) > 29:
                                                                        return uint8(idx)
                                                                else:
                                                                    if uint8(var73007) > 28:
                                                                        return uint8(idx)
                if var73009 + (24 * 3600) > arg1:
                    return uint8(idx)
                if uint8(idx) == 1:
                    var73001 = 0 == 1
                    var73003 = uint16(s)
                    var73004 = uint8(idx)
                    var73007 = var73007 + 1
                    var73009 = var73009 + (24 * 3600)
                    continue 
                var73001 = 0 == 3
                var73003 = uint16(s)
                var73004 = uint8(idx)
                var73007 = var73007 + 1
                var73009 = var73009 + (24 * 3600)
                continue 
            if var79001:
                if uint8(var79007) > 31:
                    return uint8(idx)
            else:
                if uint8(var79004) == 5:
                    if uint8(var79007) > 31:
                        return uint8(idx)
                else:
                    if uint8(var79004) == 7:
                        if uint8(var79007) > 31:
                            return uint8(idx)
                    else:
                        if uint8(var79004) == 8:
                            if uint8(var79007) > 31:
                                return uint8(idx)
                        else:
                            if uint8(var79004) == 10:
                                if uint8(var79007) > 31:
                                    return uint8(idx)
                            else:
                                if uint8(var79004) == 12:
                                    if uint8(var79007) > 31:
                                        return uint8(idx)
                                else:
                                    if uint8(var79004) == 4:
                                        if uint8(var79007) > 30:
                                            return uint8(idx)
                                    else:
                                        if uint8(var79004) == 6:
                                            if uint8(var79007) > 30:
                                                return uint8(idx)
                                        else:
                                            if uint8(var79004) == 9:
                                                if uint8(var79007) > 30:
                                                    return uint8(idx)
                                            else:
                                                if uint8(var79004) == 11:
                                                    if uint8(var79007) > 30:
                                                        return uint8(idx)
                                                else:
                                                    if var79003 % 4:
                                                        if uint8(var79007) > 28:
                                                            return uint8(idx)
                                                    else:
                                                        if uint16(uint16(var79003) % 100):
                                                            if uint8(var79007) > 29:
                                                                return uint8(idx)
                                                        else:
                                                            if not uint16(uint16(var79003) % 400):
                                                                if uint8(var79007) > 29:
                                                                    return uint8(idx)
                                                            else:
                                                                if uint8(var79007) > 28:
                                                                    return uint8(idx)
            if var79009 + (24 * 3600) > arg1:
                return uint8(idx)
            if uint8(idx) == 1:
                var79001 = 0 == 1
                var79003 = uint16(s)
                var79004 = uint8(idx)
                var79007 = var79007 + 1
                var79009 = var79009 + (24 * 3600)
                continue 
            var78001 = 0 == 1
            var78003 = uint16(s)
            var78004 = uint8(idx)
            var78007 = var79007 + 1
            var78009 = var79009 + (24 * 3600)
            continue 
        if uint8(idx) == 5:
            if t + (744 * 24 * 3600) <= arg1:
                t = 744 * 24 * 3600
                idx = idx + 1
                t = t + (744 * 24 * 3600)
                continue 
            mem[128] = uint8(idx)
            if uint8(var77002) == 1:
                if var74001:
                    if uint8(var74007) > 31:
                        return uint8(idx)
                else:
                    if uint8(var74004) == 5:
                        if uint8(var74007) > 31:
                            return uint8(idx)
                    else:
                        if uint8(var74004) == 7:
                            if uint8(var74007) > 31:
                                return uint8(idx)
                        else:
                            if uint8(var74004) == 8:
                                if uint8(var74007) > 31:
                                    return uint8(idx)
                            else:
                                if uint8(var74004) == 10:
                                    if uint8(var74007) > 31:
                                        return uint8(idx)
                                else:
                                    if uint8(var74004) == 12:
                                        if uint8(var74007) > 31:
                                            return uint8(idx)
                                    else:
                                        if uint8(var74004) == 4:
                                            if uint8(var74007) > 30:
                                                return uint8(idx)
                                        else:
                                            if uint8(var74004) == 6:
                                                if uint8(var74007) > 30:
                                                    return uint8(idx)
                                            else:
                                                if uint8(var74004) == 9:
                                                    if uint8(var74007) > 30:
                                                        return uint8(idx)
                                                else:
                                                    if uint8(var74004) == 11:
                                                        if uint8(var74007) > 30:
                                                            return uint8(idx)
                                                    else:
                                                        if var74003 % 4:
                                                            if uint8(var74007) > 28:
                                                                return uint8(idx)
                                                        else:
                                                            if uint16(uint16(var74003) % 100):
                                                                if uint8(var74007) > 29:
                                                                    return uint8(idx)
                                                            else:
                                                                if not uint16(uint16(var74003) % 400):
                                                                    if uint8(var74007) > 29:
                                                                        return uint8(idx)
                                                                else:
                                                                    if uint8(var74007) > 28:
                                                                        return uint8(idx)
                if var74009 + (24 * 3600) > arg1:
                    return uint8(idx)
                if uint8(idx) == 1:
                    var74001 = 0 == 1
                    var74003 = uint16(s)
                    var74004 = uint8(idx)
                    var74007 = var74007 + 1
                    var74009 = var74009 + (24 * 3600)
                    continue 
                var74001 = 0 == 3
                var74003 = uint16(s)
                var74004 = uint8(idx)
                var74007 = var74007 + 1
                var74009 = var74009 + (24 * 3600)
                continue 
            if var80001:
                if uint8(var80007) > 31:
                    return uint8(idx)
            else:
                if uint8(var80004) == 5:
                    if uint8(var80007) > 31:
                        return uint8(idx)
                else:
                    if uint8(var80004) == 7:
                        if uint8(var80007) > 31:
                            return uint8(idx)
                    else:
                        if uint8(var80004) == 8:
                            if uint8(var80007) > 31:
                                return uint8(idx)
                        else:
                            if uint8(var80004) == 10:
                                if uint8(var80007) > 31:
                                    return uint8(idx)
                            else:
                                if uint8(var80004) == 12:
                                    if uint8(var80007) > 31:
                                        return uint8(idx)
                                else:
                                    if uint8(var80004) == 4:
                                        if uint8(var80007) > 30:
                                            return uint8(idx)
                                    else:
                                        if uint8(var80004) == 6:
                                            if uint8(var80007) > 30:
                                                return uint8(idx)
                                        else:
                                            if uint8(var80004) == 9:
                                                if uint8(var80007) > 30:
                                                    return uint8(idx)
                                            else:
                                                if uint8(var80004) == 11:
                                                    if uint8(var80007) > 30:
                                                        return uint8(idx)
                                                else:
                                                    if var80003 % 4:
                                                        if uint8(var80007) > 28:
                                                            return uint8(idx)
                                                    else:
                                                        if uint16(uint16(var80003) % 100):
                                                            if uint8(var80007) > 29:
                                                                return uint8(idx)
                                                        else:
                                                            if not uint16(uint16(var80003) % 400):
                                                                if uint8(var80007) > 29:
                                                                    return uint8(idx)
                                                            else:
                                                                if uint8(var80007) > 28:
                                                                    return uint8(idx)
            if var80009 + (24 * 3600) > arg1:
                return uint8(idx)
            if uint8(idx) == 1:
                var80001 = 0 == 1
                var80003 = uint16(s)
                var80004 = uint8(idx)
                var80007 = var80007 + 1
                var80009 = var80009 + (24 * 3600)
                continue 
            var79001 = 0 == 1
            var79003 = uint16(s)
            var79004 = uint8(idx)
            var79007 = var80007 + 1
            var79009 = var80009 + (24 * 3600)
            continue 
        if uint8(idx) == 7:
            if t + (744 * 24 * 3600) <= arg1:
                t = 744 * 24 * 3600
                idx = idx + 1
                t = t + (744 * 24 * 3600)
                continue 
            mem[128] = uint8(idx)
            if uint8(var78002) == 1:
                if var75001:
                    if uint8(var75007) > 31:
                        return uint8(idx)
                else:
                    if uint8(var75004) == 5:
                        if uint8(var75007) > 31:
                            return uint8(idx)
                    else:
                        if uint8(var75004) == 7:
                            if uint8(var75007) > 31:
                                return uint8(idx)
                        else:
                            if uint8(var75004) == 8:
                                if uint8(var75007) > 31:
                                    return uint8(idx)
                            else:
                                if uint8(var75004) == 10:
                                    if uint8(var75007) > 31:
                                        return uint8(idx)
                                else:
                                    if uint8(var75004) == 12:
                                        if uint8(var75007) > 31:
                                            return uint8(idx)
                                    else:
                                        if uint8(var75004) == 4:
                                            if uint8(var75007) > 30:
                                                return uint8(idx)
                                        else:
                                            if uint8(var75004) == 6:
                                                if uint8(var75007) > 30:
                                                    return uint8(idx)
                                            else:
                                                if uint8(var75004) == 9:
                                                    if uint8(var75007) > 30:
                                                        return uint8(idx)
                                                else:
                                                    if uint8(var75004) == 11:
                                                        if uint8(var75007) > 30:
                                                            return uint8(idx)
                                                    else:
                                                        if var75003 % 4:
                                                            if uint8(var75007) > 28:
                                                                return uint8(idx)
                                                        else:
                                                            if uint16(uint16(var75003) % 100):
                                                                if uint8(var75007) > 29:
                                                                    return uint8(idx)
                                                            else:
                                                                if not uint16(uint16(var75003) % 400):
                                                                    if uint8(var75007) > 29:
                                                                        return uint8(idx)
                                                                else:
                                                                    if uint8(var75007) > 28:
                                                                        return uint8(idx)
                if var75009 + (24 * 3600) > arg1:
                    return uint8(idx)
                if uint8(idx) == 1:
                    var75001 = 0 == 1
                    var75003 = uint16(s)
                    var75004 = uint8(idx)
                    var75007 = var75007 + 1
                    var75009 = var75009 + (24 * 3600)
                    continue 
                var75001 = 0 == 3
                var75003 = uint16(s)
                var75004 = uint8(idx)
                var75007 = var75007 + 1
                var75009 = var75009 + (24 * 3600)
                continue 
            if var81001:
                if uint8(var81007) > 31:
                    return uint8(idx)
            else:
                if uint8(var81004) == 5:
                    if uint8(var81007) > 31:
                        return uint8(idx)
                else:
                    if uint8(var81004) == 7:
                        if uint8(var81007) > 31:
                            return uint8(idx)
                    else:
                        if uint8(var81004) == 8:
                            if uint8(var81007) > 31:
                                return uint8(idx)
                        else:
                            if uint8(var81004) == 10:
                                if uint8(var81007) > 31:
                                    return uint8(idx)
                            else:
                                if uint8(var81004) == 12:
                                    if uint8(var81007) > 31:
                                        return uint8(idx)
                                else:
                                    if uint8(var81004) == 4:
                                        if uint8(var81007) > 30:
                                            return uint8(idx)
                                    else:
                                        if uint8(var81004) == 6:
                                            if uint8(var81007) > 30:
                                                return uint8(idx)
                                        else:
                                            if uint8(var81004) == 9:
                                                if uint8(var81007) > 30:
                                                    return uint8(idx)
                                            else:
                                                if uint8(var81004) == 11:
                                                    if uint8(var81007) > 30:
                                                        return uint8(idx)
                                                else:
                                                    if var81003 % 4:
                                                        if uint8(var81007) > 28:
                                                            return uint8(idx)
                                                    else:
                                                        if uint16(uint16(var81003) % 100):
                                                            if uint8(var81007) > 29:
                                                                return uint8(idx)
                                                        else:
                                                            if not uint16(uint16(var81003) % 400):
                                                                if uint8(var81007) > 29:
                                                                    return uint8(idx)
                                                            else:
                                                                if uint8(var81007) > 28:
                                                                    return uint8(idx)
            if var81009 + (24 * 3600) > arg1:
                return uint8(idx)
            if uint8(idx) == 1:
                var81001 = 0 == 1
                var81003 = uint16(s)
                var81004 = uint8(idx)
                var81007 = var81007 + 1
                var81009 = var81009 + (24 * 3600)
                continue 
            var80001 = 0 == 1
            var80003 = uint16(s)
            var80004 = uint8(idx)
            var80007 = var81007 + 1
            var80009 = var81009 + (24 * 3600)
            continue 
        if uint8(idx) == 8:
            if t + (744 * 24 * 3600) <= arg1:
                t = 744 * 24 * 3600
                idx = idx + 1
                t = t + (744 * 24 * 3600)
                continue 
            mem[128] = uint8(idx)
            if uint8(var79002) == 1:
                if var76001:
                    if uint8(var76007) > 31:
                        return uint8(idx)
                else:
                    if uint8(var76004) == 5:
                        if uint8(var76007) > 31:
                            return uint8(idx)
                    else:
                        if uint8(var76004) == 7:
                            if uint8(var76007) > 31:
                                return uint8(idx)
                        else:
                            if uint8(var76004) == 8:
                                if uint8(var76007) > 31:
                                    return uint8(idx)
                            else:
                                if uint8(var76004) == 10:
                                    if uint8(var76007) > 31:
                                        return uint8(idx)
                                else:
                                    if uint8(var76004) == 12:
                                        if uint8(var76007) > 31:
                                            return uint8(idx)
                                    else:
                                        if uint8(var76004) == 4:
                                            if uint8(var76007) > 30:
                                                return uint8(idx)
                                        else:
                                            if uint8(var76004) == 6:
                                                if uint8(var76007) > 30:
                                                    return uint8(idx)
                                            else:
                                                if uint8(var76004) == 9:
                                                    if uint8(var76007) > 30:
                                                        return uint8(idx)
                                                else:
                                                    if uint8(var76004) == 11:
                                                        if uint8(var76007) > 30:
                                                            return uint8(idx)
                                                    else:
                                                        if var76003 % 4:
                                                            if uint8(var76007) > 28:
                                                                return uint8(idx)
                                                        else:
                                                            if uint16(uint16(var76003) % 100):
                                                                if uint8(var76007) > 29:
                                                                    return uint8(idx)
                                                            else:
                                                                if not uint16(uint16(var76003) % 400):
                                                                    if uint8(var76007) > 29:
                                                                        return uint8(idx)
                                                                else:
                                                                    if uint8(var76007) > 28:
                                                                        return uint8(idx)
                if var76009 + (24 * 3600) > arg1:
                    return uint8(idx)
                if uint8(idx) == 1:
                    var76001 = 0 == 1
                    var76003 = uint16(s)
                    var76004 = uint8(idx)
                    var76007 = var76007 + 1
                    var76009 = var76009 + (24 * 3600)
                    continue 
                var76001 = 0 == 3
                var76003 = uint16(s)
                var76004 = uint8(idx)
                var76007 = var76007 + 1
                var76009 = var76009 + (24 * 3600)
                continue 
            if var82001:
                if uint8(var82007) > 31:
                    return uint8(idx)
            else:
                if uint8(var82004) == 5:
                    if uint8(var82007) > 31:
                        return uint8(idx)
                else:
                    if uint8(var82004) == 7:
                        if uint8(var82007) > 31:
                            return uint8(idx)
                    else:
                        if uint8(var82004) == 8:
                            if uint8(var82007) > 31:
                                return uint8(idx)
                        else:
                            if uint8(var82004) == 10:
                                if uint8(var82007) > 31:
                                    return uint8(idx)
                            else:
                                if uint8(var82004) == 12:
                                    if uint8(var82007) > 31:
                                        return uint8(idx)
                                else:
                                    if uint8(var82004) == 4:
                                        if uint8(var82007) > 30:
                                            return uint8(idx)
                                    else:
                                        if uint8(var82004) == 6:
                                            if uint8(var82007) > 30:
                                                return uint8(idx)
                                        else:
                                            if uint8(var82004) == 9:
                                                if uint8(var82007) > 30:
                                                    return uint8(idx)
                                            else:
                                                if uint8(var82004) == 11:
                                                    if uint8(var82007) > 30:
                                                        return uint8(idx)
                                                else:
                                                    if var82003 % 4:
                                                        if uint8(var82007) > 28:
                                                            return uint8(idx)
                                                    else:
                                                        if uint16(uint16(var82003) % 100):
                                                            if uint8(var82007) > 29:
                                                                return uint8(idx)
                                                        else:
                                                            if not uint16(uint16(var82003) % 400):
                                                                if uint8(var82007) > 29:
                                                                    return uint8(idx)
                                                            else:
                                                                if uint8(var82007) > 28:
                                                                    return uint8(idx)
            if var82009 + (24 * 3600) > arg1:
                return uint8(idx)
            if uint8(idx) == 1:
                var82001 = 0 == 1
                var82003 = uint16(s)
                var82004 = uint8(idx)
                var82007 = var82007 + 1
                var82009 = var82009 + (24 * 3600)
                continue 
            var81001 = 0 == 1
            var81003 = uint16(s)
            var81004 = uint8(idx)
            var81007 = var82007 + 1
            var81009 = var82009 + (24 * 3600)
            continue 
        if uint8(idx) == 10:
            if t + (744 * 24 * 3600) <= arg1:
                t = 744 * 24 * 3600
                idx = idx + 1
                t = t + (744 * 24 * 3600)
                continue 
            mem[128] = uint8(idx)
            if uint8(var80002) == 1:
                if var77001:
                    if uint8(var77007) > 31:
                        return uint8(idx)
                else:
                    if uint8(var77004) == 5:
                        if uint8(var77007) > 31:
                            return uint8(idx)
                    else:
                        if uint8(var77004) == 7:
                            if uint8(var77007) > 31:
                                return uint8(idx)
                        else:
                            if uint8(var77004) == 8:
                                if uint8(var77007) > 31:
                                    return uint8(idx)
                            else:
                                if uint8(var77004) == 10:
                                    if uint8(var77007) > 31:
                                        return uint8(idx)
                                else:
                                    if uint8(var77004) == 12:
                                        if uint8(var77007) > 31:
                                            return uint8(idx)
                                    else:
                                        if uint8(var77004) == 4:
                                            if uint8(var77007) > 30:
                                                return uint8(idx)
                                        else:
                                            if uint8(var77004) == 6:
                                                if uint8(var77007) > 30:
                                                    return uint8(idx)
                                            else:
                                                if uint8(var77004) == 9:
                                                    if uint8(var77007) > 30:
                                                        return uint8(idx)
                                                else:
                                                    if uint8(var77004) == 11:
                                                        if uint8(var77007) > 30:
                                                            return uint8(idx)
                                                    else:
                                                        if var77003 % 4:
                                                            if uint8(var77007) > 28:
                                                                return uint8(idx)
                                                        else:
                                                            if uint16(uint16(var77003) % 100):
                                                                if uint8(var77007) > 29:
                                                                    return uint8(idx)
                                                            else:
                                                                if not uint16(uint16(var77003) % 400):
                                                                    if uint8(var77007) > 29:
                                                                        return uint8(idx)
                                                                else:
                                                                    if uint8(var77007) > 28:
                                                                        return uint8(idx)
                if var77009 + (24 * 3600) > arg1:
                    return uint8(idx)
                if uint8(idx) == 1:
                    var77001 = 0 == 1
                    var77003 = uint16(s)
                    var77004 = uint8(idx)
                    var77007 = var77007 + 1
                    var77009 = var77009 + (24 * 3600)
                    continue 
                var77001 = 0 == 3
                var77003 = uint16(s)
                var77004 = uint8(idx)
                var77007 = var77007 + 1
                var77009 = var77009 + (24 * 3600)
                continue 
            if var83001:
                if uint8(var83007) > 31:
                    return uint8(idx)
            else:
                if uint8(var83004) == 5:
                    if uint8(var83007) > 31:
                        return uint8(idx)
                else:
                    if uint8(var83004) == 7:
                        if uint8(var83007) > 31:
                            return uint8(idx)
                    else:
                        if uint8(var83004) == 8:
                            if uint8(var83007) > 31:
                                return uint8(idx)
                        else:
                            if uint8(var83004) == 10:
                                if uint8(var83007) > 31:
                                    return uint8(idx)
                            else:
                                if uint8(var83004) == 12:
                                    if uint8(var83007) > 31:
                                        return uint8(idx)
                                else:
                                    if uint8(var83004) == 4:
                                        if uint8(var83007) > 30:
                                            return uint8(idx)
                                    else:
                                        if uint8(var83004) == 6:
                                            if uint8(var83007) > 30:
                                                return uint8(idx)
                                        else:
                                            if uint8(var83004) == 9:
                                                if uint8(var83007) > 30:
                                                    return uint8(idx)
                                            else:
                                                if uint8(var83004) == 11:
                                                    if uint8(var83007) > 30:
                                                        return uint8(idx)
                                                else:
                                                    if var83003 % 4:
                                                        if uint8(var83007) > 28:
                                                            return uint8(idx)
                                                    else:
                                                        if uint16(uint16(var83003) % 100):
                                                            if uint8(var83007) > 29:
                                                                return uint8(idx)
                                                        else:
                                                            if not uint16(uint16(var83003) % 400):
                                                                if uint8(var83007) > 29:
                                                                    return uint8(idx)
                                                            else:
                                                                if uint8(var83007) > 28:
                                                                    return uint8(idx)
            if var83009 + (24 * 3600) > arg1:
                return uint8(idx)
            if uint8(idx) == 1:
                var83001 = 0 == 1
                var83003 = uint16(s)
                var83004 = uint8(idx)
                var83007 = var83007 + 1
                var83009 = var83009 + (24 * 3600)
                continue 
            var82001 = 0 == 1
            var82003 = uint16(s)
            var82004 = uint8(idx)
            var82007 = var83007 + 1
            var82009 = var83009 + (24 * 3600)
            continue 
        if uint8(idx) == 12:
            if t + (744 * 24 * 3600) <= arg1:
                t = 744 * 24 * 3600
                idx = idx + 1
                t = t + (744 * 24 * 3600)
                continue 
            mem[128] = uint8(idx)
            if uint8(var81002) == 1:
                if var78001:
                    if uint8(var78007) > 31:
                        return uint8(idx)
                else:
                    if uint8(var78004) == 5:
                        if uint8(var78007) > 31:
                            return uint8(idx)
                    else:
                        if uint8(var78004) == 7:
                            if uint8(var78007) > 31:
                                return uint8(idx)
                        else:
                            if uint8(var78004) == 8:
                                if uint8(var78007) > 31:
                                    return uint8(idx)
                            else:
                                if uint8(var78004) == 10:
                                    if uint8(var78007) > 31:
                                        return uint8(idx)
                                else:
                                    if uint8(var78004) == 12:
                                        if uint8(var78007) > 31:
                                            return uint8(idx)
                                    else:
                                        if uint8(var78004) == 4:
                                            if uint8(var78007) > 30:
                                                return uint8(idx)
                                        else:
                                            if uint8(var78004) == 6:
                                                if uint8(var78007) > 30:
                                                    return uint8(idx)
                                            else:
                                                if uint8(var78004) == 9:
                                                    if uint8(var78007) > 30:
                                                        return uint8(idx)
                                                else:
                                                    if uint8(var78004) == 11:
                                                        if uint8(var78007) > 30:
                                                            return uint8(idx)
                                                    else:
                                                        if var78003 % 4:
                                                            if uint8(var78007) > 28:
                                                                return uint8(idx)
                                                        else:
                                                            if uint16(uint16(var78003) % 100):
                                                                if uint8(var78007) > 29:
                                                                    return uint8(idx)
                                                            else:
                                                                if not uint16(uint16(var78003) % 400):
                                                                    if uint8(var78007) > 29:
                                                                        return uint8(idx)
                                                                else:
                                                                    if uint8(var78007) > 28:
                                                                        return uint8(idx)
                if var78009 + (24 * 3600) > arg1:
                    return uint8(idx)
                if uint8(idx) == 1:
                    var78001 = 0 == 1
                    var78003 = uint16(s)
                    var78004 = uint8(idx)
                    var78007 = var78007 + 1
                    var78009 = var78009 + (24 * 3600)
                    continue 
                var78001 = 0 == 3
                var78003 = uint16(s)
                var78004 = uint8(idx)
                var78007 = var78007 + 1
                var78009 = var78009 + (24 * 3600)
                continue 
            if var84001:
                if uint8(var84007) > 31:
                    return uint8(idx)
            else:
                if uint8(var84004) == 5:
                    if uint8(var84007) > 31:
                        return uint8(idx)
                else:
                    if uint8(var84004) == 7:
                        if uint8(var84007) > 31:
                            return uint8(idx)
                    else:
                        if uint8(var84004) == 8:
                            if uint8(var84007) > 31:
                                return uint8(idx)
                        else:
                            if uint8(var84004) == 10:
                                if uint8(var84007) > 31:
                                    return uint8(idx)
                            else:
                                if uint8(var84004) == 12:
                                    if uint8(var84007) > 31:
                                        return uint8(idx)
                                else:
                                    if uint8(var84004) == 4:
                                        if uint8(var84007) > 30:
                                            return uint8(idx)
                                    else:
                                        if uint8(var84004) == 6:
                                            if uint8(var84007) > 30:
                                                return uint8(idx)
                                        else:
                                            if uint8(var84004) == 9:
                                                if uint8(var84007) > 30:
                                                    return uint8(idx)
                                            else:
                                                if uint8(var84004) == 11:
                                                    if uint8(var84007) > 30:
                                                        return uint8(idx)
                                                else:
                                                    if var84003 % 4:
                                                        if uint8(var84007) > 28:
                                                            return uint8(idx)
                                                    else:
                                                        if uint16(uint16(var84003) % 100):
                                                            if uint8(var84007) > 29:
                                                                return uint8(idx)
                                                        else:
                                                            if not uint16(uint16(var84003) % 400):
                                                                if uint8(var84007) > 29:
                                                                    return uint8(idx)
                                                            else:
                                                                if uint8(var84007) > 28:
                                                                    return uint8(idx)
            if var84009 + (24 * 3600) > arg1:
                return uint8(idx)
            if uint8(idx) == 1:
                var84001 = 0 == 1
                var84003 = uint16(s)
                var84004 = uint8(idx)
                var84007 = var84007 + 1
                var84009 = var84009 + (24 * 3600)
                continue 
            var83001 = 0 == 1
            var83003 = uint16(s)
            var83004 = uint8(idx)
            var83007 = var84007 + 1
            var83009 = var84009 + (24 * 3600)
            continue 
        if uint8(idx) == 4:
            if t + (720 * 24 * 3600) <= arg1:
                t = 720 * 24 * 3600
                idx = idx + 1
                t = t + (720 * 24 * 3600)
                continue 
            mem[128] = uint8(idx)
            if uint8(var85002) == 1:
                if var82001:
                    if uint8(var82007) > 31:
                        return uint8(idx)
                else:
                    if uint8(var82004) == 5:
                        if uint8(var82007) > 31:
                            return uint8(idx)
                    else:
                        if uint8(var82004) == 7:
                            if uint8(var82007) > 31:
                                return uint8(idx)
                        else:
                            if uint8(var82004) == 8:
                                if uint8(var82007) > 31:
                                    return uint8(idx)
                            else:
                                if uint8(var82004) == 10:
                                    if uint8(var82007) > 31:
                                        return uint8(idx)
                                else:
                                    if uint8(var82004) == 12:
                                        if uint8(var82007) > 31:
                                            return uint8(idx)
                                    else:
                                        if uint8(var82004) == 4:
                                            if uint8(var82007) > 30:
                                                return uint8(idx)
                                        else:
                                            if uint8(var82004) == 6:
                                                if uint8(var82007) > 30:
                                                    return uint8(idx)
                                            else:
                                                if uint8(var82004) == 9:
                                                    if uint8(var82007) > 30:
                                                        return uint8(idx)
                                                else:
                                                    if uint8(var82004) == 11:
                                                        if uint8(var82007) > 30:
                                                            return uint8(idx)
                                                    else:
                                                        if var82003 % 4:
                                                            if uint8(var82007) > 28:
                                                                return uint8(idx)
                                                        else:
                                                            if uint16(uint16(var82003) % 100):
                                                                if uint8(var82007) > 29:
                                                                    return uint8(idx)
                                                            else:
                                                                if not uint16(uint16(var82003) % 400):
                                                                    if uint8(var82007) > 29:
                                                                        return uint8(idx)
                                                                else:
                                                                    if uint8(var82007) > 28:
                                                                        return uint8(idx)
                if var82009 + (24 * 3600) > arg1:
                    return uint8(idx)
                if uint8(idx) == 1:
                    var82001 = 0 == 1
                    var82003 = uint16(s)
                    var82004 = uint8(idx)
                    var82007 = var82007 + 1
                    var82009 = var82009 + (24 * 3600)
                    continue 
                var82001 = 0 == 3
                var82003 = uint16(s)
                var82004 = uint8(idx)
                var82007 = var82007 + 1
                var82009 = var82009 + (24 * 3600)
                continue 
            if var88001:
                if uint8(var88007) > 31:
                    return uint8(idx)
            else:
                if uint8(var88004) == 5:
                    if uint8(var88007) > 31:
                        return uint8(idx)
                else:
                    if uint8(var88004) == 7:
                        if uint8(var88007) > 31:
                            return uint8(idx)
                    else:
                        if uint8(var88004) == 8:
                            if uint8(var88007) > 31:
                                return uint8(idx)
                        else:
                            if uint8(var88004) == 10:
                                if uint8(var88007) > 31:
                                    return uint8(idx)
                            else:
                                if uint8(var88004) == 12:
                                    if uint8(var88007) > 31:
                                        return uint8(idx)
                                else:
                                    if uint8(var88004) == 4:
                                        if uint8(var88007) > 30:
                                            return uint8(idx)
                                    else:
                                        if uint8(var88004) == 6:
                                            if uint8(var88007) > 30:
                                                return uint8(idx)
                                        else:
                                            if uint8(var88004) == 9:
                                                if uint8(var88007) > 30:
                                                    return uint8(idx)
                                            else:
                                                if uint8(var88004) == 11:
                                                    if uint8(var88007) > 30:
                                                        return uint8(idx)
                                                else:
                                                    if var88003 % 4:
                                                        if uint8(var88007) > 28:
                                                            return uint8(idx)
                                                    else:
                                                        if uint16(uint16(var88003) % 100):
                                                            if uint8(var88007) > 29:
                                                                return uint8(idx)
                                                        else:
                                                            if not uint16(uint16(var88003) % 400):
                                                                if uint8(var88007) > 29:
                                                                    return uint8(idx)
                                                            else:
                                                                if uint8(var88007) > 28:
                                                                    return uint8(idx)
            if var88009 + (24 * 3600) > arg1:
                return uint8(idx)
            if uint8(idx) == 1:
                var88001 = 0 == 1
                var88003 = uint16(s)
                var88004 = uint8(idx)
                var88007 = var88007 + 1
                var88009 = var88009 + (24 * 3600)
                continue 
            var87001 = 0 == 1
            var87003 = uint16(s)
            var87004 = uint8(idx)
            var87007 = var88007 + 1
            var87009 = var88009 + (24 * 3600)
            continue 
        if uint8(idx) == 6:
            if t + (720 * 24 * 3600) <= arg1:
                t = 720 * 24 * 3600
                idx = idx + 1
                t = t + (720 * 24 * 3600)
                continue 
            mem[128] = uint8(idx)
            if uint8(var86002) == 1:
                if var83001:
                    if uint8(var83007) > 31:
                        return uint8(idx)
                else:
                    if uint8(var83004) == 5:
                        if uint8(var83007) > 31:
                            return uint8(idx)
                    else:
                        if uint8(var83004) == 7:
                            if uint8(var83007) > 31:
                                return uint8(idx)
                        else:
                            if uint8(var83004) == 8:
                                if uint8(var83007) > 31:
                                    return uint8(idx)
                            else:
                                if uint8(var83004) == 10:
                                    if uint8(var83007) > 31:
                                        return uint8(idx)
                                else:
                                    if uint8(var83004) == 12:
                                        if uint8(var83007) > 31:
                                            return uint8(idx)
                                    else:
                                        if uint8(var83004) == 4:
                                            if uint8(var83007) > 30:
                                                return uint8(idx)
                                        else:
                                            if uint8(var83004) == 6:
                                                if uint8(var83007) > 30:
                                                    return uint8(idx)
                                            else:
                                                if uint8(var83004) == 9:
                                                    if uint8(var83007) > 30:
                                                        return uint8(idx)
                                                else:
                                                    if uint8(var83004) == 11:
                                                        if uint8(var83007) > 30:
                                                            return uint8(idx)
                                                    else:
                                                        if var83003 % 4:
                                                            if uint8(var83007) > 28:
                                                                return uint8(idx)
                                                        else:
                                                            if uint16(uint16(var83003) % 100):
                                                                if uint8(var83007) > 29:
                                                                    return uint8(idx)
                                                            else:
                                                                if not uint16(uint16(var83003) % 400):
                                                                    if uint8(var83007) > 29:
                                                                        return uint8(idx)
                                                                else:
                                                                    if uint8(var83007) > 28:
                                                                        return uint8(idx)
                if var83009 + (24 * 3600) > arg1:
                    return uint8(idx)
                if uint8(idx) == 1:
                    var83001 = 0 == 1
                    var83003 = uint16(s)
                    var83004 = uint8(idx)
                    var83007 = var83007 + 1
                    var83009 = var83009 + (24 * 3600)
                    continue 
                var83001 = 0 == 3
                var83003 = uint16(s)
                var83004 = uint8(idx)
                var83007 = var83007 + 1
                var83009 = var83009 + (24 * 3600)
                continue 
            if var89001:
                if uint8(var89007) > 31:
                    return uint8(idx)
            else:
                if uint8(var89004) == 5:
                    if uint8(var89007) > 31:
                        return uint8(idx)
                else:
                    if uint8(var89004) == 7:
                        if uint8(var89007) > 31:
                            return uint8(idx)
                    else:
                        if uint8(var89004) == 8:
                            if uint8(var89007) > 31:
                                return uint8(idx)
                        else:
                            if uint8(var89004) == 10:
                                if uint8(var89007) > 31:
                                    return uint8(idx)
                            else:
                                if uint8(var89004) == 12:
                                    if uint8(var89007) > 31:
                                        return uint8(idx)
                                else:
                                    if uint8(var89004) == 4:
                                        if uint8(var89007) > 30:
                                            return uint8(idx)
                                    else:
                                        if uint8(var89004) == 6:
                                            if uint8(var89007) > 30:
                                                return uint8(idx)
                                        else:
                                            if uint8(var89004) == 9:
                                                if uint8(var89007) > 30:
                                                    return uint8(idx)
                                            else:
                                                if uint8(var89004) == 11:
                                                    if uint8(var89007) > 30:
                                                        return uint8(idx)
                                                else:
                                                    if var89003 % 4:
                                                        if uint8(var89007) > 28:
                                                            return uint8(idx)
                                                    else:
                                                        if uint16(uint16(var89003) % 100):
                                                            if uint8(var89007) > 29:
                                                                return uint8(idx)
                                                        else:
                                                            if not uint16(uint16(var89003) % 400):
                                                                if uint8(var89007) > 29:
                                                                    return uint8(idx)
                                                            else:
                                                                if uint8(var89007) > 28:
                                                                    return uint8(idx)
            if var89009 + (24 * 3600) > arg1:
                return uint8(idx)
            if uint8(idx) == 1:
                var89001 = 0 == 1
                var89003 = uint16(s)
                var89004 = uint8(idx)
                var89007 = var89007 + 1
                var89009 = var89009 + (24 * 3600)
                continue 
            var88001 = 0 == 1
            var88003 = uint16(s)
            var88004 = uint8(idx)
            var88007 = var89007 + 1
            var88009 = var89009 + (24 * 3600)
            continue 
        if uint8(idx) == 9:
            if t + (720 * 24 * 3600) <= arg1:
                t = 720 * 24 * 3600
                idx = idx + 1
                t = t + (720 * 24 * 3600)
                continue 
            mem[128] = uint8(idx)
            if uint8(var87002) == 1:
                if var84001:
                    if uint8(var84007) > 31:
                        return uint8(idx)
                else:
                    if uint8(var84004) == 5:
                        if uint8(var84007) > 31:
                            return uint8(idx)
                    else:
                        if uint8(var84004) == 7:
                            if uint8(var84007) > 31:
                                return uint8(idx)
                        else:
                            if uint8(var84004) == 8:
                                if uint8(var84007) > 31:
                                    return uint8(idx)
                            else:
                                if uint8(var84004) == 10:
                                    if uint8(var84007) > 31:
                                        return uint8(idx)
                                else:
                                    if uint8(var84004) == 12:
                                        if uint8(var84007) > 31:
                                            return uint8(idx)
                                    else:
                                        if uint8(var84004) == 4:
                                            if uint8(var84007) > 30:
                                                return uint8(idx)
                                        else:
                                            if uint8(var84004) == 6:
                                                if uint8(var84007) > 30:
                                                    return uint8(idx)
                                            else:
                                                if uint8(var84004) == 9:
                                                    if uint8(var84007) > 30:
                                                        return uint8(idx)
                                                else:
                                                    if uint8(var84004) == 11:
                                                        if uint8(var84007) > 30:
                                                            return uint8(idx)
                                                    else:
                                                        if var84003 % 4:
                                                            if uint8(var84007) > 28:
                                                                return uint8(idx)
                                                        else:
                                                            if uint16(uint16(var84003) % 100):
                                                                if uint8(var84007) > 29:
                                                                    return uint8(idx)
                                                            else:
                                                                if not uint16(uint16(var84003) % 400):
                                                                    if uint8(var84007) > 29:
                                                                        return uint8(idx)
                                                                else:
                                                                    if uint8(var84007) > 28:
                                                                        return uint8(idx)
                if var84009 + (24 * 3600) > arg1:
                    return uint8(idx)
                if uint8(idx) == 1:
                    var84001 = 0 == 1
                    var84003 = uint16(s)
                    var84004 = uint8(idx)
                    var84007 = var84007 + 1
                    var84009 = var84009 + (24 * 3600)
                    continue 
                var84001 = 0 == 3
                var84003 = uint16(s)
                var84004 = uint8(idx)
                var84007 = var84007 + 1
                var84009 = var84009 + (24 * 3600)
                continue 
            if var90001:
                if uint8(var90007) > 31:
                    return uint8(idx)
            else:
                if uint8(var90004) == 5:
                    if uint8(var90007) > 31:
                        return uint8(idx)
                else:
                    if uint8(var90004) == 7:
                        if uint8(var90007) > 31:
                            return uint8(idx)
                    else:
                        if uint8(var90004) == 8:
                            if uint8(var90007) > 31:
                                return uint8(idx)
                        else:
                            if uint8(var90004) == 10:
                                if uint8(var90007) > 31:
                                    return uint8(idx)
                            else:
                                if uint8(var90004) == 12:
                                    if uint8(var90007) > 31:
                                        return uint8(idx)
                                else:
                                    if uint8(var90004) == 4:
                                        if uint8(var90007) > 30:
                                            return uint8(idx)
                                    else:
                                        if uint8(var90004) == 6:
                                            if uint8(var90007) > 30:
                                                return uint8(idx)
                                        else:
                                            if uint8(var90004) == 9:
                                                if uint8(var90007) > 30:
                                                    return uint8(idx)
                                            else:
                                                if uint8(var90004) == 11:
                                                    if uint8(var90007) > 30:
                                                        return uint8(idx)
                                                else:
                                                    if var90003 % 4:
                                                        if uint8(var90007) > 28:
                                                            return uint8(idx)
                                                    else:
                                                        if uint16(uint16(var90003) % 100):
                                                            if uint8(var90007) > 29:
                                                                return uint8(idx)
                                                        else:
                                                            if not uint16(uint16(var90003) % 400):
                                                                if uint8(var90007) > 29:
                                                                    return uint8(idx)
                                                            else:
                                                                if uint8(var90007) > 28:
                                                                    return uint8(idx)
            if var90009 + (24 * 3600) > arg1:
                return uint8(idx)
            if uint8(idx) == 1:
                var90001 = 0 == 1
                var90003 = uint16(s)
                var90004 = uint8(idx)
                var90007 = var90007 + 1
                var90009 = var90009 + (24 * 3600)
                continue 
            var89001 = 0 == 1
            var89003 = uint16(s)
            var89004 = uint8(idx)
            var89007 = var90007 + 1
            var89009 = var90009 + (24 * 3600)
            continue 
        if uint8(idx) == 11:
            if t + (720 * 24 * 3600) <= arg1:
                t = 720 * 24 * 3600
                idx = idx + 1
                t = t + (720 * 24 * 3600)
                continue 
            mem[128] = uint8(idx)
            if uint8(var88002) == 1:
                if var85001:
                    if uint8(var85007) > 31:
                        return uint8(idx)
                else:
                    if uint8(var85004) == 5:
                        if uint8(var85007) > 31:
                            return uint8(idx)
                    else:
                        if uint8(var85004) == 7:
                            if uint8(var85007) > 31:
                                return uint8(idx)
                        else:
                            if uint8(var85004) == 8:
                                if uint8(var85007) > 31:
                                    return uint8(idx)
                            else:
                                if uint8(var85004) == 10:
                                    if uint8(var85007) > 31:
                                        return uint8(idx)
                                else:
                                    if uint8(var85004) == 12:
                                        if uint8(var85007) > 31:
                                            return uint8(idx)
                                    else:
                                        if uint8(var85004) == 4:
                                            if uint8(var85007) > 30:
                                                return uint8(idx)
                                        else:
                                            if uint8(var85004) == 6:
                                                if uint8(var85007) > 30:
                                                    return uint8(idx)
                                            else:
                                                if uint8(var85004) == 9:
                                                    if uint8(var85007) > 30:
                                                        return uint8(idx)
                                                else:
                                                    if uint8(var85004) == 11:
                                                        if uint8(var85007) > 30:
                                                            return uint8(idx)
                                                    else:
                                                        if var85003 % 4:
                                                            if uint8(var85007) > 28:
                                                                return uint8(idx)
                                                        else:
                                                            if uint16(uint16(var85003) % 100):
                                                                if uint8(var85007) > 29:
                                                                    return uint8(idx)
                                                            else:
                                                                if not uint16(uint16(var85003) % 400):
                                                                    if uint8(var85007) > 29:
                                                                        return uint8(idx)
                                                                else:
                                                                    if uint8(var85007) > 28:
                                                                        return uint8(idx)
                if var85009 + (24 * 3600) > arg1:
                    return uint8(idx)
                if uint8(idx) == 1:
                    var85001 = 0 == 1
                    var85003 = uint16(s)
                    var85004 = uint8(idx)
                    var85007 = var85007 + 1
                    var85009 = var85009 + (24 * 3600)
                    continue 
                var85001 = 0 == 3
                var85003 = uint16(s)
                var85004 = uint8(idx)
                var85007 = var85007 + 1
                var85009 = var85009 + (24 * 3600)
                continue 
            if var91001:
                if uint8(var91007) > 31:
                    return uint8(idx)
            else:
                if uint8(var91004) == 5:
                    if uint8(var91007) > 31:
                        return uint8(idx)
                else:
                    if uint8(var91004) == 7:
                        if uint8(var91007) > 31:
                            return uint8(idx)
                    else:
                        if uint8(var91004) == 8:
                            if uint8(var91007) > 31:
                                return uint8(idx)
                        else:
                            if uint8(var91004) == 10:
                                if uint8(var91007) > 31:
                                    return uint8(idx)
                            else:
                                if uint8(var91004) == 12:
                                    if uint8(var91007) > 31:
                                        return uint8(idx)
                                else:
                                    if uint8(var91004) == 4:
                                        if uint8(var91007) > 30:
                                            return uint8(idx)
                                    else:
                                        if uint8(var91004) == 6:
                                            if uint8(var91007) > 30:
                                                return uint8(idx)
                                        else:
                                            if uint8(var91004) == 9:
                                                if uint8(var91007) > 30:
                                                    return uint8(idx)
                                            else:
                                                if uint8(var91004) == 11:
                                                    if uint8(var91007) > 30:
                                                        return uint8(idx)
                                                else:
                                                    if var91003 % 4:
                                                        if uint8(var91007) > 28:
                                                            return uint8(idx)
                                                    else:
                                                        if uint16(uint16(var91003) % 100):
                                                            if uint8(var91007) > 29:
                                                                return uint8(idx)
                                                        else:
                                                            if not uint16(uint16(var91003) % 400):
                                                                if uint8(var91007) > 29:
                                                                    return uint8(idx)
                                                            else:
                                                                if uint8(var91007) > 28:
                                                                    return uint8(idx)
            if var91009 + (24 * 3600) > arg1:
                return uint8(idx)
            if uint8(idx) == 1:
                var91001 = 0 == 1
                var91003 = uint16(s)
                var91004 = uint8(idx)
                var91007 = var91007 + 1
                var91009 = var91009 + (24 * 3600)
                continue 
            var90001 = 0 == 1
            var90003 = uint16(s)
            var90004 = uint8(idx)
            var90007 = var91007 + 1
            var90009 = var91009 + (24 * 3600)
            continue 
        if s % 4:
            if t + (672 * 24 * 3600) <= arg1:
                t = 672 * 24 * 3600
                idx = idx + 1
                t = t + (672 * 24 * 3600)
                continue 
            mem[128] = uint8(idx)
            if uint8(var94002) == 1:
                if var91001:
                    if uint8(var91007) > 31:
                        return uint8(idx)
                else:
                    if uint8(var91004) == 5:
                        if uint8(var91007) > 31:
                            return uint8(idx)
                    else:
                        if uint8(var91004) == 7:
                            if uint8(var91007) > 31:
                                return uint8(idx)
                        else:
                            if uint8(var91004) == 8:
                                if uint8(var91007) > 31:
                                    return uint8(idx)
                            else:
                                if uint8(var91004) == 10:
                                    if uint8(var91007) > 31:
                                        return uint8(idx)
                                else:
                                    if uint8(var91004) == 12:
                                        if uint8(var91007) > 31:
                                            return uint8(idx)
                                    else:
                                        if uint8(var91004) == 4:
                                            if uint8(var91007) > 30:
                                                return uint8(idx)
                                        else:
                                            if uint8(var91004) == 6:
                                                if uint8(var91007) > 30:
                                                    return uint8(idx)
                                            else:
                                                if uint8(var91004) == 9:
                                                    if uint8(var91007) > 30:
                                                        return uint8(idx)
                                                else:
                                                    if uint8(var91004) == 11:
                                                        if uint8(var91007) > 30:
                                                            return uint8(idx)
                                                    else:
                                                        if var91003 % 4:
                                                            if uint8(var91007) > 28:
                                                                return uint8(idx)
                                                        else:
                                                            if uint16(uint16(var91003) % 100):
                                                                if uint8(var91007) > 29:
                                                                    return uint8(idx)
                                                            else:
                                                                if not uint16(uint16(var91003) % 400):
                                                                    if uint8(var91007) > 29:
                                                                        return uint8(idx)
                                                                else:
                                                                    if uint8(var91007) > 28:
                                                                        return uint8(idx)
                if var91009 + (24 * 3600) > arg1:
                    return uint8(idx)
                if uint8(idx) == 1:
                    var91001 = 0 == 1
                    var91003 = uint16(s)
                    var91004 = uint8(idx)
                    var91007 = var91007 + 1
                    var91009 = var91009 + (24 * 3600)
                    continue 
                var91001 = 0 == 3
                var91003 = uint16(s)
                var91004 = uint8(idx)
                var91007 = var91007 + 1
                var91009 = var91009 + (24 * 3600)
                continue 
            if var97001:
                if uint8(var97007) > 31:
                    return uint8(idx)
            else:
                if uint8(var97004) == 5:
                    if uint8(var97007) > 31:
                        return uint8(idx)
                else:
                    if uint8(var97004) == 7:
                        if uint8(var97007) > 31:
                            return uint8(idx)
                    else:
                        if uint8(var97004) == 8:
                            if uint8(var97007) > 31:
                                return uint8(idx)
                        else:
                            if uint8(var97004) == 10:
                                if uint8(var97007) > 31:
                                    return uint8(idx)
                            else:
                                if uint8(var97004) == 12:
                                    if uint8(var97007) > 31:
                                        return uint8(idx)
                                else:
                                    if uint8(var97004) == 4:
                                        if uint8(var97007) > 30:
                                            return uint8(idx)
                                    else:
                                        if uint8(var97004) == 6:
                                            if uint8(var97007) > 30:
                                                return uint8(idx)
                                        else:
                                            if uint8(var97004) == 9:
                                                if uint8(var97007) > 30:
                                                    return uint8(idx)
                                            else:
                                                if uint8(var97004) == 11:
                                                    if uint8(var97007) > 30:
                                                        return uint8(idx)
                                                else:
                                                    if var97003 % 4:
                                                        if uint8(var97007) > 28:
                                                            return uint8(idx)
                                                    else:
                                                        if uint16(uint16(var97003) % 100):
                                                            if uint8(var97007) > 29:
                                                                return uint8(idx)
                                                        else:
                                                            if not uint16(uint16(var97003) % 400):
                                                                if uint8(var97007) > 29:
                                                                    return uint8(idx)
                                                            else:
                                                                if uint8(var97007) > 28:
                                                                    return uint8(idx)
            if var97009 + (24 * 3600) > arg1:
                return uint8(idx)
            if uint8(idx) == 1:
                var97001 = 0 == 1
                var97003 = uint16(s)
                var97004 = uint8(idx)
                var97007 = var97007 + 1
                var97009 = var97009 + (24 * 3600)
                continue 
            var96001 = 0 == 1
            var96003 = uint16(s)
            var96004 = uint8(idx)
            var96007 = var97007 + 1
            var96009 = var97009 + (24 * 3600)
            continue 
        if uint16(uint16(s) % 100):
            if t + (696 * 24 * 3600) <= arg1:
                t = 696 * 24 * 3600
                idx = idx + 1
                t = t + (696 * 24 * 3600)
                continue 
            mem[128] = uint8(idx)
            if uint8(var96002) == 1:
                if var93001:
                    if uint8(var93007) > 31:
                        return uint8(idx)
                else:
                    if uint8(var93004) == 5:
                        if uint8(var93007) > 31:
                            return uint8(idx)
                    else:
                        if uint8(var93004) == 7:
                            if uint8(var93007) > 31:
                                return uint8(idx)
                        else:
                            if uint8(var93004) == 8:
                                if uint8(var93007) > 31:
                                    return uint8(idx)
                            else:
                                if uint8(var93004) == 10:
                                    if uint8(var93007) > 31:
                                        return uint8(idx)
                                else:
                                    if uint8(var93004) == 12:
                                        if uint8(var93007) > 31:
                                            return uint8(idx)
                                    else:
                                        if uint8(var93004) == 4:
                                            if uint8(var93007) > 30:
                                                return uint8(idx)
                                        else:
                                            if uint8(var93004) == 6:
                                                if uint8(var93007) > 30:
                                                    return uint8(idx)
                                            else:
                                                if uint8(var93004) == 9:
                                                    if uint8(var93007) > 30:
                                                        return uint8(idx)
                                                else:
                                                    if uint8(var93004) == 11:
                                                        if uint8(var93007) > 30:
                                                            return uint8(idx)
                                                    else:
                                                        if var93003 % 4:
                                                            if uint8(var93007) > 28:
                                                                return uint8(idx)
                                                        else:
                                                            if uint16(uint16(var93003) % 100):
                                                                if uint8(var93007) > 29:
                                                                    return uint8(idx)
                                                            else:
                                                                if not uint16(uint16(var93003) % 400):
                                                                    if uint8(var93007) > 29:
                                                                        return uint8(idx)
                                                                else:
                                                                    if uint8(var93007) > 28:
                                                                        return uint8(idx)
                if var93009 + (24 * 3600) > arg1:
                    return uint8(idx)
                if uint8(idx) == 1:
                    var93001 = 0 == 1
                    var93003 = uint16(s)
                    var93004 = uint8(idx)
                    var93007 = var93007 + 1
                    var93009 = var93009 + (24 * 3600)
                    continue 
                var93001 = 0 == 3
                var93003 = uint16(s)
                var93004 = uint8(idx)
                var93007 = var93007 + 1
                var93009 = var93009 + (24 * 3600)
                continue 
            if var99001:
                if uint8(var99007) > 31:
                    return uint8(idx)
            else:
                if uint8(var99004) == 5:
                    if uint8(var99007) > 31:
                        return uint8(idx)
                else:
                    if uint8(var99004) == 7:
                        if uint8(var99007) > 31:
                            return uint8(idx)
                    else:
                        if uint8(var99004) == 8:
                            if uint8(var99007) > 31:
                                return uint8(idx)
                        else:
                            if uint8(var99004) == 10:
                                if uint8(var99007) > 31:
                                    return uint8(idx)
                            else:
                                if uint8(var99004) == 12:
                                    if uint8(var99007) > 31:
                                        return uint8(idx)
                                else:
                                    if uint8(var99004) == 4:
                                        if uint8(var99007) > 30:
                                            return uint8(idx)
                                    else:
                                        if uint8(var99004) == 6:
                                            if uint8(var99007) > 30:
                                                return uint8(idx)
                                        else:
                                            if uint8(var99004) == 9:
                                                if uint8(var99007) > 30:
                                                    return uint8(idx)
                                            else:
                                                if uint8(var99004) == 11:
                                                    if uint8(var99007) > 30:
                                                        return uint8(idx)
                                                else:
                                                    if var99003 % 4:
                                                        if uint8(var99007) > 28:
                                                            return uint8(idx)
                                                    else:
                                                        if uint16(uint16(var99003) % 100):
                                                            if uint8(var99007) > 29:
                                                                return uint8(idx)
                                                        else:
                                                            if not uint16(uint16(var99003) % 400):
                                                                if uint8(var99007) > 29:
                                                                    return uint8(idx)
                                                            else:
                                                                if uint8(var99007) > 28:
                                                                    return uint8(idx)
            if var99009 + (24 * 3600) > arg1:
                return uint8(idx)
            if uint8(idx) == 1:
                var99001 = 0 == 1
                var99003 = uint16(s)
                var99004 = uint8(idx)
                var99007 = var99007 + 1
                var99009 = var99009 + (24 * 3600)
                continue 
            var98001 = 0 == 1
            var98003 = uint16(s)
            var98004 = uint8(idx)
            var98007 = var99007 + 1
            var98009 = var99009 + (24 * 3600)
            continue 
        if not uint16(uint16(s) % 400):
            if t + (696 * 24 * 3600) <= arg1:
                t = 696 * 24 * 3600
                idx = idx + 1
                t = t + (696 * 24 * 3600)
                continue 
        else:
            if t + (672 * 24 * 3600) <= arg1:
                t = 672 * 24 * 3600
                idx = idx + 1
                t = t + (672 * 24 * 3600)
                continue 
        mem[128] = uint8(idx)
        if uint8(var98002) == 1:
            if var95001:
                if uint8(var95007) > 31:
                    return uint8(idx)
            else:
                if uint8(var95004) == 5:
                    if uint8(var95007) > 31:
                        return uint8(idx)
                else:
                    if uint8(var95004) == 7:
                        if uint8(var95007) > 31:
                            return uint8(idx)
                    else:
                        if uint8(var95004) == 8:
                            if uint8(var95007) > 31:
                                return uint8(idx)
                        else:
                            if uint8(var95004) == 10:
                                if uint8(var95007) > 31:
                                    return uint8(idx)
                            else:
                                if uint8(var95004) == 12:
                                    if uint8(var95007) > 31:
                                        return uint8(idx)
                                else:
                                    if uint8(var95004) == 4:
                                        if uint8(var95007) > 30:
                                            return uint8(idx)
                                    else:
                                        if uint8(var95004) == 6:
                                            if uint8(var95007) > 30:
                                                return uint8(idx)
                                        else:
                                            if uint8(var95004) == 9:
                                                if uint8(var95007) > 30:
                                                    return uint8(idx)
                                            else:
                                                if uint8(var95004) == 11:
                                                    if uint8(var95007) > 30:
                                                        return uint8(idx)
                                                else:
                                                    if var95003 % 4:
                                                        if uint8(var95007) > 28:
                                                            return uint8(idx)
                                                    else:
                                                        if uint16(uint16(var95003) % 100):
                                                            if uint8(var95007) > 29:
                                                                return uint8(idx)
                                                        else:
                                                            if not uint16(uint16(var95003) % 400):
                                                                if uint8(var95007) > 29:
                                                                    return uint8(idx)
                                                            else:
                                                                if uint8(var95007) > 28:
                                                                    return uint8(idx)
            if var95009 + (24 * 3600) > arg1:
                return uint8(idx)
            if uint8(idx) == 1:
                var95001 = 0 == 1
                var95003 = uint16(s)
                var95004 = uint8(idx)
                var95007 = var95007 + 1
                var95009 = var95009 + (24 * 3600)
                continue 
            var95001 = 0 == 3
            var95003 = uint16(s)
            var95004 = uint8(idx)
            var95007 = var95007 + 1
            var95009 = var95009 + (24 * 3600)
            continue 
        if var101001:
            if uint8(var101007) > 31:
                return uint8(idx)
        else:
            if uint8(var101004) == 5:
                if uint8(var101007) > 31:
                    return uint8(idx)
            else:
                if uint8(var101004) == 7:
                    if uint8(var101007) > 31:
                        return uint8(idx)
                else:
                    if uint8(var101004) == 8:
                        if uint8(var101007) > 31:
                            return uint8(idx)
                    else:
                        if uint8(var101004) == 10:
                            if uint8(var101007) > 31:
                                return uint8(idx)
                        else:
                            if uint8(var101004) == 12:
                                if uint8(var101007) > 31:
                                    return uint8(idx)
                            else:
                                if uint8(var101004) == 4:
                                    if uint8(var101007) > 30:
                                        return uint8(idx)
                                else:
                                    if uint8(var101004) == 6:
                                        if uint8(var101007) > 30:
                                            return uint8(idx)
                                    else:
                                        if uint8(var101004) == 9:
                                            if uint8(var101007) > 30:
                                                return uint8(idx)
                                        else:
                                            if uint8(var101004) == 11:
                                                if uint8(var101007) > 30:
                                                    return uint8(idx)
                                            else:
                                                if var101003 % 4:
                                                    if uint8(var101007) > 28:
                                                        return uint8(idx)
                                                else:
                                                    if uint16(uint16(var101003) % 100):
                                                        if uint8(var101007) > 29:
                                                            return uint8(idx)
                                                    else:
                                                        if not uint16(uint16(var101003) % 400):
                                                            if uint8(var101007) > 29:
                                                                return uint8(idx)
                                                        else:
                                                            if uint8(var101007) > 28:
                                                                return uint8(idx)
        if var101009 + (24 * 3600) > arg1:
            return uint8(idx)
        if uint8(idx) == 1:
            var101001 = 0 == 1
            var101003 = uint16(s)
            var101004 = uint8(idx)
            var101007 = var101007 + 1
            var101009 = var101009 + (24 * 3600)
            continue 
        var100001 = 0 == 1
        var100003 = uint16(s)
        var100004 = uint8(idx)
        var100007 = var101007 + 1
        var100009 = var101009 + (24 * 3600)
        continue 
    if uint8(var63002) == 1:
        if var60001:
            if uint8(var60007) > 31:
                return memory
                  from 159
                   len 1
        else:
            if uint8(var60004) == 5:
                if uint8(var60007) > 31:
                    return memory
                      from 159
                       len 1
            else:
                if uint8(var60004) == 7:
                    if uint8(var60007) > 31:
                        return memory
                          from 159
                           len 1
                else:
                    if uint8(var60004) == 8:
                        if uint8(var60007) > 31:
                            return memory
                              from 159
                               len 1
                    else:
                        if uint8(var60004) == 10:
                            if uint8(var60007) > 31:
                                return memory
                                  from 159
                                   len 1
                        else:
                            if uint8(var60004) == 12:
                                if uint8(var60007) > 31:
                                    return memory
                                      from 159
                                       len 1
                            else:
                                if uint8(var60004) == 4:
                                    if uint8(var60007) > 30:
                                        return memory
                                          from 159
                                           len 1
                                else:
                                    if uint8(var60004) == 6:
                                        if uint8(var60007) > 30:
                                            return memory
                                              from 159
                                               len 1
                                    else:
                                        if uint8(var60004) == 9:
                                            if uint8(var60007) > 30:
                                                return memory
                                                  from 159
                                                   len 1
                                        else:
                                            if uint8(var60004) == 11:
                                                if uint8(var60007) > 30:
                                                    return memory
                                                      from 159
                                                       len 1
                                            else:
                                                if var60003 % 4:
                                                    if uint8(var60007) > 28:
                                                        return memory
                                                          from 159
                                                           len 1
                                                else:
                                                    if uint16(uint16(var60003) % 100):
                                                        if uint8(var60007) > 29:
                                                            return memory
                                                              from 159
                                                               len 1
                                                    else:
                                                        if not uint16(uint16(var60003) % 400):
                                                            if uint8(var60007) > 29:
                                                                return memory
                                                                  from 159
                                                                   len 1
                                                        else:
                                                            if uint8(var60007) > 28:
                                                                return memory
                                                                  from 159
                                                                   len 1
        if var60009 + (24 * 3600) > arg1:
            return memory
              from 159
               len 1
        if mem[159 len 1] == 1:
            var60001 = mem[159 len 1] == 1
            var60003 = uint16(s)
            var60004 = mem[128]
            var60007 = var60007 + 1
            var60009 = var60009 + (24 * 3600)
            continue 
        var60001 = mem[159 len 1] == 3
        var60003 = uint16(s)
        var60004 = mem[128]
        var60007 = var60007 + 1
        var60009 = var60009 + (24 * 3600)
        continue 
    if var66001:
        if uint8(var66007) > 31:
            return memory
              from 159
               len 1
    else:
        if uint8(var66004) == 5:
            if uint8(var66007) > 31:
                return memory
                  from 159
                   len 1
        else:
            if uint8(var66004) == 7:
                if uint8(var66007) > 31:
                    return memory
                      from 159
                       len 1
            else:
                if uint8(var66004) == 8:
                    if uint8(var66007) > 31:
                        return memory
                          from 159
                           len 1
                else:
                    if uint8(var66004) == 10:
                        if uint8(var66007) > 31:
                            return memory
                              from 159
                               len 1
                    else:
                        if uint8(var66004) == 12:
                            if uint8(var66007) > 31:
                                return memory
                                  from 159
                                   len 1
                        else:
                            if uint8(var66004) == 4:
                                if uint8(var66007) > 30:
                                    return memory
                                      from 159
                                       len 1
                            else:
                                if uint8(var66004) == 6:
                                    if uint8(var66007) > 30:
                                        return memory
                                          from 159
                                           len 1
                                else:
                                    if uint8(var66004) == 9:
                                        if uint8(var66007) > 30:
                                            return memory
                                              from 159
                                               len 1
                                    else:
                                        if uint8(var66004) == 11:
                                            if uint8(var66007) > 30:
                                                return memory
                                                  from 159
                                                   len 1
                                        else:
                                            if var66003 % 4:
                                                if uint8(var66007) > 28:
                                                    return memory
                                                      from 159
                                                       len 1
                                            else:
                                                if uint16(uint16(var66003) % 100):
                                                    if uint8(var66007) > 29:
                                                        return memory
                                                          from 159
                                                           len 1
                                                else:
                                                    if not uint16(uint16(var66003) % 400):
                                                        if uint8(var66007) > 29:
                                                            return memory
                                                              from 159
                                                               len 1
                                                    else:
                                                        if uint8(var66007) > 28:
                                                            return memory
                                                              from 159
                                                               len 1
    if var66009 + (24 * 3600) > arg1:
        return memory
          from 159
           len 1
    if mem[159 len 1] == 1:
        var66001 = mem[159 len 1] == 1
        var66003 = uint16(s)
        var66004 = mem[128]
        var66007 = var66007 + 1
        var66009 = var66009 + (24 * 3600)
        continue 
    var65001 = mem[159 len 1] == 1
    var65003 = uint16(s)
    var65004 = mem[128]
    var65007 = var66007 + 1
    var65009 = var66009 + (24 * 3600)
    continue 
}



}
