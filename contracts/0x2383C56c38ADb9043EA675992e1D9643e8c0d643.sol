contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
array of uint256 name;
uint256 version;
uint256 stor4;
uint256 stor5;
address stor6;
array of struct events;
array of uint256 markets;
uint256 sub_8162486b;
uint256 totalEvents;

function name() {
    return name[0 len name.length]
}

function events(uint256 arg1) {
    mem[128] = events[arg1].field_0
    idx = 128
    s = 0
    while events[arg1].length + 96 > idx:
        mem[idx + 32] = events[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=events[arg1].length, data=mem[128 len events[arg1].length]), 
           events[arg1].field_256,
           events[arg1].field_512,
           events[arg1].field_768,
           events[arg1].field_1024,
           events[arg1].field_1280,
           events[arg1].field_1536,
           bool(events[arg1].field_1792),
           events[arg1].field_2048,
           events[arg1].field_2304,
           events[arg1].field_2560,
           events[arg1].field_2816,
           events[arg1].field_3072
}

function version() {
    return version
}

function paused() {
    return bool(uint8(stor0.field_160))
}

function sub_8162486b(?) {
    return sub_8162486b
}

function owner() {
    return owner
}

function markets(uint256 arg1) {
    return markets[arg1][0 len markets[arg1].length]
}

function sub_b560a4ac(?) {
    return events[arg2][14][address(arg1)].field_0
}

function totalEvents() {
    return totalEvents
}

function sub_f2d4b020(?) {
    return events[arg2][13][address(arg1)].field_0
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
}

function setInitialPrice(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    events[arg1].field_1280 = arg2
    return 1
}

function unpause() {
    require msg.sender == owner
    require uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 1
    emit Pause()
}

function sub_53c7f8e0(?) {
    require msg.sender == owner
    markets[stor9][] = Array(len=arg1.length, data=arg1[all])
    sub_8162486b++
    return 1
}

