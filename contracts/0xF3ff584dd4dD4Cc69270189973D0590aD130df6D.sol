contract main {




// =====================  Runtime code  =====================


#
#  - release(address arg1)
#  - getMonth(uint256 arg1)
#
address owner;
address beneficiaryAddress;
uint256 cliff;
uint256 start;
uint256 duration;
uint8 date;
uint8 stor5; offset 8
mapping of uint256 released;
mapping of uint8 stor7;

function duration() {
    return duration
}

function cliff() {
    return cliff
}

function date() {
    return date
}

function beneficiary() {
    return beneficiaryAddress
}

function revocable() {
    return bool(stor5)
}

function owner() {
    return owner
}

function released(address arg1) {
    return released[arg1]
}

function start() {
    return start
}

function revoked(address arg1) {
    return bool(stor7[arg1])
}

function _fallback() payable {
    revert
}

function getSecond(uint256 arg1) {
    return uint8(arg1 % 60)
}

function getMinute(uint256 arg1) {
    return uint8(arg1 / 60 % 60)
}

function getHour(uint256 arg1) {
    return uint8(arg1 / 60 / 60 % 24)
}

function getWeekday(uint256 arg1) {
    return uint8((arg1 / 24 * 3600) + 4 % 7)
}

function leapYearsBefore(uint256 arg1) {
    return ((arg1 - 1 / 4) - (arg1 - 1 / 100) + (arg1 - 1 / 400))
}

function sub_2f00bfcb(?) {
    require msg.sender == owner
    require arg1 > 0
    require arg1 <= 31
    date = arg1
    emit 0xe39d20e0: arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
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

function vestedAmount(address arg1) {
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] + released[address(arg1)] >= ext_call.return_data[0]
    if block.timestamp < cliff:
        return 0
    require start + duration >= start
    if block.timestamp >= start + duration:
        return (ext_call.return_data[0] + released[address(arg1)])
    if stor7[address(arg1)]:
        return (ext_call.return_data[0] + released[address(arg1)])
    require start <= block.timestamp
    if not ext_call.return_data[0] + released[address(arg1)]:
        if duration:
            return (0 / duration)
    else:
        if ext_call.return_data[0] + released[address(arg1)]:
            if (block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / ext_call.return_data[0] + released[address(arg1)] == block.timestamp - start:
                if duration:
                    return ((block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / duration)
    revert
}

function releasableAmount(address arg1) {
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] + released[address(arg1)] >= ext_call.return_data[0]
    if block.timestamp < cliff:
        if released[address(arg1)] <= 0:
            return -released[address(arg1)]
    else:
        if start + duration >= start:
            if block.timestamp >= start + duration:
                if released[address(arg1)] <= ext_call.return_data[0] + released[address(arg1)]:
                    return ext_call.return_data[0]
            else:
                if stor7[address(arg1)]:
                    if released[address(arg1)] <= ext_call.return_data[0] + released[address(arg1)]:
                        return ext_call.return_data[0]
                else:
                    if start <= block.timestamp:
                        if not ext_call.return_data[0] + released[address(arg1)]:
                            if duration:
                                if released[address(arg1)] <= 0 / duration:
                                    return ((0 / duration) - released[address(arg1)])
                        else:
                            if ext_call.return_data[0] + released[address(arg1)]:
                                if (block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / ext_call.return_data[0] + released[address(arg1)] == block.timestamp - start:
                                    if duration:
                                        if released[address(arg1)] <= (block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / duration:
                                            return (((block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / duration) - released[address(arg1)])
    revert
}

function revoke(address arg1) {
    require msg.sender == owner
    require stor5
    require not stor7[address(arg1)]
    require ext_code.size(arg1)
    call arg1.0x313ce567 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] + released[address(arg1)] >= ext_call.return_data[0]
    if block.timestamp < cliff:
        require released[address(arg1)] <= 0
        require 10^uint8(ext_call.return_data[0])
        if not -released[address(arg1)] / 10^uint8(ext_call.return_data[0]):
            require 0 <= ext_call.return_data[0]
            stor7[address(arg1)] = 1
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args owner, ext_call.return_data[0]
        else:
            require -released[address(arg1)] / 10^uint8(ext_call.return_data[0])
            require -released[address(arg1)] / 10^uint8(ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) / -released[address(arg1)] / 10^uint8(ext_call.return_data[0]) == 10^uint8(ext_call.return_data[0])
            require -released[address(arg1)] / 10^uint8(ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) <= ext_call.return_data[0]
            stor7[address(arg1)] = 1
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args owner, ext_call.return_data[0] - (-released[address(arg1)] / 10^uint8(ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]))
    else:
        require start + duration >= start
        if block.timestamp >= start + duration:
            require released[address(arg1)] <= ext_call.return_data[0] + released[address(arg1)]
            require 10^uint8(ext_call.return_data[0])
            if not ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]):
                require 0 <= ext_call.return_data[0]
                stor7[address(arg1)] = 1
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining wei
                    args owner, ext_call.return_data[0]
            else:
                require ext_call.return_data[0] / 10^uint8(ext_call.return_data[0])
                require ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) / ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) == 10^uint8(ext_call.return_data[0])
                require ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) <= ext_call.return_data[0]
                stor7[address(arg1)] = 1
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining wei
                    args owner, ext_call.return_data[0] - (ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]))
        else:
            if stor7[address(arg1)]:
                require released[address(arg1)] <= ext_call.return_data[0] + released[address(arg1)]
                require 10^uint8(ext_call.return_data[0])
                if not ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]):
                    require 0 <= ext_call.return_data[0]
                    stor7[address(arg1)] = 1
                    require ext_code.size(arg1)
                    call arg1.0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, ext_call.return_data[0]
                else:
                    require ext_call.return_data[0] / 10^uint8(ext_call.return_data[0])
                    require ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) / ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) == 10^uint8(ext_call.return_data[0])
                    require ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) <= ext_call.return_data[0]
                    stor7[address(arg1)] = 1
                    require ext_code.size(arg1)
                    call arg1.0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, ext_call.return_data[0] - (ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]))
            else:
                require start <= block.timestamp
                if not ext_call.return_data[0] + released[address(arg1)]:
                    require duration
                    require released[address(arg1)] <= 0 / duration
                    require 10^uint8(ext_call.return_data[0])
                    if not (0 / duration) - released[address(arg1)] / 10^uint8(ext_call.return_data[0]):
                        require 0 <= ext_call.return_data[0]
                        stor7[address(arg1)] = 1
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, ext_call.return_data[0]
                    else:
                        require (0 / duration) - released[address(arg1)] / 10^uint8(ext_call.return_data[0])
                        require (0 / duration) - released[address(arg1)] / 10^uint8(ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) / (0 / duration) - released[address(arg1)] / 10^uint8(ext_call.return_data[0]) == 10^uint8(ext_call.return_data[0])
                        require (0 / duration) - released[address(arg1)] / 10^uint8(ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) <= ext_call.return_data[0]
                        stor7[address(arg1)] = 1
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, ext_call.return_data[0] - ((0 / duration) - released[address(arg1)] / 10^uint8(ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]))
                else:
                    require ext_call.return_data[0] + released[address(arg1)]
                    require (block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / ext_call.return_data[0] + released[address(arg1)] == block.timestamp - start
                    require duration
                    require released[address(arg1)] <= (block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / duration
                    require 10^uint8(ext_call.return_data[0])
                    if not ((block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / duration) - released[address(arg1)] / 10^uint8(ext_call.return_data[0]):
                        require 0 <= ext_call.return_data[0]
                        stor7[address(arg1)] = 1
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, ext_call.return_data[0]
                    else:
                        require ((block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / duration) - released[address(arg1)] / 10^uint8(ext_call.return_data[0])
                        require ((block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / duration) - released[address(arg1)] / 10^uint8(ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) / ((block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / duration) - released[address(arg1)] / 10^uint8(ext_call.return_data[0]) == 10^uint8(ext_call.return_data[0])
                        require ((block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / duration) - released[address(arg1)] / 10^uint8(ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) <= ext_call.return_data[0]
                        stor7[address(arg1)] = 1
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, ext_call.return_data[0] - (((block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / duration) - released[address(arg1)] / 10^uint8(ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Revoked()
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
            if uint8(var69002) == 1:
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
                if uint8(idx) == 1:
                    var66001 = 0 == 1
                    var66003 = uint16(s)
                    var66004 = uint8(idx)
                    var66007 = var66007 + 1
                    var66009 = var66009 + (24 * 3600)
                    continue 
                var66001 = 0 == 3
                var66003 = uint16(s)
                var66004 = uint8(idx)
                var66007 = var66007 + 1
                var66009 = var66009 + (24 * 3600)
                continue 
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
            var71001 = 0 == 1
            var71003 = uint16(s)
            var71004 = uint8(idx)
            var71007 = var72007 + 1
            var71009 = var72009 + (24 * 3600)
            continue 
        if uint8(idx) == 3:
            if t + (744 * 24 * 3600) <= arg1:
                t = 744 * 24 * 3600
                idx = idx + 1
                t = t + (744 * 24 * 3600)
                continue 
            mem[128] = uint8(idx)
            if uint8(var70002) == 1:
                if var67001:
                    if uint8(var67007) > 31:
                        return 0
                else:
                    if uint8(var67004) == 5:
                        if uint8(var67007) > 31:
                            return 0
                    else:
                        if uint8(var67004) == 7:
                            if uint8(var67007) > 31:
                                return 0
                        else:
                            if uint8(var67004) == 8:
                                if uint8(var67007) > 31:
                                    return 0
                            else:
                                if uint8(var67004) == 10:
                                    if uint8(var67007) > 31:
                                        return 0
                                else:
                                    if uint8(var67004) == 12:
                                        if uint8(var67007) > 31:
                                            return 0
                                    else:
                                        if uint8(var67004) == 4:
                                            if uint8(var67007) > 30:
                                                return 0
                                        else:
                                            if uint8(var67004) == 6:
                                                if uint8(var67007) > 30:
                                                    return 0
                                            else:
                                                if uint8(var67004) == 9:
                                                    if uint8(var67007) > 30:
                                                        return 0
                                                else:
                                                    if uint8(var67004) == 11:
                                                        if uint8(var67007) > 30:
                                                            return 0
                                                    else:
                                                        if var67003 % 4:
                                                            if uint8(var67007) > 28:
                                                                return 0
                                                        else:
                                                            if uint16(uint16(var67003) % 100):
                                                                if uint8(var67007) > 29:
                                                                    return 0
                                                            else:
                                                                if not uint16(uint16(var67003) % 400):
                                                                    if uint8(var67007) > 29:
                                                                        return 0
                                                                else:
                                                                    if uint8(var67007) > 28:
                                                                        return 0
                if var67009 + (24 * 3600) > arg1:
                    return uint8(var67007)
                if uint8(idx) == 1:
                    var67001 = 0 == 1
                    var67003 = uint16(s)
                    var67004 = uint8(idx)
                    var67007 = var67007 + 1
                    var67009 = var67009 + (24 * 3600)
                    continue 
                var67001 = 0 == 3
                var67003 = uint16(s)
                var67004 = uint8(idx)
                var67007 = var67007 + 1
                var67009 = var67009 + (24 * 3600)
                continue 
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
            var72001 = 0 == 1
            var72003 = uint16(s)
            var72004 = uint8(idx)
            var72007 = var73007 + 1
            var72009 = var73009 + (24 * 3600)
            continue 
        if uint8(idx) == 5:
            if t + (744 * 24 * 3600) <= arg1:
                t = 744 * 24 * 3600
                idx = idx + 1
                t = t + (744 * 24 * 3600)
                continue 
            mem[128] = uint8(idx)
            if uint8(var71002) == 1:
                if var68001:
                    if uint8(var68007) > 31:
                        return 0
                else:
                    if uint8(var68004) == 5:
                        if uint8(var68007) > 31:
                            return 0
                    else:
                        if uint8(var68004) == 7:
                            if uint8(var68007) > 31:
                                return 0
                        else:
                            if uint8(var68004) == 8:
                                if uint8(var68007) > 31:
                                    return 0
                            else:
                                if uint8(var68004) == 10:
                                    if uint8(var68007) > 31:
                                        return 0
                                else:
                                    if uint8(var68004) == 12:
                                        if uint8(var68007) > 31:
                                            return 0
                                    else:
                                        if uint8(var68004) == 4:
                                            if uint8(var68007) > 30:
                                                return 0
                                        else:
                                            if uint8(var68004) == 6:
                                                if uint8(var68007) > 30:
                                                    return 0
                                            else:
                                                if uint8(var68004) == 9:
                                                    if uint8(var68007) > 30:
                                                        return 0
                                                else:
                                                    if uint8(var68004) == 11:
                                                        if uint8(var68007) > 30:
                                                            return 0
                                                    else:
                                                        if var68003 % 4:
                                                            if uint8(var68007) > 28:
                                                                return 0
                                                        else:
                                                            if uint16(uint16(var68003) % 100):
                                                                if uint8(var68007) > 29:
                                                                    return 0
                                                            else:
                                                                if not uint16(uint16(var68003) % 400):
                                                                    if uint8(var68007) > 29:
                                                                        return 0
                                                                else:
                                                                    if uint8(var68007) > 28:
                                                                        return 0
                if var68009 + (24 * 3600) > arg1:
                    return uint8(var68007)
                if uint8(idx) == 1:
                    var68001 = 0 == 1
                    var68003 = uint16(s)
                    var68004 = uint8(idx)
                    var68007 = var68007 + 1
                    var68009 = var68009 + (24 * 3600)
                    continue 
                var68001 = 0 == 3
                var68003 = uint16(s)
                var68004 = uint8(idx)
                var68007 = var68007 + 1
                var68009 = var68009 + (24 * 3600)
                continue 
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
            var73001 = 0 == 1
            var73003 = uint16(s)
            var73004 = uint8(idx)
            var73007 = var74007 + 1
            var73009 = var74009 + (24 * 3600)
            continue 
        if uint8(idx) == 7:
            if t + (744 * 24 * 3600) <= arg1:
                t = 744 * 24 * 3600
                idx = idx + 1
                t = t + (744 * 24 * 3600)
                continue 
            mem[128] = uint8(idx)
            if uint8(var72002) == 1:
                if var69001:
                    if uint8(var69007) > 31:
                        return 0
                else:
                    if uint8(var69004) == 5:
                        if uint8(var69007) > 31:
                            return 0
                    else:
                        if uint8(var69004) == 7:
                            if uint8(var69007) > 31:
                                return 0
                        else:
                            if uint8(var69004) == 8:
                                if uint8(var69007) > 31:
                                    return 0
                            else:
                                if uint8(var69004) == 10:
                                    if uint8(var69007) > 31:
                                        return 0
                                else:
                                    if uint8(var69004) == 12:
                                        if uint8(var69007) > 31:
                                            return 0
                                    else:
                                        if uint8(var69004) == 4:
                                            if uint8(var69007) > 30:
                                                return 0
                                        else:
                                            if uint8(var69004) == 6:
                                                if uint8(var69007) > 30:
                                                    return 0
                                            else:
                                                if uint8(var69004) == 9:
                                                    if uint8(var69007) > 30:
                                                        return 0
                                                else:
                                                    if uint8(var69004) == 11:
                                                        if uint8(var69007) > 30:
                                                            return 0
                                                    else:
                                                        if var69003 % 4:
                                                            if uint8(var69007) > 28:
                                                                return 0
                                                        else:
                                                            if uint16(uint16(var69003) % 100):
                                                                if uint8(var69007) > 29:
                                                                    return 0
                                                            else:
                                                                if not uint16(uint16(var69003) % 400):
                                                                    if uint8(var69007) > 29:
                                                                        return 0
                                                                else:
                                                                    if uint8(var69007) > 28:
                                                                        return 0
                if var69009 + (24 * 3600) > arg1:
                    return uint8(var69007)
                if uint8(idx) == 1:
                    var69001 = 0 == 1
                    var69003 = uint16(s)
                    var69004 = uint8(idx)
                    var69007 = var69007 + 1
                    var69009 = var69009 + (24 * 3600)
                    continue 
                var69001 = 0 == 3
                var69003 = uint16(s)
                var69004 = uint8(idx)
                var69007 = var69007 + 1
                var69009 = var69009 + (24 * 3600)
                continue 
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
            var74001 = 0 == 1
            var74003 = uint16(s)
            var74004 = uint8(idx)
            var74007 = var75007 + 1
            var74009 = var75009 + (24 * 3600)
            continue 
        if uint8(idx) == 8:
            if t + (744 * 24 * 3600) <= arg1:
                t = 744 * 24 * 3600
                idx = idx + 1
                t = t + (744 * 24 * 3600)
                continue 
            mem[128] = uint8(idx)
            if uint8(var73002) == 1:
                if var70001:
                    if uint8(var70007) > 31:
                        return 0
                else:
                    if uint8(var70004) == 5:
                        if uint8(var70007) > 31:
                            return 0
                    else:
                        if uint8(var70004) == 7:
                            if uint8(var70007) > 31:
                                return 0
                        else:
                            if uint8(var70004) == 8:
                                if uint8(var70007) > 31:
                                    return 0
                            else:
                                if uint8(var70004) == 10:
                                    if uint8(var70007) > 31:
                                        return 0
                                else:
                                    if uint8(var70004) == 12:
                                        if uint8(var70007) > 31:
                                            return 0
                                    else:
                                        if uint8(var70004) == 4:
                                            if uint8(var70007) > 30:
                                                return 0
                                        else:
                                            if uint8(var70004) == 6:
                                                if uint8(var70007) > 30:
                                                    return 0
                                            else:
                                                if uint8(var70004) == 9:
                                                    if uint8(var70007) > 30:
                                                        return 0
                                                else:
                                                    if uint8(var70004) == 11:
                                                        if uint8(var70007) > 30:
                                                            return 0
                                                    else:
                                                        if var70003 % 4:
                                                            if uint8(var70007) > 28:
                                                                return 0
                                                        else:
                                                            if uint16(uint16(var70003) % 100):
                                                                if uint8(var70007) > 29:
                                                                    return 0
                                                            else:
                                                                if not uint16(uint16(var70003) % 400):
                                                                    if uint8(var70007) > 29:
                                                                        return 0
                                                                else:
                                                                    if uint8(var70007) > 28:
                                                                        return 0
                if var70009 + (24 * 3600) > arg1:
                    return uint8(var70007)
                if uint8(idx) == 1:
                    var70001 = 0 == 1
                    var70003 = uint16(s)
                    var70004 = uint8(idx)
                    var70007 = var70007 + 1
                    var70009 = var70009 + (24 * 3600)
                    continue 
                var70001 = 0 == 3
                var70003 = uint16(s)
                var70004 = uint8(idx)
                var70007 = var70007 + 1
                var70009 = var70009 + (24 * 3600)
                continue 
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
            var75001 = 0 == 1
            var75003 = uint16(s)
            var75004 = uint8(idx)
            var75007 = var76007 + 1
            var75009 = var76009 + (24 * 3600)
            continue 
        if uint8(idx) == 10:
            if t + (744 * 24 * 3600) <= arg1:
                t = 744 * 24 * 3600
                idx = idx + 1
                t = t + (744 * 24 * 3600)
                continue 
            mem[128] = uint8(idx)
            if uint8(var74002) == 1:
                if var71001:
                    if uint8(var71007) > 31:
                        return 0
                else:
                    if uint8(var71004) == 5:
                        if uint8(var71007) > 31:
                            return 0
                    else:
                        if uint8(var71004) == 7:
                            if uint8(var71007) > 31:
                                return 0
                        else:
                            if uint8(var71004) == 8:
                                if uint8(var71007) > 31:
                                    return 0
                            else:
                                if uint8(var71004) == 10:
                                    if uint8(var71007) > 31:
                                        return 0
                                else:
                                    if uint8(var71004) == 12:
                                        if uint8(var71007) > 31:
                                            return 0
                                    else:
                                        if uint8(var71004) == 4:
                                            if uint8(var71007) > 30:
                                                return 0
                                        else:
                                            if uint8(var71004) == 6:
                                                if uint8(var71007) > 30:
                                                    return 0
                                            else:
                                                if uint8(var71004) == 9:
                                                    if uint8(var71007) > 30:
                                                        return 0
                                                else:
                                                    if uint8(var71004) == 11:
                                                        if uint8(var71007) > 30:
                                                            return 0
                                                    else:
                                                        if var71003 % 4:
                                                            if uint8(var71007) > 28:
                                                                return 0
                                                        else:
                                                            if uint16(uint16(var71003) % 100):
                                                                if uint8(var71007) > 29:
                                                                    return 0
                                                            else:
                                                                if not uint16(uint16(var71003) % 400):
                                                                    if uint8(var71007) > 29:
                                                                        return 0
                                                                else:
                                                                    if uint8(var71007) > 28:
                                                                        return 0
                if var71009 + (24 * 3600) > arg1:
                    return uint8(var71007)
                if uint8(idx) == 1:
                    var71001 = 0 == 1
                    var71003 = uint16(s)
                    var71004 = uint8(idx)
                    var71007 = var71007 + 1
                    var71009 = var71009 + (24 * 3600)
                    continue 
                var71001 = 0 == 3
                var71003 = uint16(s)
                var71004 = uint8(idx)
                var71007 = var71007 + 1
                var71009 = var71009 + (24 * 3600)
                continue 
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
            var76001 = 0 == 1
            var76003 = uint16(s)
            var76004 = uint8(idx)
            var76007 = var77007 + 1
            var76009 = var77009 + (24 * 3600)
            continue 
        if uint8(idx) == 12:
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
        if uint8(idx) == 4:
            if t + (720 * 24 * 3600) <= arg1:
                t = 720 * 24 * 3600
                idx = idx + 1
                t = t + (720 * 24 * 3600)
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
        if uint8(idx) == 6:
            if t + (720 * 24 * 3600) <= arg1:
                t = 720 * 24 * 3600
                idx = idx + 1
                t = t + (720 * 24 * 3600)
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
        if uint8(idx) == 9:
            if t + (720 * 24 * 3600) <= arg1:
                t = 720 * 24 * 3600
                idx = idx + 1
                t = t + (720 * 24 * 3600)
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
        if uint8(idx) == 11:
            if t + (720 * 24 * 3600) <= arg1:
                t = 720 * 24 * 3600
                idx = idx + 1
                t = t + (720 * 24 * 3600)
                continue 
            mem[128] = uint8(idx)
            if uint8(var82002) == 1:
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
                var79001 = 0 == 3
                var79003 = uint16(s)
                var79004 = uint8(idx)
                var79007 = var79007 + 1
                var79009 = var79009 + (24 * 3600)
                continue 
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
            var84001 = 0 == 1
            var84003 = uint16(s)
            var84004 = uint8(idx)
            var84007 = var85007 + 1
            var84009 = var85009 + (24 * 3600)
            continue 
        if s % 4:
            if t + (672 * 24 * 3600) <= arg1:
                t = 672 * 24 * 3600
                idx = idx + 1
                t = t + (672 * 24 * 3600)
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
        if uint16(uint16(s) % 100):
            if t + (696 * 24 * 3600) <= arg1:
                t = 696 * 24 * 3600
                idx = idx + 1
                t = t + (696 * 24 * 3600)
                continue 
            mem[128] = uint8(idx)
            if uint8(var90002) == 1:
                if var87001:
                    if uint8(var87007) > 31:
                        return 0
                else:
                    if uint8(var87004) == 5:
                        if uint8(var87007) > 31:
                            return 0
                    else:
                        if uint8(var87004) == 7:
                            if uint8(var87007) > 31:
                                return 0
                        else:
                            if uint8(var87004) == 8:
                                if uint8(var87007) > 31:
                                    return 0
                            else:
                                if uint8(var87004) == 10:
                                    if uint8(var87007) > 31:
                                        return 0
                                else:
                                    if uint8(var87004) == 12:
                                        if uint8(var87007) > 31:
                                            return 0
                                    else:
                                        if uint8(var87004) == 4:
                                            if uint8(var87007) > 30:
                                                return 0
                                        else:
                                            if uint8(var87004) == 6:
                                                if uint8(var87007) > 30:
                                                    return 0
                                            else:
                                                if uint8(var87004) == 9:
                                                    if uint8(var87007) > 30:
                                                        return 0
                                                else:
                                                    if uint8(var87004) == 11:
                                                        if uint8(var87007) > 30:
                                                            return 0
                                                    else:
                                                        if var87003 % 4:
                                                            if uint8(var87007) > 28:
                                                                return 0
                                                        else:
                                                            if uint16(uint16(var87003) % 100):
                                                                if uint8(var87007) > 29:
                                                                    return 0
                                                            else:
                                                                if not uint16(uint16(var87003) % 400):
                                                                    if uint8(var87007) > 29:
                                                                        return 0
                                                                else:
                                                                    if uint8(var87007) > 28:
                                                                        return 0
                if var87009 + (24 * 3600) > arg1:
                    return uint8(var87007)
                if uint8(idx) == 1:
                    var87001 = 0 == 1
                    var87003 = uint16(s)
                    var87004 = uint8(idx)
                    var87007 = var87007 + 1
                    var87009 = var87009 + (24 * 3600)
                    continue 
                var87001 = 0 == 3
                var87003 = uint16(s)
                var87004 = uint8(idx)
                var87007 = var87007 + 1
                var87009 = var87009 + (24 * 3600)
                continue 
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
            var92001 = 0 == 1
            var92003 = uint16(s)
            var92004 = uint8(idx)
            var92007 = var93007 + 1
            var92009 = var93009 + (24 * 3600)
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
        if uint8(var92002) == 1:
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
            var89001 = 0 == 3
            var89003 = uint16(s)
            var89004 = uint8(idx)
            var89007 = var89007 + 1
            var89009 = var89009 + (24 * 3600)
            continue 
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
        var94001 = 0 == 1
        var94003 = uint16(s)
        var94004 = uint8(idx)
        var94007 = var95007 + 1
        var94009 = var95009 + (24 * 3600)
        continue 
    if uint8(var57002) == 1:
        if var54001:
            if uint8(var54007) > 31:
                return 0
        else:
            if uint8(var54004) == 5:
                if uint8(var54007) > 31:
                    return 0
            else:
                if uint8(var54004) == 7:
                    if uint8(var54007) > 31:
                        return 0
                else:
                    if uint8(var54004) == 8:
                        if uint8(var54007) > 31:
                            return 0
                    else:
                        if uint8(var54004) == 10:
                            if uint8(var54007) > 31:
                                return 0
                        else:
                            if uint8(var54004) == 12:
                                if uint8(var54007) > 31:
                                    return 0
                            else:
                                if uint8(var54004) == 4:
                                    if uint8(var54007) > 30:
                                        return 0
                                else:
                                    if uint8(var54004) == 6:
                                        if uint8(var54007) > 30:
                                            return 0
                                    else:
                                        if uint8(var54004) == 9:
                                            if uint8(var54007) > 30:
                                                return 0
                                        else:
                                            if uint8(var54004) == 11:
                                                if uint8(var54007) > 30:
                                                    return 0
                                            else:
                                                if var54003 % 4:
                                                    if uint8(var54007) > 28:
                                                        return 0
                                                else:
                                                    if uint16(uint16(var54003) % 100):
                                                        if uint8(var54007) > 29:
                                                            return 0
                                                    else:
                                                        if not uint16(uint16(var54003) % 400):
                                                            if uint8(var54007) > 29:
                                                                return 0
                                                        else:
                                                            if uint8(var54007) > 28:
                                                                return 0
        if var54009 + (24 * 3600) > arg1:
            return uint8(var54007)
        if mem[159 len 1] == 1:
            var54001 = mem[159 len 1] == 1
            var54003 = uint16(s)
            var54004 = mem[128]
            var54007 = var54007 + 1
            var54009 = var54009 + (24 * 3600)
            continue 
        var54001 = mem[159 len 1] == 3
        var54003 = uint16(s)
        var54004 = mem[128]
        var54007 = var54007 + 1
        var54009 = var54009 + (24 * 3600)
        continue 
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
    var59001 = mem[159 len 1] == 1
    var59003 = uint16(s)
    var59004 = mem[128]
    var59007 = var60007 + 1
    var59009 = var60009 + (24 * 3600)
    continue 
}



}
