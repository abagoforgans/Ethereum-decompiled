contract main {




// =====================  Runtime code  =====================


#
#  - release(address arg1)
#  - getMonth(uint256 arg1)
#
address owner;
address beneficiaryAddress;
address adminAddress;
address backupAddress;
address stor4;
uint256 cliff;
uint8 date;
uint256 start;
uint256 duration;
uint8 stor9;
mapping of uint256 released;
mapping of uint8 stor11;

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

function backup() {
    return backupAddress
}

function revocable() {
    return bool(stor9)
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

function admin() {
    return adminAddress
}

function revoked(address arg1) {
    return bool(stor11[arg1])
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

function sub_1d77f49b(?) {
    require msg.sender == adminAddress
    require stor4
    require stor4 == arg1
    beneficiaryAddress = stor4
    stor4 = 0
}

function sub_d369611d(?) {
    require msg.sender == beneficiaryAddress
    require arg1
    require backupAddress != arg1
    require beneficiaryAddress != arg1
    backupAddress = arg1
}

function updateBeneficiary(address arg1) {
    require msg.sender == backupAddress
    require arg1
    require beneficiaryAddress != arg1
    require backupAddress != arg1
    stor4 = arg1
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
    if 1 == arg1:
        return 31
    if 3 == arg1:
        return 31
    if 5 == arg1:
        return 31
    if 7 == arg1:
        return 31
    if 8 == arg1:
        return 31
    if 10 == arg1:
        return 31
    if 12 == arg1:
        return 31
    if 4 == arg1:
        return 30
    if 6 == arg1:
        return 30
    if 9 == arg1:
        return 30
    if 11 == arg1:
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
    require released[address(arg1)] + ext_call.return_data[0] >= ext_call.return_data[0]
    if block.timestamp < cliff:
        return 0
    require duration + start >= start
    if block.timestamp >= duration + start:
        return (released[address(arg1)] + ext_call.return_data[0])
    if stor11[address(arg1)]:
        return (released[address(arg1)] + ext_call.return_data[0])
    require start <= block.timestamp
    if not released[address(arg1)] + ext_call.return_data[0]:
        if duration:
            return (0 / duration)
    else:
        if (released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / released[address(arg1)] + ext_call.return_data[0] == block.timestamp - start:
            if duration:
                return ((released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / duration)
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
    require released[address(arg1)] + ext_call.return_data[0] >= ext_call.return_data[0]
    if block.timestamp < cliff:
        if released[address(arg1)] <= 0:
            return -released[address(arg1)]
    else:
        if duration + start >= start:
            if block.timestamp >= duration + start:
                if released[address(arg1)] <= released[address(arg1)] + ext_call.return_data[0]:
                    return ext_call.return_data[0]
            else:
                if stor11[address(arg1)]:
                    if released[address(arg1)] <= released[address(arg1)] + ext_call.return_data[0]:
                        return ext_call.return_data[0]
                else:
                    if start <= block.timestamp:
                        if not released[address(arg1)] + ext_call.return_data[0]:
                            if duration:
                                if released[address(arg1)] <= 0 / duration:
                                    return ((0 / duration) - released[address(arg1)])
                        else:
                            if (released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / released[address(arg1)] + ext_call.return_data[0] == block.timestamp - start:
                                if duration:
                                    if released[address(arg1)] <= (released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / duration:
                                        return (((released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / duration) - released[address(arg1)])
    revert
}

function revoke(address arg1) {
    require msg.sender == owner
    require stor9
    require not stor11[address(arg1)]
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
    require released[address(arg1)] + ext_call.return_data[0] >= ext_call.return_data[0]
    if block.timestamp < cliff:
        require released[address(arg1)] <= 0
        require 10^uint8(ext_call.return_data[0])
        if not -released[address(arg1)] / 10^uint8(ext_call.return_data[0]):
            require 0 <= ext_call.return_data[0]
            stor11[address(arg1)] = 1
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args owner, ext_call.return_data[0]
        else:
            require 10^uint8(ext_call.return_data[0]) * -released[address(arg1)] / 10^uint8(ext_call.return_data[0]) / -released[address(arg1)] / 10^uint8(ext_call.return_data[0]) == 10^uint8(ext_call.return_data[0])
            require 10^uint8(ext_call.return_data[0]) * -released[address(arg1)] / 10^uint8(ext_call.return_data[0]) <= ext_call.return_data[0]
            stor11[address(arg1)] = 1
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args owner, ext_call.return_data[0] - (10^uint8(ext_call.return_data[0]) * -released[address(arg1)] / 10^uint8(ext_call.return_data[0]))
    else:
        require duration + start >= start
        if block.timestamp >= duration + start:
            require released[address(arg1)] <= released[address(arg1)] + ext_call.return_data[0]
            require 10^uint8(ext_call.return_data[0])
            if not ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]):
                require 0 <= ext_call.return_data[0]
                stor11[address(arg1)] = 1
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining wei
                    args owner, ext_call.return_data[0]
            else:
                require 10^uint8(ext_call.return_data[0]) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) / ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) == 10^uint8(ext_call.return_data[0])
                require 10^uint8(ext_call.return_data[0]) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) <= ext_call.return_data[0]
                stor11[address(arg1)] = 1
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining wei
                    args owner, ext_call.return_data[0] - (10^uint8(ext_call.return_data[0]) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]))
        else:
            if stor11[address(arg1)]:
                require released[address(arg1)] <= released[address(arg1)] + ext_call.return_data[0]
                require 10^uint8(ext_call.return_data[0])
                if not ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]):
                    require 0 <= ext_call.return_data[0]
                    stor11[address(arg1)] = 1
                    require ext_code.size(arg1)
                    call arg1.0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, ext_call.return_data[0]
                else:
                    require 10^uint8(ext_call.return_data[0]) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) / ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) == 10^uint8(ext_call.return_data[0])
                    require 10^uint8(ext_call.return_data[0]) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) <= ext_call.return_data[0]
                    stor11[address(arg1)] = 1
                    require ext_code.size(arg1)
                    call arg1.0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, ext_call.return_data[0] - (10^uint8(ext_call.return_data[0]) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]))
            else:
                require start <= block.timestamp
                if not released[address(arg1)] + ext_call.return_data[0]:
                    require duration
                    require released[address(arg1)] <= 0 / duration
                    require 10^uint8(ext_call.return_data[0])
                    if not (0 / duration) - released[address(arg1)] / 10^uint8(ext_call.return_data[0]):
                        require 0 <= ext_call.return_data[0]
                        stor11[address(arg1)] = 1
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, ext_call.return_data[0]
                    else:
                        require 10^uint8(ext_call.return_data[0]) * (0 / duration) - released[address(arg1)] / 10^uint8(ext_call.return_data[0]) / (0 / duration) - released[address(arg1)] / 10^uint8(ext_call.return_data[0]) == 10^uint8(ext_call.return_data[0])
                        require 10^uint8(ext_call.return_data[0]) * (0 / duration) - released[address(arg1)] / 10^uint8(ext_call.return_data[0]) <= ext_call.return_data[0]
                        stor11[address(arg1)] = 1
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, ext_call.return_data[0] - (10^uint8(ext_call.return_data[0]) * (0 / duration) - released[address(arg1)] / 10^uint8(ext_call.return_data[0]))
                else:
                    require (released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / released[address(arg1)] + ext_call.return_data[0] == block.timestamp - start
                    require duration
                    require released[address(arg1)] <= (released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / duration
                    require 10^uint8(ext_call.return_data[0])
                    if not ((released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / duration) - released[address(arg1)] / 10^uint8(ext_call.return_data[0]):
                        require 0 <= ext_call.return_data[0]
                        stor11[address(arg1)] = 1
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, ext_call.return_data[0]
                    else:
                        require 10^uint8(ext_call.return_data[0]) * ((released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / duration) - released[address(arg1)] / 10^uint8(ext_call.return_data[0]) / ((released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / duration) - released[address(arg1)] / 10^uint8(ext_call.return_data[0]) == 10^uint8(ext_call.return_data[0])
                        require 10^uint8(ext_call.return_data[0]) * ((released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / duration) - released[address(arg1)] / 10^uint8(ext_call.return_data[0]) <= ext_call.return_data[0]
                        stor11[address(arg1)] = 1
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, ext_call.return_data[0] - (10^uint8(ext_call.return_data[0]) * ((released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / duration) - released[address(arg1)] / 10^uint8(ext_call.return_data[0]))
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
        if 1 == uint8(idx):
            if t + (744 * 24 * 3600) <= arg1:
                t = 744 * 24 * 3600
                idx = idx + 1
                t = t + (744 * 24 * 3600)
                continue 
            mem[128] = uint8(idx)
            if 1 == uint8(var56002):
                if var53001:
                    if uint8(var53007) > 31:
                        return 0
                else:
                    if 5 == uint8(var53004):
                        if uint8(var53007) > 31:
                            return 0
                    else:
                        if 7 == uint8(var53004):
                            if uint8(var53007) > 31:
                                return 0
                        else:
                            if 8 == uint8(var53004):
                                if uint8(var53007) > 31:
                                    return 0
                            else:
                                if 10 == uint8(var53004):
                                    if uint8(var53007) > 31:
                                        return 0
                                else:
                                    if 12 == uint8(var53004):
                                        if uint8(var53007) > 31:
                                            return 0
                                    else:
                                        if 4 == uint8(var53004):
                                            if uint8(var53007) > 30:
                                                return 0
                                        else:
                                            if 6 == uint8(var53004):
                                                if uint8(var53007) > 30:
                                                    return 0
                                            else:
                                                if 9 == uint8(var53004):
                                                    if uint8(var53007) > 30:
                                                        return 0
                                                else:
                                                    if 11 == uint8(var53004):
                                                        if uint8(var53007) > 30:
                                                            return 0
                                                    else:
                                                        if var53003 % 4:
                                                            if uint8(var53007) > 28:
                                                                return 0
                                                        else:
                                                            if uint16(uint16(var53003) % 100):
                                                                if uint8(var53007) > 29:
                                                                    return 0
                                                            else:
                                                                if not uint16(uint16(var53003) % 400):
                                                                    if uint8(var53007) > 29:
                                                                        return 0
                                                                else:
                                                                    if uint8(var53007) > 28:
                                                                        return 0
                if var53009 + (24 * 3600) > arg1:
                    return uint8(var53007)
                if 1 == uint8(idx):
                    var53001 = not 1
                    var53003 = uint16(s)
                    var53004 = uint8(idx)
                    var53007 = var53007 + 1
                    var53009 = var53009 + (24 * 3600)
                    continue 
                var53001 = not 3
                var53003 = uint16(s)
                var53004 = uint8(idx)
                var53007 = var53007 + 1
                var53009 = var53009 + (24 * 3600)
                continue 
            if var59001:
                if uint8(var59007) > 31:
                    return 0
            else:
                if 5 == uint8(var59004):
                    if uint8(var59007) > 31:
                        return 0
                else:
                    if 7 == uint8(var59004):
                        if uint8(var59007) > 31:
                            return 0
                    else:
                        if 8 == uint8(var59004):
                            if uint8(var59007) > 31:
                                return 0
                        else:
                            if 10 == uint8(var59004):
                                if uint8(var59007) > 31:
                                    return 0
                            else:
                                if 12 == uint8(var59004):
                                    if uint8(var59007) > 31:
                                        return 0
                                else:
                                    if 4 == uint8(var59004):
                                        if uint8(var59007) > 30:
                                            return 0
                                    else:
                                        if 6 == uint8(var59004):
                                            if uint8(var59007) > 30:
                                                return 0
                                        else:
                                            if 9 == uint8(var59004):
                                                if uint8(var59007) > 30:
                                                    return 0
                                            else:
                                                if 11 == uint8(var59004):
                                                    if uint8(var59007) > 30:
                                                        return 0
                                                else:
                                                    if var59003 % 4:
                                                        if uint8(var59007) > 28:
                                                            return 0
                                                    else:
                                                        if uint16(uint16(var59003) % 100):
                                                            if uint8(var59007) > 29:
                                                                return 0
                                                        else:
                                                            if not uint16(uint16(var59003) % 400):
                                                                if uint8(var59007) > 29:
                                                                    return 0
                                                            else:
                                                                if uint8(var59007) > 28:
                                                                    return 0
            if var59009 + (24 * 3600) > arg1:
                return uint8(var59007)
            if 1 == uint8(idx):
                var59001 = not 1
                var59003 = uint16(s)
                var59004 = uint8(idx)
                var59007 = var59007 + 1
                var59009 = var59009 + (24 * 3600)
                continue 
            var58001 = not 1
            var58003 = uint16(s)
            var58004 = uint8(idx)
            var58007 = var59007 + 1
            var58009 = var59009 + (24 * 3600)
            continue 
        if 3 == uint8(idx):
            if t + (744 * 24 * 3600) <= arg1:
                t = 744 * 24 * 3600
                idx = idx + 1
                t = t + (744 * 24 * 3600)
                continue 
            mem[128] = uint8(idx)
            if 1 == uint8(var57002):
                if var54001:
                    if uint8(var54007) > 31:
                        return 0
                else:
                    if 5 == uint8(var54004):
                        if uint8(var54007) > 31:
                            return 0
                    else:
                        if 7 == uint8(var54004):
                            if uint8(var54007) > 31:
                                return 0
                        else:
                            if 8 == uint8(var54004):
                                if uint8(var54007) > 31:
                                    return 0
                            else:
                                if 10 == uint8(var54004):
                                    if uint8(var54007) > 31:
                                        return 0
                                else:
                                    if 12 == uint8(var54004):
                                        if uint8(var54007) > 31:
                                            return 0
                                    else:
                                        if 4 == uint8(var54004):
                                            if uint8(var54007) > 30:
                                                return 0
                                        else:
                                            if 6 == uint8(var54004):
                                                if uint8(var54007) > 30:
                                                    return 0
                                            else:
                                                if 9 == uint8(var54004):
                                                    if uint8(var54007) > 30:
                                                        return 0
                                                else:
                                                    if 11 == uint8(var54004):
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
                if 1 == uint8(idx):
                    var54001 = not 1
                    var54003 = uint16(s)
                    var54004 = uint8(idx)
                    var54007 = var54007 + 1
                    var54009 = var54009 + (24 * 3600)
                    continue 
                var54001 = not 3
                var54003 = uint16(s)
                var54004 = uint8(idx)
                var54007 = var54007 + 1
                var54009 = var54009 + (24 * 3600)
                continue 
            if var60001:
                if uint8(var60007) > 31:
                    return 0
            else:
                if 5 == uint8(var60004):
                    if uint8(var60007) > 31:
                        return 0
                else:
                    if 7 == uint8(var60004):
                        if uint8(var60007) > 31:
                            return 0
                    else:
                        if 8 == uint8(var60004):
                            if uint8(var60007) > 31:
                                return 0
                        else:
                            if 10 == uint8(var60004):
                                if uint8(var60007) > 31:
                                    return 0
                            else:
                                if 12 == uint8(var60004):
                                    if uint8(var60007) > 31:
                                        return 0
                                else:
                                    if 4 == uint8(var60004):
                                        if uint8(var60007) > 30:
                                            return 0
                                    else:
                                        if 6 == uint8(var60004):
                                            if uint8(var60007) > 30:
                                                return 0
                                        else:
                                            if 9 == uint8(var60004):
                                                if uint8(var60007) > 30:
                                                    return 0
                                            else:
                                                if 11 == uint8(var60004):
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
            if 1 == uint8(idx):
                var60001 = not 1
                var60003 = uint16(s)
                var60004 = uint8(idx)
                var60007 = var60007 + 1
                var60009 = var60009 + (24 * 3600)
                continue 
            var59001 = not 1
            var59003 = uint16(s)
            var59004 = uint8(idx)
            var59007 = var60007 + 1
            var59009 = var60009 + (24 * 3600)
            continue 
        if 5 == uint8(idx):
            if t + (744 * 24 * 3600) <= arg1:
                t = 744 * 24 * 3600
                idx = idx + 1
                t = t + (744 * 24 * 3600)
                continue 
            mem[128] = uint8(idx)
            if 1 == uint8(var58002):
                if var55001:
                    if uint8(var55007) > 31:
                        return 0
                else:
                    if 5 == uint8(var55004):
                        if uint8(var55007) > 31:
                            return 0
                    else:
                        if 7 == uint8(var55004):
                            if uint8(var55007) > 31:
                                return 0
                        else:
                            if 8 == uint8(var55004):
                                if uint8(var55007) > 31:
                                    return 0
                            else:
                                if 10 == uint8(var55004):
                                    if uint8(var55007) > 31:
                                        return 0
                                else:
                                    if 12 == uint8(var55004):
                                        if uint8(var55007) > 31:
                                            return 0
                                    else:
                                        if 4 == uint8(var55004):
                                            if uint8(var55007) > 30:
                                                return 0
                                        else:
                                            if 6 == uint8(var55004):
                                                if uint8(var55007) > 30:
                                                    return 0
                                            else:
                                                if 9 == uint8(var55004):
                                                    if uint8(var55007) > 30:
                                                        return 0
                                                else:
                                                    if 11 == uint8(var55004):
                                                        if uint8(var55007) > 30:
                                                            return 0
                                                    else:
                                                        if var55003 % 4:
                                                            if uint8(var55007) > 28:
                                                                return 0
                                                        else:
                                                            if uint16(uint16(var55003) % 100):
                                                                if uint8(var55007) > 29:
                                                                    return 0
                                                            else:
                                                                if not uint16(uint16(var55003) % 400):
                                                                    if uint8(var55007) > 29:
                                                                        return 0
                                                                else:
                                                                    if uint8(var55007) > 28:
                                                                        return 0
                if var55009 + (24 * 3600) > arg1:
                    return uint8(var55007)
                if 1 == uint8(idx):
                    var55001 = not 1
                    var55003 = uint16(s)
                    var55004 = uint8(idx)
                    var55007 = var55007 + 1
                    var55009 = var55009 + (24 * 3600)
                    continue 
                var55001 = not 3
                var55003 = uint16(s)
                var55004 = uint8(idx)
                var55007 = var55007 + 1
                var55009 = var55009 + (24 * 3600)
                continue 
            if var61001:
                if uint8(var61007) > 31:
                    return 0
            else:
                if 5 == uint8(var61004):
                    if uint8(var61007) > 31:
                        return 0
                else:
                    if 7 == uint8(var61004):
                        if uint8(var61007) > 31:
                            return 0
                    else:
                        if 8 == uint8(var61004):
                            if uint8(var61007) > 31:
                                return 0
                        else:
                            if 10 == uint8(var61004):
                                if uint8(var61007) > 31:
                                    return 0
                            else:
                                if 12 == uint8(var61004):
                                    if uint8(var61007) > 31:
                                        return 0
                                else:
                                    if 4 == uint8(var61004):
                                        if uint8(var61007) > 30:
                                            return 0
                                    else:
                                        if 6 == uint8(var61004):
                                            if uint8(var61007) > 30:
                                                return 0
                                        else:
                                            if 9 == uint8(var61004):
                                                if uint8(var61007) > 30:
                                                    return 0
                                            else:
                                                if 11 == uint8(var61004):
                                                    if uint8(var61007) > 30:
                                                        return 0
                                                else:
                                                    if var61003 % 4:
                                                        if uint8(var61007) > 28:
                                                            return 0
                                                    else:
                                                        if uint16(uint16(var61003) % 100):
                                                            if uint8(var61007) > 29:
                                                                return 0
                                                        else:
                                                            if not uint16(uint16(var61003) % 400):
                                                                if uint8(var61007) > 29:
                                                                    return 0
                                                            else:
                                                                if uint8(var61007) > 28:
                                                                    return 0
            if var61009 + (24 * 3600) > arg1:
                return uint8(var61007)
            if 1 == uint8(idx):
                var61001 = not 1
                var61003 = uint16(s)
                var61004 = uint8(idx)
                var61007 = var61007 + 1
                var61009 = var61009 + (24 * 3600)
                continue 
            var60001 = not 1
            var60003 = uint16(s)
            var60004 = uint8(idx)
            var60007 = var61007 + 1
            var60009 = var61009 + (24 * 3600)
            continue 
        if 7 == uint8(idx):
            if t + (744 * 24 * 3600) <= arg1:
                t = 744 * 24 * 3600
                idx = idx + 1
                t = t + (744 * 24 * 3600)
                continue 
            mem[128] = uint8(idx)
            if 1 == uint8(var59002):
                if var56001:
                    if uint8(var56007) > 31:
                        return 0
                else:
                    if 5 == uint8(var56004):
                        if uint8(var56007) > 31:
                            return 0
                    else:
                        if 7 == uint8(var56004):
                            if uint8(var56007) > 31:
                                return 0
                        else:
                            if 8 == uint8(var56004):
                                if uint8(var56007) > 31:
                                    return 0
                            else:
                                if 10 == uint8(var56004):
                                    if uint8(var56007) > 31:
                                        return 0
                                else:
                                    if 12 == uint8(var56004):
                                        if uint8(var56007) > 31:
                                            return 0
                                    else:
                                        if 4 == uint8(var56004):
                                            if uint8(var56007) > 30:
                                                return 0
                                        else:
                                            if 6 == uint8(var56004):
                                                if uint8(var56007) > 30:
                                                    return 0
                                            else:
                                                if 9 == uint8(var56004):
                                                    if uint8(var56007) > 30:
                                                        return 0
                                                else:
                                                    if 11 == uint8(var56004):
                                                        if uint8(var56007) > 30:
                                                            return 0
                                                    else:
                                                        if var56003 % 4:
                                                            if uint8(var56007) > 28:
                                                                return 0
                                                        else:
                                                            if uint16(uint16(var56003) % 100):
                                                                if uint8(var56007) > 29:
                                                                    return 0
                                                            else:
                                                                if not uint16(uint16(var56003) % 400):
                                                                    if uint8(var56007) > 29:
                                                                        return 0
                                                                else:
                                                                    if uint8(var56007) > 28:
                                                                        return 0
                if var56009 + (24 * 3600) > arg1:
                    return uint8(var56007)
                if 1 == uint8(idx):
                    var56001 = not 1
                    var56003 = uint16(s)
                    var56004 = uint8(idx)
                    var56007 = var56007 + 1
                    var56009 = var56009 + (24 * 3600)
                    continue 
                var56001 = not 3
                var56003 = uint16(s)
                var56004 = uint8(idx)
                var56007 = var56007 + 1
                var56009 = var56009 + (24 * 3600)
                continue 
            if var62001:
                if uint8(var62007) > 31:
                    return 0
            else:
                if 5 == uint8(var62004):
                    if uint8(var62007) > 31:
                        return 0
                else:
                    if 7 == uint8(var62004):
                        if uint8(var62007) > 31:
                            return 0
                    else:
                        if 8 == uint8(var62004):
                            if uint8(var62007) > 31:
                                return 0
                        else:
                            if 10 == uint8(var62004):
                                if uint8(var62007) > 31:
                                    return 0
                            else:
                                if 12 == uint8(var62004):
                                    if uint8(var62007) > 31:
                                        return 0
                                else:
                                    if 4 == uint8(var62004):
                                        if uint8(var62007) > 30:
                                            return 0
                                    else:
                                        if 6 == uint8(var62004):
                                            if uint8(var62007) > 30:
                                                return 0
                                        else:
                                            if 9 == uint8(var62004):
                                                if uint8(var62007) > 30:
                                                    return 0
                                            else:
                                                if 11 == uint8(var62004):
                                                    if uint8(var62007) > 30:
                                                        return 0
                                                else:
                                                    if var62003 % 4:
                                                        if uint8(var62007) > 28:
                                                            return 0
                                                    else:
                                                        if uint16(uint16(var62003) % 100):
                                                            if uint8(var62007) > 29:
                                                                return 0
                                                        else:
                                                            if not uint16(uint16(var62003) % 400):
                                                                if uint8(var62007) > 29:
                                                                    return 0
                                                            else:
                                                                if uint8(var62007) > 28:
                                                                    return 0
            if var62009 + (24 * 3600) > arg1:
                return uint8(var62007)
            if 1 == uint8(idx):
                var62001 = not 1
                var62003 = uint16(s)
                var62004 = uint8(idx)
                var62007 = var62007 + 1
                var62009 = var62009 + (24 * 3600)
                continue 
            var61001 = not 1
            var61003 = uint16(s)
            var61004 = uint8(idx)
            var61007 = var62007 + 1
            var61009 = var62009 + (24 * 3600)
            continue 
        if 8 == uint8(idx):
            if t + (744 * 24 * 3600) <= arg1:
                t = 744 * 24 * 3600
                idx = idx + 1
                t = t + (744 * 24 * 3600)
                continue 
            mem[128] = uint8(idx)
            if 1 == uint8(var60002):
                if var57001:
                    if uint8(var57007) > 31:
                        return 0
                else:
                    if 5 == uint8(var57004):
                        if uint8(var57007) > 31:
                            return 0
                    else:
                        if 7 == uint8(var57004):
                            if uint8(var57007) > 31:
                                return 0
                        else:
                            if 8 == uint8(var57004):
                                if uint8(var57007) > 31:
                                    return 0
                            else:
                                if 10 == uint8(var57004):
                                    if uint8(var57007) > 31:
                                        return 0
                                else:
                                    if 12 == uint8(var57004):
                                        if uint8(var57007) > 31:
                                            return 0
                                    else:
                                        if 4 == uint8(var57004):
                                            if uint8(var57007) > 30:
                                                return 0
                                        else:
                                            if 6 == uint8(var57004):
                                                if uint8(var57007) > 30:
                                                    return 0
                                            else:
                                                if 9 == uint8(var57004):
                                                    if uint8(var57007) > 30:
                                                        return 0
                                                else:
                                                    if 11 == uint8(var57004):
                                                        if uint8(var57007) > 30:
                                                            return 0
                                                    else:
                                                        if var57003 % 4:
                                                            if uint8(var57007) > 28:
                                                                return 0
                                                        else:
                                                            if uint16(uint16(var57003) % 100):
                                                                if uint8(var57007) > 29:
                                                                    return 0
                                                            else:
                                                                if not uint16(uint16(var57003) % 400):
                                                                    if uint8(var57007) > 29:
                                                                        return 0
                                                                else:
                                                                    if uint8(var57007) > 28:
                                                                        return 0
                if var57009 + (24 * 3600) > arg1:
                    return uint8(var57007)
                if 1 == uint8(idx):
                    var57001 = not 1
                    var57003 = uint16(s)
                    var57004 = uint8(idx)
                    var57007 = var57007 + 1
                    var57009 = var57009 + (24 * 3600)
                    continue 
                var57001 = not 3
                var57003 = uint16(s)
                var57004 = uint8(idx)
                var57007 = var57007 + 1
                var57009 = var57009 + (24 * 3600)
                continue 
            if var63001:
                if uint8(var63007) > 31:
                    return 0
            else:
                if 5 == uint8(var63004):
                    if uint8(var63007) > 31:
                        return 0
                else:
                    if 7 == uint8(var63004):
                        if uint8(var63007) > 31:
                            return 0
                    else:
                        if 8 == uint8(var63004):
                            if uint8(var63007) > 31:
                                return 0
                        else:
                            if 10 == uint8(var63004):
                                if uint8(var63007) > 31:
                                    return 0
                            else:
                                if 12 == uint8(var63004):
                                    if uint8(var63007) > 31:
                                        return 0
                                else:
                                    if 4 == uint8(var63004):
                                        if uint8(var63007) > 30:
                                            return 0
                                    else:
                                        if 6 == uint8(var63004):
                                            if uint8(var63007) > 30:
                                                return 0
                                        else:
                                            if 9 == uint8(var63004):
                                                if uint8(var63007) > 30:
                                                    return 0
                                            else:
                                                if 11 == uint8(var63004):
                                                    if uint8(var63007) > 30:
                                                        return 0
                                                else:
                                                    if var63003 % 4:
                                                        if uint8(var63007) > 28:
                                                            return 0
                                                    else:
                                                        if uint16(uint16(var63003) % 100):
                                                            if uint8(var63007) > 29:
                                                                return 0
                                                        else:
                                                            if not uint16(uint16(var63003) % 400):
                                                                if uint8(var63007) > 29:
                                                                    return 0
                                                            else:
                                                                if uint8(var63007) > 28:
                                                                    return 0
            if var63009 + (24 * 3600) > arg1:
                return uint8(var63007)
            if 1 == uint8(idx):
                var63001 = not 1
                var63003 = uint16(s)
                var63004 = uint8(idx)
                var63007 = var63007 + 1
                var63009 = var63009 + (24 * 3600)
                continue 
            var62001 = not 1
            var62003 = uint16(s)
            var62004 = uint8(idx)
            var62007 = var63007 + 1
            var62009 = var63009 + (24 * 3600)
            continue 
        if 10 == uint8(idx):
            if t + (744 * 24 * 3600) <= arg1:
                t = 744 * 24 * 3600
                idx = idx + 1
                t = t + (744 * 24 * 3600)
                continue 
            mem[128] = uint8(idx)
            if 1 == uint8(var61002):
                if var58001:
                    if uint8(var58007) > 31:
                        return 0
                else:
                    if 5 == uint8(var58004):
                        if uint8(var58007) > 31:
                            return 0
                    else:
                        if 7 == uint8(var58004):
                            if uint8(var58007) > 31:
                                return 0
                        else:
                            if 8 == uint8(var58004):
                                if uint8(var58007) > 31:
                                    return 0
                            else:
                                if 10 == uint8(var58004):
                                    if uint8(var58007) > 31:
                                        return 0
                                else:
                                    if 12 == uint8(var58004):
                                        if uint8(var58007) > 31:
                                            return 0
                                    else:
                                        if 4 == uint8(var58004):
                                            if uint8(var58007) > 30:
                                                return 0
                                        else:
                                            if 6 == uint8(var58004):
                                                if uint8(var58007) > 30:
                                                    return 0
                                            else:
                                                if 9 == uint8(var58004):
                                                    if uint8(var58007) > 30:
                                                        return 0
                                                else:
                                                    if 11 == uint8(var58004):
                                                        if uint8(var58007) > 30:
                                                            return 0
                                                    else:
                                                        if var58003 % 4:
                                                            if uint8(var58007) > 28:
                                                                return 0
                                                        else:
                                                            if uint16(uint16(var58003) % 100):
                                                                if uint8(var58007) > 29:
                                                                    return 0
                                                            else:
                                                                if not uint16(uint16(var58003) % 400):
                                                                    if uint8(var58007) > 29:
                                                                        return 0
                                                                else:
                                                                    if uint8(var58007) > 28:
                                                                        return 0
                if var58009 + (24 * 3600) > arg1:
                    return uint8(var58007)
                if 1 == uint8(idx):
                    var58001 = not 1
                    var58003 = uint16(s)
                    var58004 = uint8(idx)
                    var58007 = var58007 + 1
                    var58009 = var58009 + (24 * 3600)
                    continue 
                var58001 = not 3
                var58003 = uint16(s)
                var58004 = uint8(idx)
                var58007 = var58007 + 1
                var58009 = var58009 + (24 * 3600)
                continue 
            if var64001:
                if uint8(var64007) > 31:
                    return 0
            else:
                if 5 == uint8(var64004):
                    if uint8(var64007) > 31:
                        return 0
                else:
                    if 7 == uint8(var64004):
                        if uint8(var64007) > 31:
                            return 0
                    else:
                        if 8 == uint8(var64004):
                            if uint8(var64007) > 31:
                                return 0
                        else:
                            if 10 == uint8(var64004):
                                if uint8(var64007) > 31:
                                    return 0
                            else:
                                if 12 == uint8(var64004):
                                    if uint8(var64007) > 31:
                                        return 0
                                else:
                                    if 4 == uint8(var64004):
                                        if uint8(var64007) > 30:
                                            return 0
                                    else:
                                        if 6 == uint8(var64004):
                                            if uint8(var64007) > 30:
                                                return 0
                                        else:
                                            if 9 == uint8(var64004):
                                                if uint8(var64007) > 30:
                                                    return 0
                                            else:
                                                if 11 == uint8(var64004):
                                                    if uint8(var64007) > 30:
                                                        return 0
                                                else:
                                                    if var64003 % 4:
                                                        if uint8(var64007) > 28:
                                                            return 0
                                                    else:
                                                        if uint16(uint16(var64003) % 100):
                                                            if uint8(var64007) > 29:
                                                                return 0
                                                        else:
                                                            if not uint16(uint16(var64003) % 400):
                                                                if uint8(var64007) > 29:
                                                                    return 0
                                                            else:
                                                                if uint8(var64007) > 28:
                                                                    return 0
            if var64009 + (24 * 3600) > arg1:
                return uint8(var64007)
            if 1 == uint8(idx):
                var64001 = not 1
                var64003 = uint16(s)
                var64004 = uint8(idx)
                var64007 = var64007 + 1
                var64009 = var64009 + (24 * 3600)
                continue 
            var63001 = not 1
            var63003 = uint16(s)
            var63004 = uint8(idx)
            var63007 = var64007 + 1
            var63009 = var64009 + (24 * 3600)
            continue 
        if 12 == uint8(idx):
            if t + (744 * 24 * 3600) <= arg1:
                t = 744 * 24 * 3600
                idx = idx + 1
                t = t + (744 * 24 * 3600)
                continue 
            mem[128] = uint8(idx)
            if 1 == uint8(var62002):
                if var59001:
                    if uint8(var59007) > 31:
                        return 0
                else:
                    if 5 == uint8(var59004):
                        if uint8(var59007) > 31:
                            return 0
                    else:
                        if 7 == uint8(var59004):
                            if uint8(var59007) > 31:
                                return 0
                        else:
                            if 8 == uint8(var59004):
                                if uint8(var59007) > 31:
                                    return 0
                            else:
                                if 10 == uint8(var59004):
                                    if uint8(var59007) > 31:
                                        return 0
                                else:
                                    if 12 == uint8(var59004):
                                        if uint8(var59007) > 31:
                                            return 0
                                    else:
                                        if 4 == uint8(var59004):
                                            if uint8(var59007) > 30:
                                                return 0
                                        else:
                                            if 6 == uint8(var59004):
                                                if uint8(var59007) > 30:
                                                    return 0
                                            else:
                                                if 9 == uint8(var59004):
                                                    if uint8(var59007) > 30:
                                                        return 0
                                                else:
                                                    if 11 == uint8(var59004):
                                                        if uint8(var59007) > 30:
                                                            return 0
                                                    else:
                                                        if var59003 % 4:
                                                            if uint8(var59007) > 28:
                                                                return 0
                                                        else:
                                                            if uint16(uint16(var59003) % 100):
                                                                if uint8(var59007) > 29:
                                                                    return 0
                                                            else:
                                                                if not uint16(uint16(var59003) % 400):
                                                                    if uint8(var59007) > 29:
                                                                        return 0
                                                                else:
                                                                    if uint8(var59007) > 28:
                                                                        return 0
                if var59009 + (24 * 3600) > arg1:
                    return uint8(var59007)
                if 1 == uint8(idx):
                    var59001 = not 1
                    var59003 = uint16(s)
                    var59004 = uint8(idx)
                    var59007 = var59007 + 1
                    var59009 = var59009 + (24 * 3600)
                    continue 
                var59001 = not 3
                var59003 = uint16(s)
                var59004 = uint8(idx)
                var59007 = var59007 + 1
                var59009 = var59009 + (24 * 3600)
                continue 
            if var65001:
                if uint8(var65007) > 31:
                    return 0
            else:
                if 5 == uint8(var65004):
                    if uint8(var65007) > 31:
                        return 0
                else:
                    if 7 == uint8(var65004):
                        if uint8(var65007) > 31:
                            return 0
                    else:
                        if 8 == uint8(var65004):
                            if uint8(var65007) > 31:
                                return 0
                        else:
                            if 10 == uint8(var65004):
                                if uint8(var65007) > 31:
                                    return 0
                            else:
                                if 12 == uint8(var65004):
                                    if uint8(var65007) > 31:
                                        return 0
                                else:
                                    if 4 == uint8(var65004):
                                        if uint8(var65007) > 30:
                                            return 0
                                    else:
                                        if 6 == uint8(var65004):
                                            if uint8(var65007) > 30:
                                                return 0
                                        else:
                                            if 9 == uint8(var65004):
                                                if uint8(var65007) > 30:
                                                    return 0
                                            else:
                                                if 11 == uint8(var65004):
                                                    if uint8(var65007) > 30:
                                                        return 0
                                                else:
                                                    if var65003 % 4:
                                                        if uint8(var65007) > 28:
                                                            return 0
                                                    else:
                                                        if uint16(uint16(var65003) % 100):
                                                            if uint8(var65007) > 29:
                                                                return 0
                                                        else:
                                                            if not uint16(uint16(var65003) % 400):
                                                                if uint8(var65007) > 29:
                                                                    return 0
                                                            else:
                                                                if uint8(var65007) > 28:
                                                                    return 0
            if var65009 + (24 * 3600) > arg1:
                return uint8(var65007)
            if 1 == uint8(idx):
                var65001 = not 1
                var65003 = uint16(s)
                var65004 = uint8(idx)
                var65007 = var65007 + 1
                var65009 = var65009 + (24 * 3600)
                continue 
            var64001 = not 1
            var64003 = uint16(s)
            var64004 = uint8(idx)
            var64007 = var65007 + 1
            var64009 = var65009 + (24 * 3600)
            continue 
        if 4 == uint8(idx):
            if t + (720 * 24 * 3600) <= arg1:
                t = 720 * 24 * 3600
                idx = idx + 1
                t = t + (720 * 24 * 3600)
                continue 
            mem[128] = uint8(idx)
            if 1 == uint8(var66002):
                if var63001:
                    if uint8(var63007) > 31:
                        return 0
                else:
                    if 5 == uint8(var63004):
                        if uint8(var63007) > 31:
                            return 0
                    else:
                        if 7 == uint8(var63004):
                            if uint8(var63007) > 31:
                                return 0
                        else:
                            if 8 == uint8(var63004):
                                if uint8(var63007) > 31:
                                    return 0
                            else:
                                if 10 == uint8(var63004):
                                    if uint8(var63007) > 31:
                                        return 0
                                else:
                                    if 12 == uint8(var63004):
                                        if uint8(var63007) > 31:
                                            return 0
                                    else:
                                        if 4 == uint8(var63004):
                                            if uint8(var63007) > 30:
                                                return 0
                                        else:
                                            if 6 == uint8(var63004):
                                                if uint8(var63007) > 30:
                                                    return 0
                                            else:
                                                if 9 == uint8(var63004):
                                                    if uint8(var63007) > 30:
                                                        return 0
                                                else:
                                                    if 11 == uint8(var63004):
                                                        if uint8(var63007) > 30:
                                                            return 0
                                                    else:
                                                        if var63003 % 4:
                                                            if uint8(var63007) > 28:
                                                                return 0
                                                        else:
                                                            if uint16(uint16(var63003) % 100):
                                                                if uint8(var63007) > 29:
                                                                    return 0
                                                            else:
                                                                if not uint16(uint16(var63003) % 400):
                                                                    if uint8(var63007) > 29:
                                                                        return 0
                                                                else:
                                                                    if uint8(var63007) > 28:
                                                                        return 0
                if var63009 + (24 * 3600) > arg1:
                    return uint8(var63007)
                if 1 == uint8(idx):
                    var63001 = not 1
                    var63003 = uint16(s)
                    var63004 = uint8(idx)
                    var63007 = var63007 + 1
                    var63009 = var63009 + (24 * 3600)
                    continue 
                var63001 = not 3
                var63003 = uint16(s)
                var63004 = uint8(idx)
                var63007 = var63007 + 1
                var63009 = var63009 + (24 * 3600)
                continue 
            if var69001:
                if uint8(var69007) > 31:
                    return 0
            else:
                if 5 == uint8(var69004):
                    if uint8(var69007) > 31:
                        return 0
                else:
                    if 7 == uint8(var69004):
                        if uint8(var69007) > 31:
                            return 0
                    else:
                        if 8 == uint8(var69004):
                            if uint8(var69007) > 31:
                                return 0
                        else:
                            if 10 == uint8(var69004):
                                if uint8(var69007) > 31:
                                    return 0
                            else:
                                if 12 == uint8(var69004):
                                    if uint8(var69007) > 31:
                                        return 0
                                else:
                                    if 4 == uint8(var69004):
                                        if uint8(var69007) > 30:
                                            return 0
                                    else:
                                        if 6 == uint8(var69004):
                                            if uint8(var69007) > 30:
                                                return 0
                                        else:
                                            if 9 == uint8(var69004):
                                                if uint8(var69007) > 30:
                                                    return 0
                                            else:
                                                if 11 == uint8(var69004):
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
            if 1 == uint8(idx):
                var69001 = not 1
                var69003 = uint16(s)
                var69004 = uint8(idx)
                var69007 = var69007 + 1
                var69009 = var69009 + (24 * 3600)
                continue 
            var68001 = not 1
            var68003 = uint16(s)
            var68004 = uint8(idx)
            var68007 = var69007 + 1
            var68009 = var69009 + (24 * 3600)
            continue 
        if 6 == uint8(idx):
            if t + (720 * 24 * 3600) <= arg1:
                t = 720 * 24 * 3600
                idx = idx + 1
                t = t + (720 * 24 * 3600)
                continue 
            mem[128] = uint8(idx)
            if 1 == uint8(var67002):
                if var64001:
                    if uint8(var64007) > 31:
                        return 0
                else:
                    if 5 == uint8(var64004):
                        if uint8(var64007) > 31:
                            return 0
                    else:
                        if 7 == uint8(var64004):
                            if uint8(var64007) > 31:
                                return 0
                        else:
                            if 8 == uint8(var64004):
                                if uint8(var64007) > 31:
                                    return 0
                            else:
                                if 10 == uint8(var64004):
                                    if uint8(var64007) > 31:
                                        return 0
                                else:
                                    if 12 == uint8(var64004):
                                        if uint8(var64007) > 31:
                                            return 0
                                    else:
                                        if 4 == uint8(var64004):
                                            if uint8(var64007) > 30:
                                                return 0
                                        else:
                                            if 6 == uint8(var64004):
                                                if uint8(var64007) > 30:
                                                    return 0
                                            else:
                                                if 9 == uint8(var64004):
                                                    if uint8(var64007) > 30:
                                                        return 0
                                                else:
                                                    if 11 == uint8(var64004):
                                                        if uint8(var64007) > 30:
                                                            return 0
                                                    else:
                                                        if var64003 % 4:
                                                            if uint8(var64007) > 28:
                                                                return 0
                                                        else:
                                                            if uint16(uint16(var64003) % 100):
                                                                if uint8(var64007) > 29:
                                                                    return 0
                                                            else:
                                                                if not uint16(uint16(var64003) % 400):
                                                                    if uint8(var64007) > 29:
                                                                        return 0
                                                                else:
                                                                    if uint8(var64007) > 28:
                                                                        return 0
                if var64009 + (24 * 3600) > arg1:
                    return uint8(var64007)
                if 1 == uint8(idx):
                    var64001 = not 1
                    var64003 = uint16(s)
                    var64004 = uint8(idx)
                    var64007 = var64007 + 1
                    var64009 = var64009 + (24 * 3600)
                    continue 
                var64001 = not 3
                var64003 = uint16(s)
                var64004 = uint8(idx)
                var64007 = var64007 + 1
                var64009 = var64009 + (24 * 3600)
                continue 
            if var70001:
                if uint8(var70007) > 31:
                    return 0
            else:
                if 5 == uint8(var70004):
                    if uint8(var70007) > 31:
                        return 0
                else:
                    if 7 == uint8(var70004):
                        if uint8(var70007) > 31:
                            return 0
                    else:
                        if 8 == uint8(var70004):
                            if uint8(var70007) > 31:
                                return 0
                        else:
                            if 10 == uint8(var70004):
                                if uint8(var70007) > 31:
                                    return 0
                            else:
                                if 12 == uint8(var70004):
                                    if uint8(var70007) > 31:
                                        return 0
                                else:
                                    if 4 == uint8(var70004):
                                        if uint8(var70007) > 30:
                                            return 0
                                    else:
                                        if 6 == uint8(var70004):
                                            if uint8(var70007) > 30:
                                                return 0
                                        else:
                                            if 9 == uint8(var70004):
                                                if uint8(var70007) > 30:
                                                    return 0
                                            else:
                                                if 11 == uint8(var70004):
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
            if 1 == uint8(idx):
                var70001 = not 1
                var70003 = uint16(s)
                var70004 = uint8(idx)
                var70007 = var70007 + 1
                var70009 = var70009 + (24 * 3600)
                continue 
            var69001 = not 1
            var69003 = uint16(s)
            var69004 = uint8(idx)
            var69007 = var70007 + 1
            var69009 = var70009 + (24 * 3600)
            continue 
        if 9 == uint8(idx):
            if t + (720 * 24 * 3600) <= arg1:
                t = 720 * 24 * 3600
                idx = idx + 1
                t = t + (720 * 24 * 3600)
                continue 
            mem[128] = uint8(idx)
            if 1 == uint8(var68002):
                if var65001:
                    if uint8(var65007) > 31:
                        return 0
                else:
                    if 5 == uint8(var65004):
                        if uint8(var65007) > 31:
                            return 0
                    else:
                        if 7 == uint8(var65004):
                            if uint8(var65007) > 31:
                                return 0
                        else:
                            if 8 == uint8(var65004):
                                if uint8(var65007) > 31:
                                    return 0
                            else:
                                if 10 == uint8(var65004):
                                    if uint8(var65007) > 31:
                                        return 0
                                else:
                                    if 12 == uint8(var65004):
                                        if uint8(var65007) > 31:
                                            return 0
                                    else:
                                        if 4 == uint8(var65004):
                                            if uint8(var65007) > 30:
                                                return 0
                                        else:
                                            if 6 == uint8(var65004):
                                                if uint8(var65007) > 30:
                                                    return 0
                                            else:
                                                if 9 == uint8(var65004):
                                                    if uint8(var65007) > 30:
                                                        return 0
                                                else:
                                                    if 11 == uint8(var65004):
                                                        if uint8(var65007) > 30:
                                                            return 0
                                                    else:
                                                        if var65003 % 4:
                                                            if uint8(var65007) > 28:
                                                                return 0
                                                        else:
                                                            if uint16(uint16(var65003) % 100):
                                                                if uint8(var65007) > 29:
                                                                    return 0
                                                            else:
                                                                if not uint16(uint16(var65003) % 400):
                                                                    if uint8(var65007) > 29:
                                                                        return 0
                                                                else:
                                                                    if uint8(var65007) > 28:
                                                                        return 0
                if var65009 + (24 * 3600) > arg1:
                    return uint8(var65007)
                if 1 == uint8(idx):
                    var65001 = not 1
                    var65003 = uint16(s)
                    var65004 = uint8(idx)
                    var65007 = var65007 + 1
                    var65009 = var65009 + (24 * 3600)
                    continue 
                var65001 = not 3
                var65003 = uint16(s)
                var65004 = uint8(idx)
                var65007 = var65007 + 1
                var65009 = var65009 + (24 * 3600)
                continue 
            if var71001:
                if uint8(var71007) > 31:
                    return 0
            else:
                if 5 == uint8(var71004):
                    if uint8(var71007) > 31:
                        return 0
                else:
                    if 7 == uint8(var71004):
                        if uint8(var71007) > 31:
                            return 0
                    else:
                        if 8 == uint8(var71004):
                            if uint8(var71007) > 31:
                                return 0
                        else:
                            if 10 == uint8(var71004):
                                if uint8(var71007) > 31:
                                    return 0
                            else:
                                if 12 == uint8(var71004):
                                    if uint8(var71007) > 31:
                                        return 0
                                else:
                                    if 4 == uint8(var71004):
                                        if uint8(var71007) > 30:
                                            return 0
                                    else:
                                        if 6 == uint8(var71004):
                                            if uint8(var71007) > 30:
                                                return 0
                                        else:
                                            if 9 == uint8(var71004):
                                                if uint8(var71007) > 30:
                                                    return 0
                                            else:
                                                if 11 == uint8(var71004):
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
            if 1 == uint8(idx):
                var71001 = not 1
                var71003 = uint16(s)
                var71004 = uint8(idx)
                var71007 = var71007 + 1
                var71009 = var71009 + (24 * 3600)
                continue 
            var70001 = not 1
            var70003 = uint16(s)
            var70004 = uint8(idx)
            var70007 = var71007 + 1
            var70009 = var71009 + (24 * 3600)
            continue 
        if 11 == uint8(idx):
            if t + (720 * 24 * 3600) <= arg1:
                t = 720 * 24 * 3600
                idx = idx + 1
                t = t + (720 * 24 * 3600)
                continue 
            mem[128] = uint8(idx)
            if 1 == uint8(var69002):
                if var66001:
                    if uint8(var66007) > 31:
                        return 0
                else:
                    if 5 == uint8(var66004):
                        if uint8(var66007) > 31:
                            return 0
                    else:
                        if 7 == uint8(var66004):
                            if uint8(var66007) > 31:
                                return 0
                        else:
                            if 8 == uint8(var66004):
                                if uint8(var66007) > 31:
                                    return 0
                            else:
                                if 10 == uint8(var66004):
                                    if uint8(var66007) > 31:
                                        return 0
                                else:
                                    if 12 == uint8(var66004):
                                        if uint8(var66007) > 31:
                                            return 0
                                    else:
                                        if 4 == uint8(var66004):
                                            if uint8(var66007) > 30:
                                                return 0
                                        else:
                                            if 6 == uint8(var66004):
                                                if uint8(var66007) > 30:
                                                    return 0
                                            else:
                                                if 9 == uint8(var66004):
                                                    if uint8(var66007) > 30:
                                                        return 0
                                                else:
                                                    if 11 == uint8(var66004):
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
                if 1 == uint8(idx):
                    var66001 = not 1
                    var66003 = uint16(s)
                    var66004 = uint8(idx)
                    var66007 = var66007 + 1
                    var66009 = var66009 + (24 * 3600)
                    continue 
                var66001 = not 3
                var66003 = uint16(s)
                var66004 = uint8(idx)
                var66007 = var66007 + 1
                var66009 = var66009 + (24 * 3600)
                continue 
            if var72001:
                if uint8(var72007) > 31:
                    return 0
            else:
                if 5 == uint8(var72004):
                    if uint8(var72007) > 31:
                        return 0
                else:
                    if 7 == uint8(var72004):
                        if uint8(var72007) > 31:
                            return 0
                    else:
                        if 8 == uint8(var72004):
                            if uint8(var72007) > 31:
                                return 0
                        else:
                            if 10 == uint8(var72004):
                                if uint8(var72007) > 31:
                                    return 0
                            else:
                                if 12 == uint8(var72004):
                                    if uint8(var72007) > 31:
                                        return 0
                                else:
                                    if 4 == uint8(var72004):
                                        if uint8(var72007) > 30:
                                            return 0
                                    else:
                                        if 6 == uint8(var72004):
                                            if uint8(var72007) > 30:
                                                return 0
                                        else:
                                            if 9 == uint8(var72004):
                                                if uint8(var72007) > 30:
                                                    return 0
                                            else:
                                                if 11 == uint8(var72004):
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
            if 1 == uint8(idx):
                var72001 = not 1
                var72003 = uint16(s)
                var72004 = uint8(idx)
                var72007 = var72007 + 1
                var72009 = var72009 + (24 * 3600)
                continue 
            var71001 = not 1
            var71003 = uint16(s)
            var71004 = uint8(idx)
            var71007 = var72007 + 1
            var71009 = var72009 + (24 * 3600)
            continue 
        if s % 4:
            if t + (672 * 24 * 3600) <= arg1:
                t = 672 * 24 * 3600
                idx = idx + 1
                t = t + (672 * 24 * 3600)
                continue 
            mem[128] = uint8(idx)
            if 1 == uint8(var74002):
                if var71001:
                    if uint8(var71007) > 31:
                        return 0
                else:
                    if 5 == uint8(var71004):
                        if uint8(var71007) > 31:
                            return 0
                    else:
                        if 7 == uint8(var71004):
                            if uint8(var71007) > 31:
                                return 0
                        else:
                            if 8 == uint8(var71004):
                                if uint8(var71007) > 31:
                                    return 0
                            else:
                                if 10 == uint8(var71004):
                                    if uint8(var71007) > 31:
                                        return 0
                                else:
                                    if 12 == uint8(var71004):
                                        if uint8(var71007) > 31:
                                            return 0
                                    else:
                                        if 4 == uint8(var71004):
                                            if uint8(var71007) > 30:
                                                return 0
                                        else:
                                            if 6 == uint8(var71004):
                                                if uint8(var71007) > 30:
                                                    return 0
                                            else:
                                                if 9 == uint8(var71004):
                                                    if uint8(var71007) > 30:
                                                        return 0
                                                else:
                                                    if 11 == uint8(var71004):
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
                if 1 == uint8(idx):
                    var71001 = not 1
                    var71003 = uint16(s)
                    var71004 = uint8(idx)
                    var71007 = var71007 + 1
                    var71009 = var71009 + (24 * 3600)
                    continue 
                var71001 = not 3
                var71003 = uint16(s)
                var71004 = uint8(idx)
                var71007 = var71007 + 1
                var71009 = var71009 + (24 * 3600)
                continue 
            if var77001:
                if uint8(var77007) > 31:
                    return 0
            else:
                if 5 == uint8(var77004):
                    if uint8(var77007) > 31:
                        return 0
                else:
                    if 7 == uint8(var77004):
                        if uint8(var77007) > 31:
                            return 0
                    else:
                        if 8 == uint8(var77004):
                            if uint8(var77007) > 31:
                                return 0
                        else:
                            if 10 == uint8(var77004):
                                if uint8(var77007) > 31:
                                    return 0
                            else:
                                if 12 == uint8(var77004):
                                    if uint8(var77007) > 31:
                                        return 0
                                else:
                                    if 4 == uint8(var77004):
                                        if uint8(var77007) > 30:
                                            return 0
                                    else:
                                        if 6 == uint8(var77004):
                                            if uint8(var77007) > 30:
                                                return 0
                                        else:
                                            if 9 == uint8(var77004):
                                                if uint8(var77007) > 30:
                                                    return 0
                                            else:
                                                if 11 == uint8(var77004):
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
            if 1 == uint8(idx):
                var77001 = not 1
                var77003 = uint16(s)
                var77004 = uint8(idx)
                var77007 = var77007 + 1
                var77009 = var77009 + (24 * 3600)
                continue 
            var76001 = not 1
            var76003 = uint16(s)
            var76004 = uint8(idx)
            var76007 = var77007 + 1
            var76009 = var77009 + (24 * 3600)
            continue 
        if uint16(uint16(s) % 100):
            if t + (696 * 24 * 3600) <= arg1:
                t = 696 * 24 * 3600
                idx = idx + 1
                t = t + (696 * 24 * 3600)
                continue 
            mem[128] = uint8(idx)
            if 1 == uint8(var75002):
                if var72001:
                    if uint8(var72007) > 31:
                        return 0
                else:
                    if 5 == uint8(var72004):
                        if uint8(var72007) > 31:
                            return 0
                    else:
                        if 7 == uint8(var72004):
                            if uint8(var72007) > 31:
                                return 0
                        else:
                            if 8 == uint8(var72004):
                                if uint8(var72007) > 31:
                                    return 0
                            else:
                                if 10 == uint8(var72004):
                                    if uint8(var72007) > 31:
                                        return 0
                                else:
                                    if 12 == uint8(var72004):
                                        if uint8(var72007) > 31:
                                            return 0
                                    else:
                                        if 4 == uint8(var72004):
                                            if uint8(var72007) > 30:
                                                return 0
                                        else:
                                            if 6 == uint8(var72004):
                                                if uint8(var72007) > 30:
                                                    return 0
                                            else:
                                                if 9 == uint8(var72004):
                                                    if uint8(var72007) > 30:
                                                        return 0
                                                else:
                                                    if 11 == uint8(var72004):
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
                if 1 == uint8(idx):
                    var72001 = not 1
                    var72003 = uint16(s)
                    var72004 = uint8(idx)
                    var72007 = var72007 + 1
                    var72009 = var72009 + (24 * 3600)
                    continue 
                var72001 = not 3
                var72003 = uint16(s)
                var72004 = uint8(idx)
                var72007 = var72007 + 1
                var72009 = var72009 + (24 * 3600)
                continue 
            if var78001:
                if uint8(var78007) > 31:
                    return 0
            else:
                if 5 == uint8(var78004):
                    if uint8(var78007) > 31:
                        return 0
                else:
                    if 7 == uint8(var78004):
                        if uint8(var78007) > 31:
                            return 0
                    else:
                        if 8 == uint8(var78004):
                            if uint8(var78007) > 31:
                                return 0
                        else:
                            if 10 == uint8(var78004):
                                if uint8(var78007) > 31:
                                    return 0
                            else:
                                if 12 == uint8(var78004):
                                    if uint8(var78007) > 31:
                                        return 0
                                else:
                                    if 4 == uint8(var78004):
                                        if uint8(var78007) > 30:
                                            return 0
                                    else:
                                        if 6 == uint8(var78004):
                                            if uint8(var78007) > 30:
                                                return 0
                                        else:
                                            if 9 == uint8(var78004):
                                                if uint8(var78007) > 30:
                                                    return 0
                                            else:
                                                if 11 == uint8(var78004):
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
            if 1 == uint8(idx):
                var78001 = not 1
                var78003 = uint16(s)
                var78004 = uint8(idx)
                var78007 = var78007 + 1
                var78009 = var78009 + (24 * 3600)
                continue 
            var77001 = not 1
            var77003 = uint16(s)
            var77004 = uint8(idx)
            var77007 = var78007 + 1
            var77009 = var78009 + (24 * 3600)
            continue 
        if not uint16(uint16(s) % 400):
            if t + (696 * 24 * 3600) <= arg1:
                t = 696 * 24 * 3600
                idx = idx + 1
                t = t + (696 * 24 * 3600)
                continue 
            mem[128] = uint8(idx)
            if 1 == uint8(var75002):
                if var72001:
                    if uint8(var72007) > 31:
                        return 0
                else:
                    if 5 == uint8(var72004):
                        if uint8(var72007) > 31:
                            return 0
                    else:
                        if 7 == uint8(var72004):
                            if uint8(var72007) > 31:
                                return 0
                        else:
                            if 8 == uint8(var72004):
                                if uint8(var72007) > 31:
                                    return 0
                            else:
                                if 10 == uint8(var72004):
                                    if uint8(var72007) > 31:
                                        return 0
                                else:
                                    if 12 == uint8(var72004):
                                        if uint8(var72007) > 31:
                                            return 0
                                    else:
                                        if 4 == uint8(var72004):
                                            if uint8(var72007) > 30:
                                                return 0
                                        else:
                                            if 6 == uint8(var72004):
                                                if uint8(var72007) > 30:
                                                    return 0
                                            else:
                                                if 9 == uint8(var72004):
                                                    if uint8(var72007) > 30:
                                                        return 0
                                                else:
                                                    if 11 == uint8(var72004):
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
                if 1 == uint8(idx):
                    var72001 = not 1
                    var72003 = uint16(s)
                    var72004 = uint8(idx)
                    var72007 = var72007 + 1
                    var72009 = var72009 + (24 * 3600)
                    continue 
                var72001 = not 3
                var72003 = uint16(s)
                var72004 = uint8(idx)
                var72007 = var72007 + 1
                var72009 = var72009 + (24 * 3600)
                continue 
            if var78001:
                if uint8(var78007) > 31:
                    return 0
            else:
                if 5 == uint8(var78004):
                    if uint8(var78007) > 31:
                        return 0
                else:
                    if 7 == uint8(var78004):
                        if uint8(var78007) > 31:
                            return 0
                    else:
                        if 8 == uint8(var78004):
                            if uint8(var78007) > 31:
                                return 0
                        else:
                            if 10 == uint8(var78004):
                                if uint8(var78007) > 31:
                                    return 0
                            else:
                                if 12 == uint8(var78004):
                                    if uint8(var78007) > 31:
                                        return 0
                                else:
                                    if 4 == uint8(var78004):
                                        if uint8(var78007) > 30:
                                            return 0
                                    else:
                                        if 6 == uint8(var78004):
                                            if uint8(var78007) > 30:
                                                return 0
                                        else:
                                            if 9 == uint8(var78004):
                                                if uint8(var78007) > 30:
                                                    return 0
                                            else:
                                                if 11 == uint8(var78004):
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
            if 1 == uint8(idx):
                var78001 = not 1
                var78003 = uint16(s)
                var78004 = uint8(idx)
                var78007 = var78007 + 1
                var78009 = var78009 + (24 * 3600)
                continue 
            var77001 = not 1
            var77003 = uint16(s)
            var77004 = uint8(idx)
            var77007 = var78007 + 1
            var77009 = var78009 + (24 * 3600)
            continue 
        if t + (672 * 24 * 3600) <= arg1:
            t = 672 * 24 * 3600
            idx = idx + 1
            t = t + (672 * 24 * 3600)
            continue 
        mem[128] = uint8(idx)
        if 1 == uint8(var76002):
            if var73001:
                if uint8(var73007) > 31:
                    return 0
            else:
                if 5 == uint8(var73004):
                    if uint8(var73007) > 31:
                        return 0
                else:
                    if 7 == uint8(var73004):
                        if uint8(var73007) > 31:
                            return 0
                    else:
                        if 8 == uint8(var73004):
                            if uint8(var73007) > 31:
                                return 0
                        else:
                            if 10 == uint8(var73004):
                                if uint8(var73007) > 31:
                                    return 0
                            else:
                                if 12 == uint8(var73004):
                                    if uint8(var73007) > 31:
                                        return 0
                                else:
                                    if 4 == uint8(var73004):
                                        if uint8(var73007) > 30:
                                            return 0
                                    else:
                                        if 6 == uint8(var73004):
                                            if uint8(var73007) > 30:
                                                return 0
                                        else:
                                            if 9 == uint8(var73004):
                                                if uint8(var73007) > 30:
                                                    return 0
                                            else:
                                                if 11 == uint8(var73004):
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
            if 1 == uint8(idx):
                var73001 = not 1
                var73003 = uint16(s)
                var73004 = uint8(idx)
                var73007 = var73007 + 1
                var73009 = var73009 + (24 * 3600)
                continue 
            var73001 = not 3
            var73003 = uint16(s)
            var73004 = uint8(idx)
            var73007 = var73007 + 1
            var73009 = var73009 + (24 * 3600)
            continue 
        if var79001:
            if uint8(var79007) > 31:
                return 0
        else:
            if 5 == uint8(var79004):
                if uint8(var79007) > 31:
                    return 0
            else:
                if 7 == uint8(var79004):
                    if uint8(var79007) > 31:
                        return 0
                else:
                    if 8 == uint8(var79004):
                        if uint8(var79007) > 31:
                            return 0
                    else:
                        if 10 == uint8(var79004):
                            if uint8(var79007) > 31:
                                return 0
                        else:
                            if 12 == uint8(var79004):
                                if uint8(var79007) > 31:
                                    return 0
                            else:
                                if 4 == uint8(var79004):
                                    if uint8(var79007) > 30:
                                        return 0
                                else:
                                    if 6 == uint8(var79004):
                                        if uint8(var79007) > 30:
                                            return 0
                                    else:
                                        if 9 == uint8(var79004):
                                            if uint8(var79007) > 30:
                                                return 0
                                        else:
                                            if 11 == uint8(var79004):
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
        if 1 == uint8(idx):
            var79001 = not 1
            var79003 = uint16(s)
            var79004 = uint8(idx)
            var79007 = var79007 + 1
            var79009 = var79009 + (24 * 3600)
            continue 
        var78001 = not 1
        var78003 = uint16(s)
        var78004 = uint8(idx)
        var78007 = var79007 + 1
        var78009 = var79009 + (24 * 3600)
        continue 
    if 1 == uint8(var44002):
        if var41001:
            if uint8(var41007) > 31:
                return 0
        else:
            if 5 == uint8(var41004):
                if uint8(var41007) > 31:
                    return 0
            else:
                if 7 == uint8(var41004):
                    if uint8(var41007) > 31:
                        return 0
                else:
                    if 8 == uint8(var41004):
                        if uint8(var41007) > 31:
                            return 0
                    else:
                        if 10 == uint8(var41004):
                            if uint8(var41007) > 31:
                                return 0
                        else:
                            if 12 == uint8(var41004):
                                if uint8(var41007) > 31:
                                    return 0
                            else:
                                if 4 == uint8(var41004):
                                    if uint8(var41007) > 30:
                                        return 0
                                else:
                                    if 6 == uint8(var41004):
                                        if uint8(var41007) > 30:
                                            return 0
                                    else:
                                        if 9 == uint8(var41004):
                                            if uint8(var41007) > 30:
                                                return 0
                                        else:
                                            if 11 == uint8(var41004):
                                                if uint8(var41007) > 30:
                                                    return 0
                                            else:
                                                if var41003 % 4:
                                                    if uint8(var41007) > 28:
                                                        return 0
                                                else:
                                                    if uint16(uint16(var41003) % 100):
                                                        if uint8(var41007) > 29:
                                                            return 0
                                                    else:
                                                        if not uint16(uint16(var41003) % 400):
                                                            if uint8(var41007) > 29:
                                                                return 0
                                                        else:
                                                            if uint8(var41007) > 28:
                                                                return 0
        if var41009 + (24 * 3600) > arg1:
            return uint8(var41007)
        if 1 == mem[159 len 1]:
            var41001 = 1 == mem[159 len 1]
            var41003 = uint16(s)
            var41004 = mem[128]
            var41007 = var41007 + 1
            var41009 = var41009 + (24 * 3600)
            continue 
        var41001 = 3 == mem[159 len 1]
        var41003 = uint16(s)
        var41004 = mem[128]
        var41007 = var41007 + 1
        var41009 = var41009 + (24 * 3600)
        continue 
    if var47001:
        if uint8(var47007) > 31:
            return 0
    else:
        if 5 == uint8(var47004):
            if uint8(var47007) > 31:
                return 0
        else:
            if 7 == uint8(var47004):
                if uint8(var47007) > 31:
                    return 0
            else:
                if 8 == uint8(var47004):
                    if uint8(var47007) > 31:
                        return 0
                else:
                    if 10 == uint8(var47004):
                        if uint8(var47007) > 31:
                            return 0
                    else:
                        if 12 == uint8(var47004):
                            if uint8(var47007) > 31:
                                return 0
                        else:
                            if 4 == uint8(var47004):
                                if uint8(var47007) > 30:
                                    return 0
                            else:
                                if 6 == uint8(var47004):
                                    if uint8(var47007) > 30:
                                        return 0
                                else:
                                    if 9 == uint8(var47004):
                                        if uint8(var47007) > 30:
                                            return 0
                                    else:
                                        if 11 == uint8(var47004):
                                            if uint8(var47007) > 30:
                                                return 0
                                        else:
                                            if var47003 % 4:
                                                if uint8(var47007) > 28:
                                                    return 0
                                            else:
                                                if uint16(uint16(var47003) % 100):
                                                    if uint8(var47007) > 29:
                                                        return 0
                                                else:
                                                    if not uint16(uint16(var47003) % 400):
                                                        if uint8(var47007) > 29:
                                                            return 0
                                                    else:
                                                        if uint8(var47007) > 28:
                                                            return 0
    if var47009 + (24 * 3600) > arg1:
        return uint8(var47007)
    if 1 == mem[159 len 1]:
        var47001 = 1 == mem[159 len 1]
        var47003 = uint16(s)
        var47004 = mem[128]
        var47007 = var47007 + 1
        var47009 = var47009 + (24 * 3600)
        continue 
    var46001 = 1 == mem[159 len 1]
    var46003 = uint16(s)
    var46004 = mem[128]
    var46007 = var47007 + 1
    var46009 = var47009 + (24 * 3600)
    continue 
}



}