function sub_e651b778(?) {
    idx = 960
    s = 0
    while events[arg1].length + 928 > idx:
        mem[idx + 32] = events[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if block.timestamp >= events[arg1].field_768:
        return 0
    return 1
}

function sub_b05345e4(?) {
    if arg2 <= arg3:
        if not arg1:
            return 0
        require arg1
        require arg1 * 10^(arg3 - arg2) / arg1 == 10^(arg3 - arg2)
        return (arg1 * 10^(arg3 - arg2))
    require arg3 <= arg2
    require 10^(arg2 - arg3) > 0
    require 10^(arg2 - arg3)
    return (arg1 / 10^(arg2 - arg3))
}

function sub_f28784e5(?) {
    idx = 960
    s = 0
    while events[arg1].length + 928 > idx:
        mem[idx + 32] = events[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if block.timestamp <= events[arg1].field_1024:
        return 0
    if bool(events[arg1].field_1792) != 1:
        return 0
    return 1
}

function sub_5aaf9788(?) {
    require block.timestamp < events[arg1].field_768
    require events[arg1].field_2048 + arg2 >= events[arg1].field_2048
    events[arg1].field_2048 += arg2
    require events[arg1][13][address(msg.sender)].field_0 + arg2 >= events[arg1][13][address(msg.sender)].field_0
    events[arg1][13][address(msg.sender)].field_0 += arg2
    return 1
}

function sub_bc529119(?) {
    require block.timestamp < events[arg1].field_768
    require events[arg1].field_2304 + arg2 >= events[arg1].field_2304
    events[arg1].field_2304 += arg2
    require events[arg1][14][address(msg.sender)].field_0 + arg2 >= events[arg1][14][address(msg.sender)].field_0
    events[arg1][14][address(msg.sender)].field_0 += arg2
    return 1
}

function adminWithdraw() {
    require msg.sender == owner
    require ext_code.size(stor6)
    call stor6.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor6)
    call stor6.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function sub_5a37453d(?) {
    require msg.sender == owner
    events[stor10][].field_0 = Array(len=arg1.length, data=arg1[all])
    events[stor10].field_256 = arg2
    events[stor10].field_512 = arg3
    events[stor10].field_768 = arg4
    events[stor10].field_1024 = arg5
    events[stor10].field_1280 = 0
    events[stor10].field_1536 = 0
    events[stor10].field_1792 = 0
    events[stor10].field_2048 = 0
    events[stor10].field_2304 = 0
    events[stor10].field_2560 = 0
    events[stor10].field_2816 = 0
    events[stor10].field_3072 = arg6
    totalEvents++
    return 1
}

function sub_62e68550(?) {
    require block.timestamp > events[arg1].field_1024
    require bool(events[arg1].field_1792) == 1
    require events[arg1][14][address(msg.sender)].field_0 > 0
    if not events[arg1][14][address(msg.sender)].field_0:
        require stor4 > 0
        require stor4
        require 0 / stor4 <= 0 / stor4
    else:
        require events[arg1][14][address(msg.sender)].field_0
        require events[arg1][14][address(msg.sender)].field_0 * events[arg1].field_2816 / events[arg1][14][address(msg.sender)].field_0 == events[arg1].field_2816
        require stor4 > 0
        require stor4
        require events[arg1][14][address(msg.sender)].field_0 * events[arg1].field_2816 / stor4 <= events[arg1][14][address(msg.sender)].field_0 * events[arg1].field_2816 / stor4
    events[arg1][14][address(msg.sender)].field_0 = 0
    return 1
}

function sub_caacbb17(?) {
    require block.timestamp > events[arg1].field_1024
    require bool(events[arg1].field_1792) == 1
    require events[arg1][13][address(msg.sender)].field_0 > 0
    if not events[arg1][13][address(msg.sender)].field_0:
        require stor4 > 0
        require stor4
        require 0 / stor4 <= 0 / stor4
    else:
        require events[arg1][13][address(msg.sender)].field_0
        require events[arg1][13][address(msg.sender)].field_0 * events[arg1].field_2560 / events[arg1][13][address(msg.sender)].field_0 == events[arg1].field_2560
        require stor4 > 0
        require stor4
        require events[arg1][13][address(msg.sender)].field_0 * events[arg1].field_2560 / stor4 <= events[arg1][13][address(msg.sender)].field_0 * events[arg1].field_2560 / stor4
    events[arg1][13][address(msg.sender)].field_0 = 0
    return 1
}

function sub_169b405a(?) {
    require msg.sender == owner
    require block.timestamp > events[arg1].field_1024
    require not events[arg1].field_1792
    require events[arg1].field_1280 > 0
    if not events[arg1].field_2304:
        events[arg1].field_2560 = stor4
        events[arg1].field_2816 = stor4
        events[arg1].field_1536 = arg2
        events[arg1].field_1792 = 1
    else:
        if not events[arg1].field_2048:
            events[arg1].field_2560 = stor4
            events[arg1].field_2816 = stor4
            events[arg1].field_1536 = arg2
            events[arg1].field_1792 = 1
        else:
            if events[arg1].field_1280 == arg2:
                events[arg1].field_2560 = stor4
                events[arg1].field_2816 = stor4
                events[arg1].field_1536 = arg2
                events[arg1].field_1792 = 1
            else:
                if arg2 <= events[arg1].field_1280:
                    if not events[arg1].field_1280 - arg2:
                        require events[arg1].field_1280 > 0
                        require events[arg1].field_1280
                        if not 0 / events[arg1].field_1280:
                            if not stor4:
                                require events[arg1].field_2304 <= events[arg1].field_2304
                                if not events[arg1].field_2304:
                                    require 0 <= events[arg1].field_2304
                                    require events[arg1].field_2048 + events[arg1].field_2304 >= events[arg1].field_2048
                                    events[arg1].field_1792 = 1
                                    events[arg1].field_1536 = arg2
                                    if not events[arg1].field_2048 + events[arg1].field_2304:
                                        require events[arg1].field_2048 > 0
                                        require events[arg1].field_2048
                                        events[arg1].field_2560 = 0 / events[arg1].field_2048
                                    else:
                                        require events[arg1].field_2048 + events[arg1].field_2304
                                        require (events[arg1].field_2048 * stor4) + (events[arg1].field_2304 * stor4) / events[arg1].field_2048 + events[arg1].field_2304 == stor4
                                        require events[arg1].field_2048 > 0
                                        require events[arg1].field_2048
                                        events[arg1].field_2560 = (events[arg1].field_2048 * stor4) + (events[arg1].field_2304 * stor4) / events[arg1].field_2048
                                else:
                                    require events[arg1].field_2304
                                    require events[arg1].field_2304 * stor5 / events[arg1].field_2304 == stor5
                                    require events[arg1].field_2304 * stor5 / 1000 <= events[arg1].field_2304
                                    require events[arg1].field_2048 + events[arg1].field_2304 - (events[arg1].field_2304 * stor5 / 1000) >= events[arg1].field_2048
                                    events[arg1].field_1792 = 1
                                    events[arg1].field_1536 = arg2
                                    if not events[arg1].field_2048 + events[arg1].field_2304 - (events[arg1].field_2304 * stor5 / 1000):
                                        require events[arg1].field_2048 > 0
                                        require events[arg1].field_2048
                                        events[arg1].field_2560 = 0 / events[arg1].field_2048
                                    else:
                                        require events[arg1].field_2048 + events[arg1].field_2304 - (events[arg1].field_2304 * stor5 / 1000)
                                        require (events[arg1].field_2048 * stor4) + (events[arg1].field_2304 * stor4) - (events[arg1].field_2304 * stor5 / 1000 * stor4) / events[arg1].field_2048 + events[arg1].field_2304 - (events[arg1].field_2304 * stor5 / 1000) == stor4
                                        require events[arg1].field_2048 > 0
                                        require events[arg1].field_2048
                                        events[arg1].field_2560 = (events[arg1].field_2048 * stor4) + (events[arg1].field_2304 * stor4) - (events[arg1].field_2304 * stor5 / 1000 * stor4) / events[arg1].field_2048
                                require events[arg1].field_2304 > 0
                                require events[arg1].field_2304
                                events[arg1].field_2816 = 0 / events[arg1].field_2304
                            else:
                                require stor4
                                require 100 * stor4 / stor4 == 100
                                if 0 >= 100 * stor4:
                                    require events[arg1].field_2304 <= events[arg1].field_2304
                                    if not events[arg1].field_2304:
                                        require 0 <= events[arg1].field_2304
                                        require events[arg1].field_2048 + events[arg1].field_2304 >= events[arg1].field_2048
                                        events[arg1].field_1792 = 1
                                        events[arg1].field_1536 = arg2
                                        if not events[arg1].field_2048 + events[arg1].field_2304:
                                            require events[arg1].field_2048 > 0
                                            require events[arg1].field_2048
                                            events[arg1].field_2560 = 0 / events[arg1].field_2048
                                        else:
                                            require events[arg1].field_2048 + events[arg1].field_2304
                                            require (events[arg1].field_2048 * stor4) + (events[arg1].field_2304 * stor4) / events[arg1].field_2048 + events[arg1].field_2304 == stor4
                                            require events[arg1].field_2048 > 0
                                            require events[arg1].field_2048
                                            events[arg1].field_2560 = (events[arg1].field_2048 * stor4) + (events[arg1].field_2304 * stor4) / events[arg1].field_2048
                                    else:
                                        require events[arg1].field_2304
                                        require events[arg1].field_2304 * stor5 / events[arg1].field_2304 == stor5
                                        require events[arg1].field_2304 * stor5 / 1000 <= events[arg1].field_2304
                                        require events[arg1].field_2048 + events[arg1].field_2304 - (events[arg1].field_2304 * stor5 / 1000) >= events[arg1].field_2048
                                        events[arg1].field_1792 = 1
                                        events[arg1].field_1536 = arg2
                                        if not events[arg1].field_2048 + events[arg1].field_2304 - (events[arg1].field_2304 * stor5 / 1000):
                                            require events[arg1].field_2048 > 0
                                            require events[arg1].field_2048
                                            events[arg1].field_2560 = 0 / events[arg1].field_2048
                                        else:
                                            require events[arg1].field_2048 + events[arg1].field_2304 - (events[arg1].field_2304 * stor5 / 1000)
                                            require (events[arg1].field_2048 * stor4) + (events[arg1].field_2304 * stor4) - (events[arg1].field_2304 * stor5 / 1000 * stor4) / events[arg1].field_2048 + events[arg1].field_2304 - (events[arg1].field_2304 * stor5 / 1000) == stor4
                                            require events[arg1].field_2048 > 0
                                            require events[arg1].field_2048
                                            events[arg1].field_2560 = (events[arg1].field_2048 * stor4) + (events[arg1].field_2304 * stor4) - (events[arg1].field_2304 * stor5 / 1000 * stor4) / events[arg1].field_2048
                                    require events[arg1].field_2304 > 0
                                    require events[arg1].field_2304
                                    events[arg1].field_2816 = 0 / events[arg1].field_2304
                                else:
                                    if events[arg1].field_2304:
                                        require events[arg1].field_2304
                                        require not 0 / events[arg1].field_2304
                                    require stor4 > 0
                                    require stor4
                                    require 0 / stor4 <= events[arg1].field_2304
                                    if not 0 / stor4:
                                        require 0 <= 0 / stor4
                                        require events[arg1].field_2048 + (0 / stor4) >= events[arg1].field_2048
                                        events[arg1].field_1792 = 1
                                        events[arg1].field_1536 = arg2
                                        if not events[arg1].field_2048 + (0 / stor4):
                                            require events[arg1].field_2048 > 0
                                            require events[arg1].field_2048
                                            events[arg1].field_2560 = 0 / events[arg1].field_2048
                                        else:
                                            require events[arg1].field_2048 + (0 / stor4)
                                            require (events[arg1].field_2048 * stor4) + (0 / stor4 * stor4) / events[arg1].field_2048 + (0 / stor4) == stor4
                                            require events[arg1].field_2048 > 0
                                            require events[arg1].field_2048
                                            events[arg1].field_2560 = (events[arg1].field_2048 * stor4) + (0 / stor4 * stor4) / events[arg1].field_2048
                                    else:
                                        require 0 / stor4
                                        require 0 / stor4 * stor5 / 0 / stor4 == stor5
                                        require 0 / stor4 * stor5 / 1000 <= 0 / stor4
                                        require events[arg1].field_2048 + (0 / stor4) - (0 / stor4 * stor5 / 1000) >= events[arg1].field_2048
                                        events[arg1].field_1792 = 1
                                        events[arg1].field_1536 = arg2
                                        if not events[arg1].field_2048 + (0 / stor4) - (0 / stor4 * stor5 / 1000):
                                            require events[arg1].field_2048 > 0
                                            require events[arg1].field_2048
                                            events[arg1].field_2560 = 0 / events[arg1].field_2048
                                        else:
                                            require events[arg1].field_2048 + (0 / stor4) - (0 / stor4 * stor5 / 1000)
                                            require (events[arg1].field_2048 * stor4) + (0 / stor4 * stor4) - (0 / stor4 * stor5 / 1000 * stor4) / events[arg1].field_2048 + (0 / stor4) - (0 / stor4 * stor5 / 1000) == stor4
                                            require events[arg1].field_2048 > 0
                                            require events[arg1].field_2048
                                            events[arg1].field_2560 = (events[arg1].field_2048 * stor4) + (0 / stor4 * stor4) - (0 / stor4 * stor5 / 1000 * stor4) / events[arg1].field_2048
                                    if not events[arg1].field_2304 - (0 / stor4):
                                        require events[arg1].field_2304 > 0
                                        require events[arg1].field_2304
                                        events[arg1].field_2816 = 0 / events[arg1].field_2304
                                    else:
                                        require events[arg1].field_2304 - (0 / stor4)
                                        require (events[arg1].field_2304 * stor4) - (0 / stor4 * stor4) / events[arg1].field_2304 - (0 / stor4) == stor4
                                        require events[arg1].field_2304 > 0
                                        require events[arg1].field_2304
                                        events[arg1].field_2816 = (events[arg1].field_2304 * stor4) - (0 / stor4 * stor4) / events[arg1].field_2304
                        else:
                            require 0 / events[arg1].field_1280
                            require 0 / events[arg1].field_1280 * events[arg1].field_3072 / 0 / events[arg1].field_1280 == events[arg1].field_3072
                            if not stor4:
                                if 0 / events[arg1].field_1280 * events[arg1].field_3072 >= 0:
                                    require events[arg1].field_2304 <= events[arg1].field_2304
                                    if not events[arg1].field_2304:
                                        require 0 <= events[arg1].field_2304
                                        require events[arg1].field_2048 + events[arg1].field_2304 >= events[arg1].field_2048
                                        events[arg1].field_1792 = 1
                                        events[arg1].field_1536 = arg2
                                        if not events[arg1].field_2048 + events[arg1].field_2304:
                                            require events[arg1].field_2048 > 0
                                            require events[arg1].field_2048
                                            events[arg1].field_2560 = 0 / events[arg1].field_2048
                                        else:
                                            require events[arg1].field_2048 + events[arg1].field_2304
                                            require (events[arg1].field_2048 * stor4) + (events[arg1].field_2304 * stor4) / events[arg1].field_2048 + events[arg1].field_2304 == stor4
                                            require events[arg1].field_2048 > 0
                                            require events[arg1].field_2048
                                            events[arg1].field_2560 = (events[arg1].field_2048 * stor4) + (events[arg1].field_2304 * stor4) / events[arg1].field_2048
                                    else:
                                        require events[arg1].field_2304
                                        require events[arg1].field_2304 * stor5 / events[arg1].field_2304 == stor5
                                        require events[arg1].field_2304 * stor5 / 1000 <= events[arg1].field_2304
                                        require events[arg1].field_2048 + events[arg1].field_2304 - (events[arg1].field_2304 * stor5 / 1000) >= events[arg1].field_2048
                                        events[arg1].field_1792 = 1
                                        events[arg1].field_1536 = arg2
                                        if not events[arg1].field_2048 + events[arg1].field_2304 - (events[arg1].field_2304 * stor5 / 1000):
                                            require events[arg1].field_2048 > 0
                                            require events[arg1].field_2048
                                            events[arg1].field_2560 = 0 / events[arg1].field_2048
                                        else:
                                            require events[arg1].field_2048 + events[arg1].field_2304 - (events[arg1].field_2304 * stor5 / 1000)
                                            require (events[arg1].field_2048 * stor4) + (events[arg1].field_2304 * stor4) - (events[arg1].field_2304 * stor5 / 1000 * stor4) / events[arg1].field_2048 + events[arg1].field_2304 - (events[arg1].field_2304 * stor5 / 1000) == stor4
                                            require events[arg1].field_2048 > 0
                                            require events[arg1].field_2048
                                            events[arg1].field_2560 = (events[arg1].field_2048 * stor4) + (events[arg1].field_2304 * stor4) - (events[arg1].field_2304 * stor5 / 1000 * stor4) / events[arg1].field_2048
                                    require events[arg1].field_2304 > 0
                                    require events[arg1].field_2304
                                    events[arg1].field_2816 = 0 / events[arg1].field_2304
                                else:
                                    if not events[arg1].field_2304:
                                        require stor4 > 0
                                        require stor4
                                        require 0 / stor4 <= events[arg1].field_2304
                                        if not 0 / stor4:
                                            require 0 <= 0 / stor4
                                            require events[arg1].field_2048 + (0 / stor4) >= events[arg1].field_2048
                                            events[arg1].field_1792 = 1
                                            events[arg1].field_1536 = arg2
                                            if not events[arg1].field_2048 + (0 / stor4):
                                                require events[arg1].field_2048 > 0
                                                require events[arg1].field_2048
                                                events[arg1].field_2560 = 0 / events[arg1].field_2048
                                            else:
                                                require events[arg1].field_2048 + (0 / stor4)
                                                require (events[arg1].field_2048 * stor4) + (0 / stor4 * stor4) / events[arg1].field_2048 + (0 / stor4) == stor4
                                                require events[arg1].field_2048 > 0
                                                require events[arg1].field_2048
                                                events[arg1].field_2560 = (events[arg1].field_2048 * stor4) + (0 / stor4 * stor4) / events[arg1].field_2048
                                        else:
                                            require 0 / stor4
                                            require 0 / stor4 * stor5 / 0 / stor4 == stor5
                                            require 0 / stor4 * stor5 / 1000 <= 0 / stor4
                                            require events[arg1].field_2048 + (0 / stor4) - (0 / stor4 * stor5 / 1000) >= events[arg1].field_2048
                                            events[arg1].field_1792 = 1
                                            events[arg1].field_1536 = arg2
                                            if not events[arg1].field_2048 + (0 / stor4) - (0 / stor4 * stor5 / 1000):
                                                require events[arg1].field_2048 > 0
                                                require events[arg1].field_2048
                                                events[arg1].field_2560 = 0 / events[arg1].field_2048
                                            else:
                                                require events[arg1].field_2048 + (0 / stor4) - (0 / stor4 * stor5 / 1000)
                                                require (events[arg1].field_2048 * stor4) + (0 / stor4 * stor4) - (0 / stor4 * stor5 / 1000 * stor4) / events[arg1].field_2048 + (0 / stor4) - (0 / stor4 * stor5 / 1000) == stor4
                                                require events[arg1].field_2048 > 0
                                                require events[arg1].field_2048
                                                events[arg1].field_2560 = (events[arg1].field_2048 * stor4) + (0 / stor4 * stor4) - (0 / stor4 * stor5 / 1000 * stor4) / events[arg1].field_2048
                                        if not events[arg1].field_2304 - (0 / stor4):
                                            require events[arg1].field_2304 > 0
                                            require events[arg1].field_2304
                                            events[arg1].field_2816 = 0 / events[arg1].field_2304
                                        else:
                                            require events[arg1].field_2304 - (0 / stor4)
                                            require (events[arg1].field_2304 * stor4) - (0 / stor4 * stor4) / events[arg1].field_2304 - (0 / stor4) == stor4
                                            require events[arg1].field_2304 > 0
                                            require events[arg1].field_2304
                                            events[arg1].field_2816 = (events[arg1].field_2304 * stor4) - (0 / stor4 * stor4) / events[arg1].field_2304
                                    else:
                                        require events[arg1].field_2304
                                        require events[arg1].field_2304 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / events[arg1].field_2304 == 0 / events[arg1].field_1280 * events[arg1].field_3072
                                        require stor4 > 0
                                        require stor4
                                        require events[arg1].field_2304 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4 <= events[arg1].field_2304
                                        if not events[arg1].field_2304 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4:
                                            require 0 <= events[arg1].field_2304 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4
                                            require events[arg1].field_2048 + (events[arg1].field_2304 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4) >= events[arg1].field_2048
                                            events[arg1].field_1792 = 1
                                            events[arg1].field_1536 = arg2
                                            if not events[arg1].field_2048 + (events[arg1].field_2304 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4):
                                                require events[arg1].field_2048 > 0
                                                require events[arg1].field_2048
                                                events[arg1].field_2560 = 0 / events[arg1].field_2048
                                            else:
                                                require events[arg1].field_2048 + (events[arg1].field_2304 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4)
                                                require (events[arg1].field_2048 * stor4) + (events[arg1].field_2304 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor4) / events[arg1].field_2048 + (events[arg1].field_2304 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4) == stor4
                                                require events[arg1].field_2048 > 0
                                                require events[arg1].field_2048
                                                events[arg1].field_2560 = (events[arg1].field_2048 * stor4) + (events[arg1].field_2304 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor4) / events[arg1].field_2048
                                        else:
                                            require events[arg1].field_2304 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4
                                            require events[arg1].field_2304 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor5 / events[arg1].field_2304 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4 == stor5
                                            require events[arg1].field_2304 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor5 / 1000 <= events[arg1].field_2304 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4
                                            require events[arg1].field_2048 + (events[arg1].field_2304 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4) - (events[arg1].field_2304 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor5 / 1000) >= events[arg1].field_2048
                                            events[arg1].field_1792 = 1
                                            events[arg1].field_1536 = arg2
                                            if not events[arg1].field_2048 + (events[arg1].field_2304 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4) - (events[arg1].field_2304 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor5 / 1000):
                                                require events[arg1].field_2048 > 0
                                                require events[arg1].field_2048
                                                events[arg1].field_2560 = 0 / events[arg1].field_2048
                                            else:
                                                require events[arg1].field_2048 + (events[arg1].field_2304 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4) - (events[arg1].field_2304 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor5 / 1000)
                                                require (events[arg1].field_2048 * stor4) + (events[arg1].field_2304 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor4) - (events[arg1].field_2304 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor5 / 1000 * stor4) / events[arg1].field_2048 + (events[arg1].field_2304 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4) - (events[arg1].field_2304 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor5 / 1000) == stor4
                                                require events[arg1].field_2048 > 0
                                                require events[arg1].field_2048
                                                events[arg1].field_2560 = (events[arg1].field_2048 * stor4) + (events[arg1].field_2304 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor4) - (events[arg1].field_2304 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor5 / 1000 * stor4) / events[arg1].field_2048
                                        if not events[arg1].field_2304 - (events[arg1].field_2304 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4):
                                            require events[arg1].field_2304 > 0
                                            require events[arg1].field_2304
                                            events[arg1].field_2816 = 0 / events[arg1].field_2304
                                        else:
                                            require events[arg1].field_2304 - (events[arg1].field_2304 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4)
                                            require (events[arg1].field_2304 * stor4) - (events[arg1].field_2304 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor4) / events[arg1].field_2304 - (events[arg1].field_2304 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4) == stor4
                                            require events[arg1].field_2304 > 0
                                            require events[arg1].field_2304
                                            events[arg1].field_2816 = (events[arg1].field_2304 * stor4) - (events[arg1].field_2304 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor4) / events[arg1].field_2304
                            else:
                                require stor4
                                require 100 * stor4 / stor4 == 100
                                if 0 / events[arg1].field_1280 * events[arg1].field_3072 >= 100 * stor4:
                                    require events[arg1].field_2304 <= events[arg1].field_2304
                                    if not events[arg1].field_2304:
                                        require 0 <= events[arg1].field_2304
                                        require events[arg1].field_2048 + events[arg1].field_2304 >= events[arg1].field_2048
                                        events[arg1].field_1792 = 1
                                        events[arg1].field_1536 = arg2
                                        if not events[arg1].field_2048 + events[arg1].field_2304:
                                            require events[arg1].field_2048 > 0
                                            require events[arg1].field_2048
                                            events[arg1].field_2560 = 0 / events[arg1].field_2048
                                        else:
                                            require events[arg1].field_2048 + events[arg1].field_2304
                                            require (events[arg1].field_2048 * stor4) + (events[arg1].field_2304 * stor4) / events[arg1].field_2048 + events[arg1].field_2304 == stor4
                                            require events[arg1].field_2048 > 0
                                            require events[arg1].field_2048
                                            events[arg1].field_2560 = (events[arg1].field_2048 * stor4) + (events[arg1].field_2304 * stor4) / events[arg1].field_2048
                                    else:
                                        require events[arg1].field_2304
                                        require events[arg1].field_2304 * stor5 / events[arg1].field_2304 == stor5
                                        require events[arg1].field_2304 * stor5 / 1000 <= events[arg1].field_2304
                                        require events[arg1].field_2048 + events[arg1].field_2304 - (events[arg1].field_2304 * stor5 / 1000) >= events[arg1].field_2048
                                        events[arg1].field_1792 = 1
                                        events[arg1].field_1536 = arg2
                                        if not events[arg1].field_2048 + events[arg1].field_2304 - (events[arg1].field_2304 * stor5 / 1000):
                                            require events[arg1].field_2048 > 0
                                            require events[arg1].field_2048
                                            events[arg1].field_2560 = 0 / events[arg1].field_2048
                                        else:
                                            require events[arg1].field_2048 + events[arg1].field_2304 - (events[arg1].field_2304 * stor5 / 1000)
                                            require (events[arg1].field_2048 * stor4) + (events[arg1].field_2304 * stor4) - (events[arg1].field_2304 * stor5 / 1000 * stor4) / events[arg1].field_2048 + events[arg1].field_2304 - (events[arg1].field_2304 * stor5 / 1000) == stor4
                                            require events[arg1].field_2048 > 0
                                            require events[arg1].field_2048
                                            events[arg1].field_2560 = (events[arg1].field_2048 * stor4) + (events[arg1].field_2304 * stor4) - (events[arg1].field_2304 * stor5 / 1000 * stor4) / events[arg1].field_2048
                                    require events[arg1].field_2304 > 0
                                    require events[arg1].field_2304
                                    events[arg1].field_2816 = 0 / events[arg1].field_2304
                                else:
                                    if not events[arg1].field_2304:
                                        require stor4 > 0
                                        require stor4
                                        require 0 / stor4 <= events[arg1].field_2304
                                        if not 0 / stor4:
                                            require 0 <= 0 / stor4
                                            require events[arg1].field_2048 + (0 / stor4) >= events[arg1].field_2048
                                            events[arg1].field_1792 = 1
                                            events[arg1].field_1536 = arg2
                                            if not events[arg1].field_2048 + (0 / stor4):
                                                require events[arg1].field_2048 > 0
                                                require events[arg1].field_2048
                                                events[arg1].field_2560 = 0 / events[arg1].field_2048
                                            else:
                                                require events[arg1].field_2048 + (0 / stor4)
                                                require (events[arg1].field_2048 * stor4) + (0 / stor4 * stor4) / events[arg1].field_2048 + (0 / stor4) == stor4
                                                require events[arg1].field_2048 > 0
                                                require events[arg1].field_2048
                                                events[arg1].field_2560 = (events[arg1].field_2048 * stor4) + (0 / stor4 * stor4) / events[arg1].field_2048
                                        else:
                                            require 0 / stor4
                                            require 0 / stor4 * stor5 / 0 / stor4 == stor5
                                            require 0 / stor4 * stor5 / 1000 <= 0 / stor4
                                            require events[arg1].field_2048 + (0 / stor4) - (0 / stor4 * stor5 / 1000) >= events[arg1].field_2048
                                            events[arg1].field_1792 = 1
                                            events[arg1].field_1536 = arg2
                                            if not events[arg1].field_2048 + (0 / stor4) - (0 / stor4 * stor5 / 1000):
                                                require events[arg1].field_2048 > 0
                                                require events[arg1].field_2048
                                                events[arg1].field_2560 = 0 / events[arg1].field_2048
                                            else:
                                                require events[arg1].field_2048 + (0 / stor4) - (0 / stor4 * stor5 / 1000)
                                                require (events[arg1].field_2048 * stor4) + (0 / stor4 * stor4) - (0 / stor4 * stor5 / 1000 * stor4) / events[arg1].field_2048 + (0 / stor4) - (0 / stor4 * stor5 / 1000) == stor4
                                                require events[arg1].field_2048 > 0
                                                require events[arg1].field_2048
                                                events[arg1].field_2560 = (events[arg1].field_2048 * stor4) + (0 / stor4 * stor4) - (0 / stor4 * stor5 / 1000 * stor4) / events[arg1].field_2048
                                        if not events[arg1].field_2304 - (0 / stor4):
                                            require events[arg1].field_2304 > 0
                                            require events[arg1].field_2304
                                            events[arg1].field_2816 = 0 / events[arg1].field_2304
                                        else:
                                            require events[arg1].field_2304 - (0 / stor4)
                                            require (events[arg1].field_2304 * stor4) - (0 / stor4 * stor4) / events[arg1].field_2304 - (0 / stor4) == stor4
                                            require events[arg1].field_2304 > 0
                                            require events[arg1].field_2304
                                            events[arg1].field_2816 = (events[arg1].field_2304 * stor4) - (0 / stor4 * stor4) / events[arg1].field_2304
                                    else:
                                        require events[arg1].field_2304
                                        require events[arg1].field_2304 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / events[arg1].field_2304 == 0 / events[arg1].field_1280 * events[arg1].field_3072
                                        require stor4 > 0
                                        require stor4
                                        require events[arg1].field_2304 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4 <= events[arg1].field_2304
                                        if not events[arg1].field_2304 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4:
                                            require 0 <= events[arg1].field_2304 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4
                                            require events[arg1].field_2048 + (events[arg1].field_2304 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4) >= events[arg1].field_2048
                                            events[arg1].field_1792 = 1
                                            events[arg1].field_1536 = arg2
                                            if not events[arg1].field_2048 + (events[arg1].field_2304 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4):
                                                require events[arg1].field_2048 > 0
                                                require events[arg1].field_2048
                                                events[arg1].field_2560 = 0 / events[arg1].field_2048
                                            else:
                                                require events[arg1].field_2048 + (events[arg1].field_2304 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4)
                                                require (events[arg1].field_2048 * stor4) + (events[arg1].field_2304 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor4) / events[arg1].field_2048 + (events[arg1].field_2304 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4) == stor4
                                                require events[arg1].field_2048 > 0
                                                require events[arg1].field_2048
                                                events[arg1].field_2560 = (events[arg1].field_2048 * stor4) + (events[arg1].field_2304 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor4) / events[arg1].field_2048
                                        else:
                                            require events[arg1].field_2304 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4
                                            require events[arg1].field_2304 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor5 / events[arg1].field_2304 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4 == stor5
                                            require events[arg1].field_2304 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor5 / 1000 <= events[arg1].field_2304 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4
                                            require events[arg1].field_2048 + (events[arg1].field_2304 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4) - (events[arg1].field_2304 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor5 / 1000) >= events[arg1].field_2048
                                            events[arg1].field_1792 = 1
                                            events[arg1].field_1536 = arg2
                                            if not events[arg1].field_2048 + (events[arg1].field_2304 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4) - (events[arg1].field_2304 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor5 / 1000):
                                                require events[arg1].field_2048 > 0
                                                require events[arg1].field_2048
                                                events[arg1].field_2560 = 0 / events[arg1].field_2048
                                            else:
                                                require events[arg1].field_2048 + (events[arg1].field_2304 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4) - (events[arg1].field_2304 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor5 / 1000)
                                                require (events[arg1].field_2048 * stor4) + (events[arg1].field_2304 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor4) - (events[arg1].field_2304 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor5 / 1000 * stor4) / events[arg1].field_2048 + (events[arg1].field_2304 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4) - (events[arg1].field_2304 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor5 / 1000) == stor4
                                                require events[arg1].field_2048 > 0
                                                require events[arg1].field_2048
                                                events[arg1].field_2560 = (events[arg1].field_2048 * stor4) + (events[arg1].field_2304 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor4) - (events[arg1].field_2304 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor5 / 1000 * stor4) / events[arg1].field_2048
                                        if not events[arg1].field_2304 - (events[arg1].field_2304 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4):
                                            require events[arg1].field_2304 > 0
                                            require events[arg1].field_2304
                                            events[arg1].field_2816 = 0 / events[arg1].field_2304
                                        else:
                                            require events[arg1].field_2304 - (events[arg1].field_2304 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4)
                                            require (events[arg1].field_2304 * stor4) - (events[arg1].field_2304 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor4) / events[arg1].field_2304 - (events[arg1].field_2304 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4) == stor4
                                            require events[arg1].field_2304 > 0
                                            require events[arg1].field_2304
                                            events[arg1].field_2816 = (events[arg1].field_2304 * stor4) - (events[arg1].field_2304 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor4) / events[arg1].field_2304
                    else:
                        require events[arg1].field_1280 - arg2
                        require (events[arg1].field_1280 * stor4) - (arg2 * stor4) / events[arg1].field_1280 - arg2 == stor4
                        require events[arg1].field_1280 > 0
                        require events[arg1].field_1280
                        if not (events[arg1].field_1280 * stor4) - (arg2 * stor4) / events[arg1].field_1280:
                            if not stor4:
                                require events[arg1].field_2304 <= events[arg1].field_2304
                                if not events[arg1].field_2304:
                                    require 0 <= events[arg1].field_2304
                                    require events[arg1].field_2048 + events[arg1].field_2304 >= events[arg1].field_2048
                                    events[arg1].field_1792 = 1
                                    events[arg1].field_1536 = arg2
                                    if not events[arg1].field_2048 + events[arg1].field_2304:
                                        require events[arg1].field_2048 > 0
                                        require events[arg1].field_2048
                                        events[arg1].field_2560 = 0 / events[arg1].field_2048
                                    else:
                                        require events[arg1].field_2048 + events[arg1].field_2304
                                        require (events[arg1].field_2048 * stor4) + (events[arg1].field_2304 * stor4) / events[arg1].field_2048 + events[arg1].field_2304 == stor4
                                        require events[arg1].field_2048 > 0
                                        require events[arg1].field_2048
                                        events[arg1].field_2560 = (events[arg1].field_2048 * stor4) + (events[arg1].field_2304 * stor4) / events[arg1].field_2048
                                else:
                                    require events[arg1].field_2304
                                    require events[arg1].field_2304 * stor5 / events[arg1].field_2304 == stor5
                                    require events[arg1].field_2304 * stor5 / 1000 <= events[arg1].field_2304
                                    require events[arg1].field_2048 + events[arg1].field_2304 - (events[arg1].field_2304 * stor5 / 1000) >= events[arg1].field_2048
                                    events[arg1].field_1792 = 1
                                    events[arg1].field_1536 = arg2
                                    if not events[arg1].field_2048 + events[arg1].field_2304 - (events[arg1].field_2304 * stor5 / 1000):
                                        require events[arg1].field_2048 > 0
                                        require events[arg1].field_2048
                                        events[arg1].field_2560 = 0 / events[arg1].field_2048
                                    else:
                                        require events[arg1].field_2048 + events[arg1].field_2304 - (events[arg1].field_2304 * stor5 / 1000)
                                        require (events[arg1].field_2048 * stor4) + (events[arg1].field_2304 * stor4) - (events[arg1].field_2304 * stor5 / 1000 * stor4) / events[arg1].field_2048 + events[arg1].field_2304 - (events[arg1].field_2304 * stor5 / 1000) == stor4
                                        require events[arg1].field_2048 > 0
                                        require events[arg1].field_2048
                                        events[arg1].field_2560 = (events[arg1].field_2048 * stor4) + (events[arg1].field_2304 * stor4) - (events[arg1].field_2304 * stor5 / 1000 * stor4) / events[arg1].field_2048
                                require events[arg1].field_2304 > 0
                                require events[arg1].field_2304
                                events[arg1].field_2816 = 0 / events[arg1].field_2304
                            else:
                                require stor4
                                require 100 * stor4 / stor4 == 100
                                if 0 >= 100 * stor4:
                                    require events[arg1].field_2304 <= events[arg1].field_2304
                                    if not events[arg1].field_2304:
                                        require 0 <= events[arg1].field_2304
                                        require events[arg1].field_2048 + events[arg1].field_2304 >= events[arg1].field_2048
                                        events[arg1].field_1792 = 1
                                        events[arg1].field_1536 = arg2
                                        if not events[arg1].field_2048 + events[arg1].field_2304:
                                            require events[arg1].field_2048 > 0
                                            require events[arg1].field_2048
                                            events[arg1].field_2560 = 0 / events[arg1].field_2048
                                        else:
                                            require events[arg1].field_2048 + events[arg1].field_2304
                                            require (events[arg1].field_2048 * stor4) + (events[arg1].field_2304 * stor4) / events[arg1].field_2048 + events[arg1].field_2304 == stor4
                                            require events[arg1].field_2048 > 0
                                            require events[arg1].field_2048
                                            events[arg1].field_2560 = (events[arg1].field_2048 * stor4) + (events[arg1].field_2304 * stor4) / events[arg1].field_2048
                                    else:
                                        require events[arg1].field_2304
                                        require events[arg1].field_2304 * stor5 / events[arg1].field_2304 == stor5
                                        require events[arg1].field_2304 * stor5 / 1000 <= events[arg1].field_2304
                                        require events[arg1].field_2048 + events[arg1].field_2304 - (events[arg1].field_2304 * stor5 / 1000) >= events[arg1].field_2048
                                        events[arg1].field_1792 = 1
                                        events[arg1].field_1536 = arg2
                                        if not events[arg1].field_2048 + events[arg1].field_2304 - (events[arg1].field_2304 * stor5 / 1000):
                                            require events[arg1].field_2048 > 0
                                            require events[arg1].field_2048
                                            events[arg1].field_2560 = 0 / events[arg1].field_2048
                                        else:
                                            require events[arg1].field_2048 + events[arg1].field_2304 - (events[arg1].field_2304 * stor5 / 1000)
                                            require (events[arg1].field_2048 * stor4) + (events[arg1].field_2304 * stor4) - (events[arg1].field_2304 * stor5 / 1000 * stor4) / events[arg1].field_2048 + events[arg1].field_2304 - (events[arg1].field_2304 * stor5 / 1000) == stor4
                                            require events[arg1].field_2048 > 0
                                            require events[arg1].field_2048
                                            events[arg1].field_2560 = (events[arg1].field_2048 * stor4) + (events[arg1].field_2304 * stor4) - (events[arg1].field_2304 * stor5 / 1000 * stor4) / events[arg1].field_2048
                                    require events[arg1].field_2304 > 0
                                    require events[arg1].field_2304
                                    events[arg1].field_2816 = 0 / events[arg1].field_2304
                                else:
                                    if events[arg1].field_2304:
                                        require events[arg1].field_2304
                                        require not 0 / events[arg1].field_2304
                                    require stor4 > 0
                                    require stor4
                                    require 0 / stor4 <= events[arg1].field_2304
                                    if not 0 / stor4:
                                        require 0 <= 0 / stor4
                                        require events[arg1].field_2048 + (0 / stor4) >= events[arg1].field_2048
                                        events[arg1].field_1792 = 1
                                        events[arg1].field_1536 = arg2
                                        if not events[arg1].field_2048 + (0 / stor4):
                                            require events[arg1].field_2048 > 0
                                            require events[arg1].field_2048
                                            events[arg1].field_2560 = 0 / events[arg1].field_2048
                                        else:
                                            require events[arg1].field_2048 + (0 / stor4)
                                            require (events[arg1].field_2048 * stor4) + (0 / stor4 * stor4) / events[arg1].field_2048 + (0 / stor4) == stor4
                                            require events[arg1].field_2048 > 0
                                            require events[arg1].field_2048
                                            events[arg1].field_2560 = (events[arg1].field_2048 * stor4) + (0 / stor4 * stor4) / events[arg1].field_2048
                                    else:
                                        require 0 / stor4
                                        require 0 / stor4 * stor5 / 0 / stor4 == stor5
                                        require 0 / stor4 * stor5 / 1000 <= 0 / stor4
                                        require events[arg1].field_2048 + (0 / stor4) - (0 / stor4 * stor5 / 1000) >= events[arg1].field_2048
                                        events[arg1].field_1792 = 1
                                        events[arg1].field_1536 = arg2
                                        if not events[arg1].field_2048 + (0 / stor4) - (0 / stor4 * stor5 / 1000):
                                            require events[arg1].field_2048 > 0
                                            require events[arg1].field_2048
                                            events[arg1].field_2560 = 0 / events[arg1].field_2048
                                        else:
                                            require events[arg1].field_2048 + (0 / stor4) - (0 / stor4 * stor5 / 1000)
                                            require (events[arg1].field_2048 * stor4) + (0 / stor4 * stor4) - (0 / stor4 * stor5 / 1000 * stor4) / events[arg1].field_2048 + (0 / stor4) - (0 / stor4 * stor5 / 1000) == stor4
                                            require events[arg1].field_2048 > 0
                                            require events[arg1].field_2048
                                            events[arg1].field_2560 = (events[arg1].field_2048 * stor4) + (0 / stor4 * stor4) - (0 / stor4 * stor5 / 1000 * stor4) / events[arg1].field_2048
                                    if not events[arg1].field_2304 - (0 / stor4):
                                        require events[arg1].field_2304 > 0
                                        require events[arg1].field_2304
                                        events[arg1].field_2816 = 0 / events[arg1].field_2304
                                    else:
                                        require events[arg1].field_2304 - (0 / stor4)
                                        require (events[arg1].field_2304 * stor4) - (0 / stor4 * stor4) / events[arg1].field_2304 - (0 / stor4) == stor4
                                        require events[arg1].field_2304 > 0
                                        require events[arg1].field_2304
                                        events[arg1].field_2816 = (events[arg1].field_2304 * stor4) - (0 / stor4 * stor4) / events[arg1].field_2304
                        else:
                            require (events[arg1].field_1280 * stor4) - (arg2 * stor4) / events[arg1].field_1280
                            require (events[arg1].field_1280 * stor4) - (arg2 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / (events[arg1].field_1280 * stor4) - (arg2 * stor4) / events[arg1].field_1280 == events[arg1].field_3072
                            if not stor4:
                                if (events[arg1].field_1280 * stor4) - (arg2 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 >= 0:
                                    require events[arg1].field_2304 <= events[arg1].field_2304
                                    if not events[arg1].field_2304:
                                        require 0 <= events[arg1].field_2304
                                        require events[arg1].field_2048 + events[arg1].field_2304 >= events[arg1].field_2048
                                        events[arg1].field_1792 = 1
                                        events[arg1].field_1536 = arg2
                                        if not events[arg1].field_2048 + events[arg1].field_2304:
                                            require events[arg1].field_2048 > 0
                                            require events[arg1].field_2048
                                            events[arg1].field_2560 = 0 / events[arg1].field_2048
                                        else:
                                            require events[arg1].field_2048 + events[arg1].field_2304
                                            require (events[arg1].field_2048 * stor4) + (events[arg1].field_2304 * stor4) / events[arg1].field_2048 + events[arg1].field_2304 == stor4
                                            require events[arg1].field_2048 > 0
                                            require events[arg1].field_2048
                                            events[arg1].field_2560 = (events[arg1].field_2048 * stor4) + (events[arg1].field_2304 * stor4) / events[arg1].field_2048
                                    else:
                                        require events[arg1].field_2304
                                        require events[arg1].field_2304 * stor5 / events[arg1].field_2304 == stor5
                                        require events[arg1].field_2304 * stor5 / 1000 <= events[arg1].field_2304
                                        require events[arg1].field_2048 + events[arg1].field_2304 - (events[arg1].field_2304 * stor5 / 1000) >= events[arg1].field_2048
                                        events[arg1].field_1792 = 1
                                        events[arg1].field_1536 = arg2
                                        if not events[arg1].field_2048 + events[arg1].field_2304 - (events[arg1].field_2304 * stor5 / 1000):
                                            require events[arg1].field_2048 > 0
                                            require events[arg1].field_2048
                                            events[arg1].field_2560 = 0 / events[arg1].field_2048
                                        else:
                                            require events[arg1].field_2048 + events[arg1].field_2304 - (events[arg1].field_2304 * stor5 / 1000)
                                            require (events[arg1].field_2048 * stor4) + (events[arg1].field_2304 * stor4) - (events[arg1].field_2304 * stor5 / 1000 * stor4) / events[arg1].field_2048 + events[arg1].field_2304 - (events[arg1].field_2304 * stor5 / 1000) == stor4
                                            require events[arg1].field_2048 > 0
                                            require events[arg1].field_2048
                                            events[arg1].field_2560 = (events[arg1].field_2048 * stor4) + (events[arg1].field_2304 * stor4) - (events[arg1].field_2304 * stor5 / 1000 * stor4) / events[arg1].field_2048
                                    require events[arg1].field_2304 > 0
                                    require events[arg1].field_2304
                                    events[arg1].field_2816 = 0 / events[arg1].field_2304
                                else:
                                    if not events[arg1].field_2304:
                                        require stor4 > 0
                                        require stor4
                                        require 0 / stor4 <= events[arg1].field_2304
                                        if not 0 / stor4:
                                            require 0 <= 0 / stor4
                                            require events[arg1].field_2048 + (0 / stor4) >= events[arg1].field_2048
                                            events[arg1].field_1792 = 1
                                            events[arg1].field_1536 = arg2
                                            if not events[arg1].field_2048 + (0 / stor4):
                                                require events[arg1].field_2048 > 0
                                                require events[arg1].field_2048
                                                events[arg1].field_2560 = 0 / events[arg1].field_2048
                                            else:
                                                require events[arg1].field_2048 + (0 / stor4)
                                                require (events[arg1].field_2048 * stor4) + (0 / stor4 * stor4) / events[arg1].field_2048 + (0 / stor4) == stor4
                                                require events[arg1].field_2048 > 0
                                                require events[arg1].field_2048
                                                events[arg1].field_2560 = (events[arg1].field_2048 * stor4) + (0 / stor4 * stor4) / events[arg1].field_2048
                                        else:
                                            require 0 / stor4
                                            require 0 / stor4 * stor5 / 0 / stor4 == stor5
                                            require 0 / stor4 * stor5 / 1000 <= 0 / stor4
                                            require events[arg1].field_2048 + (0 / stor4) - (0 / stor4 * stor5 / 1000) >= events[arg1].field_2048
                                            events[arg1].field_1792 = 1
                                            events[arg1].field_1536 = arg2
                                            if not events[arg1].field_2048 + (0 / stor4) - (0 / stor4 * stor5 / 1000):
                                                require events[arg1].field_2048 > 0
                                                require events[arg1].field_2048
                                                events[arg1].field_2560 = 0 / events[arg1].field_2048
                                            else:
                                                require events[arg1].field_2048 + (0 / stor4) - (0 / stor4 * stor5 / 1000)
                                                require (events[arg1].field_2048 * stor4) + (0 / stor4 * stor4) - (0 / stor4 * stor5 / 1000 * stor4) / events[arg1].field_2048 + (0 / stor4) - (0 / stor4 * stor5 / 1000) == stor4
                                                require events[arg1].field_2048 > 0
                                                require events[arg1].field_2048
                                                events[arg1].field_2560 = (events[arg1].field_2048 * stor4) + (0 / stor4 * stor4) - (0 / stor4 * stor5 / 1000 * stor4) / events[arg1].field_2048
                                        if not events[arg1].field_2304 - (0 / stor4):
                                            require events[arg1].field_2304 > 0
                                            require events[arg1].field_2304
                                            events[arg1].field_2816 = 0 / events[arg1].field_2304
                                        else:
                                            require events[arg1].field_2304 - (0 / stor4)
                                            require (events[arg1].field_2304 * stor4) - (0 / stor4 * stor4) / events[arg1].field_2304 - (0 / stor4) == stor4
                                            require events[arg1].field_2304 > 0
                                            require events[arg1].field_2304
                                            events[arg1].field_2816 = (events[arg1].field_2304 * stor4) - (0 / stor4 * stor4) / events[arg1].field_2304
                                    else:
                                        require events[arg1].field_2304
                                        require events[arg1].field_2304 * (events[arg1].field_1280 * stor4) - (arg2 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / events[arg1].field_2304 == (events[arg1].field_1280 * stor4) - (arg2 * stor4) / events[arg1].field_1280 * events[arg1].field_3072
                                        require stor4 > 0
                                        require stor4
                                        require events[arg1].field_2304 * (events[arg1].field_1280 * stor4) - (arg2 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4 <= events[arg1].field_2304
                                        if not events[arg1].field_2304 * (events[arg1].field_1280 * stor4) - (arg2 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4:
                                            require 0 <= events[arg1].field_2304 * (events[arg1].field_1280 * stor4) - (arg2 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4
                                            require events[arg1].field_2048 + (events[arg1].field_2304 * (events[arg1].field_1280 * stor4) - (arg2 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4) >= events[arg1].field_2048
                                            events[arg1].field_1792 = 1
                                            events[arg1].field_1536 = arg2
                                            if not events[arg1].field_2048 + (events[arg1].field_2304 * (events[arg1].field_1280 * stor4) - (arg2 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4):
                                                require events[arg1].field_2048 > 0
                                                require events[arg1].field_2048
                                                events[arg1].field_2560 = 0 / events[arg1].field_2048
                                            else:
                                                require events[arg1].field_2048 + (events[arg1].field_2304 * (events[arg1].field_1280 * stor4) - (arg2 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4)
                                                require (events[arg1].field_2048 * stor4) + (events[arg1].field_2304 * (events[arg1].field_1280 * stor4) - (arg2 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor4) / events[arg1].field_2048 + (events[arg1].field_2304 * (events[arg1].field_1280 * stor4) - (arg2 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4) == stor4
                                                require events[arg1].field_2048 > 0
                                                require events[arg1].field_2048
                                                events[arg1].field_2560 = (events[arg1].field_2048 * stor4) + (events[arg1].field_2304 * (events[arg1].field_1280 * stor4) - (arg2 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor4) / events[arg1].field_2048
                                        else:
                                            require events[arg1].field_2304 * (events[arg1].field_1280 * stor4) - (arg2 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4
                                            require events[arg1].field_2304 * (events[arg1].field_1280 * stor4) - (arg2 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor5 / events[arg1].field_2304 * (events[arg1].field_1280 * stor4) - (arg2 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4 == stor5
                                            require events[arg1].field_2304 * (events[arg1].field_1280 * stor4) - (arg2 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor5 / 1000 <= events[arg1].field_2304 * (events[arg1].field_1280 * stor4) - (arg2 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4
                                            require events[arg1].field_2048 + (events[arg1].field_2304 * (events[arg1].field_1280 * stor4) - (arg2 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4) - (events[arg1].field_2304 * (events[arg1].field_1280 * stor4) - (arg2 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor5 / 1000) >= events[arg1].field_2048
                                            events[arg1].field_1792 = 1
                                            events[arg1].field_1536 = arg2
                                            if not events[arg1].field_2048 + (events[arg1].field_2304 * (events[arg1].field_1280 * stor4) - (arg2 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4) - (events[arg1].field_2304 * (events[arg1].field_1280 * stor4) - (arg2 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor5 / 1000):
                                                require events[arg1].field_2048 > 0
                                                require events[arg1].field_2048
                                                events[arg1].field_2560 = 0 / events[arg1].field_2048
                                            else:
                                                require events[arg1].field_2048 + (events[arg1].field_2304 * (events[arg1].field_1280 * stor4) - (arg2 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4) - (events[arg1].field_2304 * (events[arg1].field_1280 * stor4) - (arg2 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor5 / 1000)
                                                require (events[arg1].field_2048 * stor4) + (events[arg1].field_2304 * (events[arg1].field_1280 * stor4) - (arg2 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor4) - (events[arg1].field_2304 * (events[arg1].field_1280 * stor4) - (arg2 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor5 / 1000 * stor4) / events[arg1].field_2048 + (events[arg1].field_2304 * (events[arg1].field_1280 * stor4) - (arg2 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4) - (events[arg1].field_2304 * (events[arg1].field_1280 * stor4) - (arg2 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor5 / 1000) == stor4
                                                require events[arg1].field_2048 > 0
                                                require events[arg1].field_2048
                                                events[arg1].field_2560 = (events[arg1].field_2048 * stor4) + (events[arg1].field_2304 * (events[arg1].field_1280 * stor4) - (arg2 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor4) - (events[arg1].field_2304 * (events[arg1].field_1280 * stor4) - (arg2 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor5 / 1000 * stor4) / events[arg1].field_2048
                                        if not events[arg1].field_2304 - (events[arg1].field_2304 * (events[arg1].field_1280 * stor4) - (arg2 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4):
                                            require events[arg1].field_2304 > 0
                                            require events[arg1].field_2304
                                            events[arg1].field_2816 = 0 / events[arg1].field_2304
                                        else:
                                            require events[arg1].field_2304 - (events[arg1].field_2304 * (events[arg1].field_1280 * stor4) - (arg2 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4)
                                            require (events[arg1].field_2304 * stor4) - (events[arg1].field_2304 * (events[arg1].field_1280 * stor4) - (arg2 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor4) / events[arg1].field_2304 - (events[arg1].field_2304 * (events[arg1].field_1280 * stor4) - (arg2 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4) == stor4
                                            require events[arg1].field_2304 > 0
                                            require events[arg1].field_2304
                                            events[arg1].field_2816 = (events[arg1].field_2304 * stor4) - (events[arg1].field_2304 * (events[arg1].field_1280 * stor4) - (arg2 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor4) / events[arg1].field_2304
                            else:
                                require stor4
                                require 100 * stor4 / stor4 == 100
                                if (events[arg1].field_1280 * stor4) - (arg2 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 >= 100 * stor4:
                                    require events[arg1].field_2304 <= events[arg1].field_2304
                                    if not events[arg1].field_2304:
                                        require 0 <= events[arg1].field_2304
                                        require events[arg1].field_2048 + events[arg1].field_2304 >= events[arg1].field_2048
                                        events[arg1].field_1792 = 1
                                        events[arg1].field_1536 = arg2
                                        if not events[arg1].field_2048 + events[arg1].field_2304:
                                            require events[arg1].field_2048 > 0
                                            require events[arg1].field_2048
                                            events[arg1].field_2560 = 0 / events[arg1].field_2048
                                        else:
                                            require events[arg1].field_2048 + events[arg1].field_2304
                                            require (events[arg1].field_2048 * stor4) + (events[arg1].field_2304 * stor4) / events[arg1].field_2048 + events[arg1].field_2304 == stor4
                                            require events[arg1].field_2048 > 0
                                            require events[arg1].field_2048
                                            events[arg1].field_2560 = (events[arg1].field_2048 * stor4) + (events[arg1].field_2304 * stor4) / events[arg1].field_2048
                                    else:
                                        require events[arg1].field_2304
                                        require events[arg1].field_2304 * stor5 / events[arg1].field_2304 == stor5
                                        require events[arg1].field_2304 * stor5 / 1000 <= events[arg1].field_2304
                                        require events[arg1].field_2048 + events[arg1].field_2304 - (events[arg1].field_2304 * stor5 / 1000) >= events[arg1].field_2048
                                        events[arg1].field_1792 = 1
                                        events[arg1].field_1536 = arg2
                                        if not events[arg1].field_2048 + events[arg1].field_2304 - (events[arg1].field_2304 * stor5 / 1000):
                                            require events[arg1].field_2048 > 0
                                            require events[arg1].field_2048
                                            events[arg1].field_2560 = 0 / events[arg1].field_2048
                                        else:
                                            require events[arg1].field_2048 + events[arg1].field_2304 - (events[arg1].field_2304 * stor5 / 1000)
                                            require (events[arg1].field_2048 * stor4) + (events[arg1].field_2304 * stor4) - (events[arg1].field_2304 * stor5 / 1000 * stor4) / events[arg1].field_2048 + events[arg1].field_2304 - (events[arg1].field_2304 * stor5 / 1000) == stor4
                                            require events[arg1].field_2048 > 0
                                            require events[arg1].field_2048
                                            events[arg1].field_2560 = (events[arg1].field_2048 * stor4) + (events[arg1].field_2304 * stor4) - (events[arg1].field_2304 * stor5 / 1000 * stor4) / events[arg1].field_2048
                                    require events[arg1].field_2304 > 0
                                    require events[arg1].field_2304
                                    events[arg1].field_2816 = 0 / events[arg1].field_2304
                                else:
                                    if not events[arg1].field_2304:
                                        require stor4 > 0
                                        require stor4
                                        require 0 / stor4 <= events[arg1].field_2304
                                        if not 0 / stor4:
                                            require 0 <= 0 / stor4
                                            require events[arg1].field_2048 + (0 / stor4) >= events[arg1].field_2048
                                            events[arg1].field_1792 = 1
                                            events[arg1].field_1536 = arg2
                                            if not events[arg1].field_2048 + (0 / stor4):
                                                require events[arg1].field_2048 > 0
                                                require events[arg1].field_2048
                                                events[arg1].field_2560 = 0 / events[arg1].field_2048
                                            else:
                                                require events[arg1].field_2048 + (0 / stor4)
                                                require (events[arg1].field_2048 * stor4) + (0 / stor4 * stor4) / events[arg1].field_2048 + (0 / stor4) == stor4
                                                require events[arg1].field_2048 > 0
                                                require events[arg1].field_2048
                                                events[arg1].field_2560 = (events[arg1].field_2048 * stor4) + (0 / stor4 * stor4) / events[arg1].field_2048
                                        else:
                                            require 0 / stor4
                                            require 0 / stor4 * stor5 / 0 / stor4 == stor5
                                            require 0 / stor4 * stor5 / 1000 <= 0 / stor4
                                            require events[arg1].field_2048 + (0 / stor4) - (0 / stor4 * stor5 / 1000) >= events[arg1].field_2048
                                            events[arg1].field_1792 = 1
                                            events[arg1].field_1536 = arg2
                                            if not events[arg1].field_2048 + (0 / stor4) - (0 / stor4 * stor5 / 1000):
                                                require events[arg1].field_2048 > 0
                                                require events[arg1].field_2048
                                                events[arg1].field_2560 = 0 / events[arg1].field_2048
                                            else:
                                                require events[arg1].field_2048 + (0 / stor4) - (0 / stor4 * stor5 / 1000)
                                                require (events[arg1].field_2048 * stor4) + (0 / stor4 * stor4) - (0 / stor4 * stor5 / 1000 * stor4) / events[arg1].field_2048 + (0 / stor4) - (0 / stor4 * stor5 / 1000) == stor4
                                                require events[arg1].field_2048 > 0
                                                require events[arg1].field_2048
                                                events[arg1].field_2560 = (events[arg1].field_2048 * stor4) + (0 / stor4 * stor4) - (0 / stor4 * stor5 / 1000 * stor4) / events[arg1].field_2048
                                        if not events[arg1].field_2304 - (0 / stor4):
                                            require events[arg1].field_2304 > 0
                                            require events[arg1].field_2304
                                            events[arg1].field_2816 = 0 / events[arg1].field_2304
                                        else:
                                            require events[arg1].field_2304 - (0 / stor4)
                                            require (events[arg1].field_2304 * stor4) - (0 / stor4 * stor4) / events[arg1].field_2304 - (0 / stor4) == stor4
                                            require events[arg1].field_2304 > 0
                                            require events[arg1].field_2304
                                            events[arg1].field_2816 = (events[arg1].field_2304 * stor4) - (0 / stor4 * stor4) / events[arg1].field_2304
                                    else:
                                        require events[arg1].field_2304
                                        require events[arg1].field_2304 * (events[arg1].field_1280 * stor4) - (arg2 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / events[arg1].field_2304 == (events[arg1].field_1280 * stor4) - (arg2 * stor4) / events[arg1].field_1280 * events[arg1].field_3072
                                        require stor4 > 0
                                        require stor4
                                        require events[arg1].field_2304 * (events[arg1].field_1280 * stor4) - (arg2 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4 <= events[arg1].field_2304
                                        if not events[arg1].field_2304 * (events[arg1].field_1280 * stor4) - (arg2 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4:
                                            require 0 <= events[arg1].field_2304 * (events[arg1].field_1280 * stor4) - (arg2 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4
                                            require events[arg1].field_2048 + (events[arg1].field_2304 * (events[arg1].field_1280 * stor4) - (arg2 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4) >= events[arg1].field_2048
                                            events[arg1].field_1792 = 1
                                            events[arg1].field_1536 = arg2
                                            if not events[arg1].field_2048 + (events[arg1].field_2304 * (events[arg1].field_1280 * stor4) - (arg2 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4):
                                                require events[arg1].field_2048 > 0
                                                require events[arg1].field_2048
                                                events[arg1].field_2560 = 0 / events[arg1].field_2048
                                            else:
                                                require events[arg1].field_2048 + (events[arg1].field_2304 * (events[arg1].field_1280 * stor4) - (arg2 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4)
                                                require (events[arg1].field_2048 * stor4) + (events[arg1].field_2304 * (events[arg1].field_1280 * stor4) - (arg2 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor4) / events[arg1].field_2048 + (events[arg1].field_2304 * (events[arg1].field_1280 * stor4) - (arg2 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4) == stor4
                                                require events[arg1].field_2048 > 0
                                                require events[arg1].field_2048
                                                events[arg1].field_2560 = (events[arg1].field_2048 * stor4) + (events[arg1].field_2304 * (events[arg1].field_1280 * stor4) - (arg2 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor4) / events[arg1].field_2048
                                        else:
                                            require events[arg1].field_2304 * (events[arg1].field_1280 * stor4) - (arg2 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4
                                            require events[arg1].field_2304 * (events[arg1].field_1280 * stor4) - (arg2 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor5 / events[arg1].field_2304 * (events[arg1].field_1280 * stor4) - (arg2 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4 == stor5
                                            require events[arg1].field_2304 * (events[arg1].field_1280 * stor4) - (arg2 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor5 / 1000 <= events[arg1].field_2304 * (events[arg1].field_1280 * stor4) - (arg2 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4
                                            require events[arg1].field_2048 + (events[arg1].field_2304 * (events[arg1].field_1280 * stor4) - (arg2 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4) - (events[arg1].field_2304 * (events[arg1].field_1280 * stor4) - (arg2 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor5 / 1000) >= events[arg1].field_2048
                                            events[arg1].field_1792 = 1
                                            events[arg1].field_1536 = arg2
                                            if not events[arg1].field_2048 + (events[arg1].field_2304 * (events[arg1].field_1280 * stor4) - (arg2 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4) - (events[arg1].field_2304 * (events[arg1].field_1280 * stor4) - (arg2 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor5 / 1000):
                                                require events[arg1].field_2048 > 0
                                                require events[arg1].field_2048
                                                events[arg1].field_2560 = 0 / events[arg1].field_2048
                                            else:
                                                require events[arg1].field_2048 + (events[arg1].field_2304 * (events[arg1].field_1280 * stor4) - (arg2 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4) - (events[arg1].field_2304 * (events[arg1].field_1280 * stor4) - (arg2 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor5 / 1000)
                                                require (events[arg1].field_2048 * stor4) + (events[arg1].field_2304 * (events[arg1].field_1280 * stor4) - (arg2 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor4) - (events[arg1].field_2304 * (events[arg1].field_1280 * stor4) - (arg2 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor5 / 1000 * stor4) / events[arg1].field_2048 + (events[arg1].field_2304 * (events[arg1].field_1280 * stor4) - (arg2 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4) - (events[arg1].field_2304 * (events[arg1].field_1280 * stor4) - (arg2 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor5 / 1000) == stor4
                                                require events[arg1].field_2048 > 0
                                                require events[arg1].field_2048
                                                events[arg1].field_2560 = (events[arg1].field_2048 * stor4) + (events[arg1].field_2304 * (events[arg1].field_1280 * stor4) - (arg2 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor4) - (events[arg1].field_2304 * (events[arg1].field_1280 * stor4) - (arg2 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor5 / 1000 * stor4) / events[arg1].field_2048
                                        if not events[arg1].field_2304 - (events[arg1].field_2304 * (events[arg1].field_1280 * stor4) - (arg2 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4):
                                            require events[arg1].field_2304 > 0
                                            require events[arg1].field_2304
                                            events[arg1].field_2816 = 0 / events[arg1].field_2304
                                        else:
                                            require events[arg1].field_2304 - (events[arg1].field_2304 * (events[arg1].field_1280 * stor4) - (arg2 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4)
                                            require (events[arg1].field_2304 * stor4) - (events[arg1].field_2304 * (events[arg1].field_1280 * stor4) - (arg2 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor4) / events[arg1].field_2304 - (events[arg1].field_2304 * (events[arg1].field_1280 * stor4) - (arg2 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4) == stor4
                                            require events[arg1].field_2304 > 0
                                            require events[arg1].field_2304
                                            events[arg1].field_2816 = (events[arg1].field_2304 * stor4) - (events[arg1].field_2304 * (events[arg1].field_1280 * stor4) - (arg2 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor4) / events[arg1].field_2304
                else:
                    require events[arg1].field_1280 <= arg2
                    if not arg2 - events[arg1].field_1280:
                        require events[arg1].field_1280 > 0
                        require events[arg1].field_1280
                        if not 0 / events[arg1].field_1280:
                            if not stor4:
                                require events[arg1].field_2048 <= events[arg1].field_2048
                                if not events[arg1].field_2048:
                                    require 0 <= events[arg1].field_2048
                                    require events[arg1].field_2304 + events[arg1].field_2048 >= events[arg1].field_2304
                                    events[arg1].field_1792 = 1
                                    events[arg1].field_1536 = arg2
                                    require events[arg1].field_2048 > 0
                                    require events[arg1].field_2048
                                    events[arg1].field_2560 = 0 / events[arg1].field_2048
                                    if not events[arg1].field_2304 + events[arg1].field_2048:
                                        require events[arg1].field_2304 > 0
                                        require events[arg1].field_2304
                                        events[arg1].field_2816 = 0 / events[arg1].field_2304
                                    else:
                                        require events[arg1].field_2304 + events[arg1].field_2048
                                        require (events[arg1].field_2304 * stor4) + (events[arg1].field_2048 * stor4) / events[arg1].field_2304 + events[arg1].field_2048 == stor4
                                        require events[arg1].field_2304 > 0
                                        require events[arg1].field_2304
                                        events[arg1].field_2816 = (events[arg1].field_2304 * stor4) + (events[arg1].field_2048 * stor4) / events[arg1].field_2304
                                else:
                                    require events[arg1].field_2048
                                    require events[arg1].field_2048 * stor5 / events[arg1].field_2048 == stor5
                                    require events[arg1].field_2048 * stor5 / 1000 <= events[arg1].field_2048
                                    require events[arg1].field_2304 + events[arg1].field_2048 - (events[arg1].field_2048 * stor5 / 1000) >= events[arg1].field_2304
                                    events[arg1].field_1792 = 1
                                    events[arg1].field_1536 = arg2
                                    require events[arg1].field_2048 > 0
                                    require events[arg1].field_2048
                                    events[arg1].field_2560 = 0 / events[arg1].field_2048
                                    if not events[arg1].field_2304 + events[arg1].field_2048 - (events[arg1].field_2048 * stor5 / 1000):
                                        require events[arg1].field_2304 > 0
                                        require events[arg1].field_2304
                                        events[arg1].field_2816 = 0 / events[arg1].field_2304
                                    else:
                                        require events[arg1].field_2304 + events[arg1].field_2048 - (events[arg1].field_2048 * stor5 / 1000)
                                        require (events[arg1].field_2304 * stor4) + (events[arg1].field_2048 * stor4) - (events[arg1].field_2048 * stor5 / 1000 * stor4) / events[arg1].field_2304 + events[arg1].field_2048 - (events[arg1].field_2048 * stor5 / 1000) == stor4
                                        require events[arg1].field_2304 > 0
                                        require events[arg1].field_2304
                                        events[arg1].field_2816 = (events[arg1].field_2304 * stor4) + (events[arg1].field_2048 * stor4) - (events[arg1].field_2048 * stor5 / 1000 * stor4) / events[arg1].field_2304
                            else:
                                require stor4
                                require 100 * stor4 / stor4 == 100
                                if 0 >= 100 * stor4:
                                    require events[arg1].field_2048 <= events[arg1].field_2048
                                    if not events[arg1].field_2048:
                                        require 0 <= events[arg1].field_2048
                                        require events[arg1].field_2304 + events[arg1].field_2048 >= events[arg1].field_2304
                                        events[arg1].field_1792 = 1
                                        events[arg1].field_1536 = arg2
                                        require events[arg1].field_2048 > 0
                                        require events[arg1].field_2048
                                        events[arg1].field_2560 = 0 / events[arg1].field_2048
                                        if not events[arg1].field_2304 + events[arg1].field_2048:
                                            require events[arg1].field_2304 > 0
                                            require events[arg1].field_2304
                                            events[arg1].field_2816 = 0 / events[arg1].field_2304
                                        else:
                                            require events[arg1].field_2304 + events[arg1].field_2048
                                            require (events[arg1].field_2304 * stor4) + (events[arg1].field_2048 * stor4) / events[arg1].field_2304 + events[arg1].field_2048 == stor4
                                            require events[arg1].field_2304 > 0
                                            require events[arg1].field_2304
                                            events[arg1].field_2816 = (events[arg1].field_2304 * stor4) + (events[arg1].field_2048 * stor4) / events[arg1].field_2304
                                    else:
                                        require events[arg1].field_2048
                                        require events[arg1].field_2048 * stor5 / events[arg1].field_2048 == stor5
                                        require events[arg1].field_2048 * stor5 / 1000 <= events[arg1].field_2048
                                        require events[arg1].field_2304 + events[arg1].field_2048 - (events[arg1].field_2048 * stor5 / 1000) >= events[arg1].field_2304
                                        events[arg1].field_1792 = 1
                                        events[arg1].field_1536 = arg2
                                        require events[arg1].field_2048 > 0
                                        require events[arg1].field_2048
                                        events[arg1].field_2560 = 0 / events[arg1].field_2048
                                        if not events[arg1].field_2304 + events[arg1].field_2048 - (events[arg1].field_2048 * stor5 / 1000):
                                            require events[arg1].field_2304 > 0
                                            require events[arg1].field_2304
                                            events[arg1].field_2816 = 0 / events[arg1].field_2304
                                        else:
                                            require events[arg1].field_2304 + events[arg1].field_2048 - (events[arg1].field_2048 * stor5 / 1000)
                                            require (events[arg1].field_2304 * stor4) + (events[arg1].field_2048 * stor4) - (events[arg1].field_2048 * stor5 / 1000 * stor4) / events[arg1].field_2304 + events[arg1].field_2048 - (events[arg1].field_2048 * stor5 / 1000) == stor4
                                            require events[arg1].field_2304 > 0
                                            require events[arg1].field_2304
                                            events[arg1].field_2816 = (events[arg1].field_2304 * stor4) + (events[arg1].field_2048 * stor4) - (events[arg1].field_2048 * stor5 / 1000 * stor4) / events[arg1].field_2304
                                else:
                                    if events[arg1].field_2048:
                                        require events[arg1].field_2048
                                        require not 0 / events[arg1].field_2048
                                    require stor4 > 0
                                    require stor4
                                    require 0 / stor4 <= events[arg1].field_2048
                                    if not 0 / stor4:
                                        require 0 <= 0 / stor4
                                        require events[arg1].field_2304 + (0 / stor4) >= events[arg1].field_2304
                                        events[arg1].field_1792 = 1
                                        events[arg1].field_1536 = arg2
                                        if not events[arg1].field_2048 - (0 / stor4):
                                            require events[arg1].field_2048 > 0
                                            require events[arg1].field_2048
                                            events[arg1].field_2560 = 0 / events[arg1].field_2048
                                        else:
                                            require events[arg1].field_2048 - (0 / stor4)
                                            require (events[arg1].field_2048 * stor4) - (0 / stor4 * stor4) / events[arg1].field_2048 - (0 / stor4) == stor4
                                            require events[arg1].field_2048 > 0
                                            require events[arg1].field_2048
                                            events[arg1].field_2560 = (events[arg1].field_2048 * stor4) - (0 / stor4 * stor4) / events[arg1].field_2048
                                        if not events[arg1].field_2304 + (0 / stor4):
                                            require events[arg1].field_2304 > 0
                                            require events[arg1].field_2304
                                            events[arg1].field_2816 = 0 / events[arg1].field_2304
                                        else:
                                            require events[arg1].field_2304 + (0 / stor4)
                                            require (events[arg1].field_2304 * stor4) + (0 / stor4 * stor4) / events[arg1].field_2304 + (0 / stor4) == stor4
                                            require events[arg1].field_2304 > 0
                                            require events[arg1].field_2304
                                            events[arg1].field_2816 = (events[arg1].field_2304 * stor4) + (0 / stor4 * stor4) / events[arg1].field_2304
                                    else:
                                        require 0 / stor4
                                        require 0 / stor4 * stor5 / 0 / stor4 == stor5
                                        require 0 / stor4 * stor5 / 1000 <= 0 / stor4
                                        require events[arg1].field_2304 + (0 / stor4) - (0 / stor4 * stor5 / 1000) >= events[arg1].field_2304
                                        events[arg1].field_1792 = 1
                                        events[arg1].field_1536 = arg2
                                        if not events[arg1].field_2048 - (0 / stor4):
                                            require events[arg1].field_2048 > 0
                                            require events[arg1].field_2048
                                            events[arg1].field_2560 = 0 / events[arg1].field_2048
                                        else:
                                            require events[arg1].field_2048 - (0 / stor4)
                                            require (events[arg1].field_2048 * stor4) - (0 / stor4 * stor4) / events[arg1].field_2048 - (0 / stor4) == stor4
                                            require events[arg1].field_2048 > 0
                                            require events[arg1].field_2048
                                            events[arg1].field_2560 = (events[arg1].field_2048 * stor4) - (0 / stor4 * stor4) / events[arg1].field_2048
                                        if not events[arg1].field_2304 + (0 / stor4) - (0 / stor4 * stor5 / 1000):
                                            require events[arg1].field_2304 > 0
                                            require events[arg1].field_2304
                                            events[arg1].field_2816 = 0 / events[arg1].field_2304
                                        else:
                                            require events[arg1].field_2304 + (0 / stor4) - (0 / stor4 * stor5 / 1000)
                                            require (events[arg1].field_2304 * stor4) + (0 / stor4 * stor4) - (0 / stor4 * stor5 / 1000 * stor4) / events[arg1].field_2304 + (0 / stor4) - (0 / stor4 * stor5 / 1000) == stor4
                                            require events[arg1].field_2304 > 0
                                            require events[arg1].field_2304
                                            events[arg1].field_2816 = (events[arg1].field_2304 * stor4) + (0 / stor4 * stor4) - (0 / stor4 * stor5 / 1000 * stor4) / events[arg1].field_2304
                        else:
                            require 0 / events[arg1].field_1280
                            require 0 / events[arg1].field_1280 * events[arg1].field_3072 / 0 / events[arg1].field_1280 == events[arg1].field_3072
                            if not stor4:
                                if 0 / events[arg1].field_1280 * events[arg1].field_3072 >= 0:
                                    require events[arg1].field_2048 <= events[arg1].field_2048
                                    if not events[arg1].field_2048:
                                        require 0 <= events[arg1].field_2048
                                        require events[arg1].field_2304 + events[arg1].field_2048 >= events[arg1].field_2304
                                        events[arg1].field_1792 = 1
                                        events[arg1].field_1536 = arg2
                                        require events[arg1].field_2048 > 0
                                        require events[arg1].field_2048
                                        events[arg1].field_2560 = 0 / events[arg1].field_2048
                                        if not events[arg1].field_2304 + events[arg1].field_2048:
                                            require events[arg1].field_2304 > 0
                                            require events[arg1].field_2304
                                            events[arg1].field_2816 = 0 / events[arg1].field_2304
                                        else:
                                            require events[arg1].field_2304 + events[arg1].field_2048
                                            require (events[arg1].field_2304 * stor4) + (events[arg1].field_2048 * stor4) / events[arg1].field_2304 + events[arg1].field_2048 == stor4
                                            require events[arg1].field_2304 > 0
                                            require events[arg1].field_2304
                                            events[arg1].field_2816 = (events[arg1].field_2304 * stor4) + (events[arg1].field_2048 * stor4) / events[arg1].field_2304
                                    else:
                                        require events[arg1].field_2048
                                        require events[arg1].field_2048 * stor5 / events[arg1].field_2048 == stor5
                                        require events[arg1].field_2048 * stor5 / 1000 <= events[arg1].field_2048
                                        require events[arg1].field_2304 + events[arg1].field_2048 - (events[arg1].field_2048 * stor5 / 1000) >= events[arg1].field_2304
                                        events[arg1].field_1792 = 1
                                        events[arg1].field_1536 = arg2
                                        require events[arg1].field_2048 > 0
                                        require events[arg1].field_2048
                                        events[arg1].field_2560 = 0 / events[arg1].field_2048
                                        if not events[arg1].field_2304 + events[arg1].field_2048 - (events[arg1].field_2048 * stor5 / 1000):
                                            require events[arg1].field_2304 > 0
                                            require events[arg1].field_2304
                                            events[arg1].field_2816 = 0 / events[arg1].field_2304
                                        else:
                                            require events[arg1].field_2304 + events[arg1].field_2048 - (events[arg1].field_2048 * stor5 / 1000)
                                            require (events[arg1].field_2304 * stor4) + (events[arg1].field_2048 * stor4) - (events[arg1].field_2048 * stor5 / 1000 * stor4) / events[arg1].field_2304 + events[arg1].field_2048 - (events[arg1].field_2048 * stor5 / 1000) == stor4
                                            require events[arg1].field_2304 > 0
                                            require events[arg1].field_2304
                                            events[arg1].field_2816 = (events[arg1].field_2304 * stor4) + (events[arg1].field_2048 * stor4) - (events[arg1].field_2048 * stor5 / 1000 * stor4) / events[arg1].field_2304
                                else:
                                    if not events[arg1].field_2048:
                                        require stor4 > 0
                                        require stor4
                                        require 0 / stor4 <= events[arg1].field_2048
                                        if not 0 / stor4:
                                            require 0 <= 0 / stor4
                                            require events[arg1].field_2304 + (0 / stor4) >= events[arg1].field_2304
                                            events[arg1].field_1792 = 1
                                            events[arg1].field_1536 = arg2
                                            if not events[arg1].field_2048 - (0 / stor4):
                                                require events[arg1].field_2048 > 0
                                                require events[arg1].field_2048
                                                events[arg1].field_2560 = 0 / events[arg1].field_2048
                                            else:
                                                require events[arg1].field_2048 - (0 / stor4)
                                                require (events[arg1].field_2048 * stor4) - (0 / stor4 * stor4) / events[arg1].field_2048 - (0 / stor4) == stor4
                                                require events[arg1].field_2048 > 0
                                                require events[arg1].field_2048
                                                events[arg1].field_2560 = (events[arg1].field_2048 * stor4) - (0 / stor4 * stor4) / events[arg1].field_2048
                                            if not events[arg1].field_2304 + (0 / stor4):
                                                require events[arg1].field_2304 > 0
                                                require events[arg1].field_2304
                                                events[arg1].field_2816 = 0 / events[arg1].field_2304
                                            else:
                                                require events[arg1].field_2304 + (0 / stor4)
                                                require (events[arg1].field_2304 * stor4) + (0 / stor4 * stor4) / events[arg1].field_2304 + (0 / stor4) == stor4
                                                require events[arg1].field_2304 > 0
                                                require events[arg1].field_2304
                                                events[arg1].field_2816 = (events[arg1].field_2304 * stor4) + (0 / stor4 * stor4) / events[arg1].field_2304
                                        else:
                                            require 0 / stor4
                                            require 0 / stor4 * stor5 / 0 / stor4 == stor5
                                            require 0 / stor4 * stor5 / 1000 <= 0 / stor4
                                            require events[arg1].field_2304 + (0 / stor4) - (0 / stor4 * stor5 / 1000) >= events[arg1].field_2304
                                            events[arg1].field_1792 = 1
                                            events[arg1].field_1536 = arg2
                                            if not events[arg1].field_2048 - (0 / stor4):
                                                require events[arg1].field_2048 > 0
                                                require events[arg1].field_2048
                                                events[arg1].field_2560 = 0 / events[arg1].field_2048
                                            else:
                                                require events[arg1].field_2048 - (0 / stor4)
                                                require (events[arg1].field_2048 * stor4) - (0 / stor4 * stor4) / events[arg1].field_2048 - (0 / stor4) == stor4
                                                require events[arg1].field_2048 > 0
                                                require events[arg1].field_2048
                                                events[arg1].field_2560 = (events[arg1].field_2048 * stor4) - (0 / stor4 * stor4) / events[arg1].field_2048
                                            if not events[arg1].field_2304 + (0 / stor4) - (0 / stor4 * stor5 / 1000):
                                                require events[arg1].field_2304 > 0
                                                require events[arg1].field_2304
                                                events[arg1].field_2816 = 0 / events[arg1].field_2304
                                            else:
                                                require events[arg1].field_2304 + (0 / stor4) - (0 / stor4 * stor5 / 1000)
                                                require (events[arg1].field_2304 * stor4) + (0 / stor4 * stor4) - (0 / stor4 * stor5 / 1000 * stor4) / events[arg1].field_2304 + (0 / stor4) - (0 / stor4 * stor5 / 1000) == stor4
                                                require events[arg1].field_2304 > 0
                                                require events[arg1].field_2304
                                                events[arg1].field_2816 = (events[arg1].field_2304 * stor4) + (0 / stor4 * stor4) - (0 / stor4 * stor5 / 1000 * stor4) / events[arg1].field_2304
                                    else:
                                        require events[arg1].field_2048
                                        require events[arg1].field_2048 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / events[arg1].field_2048 == 0 / events[arg1].field_1280 * events[arg1].field_3072
                                        require stor4 > 0
                                        require stor4
                                        require events[arg1].field_2048 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4 <= events[arg1].field_2048
                                        if not events[arg1].field_2048 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4:
                                            require 0 <= events[arg1].field_2048 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4
                                            require events[arg1].field_2304 + (events[arg1].field_2048 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4) >= events[arg1].field_2304
                                            events[arg1].field_1792 = 1
                                            events[arg1].field_1536 = arg2
                                            if not events[arg1].field_2048 - (events[arg1].field_2048 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4):
                                                require events[arg1].field_2048 > 0
                                                require events[arg1].field_2048
                                                events[arg1].field_2560 = 0 / events[arg1].field_2048
                                            else:
                                                require events[arg1].field_2048 - (events[arg1].field_2048 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4)
                                                require (events[arg1].field_2048 * stor4) - (events[arg1].field_2048 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor4) / events[arg1].field_2048 - (events[arg1].field_2048 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4) == stor4
                                                require events[arg1].field_2048 > 0
                                                require events[arg1].field_2048
                                                events[arg1].field_2560 = (events[arg1].field_2048 * stor4) - (events[arg1].field_2048 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor4) / events[arg1].field_2048
                                            if not events[arg1].field_2304 + (events[arg1].field_2048 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4):
                                                require events[arg1].field_2304 > 0
                                                require events[arg1].field_2304
                                                events[arg1].field_2816 = 0 / events[arg1].field_2304
                                            else:
                                                require events[arg1].field_2304 + (events[arg1].field_2048 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4)
                                                require (events[arg1].field_2304 * stor4) + (events[arg1].field_2048 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor4) / events[arg1].field_2304 + (events[arg1].field_2048 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4) == stor4
                                                require events[arg1].field_2304 > 0
                                                require events[arg1].field_2304
                                                events[arg1].field_2816 = (events[arg1].field_2304 * stor4) + (events[arg1].field_2048 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor4) / events[arg1].field_2304
                                        else:
                                            require events[arg1].field_2048 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4
                                            require events[arg1].field_2048 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor5 / events[arg1].field_2048 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4 == stor5
                                            require events[arg1].field_2048 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor5 / 1000 <= events[arg1].field_2048 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4
                                            require events[arg1].field_2304 + (events[arg1].field_2048 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4) - (events[arg1].field_2048 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor5 / 1000) >= events[arg1].field_2304
                                            events[arg1].field_1792 = 1
                                            events[arg1].field_1536 = arg2
                                            if not events[arg1].field_2048 - (events[arg1].field_2048 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4):
                                                require events[arg1].field_2048 > 0
                                                require events[arg1].field_2048
                                                events[arg1].field_2560 = 0 / events[arg1].field_2048
                                            else:
                                                require events[arg1].field_2048 - (events[arg1].field_2048 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4)
                                                require (events[arg1].field_2048 * stor4) - (events[arg1].field_2048 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor4) / events[arg1].field_2048 - (events[arg1].field_2048 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4) == stor4
                                                require events[arg1].field_2048 > 0
                                                require events[arg1].field_2048
                                                events[arg1].field_2560 = (events[arg1].field_2048 * stor4) - (events[arg1].field_2048 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor4) / events[arg1].field_2048
                                            if not events[arg1].field_2304 + (events[arg1].field_2048 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4) - (events[arg1].field_2048 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor5 / 1000):
                                                require events[arg1].field_2304 > 0
                                                require events[arg1].field_2304
                                                events[arg1].field_2816 = 0 / events[arg1].field_2304
                                            else:
                                                require events[arg1].field_2304 + (events[arg1].field_2048 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4) - (events[arg1].field_2048 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor5 / 1000)
                                                require (events[arg1].field_2304 * stor4) + (events[arg1].field_2048 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor4) - (events[arg1].field_2048 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor5 / 1000 * stor4) / events[arg1].field_2304 + (events[arg1].field_2048 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4) - (events[arg1].field_2048 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor5 / 1000) == stor4
                                                require events[arg1].field_2304 > 0
                                                require events[arg1].field_2304
                                                events[arg1].field_2816 = (events[arg1].field_2304 * stor4) + (events[arg1].field_2048 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor4) - (events[arg1].field_2048 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor5 / 1000 * stor4) / events[arg1].field_2304
                            else:
                                require stor4
                                require 100 * stor4 / stor4 == 100
                                if 0 / events[arg1].field_1280 * events[arg1].field_3072 >= 100 * stor4:
                                    require events[arg1].field_2048 <= events[arg1].field_2048
                                    if not events[arg1].field_2048:
                                        require 0 <= events[arg1].field_2048
                                        require events[arg1].field_2304 + events[arg1].field_2048 >= events[arg1].field_2304
                                        events[arg1].field_1792 = 1
                                        events[arg1].field_1536 = arg2
                                        require events[arg1].field_2048 > 0
                                        require events[arg1].field_2048
                                        events[arg1].field_2560 = 0 / events[arg1].field_2048
                                        if not events[arg1].field_2304 + events[arg1].field_2048:
                                            require events[arg1].field_2304 > 0
                                            require events[arg1].field_2304
                                            events[arg1].field_2816 = 0 / events[arg1].field_2304
                                        else:
                                            require events[arg1].field_2304 + events[arg1].field_2048
                                            require (events[arg1].field_2304 * stor4) + (events[arg1].field_2048 * stor4) / events[arg1].field_2304 + events[arg1].field_2048 == stor4
                                            require events[arg1].field_2304 > 0
                                            require events[arg1].field_2304
                                            events[arg1].field_2816 = (events[arg1].field_2304 * stor4) + (events[arg1].field_2048 * stor4) / events[arg1].field_2304
                                    else:
                                        require events[arg1].field_2048
                                        require events[arg1].field_2048 * stor5 / events[arg1].field_2048 == stor5
                                        require events[arg1].field_2048 * stor5 / 1000 <= events[arg1].field_2048
                                        require events[arg1].field_2304 + events[arg1].field_2048 - (events[arg1].field_2048 * stor5 / 1000) >= events[arg1].field_2304
                                        events[arg1].field_1792 = 1
                                        events[arg1].field_1536 = arg2
                                        require events[arg1].field_2048 > 0
                                        require events[arg1].field_2048
                                        events[arg1].field_2560 = 0 / events[arg1].field_2048
                                        if not events[arg1].field_2304 + events[arg1].field_2048 - (events[arg1].field_2048 * stor5 / 1000):
                                            require events[arg1].field_2304 > 0
                                            require events[arg1].field_2304
                                            events[arg1].field_2816 = 0 / events[arg1].field_2304
                                        else:
                                            require events[arg1].field_2304 + events[arg1].field_2048 - (events[arg1].field_2048 * stor5 / 1000)
                                            require (events[arg1].field_2304 * stor4) + (events[arg1].field_2048 * stor4) - (events[arg1].field_2048 * stor5 / 1000 * stor4) / events[arg1].field_2304 + events[arg1].field_2048 - (events[arg1].field_2048 * stor5 / 1000) == stor4
                                            require events[arg1].field_2304 > 0
                                            require events[arg1].field_2304
                                            events[arg1].field_2816 = (events[arg1].field_2304 * stor4) + (events[arg1].field_2048 * stor4) - (events[arg1].field_2048 * stor5 / 1000 * stor4) / events[arg1].field_2304
                                else:
                                    if not events[arg1].field_2048:
                                        require stor4 > 0
                                        require stor4
                                        require 0 / stor4 <= events[arg1].field_2048
                                        if not 0 / stor4:
                                            require 0 <= 0 / stor4
                                            require events[arg1].field_2304 + (0 / stor4) >= events[arg1].field_2304
                                            events[arg1].field_1792 = 1
                                            events[arg1].field_1536 = arg2
                                            if not events[arg1].field_2048 - (0 / stor4):
                                                require events[arg1].field_2048 > 0
                                                require events[arg1].field_2048
                                                events[arg1].field_2560 = 0 / events[arg1].field_2048
                                            else:
                                                require events[arg1].field_2048 - (0 / stor4)
                                                require (events[arg1].field_2048 * stor4) - (0 / stor4 * stor4) / events[arg1].field_2048 - (0 / stor4) == stor4
                                                require events[arg1].field_2048 > 0
                                                require events[arg1].field_2048
                                                events[arg1].field_2560 = (events[arg1].field_2048 * stor4) - (0 / stor4 * stor4) / events[arg1].field_2048
                                            if not events[arg1].field_2304 + (0 / stor4):
                                                require events[arg1].field_2304 > 0
                                                require events[arg1].field_2304
                                                events[arg1].field_2816 = 0 / events[arg1].field_2304
                                            else:
                                                require events[arg1].field_2304 + (0 / stor4)
                                                require (events[arg1].field_2304 * stor4) + (0 / stor4 * stor4) / events[arg1].field_2304 + (0 / stor4) == stor4
                                                require events[arg1].field_2304 > 0
                                                require events[arg1].field_2304
                                                events[arg1].field_2816 = (events[arg1].field_2304 * stor4) + (0 / stor4 * stor4) / events[arg1].field_2304
                                        else:
                                            require 0 / stor4
                                            require 0 / stor4 * stor5 / 0 / stor4 == stor5
                                            require 0 / stor4 * stor5 / 1000 <= 0 / stor4
                                            require events[arg1].field_2304 + (0 / stor4) - (0 / stor4 * stor5 / 1000) >= events[arg1].field_2304
                                            events[arg1].field_1792 = 1
                                            events[arg1].field_1536 = arg2
                                            if not events[arg1].field_2048 - (0 / stor4):
                                                require events[arg1].field_2048 > 0
                                                require events[arg1].field_2048
                                                events[arg1].field_2560 = 0 / events[arg1].field_2048
                                            else:
                                                require events[arg1].field_2048 - (0 / stor4)
                                                require (events[arg1].field_2048 * stor4) - (0 / stor4 * stor4) / events[arg1].field_2048 - (0 / stor4) == stor4
                                                require events[arg1].field_2048 > 0
                                                require events[arg1].field_2048
                                                events[arg1].field_2560 = (events[arg1].field_2048 * stor4) - (0 / stor4 * stor4) / events[arg1].field_2048
                                            if not events[arg1].field_2304 + (0 / stor4) - (0 / stor4 * stor5 / 1000):
                                                require events[arg1].field_2304 > 0
                                                require events[arg1].field_2304
                                                events[arg1].field_2816 = 0 / events[arg1].field_2304
                                            else:
                                                require events[arg1].field_2304 + (0 / stor4) - (0 / stor4 * stor5 / 1000)
                                                require (events[arg1].field_2304 * stor4) + (0 / stor4 * stor4) - (0 / stor4 * stor5 / 1000 * stor4) / events[arg1].field_2304 + (0 / stor4) - (0 / stor4 * stor5 / 1000) == stor4
                                                require events[arg1].field_2304 > 0
                                                require events[arg1].field_2304
                                                events[arg1].field_2816 = (events[arg1].field_2304 * stor4) + (0 / stor4 * stor4) - (0 / stor4 * stor5 / 1000 * stor4) / events[arg1].field_2304
                                    else:
                                        require events[arg1].field_2048
                                        require events[arg1].field_2048 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / events[arg1].field_2048 == 0 / events[arg1].field_1280 * events[arg1].field_3072
                                        require stor4 > 0
                                        require stor4
                                        require events[arg1].field_2048 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4 <= events[arg1].field_2048
                                        if not events[arg1].field_2048 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4:
                                            require 0 <= events[arg1].field_2048 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4
                                            require events[arg1].field_2304 + (events[arg1].field_2048 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4) >= events[arg1].field_2304
                                            events[arg1].field_1792 = 1
                                            events[arg1].field_1536 = arg2
                                            if not events[arg1].field_2048 - (events[arg1].field_2048 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4):
                                                require events[arg1].field_2048 > 0
                                                require events[arg1].field_2048
                                                events[arg1].field_2560 = 0 / events[arg1].field_2048
                                            else:
                                                require events[arg1].field_2048 - (events[arg1].field_2048 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4)
                                                require (events[arg1].field_2048 * stor4) - (events[arg1].field_2048 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor4) / events[arg1].field_2048 - (events[arg1].field_2048 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4) == stor4
                                                require events[arg1].field_2048 > 0
                                                require events[arg1].field_2048
                                                events[arg1].field_2560 = (events[arg1].field_2048 * stor4) - (events[arg1].field_2048 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor4) / events[arg1].field_2048
                                            if not events[arg1].field_2304 + (events[arg1].field_2048 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4):
                                                require events[arg1].field_2304 > 0
                                                require events[arg1].field_2304
                                                events[arg1].field_2816 = 0 / events[arg1].field_2304
                                            else:
                                                require events[arg1].field_2304 + (events[arg1].field_2048 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4)
                                                require (events[arg1].field_2304 * stor4) + (events[arg1].field_2048 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor4) / events[arg1].field_2304 + (events[arg1].field_2048 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4) == stor4
                                                require events[arg1].field_2304 > 0
                                                require events[arg1].field_2304
                                                events[arg1].field_2816 = (events[arg1].field_2304 * stor4) + (events[arg1].field_2048 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor4) / events[arg1].field_2304
                                        else:
                                            require events[arg1].field_2048 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4
                                            require events[arg1].field_2048 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor5 / events[arg1].field_2048 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4 == stor5
                                            require events[arg1].field_2048 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor5 / 1000 <= events[arg1].field_2048 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4
                                            require events[arg1].field_2304 + (events[arg1].field_2048 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4) - (events[arg1].field_2048 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor5 / 1000) >= events[arg1].field_2304
                                            events[arg1].field_1792 = 1
                                            events[arg1].field_1536 = arg2
                                            if not events[arg1].field_2048 - (events[arg1].field_2048 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4):
                                                require events[arg1].field_2048 > 0
                                                require events[arg1].field_2048
                                                events[arg1].field_2560 = 0 / events[arg1].field_2048
                                            else:
                                                require events[arg1].field_2048 - (events[arg1].field_2048 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4)
                                                require (events[arg1].field_2048 * stor4) - (events[arg1].field_2048 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor4) / events[arg1].field_2048 - (events[arg1].field_2048 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4) == stor4
                                                require events[arg1].field_2048 > 0
                                                require events[arg1].field_2048
                                                events[arg1].field_2560 = (events[arg1].field_2048 * stor4) - (events[arg1].field_2048 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor4) / events[arg1].field_2048
                                            if not events[arg1].field_2304 + (events[arg1].field_2048 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4) - (events[arg1].field_2048 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor5 / 1000):
                                                require events[arg1].field_2304 > 0
                                                require events[arg1].field_2304
                                                events[arg1].field_2816 = 0 / events[arg1].field_2304
                                            else:
                                                require events[arg1].field_2304 + (events[arg1].field_2048 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4) - (events[arg1].field_2048 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor5 / 1000)
                                                require (events[arg1].field_2304 * stor4) + (events[arg1].field_2048 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor4) - (events[arg1].field_2048 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor5 / 1000 * stor4) / events[arg1].field_2304 + (events[arg1].field_2048 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4) - (events[arg1].field_2048 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor5 / 1000) == stor4
                                                require events[arg1].field_2304 > 0
                                                require events[arg1].field_2304
                                                events[arg1].field_2816 = (events[arg1].field_2304 * stor4) + (events[arg1].field_2048 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor4) - (events[arg1].field_2048 * 0 / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor5 / 1000 * stor4) / events[arg1].field_2304
                    else:
                        require arg2 - events[arg1].field_1280
                        require (arg2 * stor4) - (events[arg1].field_1280 * stor4) / arg2 - events[arg1].field_1280 == stor4
                        require events[arg1].field_1280 > 0
                        require events[arg1].field_1280
                        if not (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280:
                            if not stor4:
                                require events[arg1].field_2048 <= events[arg1].field_2048
                                if not events[arg1].field_2048:
                                    require 0 <= events[arg1].field_2048
                                    require events[arg1].field_2304 + events[arg1].field_2048 >= events[arg1].field_2304
                                    events[arg1].field_1792 = 1
                                    events[arg1].field_1536 = arg2
                                    require events[arg1].field_2048 > 0
                                    require events[arg1].field_2048
                                    events[arg1].field_2560 = 0 / events[arg1].field_2048
                                    if not events[arg1].field_2304 + events[arg1].field_2048:
                                        require events[arg1].field_2304 > 0
                                        require events[arg1].field_2304
                                        events[arg1].field_2816 = 0 / events[arg1].field_2304
                                    else:
                                        require events[arg1].field_2304 + events[arg1].field_2048
                                        require (events[arg1].field_2304 * stor4) + (events[arg1].field_2048 * stor4) / events[arg1].field_2304 + events[arg1].field_2048 == stor4
                                        require events[arg1].field_2304 > 0
                                        require events[arg1].field_2304
                                        events[arg1].field_2816 = (events[arg1].field_2304 * stor4) + (events[arg1].field_2048 * stor4) / events[arg1].field_2304
                                else:
                                    require events[arg1].field_2048
                                    require events[arg1].field_2048 * stor5 / events[arg1].field_2048 == stor5
                                    require events[arg1].field_2048 * stor5 / 1000 <= events[arg1].field_2048
                                    require events[arg1].field_2304 + events[arg1].field_2048 - (events[arg1].field_2048 * stor5 / 1000) >= events[arg1].field_2304
                                    events[arg1].field_1792 = 1
                                    events[arg1].field_1536 = arg2
                                    require events[arg1].field_2048 > 0
                                    require events[arg1].field_2048
                                    events[arg1].field_2560 = 0 / events[arg1].field_2048
                                    if not events[arg1].field_2304 + events[arg1].field_2048 - (events[arg1].field_2048 * stor5 / 1000):
                                        require events[arg1].field_2304 > 0
                                        require events[arg1].field_2304
                                        events[arg1].field_2816 = 0 / events[arg1].field_2304
                                    else:
                                        require events[arg1].field_2304 + events[arg1].field_2048 - (events[arg1].field_2048 * stor5 / 1000)
                                        require (events[arg1].field_2304 * stor4) + (events[arg1].field_2048 * stor4) - (events[arg1].field_2048 * stor5 / 1000 * stor4) / events[arg1].field_2304 + events[arg1].field_2048 - (events[arg1].field_2048 * stor5 / 1000) == stor4
                                        require events[arg1].field_2304 > 0
                                        require events[arg1].field_2304
                                        events[arg1].field_2816 = (events[arg1].field_2304 * stor4) + (events[arg1].field_2048 * stor4) - (events[arg1].field_2048 * stor5 / 1000 * stor4) / events[arg1].field_2304
                            else:
                                require stor4
                                require 100 * stor4 / stor4 == 100
                                if 0 >= 100 * stor4:
                                    require events[arg1].field_2048 <= events[arg1].field_2048
                                    if not events[arg1].field_2048:
                                        require 0 <= events[arg1].field_2048
                                        require events[arg1].field_2304 + events[arg1].field_2048 >= events[arg1].field_2304
                                        events[arg1].field_1792 = 1
                                        events[arg1].field_1536 = arg2
                                        require events[arg1].field_2048 > 0
                                        require events[arg1].field_2048
                                        events[arg1].field_2560 = 0 / events[arg1].field_2048
                                        if not events[arg1].field_2304 + events[arg1].field_2048:
                                            require events[arg1].field_2304 > 0
                                            require events[arg1].field_2304
                                            events[arg1].field_2816 = 0 / events[arg1].field_2304
                                        else:
                                            require events[arg1].field_2304 + events[arg1].field_2048
                                            require (events[arg1].field_2304 * stor4) + (events[arg1].field_2048 * stor4) / events[arg1].field_2304 + events[arg1].field_2048 == stor4
                                            require events[arg1].field_2304 > 0
                                            require events[arg1].field_2304
                                            events[arg1].field_2816 = (events[arg1].field_2304 * stor4) + (events[arg1].field_2048 * stor4) / events[arg1].field_2304
                                    else:
                                        require events[arg1].field_2048
                                        require events[arg1].field_2048 * stor5 / events[arg1].field_2048 == stor5
                                        require events[arg1].field_2048 * stor5 / 1000 <= events[arg1].field_2048
                                        require events[arg1].field_2304 + events[arg1].field_2048 - (events[arg1].field_2048 * stor5 / 1000) >= events[arg1].field_2304
                                        events[arg1].field_1792 = 1
                                        events[arg1].field_1536 = arg2
                                        require events[arg1].field_2048 > 0
                                        require events[arg1].field_2048
                                        events[arg1].field_2560 = 0 / events[arg1].field_2048
                                        if not events[arg1].field_2304 + events[arg1].field_2048 - (events[arg1].field_2048 * stor5 / 1000):
                                            require events[arg1].field_2304 > 0
                                            require events[arg1].field_2304
                                            events[arg1].field_2816 = 0 / events[arg1].field_2304
                                        else:
                                            require events[arg1].field_2304 + events[arg1].field_2048 - (events[arg1].field_2048 * stor5 / 1000)
                                            require (events[arg1].field_2304 * stor4) + (events[arg1].field_2048 * stor4) - (events[arg1].field_2048 * stor5 / 1000 * stor4) / events[arg1].field_2304 + events[arg1].field_2048 - (events[arg1].field_2048 * stor5 / 1000) == stor4
                                            require events[arg1].field_2304 > 0
                                            require events[arg1].field_2304
                                            events[arg1].field_2816 = (events[arg1].field_2304 * stor4) + (events[arg1].field_2048 * stor4) - (events[arg1].field_2048 * stor5 / 1000 * stor4) / events[arg1].field_2304
                                else:
                                    if events[arg1].field_2048:
                                        require events[arg1].field_2048
                                        require not 0 / events[arg1].field_2048
                                    require stor4 > 0
                                    require stor4
                                    require 0 / stor4 <= events[arg1].field_2048
                                    if not 0 / stor4:
                                        require 0 <= 0 / stor4
                                        require events[arg1].field_2304 + (0 / stor4) >= events[arg1].field_2304
                                        events[arg1].field_1792 = 1
                                        events[arg1].field_1536 = arg2
                                        if not events[arg1].field_2048 - (0 / stor4):
                                            require events[arg1].field_2048 > 0
                                            require events[arg1].field_2048
                                            events[arg1].field_2560 = 0 / events[arg1].field_2048
                                        else:
                                            require events[arg1].field_2048 - (0 / stor4)
                                            require (events[arg1].field_2048 * stor4) - (0 / stor4 * stor4) / events[arg1].field_2048 - (0 / stor4) == stor4
                                            require events[arg1].field_2048 > 0
                                            require events[arg1].field_2048
                                            events[arg1].field_2560 = (events[arg1].field_2048 * stor4) - (0 / stor4 * stor4) / events[arg1].field_2048
                                        if not events[arg1].field_2304 + (0 / stor4):
                                            require events[arg1].field_2304 > 0
                                            require events[arg1].field_2304
                                            events[arg1].field_2816 = 0 / events[arg1].field_2304
                                        else:
                                            require events[arg1].field_2304 + (0 / stor4)
                                            require (events[arg1].field_2304 * stor4) + (0 / stor4 * stor4) / events[arg1].field_2304 + (0 / stor4) == stor4
                                            require events[arg1].field_2304 > 0
                                            require events[arg1].field_2304
                                            events[arg1].field_2816 = (events[arg1].field_2304 * stor4) + (0 / stor4 * stor4) / events[arg1].field_2304
                                    else:
                                        require 0 / stor4
                                        require 0 / stor4 * stor5 / 0 / stor4 == stor5
                                        require 0 / stor4 * stor5 / 1000 <= 0 / stor4
                                        require events[arg1].field_2304 + (0 / stor4) - (0 / stor4 * stor5 / 1000) >= events[arg1].field_2304
                                        events[arg1].field_1792 = 1
                                        events[arg1].field_1536 = arg2
                                        if not events[arg1].field_2048 - (0 / stor4):
                                            require events[arg1].field_2048 > 0
                                            require events[arg1].field_2048
                                            events[arg1].field_2560 = 0 / events[arg1].field_2048
                                        else:
                                            require events[arg1].field_2048 - (0 / stor4)
                                            require (events[arg1].field_2048 * stor4) - (0 / stor4 * stor4) / events[arg1].field_2048 - (0 / stor4) == stor4
                                            require events[arg1].field_2048 > 0
                                            require events[arg1].field_2048
                                            events[arg1].field_2560 = (events[arg1].field_2048 * stor4) - (0 / stor4 * stor4) / events[arg1].field_2048
                                        if not events[arg1].field_2304 + (0 / stor4) - (0 / stor4 * stor5 / 1000):
                                            require events[arg1].field_2304 > 0
                                            require events[arg1].field_2304
                                            events[arg1].field_2816 = 0 / events[arg1].field_2304
                                        else:
                                            require events[arg1].field_2304 + (0 / stor4) - (0 / stor4 * stor5 / 1000)
                                            require (events[arg1].field_2304 * stor4) + (0 / stor4 * stor4) - (0 / stor4 * stor5 / 1000 * stor4) / events[arg1].field_2304 + (0 / stor4) - (0 / stor4 * stor5 / 1000) == stor4
                                            require events[arg1].field_2304 > 0
                                            require events[arg1].field_2304
                                            events[arg1].field_2816 = (events[arg1].field_2304 * stor4) + (0 / stor4 * stor4) - (0 / stor4 * stor5 / 1000 * stor4) / events[arg1].field_2304
                        else:
                            require (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280
                            require (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 == events[arg1].field_3072
                            if not stor4:
                                if (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 >= 0:
                                    require events[arg1].field_2048 <= events[arg1].field_2048
                                    if not events[arg1].field_2048:
                                        require 0 <= events[arg1].field_2048
                                        require events[arg1].field_2304 + events[arg1].field_2048 >= events[arg1].field_2304
                                        events[arg1].field_1792 = 1
                                        events[arg1].field_1536 = arg2
                                        require events[arg1].field_2048 > 0
                                        require events[arg1].field_2048
                                        events[arg1].field_2560 = 0 / events[arg1].field_2048
                                        if not events[arg1].field_2304 + events[arg1].field_2048:
                                            require events[arg1].field_2304 > 0
                                            require events[arg1].field_2304
                                            events[arg1].field_2816 = 0 / events[arg1].field_2304
                                        else:
                                            require events[arg1].field_2304 + events[arg1].field_2048
                                            require (events[arg1].field_2304 * stor4) + (events[arg1].field_2048 * stor4) / events[arg1].field_2304 + events[arg1].field_2048 == stor4
                                            require events[arg1].field_2304 > 0
                                            require events[arg1].field_2304
                                            events[arg1].field_2816 = (events[arg1].field_2304 * stor4) + (events[arg1].field_2048 * stor4) / events[arg1].field_2304
                                    else:
                                        require events[arg1].field_2048
                                        require events[arg1].field_2048 * stor5 / events[arg1].field_2048 == stor5
                                        require events[arg1].field_2048 * stor5 / 1000 <= events[arg1].field_2048
                                        require events[arg1].field_2304 + events[arg1].field_2048 - (events[arg1].field_2048 * stor5 / 1000) >= events[arg1].field_2304
                                        events[arg1].field_1792 = 1
                                        events[arg1].field_1536 = arg2
                                        require events[arg1].field_2048 > 0
                                        require events[arg1].field_2048
                                        events[arg1].field_2560 = 0 / events[arg1].field_2048
                                        if not events[arg1].field_2304 + events[arg1].field_2048 - (events[arg1].field_2048 * stor5 / 1000):
                                            require events[arg1].field_2304 > 0
                                            require events[arg1].field_2304
                                            events[arg1].field_2816 = 0 / events[arg1].field_2304
                                        else:
                                            require events[arg1].field_2304 + events[arg1].field_2048 - (events[arg1].field_2048 * stor5 / 1000)
                                            require (events[arg1].field_2304 * stor4) + (events[arg1].field_2048 * stor4) - (events[arg1].field_2048 * stor5 / 1000 * stor4) / events[arg1].field_2304 + events[arg1].field_2048 - (events[arg1].field_2048 * stor5 / 1000) == stor4
                                            require events[arg1].field_2304 > 0
                                            require events[arg1].field_2304
                                            events[arg1].field_2816 = (events[arg1].field_2304 * stor4) + (events[arg1].field_2048 * stor4) - (events[arg1].field_2048 * stor5 / 1000 * stor4) / events[arg1].field_2304
                                else:
                                    if not events[arg1].field_2048:
                                        require stor4 > 0
                                        require stor4
                                        require 0 / stor4 <= events[arg1].field_2048
                                        if not 0 / stor4:
                                            require 0 <= 0 / stor4
                                            require events[arg1].field_2304 + (0 / stor4) >= events[arg1].field_2304
                                            events[arg1].field_1792 = 1
                                            events[arg1].field_1536 = arg2
                                            if not events[arg1].field_2048 - (0 / stor4):
                                                require events[arg1].field_2048 > 0
                                                require events[arg1].field_2048
                                                events[arg1].field_2560 = 0 / events[arg1].field_2048
                                            else:
                                                require events[arg1].field_2048 - (0 / stor4)
                                                require (events[arg1].field_2048 * stor4) - (0 / stor4 * stor4) / events[arg1].field_2048 - (0 / stor4) == stor4
                                                require events[arg1].field_2048 > 0
                                                require events[arg1].field_2048
                                                events[arg1].field_2560 = (events[arg1].field_2048 * stor4) - (0 / stor4 * stor4) / events[arg1].field_2048
                                            if not events[arg1].field_2304 + (0 / stor4):
                                                require events[arg1].field_2304 > 0
                                                require events[arg1].field_2304
                                                events[arg1].field_2816 = 0 / events[arg1].field_2304
                                            else:
                                                require events[arg1].field_2304 + (0 / stor4)
                                                require (events[arg1].field_2304 * stor4) + (0 / stor4 * stor4) / events[arg1].field_2304 + (0 / stor4) == stor4
                                                require events[arg1].field_2304 > 0
                                                require events[arg1].field_2304
                                                events[arg1].field_2816 = (events[arg1].field_2304 * stor4) + (0 / stor4 * stor4) / events[arg1].field_2304
                                        else:
                                            require 0 / stor4
                                            require 0 / stor4 * stor5 / 0 / stor4 == stor5
                                            require 0 / stor4 * stor5 / 1000 <= 0 / stor4
                                            require events[arg1].field_2304 + (0 / stor4) - (0 / stor4 * stor5 / 1000) >= events[arg1].field_2304
                                            events[arg1].field_1792 = 1
                                            events[arg1].field_1536 = arg2
                                            if not events[arg1].field_2048 - (0 / stor4):
                                                require events[arg1].field_2048 > 0
                                                require events[arg1].field_2048
                                                events[arg1].field_2560 = 0 / events[arg1].field_2048
                                            else:
                                                require events[arg1].field_2048 - (0 / stor4)
                                                require (events[arg1].field_2048 * stor4) - (0 / stor4 * stor4) / events[arg1].field_2048 - (0 / stor4) == stor4
                                                require events[arg1].field_2048 > 0
                                                require events[arg1].field_2048
                                                events[arg1].field_2560 = (events[arg1].field_2048 * stor4) - (0 / stor4 * stor4) / events[arg1].field_2048
                                            if not events[arg1].field_2304 + (0 / stor4) - (0 / stor4 * stor5 / 1000):
                                                require events[arg1].field_2304 > 0
                                                require events[arg1].field_2304
                                                events[arg1].field_2816 = 0 / events[arg1].field_2304
                                            else:
                                                require events[arg1].field_2304 + (0 / stor4) - (0 / stor4 * stor5 / 1000)
                                                require (events[arg1].field_2304 * stor4) + (0 / stor4 * stor4) - (0 / stor4 * stor5 / 1000 * stor4) / events[arg1].field_2304 + (0 / stor4) - (0 / stor4 * stor5 / 1000) == stor4
                                                require events[arg1].field_2304 > 0
                                                require events[arg1].field_2304
                                                events[arg1].field_2816 = (events[arg1].field_2304 * stor4) + (0 / stor4 * stor4) - (0 / stor4 * stor5 / 1000 * stor4) / events[arg1].field_2304
                                    else:
                                        require events[arg1].field_2048
                                        require events[arg1].field_2048 * (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / events[arg1].field_2048 == (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072
                                        require stor4 > 0
                                        require stor4
                                        require events[arg1].field_2048 * (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4 <= events[arg1].field_2048
                                        if not events[arg1].field_2048 * (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4:
                                            require 0 <= events[arg1].field_2048 * (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4
                                            require events[arg1].field_2304 + (events[arg1].field_2048 * (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4) >= events[arg1].field_2304
                                            events[arg1].field_1792 = 1
                                            events[arg1].field_1536 = arg2
                                            if not events[arg1].field_2048 - (events[arg1].field_2048 * (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4):
                                                require events[arg1].field_2048 > 0
                                                require events[arg1].field_2048
                                                events[arg1].field_2560 = 0 / events[arg1].field_2048
                                            else:
                                                require events[arg1].field_2048 - (events[arg1].field_2048 * (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4)
                                                require (events[arg1].field_2048 * stor4) - (events[arg1].field_2048 * (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor4) / events[arg1].field_2048 - (events[arg1].field_2048 * (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4) == stor4
                                                require events[arg1].field_2048 > 0
                                                require events[arg1].field_2048
                                                events[arg1].field_2560 = (events[arg1].field_2048 * stor4) - (events[arg1].field_2048 * (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor4) / events[arg1].field_2048
                                            if not events[arg1].field_2304 + (events[arg1].field_2048 * (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4):
                                                require events[arg1].field_2304 > 0
                                                require events[arg1].field_2304
                                                events[arg1].field_2816 = 0 / events[arg1].field_2304
                                            else:
                                                require events[arg1].field_2304 + (events[arg1].field_2048 * (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4)
                                                require (events[arg1].field_2304 * stor4) + (events[arg1].field_2048 * (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor4) / events[arg1].field_2304 + (events[arg1].field_2048 * (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4) == stor4
                                                require events[arg1].field_2304 > 0
                                                require events[arg1].field_2304
                                                events[arg1].field_2816 = (events[arg1].field_2304 * stor4) + (events[arg1].field_2048 * (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor4) / events[arg1].field_2304
                                        else:
                                            require events[arg1].field_2048 * (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4
                                            require events[arg1].field_2048 * (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor5 / events[arg1].field_2048 * (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4 == stor5
                                            require events[arg1].field_2048 * (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor5 / 1000 <= events[arg1].field_2048 * (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4
                                            require events[arg1].field_2304 + (events[arg1].field_2048 * (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4) - (events[arg1].field_2048 * (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor5 / 1000) >= events[arg1].field_2304
                                            events[arg1].field_1792 = 1
                                            events[arg1].field_1536 = arg2
                                            if not events[arg1].field_2048 - (events[arg1].field_2048 * (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4):
                                                require events[arg1].field_2048 > 0
                                                require events[arg1].field_2048
                                                events[arg1].field_2560 = 0 / events[arg1].field_2048
                                            else:
                                                require events[arg1].field_2048 - (events[arg1].field_2048 * (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4)
                                                require (events[arg1].field_2048 * stor4) - (events[arg1].field_2048 * (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor4) / events[arg1].field_2048 - (events[arg1].field_2048 * (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4) == stor4
                                                require events[arg1].field_2048 > 0
                                                require events[arg1].field_2048
                                                events[arg1].field_2560 = (events[arg1].field_2048 * stor4) - (events[arg1].field_2048 * (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor4) / events[arg1].field_2048
                                            if not events[arg1].field_2304 + (events[arg1].field_2048 * (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4) - (events[arg1].field_2048 * (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor5 / 1000):
                                                require events[arg1].field_2304 > 0
                                                require events[arg1].field_2304
                                                events[arg1].field_2816 = 0 / events[arg1].field_2304
                                            else:
                                                require events[arg1].field_2304 + (events[arg1].field_2048 * (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4) - (events[arg1].field_2048 * (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor5 / 1000)
                                                require (events[arg1].field_2304 * stor4) + (events[arg1].field_2048 * (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor4) - (events[arg1].field_2048 * (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor5 / 1000 * stor4) / events[arg1].field_2304 + (events[arg1].field_2048 * (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4) - (events[arg1].field_2048 * (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor5 / 1000) == stor4
                                                require events[arg1].field_2304 > 0
                                                require events[arg1].field_2304
                                                events[arg1].field_2816 = (events[arg1].field_2304 * stor4) + (events[arg1].field_2048 * (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor4) - (events[arg1].field_2048 * (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor5 / 1000 * stor4) / events[arg1].field_2304
                            else:
                                require stor4
                                require 100 * stor4 / stor4 == 100
                                if (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 >= 100 * stor4:
                                    require events[arg1].field_2048 <= events[arg1].field_2048
                                    if not events[arg1].field_2048:
                                        require 0 <= events[arg1].field_2048
                                        require events[arg1].field_2304 + events[arg1].field_2048 >= events[arg1].field_2304
                                        events[arg1].field_1792 = 1
                                        events[arg1].field_1536 = arg2
                                        require events[arg1].field_2048 > 0
                                        require events[arg1].field_2048
                                        events[arg1].field_2560 = 0 / events[arg1].field_2048
                                        if not events[arg1].field_2304 + events[arg1].field_2048:
                                            require events[arg1].field_2304 > 0
                                            require events[arg1].field_2304
                                            events[arg1].field_2816 = 0 / events[arg1].field_2304
                                        else:
                                            require events[arg1].field_2304 + events[arg1].field_2048
                                            require (events[arg1].field_2304 * stor4) + (events[arg1].field_2048 * stor4) / events[arg1].field_2304 + events[arg1].field_2048 == stor4
                                            require events[arg1].field_2304 > 0
                                            require events[arg1].field_2304
                                            events[arg1].field_2816 = (events[arg1].field_2304 * stor4) + (events[arg1].field_2048 * stor4) / events[arg1].field_2304
                                    else:
                                        require events[arg1].field_2048
                                        require events[arg1].field_2048 * stor5 / events[arg1].field_2048 == stor5
                                        require events[arg1].field_2048 * stor5 / 1000 <= events[arg1].field_2048
                                        require events[arg1].field_2304 + events[arg1].field_2048 - (events[arg1].field_2048 * stor5 / 1000) >= events[arg1].field_2304
                                        events[arg1].field_1792 = 1
                                        events[arg1].field_1536 = arg2
                                        require events[arg1].field_2048 > 0
                                        require events[arg1].field_2048
                                        events[arg1].field_2560 = 0 / events[arg1].field_2048
                                        if not events[arg1].field_2304 + events[arg1].field_2048 - (events[arg1].field_2048 * stor5 / 1000):
                                            require events[arg1].field_2304 > 0
                                            require events[arg1].field_2304
                                            events[arg1].field_2816 = 0 / events[arg1].field_2304
                                        else:
                                            require events[arg1].field_2304 + events[arg1].field_2048 - (events[arg1].field_2048 * stor5 / 1000)
                                            require (events[arg1].field_2304 * stor4) + (events[arg1].field_2048 * stor4) - (events[arg1].field_2048 * stor5 / 1000 * stor4) / events[arg1].field_2304 + events[arg1].field_2048 - (events[arg1].field_2048 * stor5 / 1000) == stor4
                                            require events[arg1].field_2304 > 0
                                            require events[arg1].field_2304
                                            events[arg1].field_2816 = (events[arg1].field_2304 * stor4) + (events[arg1].field_2048 * stor4) - (events[arg1].field_2048 * stor5 / 1000 * stor4) / events[arg1].field_2304
                                else:
                                    if not events[arg1].field_2048:
                                        require stor4 > 0
                                        require stor4
                                        require 0 / stor4 <= events[arg1].field_2048
                                        if not 0 / stor4:
                                            require 0 <= 0 / stor4
                                            require events[arg1].field_2304 + (0 / stor4) >= events[arg1].field_2304
                                            events[arg1].field_1792 = 1
                                            events[arg1].field_1536 = arg2
                                            if not events[arg1].field_2048 - (0 / stor4):
                                                require events[arg1].field_2048 > 0
                                                require events[arg1].field_2048
                                                events[arg1].field_2560 = 0 / events[arg1].field_2048
                                            else:
                                                require events[arg1].field_2048 - (0 / stor4)
                                                require (events[arg1].field_2048 * stor4) - (0 / stor4 * stor4) / events[arg1].field_2048 - (0 / stor4) == stor4
                                                require events[arg1].field_2048 > 0
                                                require events[arg1].field_2048
                                                events[arg1].field_2560 = (events[arg1].field_2048 * stor4) - (0 / stor4 * stor4) / events[arg1].field_2048
                                            if not events[arg1].field_2304 + (0 / stor4):
                                                require events[arg1].field_2304 > 0
                                                require events[arg1].field_2304
                                                events[arg1].field_2816 = 0 / events[arg1].field_2304
                                            else:
                                                require events[arg1].field_2304 + (0 / stor4)
                                                require (events[arg1].field_2304 * stor4) + (0 / stor4 * stor4) / events[arg1].field_2304 + (0 / stor4) == stor4
                                                require events[arg1].field_2304 > 0
                                                require events[arg1].field_2304
                                                events[arg1].field_2816 = (events[arg1].field_2304 * stor4) + (0 / stor4 * stor4) / events[arg1].field_2304
                                        else:
                                            require 0 / stor4
                                            require 0 / stor4 * stor5 / 0 / stor4 == stor5
                                            require 0 / stor4 * stor5 / 1000 <= 0 / stor4
                                            require events[arg1].field_2304 + (0 / stor4) - (0 / stor4 * stor5 / 1000) >= events[arg1].field_2304
                                            events[arg1].field_1792 = 1
                                            events[arg1].field_1536 = arg2
                                            if not events[arg1].field_2048 - (0 / stor4):
                                                require events[arg1].field_2048 > 0
                                                require events[arg1].field_2048
                                                events[arg1].field_2560 = 0 / events[arg1].field_2048
                                            else:
                                                require events[arg1].field_2048 - (0 / stor4)
                                                require (events[arg1].field_2048 * stor4) - (0 / stor4 * stor4) / events[arg1].field_2048 - (0 / stor4) == stor4
                                                require events[arg1].field_2048 > 0
                                                require events[arg1].field_2048
                                                events[arg1].field_2560 = (events[arg1].field_2048 * stor4) - (0 / stor4 * stor4) / events[arg1].field_2048
                                            if not events[arg1].field_2304 + (0 / stor4) - (0 / stor4 * stor5 / 1000):
                                                require events[arg1].field_2304 > 0
                                                require events[arg1].field_2304
                                                events[arg1].field_2816 = 0 / events[arg1].field_2304
                                            else:
                                                require events[arg1].field_2304 + (0 / stor4) - (0 / stor4 * stor5 / 1000)
                                                require (events[arg1].field_2304 * stor4) + (0 / stor4 * stor4) - (0 / stor4 * stor5 / 1000 * stor4) / events[arg1].field_2304 + (0 / stor4) - (0 / stor4 * stor5 / 1000) == stor4
                                                require events[arg1].field_2304 > 0
                                                require events[arg1].field_2304
                                                events[arg1].field_2816 = (events[arg1].field_2304 * stor4) + (0 / stor4 * stor4) - (0 / stor4 * stor5 / 1000 * stor4) / events[arg1].field_2304
                                    else:
                                        require events[arg1].field_2048
                                        require events[arg1].field_2048 * (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / events[arg1].field_2048 == (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072
                                        require stor4 > 0
                                        require stor4
                                        require events[arg1].field_2048 * (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4 <= events[arg1].field_2048
                                        if not events[arg1].field_2048 * (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4:
                                            require 0 <= events[arg1].field_2048 * (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4
                                            require events[arg1].field_2304 + (events[arg1].field_2048 * (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4) >= events[arg1].field_2304
                                            events[arg1].field_1792 = 1
                                            events[arg1].field_1536 = arg2
                                            if not events[arg1].field_2048 - (events[arg1].field_2048 * (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4):
                                                require events[arg1].field_2048 > 0
                                                require events[arg1].field_2048
                                                events[arg1].field_2560 = 0 / events[arg1].field_2048
                                            else:
                                                require events[arg1].field_2048 - (events[arg1].field_2048 * (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4)
                                                require (events[arg1].field_2048 * stor4) - (events[arg1].field_2048 * (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor4) / events[arg1].field_2048 - (events[arg1].field_2048 * (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4) == stor4
                                                require events[arg1].field_2048 > 0
                                                require events[arg1].field_2048
                                                events[arg1].field_2560 = (events[arg1].field_2048 * stor4) - (events[arg1].field_2048 * (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor4) / events[arg1].field_2048
                                            if not events[arg1].field_2304 + (events[arg1].field_2048 * (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4):
                                                require events[arg1].field_2304 > 0
                                                require events[arg1].field_2304
                                                events[arg1].field_2816 = 0 / events[arg1].field_2304
                                            else:
                                                require events[arg1].field_2304 + (events[arg1].field_2048 * (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4)
                                                require (events[arg1].field_2304 * stor4) + (events[arg1].field_2048 * (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor4) / events[arg1].field_2304 + (events[arg1].field_2048 * (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4) == stor4
                                                require events[arg1].field_2304 > 0
                                                require events[arg1].field_2304
                                                events[arg1].field_2816 = (events[arg1].field_2304 * stor4) + (events[arg1].field_2048 * (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor4) / events[arg1].field_2304
                                        else:
                                            require events[arg1].field_2048 * (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4
                                            require events[arg1].field_2048 * (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor5 / events[arg1].field_2048 * (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4 == stor5
                                            require events[arg1].field_2048 * (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor5 / 1000 <= events[arg1].field_2048 * (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4
                                            require events[arg1].field_2304 + (events[arg1].field_2048 * (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4) - (events[arg1].field_2048 * (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor5 / 1000) >= events[arg1].field_2304
                                            events[arg1].field_1792 = 1
                                            events[arg1].field_1536 = arg2
                                            if not events[arg1].field_2048 - (events[arg1].field_2048 * (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4):
                                                require events[arg1].field_2048 > 0
                                                require events[arg1].field_2048
                                                events[arg1].field_2560 = 0 / events[arg1].field_2048
                                            else:
                                                require events[arg1].field_2048 - (events[arg1].field_2048 * (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4)
                                                require (events[arg1].field_2048 * stor4) - (events[arg1].field_2048 * (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor4) / events[arg1].field_2048 - (events[arg1].field_2048 * (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4) == stor4
                                                require events[arg1].field_2048 > 0
                                                require events[arg1].field_2048
                                                events[arg1].field_2560 = (events[arg1].field_2048 * stor4) - (events[arg1].field_2048 * (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor4) / events[arg1].field_2048
                                            if not events[arg1].field_2304 + (events[arg1].field_2048 * (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4) - (events[arg1].field_2048 * (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor5 / 1000):
                                                require events[arg1].field_2304 > 0
                                                require events[arg1].field_2304
                                                events[arg1].field_2816 = 0 / events[arg1].field_2304
                                            else:
                                                require events[arg1].field_2304 + (events[arg1].field_2048 * (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4) - (events[arg1].field_2048 * (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor5 / 1000)
                                                require (events[arg1].field_2304 * stor4) + (events[arg1].field_2048 * (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor4) - (events[arg1].field_2048 * (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor5 / 1000 * stor4) / events[arg1].field_2304 + (events[arg1].field_2048 * (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4) - (events[arg1].field_2048 * (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor5 / 1000) == stor4
                                                require events[arg1].field_2304 > 0
                                                require events[arg1].field_2304
                                                events[arg1].field_2816 = (events[arg1].field_2304 * stor4) + (events[arg1].field_2048 * (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor4) - (events[arg1].field_2048 * (arg2 * stor4) - (events[arg1].field_1280 * stor4) / events[arg1].field_1280 * events[arg1].field_3072 / stor4 * stor5 / 1000 * stor4) / events[arg1].field_2304
    return 1
}



}
