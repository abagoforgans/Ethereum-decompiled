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
array of struct markets;
mapping of uint8 stor8;
uint256 numMarkets;

function name() {
    return name[0 len name.length]
}

function numMarkets() {
    return numMarkets
}

function sub_3790ea62(?) {
    return bool(stor8[arg1])
}

function version() {
    return version
}

function paused() {
    return bool(uint8(stor0.field_160))
}

function owner() {
    return owner
}

function markets(uint256 arg1) {
    mem[128] = markets[arg1].field_0
    idx = 128
    s = 0
    while markets[arg1].length + 96 > idx:
        mem[idx + 32] = markets[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=markets[arg1].length, data=mem[128 len markets[arg1].length]), 
           markets[arg1].field_256,
           markets[arg1].field_512,
           markets[arg1].field_768,
           markets[arg1].field_1024,
           bool(markets[arg1].field_1280),
           markets[arg1].field_1536,
           markets[arg1].field_1792,
           markets[arg1].field_2048,
           markets[arg1].field_2304,
           markets[arg1].field_2560
}

function sub_b560a4ac(?) {
    return markets[arg2][12][address(arg1)].field_0
}

function sub_f2d4b020(?) {
    return markets[arg2][11][address(arg1)].field_0
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
    markets[arg1].field_768 = arg2
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

function sub_e651b778(?) {
    idx = 832
    s = 0
    while markets[arg1].length + 800 > idx:
        mem[idx + 32] = markets[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if block.timestamp >= markets[arg1].field_256:
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
    idx = 832
    s = 0
    while markets[arg1].length + 800 > idx:
        mem[idx + 32] = markets[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if block.timestamp <= markets[arg1].field_512:
        return 0
    if bool(markets[arg1].field_1280) != 1:
        return 0
    return 1
}

function sub_5aaf9788(?) {
    if not stor8[address(msg.sender)]:
        stor8[address(msg.sender)] = 1
    require block.timestamp < markets[arg1].field_256
    require markets[arg1].field_1536 + arg2 >= markets[arg1].field_1536
    markets[arg1].field_1536 += arg2
    require markets[arg1][11][address(msg.sender)].field_0 + arg2 >= markets[arg1][11][address(msg.sender)].field_0
    markets[arg1][11][address(msg.sender)].field_0 += arg2
    return 1
}

function sub_bc529119(?) {
    if not stor8[address(msg.sender)]:
        stor8[address(msg.sender)] = 1
    require block.timestamp < markets[arg1].field_256
    require markets[arg1].field_1792 + arg2 >= markets[arg1].field_1792
    markets[arg1].field_1792 += arg2
    require markets[arg1][12][address(msg.sender)].field_0 + arg2 >= markets[arg1][12][address(msg.sender)].field_0
    markets[arg1][12][address(msg.sender)].field_0 += arg2
    return 1
}

function sub_098fc1ed(?) {
    require msg.sender == owner
    markets[stor9][].field_0 = Array(len=arg1.length, data=arg1[all])
    markets[stor9].field_256 = arg2
    markets[stor9].field_512 = arg3
    markets[stor9].field_768 = 0
    markets[stor9].field_1024 = 0
    markets[stor9].field_1280 = 0
    markets[stor9].field_1536 = 0
    markets[stor9].field_1792 = 0
    markets[stor9].field_2048 = 0
    markets[stor9].field_2304 = 0
    markets[stor9].field_2560 = arg4
    numMarkets++
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

function sub_62e68550(?) {
    require block.timestamp > markets[arg1].field_512
    require bool(markets[arg1].field_1280) == 1
    require bool(stor8[address(msg.sender)]) == 1
    if not markets[arg1][12][address(msg.sender)].field_0:
        require stor4 > 0
        require stor4
        require 0 / stor4 <= 0 / stor4
    else:
        require markets[arg1][12][address(msg.sender)].field_0
        require markets[arg1][12][address(msg.sender)].field_0 * markets[arg1].field_2304 / markets[arg1][12][address(msg.sender)].field_0 == markets[arg1].field_2304
        require stor4 > 0
        require stor4
        require markets[arg1][12][address(msg.sender)].field_0 * markets[arg1].field_2304 / stor4 <= markets[arg1][12][address(msg.sender)].field_0 * markets[arg1].field_2304 / stor4
    markets[arg1][12][address(msg.sender)].field_0 = 0
    return 1
}

function sub_caacbb17(?) {
    require block.timestamp > markets[arg1].field_512
    require bool(markets[arg1].field_1280) == 1
    require bool(stor8[address(msg.sender)]) == 1
    if not markets[arg1][11][address(msg.sender)].field_0:
        require stor4 > 0
        require stor4
        require 0 / stor4 <= 0 / stor4
    else:
        require markets[arg1][11][address(msg.sender)].field_0
        require markets[arg1][11][address(msg.sender)].field_0 * markets[arg1].field_2048 / markets[arg1][11][address(msg.sender)].field_0 == markets[arg1].field_2048
        require stor4 > 0
        require stor4
        require markets[arg1][11][address(msg.sender)].field_0 * markets[arg1].field_2048 / stor4 <= markets[arg1][11][address(msg.sender)].field_0 * markets[arg1].field_2048 / stor4
    markets[arg1][11][address(msg.sender)].field_0 = 0
    return 1
}

function sub_fcaad80d(?) {
    require msg.sender == owner
    require block.timestamp > markets[arg1].field_512
    require not markets[arg1].field_1280
    require markets[arg1].field_768 > 0
    if not markets[arg1].field_1792:
        markets[arg1].field_2048 = stor4
        markets[arg1].field_2304 = stor4
        markets[arg1].field_1024 = arg2
        markets[arg1].field_1280 = 1
    else:
        if not markets[arg1].field_1536:
            markets[arg1].field_2048 = stor4
            markets[arg1].field_2304 = stor4
            markets[arg1].field_1024 = arg2
            markets[arg1].field_1280 = 1
        else:
            if markets[arg1].field_768 == arg2:
                markets[arg1].field_2048 = stor4
                markets[arg1].field_2304 = stor4
                markets[arg1].field_1024 = arg2
                markets[arg1].field_1280 = 1
            else:
                if arg2 <= markets[arg1].field_768:
                    if not markets[arg1].field_768 - arg2:
                        require markets[arg1].field_768 > 0
                        require markets[arg1].field_768
                        if not 0 / markets[arg1].field_768:
                            if not stor4:
                                require markets[arg1].field_1792 <= markets[arg1].field_1792
                                if not markets[arg1].field_1792:
                                    require 0 <= markets[arg1].field_1792
                                    require markets[arg1].field_1536 + markets[arg1].field_1792 >= markets[arg1].field_1536
                                    markets[arg1].field_1280 = 1
                                    markets[arg1].field_1024 = arg2
                                    if not markets[arg1].field_1536 + markets[arg1].field_1792:
                                        require markets[arg1].field_1536 > 0
                                        require markets[arg1].field_1536
                                        markets[arg1].field_2048 = 0 / markets[arg1].field_1536
                                    else:
                                        require markets[arg1].field_1536 + markets[arg1].field_1792
                                        require (markets[arg1].field_1536 * stor4) + (markets[arg1].field_1792 * stor4) / markets[arg1].field_1536 + markets[arg1].field_1792 == stor4
                                        require markets[arg1].field_1536 > 0
                                        require markets[arg1].field_1536
                                        markets[arg1].field_2048 = (markets[arg1].field_1536 * stor4) + (markets[arg1].field_1792 * stor4) / markets[arg1].field_1536
                                else:
                                    require markets[arg1].field_1792
                                    require markets[arg1].field_1792 * stor5 / markets[arg1].field_1792 == stor5
                                    require markets[arg1].field_1792 * stor5 / 1000 <= markets[arg1].field_1792
                                    require markets[arg1].field_1536 + markets[arg1].field_1792 - (markets[arg1].field_1792 * stor5 / 1000) >= markets[arg1].field_1536
                                    markets[arg1].field_1280 = 1
                                    markets[arg1].field_1024 = arg2
                                    if not markets[arg1].field_1536 + markets[arg1].field_1792 - (markets[arg1].field_1792 * stor5 / 1000):
                                        require markets[arg1].field_1536 > 0
                                        require markets[arg1].field_1536
                                        markets[arg1].field_2048 = 0 / markets[arg1].field_1536
                                    else:
                                        require markets[arg1].field_1536 + markets[arg1].field_1792 - (markets[arg1].field_1792 * stor5 / 1000)
                                        require (markets[arg1].field_1536 * stor4) + (markets[arg1].field_1792 * stor4) - (markets[arg1].field_1792 * stor5 / 1000 * stor4) / markets[arg1].field_1536 + markets[arg1].field_1792 - (markets[arg1].field_1792 * stor5 / 1000) == stor4
                                        require markets[arg1].field_1536 > 0
                                        require markets[arg1].field_1536
                                        markets[arg1].field_2048 = (markets[arg1].field_1536 * stor4) + (markets[arg1].field_1792 * stor4) - (markets[arg1].field_1792 * stor5 / 1000 * stor4) / markets[arg1].field_1536
                                require markets[arg1].field_1792 > 0
                                require markets[arg1].field_1792
                                markets[arg1].field_2304 = 0 / markets[arg1].field_1792
                            else:
                                require stor4
                                require 100 * stor4 / stor4 == 100
                                if 0 >= 100 * stor4:
                                    require markets[arg1].field_1792 <= markets[arg1].field_1792
                                    if not markets[arg1].field_1792:
                                        require 0 <= markets[arg1].field_1792
                                        require markets[arg1].field_1536 + markets[arg1].field_1792 >= markets[arg1].field_1536
                                        markets[arg1].field_1280 = 1
                                        markets[arg1].field_1024 = arg2
                                        if not markets[arg1].field_1536 + markets[arg1].field_1792:
                                            require markets[arg1].field_1536 > 0
                                            require markets[arg1].field_1536
                                            markets[arg1].field_2048 = 0 / markets[arg1].field_1536
                                        else:
                                            require markets[arg1].field_1536 + markets[arg1].field_1792
                                            require (markets[arg1].field_1536 * stor4) + (markets[arg1].field_1792 * stor4) / markets[arg1].field_1536 + markets[arg1].field_1792 == stor4
                                            require markets[arg1].field_1536 > 0
                                            require markets[arg1].field_1536
                                            markets[arg1].field_2048 = (markets[arg1].field_1536 * stor4) + (markets[arg1].field_1792 * stor4) / markets[arg1].field_1536
                                    else:
                                        require markets[arg1].field_1792
                                        require markets[arg1].field_1792 * stor5 / markets[arg1].field_1792 == stor5
                                        require markets[arg1].field_1792 * stor5 / 1000 <= markets[arg1].field_1792
                                        require markets[arg1].field_1536 + markets[arg1].field_1792 - (markets[arg1].field_1792 * stor5 / 1000) >= markets[arg1].field_1536
                                        markets[arg1].field_1280 = 1
                                        markets[arg1].field_1024 = arg2
                                        if not markets[arg1].field_1536 + markets[arg1].field_1792 - (markets[arg1].field_1792 * stor5 / 1000):
                                            require markets[arg1].field_1536 > 0
                                            require markets[arg1].field_1536
                                            markets[arg1].field_2048 = 0 / markets[arg1].field_1536
                                        else:
                                            require markets[arg1].field_1536 + markets[arg1].field_1792 - (markets[arg1].field_1792 * stor5 / 1000)
                                            require (markets[arg1].field_1536 * stor4) + (markets[arg1].field_1792 * stor4) - (markets[arg1].field_1792 * stor5 / 1000 * stor4) / markets[arg1].field_1536 + markets[arg1].field_1792 - (markets[arg1].field_1792 * stor5 / 1000) == stor4
                                            require markets[arg1].field_1536 > 0
                                            require markets[arg1].field_1536
                                            markets[arg1].field_2048 = (markets[arg1].field_1536 * stor4) + (markets[arg1].field_1792 * stor4) - (markets[arg1].field_1792 * stor5 / 1000 * stor4) / markets[arg1].field_1536
                                    require markets[arg1].field_1792 > 0
                                    require markets[arg1].field_1792
                                    markets[arg1].field_2304 = 0 / markets[arg1].field_1792
                                else:
                                    if markets[arg1].field_1792:
                                        require markets[arg1].field_1792
                                        require not 0 / markets[arg1].field_1792
                                    require stor4 > 0
                                    require stor4
                                    require 0 / stor4 <= markets[arg1].field_1792
                                    if not 0 / stor4:
                                        require 0 <= 0 / stor4
                                        require markets[arg1].field_1536 + (0 / stor4) >= markets[arg1].field_1536
                                        markets[arg1].field_1280 = 1
                                        markets[arg1].field_1024 = arg2
                                        if not markets[arg1].field_1536 + (0 / stor4):
                                            require markets[arg1].field_1536 > 0
                                            require markets[arg1].field_1536
                                            markets[arg1].field_2048 = 0 / markets[arg1].field_1536
                                        else:
                                            require markets[arg1].field_1536 + (0 / stor4)
                                            require (markets[arg1].field_1536 * stor4) + (0 / stor4 * stor4) / markets[arg1].field_1536 + (0 / stor4) == stor4
                                            require markets[arg1].field_1536 > 0
                                            require markets[arg1].field_1536
                                            markets[arg1].field_2048 = (markets[arg1].field_1536 * stor4) + (0 / stor4 * stor4) / markets[arg1].field_1536
                                    else:
                                        require 0 / stor4
                                        require 0 / stor4 * stor5 / 0 / stor4 == stor5
                                        require 0 / stor4 * stor5 / 1000 <= 0 / stor4
                                        require markets[arg1].field_1536 + (0 / stor4) - (0 / stor4 * stor5 / 1000) >= markets[arg1].field_1536
                                        markets[arg1].field_1280 = 1
                                        markets[arg1].field_1024 = arg2
                                        if not markets[arg1].field_1536 + (0 / stor4) - (0 / stor4 * stor5 / 1000):
                                            require markets[arg1].field_1536 > 0
                                            require markets[arg1].field_1536
                                            markets[arg1].field_2048 = 0 / markets[arg1].field_1536
                                        else:
                                            require markets[arg1].field_1536 + (0 / stor4) - (0 / stor4 * stor5 / 1000)
                                            require (markets[arg1].field_1536 * stor4) + (0 / stor4 * stor4) - (0 / stor4 * stor5 / 1000 * stor4) / markets[arg1].field_1536 + (0 / stor4) - (0 / stor4 * stor5 / 1000) == stor4
                                            require markets[arg1].field_1536 > 0
                                            require markets[arg1].field_1536
                                            markets[arg1].field_2048 = (markets[arg1].field_1536 * stor4) + (0 / stor4 * stor4) - (0 / stor4 * stor5 / 1000 * stor4) / markets[arg1].field_1536
                                    if not markets[arg1].field_1792 - (0 / stor4):
                                        require markets[arg1].field_1792 > 0
                                        require markets[arg1].field_1792
                                        markets[arg1].field_2304 = 0 / markets[arg1].field_1792
                                    else:
                                        require markets[arg1].field_1792 - (0 / stor4)
                                        require (markets[arg1].field_1792 * stor4) - (0 / stor4 * stor4) / markets[arg1].field_1792 - (0 / stor4) == stor4
                                        require markets[arg1].field_1792 > 0
                                        require markets[arg1].field_1792
                                        markets[arg1].field_2304 = (markets[arg1].field_1792 * stor4) - (0 / stor4 * stor4) / markets[arg1].field_1792
                        else:
                            require 0 / markets[arg1].field_768
                            require 0 / markets[arg1].field_768 * markets[arg1].field_2560 / 0 / markets[arg1].field_768 == markets[arg1].field_2560
                            if not stor4:
                                if 0 / markets[arg1].field_768 * markets[arg1].field_2560 >= 0:
                                    require markets[arg1].field_1792 <= markets[arg1].field_1792
                                    if not markets[arg1].field_1792:
                                        require 0 <= markets[arg1].field_1792
                                        require markets[arg1].field_1536 + markets[arg1].field_1792 >= markets[arg1].field_1536
                                        markets[arg1].field_1280 = 1
                                        markets[arg1].field_1024 = arg2
                                        if not markets[arg1].field_1536 + markets[arg1].field_1792:
                                            require markets[arg1].field_1536 > 0
                                            require markets[arg1].field_1536
                                            markets[arg1].field_2048 = 0 / markets[arg1].field_1536
                                        else:
                                            require markets[arg1].field_1536 + markets[arg1].field_1792
                                            require (markets[arg1].field_1536 * stor4) + (markets[arg1].field_1792 * stor4) / markets[arg1].field_1536 + markets[arg1].field_1792 == stor4
                                            require markets[arg1].field_1536 > 0
                                            require markets[arg1].field_1536
                                            markets[arg1].field_2048 = (markets[arg1].field_1536 * stor4) + (markets[arg1].field_1792 * stor4) / markets[arg1].field_1536
                                    else:
                                        require markets[arg1].field_1792
                                        require markets[arg1].field_1792 * stor5 / markets[arg1].field_1792 == stor5
                                        require markets[arg1].field_1792 * stor5 / 1000 <= markets[arg1].field_1792
                                        require markets[arg1].field_1536 + markets[arg1].field_1792 - (markets[arg1].field_1792 * stor5 / 1000) >= markets[arg1].field_1536
                                        markets[arg1].field_1280 = 1
                                        markets[arg1].field_1024 = arg2
                                        if not markets[arg1].field_1536 + markets[arg1].field_1792 - (markets[arg1].field_1792 * stor5 / 1000):
                                            require markets[arg1].field_1536 > 0
                                            require markets[arg1].field_1536
                                            markets[arg1].field_2048 = 0 / markets[arg1].field_1536
                                        else:
                                            require markets[arg1].field_1536 + markets[arg1].field_1792 - (markets[arg1].field_1792 * stor5 / 1000)
                                            require (markets[arg1].field_1536 * stor4) + (markets[arg1].field_1792 * stor4) - (markets[arg1].field_1792 * stor5 / 1000 * stor4) / markets[arg1].field_1536 + markets[arg1].field_1792 - (markets[arg1].field_1792 * stor5 / 1000) == stor4
                                            require markets[arg1].field_1536 > 0
                                            require markets[arg1].field_1536
                                            markets[arg1].field_2048 = (markets[arg1].field_1536 * stor4) + (markets[arg1].field_1792 * stor4) - (markets[arg1].field_1792 * stor5 / 1000 * stor4) / markets[arg1].field_1536
                                    require markets[arg1].field_1792 > 0
                                    require markets[arg1].field_1792
                                    markets[arg1].field_2304 = 0 / markets[arg1].field_1792
                                else:
                                    if not markets[arg1].field_1792:
                                        require stor4 > 0
                                        require stor4
                                        require 0 / stor4 <= markets[arg1].field_1792
                                        if not 0 / stor4:
                                            require 0 <= 0 / stor4
                                            require markets[arg1].field_1536 + (0 / stor4) >= markets[arg1].field_1536
                                            markets[arg1].field_1280 = 1
                                            markets[arg1].field_1024 = arg2
                                            if not markets[arg1].field_1536 + (0 / stor4):
                                                require markets[arg1].field_1536 > 0
                                                require markets[arg1].field_1536
                                                markets[arg1].field_2048 = 0 / markets[arg1].field_1536
                                            else:
                                                require markets[arg1].field_1536 + (0 / stor4)
                                                require (markets[arg1].field_1536 * stor4) + (0 / stor4 * stor4) / markets[arg1].field_1536 + (0 / stor4) == stor4
                                                require markets[arg1].field_1536 > 0
                                                require markets[arg1].field_1536
                                                markets[arg1].field_2048 = (markets[arg1].field_1536 * stor4) + (0 / stor4 * stor4) / markets[arg1].field_1536
                                        else:
                                            require 0 / stor4
                                            require 0 / stor4 * stor5 / 0 / stor4 == stor5
                                            require 0 / stor4 * stor5 / 1000 <= 0 / stor4
                                            require markets[arg1].field_1536 + (0 / stor4) - (0 / stor4 * stor5 / 1000) >= markets[arg1].field_1536
                                            markets[arg1].field_1280 = 1
                                            markets[arg1].field_1024 = arg2
                                            if not markets[arg1].field_1536 + (0 / stor4) - (0 / stor4 * stor5 / 1000):
                                                require markets[arg1].field_1536 > 0
                                                require markets[arg1].field_1536
                                                markets[arg1].field_2048 = 0 / markets[arg1].field_1536
                                            else:
                                                require markets[arg1].field_1536 + (0 / stor4) - (0 / stor4 * stor5 / 1000)
                                                require (markets[arg1].field_1536 * stor4) + (0 / stor4 * stor4) - (0 / stor4 * stor5 / 1000 * stor4) / markets[arg1].field_1536 + (0 / stor4) - (0 / stor4 * stor5 / 1000) == stor4
                                                require markets[arg1].field_1536 > 0
                                                require markets[arg1].field_1536
                                                markets[arg1].field_2048 = (markets[arg1].field_1536 * stor4) + (0 / stor4 * stor4) - (0 / stor4 * stor5 / 1000 * stor4) / markets[arg1].field_1536
                                        if not markets[arg1].field_1792 - (0 / stor4):
                                            require markets[arg1].field_1792 > 0
                                            require markets[arg1].field_1792
                                            markets[arg1].field_2304 = 0 / markets[arg1].field_1792
                                        else:
                                            require markets[arg1].field_1792 - (0 / stor4)
                                            require (markets[arg1].field_1792 * stor4) - (0 / stor4 * stor4) / markets[arg1].field_1792 - (0 / stor4) == stor4
                                            require markets[arg1].field_1792 > 0
                                            require markets[arg1].field_1792
                                            markets[arg1].field_2304 = (markets[arg1].field_1792 * stor4) - (0 / stor4 * stor4) / markets[arg1].field_1792
                                    else:
                                        require markets[arg1].field_1792
                                        require markets[arg1].field_1792 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / markets[arg1].field_1792 == 0 / markets[arg1].field_768 * markets[arg1].field_2560
                                        require stor4 > 0
                                        require stor4
                                        require markets[arg1].field_1792 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 <= markets[arg1].field_1792
                                        if not markets[arg1].field_1792 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4:
                                            require 0 <= markets[arg1].field_1792 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4
                                            require markets[arg1].field_1536 + (markets[arg1].field_1792 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4) >= markets[arg1].field_1536
                                            markets[arg1].field_1280 = 1
                                            markets[arg1].field_1024 = arg2
                                            if not markets[arg1].field_1536 + (markets[arg1].field_1792 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4):
                                                require markets[arg1].field_1536 > 0
                                                require markets[arg1].field_1536
                                                markets[arg1].field_2048 = 0 / markets[arg1].field_1536
                                            else:
                                                require markets[arg1].field_1536 + (markets[arg1].field_1792 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4)
                                                require (markets[arg1].field_1536 * stor4) + (markets[arg1].field_1792 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor4) / markets[arg1].field_1536 + (markets[arg1].field_1792 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4) == stor4
                                                require markets[arg1].field_1536 > 0
                                                require markets[arg1].field_1536
                                                markets[arg1].field_2048 = (markets[arg1].field_1536 * stor4) + (markets[arg1].field_1792 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor4) / markets[arg1].field_1536
                                        else:
                                            require markets[arg1].field_1792 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4
                                            require markets[arg1].field_1792 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor5 / markets[arg1].field_1792 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 == stor5
                                            require markets[arg1].field_1792 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor5 / 1000 <= markets[arg1].field_1792 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4
                                            require markets[arg1].field_1536 + (markets[arg1].field_1792 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4) - (markets[arg1].field_1792 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor5 / 1000) >= markets[arg1].field_1536
                                            markets[arg1].field_1280 = 1
                                            markets[arg1].field_1024 = arg2
                                            if not markets[arg1].field_1536 + (markets[arg1].field_1792 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4) - (markets[arg1].field_1792 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor5 / 1000):
                                                require markets[arg1].field_1536 > 0
                                                require markets[arg1].field_1536
                                                markets[arg1].field_2048 = 0 / markets[arg1].field_1536
                                            else:
                                                require markets[arg1].field_1536 + (markets[arg1].field_1792 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4) - (markets[arg1].field_1792 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor5 / 1000)
                                                require (markets[arg1].field_1536 * stor4) + (markets[arg1].field_1792 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor4) - (markets[arg1].field_1792 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor5 / 1000 * stor4) / markets[arg1].field_1536 + (markets[arg1].field_1792 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4) - (markets[arg1].field_1792 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor5 / 1000) == stor4
                                                require markets[arg1].field_1536 > 0
                                                require markets[arg1].field_1536
                                                markets[arg1].field_2048 = (markets[arg1].field_1536 * stor4) + (markets[arg1].field_1792 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor4) - (markets[arg1].field_1792 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor5 / 1000 * stor4) / markets[arg1].field_1536
                                        if not markets[arg1].field_1792 - (markets[arg1].field_1792 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4):
                                            require markets[arg1].field_1792 > 0
                                            require markets[arg1].field_1792
                                            markets[arg1].field_2304 = 0 / markets[arg1].field_1792
                                        else:
                                            require markets[arg1].field_1792 - (markets[arg1].field_1792 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4)
                                            require (markets[arg1].field_1792 * stor4) - (markets[arg1].field_1792 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor4) / markets[arg1].field_1792 - (markets[arg1].field_1792 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4) == stor4
                                            require markets[arg1].field_1792 > 0
                                            require markets[arg1].field_1792
                                            markets[arg1].field_2304 = (markets[arg1].field_1792 * stor4) - (markets[arg1].field_1792 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor4) / markets[arg1].field_1792
                            else:
                                require stor4
                                require 100 * stor4 / stor4 == 100
                                if 0 / markets[arg1].field_768 * markets[arg1].field_2560 >= 100 * stor4:
                                    require markets[arg1].field_1792 <= markets[arg1].field_1792
                                    if not markets[arg1].field_1792:
                                        require 0 <= markets[arg1].field_1792
                                        require markets[arg1].field_1536 + markets[arg1].field_1792 >= markets[arg1].field_1536
                                        markets[arg1].field_1280 = 1
                                        markets[arg1].field_1024 = arg2
                                        if not markets[arg1].field_1536 + markets[arg1].field_1792:
                                            require markets[arg1].field_1536 > 0
                                            require markets[arg1].field_1536
                                            markets[arg1].field_2048 = 0 / markets[arg1].field_1536
                                        else:
                                            require markets[arg1].field_1536 + markets[arg1].field_1792
                                            require (markets[arg1].field_1536 * stor4) + (markets[arg1].field_1792 * stor4) / markets[arg1].field_1536 + markets[arg1].field_1792 == stor4
                                            require markets[arg1].field_1536 > 0
                                            require markets[arg1].field_1536
                                            markets[arg1].field_2048 = (markets[arg1].field_1536 * stor4) + (markets[arg1].field_1792 * stor4) / markets[arg1].field_1536
                                    else:
                                        require markets[arg1].field_1792
                                        require markets[arg1].field_1792 * stor5 / markets[arg1].field_1792 == stor5
                                        require markets[arg1].field_1792 * stor5 / 1000 <= markets[arg1].field_1792
                                        require markets[arg1].field_1536 + markets[arg1].field_1792 - (markets[arg1].field_1792 * stor5 / 1000) >= markets[arg1].field_1536
                                        markets[arg1].field_1280 = 1
                                        markets[arg1].field_1024 = arg2
                                        if not markets[arg1].field_1536 + markets[arg1].field_1792 - (markets[arg1].field_1792 * stor5 / 1000):
                                            require markets[arg1].field_1536 > 0
                                            require markets[arg1].field_1536
                                            markets[arg1].field_2048 = 0 / markets[arg1].field_1536
                                        else:
                                            require markets[arg1].field_1536 + markets[arg1].field_1792 - (markets[arg1].field_1792 * stor5 / 1000)
                                            require (markets[arg1].field_1536 * stor4) + (markets[arg1].field_1792 * stor4) - (markets[arg1].field_1792 * stor5 / 1000 * stor4) / markets[arg1].field_1536 + markets[arg1].field_1792 - (markets[arg1].field_1792 * stor5 / 1000) == stor4
                                            require markets[arg1].field_1536 > 0
                                            require markets[arg1].field_1536
                                            markets[arg1].field_2048 = (markets[arg1].field_1536 * stor4) + (markets[arg1].field_1792 * stor4) - (markets[arg1].field_1792 * stor5 / 1000 * stor4) / markets[arg1].field_1536
                                    require markets[arg1].field_1792 > 0
                                    require markets[arg1].field_1792
                                    markets[arg1].field_2304 = 0 / markets[arg1].field_1792
                                else:
                                    if not markets[arg1].field_1792:
                                        require stor4 > 0
                                        require stor4
                                        require 0 / stor4 <= markets[arg1].field_1792
                                        if not 0 / stor4:
                                            require 0 <= 0 / stor4
                                            require markets[arg1].field_1536 + (0 / stor4) >= markets[arg1].field_1536
                                            markets[arg1].field_1280 = 1
                                            markets[arg1].field_1024 = arg2
                                            if not markets[arg1].field_1536 + (0 / stor4):
                                                require markets[arg1].field_1536 > 0
                                                require markets[arg1].field_1536
                                                markets[arg1].field_2048 = 0 / markets[arg1].field_1536
                                            else:
                                                require markets[arg1].field_1536 + (0 / stor4)
                                                require (markets[arg1].field_1536 * stor4) + (0 / stor4 * stor4) / markets[arg1].field_1536 + (0 / stor4) == stor4
                                                require markets[arg1].field_1536 > 0
                                                require markets[arg1].field_1536
                                                markets[arg1].field_2048 = (markets[arg1].field_1536 * stor4) + (0 / stor4 * stor4) / markets[arg1].field_1536
                                        else:
                                            require 0 / stor4
                                            require 0 / stor4 * stor5 / 0 / stor4 == stor5
                                            require 0 / stor4 * stor5 / 1000 <= 0 / stor4
                                            require markets[arg1].field_1536 + (0 / stor4) - (0 / stor4 * stor5 / 1000) >= markets[arg1].field_1536
                                            markets[arg1].field_1280 = 1
                                            markets[arg1].field_1024 = arg2
                                            if not markets[arg1].field_1536 + (0 / stor4) - (0 / stor4 * stor5 / 1000):
                                                require markets[arg1].field_1536 > 0
                                                require markets[arg1].field_1536
                                                markets[arg1].field_2048 = 0 / markets[arg1].field_1536
                                            else:
                                                require markets[arg1].field_1536 + (0 / stor4) - (0 / stor4 * stor5 / 1000)
                                                require (markets[arg1].field_1536 * stor4) + (0 / stor4 * stor4) - (0 / stor4 * stor5 / 1000 * stor4) / markets[arg1].field_1536 + (0 / stor4) - (0 / stor4 * stor5 / 1000) == stor4
                                                require markets[arg1].field_1536 > 0
                                                require markets[arg1].field_1536
                                                markets[arg1].field_2048 = (markets[arg1].field_1536 * stor4) + (0 / stor4 * stor4) - (0 / stor4 * stor5 / 1000 * stor4) / markets[arg1].field_1536
                                        if not markets[arg1].field_1792 - (0 / stor4):
                                            require markets[arg1].field_1792 > 0
                                            require markets[arg1].field_1792
                                            markets[arg1].field_2304 = 0 / markets[arg1].field_1792
                                        else:
                                            require markets[arg1].field_1792 - (0 / stor4)
                                            require (markets[arg1].field_1792 * stor4) - (0 / stor4 * stor4) / markets[arg1].field_1792 - (0 / stor4) == stor4
                                            require markets[arg1].field_1792 > 0
                                            require markets[arg1].field_1792
                                            markets[arg1].field_2304 = (markets[arg1].field_1792 * stor4) - (0 / stor4 * stor4) / markets[arg1].field_1792
                                    else:
                                        require markets[arg1].field_1792
                                        require markets[arg1].field_1792 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / markets[arg1].field_1792 == 0 / markets[arg1].field_768 * markets[arg1].field_2560
                                        require stor4 > 0
                                        require stor4
                                        require markets[arg1].field_1792 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 <= markets[arg1].field_1792
                                        if not markets[arg1].field_1792 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4:
                                            require 0 <= markets[arg1].field_1792 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4
                                            require markets[arg1].field_1536 + (markets[arg1].field_1792 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4) >= markets[arg1].field_1536
                                            markets[arg1].field_1280 = 1
                                            markets[arg1].field_1024 = arg2
                                            if not markets[arg1].field_1536 + (markets[arg1].field_1792 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4):
                                                require markets[arg1].field_1536 > 0
                                                require markets[arg1].field_1536
                                                markets[arg1].field_2048 = 0 / markets[arg1].field_1536
                                            else:
                                                require markets[arg1].field_1536 + (markets[arg1].field_1792 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4)
                                                require (markets[arg1].field_1536 * stor4) + (markets[arg1].field_1792 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor4) / markets[arg1].field_1536 + (markets[arg1].field_1792 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4) == stor4
                                                require markets[arg1].field_1536 > 0
                                                require markets[arg1].field_1536
                                                markets[arg1].field_2048 = (markets[arg1].field_1536 * stor4) + (markets[arg1].field_1792 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor4) / markets[arg1].field_1536
                                        else:
                                            require markets[arg1].field_1792 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4
                                            require markets[arg1].field_1792 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor5 / markets[arg1].field_1792 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 == stor5
                                            require markets[arg1].field_1792 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor5 / 1000 <= markets[arg1].field_1792 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4
                                            require markets[arg1].field_1536 + (markets[arg1].field_1792 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4) - (markets[arg1].field_1792 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor5 / 1000) >= markets[arg1].field_1536
                                            markets[arg1].field_1280 = 1
                                            markets[arg1].field_1024 = arg2
                                            if not markets[arg1].field_1536 + (markets[arg1].field_1792 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4) - (markets[arg1].field_1792 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor5 / 1000):
                                                require markets[arg1].field_1536 > 0
                                                require markets[arg1].field_1536
                                                markets[arg1].field_2048 = 0 / markets[arg1].field_1536
                                            else:
                                                require markets[arg1].field_1536 + (markets[arg1].field_1792 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4) - (markets[arg1].field_1792 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor5 / 1000)
                                                require (markets[arg1].field_1536 * stor4) + (markets[arg1].field_1792 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor4) - (markets[arg1].field_1792 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor5 / 1000 * stor4) / markets[arg1].field_1536 + (markets[arg1].field_1792 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4) - (markets[arg1].field_1792 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor5 / 1000) == stor4
                                                require markets[arg1].field_1536 > 0
                                                require markets[arg1].field_1536
                                                markets[arg1].field_2048 = (markets[arg1].field_1536 * stor4) + (markets[arg1].field_1792 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor4) - (markets[arg1].field_1792 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor5 / 1000 * stor4) / markets[arg1].field_1536
                                        if not markets[arg1].field_1792 - (markets[arg1].field_1792 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4):
                                            require markets[arg1].field_1792 > 0
                                            require markets[arg1].field_1792
                                            markets[arg1].field_2304 = 0 / markets[arg1].field_1792
                                        else:
                                            require markets[arg1].field_1792 - (markets[arg1].field_1792 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4)
                                            require (markets[arg1].field_1792 * stor4) - (markets[arg1].field_1792 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor4) / markets[arg1].field_1792 - (markets[arg1].field_1792 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4) == stor4
                                            require markets[arg1].field_1792 > 0
                                            require markets[arg1].field_1792
                                            markets[arg1].field_2304 = (markets[arg1].field_1792 * stor4) - (markets[arg1].field_1792 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor4) / markets[arg1].field_1792
                    else:
                        require markets[arg1].field_768 - arg2
                        require (markets[arg1].field_768 * stor4) - (arg2 * stor4) / markets[arg1].field_768 - arg2 == stor4
                        require markets[arg1].field_768 > 0
                        require markets[arg1].field_768
                        if not (markets[arg1].field_768 * stor4) - (arg2 * stor4) / markets[arg1].field_768:
                            if not stor4:
                                require markets[arg1].field_1792 <= markets[arg1].field_1792
                                if not markets[arg1].field_1792:
                                    require 0 <= markets[arg1].field_1792
                                    require markets[arg1].field_1536 + markets[arg1].field_1792 >= markets[arg1].field_1536
                                    markets[arg1].field_1280 = 1
                                    markets[arg1].field_1024 = arg2
                                    if not markets[arg1].field_1536 + markets[arg1].field_1792:
                                        require markets[arg1].field_1536 > 0
                                        require markets[arg1].field_1536
                                        markets[arg1].field_2048 = 0 / markets[arg1].field_1536
                                    else:
                                        require markets[arg1].field_1536 + markets[arg1].field_1792
                                        require (markets[arg1].field_1536 * stor4) + (markets[arg1].field_1792 * stor4) / markets[arg1].field_1536 + markets[arg1].field_1792 == stor4
                                        require markets[arg1].field_1536 > 0
                                        require markets[arg1].field_1536
                                        markets[arg1].field_2048 = (markets[arg1].field_1536 * stor4) + (markets[arg1].field_1792 * stor4) / markets[arg1].field_1536
                                else:
                                    require markets[arg1].field_1792
                                    require markets[arg1].field_1792 * stor5 / markets[arg1].field_1792 == stor5
                                    require markets[arg1].field_1792 * stor5 / 1000 <= markets[arg1].field_1792
                                    require markets[arg1].field_1536 + markets[arg1].field_1792 - (markets[arg1].field_1792 * stor5 / 1000) >= markets[arg1].field_1536
                                    markets[arg1].field_1280 = 1
                                    markets[arg1].field_1024 = arg2
                                    if not markets[arg1].field_1536 + markets[arg1].field_1792 - (markets[arg1].field_1792 * stor5 / 1000):
                                        require markets[arg1].field_1536 > 0
                                        require markets[arg1].field_1536
                                        markets[arg1].field_2048 = 0 / markets[arg1].field_1536
                                    else:
                                        require markets[arg1].field_1536 + markets[arg1].field_1792 - (markets[arg1].field_1792 * stor5 / 1000)
                                        require (markets[arg1].field_1536 * stor4) + (markets[arg1].field_1792 * stor4) - (markets[arg1].field_1792 * stor5 / 1000 * stor4) / markets[arg1].field_1536 + markets[arg1].field_1792 - (markets[arg1].field_1792 * stor5 / 1000) == stor4
                                        require markets[arg1].field_1536 > 0
                                        require markets[arg1].field_1536
                                        markets[arg1].field_2048 = (markets[arg1].field_1536 * stor4) + (markets[arg1].field_1792 * stor4) - (markets[arg1].field_1792 * stor5 / 1000 * stor4) / markets[arg1].field_1536
                                require markets[arg1].field_1792 > 0
                                require markets[arg1].field_1792
                                markets[arg1].field_2304 = 0 / markets[arg1].field_1792
                            else:
                                require stor4
                                require 100 * stor4 / stor4 == 100
                                if 0 >= 100 * stor4:
                                    require markets[arg1].field_1792 <= markets[arg1].field_1792
                                    if not markets[arg1].field_1792:
                                        require 0 <= markets[arg1].field_1792
                                        require markets[arg1].field_1536 + markets[arg1].field_1792 >= markets[arg1].field_1536
                                        markets[arg1].field_1280 = 1
                                        markets[arg1].field_1024 = arg2
                                        if not markets[arg1].field_1536 + markets[arg1].field_1792:
                                            require markets[arg1].field_1536 > 0
                                            require markets[arg1].field_1536
                                            markets[arg1].field_2048 = 0 / markets[arg1].field_1536
                                        else:
                                            require markets[arg1].field_1536 + markets[arg1].field_1792
                                            require (markets[arg1].field_1536 * stor4) + (markets[arg1].field_1792 * stor4) / markets[arg1].field_1536 + markets[arg1].field_1792 == stor4
                                            require markets[arg1].field_1536 > 0
                                            require markets[arg1].field_1536
                                            markets[arg1].field_2048 = (markets[arg1].field_1536 * stor4) + (markets[arg1].field_1792 * stor4) / markets[arg1].field_1536
                                    else:
                                        require markets[arg1].field_1792
                                        require markets[arg1].field_1792 * stor5 / markets[arg1].field_1792 == stor5
                                        require markets[arg1].field_1792 * stor5 / 1000 <= markets[arg1].field_1792
                                        require markets[arg1].field_1536 + markets[arg1].field_1792 - (markets[arg1].field_1792 * stor5 / 1000) >= markets[arg1].field_1536
                                        markets[arg1].field_1280 = 1
                                        markets[arg1].field_1024 = arg2
                                        if not markets[arg1].field_1536 + markets[arg1].field_1792 - (markets[arg1].field_1792 * stor5 / 1000):
                                            require markets[arg1].field_1536 > 0
                                            require markets[arg1].field_1536
                                            markets[arg1].field_2048 = 0 / markets[arg1].field_1536
                                        else:
                                            require markets[arg1].field_1536 + markets[arg1].field_1792 - (markets[arg1].field_1792 * stor5 / 1000)
                                            require (markets[arg1].field_1536 * stor4) + (markets[arg1].field_1792 * stor4) - (markets[arg1].field_1792 * stor5 / 1000 * stor4) / markets[arg1].field_1536 + markets[arg1].field_1792 - (markets[arg1].field_1792 * stor5 / 1000) == stor4
                                            require markets[arg1].field_1536 > 0
                                            require markets[arg1].field_1536
                                            markets[arg1].field_2048 = (markets[arg1].field_1536 * stor4) + (markets[arg1].field_1792 * stor4) - (markets[arg1].field_1792 * stor5 / 1000 * stor4) / markets[arg1].field_1536
                                    require markets[arg1].field_1792 > 0
                                    require markets[arg1].field_1792
                                    markets[arg1].field_2304 = 0 / markets[arg1].field_1792
                                else:
                                    if markets[arg1].field_1792:
                                        require markets[arg1].field_1792
                                        require not 0 / markets[arg1].field_1792
                                    require stor4 > 0
                                    require stor4
                                    require 0 / stor4 <= markets[arg1].field_1792
                                    if not 0 / stor4:
                                        require 0 <= 0 / stor4
                                        require markets[arg1].field_1536 + (0 / stor4) >= markets[arg1].field_1536
                                        markets[arg1].field_1280 = 1
                                        markets[arg1].field_1024 = arg2
                                        if not markets[arg1].field_1536 + (0 / stor4):
                                            require markets[arg1].field_1536 > 0
                                            require markets[arg1].field_1536
                                            markets[arg1].field_2048 = 0 / markets[arg1].field_1536
                                        else:
                                            require markets[arg1].field_1536 + (0 / stor4)
                                            require (markets[arg1].field_1536 * stor4) + (0 / stor4 * stor4) / markets[arg1].field_1536 + (0 / stor4) == stor4
                                            require markets[arg1].field_1536 > 0
                                            require markets[arg1].field_1536
                                            markets[arg1].field_2048 = (markets[arg1].field_1536 * stor4) + (0 / stor4 * stor4) / markets[arg1].field_1536
                                    else:
                                        require 0 / stor4
                                        require 0 / stor4 * stor5 / 0 / stor4 == stor5
                                        require 0 / stor4 * stor5 / 1000 <= 0 / stor4
                                        require markets[arg1].field_1536 + (0 / stor4) - (0 / stor4 * stor5 / 1000) >= markets[arg1].field_1536
                                        markets[arg1].field_1280 = 1
                                        markets[arg1].field_1024 = arg2
                                        if not markets[arg1].field_1536 + (0 / stor4) - (0 / stor4 * stor5 / 1000):
                                            require markets[arg1].field_1536 > 0
                                            require markets[arg1].field_1536
                                            markets[arg1].field_2048 = 0 / markets[arg1].field_1536
                                        else:
                                            require markets[arg1].field_1536 + (0 / stor4) - (0 / stor4 * stor5 / 1000)
                                            require (markets[arg1].field_1536 * stor4) + (0 / stor4 * stor4) - (0 / stor4 * stor5 / 1000 * stor4) / markets[arg1].field_1536 + (0 / stor4) - (0 / stor4 * stor5 / 1000) == stor4
                                            require markets[arg1].field_1536 > 0
                                            require markets[arg1].field_1536
                                            markets[arg1].field_2048 = (markets[arg1].field_1536 * stor4) + (0 / stor4 * stor4) - (0 / stor4 * stor5 / 1000 * stor4) / markets[arg1].field_1536
                                    if not markets[arg1].field_1792 - (0 / stor4):
                                        require markets[arg1].field_1792 > 0
                                        require markets[arg1].field_1792
                                        markets[arg1].field_2304 = 0 / markets[arg1].field_1792
                                    else:
                                        require markets[arg1].field_1792 - (0 / stor4)
                                        require (markets[arg1].field_1792 * stor4) - (0 / stor4 * stor4) / markets[arg1].field_1792 - (0 / stor4) == stor4
                                        require markets[arg1].field_1792 > 0
                                        require markets[arg1].field_1792
                                        markets[arg1].field_2304 = (markets[arg1].field_1792 * stor4) - (0 / stor4 * stor4) / markets[arg1].field_1792
                        else:
                            require (markets[arg1].field_768 * stor4) - (arg2 * stor4) / markets[arg1].field_768
                            require (markets[arg1].field_768 * stor4) - (arg2 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / (markets[arg1].field_768 * stor4) - (arg2 * stor4) / markets[arg1].field_768 == markets[arg1].field_2560
                            if not stor4:
                                if (markets[arg1].field_768 * stor4) - (arg2 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 >= 0:
                                    require markets[arg1].field_1792 <= markets[arg1].field_1792
                                    if not markets[arg1].field_1792:
                                        require 0 <= markets[arg1].field_1792
                                        require markets[arg1].field_1536 + markets[arg1].field_1792 >= markets[arg1].field_1536
                                        markets[arg1].field_1280 = 1
                                        markets[arg1].field_1024 = arg2
                                        if not markets[arg1].field_1536 + markets[arg1].field_1792:
                                            require markets[arg1].field_1536 > 0
                                            require markets[arg1].field_1536
                                            markets[arg1].field_2048 = 0 / markets[arg1].field_1536
                                        else:
                                            require markets[arg1].field_1536 + markets[arg1].field_1792
                                            require (markets[arg1].field_1536 * stor4) + (markets[arg1].field_1792 * stor4) / markets[arg1].field_1536 + markets[arg1].field_1792 == stor4
                                            require markets[arg1].field_1536 > 0
                                            require markets[arg1].field_1536
                                            markets[arg1].field_2048 = (markets[arg1].field_1536 * stor4) + (markets[arg1].field_1792 * stor4) / markets[arg1].field_1536
                                    else:
                                        require markets[arg1].field_1792
                                        require markets[arg1].field_1792 * stor5 / markets[arg1].field_1792 == stor5
                                        require markets[arg1].field_1792 * stor5 / 1000 <= markets[arg1].field_1792
                                        require markets[arg1].field_1536 + markets[arg1].field_1792 - (markets[arg1].field_1792 * stor5 / 1000) >= markets[arg1].field_1536
                                        markets[arg1].field_1280 = 1
                                        markets[arg1].field_1024 = arg2
                                        if not markets[arg1].field_1536 + markets[arg1].field_1792 - (markets[arg1].field_1792 * stor5 / 1000):
                                            require markets[arg1].field_1536 > 0
                                            require markets[arg1].field_1536
                                            markets[arg1].field_2048 = 0 / markets[arg1].field_1536
                                        else:
                                            require markets[arg1].field_1536 + markets[arg1].field_1792 - (markets[arg1].field_1792 * stor5 / 1000)
                                            require (markets[arg1].field_1536 * stor4) + (markets[arg1].field_1792 * stor4) - (markets[arg1].field_1792 * stor5 / 1000 * stor4) / markets[arg1].field_1536 + markets[arg1].field_1792 - (markets[arg1].field_1792 * stor5 / 1000) == stor4
                                            require markets[arg1].field_1536 > 0
                                            require markets[arg1].field_1536
                                            markets[arg1].field_2048 = (markets[arg1].field_1536 * stor4) + (markets[arg1].field_1792 * stor4) - (markets[arg1].field_1792 * stor5 / 1000 * stor4) / markets[arg1].field_1536
                                    require markets[arg1].field_1792 > 0
                                    require markets[arg1].field_1792
                                    markets[arg1].field_2304 = 0 / markets[arg1].field_1792
                                else:
                                    if not markets[arg1].field_1792:
                                        require stor4 > 0
                                        require stor4
                                        require 0 / stor4 <= markets[arg1].field_1792
                                        if not 0 / stor4:
                                            require 0 <= 0 / stor4
                                            require markets[arg1].field_1536 + (0 / stor4) >= markets[arg1].field_1536
                                            markets[arg1].field_1280 = 1
                                            markets[arg1].field_1024 = arg2
                                            if not markets[arg1].field_1536 + (0 / stor4):
                                                require markets[arg1].field_1536 > 0
                                                require markets[arg1].field_1536
                                                markets[arg1].field_2048 = 0 / markets[arg1].field_1536
                                            else:
                                                require markets[arg1].field_1536 + (0 / stor4)
                                                require (markets[arg1].field_1536 * stor4) + (0 / stor4 * stor4) / markets[arg1].field_1536 + (0 / stor4) == stor4
                                                require markets[arg1].field_1536 > 0
                                                require markets[arg1].field_1536
                                                markets[arg1].field_2048 = (markets[arg1].field_1536 * stor4) + (0 / stor4 * stor4) / markets[arg1].field_1536
                                        else:
                                            require 0 / stor4
                                            require 0 / stor4 * stor5 / 0 / stor4 == stor5
                                            require 0 / stor4 * stor5 / 1000 <= 0 / stor4
                                            require markets[arg1].field_1536 + (0 / stor4) - (0 / stor4 * stor5 / 1000) >= markets[arg1].field_1536
                                            markets[arg1].field_1280 = 1
                                            markets[arg1].field_1024 = arg2
                                            if not markets[arg1].field_1536 + (0 / stor4) - (0 / stor4 * stor5 / 1000):
                                                require markets[arg1].field_1536 > 0
                                                require markets[arg1].field_1536
                                                markets[arg1].field_2048 = 0 / markets[arg1].field_1536
                                            else:
                                                require markets[arg1].field_1536 + (0 / stor4) - (0 / stor4 * stor5 / 1000)
                                                require (markets[arg1].field_1536 * stor4) + (0 / stor4 * stor4) - (0 / stor4 * stor5 / 1000 * stor4) / markets[arg1].field_1536 + (0 / stor4) - (0 / stor4 * stor5 / 1000) == stor4
                                                require markets[arg1].field_1536 > 0
                                                require markets[arg1].field_1536
                                                markets[arg1].field_2048 = (markets[arg1].field_1536 * stor4) + (0 / stor4 * stor4) - (0 / stor4 * stor5 / 1000 * stor4) / markets[arg1].field_1536
                                        if not markets[arg1].field_1792 - (0 / stor4):
                                            require markets[arg1].field_1792 > 0
                                            require markets[arg1].field_1792
                                            markets[arg1].field_2304 = 0 / markets[arg1].field_1792
                                        else:
                                            require markets[arg1].field_1792 - (0 / stor4)
                                            require (markets[arg1].field_1792 * stor4) - (0 / stor4 * stor4) / markets[arg1].field_1792 - (0 / stor4) == stor4
                                            require markets[arg1].field_1792 > 0
                                            require markets[arg1].field_1792
                                            markets[arg1].field_2304 = (markets[arg1].field_1792 * stor4) - (0 / stor4 * stor4) / markets[arg1].field_1792
                                    else:
                                        require markets[arg1].field_1792
                                        require markets[arg1].field_1792 * (markets[arg1].field_768 * stor4) - (arg2 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / markets[arg1].field_1792 == (markets[arg1].field_768 * stor4) - (arg2 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560
                                        require stor4 > 0
                                        require stor4
                                        require markets[arg1].field_1792 * (markets[arg1].field_768 * stor4) - (arg2 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 <= markets[arg1].field_1792
                                        if not markets[arg1].field_1792 * (markets[arg1].field_768 * stor4) - (arg2 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4:
                                            require 0 <= markets[arg1].field_1792 * (markets[arg1].field_768 * stor4) - (arg2 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4
                                            require markets[arg1].field_1536 + (markets[arg1].field_1792 * (markets[arg1].field_768 * stor4) - (arg2 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4) >= markets[arg1].field_1536
                                            markets[arg1].field_1280 = 1
                                            markets[arg1].field_1024 = arg2
                                            if not markets[arg1].field_1536 + (markets[arg1].field_1792 * (markets[arg1].field_768 * stor4) - (arg2 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4):
                                                require markets[arg1].field_1536 > 0
                                                require markets[arg1].field_1536
                                                markets[arg1].field_2048 = 0 / markets[arg1].field_1536
                                            else:
                                                require markets[arg1].field_1536 + (markets[arg1].field_1792 * (markets[arg1].field_768 * stor4) - (arg2 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4)
                                                require (markets[arg1].field_1536 * stor4) + (markets[arg1].field_1792 * (markets[arg1].field_768 * stor4) - (arg2 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor4) / markets[arg1].field_1536 + (markets[arg1].field_1792 * (markets[arg1].field_768 * stor4) - (arg2 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4) == stor4
                                                require markets[arg1].field_1536 > 0
                                                require markets[arg1].field_1536
                                                markets[arg1].field_2048 = (markets[arg1].field_1536 * stor4) + (markets[arg1].field_1792 * (markets[arg1].field_768 * stor4) - (arg2 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor4) / markets[arg1].field_1536
                                        else:
                                            require markets[arg1].field_1792 * (markets[arg1].field_768 * stor4) - (arg2 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4
                                            require markets[arg1].field_1792 * (markets[arg1].field_768 * stor4) - (arg2 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor5 / markets[arg1].field_1792 * (markets[arg1].field_768 * stor4) - (arg2 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 == stor5
                                            require markets[arg1].field_1792 * (markets[arg1].field_768 * stor4) - (arg2 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor5 / 1000 <= markets[arg1].field_1792 * (markets[arg1].field_768 * stor4) - (arg2 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4
                                            require markets[arg1].field_1536 + (markets[arg1].field_1792 * (markets[arg1].field_768 * stor4) - (arg2 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4) - (markets[arg1].field_1792 * (markets[arg1].field_768 * stor4) - (arg2 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor5 / 1000) >= markets[arg1].field_1536
                                            markets[arg1].field_1280 = 1
                                            markets[arg1].field_1024 = arg2
                                            if not markets[arg1].field_1536 + (markets[arg1].field_1792 * (markets[arg1].field_768 * stor4) - (arg2 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4) - (markets[arg1].field_1792 * (markets[arg1].field_768 * stor4) - (arg2 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor5 / 1000):
                                                require markets[arg1].field_1536 > 0
                                                require markets[arg1].field_1536
                                                markets[arg1].field_2048 = 0 / markets[arg1].field_1536
                                            else:
                                                require markets[arg1].field_1536 + (markets[arg1].field_1792 * (markets[arg1].field_768 * stor4) - (arg2 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4) - (markets[arg1].field_1792 * (markets[arg1].field_768 * stor4) - (arg2 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor5 / 1000)
                                                require (markets[arg1].field_1536 * stor4) + (markets[arg1].field_1792 * (markets[arg1].field_768 * stor4) - (arg2 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor4) - (markets[arg1].field_1792 * (markets[arg1].field_768 * stor4) - (arg2 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor5 / 1000 * stor4) / markets[arg1].field_1536 + (markets[arg1].field_1792 * (markets[arg1].field_768 * stor4) - (arg2 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4) - (markets[arg1].field_1792 * (markets[arg1].field_768 * stor4) - (arg2 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor5 / 1000) == stor4
                                                require markets[arg1].field_1536 > 0
                                                require markets[arg1].field_1536
                                                markets[arg1].field_2048 = (markets[arg1].field_1536 * stor4) + (markets[arg1].field_1792 * (markets[arg1].field_768 * stor4) - (arg2 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor4) - (markets[arg1].field_1792 * (markets[arg1].field_768 * stor4) - (arg2 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor5 / 1000 * stor4) / markets[arg1].field_1536
                                        if not markets[arg1].field_1792 - (markets[arg1].field_1792 * (markets[arg1].field_768 * stor4) - (arg2 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4):
                                            require markets[arg1].field_1792 > 0
                                            require markets[arg1].field_1792
                                            markets[arg1].field_2304 = 0 / markets[arg1].field_1792
                                        else:
                                            require markets[arg1].field_1792 - (markets[arg1].field_1792 * (markets[arg1].field_768 * stor4) - (arg2 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4)
                                            require (markets[arg1].field_1792 * stor4) - (markets[arg1].field_1792 * (markets[arg1].field_768 * stor4) - (arg2 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor4) / markets[arg1].field_1792 - (markets[arg1].field_1792 * (markets[arg1].field_768 * stor4) - (arg2 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4) == stor4
                                            require markets[arg1].field_1792 > 0
                                            require markets[arg1].field_1792
                                            markets[arg1].field_2304 = (markets[arg1].field_1792 * stor4) - (markets[arg1].field_1792 * (markets[arg1].field_768 * stor4) - (arg2 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor4) / markets[arg1].field_1792
                            else:
                                require stor4
                                require 100 * stor4 / stor4 == 100
                                if (markets[arg1].field_768 * stor4) - (arg2 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 >= 100 * stor4:
                                    require markets[arg1].field_1792 <= markets[arg1].field_1792
                                    if not markets[arg1].field_1792:
                                        require 0 <= markets[arg1].field_1792
                                        require markets[arg1].field_1536 + markets[arg1].field_1792 >= markets[arg1].field_1536
                                        markets[arg1].field_1280 = 1
                                        markets[arg1].field_1024 = arg2
                                        if not markets[arg1].field_1536 + markets[arg1].field_1792:
                                            require markets[arg1].field_1536 > 0
                                            require markets[arg1].field_1536
                                            markets[arg1].field_2048 = 0 / markets[arg1].field_1536
                                        else:
                                            require markets[arg1].field_1536 + markets[arg1].field_1792
                                            require (markets[arg1].field_1536 * stor4) + (markets[arg1].field_1792 * stor4) / markets[arg1].field_1536 + markets[arg1].field_1792 == stor4
                                            require markets[arg1].field_1536 > 0
                                            require markets[arg1].field_1536
                                            markets[arg1].field_2048 = (markets[arg1].field_1536 * stor4) + (markets[arg1].field_1792 * stor4) / markets[arg1].field_1536
                                    else:
                                        require markets[arg1].field_1792
                                        require markets[arg1].field_1792 * stor5 / markets[arg1].field_1792 == stor5
                                        require markets[arg1].field_1792 * stor5 / 1000 <= markets[arg1].field_1792
                                        require markets[arg1].field_1536 + markets[arg1].field_1792 - (markets[arg1].field_1792 * stor5 / 1000) >= markets[arg1].field_1536
                                        markets[arg1].field_1280 = 1
                                        markets[arg1].field_1024 = arg2
                                        if not markets[arg1].field_1536 + markets[arg1].field_1792 - (markets[arg1].field_1792 * stor5 / 1000):
                                            require markets[arg1].field_1536 > 0
                                            require markets[arg1].field_1536
                                            markets[arg1].field_2048 = 0 / markets[arg1].field_1536
                                        else:
                                            require markets[arg1].field_1536 + markets[arg1].field_1792 - (markets[arg1].field_1792 * stor5 / 1000)
                                            require (markets[arg1].field_1536 * stor4) + (markets[arg1].field_1792 * stor4) - (markets[arg1].field_1792 * stor5 / 1000 * stor4) / markets[arg1].field_1536 + markets[arg1].field_1792 - (markets[arg1].field_1792 * stor5 / 1000) == stor4
                                            require markets[arg1].field_1536 > 0
                                            require markets[arg1].field_1536
                                            markets[arg1].field_2048 = (markets[arg1].field_1536 * stor4) + (markets[arg1].field_1792 * stor4) - (markets[arg1].field_1792 * stor5 / 1000 * stor4) / markets[arg1].field_1536
                                    require markets[arg1].field_1792 > 0
                                    require markets[arg1].field_1792
                                    markets[arg1].field_2304 = 0 / markets[arg1].field_1792
                                else:
                                    if not markets[arg1].field_1792:
                                        require stor4 > 0
                                        require stor4
                                        require 0 / stor4 <= markets[arg1].field_1792
                                        if not 0 / stor4:
                                            require 0 <= 0 / stor4
                                            require markets[arg1].field_1536 + (0 / stor4) >= markets[arg1].field_1536
                                            markets[arg1].field_1280 = 1
                                            markets[arg1].field_1024 = arg2
                                            if not markets[arg1].field_1536 + (0 / stor4):
                                                require markets[arg1].field_1536 > 0
                                                require markets[arg1].field_1536
                                                markets[arg1].field_2048 = 0 / markets[arg1].field_1536
                                            else:
                                                require markets[arg1].field_1536 + (0 / stor4)
                                                require (markets[arg1].field_1536 * stor4) + (0 / stor4 * stor4) / markets[arg1].field_1536 + (0 / stor4) == stor4
                                                require markets[arg1].field_1536 > 0
                                                require markets[arg1].field_1536
                                                markets[arg1].field_2048 = (markets[arg1].field_1536 * stor4) + (0 / stor4 * stor4) / markets[arg1].field_1536
                                        else:
                                            require 0 / stor4
                                            require 0 / stor4 * stor5 / 0 / stor4 == stor5
                                            require 0 / stor4 * stor5 / 1000 <= 0 / stor4
                                            require markets[arg1].field_1536 + (0 / stor4) - (0 / stor4 * stor5 / 1000) >= markets[arg1].field_1536
                                            markets[arg1].field_1280 = 1
                                            markets[arg1].field_1024 = arg2
                                            if not markets[arg1].field_1536 + (0 / stor4) - (0 / stor4 * stor5 / 1000):
                                                require markets[arg1].field_1536 > 0
                                                require markets[arg1].field_1536
                                                markets[arg1].field_2048 = 0 / markets[arg1].field_1536
                                            else:
                                                require markets[arg1].field_1536 + (0 / stor4) - (0 / stor4 * stor5 / 1000)
                                                require (markets[arg1].field_1536 * stor4) + (0 / stor4 * stor4) - (0 / stor4 * stor5 / 1000 * stor4) / markets[arg1].field_1536 + (0 / stor4) - (0 / stor4 * stor5 / 1000) == stor4
                                                require markets[arg1].field_1536 > 0
                                                require markets[arg1].field_1536
                                                markets[arg1].field_2048 = (markets[arg1].field_1536 * stor4) + (0 / stor4 * stor4) - (0 / stor4 * stor5 / 1000 * stor4) / markets[arg1].field_1536
                                        if not markets[arg1].field_1792 - (0 / stor4):
                                            require markets[arg1].field_1792 > 0
                                            require markets[arg1].field_1792
                                            markets[arg1].field_2304 = 0 / markets[arg1].field_1792
                                        else:
                                            require markets[arg1].field_1792 - (0 / stor4)
                                            require (markets[arg1].field_1792 * stor4) - (0 / stor4 * stor4) / markets[arg1].field_1792 - (0 / stor4) == stor4
                                            require markets[arg1].field_1792 > 0
                                            require markets[arg1].field_1792
                                            markets[arg1].field_2304 = (markets[arg1].field_1792 * stor4) - (0 / stor4 * stor4) / markets[arg1].field_1792
                                    else:
                                        require markets[arg1].field_1792
                                        require markets[arg1].field_1792 * (markets[arg1].field_768 * stor4) - (arg2 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / markets[arg1].field_1792 == (markets[arg1].field_768 * stor4) - (arg2 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560
                                        require stor4 > 0
                                        require stor4
                                        require markets[arg1].field_1792 * (markets[arg1].field_768 * stor4) - (arg2 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 <= markets[arg1].field_1792
                                        if not markets[arg1].field_1792 * (markets[arg1].field_768 * stor4) - (arg2 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4:
                                            require 0 <= markets[arg1].field_1792 * (markets[arg1].field_768 * stor4) - (arg2 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4
                                            require markets[arg1].field_1536 + (markets[arg1].field_1792 * (markets[arg1].field_768 * stor4) - (arg2 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4) >= markets[arg1].field_1536
                                            markets[arg1].field_1280 = 1
                                            markets[arg1].field_1024 = arg2
                                            if not markets[arg1].field_1536 + (markets[arg1].field_1792 * (markets[arg1].field_768 * stor4) - (arg2 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4):
                                                require markets[arg1].field_1536 > 0
                                                require markets[arg1].field_1536
                                                markets[arg1].field_2048 = 0 / markets[arg1].field_1536
                                            else:
                                                require markets[arg1].field_1536 + (markets[arg1].field_1792 * (markets[arg1].field_768 * stor4) - (arg2 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4)
                                                require (markets[arg1].field_1536 * stor4) + (markets[arg1].field_1792 * (markets[arg1].field_768 * stor4) - (arg2 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor4) / markets[arg1].field_1536 + (markets[arg1].field_1792 * (markets[arg1].field_768 * stor4) - (arg2 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4) == stor4
                                                require markets[arg1].field_1536 > 0
                                                require markets[arg1].field_1536
                                                markets[arg1].field_2048 = (markets[arg1].field_1536 * stor4) + (markets[arg1].field_1792 * (markets[arg1].field_768 * stor4) - (arg2 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor4) / markets[arg1].field_1536
                                        else:
                                            require markets[arg1].field_1792 * (markets[arg1].field_768 * stor4) - (arg2 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4
                                            require markets[arg1].field_1792 * (markets[arg1].field_768 * stor4) - (arg2 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor5 / markets[arg1].field_1792 * (markets[arg1].field_768 * stor4) - (arg2 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 == stor5
                                            require markets[arg1].field_1792 * (markets[arg1].field_768 * stor4) - (arg2 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor5 / 1000 <= markets[arg1].field_1792 * (markets[arg1].field_768 * stor4) - (arg2 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4
                                            require markets[arg1].field_1536 + (markets[arg1].field_1792 * (markets[arg1].field_768 * stor4) - (arg2 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4) - (markets[arg1].field_1792 * (markets[arg1].field_768 * stor4) - (arg2 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor5 / 1000) >= markets[arg1].field_1536
                                            markets[arg1].field_1280 = 1
                                            markets[arg1].field_1024 = arg2
                                            if not markets[arg1].field_1536 + (markets[arg1].field_1792 * (markets[arg1].field_768 * stor4) - (arg2 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4) - (markets[arg1].field_1792 * (markets[arg1].field_768 * stor4) - (arg2 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor5 / 1000):
                                                require markets[arg1].field_1536 > 0
                                                require markets[arg1].field_1536
                                                markets[arg1].field_2048 = 0 / markets[arg1].field_1536
                                            else:
                                                require markets[arg1].field_1536 + (markets[arg1].field_1792 * (markets[arg1].field_768 * stor4) - (arg2 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4) - (markets[arg1].field_1792 * (markets[arg1].field_768 * stor4) - (arg2 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor5 / 1000)
                                                require (markets[arg1].field_1536 * stor4) + (markets[arg1].field_1792 * (markets[arg1].field_768 * stor4) - (arg2 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor4) - (markets[arg1].field_1792 * (markets[arg1].field_768 * stor4) - (arg2 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor5 / 1000 * stor4) / markets[arg1].field_1536 + (markets[arg1].field_1792 * (markets[arg1].field_768 * stor4) - (arg2 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4) - (markets[arg1].field_1792 * (markets[arg1].field_768 * stor4) - (arg2 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor5 / 1000) == stor4
                                                require markets[arg1].field_1536 > 0
                                                require markets[arg1].field_1536
                                                markets[arg1].field_2048 = (markets[arg1].field_1536 * stor4) + (markets[arg1].field_1792 * (markets[arg1].field_768 * stor4) - (arg2 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor4) - (markets[arg1].field_1792 * (markets[arg1].field_768 * stor4) - (arg2 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor5 / 1000 * stor4) / markets[arg1].field_1536
                                        if not markets[arg1].field_1792 - (markets[arg1].field_1792 * (markets[arg1].field_768 * stor4) - (arg2 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4):
                                            require markets[arg1].field_1792 > 0
                                            require markets[arg1].field_1792
                                            markets[arg1].field_2304 = 0 / markets[arg1].field_1792
                                        else:
                                            require markets[arg1].field_1792 - (markets[arg1].field_1792 * (markets[arg1].field_768 * stor4) - (arg2 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4)
                                            require (markets[arg1].field_1792 * stor4) - (markets[arg1].field_1792 * (markets[arg1].field_768 * stor4) - (arg2 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor4) / markets[arg1].field_1792 - (markets[arg1].field_1792 * (markets[arg1].field_768 * stor4) - (arg2 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4) == stor4
                                            require markets[arg1].field_1792 > 0
                                            require markets[arg1].field_1792
                                            markets[arg1].field_2304 = (markets[arg1].field_1792 * stor4) - (markets[arg1].field_1792 * (markets[arg1].field_768 * stor4) - (arg2 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor4) / markets[arg1].field_1792
                else:
                    require markets[arg1].field_768 <= arg2
                    if not arg2 - markets[arg1].field_768:
                        require markets[arg1].field_768 > 0
                        require markets[arg1].field_768
                        if not 0 / markets[arg1].field_768:
                            if not stor4:
                                require markets[arg1].field_1536 <= markets[arg1].field_1536
                                if not markets[arg1].field_1536:
                                    require 0 <= markets[arg1].field_1536
                                    require markets[arg1].field_1792 + markets[arg1].field_1536 >= markets[arg1].field_1792
                                    markets[arg1].field_1280 = 1
                                    markets[arg1].field_1024 = arg2
                                    require markets[arg1].field_1536 > 0
                                    require markets[arg1].field_1536
                                    markets[arg1].field_2048 = 0 / markets[arg1].field_1536
                                    if not markets[arg1].field_1792 + markets[arg1].field_1536:
                                        require markets[arg1].field_1792 > 0
                                        require markets[arg1].field_1792
                                        markets[arg1].field_2304 = 0 / markets[arg1].field_1792
                                    else:
                                        require markets[arg1].field_1792 + markets[arg1].field_1536
                                        require (markets[arg1].field_1792 * stor4) + (markets[arg1].field_1536 * stor4) / markets[arg1].field_1792 + markets[arg1].field_1536 == stor4
                                        require markets[arg1].field_1792 > 0
                                        require markets[arg1].field_1792
                                        markets[arg1].field_2304 = (markets[arg1].field_1792 * stor4) + (markets[arg1].field_1536 * stor4) / markets[arg1].field_1792
                                else:
                                    require markets[arg1].field_1536
                                    require markets[arg1].field_1536 * stor5 / markets[arg1].field_1536 == stor5
                                    require markets[arg1].field_1536 * stor5 / 1000 <= markets[arg1].field_1536
                                    require markets[arg1].field_1792 + markets[arg1].field_1536 - (markets[arg1].field_1536 * stor5 / 1000) >= markets[arg1].field_1792
                                    markets[arg1].field_1280 = 1
                                    markets[arg1].field_1024 = arg2
                                    require markets[arg1].field_1536 > 0
                                    require markets[arg1].field_1536
                                    markets[arg1].field_2048 = 0 / markets[arg1].field_1536
                                    if not markets[arg1].field_1792 + markets[arg1].field_1536 - (markets[arg1].field_1536 * stor5 / 1000):
                                        require markets[arg1].field_1792 > 0
                                        require markets[arg1].field_1792
                                        markets[arg1].field_2304 = 0 / markets[arg1].field_1792
                                    else:
                                        require markets[arg1].field_1792 + markets[arg1].field_1536 - (markets[arg1].field_1536 * stor5 / 1000)
                                        require (markets[arg1].field_1792 * stor4) + (markets[arg1].field_1536 * stor4) - (markets[arg1].field_1536 * stor5 / 1000 * stor4) / markets[arg1].field_1792 + markets[arg1].field_1536 - (markets[arg1].field_1536 * stor5 / 1000) == stor4
                                        require markets[arg1].field_1792 > 0
                                        require markets[arg1].field_1792
                                        markets[arg1].field_2304 = (markets[arg1].field_1792 * stor4) + (markets[arg1].field_1536 * stor4) - (markets[arg1].field_1536 * stor5 / 1000 * stor4) / markets[arg1].field_1792
                            else:
                                require stor4
                                require 100 * stor4 / stor4 == 100
                                if 0 >= 100 * stor4:
                                    require markets[arg1].field_1536 <= markets[arg1].field_1536
                                    if not markets[arg1].field_1536:
                                        require 0 <= markets[arg1].field_1536
                                        require markets[arg1].field_1792 + markets[arg1].field_1536 >= markets[arg1].field_1792
                                        markets[arg1].field_1280 = 1
                                        markets[arg1].field_1024 = arg2
                                        require markets[arg1].field_1536 > 0
                                        require markets[arg1].field_1536
                                        markets[arg1].field_2048 = 0 / markets[arg1].field_1536
                                        if not markets[arg1].field_1792 + markets[arg1].field_1536:
                                            require markets[arg1].field_1792 > 0
                                            require markets[arg1].field_1792
                                            markets[arg1].field_2304 = 0 / markets[arg1].field_1792
                                        else:
                                            require markets[arg1].field_1792 + markets[arg1].field_1536
                                            require (markets[arg1].field_1792 * stor4) + (markets[arg1].field_1536 * stor4) / markets[arg1].field_1792 + markets[arg1].field_1536 == stor4
                                            require markets[arg1].field_1792 > 0
                                            require markets[arg1].field_1792
                                            markets[arg1].field_2304 = (markets[arg1].field_1792 * stor4) + (markets[arg1].field_1536 * stor4) / markets[arg1].field_1792
                                    else:
                                        require markets[arg1].field_1536
                                        require markets[arg1].field_1536 * stor5 / markets[arg1].field_1536 == stor5
                                        require markets[arg1].field_1536 * stor5 / 1000 <= markets[arg1].field_1536
                                        require markets[arg1].field_1792 + markets[arg1].field_1536 - (markets[arg1].field_1536 * stor5 / 1000) >= markets[arg1].field_1792
                                        markets[arg1].field_1280 = 1
                                        markets[arg1].field_1024 = arg2
                                        require markets[arg1].field_1536 > 0
                                        require markets[arg1].field_1536
                                        markets[arg1].field_2048 = 0 / markets[arg1].field_1536
                                        if not markets[arg1].field_1792 + markets[arg1].field_1536 - (markets[arg1].field_1536 * stor5 / 1000):
                                            require markets[arg1].field_1792 > 0
                                            require markets[arg1].field_1792
                                            markets[arg1].field_2304 = 0 / markets[arg1].field_1792
                                        else:
                                            require markets[arg1].field_1792 + markets[arg1].field_1536 - (markets[arg1].field_1536 * stor5 / 1000)
                                            require (markets[arg1].field_1792 * stor4) + (markets[arg1].field_1536 * stor4) - (markets[arg1].field_1536 * stor5 / 1000 * stor4) / markets[arg1].field_1792 + markets[arg1].field_1536 - (markets[arg1].field_1536 * stor5 / 1000) == stor4
                                            require markets[arg1].field_1792 > 0
                                            require markets[arg1].field_1792
                                            markets[arg1].field_2304 = (markets[arg1].field_1792 * stor4) + (markets[arg1].field_1536 * stor4) - (markets[arg1].field_1536 * stor5 / 1000 * stor4) / markets[arg1].field_1792
                                else:
                                    if markets[arg1].field_1536:
                                        require markets[arg1].field_1536
                                        require not 0 / markets[arg1].field_1536
                                    require stor4 > 0
                                    require stor4
                                    require 0 / stor4 <= markets[arg1].field_1536
                                    if not 0 / stor4:
                                        require 0 <= 0 / stor4
                                        require markets[arg1].field_1792 + (0 / stor4) >= markets[arg1].field_1792
                                        markets[arg1].field_1280 = 1
                                        markets[arg1].field_1024 = arg2
                                        if not markets[arg1].field_1536 - (0 / stor4):
                                            require markets[arg1].field_1536 > 0
                                            require markets[arg1].field_1536
                                            markets[arg1].field_2048 = 0 / markets[arg1].field_1536
                                        else:
                                            require markets[arg1].field_1536 - (0 / stor4)
                                            require (markets[arg1].field_1536 * stor4) - (0 / stor4 * stor4) / markets[arg1].field_1536 - (0 / stor4) == stor4
                                            require markets[arg1].field_1536 > 0
                                            require markets[arg1].field_1536
                                            markets[arg1].field_2048 = (markets[arg1].field_1536 * stor4) - (0 / stor4 * stor4) / markets[arg1].field_1536
                                        if not markets[arg1].field_1792 + (0 / stor4):
                                            require markets[arg1].field_1792 > 0
                                            require markets[arg1].field_1792
                                            markets[arg1].field_2304 = 0 / markets[arg1].field_1792
                                        else:
                                            require markets[arg1].field_1792 + (0 / stor4)
                                            require (markets[arg1].field_1792 * stor4) + (0 / stor4 * stor4) / markets[arg1].field_1792 + (0 / stor4) == stor4
                                            require markets[arg1].field_1792 > 0
                                            require markets[arg1].field_1792
                                            markets[arg1].field_2304 = (markets[arg1].field_1792 * stor4) + (0 / stor4 * stor4) / markets[arg1].field_1792
                                    else:
                                        require 0 / stor4
                                        require 0 / stor4 * stor5 / 0 / stor4 == stor5
                                        require 0 / stor4 * stor5 / 1000 <= 0 / stor4
                                        require markets[arg1].field_1792 + (0 / stor4) - (0 / stor4 * stor5 / 1000) >= markets[arg1].field_1792
                                        markets[arg1].field_1280 = 1
                                        markets[arg1].field_1024 = arg2
                                        if not markets[arg1].field_1536 - (0 / stor4):
                                            require markets[arg1].field_1536 > 0
                                            require markets[arg1].field_1536
                                            markets[arg1].field_2048 = 0 / markets[arg1].field_1536
                                        else:
                                            require markets[arg1].field_1536 - (0 / stor4)
                                            require (markets[arg1].field_1536 * stor4) - (0 / stor4 * stor4) / markets[arg1].field_1536 - (0 / stor4) == stor4
                                            require markets[arg1].field_1536 > 0
                                            require markets[arg1].field_1536
                                            markets[arg1].field_2048 = (markets[arg1].field_1536 * stor4) - (0 / stor4 * stor4) / markets[arg1].field_1536
                                        if not markets[arg1].field_1792 + (0 / stor4) - (0 / stor4 * stor5 / 1000):
                                            require markets[arg1].field_1792 > 0
                                            require markets[arg1].field_1792
                                            markets[arg1].field_2304 = 0 / markets[arg1].field_1792
                                        else:
                                            require markets[arg1].field_1792 + (0 / stor4) - (0 / stor4 * stor5 / 1000)
                                            require (markets[arg1].field_1792 * stor4) + (0 / stor4 * stor4) - (0 / stor4 * stor5 / 1000 * stor4) / markets[arg1].field_1792 + (0 / stor4) - (0 / stor4 * stor5 / 1000) == stor4
                                            require markets[arg1].field_1792 > 0
                                            require markets[arg1].field_1792
                                            markets[arg1].field_2304 = (markets[arg1].field_1792 * stor4) + (0 / stor4 * stor4) - (0 / stor4 * stor5 / 1000 * stor4) / markets[arg1].field_1792
                        else:
                            require 0 / markets[arg1].field_768
                            require 0 / markets[arg1].field_768 * markets[arg1].field_2560 / 0 / markets[arg1].field_768 == markets[arg1].field_2560
                            if not stor4:
                                if 0 / markets[arg1].field_768 * markets[arg1].field_2560 >= 0:
                                    require markets[arg1].field_1536 <= markets[arg1].field_1536
                                    if not markets[arg1].field_1536:
                                        require 0 <= markets[arg1].field_1536
                                        require markets[arg1].field_1792 + markets[arg1].field_1536 >= markets[arg1].field_1792
                                        markets[arg1].field_1280 = 1
                                        markets[arg1].field_1024 = arg2
                                        require markets[arg1].field_1536 > 0
                                        require markets[arg1].field_1536
                                        markets[arg1].field_2048 = 0 / markets[arg1].field_1536
                                        if not markets[arg1].field_1792 + markets[arg1].field_1536:
                                            require markets[arg1].field_1792 > 0
                                            require markets[arg1].field_1792
                                            markets[arg1].field_2304 = 0 / markets[arg1].field_1792
                                        else:
                                            require markets[arg1].field_1792 + markets[arg1].field_1536
                                            require (markets[arg1].field_1792 * stor4) + (markets[arg1].field_1536 * stor4) / markets[arg1].field_1792 + markets[arg1].field_1536 == stor4
                                            require markets[arg1].field_1792 > 0
                                            require markets[arg1].field_1792
                                            markets[arg1].field_2304 = (markets[arg1].field_1792 * stor4) + (markets[arg1].field_1536 * stor4) / markets[arg1].field_1792
                                    else:
                                        require markets[arg1].field_1536
                                        require markets[arg1].field_1536 * stor5 / markets[arg1].field_1536 == stor5
                                        require markets[arg1].field_1536 * stor5 / 1000 <= markets[arg1].field_1536
                                        require markets[arg1].field_1792 + markets[arg1].field_1536 - (markets[arg1].field_1536 * stor5 / 1000) >= markets[arg1].field_1792
                                        markets[arg1].field_1280 = 1
                                        markets[arg1].field_1024 = arg2
                                        require markets[arg1].field_1536 > 0
                                        require markets[arg1].field_1536
                                        markets[arg1].field_2048 = 0 / markets[arg1].field_1536
                                        if not markets[arg1].field_1792 + markets[arg1].field_1536 - (markets[arg1].field_1536 * stor5 / 1000):
                                            require markets[arg1].field_1792 > 0
                                            require markets[arg1].field_1792
                                            markets[arg1].field_2304 = 0 / markets[arg1].field_1792
                                        else:
                                            require markets[arg1].field_1792 + markets[arg1].field_1536 - (markets[arg1].field_1536 * stor5 / 1000)
                                            require (markets[arg1].field_1792 * stor4) + (markets[arg1].field_1536 * stor4) - (markets[arg1].field_1536 * stor5 / 1000 * stor4) / markets[arg1].field_1792 + markets[arg1].field_1536 - (markets[arg1].field_1536 * stor5 / 1000) == stor4
                                            require markets[arg1].field_1792 > 0
                                            require markets[arg1].field_1792
                                            markets[arg1].field_2304 = (markets[arg1].field_1792 * stor4) + (markets[arg1].field_1536 * stor4) - (markets[arg1].field_1536 * stor5 / 1000 * stor4) / markets[arg1].field_1792
                                else:
                                    if not markets[arg1].field_1536:
                                        require stor4 > 0
                                        require stor4
                                        require 0 / stor4 <= markets[arg1].field_1536
                                        if not 0 / stor4:
                                            require 0 <= 0 / stor4
                                            require markets[arg1].field_1792 + (0 / stor4) >= markets[arg1].field_1792
                                            markets[arg1].field_1280 = 1
                                            markets[arg1].field_1024 = arg2
                                            if not markets[arg1].field_1536 - (0 / stor4):
                                                require markets[arg1].field_1536 > 0
                                                require markets[arg1].field_1536
                                                markets[arg1].field_2048 = 0 / markets[arg1].field_1536
                                            else:
                                                require markets[arg1].field_1536 - (0 / stor4)
                                                require (markets[arg1].field_1536 * stor4) - (0 / stor4 * stor4) / markets[arg1].field_1536 - (0 / stor4) == stor4
                                                require markets[arg1].field_1536 > 0
                                                require markets[arg1].field_1536
                                                markets[arg1].field_2048 = (markets[arg1].field_1536 * stor4) - (0 / stor4 * stor4) / markets[arg1].field_1536
                                            if not markets[arg1].field_1792 + (0 / stor4):
                                                require markets[arg1].field_1792 > 0
                                                require markets[arg1].field_1792
                                                markets[arg1].field_2304 = 0 / markets[arg1].field_1792
                                            else:
                                                require markets[arg1].field_1792 + (0 / stor4)
                                                require (markets[arg1].field_1792 * stor4) + (0 / stor4 * stor4) / markets[arg1].field_1792 + (0 / stor4) == stor4
                                                require markets[arg1].field_1792 > 0
                                                require markets[arg1].field_1792
                                                markets[arg1].field_2304 = (markets[arg1].field_1792 * stor4) + (0 / stor4 * stor4) / markets[arg1].field_1792
                                        else:
                                            require 0 / stor4
                                            require 0 / stor4 * stor5 / 0 / stor4 == stor5
                                            require 0 / stor4 * stor5 / 1000 <= 0 / stor4
                                            require markets[arg1].field_1792 + (0 / stor4) - (0 / stor4 * stor5 / 1000) >= markets[arg1].field_1792
                                            markets[arg1].field_1280 = 1
                                            markets[arg1].field_1024 = arg2
                                            if not markets[arg1].field_1536 - (0 / stor4):
                                                require markets[arg1].field_1536 > 0
                                                require markets[arg1].field_1536
                                                markets[arg1].field_2048 = 0 / markets[arg1].field_1536
                                            else:
                                                require markets[arg1].field_1536 - (0 / stor4)
                                                require (markets[arg1].field_1536 * stor4) - (0 / stor4 * stor4) / markets[arg1].field_1536 - (0 / stor4) == stor4
                                                require markets[arg1].field_1536 > 0
                                                require markets[arg1].field_1536
                                                markets[arg1].field_2048 = (markets[arg1].field_1536 * stor4) - (0 / stor4 * stor4) / markets[arg1].field_1536
                                            if not markets[arg1].field_1792 + (0 / stor4) - (0 / stor4 * stor5 / 1000):
                                                require markets[arg1].field_1792 > 0
                                                require markets[arg1].field_1792
                                                markets[arg1].field_2304 = 0 / markets[arg1].field_1792
                                            else:
                                                require markets[arg1].field_1792 + (0 / stor4) - (0 / stor4 * stor5 / 1000)
                                                require (markets[arg1].field_1792 * stor4) + (0 / stor4 * stor4) - (0 / stor4 * stor5 / 1000 * stor4) / markets[arg1].field_1792 + (0 / stor4) - (0 / stor4 * stor5 / 1000) == stor4
                                                require markets[arg1].field_1792 > 0
                                                require markets[arg1].field_1792
                                                markets[arg1].field_2304 = (markets[arg1].field_1792 * stor4) + (0 / stor4 * stor4) - (0 / stor4 * stor5 / 1000 * stor4) / markets[arg1].field_1792
                                    else:
                                        require markets[arg1].field_1536
                                        require markets[arg1].field_1536 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / markets[arg1].field_1536 == 0 / markets[arg1].field_768 * markets[arg1].field_2560
                                        require stor4 > 0
                                        require stor4
                                        require markets[arg1].field_1536 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 <= markets[arg1].field_1536
                                        if not markets[arg1].field_1536 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4:
                                            require 0 <= markets[arg1].field_1536 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4
                                            require markets[arg1].field_1792 + (markets[arg1].field_1536 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4) >= markets[arg1].field_1792
                                            markets[arg1].field_1280 = 1
                                            markets[arg1].field_1024 = arg2
                                            if not markets[arg1].field_1536 - (markets[arg1].field_1536 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4):
                                                require markets[arg1].field_1536 > 0
                                                require markets[arg1].field_1536
                                                markets[arg1].field_2048 = 0 / markets[arg1].field_1536
                                            else:
                                                require markets[arg1].field_1536 - (markets[arg1].field_1536 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4)
                                                require (markets[arg1].field_1536 * stor4) - (markets[arg1].field_1536 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor4) / markets[arg1].field_1536 - (markets[arg1].field_1536 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4) == stor4
                                                require markets[arg1].field_1536 > 0
                                                require markets[arg1].field_1536
                                                markets[arg1].field_2048 = (markets[arg1].field_1536 * stor4) - (markets[arg1].field_1536 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor4) / markets[arg1].field_1536
                                            if not markets[arg1].field_1792 + (markets[arg1].field_1536 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4):
                                                require markets[arg1].field_1792 > 0
                                                require markets[arg1].field_1792
                                                markets[arg1].field_2304 = 0 / markets[arg1].field_1792
                                            else:
                                                require markets[arg1].field_1792 + (markets[arg1].field_1536 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4)
                                                require (markets[arg1].field_1792 * stor4) + (markets[arg1].field_1536 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor4) / markets[arg1].field_1792 + (markets[arg1].field_1536 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4) == stor4
                                                require markets[arg1].field_1792 > 0
                                                require markets[arg1].field_1792
                                                markets[arg1].field_2304 = (markets[arg1].field_1792 * stor4) + (markets[arg1].field_1536 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor4) / markets[arg1].field_1792
                                        else:
                                            require markets[arg1].field_1536 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4
                                            require markets[arg1].field_1536 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor5 / markets[arg1].field_1536 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 == stor5
                                            require markets[arg1].field_1536 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor5 / 1000 <= markets[arg1].field_1536 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4
                                            require markets[arg1].field_1792 + (markets[arg1].field_1536 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4) - (markets[arg1].field_1536 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor5 / 1000) >= markets[arg1].field_1792
                                            markets[arg1].field_1280 = 1
                                            markets[arg1].field_1024 = arg2
                                            if not markets[arg1].field_1536 - (markets[arg1].field_1536 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4):
                                                require markets[arg1].field_1536 > 0
                                                require markets[arg1].field_1536
                                                markets[arg1].field_2048 = 0 / markets[arg1].field_1536
                                            else:
                                                require markets[arg1].field_1536 - (markets[arg1].field_1536 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4)
                                                require (markets[arg1].field_1536 * stor4) - (markets[arg1].field_1536 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor4) / markets[arg1].field_1536 - (markets[arg1].field_1536 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4) == stor4
                                                require markets[arg1].field_1536 > 0
                                                require markets[arg1].field_1536
                                                markets[arg1].field_2048 = (markets[arg1].field_1536 * stor4) - (markets[arg1].field_1536 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor4) / markets[arg1].field_1536
                                            if not markets[arg1].field_1792 + (markets[arg1].field_1536 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4) - (markets[arg1].field_1536 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor5 / 1000):
                                                require markets[arg1].field_1792 > 0
                                                require markets[arg1].field_1792
                                                markets[arg1].field_2304 = 0 / markets[arg1].field_1792
                                            else:
                                                require markets[arg1].field_1792 + (markets[arg1].field_1536 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4) - (markets[arg1].field_1536 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor5 / 1000)
                                                require (markets[arg1].field_1792 * stor4) + (markets[arg1].field_1536 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor4) - (markets[arg1].field_1536 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor5 / 1000 * stor4) / markets[arg1].field_1792 + (markets[arg1].field_1536 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4) - (markets[arg1].field_1536 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor5 / 1000) == stor4
                                                require markets[arg1].field_1792 > 0
                                                require markets[arg1].field_1792
                                                markets[arg1].field_2304 = (markets[arg1].field_1792 * stor4) + (markets[arg1].field_1536 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor4) - (markets[arg1].field_1536 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor5 / 1000 * stor4) / markets[arg1].field_1792
                            else:
                                require stor4
                                require 100 * stor4 / stor4 == 100
                                if 0 / markets[arg1].field_768 * markets[arg1].field_2560 >= 100 * stor4:
                                    require markets[arg1].field_1536 <= markets[arg1].field_1536
                                    if not markets[arg1].field_1536:
                                        require 0 <= markets[arg1].field_1536
                                        require markets[arg1].field_1792 + markets[arg1].field_1536 >= markets[arg1].field_1792
                                        markets[arg1].field_1280 = 1
                                        markets[arg1].field_1024 = arg2
                                        require markets[arg1].field_1536 > 0
                                        require markets[arg1].field_1536
                                        markets[arg1].field_2048 = 0 / markets[arg1].field_1536
                                        if not markets[arg1].field_1792 + markets[arg1].field_1536:
                                            require markets[arg1].field_1792 > 0
                                            require markets[arg1].field_1792
                                            markets[arg1].field_2304 = 0 / markets[arg1].field_1792
                                        else:
                                            require markets[arg1].field_1792 + markets[arg1].field_1536
                                            require (markets[arg1].field_1792 * stor4) + (markets[arg1].field_1536 * stor4) / markets[arg1].field_1792 + markets[arg1].field_1536 == stor4
                                            require markets[arg1].field_1792 > 0
                                            require markets[arg1].field_1792
                                            markets[arg1].field_2304 = (markets[arg1].field_1792 * stor4) + (markets[arg1].field_1536 * stor4) / markets[arg1].field_1792
                                    else:
                                        require markets[arg1].field_1536
                                        require markets[arg1].field_1536 * stor5 / markets[arg1].field_1536 == stor5
                                        require markets[arg1].field_1536 * stor5 / 1000 <= markets[arg1].field_1536
                                        require markets[arg1].field_1792 + markets[arg1].field_1536 - (markets[arg1].field_1536 * stor5 / 1000) >= markets[arg1].field_1792
                                        markets[arg1].field_1280 = 1
                                        markets[arg1].field_1024 = arg2
                                        require markets[arg1].field_1536 > 0
                                        require markets[arg1].field_1536
                                        markets[arg1].field_2048 = 0 / markets[arg1].field_1536
                                        if not markets[arg1].field_1792 + markets[arg1].field_1536 - (markets[arg1].field_1536 * stor5 / 1000):
                                            require markets[arg1].field_1792 > 0
                                            require markets[arg1].field_1792
                                            markets[arg1].field_2304 = 0 / markets[arg1].field_1792
                                        else:
                                            require markets[arg1].field_1792 + markets[arg1].field_1536 - (markets[arg1].field_1536 * stor5 / 1000)
                                            require (markets[arg1].field_1792 * stor4) + (markets[arg1].field_1536 * stor4) - (markets[arg1].field_1536 * stor5 / 1000 * stor4) / markets[arg1].field_1792 + markets[arg1].field_1536 - (markets[arg1].field_1536 * stor5 / 1000) == stor4
                                            require markets[arg1].field_1792 > 0
                                            require markets[arg1].field_1792
                                            markets[arg1].field_2304 = (markets[arg1].field_1792 * stor4) + (markets[arg1].field_1536 * stor4) - (markets[arg1].field_1536 * stor5 / 1000 * stor4) / markets[arg1].field_1792
                                else:
                                    if not markets[arg1].field_1536:
                                        require stor4 > 0
                                        require stor4
                                        require 0 / stor4 <= markets[arg1].field_1536
                                        if not 0 / stor4:
                                            require 0 <= 0 / stor4
                                            require markets[arg1].field_1792 + (0 / stor4) >= markets[arg1].field_1792
                                            markets[arg1].field_1280 = 1
                                            markets[arg1].field_1024 = arg2
                                            if not markets[arg1].field_1536 - (0 / stor4):
                                                require markets[arg1].field_1536 > 0
                                                require markets[arg1].field_1536
                                                markets[arg1].field_2048 = 0 / markets[arg1].field_1536
                                            else:
                                                require markets[arg1].field_1536 - (0 / stor4)
                                                require (markets[arg1].field_1536 * stor4) - (0 / stor4 * stor4) / markets[arg1].field_1536 - (0 / stor4) == stor4
                                                require markets[arg1].field_1536 > 0
                                                require markets[arg1].field_1536
                                                markets[arg1].field_2048 = (markets[arg1].field_1536 * stor4) - (0 / stor4 * stor4) / markets[arg1].field_1536
                                            if not markets[arg1].field_1792 + (0 / stor4):
                                                require markets[arg1].field_1792 > 0
                                                require markets[arg1].field_1792
                                                markets[arg1].field_2304 = 0 / markets[arg1].field_1792
                                            else:
                                                require markets[arg1].field_1792 + (0 / stor4)
                                                require (markets[arg1].field_1792 * stor4) + (0 / stor4 * stor4) / markets[arg1].field_1792 + (0 / stor4) == stor4
                                                require markets[arg1].field_1792 > 0
                                                require markets[arg1].field_1792
                                                markets[arg1].field_2304 = (markets[arg1].field_1792 * stor4) + (0 / stor4 * stor4) / markets[arg1].field_1792
                                        else:
                                            require 0 / stor4
                                            require 0 / stor4 * stor5 / 0 / stor4 == stor5
                                            require 0 / stor4 * stor5 / 1000 <= 0 / stor4
                                            require markets[arg1].field_1792 + (0 / stor4) - (0 / stor4 * stor5 / 1000) >= markets[arg1].field_1792
                                            markets[arg1].field_1280 = 1
                                            markets[arg1].field_1024 = arg2
                                            if not markets[arg1].field_1536 - (0 / stor4):
                                                require markets[arg1].field_1536 > 0
                                                require markets[arg1].field_1536
                                                markets[arg1].field_2048 = 0 / markets[arg1].field_1536
                                            else:
                                                require markets[arg1].field_1536 - (0 / stor4)
                                                require (markets[arg1].field_1536 * stor4) - (0 / stor4 * stor4) / markets[arg1].field_1536 - (0 / stor4) == stor4
                                                require markets[arg1].field_1536 > 0
                                                require markets[arg1].field_1536
                                                markets[arg1].field_2048 = (markets[arg1].field_1536 * stor4) - (0 / stor4 * stor4) / markets[arg1].field_1536
                                            if not markets[arg1].field_1792 + (0 / stor4) - (0 / stor4 * stor5 / 1000):
                                                require markets[arg1].field_1792 > 0
                                                require markets[arg1].field_1792
                                                markets[arg1].field_2304 = 0 / markets[arg1].field_1792
                                            else:
                                                require markets[arg1].field_1792 + (0 / stor4) - (0 / stor4 * stor5 / 1000)
                                                require (markets[arg1].field_1792 * stor4) + (0 / stor4 * stor4) - (0 / stor4 * stor5 / 1000 * stor4) / markets[arg1].field_1792 + (0 / stor4) - (0 / stor4 * stor5 / 1000) == stor4
                                                require markets[arg1].field_1792 > 0
                                                require markets[arg1].field_1792
                                                markets[arg1].field_2304 = (markets[arg1].field_1792 * stor4) + (0 / stor4 * stor4) - (0 / stor4 * stor5 / 1000 * stor4) / markets[arg1].field_1792
                                    else:
                                        require markets[arg1].field_1536
                                        require markets[arg1].field_1536 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / markets[arg1].field_1536 == 0 / markets[arg1].field_768 * markets[arg1].field_2560
                                        require stor4 > 0
                                        require stor4
                                        require markets[arg1].field_1536 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 <= markets[arg1].field_1536
                                        if not markets[arg1].field_1536 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4:
                                            require 0 <= markets[arg1].field_1536 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4
                                            require markets[arg1].field_1792 + (markets[arg1].field_1536 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4) >= markets[arg1].field_1792
                                            markets[arg1].field_1280 = 1
                                            markets[arg1].field_1024 = arg2
                                            if not markets[arg1].field_1536 - (markets[arg1].field_1536 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4):
                                                require markets[arg1].field_1536 > 0
                                                require markets[arg1].field_1536
                                                markets[arg1].field_2048 = 0 / markets[arg1].field_1536
                                            else:
                                                require markets[arg1].field_1536 - (markets[arg1].field_1536 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4)
                                                require (markets[arg1].field_1536 * stor4) - (markets[arg1].field_1536 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor4) / markets[arg1].field_1536 - (markets[arg1].field_1536 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4) == stor4
                                                require markets[arg1].field_1536 > 0
                                                require markets[arg1].field_1536
                                                markets[arg1].field_2048 = (markets[arg1].field_1536 * stor4) - (markets[arg1].field_1536 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor4) / markets[arg1].field_1536
                                            if not markets[arg1].field_1792 + (markets[arg1].field_1536 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4):
                                                require markets[arg1].field_1792 > 0
                                                require markets[arg1].field_1792
                                                markets[arg1].field_2304 = 0 / markets[arg1].field_1792
                                            else:
                                                require markets[arg1].field_1792 + (markets[arg1].field_1536 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4)
                                                require (markets[arg1].field_1792 * stor4) + (markets[arg1].field_1536 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor4) / markets[arg1].field_1792 + (markets[arg1].field_1536 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4) == stor4
                                                require markets[arg1].field_1792 > 0
                                                require markets[arg1].field_1792
                                                markets[arg1].field_2304 = (markets[arg1].field_1792 * stor4) + (markets[arg1].field_1536 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor4) / markets[arg1].field_1792
                                        else:
                                            require markets[arg1].field_1536 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4
                                            require markets[arg1].field_1536 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor5 / markets[arg1].field_1536 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 == stor5
                                            require markets[arg1].field_1536 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor5 / 1000 <= markets[arg1].field_1536 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4
                                            require markets[arg1].field_1792 + (markets[arg1].field_1536 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4) - (markets[arg1].field_1536 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor5 / 1000) >= markets[arg1].field_1792
                                            markets[arg1].field_1280 = 1
                                            markets[arg1].field_1024 = arg2
                                            if not markets[arg1].field_1536 - (markets[arg1].field_1536 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4):
                                                require markets[arg1].field_1536 > 0
                                                require markets[arg1].field_1536
                                                markets[arg1].field_2048 = 0 / markets[arg1].field_1536
                                            else:
                                                require markets[arg1].field_1536 - (markets[arg1].field_1536 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4)
                                                require (markets[arg1].field_1536 * stor4) - (markets[arg1].field_1536 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor4) / markets[arg1].field_1536 - (markets[arg1].field_1536 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4) == stor4
                                                require markets[arg1].field_1536 > 0
                                                require markets[arg1].field_1536
                                                markets[arg1].field_2048 = (markets[arg1].field_1536 * stor4) - (markets[arg1].field_1536 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor4) / markets[arg1].field_1536
                                            if not markets[arg1].field_1792 + (markets[arg1].field_1536 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4) - (markets[arg1].field_1536 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor5 / 1000):
                                                require markets[arg1].field_1792 > 0
                                                require markets[arg1].field_1792
                                                markets[arg1].field_2304 = 0 / markets[arg1].field_1792
                                            else:
                                                require markets[arg1].field_1792 + (markets[arg1].field_1536 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4) - (markets[arg1].field_1536 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor5 / 1000)
                                                require (markets[arg1].field_1792 * stor4) + (markets[arg1].field_1536 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor4) - (markets[arg1].field_1536 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor5 / 1000 * stor4) / markets[arg1].field_1792 + (markets[arg1].field_1536 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4) - (markets[arg1].field_1536 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor5 / 1000) == stor4
                                                require markets[arg1].field_1792 > 0
                                                require markets[arg1].field_1792
                                                markets[arg1].field_2304 = (markets[arg1].field_1792 * stor4) + (markets[arg1].field_1536 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor4) - (markets[arg1].field_1536 * 0 / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor5 / 1000 * stor4) / markets[arg1].field_1792
                    else:
                        require arg2 - markets[arg1].field_768
                        require (arg2 * stor4) - (markets[arg1].field_768 * stor4) / arg2 - markets[arg1].field_768 == stor4
                        require markets[arg1].field_768 > 0
                        require markets[arg1].field_768
                        if not (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768:
                            if not stor4:
                                require markets[arg1].field_1536 <= markets[arg1].field_1536
                                if not markets[arg1].field_1536:
                                    require 0 <= markets[arg1].field_1536
                                    require markets[arg1].field_1792 + markets[arg1].field_1536 >= markets[arg1].field_1792
                                    markets[arg1].field_1280 = 1
                                    markets[arg1].field_1024 = arg2
                                    require markets[arg1].field_1536 > 0
                                    require markets[arg1].field_1536
                                    markets[arg1].field_2048 = 0 / markets[arg1].field_1536
                                    if not markets[arg1].field_1792 + markets[arg1].field_1536:
                                        require markets[arg1].field_1792 > 0
                                        require markets[arg1].field_1792
                                        markets[arg1].field_2304 = 0 / markets[arg1].field_1792
                                    else:
                                        require markets[arg1].field_1792 + markets[arg1].field_1536
                                        require (markets[arg1].field_1792 * stor4) + (markets[arg1].field_1536 * stor4) / markets[arg1].field_1792 + markets[arg1].field_1536 == stor4
                                        require markets[arg1].field_1792 > 0
                                        require markets[arg1].field_1792
                                        markets[arg1].field_2304 = (markets[arg1].field_1792 * stor4) + (markets[arg1].field_1536 * stor4) / markets[arg1].field_1792
                                else:
                                    require markets[arg1].field_1536
                                    require markets[arg1].field_1536 * stor5 / markets[arg1].field_1536 == stor5
                                    require markets[arg1].field_1536 * stor5 / 1000 <= markets[arg1].field_1536
                                    require markets[arg1].field_1792 + markets[arg1].field_1536 - (markets[arg1].field_1536 * stor5 / 1000) >= markets[arg1].field_1792
                                    markets[arg1].field_1280 = 1
                                    markets[arg1].field_1024 = arg2
                                    require markets[arg1].field_1536 > 0
                                    require markets[arg1].field_1536
                                    markets[arg1].field_2048 = 0 / markets[arg1].field_1536
                                    if not markets[arg1].field_1792 + markets[arg1].field_1536 - (markets[arg1].field_1536 * stor5 / 1000):
                                        require markets[arg1].field_1792 > 0
                                        require markets[arg1].field_1792
                                        markets[arg1].field_2304 = 0 / markets[arg1].field_1792
                                    else:
                                        require markets[arg1].field_1792 + markets[arg1].field_1536 - (markets[arg1].field_1536 * stor5 / 1000)
                                        require (markets[arg1].field_1792 * stor4) + (markets[arg1].field_1536 * stor4) - (markets[arg1].field_1536 * stor5 / 1000 * stor4) / markets[arg1].field_1792 + markets[arg1].field_1536 - (markets[arg1].field_1536 * stor5 / 1000) == stor4
                                        require markets[arg1].field_1792 > 0
                                        require markets[arg1].field_1792
                                        markets[arg1].field_2304 = (markets[arg1].field_1792 * stor4) + (markets[arg1].field_1536 * stor4) - (markets[arg1].field_1536 * stor5 / 1000 * stor4) / markets[arg1].field_1792
                            else:
                                require stor4
                                require 100 * stor4 / stor4 == 100
                                if 0 >= 100 * stor4:
                                    require markets[arg1].field_1536 <= markets[arg1].field_1536
                                    if not markets[arg1].field_1536:
                                        require 0 <= markets[arg1].field_1536
                                        require markets[arg1].field_1792 + markets[arg1].field_1536 >= markets[arg1].field_1792
                                        markets[arg1].field_1280 = 1
                                        markets[arg1].field_1024 = arg2
                                        require markets[arg1].field_1536 > 0
                                        require markets[arg1].field_1536
                                        markets[arg1].field_2048 = 0 / markets[arg1].field_1536
                                        if not markets[arg1].field_1792 + markets[arg1].field_1536:
                                            require markets[arg1].field_1792 > 0
                                            require markets[arg1].field_1792
                                            markets[arg1].field_2304 = 0 / markets[arg1].field_1792
                                        else:
                                            require markets[arg1].field_1792 + markets[arg1].field_1536
                                            require (markets[arg1].field_1792 * stor4) + (markets[arg1].field_1536 * stor4) / markets[arg1].field_1792 + markets[arg1].field_1536 == stor4
                                            require markets[arg1].field_1792 > 0
                                            require markets[arg1].field_1792
                                            markets[arg1].field_2304 = (markets[arg1].field_1792 * stor4) + (markets[arg1].field_1536 * stor4) / markets[arg1].field_1792
                                    else:
                                        require markets[arg1].field_1536
                                        require markets[arg1].field_1536 * stor5 / markets[arg1].field_1536 == stor5
                                        require markets[arg1].field_1536 * stor5 / 1000 <= markets[arg1].field_1536
                                        require markets[arg1].field_1792 + markets[arg1].field_1536 - (markets[arg1].field_1536 * stor5 / 1000) >= markets[arg1].field_1792
                                        markets[arg1].field_1280 = 1
                                        markets[arg1].field_1024 = arg2
                                        require markets[arg1].field_1536 > 0
                                        require markets[arg1].field_1536
                                        markets[arg1].field_2048 = 0 / markets[arg1].field_1536
                                        if not markets[arg1].field_1792 + markets[arg1].field_1536 - (markets[arg1].field_1536 * stor5 / 1000):
                                            require markets[arg1].field_1792 > 0
                                            require markets[arg1].field_1792
                                            markets[arg1].field_2304 = 0 / markets[arg1].field_1792
                                        else:
                                            require markets[arg1].field_1792 + markets[arg1].field_1536 - (markets[arg1].field_1536 * stor5 / 1000)
                                            require (markets[arg1].field_1792 * stor4) + (markets[arg1].field_1536 * stor4) - (markets[arg1].field_1536 * stor5 / 1000 * stor4) / markets[arg1].field_1792 + markets[arg1].field_1536 - (markets[arg1].field_1536 * stor5 / 1000) == stor4
                                            require markets[arg1].field_1792 > 0
                                            require markets[arg1].field_1792
                                            markets[arg1].field_2304 = (markets[arg1].field_1792 * stor4) + (markets[arg1].field_1536 * stor4) - (markets[arg1].field_1536 * stor5 / 1000 * stor4) / markets[arg1].field_1792
                                else:
                                    if markets[arg1].field_1536:
                                        require markets[arg1].field_1536
                                        require not 0 / markets[arg1].field_1536
                                    require stor4 > 0
                                    require stor4
                                    require 0 / stor4 <= markets[arg1].field_1536
                                    if not 0 / stor4:
                                        require 0 <= 0 / stor4
                                        require markets[arg1].field_1792 + (0 / stor4) >= markets[arg1].field_1792
                                        markets[arg1].field_1280 = 1
                                        markets[arg1].field_1024 = arg2
                                        if not markets[arg1].field_1536 - (0 / stor4):
                                            require markets[arg1].field_1536 > 0
                                            require markets[arg1].field_1536
                                            markets[arg1].field_2048 = 0 / markets[arg1].field_1536
                                        else:
                                            require markets[arg1].field_1536 - (0 / stor4)
                                            require (markets[arg1].field_1536 * stor4) - (0 / stor4 * stor4) / markets[arg1].field_1536 - (0 / stor4) == stor4
                                            require markets[arg1].field_1536 > 0
                                            require markets[arg1].field_1536
                                            markets[arg1].field_2048 = (markets[arg1].field_1536 * stor4) - (0 / stor4 * stor4) / markets[arg1].field_1536
                                        if not markets[arg1].field_1792 + (0 / stor4):
                                            require markets[arg1].field_1792 > 0
                                            require markets[arg1].field_1792
                                            markets[arg1].field_2304 = 0 / markets[arg1].field_1792
                                        else:
                                            require markets[arg1].field_1792 + (0 / stor4)
                                            require (markets[arg1].field_1792 * stor4) + (0 / stor4 * stor4) / markets[arg1].field_1792 + (0 / stor4) == stor4
                                            require markets[arg1].field_1792 > 0
                                            require markets[arg1].field_1792
                                            markets[arg1].field_2304 = (markets[arg1].field_1792 * stor4) + (0 / stor4 * stor4) / markets[arg1].field_1792
                                    else:
                                        require 0 / stor4
                                        require 0 / stor4 * stor5 / 0 / stor4 == stor5
                                        require 0 / stor4 * stor5 / 1000 <= 0 / stor4
                                        require markets[arg1].field_1792 + (0 / stor4) - (0 / stor4 * stor5 / 1000) >= markets[arg1].field_1792
                                        markets[arg1].field_1280 = 1
                                        markets[arg1].field_1024 = arg2
                                        if not markets[arg1].field_1536 - (0 / stor4):
                                            require markets[arg1].field_1536 > 0
                                            require markets[arg1].field_1536
                                            markets[arg1].field_2048 = 0 / markets[arg1].field_1536
                                        else:
                                            require markets[arg1].field_1536 - (0 / stor4)
                                            require (markets[arg1].field_1536 * stor4) - (0 / stor4 * stor4) / markets[arg1].field_1536 - (0 / stor4) == stor4
                                            require markets[arg1].field_1536 > 0
                                            require markets[arg1].field_1536
                                            markets[arg1].field_2048 = (markets[arg1].field_1536 * stor4) - (0 / stor4 * stor4) / markets[arg1].field_1536
                                        if not markets[arg1].field_1792 + (0 / stor4) - (0 / stor4 * stor5 / 1000):
                                            require markets[arg1].field_1792 > 0
                                            require markets[arg1].field_1792
                                            markets[arg1].field_2304 = 0 / markets[arg1].field_1792
                                        else:
                                            require markets[arg1].field_1792 + (0 / stor4) - (0 / stor4 * stor5 / 1000)
                                            require (markets[arg1].field_1792 * stor4) + (0 / stor4 * stor4) - (0 / stor4 * stor5 / 1000 * stor4) / markets[arg1].field_1792 + (0 / stor4) - (0 / stor4 * stor5 / 1000) == stor4
                                            require markets[arg1].field_1792 > 0
                                            require markets[arg1].field_1792
                                            markets[arg1].field_2304 = (markets[arg1].field_1792 * stor4) + (0 / stor4 * stor4) - (0 / stor4 * stor5 / 1000 * stor4) / markets[arg1].field_1792
                        else:
                            require (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768
                            require (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 == markets[arg1].field_2560
                            if not stor4:
                                if (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 >= 0:
                                    require markets[arg1].field_1536 <= markets[arg1].field_1536
                                    if not markets[arg1].field_1536:
                                        require 0 <= markets[arg1].field_1536
                                        require markets[arg1].field_1792 + markets[arg1].field_1536 >= markets[arg1].field_1792
                                        markets[arg1].field_1280 = 1
                                        markets[arg1].field_1024 = arg2
                                        require markets[arg1].field_1536 > 0
                                        require markets[arg1].field_1536
                                        markets[arg1].field_2048 = 0 / markets[arg1].field_1536
                                        if not markets[arg1].field_1792 + markets[arg1].field_1536:
                                            require markets[arg1].field_1792 > 0
                                            require markets[arg1].field_1792
                                            markets[arg1].field_2304 = 0 / markets[arg1].field_1792
                                        else:
                                            require markets[arg1].field_1792 + markets[arg1].field_1536
                                            require (markets[arg1].field_1792 * stor4) + (markets[arg1].field_1536 * stor4) / markets[arg1].field_1792 + markets[arg1].field_1536 == stor4
                                            require markets[arg1].field_1792 > 0
                                            require markets[arg1].field_1792
                                            markets[arg1].field_2304 = (markets[arg1].field_1792 * stor4) + (markets[arg1].field_1536 * stor4) / markets[arg1].field_1792
                                    else:
                                        require markets[arg1].field_1536
                                        require markets[arg1].field_1536 * stor5 / markets[arg1].field_1536 == stor5
                                        require markets[arg1].field_1536 * stor5 / 1000 <= markets[arg1].field_1536
                                        require markets[arg1].field_1792 + markets[arg1].field_1536 - (markets[arg1].field_1536 * stor5 / 1000) >= markets[arg1].field_1792
                                        markets[arg1].field_1280 = 1
                                        markets[arg1].field_1024 = arg2
                                        require markets[arg1].field_1536 > 0
                                        require markets[arg1].field_1536
                                        markets[arg1].field_2048 = 0 / markets[arg1].field_1536
                                        if not markets[arg1].field_1792 + markets[arg1].field_1536 - (markets[arg1].field_1536 * stor5 / 1000):
                                            require markets[arg1].field_1792 > 0
                                            require markets[arg1].field_1792
                                            markets[arg1].field_2304 = 0 / markets[arg1].field_1792
                                        else:
                                            require markets[arg1].field_1792 + markets[arg1].field_1536 - (markets[arg1].field_1536 * stor5 / 1000)
                                            require (markets[arg1].field_1792 * stor4) + (markets[arg1].field_1536 * stor4) - (markets[arg1].field_1536 * stor5 / 1000 * stor4) / markets[arg1].field_1792 + markets[arg1].field_1536 - (markets[arg1].field_1536 * stor5 / 1000) == stor4
                                            require markets[arg1].field_1792 > 0
                                            require markets[arg1].field_1792
                                            markets[arg1].field_2304 = (markets[arg1].field_1792 * stor4) + (markets[arg1].field_1536 * stor4) - (markets[arg1].field_1536 * stor5 / 1000 * stor4) / markets[arg1].field_1792
                                else:
                                    if not markets[arg1].field_1536:
                                        require stor4 > 0
                                        require stor4
                                        require 0 / stor4 <= markets[arg1].field_1536
                                        if not 0 / stor4:
                                            require 0 <= 0 / stor4
                                            require markets[arg1].field_1792 + (0 / stor4) >= markets[arg1].field_1792
                                            markets[arg1].field_1280 = 1
                                            markets[arg1].field_1024 = arg2
                                            if not markets[arg1].field_1536 - (0 / stor4):
                                                require markets[arg1].field_1536 > 0
                                                require markets[arg1].field_1536
                                                markets[arg1].field_2048 = 0 / markets[arg1].field_1536
                                            else:
                                                require markets[arg1].field_1536 - (0 / stor4)
                                                require (markets[arg1].field_1536 * stor4) - (0 / stor4 * stor4) / markets[arg1].field_1536 - (0 / stor4) == stor4
                                                require markets[arg1].field_1536 > 0
                                                require markets[arg1].field_1536
                                                markets[arg1].field_2048 = (markets[arg1].field_1536 * stor4) - (0 / stor4 * stor4) / markets[arg1].field_1536
                                            if not markets[arg1].field_1792 + (0 / stor4):
                                                require markets[arg1].field_1792 > 0
                                                require markets[arg1].field_1792
                                                markets[arg1].field_2304 = 0 / markets[arg1].field_1792
                                            else:
                                                require markets[arg1].field_1792 + (0 / stor4)
                                                require (markets[arg1].field_1792 * stor4) + (0 / stor4 * stor4) / markets[arg1].field_1792 + (0 / stor4) == stor4
                                                require markets[arg1].field_1792 > 0
                                                require markets[arg1].field_1792
                                                markets[arg1].field_2304 = (markets[arg1].field_1792 * stor4) + (0 / stor4 * stor4) / markets[arg1].field_1792
                                        else:
                                            require 0 / stor4
                                            require 0 / stor4 * stor5 / 0 / stor4 == stor5
                                            require 0 / stor4 * stor5 / 1000 <= 0 / stor4
                                            require markets[arg1].field_1792 + (0 / stor4) - (0 / stor4 * stor5 / 1000) >= markets[arg1].field_1792
                                            markets[arg1].field_1280 = 1
                                            markets[arg1].field_1024 = arg2
                                            if not markets[arg1].field_1536 - (0 / stor4):
                                                require markets[arg1].field_1536 > 0
                                                require markets[arg1].field_1536
                                                markets[arg1].field_2048 = 0 / markets[arg1].field_1536
                                            else:
                                                require markets[arg1].field_1536 - (0 / stor4)
                                                require (markets[arg1].field_1536 * stor4) - (0 / stor4 * stor4) / markets[arg1].field_1536 - (0 / stor4) == stor4
                                                require markets[arg1].field_1536 > 0
                                                require markets[arg1].field_1536
                                                markets[arg1].field_2048 = (markets[arg1].field_1536 * stor4) - (0 / stor4 * stor4) / markets[arg1].field_1536
                                            if not markets[arg1].field_1792 + (0 / stor4) - (0 / stor4 * stor5 / 1000):
                                                require markets[arg1].field_1792 > 0
                                                require markets[arg1].field_1792
                                                markets[arg1].field_2304 = 0 / markets[arg1].field_1792
                                            else:
                                                require markets[arg1].field_1792 + (0 / stor4) - (0 / stor4 * stor5 / 1000)
                                                require (markets[arg1].field_1792 * stor4) + (0 / stor4 * stor4) - (0 / stor4 * stor5 / 1000 * stor4) / markets[arg1].field_1792 + (0 / stor4) - (0 / stor4 * stor5 / 1000) == stor4
                                                require markets[arg1].field_1792 > 0
                                                require markets[arg1].field_1792
                                                markets[arg1].field_2304 = (markets[arg1].field_1792 * stor4) + (0 / stor4 * stor4) - (0 / stor4 * stor5 / 1000 * stor4) / markets[arg1].field_1792
                                    else:
                                        require markets[arg1].field_1536
                                        require markets[arg1].field_1536 * (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / markets[arg1].field_1536 == (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560
                                        require stor4 > 0
                                        require stor4
                                        require markets[arg1].field_1536 * (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 <= markets[arg1].field_1536
                                        if not markets[arg1].field_1536 * (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4:
                                            require 0 <= markets[arg1].field_1536 * (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4
                                            require markets[arg1].field_1792 + (markets[arg1].field_1536 * (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4) >= markets[arg1].field_1792
                                            markets[arg1].field_1280 = 1
                                            markets[arg1].field_1024 = arg2
                                            if not markets[arg1].field_1536 - (markets[arg1].field_1536 * (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4):
                                                require markets[arg1].field_1536 > 0
                                                require markets[arg1].field_1536
                                                markets[arg1].field_2048 = 0 / markets[arg1].field_1536
                                            else:
                                                require markets[arg1].field_1536 - (markets[arg1].field_1536 * (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4)
                                                require (markets[arg1].field_1536 * stor4) - (markets[arg1].field_1536 * (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor4) / markets[arg1].field_1536 - (markets[arg1].field_1536 * (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4) == stor4
                                                require markets[arg1].field_1536 > 0
                                                require markets[arg1].field_1536
                                                markets[arg1].field_2048 = (markets[arg1].field_1536 * stor4) - (markets[arg1].field_1536 * (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor4) / markets[arg1].field_1536
                                            if not markets[arg1].field_1792 + (markets[arg1].field_1536 * (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4):
                                                require markets[arg1].field_1792 > 0
                                                require markets[arg1].field_1792
                                                markets[arg1].field_2304 = 0 / markets[arg1].field_1792
                                            else:
                                                require markets[arg1].field_1792 + (markets[arg1].field_1536 * (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4)
                                                require (markets[arg1].field_1792 * stor4) + (markets[arg1].field_1536 * (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor4) / markets[arg1].field_1792 + (markets[arg1].field_1536 * (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4) == stor4
                                                require markets[arg1].field_1792 > 0
                                                require markets[arg1].field_1792
                                                markets[arg1].field_2304 = (markets[arg1].field_1792 * stor4) + (markets[arg1].field_1536 * (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor4) / markets[arg1].field_1792
                                        else:
                                            require markets[arg1].field_1536 * (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4
                                            require markets[arg1].field_1536 * (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor5 / markets[arg1].field_1536 * (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 == stor5
                                            require markets[arg1].field_1536 * (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor5 / 1000 <= markets[arg1].field_1536 * (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4
                                            require markets[arg1].field_1792 + (markets[arg1].field_1536 * (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4) - (markets[arg1].field_1536 * (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor5 / 1000) >= markets[arg1].field_1792
                                            markets[arg1].field_1280 = 1
                                            markets[arg1].field_1024 = arg2
                                            if not markets[arg1].field_1536 - (markets[arg1].field_1536 * (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4):
                                                require markets[arg1].field_1536 > 0
                                                require markets[arg1].field_1536
                                                markets[arg1].field_2048 = 0 / markets[arg1].field_1536
                                            else:
                                                require markets[arg1].field_1536 - (markets[arg1].field_1536 * (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4)
                                                require (markets[arg1].field_1536 * stor4) - (markets[arg1].field_1536 * (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor4) / markets[arg1].field_1536 - (markets[arg1].field_1536 * (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4) == stor4
                                                require markets[arg1].field_1536 > 0
                                                require markets[arg1].field_1536
                                                markets[arg1].field_2048 = (markets[arg1].field_1536 * stor4) - (markets[arg1].field_1536 * (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor4) / markets[arg1].field_1536
                                            if not markets[arg1].field_1792 + (markets[arg1].field_1536 * (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4) - (markets[arg1].field_1536 * (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor5 / 1000):
                                                require markets[arg1].field_1792 > 0
                                                require markets[arg1].field_1792
                                                markets[arg1].field_2304 = 0 / markets[arg1].field_1792
                                            else:
                                                require markets[arg1].field_1792 + (markets[arg1].field_1536 * (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4) - (markets[arg1].field_1536 * (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor5 / 1000)
                                                require (markets[arg1].field_1792 * stor4) + (markets[arg1].field_1536 * (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor4) - (markets[arg1].field_1536 * (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor5 / 1000 * stor4) / markets[arg1].field_1792 + (markets[arg1].field_1536 * (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4) - (markets[arg1].field_1536 * (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor5 / 1000) == stor4
                                                require markets[arg1].field_1792 > 0
                                                require markets[arg1].field_1792
                                                markets[arg1].field_2304 = (markets[arg1].field_1792 * stor4) + (markets[arg1].field_1536 * (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor4) - (markets[arg1].field_1536 * (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor5 / 1000 * stor4) / markets[arg1].field_1792
                            else:
                                require stor4
                                require 100 * stor4 / stor4 == 100
                                if (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 >= 100 * stor4:
                                    require markets[arg1].field_1536 <= markets[arg1].field_1536
                                    if not markets[arg1].field_1536:
                                        require 0 <= markets[arg1].field_1536
                                        require markets[arg1].field_1792 + markets[arg1].field_1536 >= markets[arg1].field_1792
                                        markets[arg1].field_1280 = 1
                                        markets[arg1].field_1024 = arg2
                                        require markets[arg1].field_1536 > 0
                                        require markets[arg1].field_1536
                                        markets[arg1].field_2048 = 0 / markets[arg1].field_1536
                                        if not markets[arg1].field_1792 + markets[arg1].field_1536:
                                            require markets[arg1].field_1792 > 0
                                            require markets[arg1].field_1792
                                            markets[arg1].field_2304 = 0 / markets[arg1].field_1792
                                        else:
                                            require markets[arg1].field_1792 + markets[arg1].field_1536
                                            require (markets[arg1].field_1792 * stor4) + (markets[arg1].field_1536 * stor4) / markets[arg1].field_1792 + markets[arg1].field_1536 == stor4
                                            require markets[arg1].field_1792 > 0
                                            require markets[arg1].field_1792
                                            markets[arg1].field_2304 = (markets[arg1].field_1792 * stor4) + (markets[arg1].field_1536 * stor4) / markets[arg1].field_1792
                                    else:
                                        require markets[arg1].field_1536
                                        require markets[arg1].field_1536 * stor5 / markets[arg1].field_1536 == stor5
                                        require markets[arg1].field_1536 * stor5 / 1000 <= markets[arg1].field_1536
                                        require markets[arg1].field_1792 + markets[arg1].field_1536 - (markets[arg1].field_1536 * stor5 / 1000) >= markets[arg1].field_1792
                                        markets[arg1].field_1280 = 1
                                        markets[arg1].field_1024 = arg2
                                        require markets[arg1].field_1536 > 0
                                        require markets[arg1].field_1536
                                        markets[arg1].field_2048 = 0 / markets[arg1].field_1536
                                        if not markets[arg1].field_1792 + markets[arg1].field_1536 - (markets[arg1].field_1536 * stor5 / 1000):
                                            require markets[arg1].field_1792 > 0
                                            require markets[arg1].field_1792
                                            markets[arg1].field_2304 = 0 / markets[arg1].field_1792
                                        else:
                                            require markets[arg1].field_1792 + markets[arg1].field_1536 - (markets[arg1].field_1536 * stor5 / 1000)
                                            require (markets[arg1].field_1792 * stor4) + (markets[arg1].field_1536 * stor4) - (markets[arg1].field_1536 * stor5 / 1000 * stor4) / markets[arg1].field_1792 + markets[arg1].field_1536 - (markets[arg1].field_1536 * stor5 / 1000) == stor4
                                            require markets[arg1].field_1792 > 0
                                            require markets[arg1].field_1792
                                            markets[arg1].field_2304 = (markets[arg1].field_1792 * stor4) + (markets[arg1].field_1536 * stor4) - (markets[arg1].field_1536 * stor5 / 1000 * stor4) / markets[arg1].field_1792
                                else:
                                    if not markets[arg1].field_1536:
                                        require stor4 > 0
                                        require stor4
                                        require 0 / stor4 <= markets[arg1].field_1536
                                        if not 0 / stor4:
                                            require 0 <= 0 / stor4
                                            require markets[arg1].field_1792 + (0 / stor4) >= markets[arg1].field_1792
                                            markets[arg1].field_1280 = 1
                                            markets[arg1].field_1024 = arg2
                                            if not markets[arg1].field_1536 - (0 / stor4):
                                                require markets[arg1].field_1536 > 0
                                                require markets[arg1].field_1536
                                                markets[arg1].field_2048 = 0 / markets[arg1].field_1536
                                            else:
                                                require markets[arg1].field_1536 - (0 / stor4)
                                                require (markets[arg1].field_1536 * stor4) - (0 / stor4 * stor4) / markets[arg1].field_1536 - (0 / stor4) == stor4
                                                require markets[arg1].field_1536 > 0
                                                require markets[arg1].field_1536
                                                markets[arg1].field_2048 = (markets[arg1].field_1536 * stor4) - (0 / stor4 * stor4) / markets[arg1].field_1536
                                            if not markets[arg1].field_1792 + (0 / stor4):
                                                require markets[arg1].field_1792 > 0
                                                require markets[arg1].field_1792
                                                markets[arg1].field_2304 = 0 / markets[arg1].field_1792
                                            else:
                                                require markets[arg1].field_1792 + (0 / stor4)
                                                require (markets[arg1].field_1792 * stor4) + (0 / stor4 * stor4) / markets[arg1].field_1792 + (0 / stor4) == stor4
                                                require markets[arg1].field_1792 > 0
                                                require markets[arg1].field_1792
                                                markets[arg1].field_2304 = (markets[arg1].field_1792 * stor4) + (0 / stor4 * stor4) / markets[arg1].field_1792
                                        else:
                                            require 0 / stor4
                                            require 0 / stor4 * stor5 / 0 / stor4 == stor5
                                            require 0 / stor4 * stor5 / 1000 <= 0 / stor4
                                            require markets[arg1].field_1792 + (0 / stor4) - (0 / stor4 * stor5 / 1000) >= markets[arg1].field_1792
                                            markets[arg1].field_1280 = 1
                                            markets[arg1].field_1024 = arg2
                                            if not markets[arg1].field_1536 - (0 / stor4):
                                                require markets[arg1].field_1536 > 0
                                                require markets[arg1].field_1536
                                                markets[arg1].field_2048 = 0 / markets[arg1].field_1536
                                            else:
                                                require markets[arg1].field_1536 - (0 / stor4)
                                                require (markets[arg1].field_1536 * stor4) - (0 / stor4 * stor4) / markets[arg1].field_1536 - (0 / stor4) == stor4
                                                require markets[arg1].field_1536 > 0
                                                require markets[arg1].field_1536
                                                markets[arg1].field_2048 = (markets[arg1].field_1536 * stor4) - (0 / stor4 * stor4) / markets[arg1].field_1536
                                            if not markets[arg1].field_1792 + (0 / stor4) - (0 / stor4 * stor5 / 1000):
                                                require markets[arg1].field_1792 > 0
                                                require markets[arg1].field_1792
                                                markets[arg1].field_2304 = 0 / markets[arg1].field_1792
                                            else:
                                                require markets[arg1].field_1792 + (0 / stor4) - (0 / stor4 * stor5 / 1000)
                                                require (markets[arg1].field_1792 * stor4) + (0 / stor4 * stor4) - (0 / stor4 * stor5 / 1000 * stor4) / markets[arg1].field_1792 + (0 / stor4) - (0 / stor4 * stor5 / 1000) == stor4
                                                require markets[arg1].field_1792 > 0
                                                require markets[arg1].field_1792
                                                markets[arg1].field_2304 = (markets[arg1].field_1792 * stor4) + (0 / stor4 * stor4) - (0 / stor4 * stor5 / 1000 * stor4) / markets[arg1].field_1792
                                    else:
                                        require markets[arg1].field_1536
                                        require markets[arg1].field_1536 * (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / markets[arg1].field_1536 == (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560
                                        require stor4 > 0
                                        require stor4
                                        require markets[arg1].field_1536 * (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 <= markets[arg1].field_1536
                                        if not markets[arg1].field_1536 * (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4:
                                            require 0 <= markets[arg1].field_1536 * (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4
                                            require markets[arg1].field_1792 + (markets[arg1].field_1536 * (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4) >= markets[arg1].field_1792
                                            markets[arg1].field_1280 = 1
                                            markets[arg1].field_1024 = arg2
                                            if not markets[arg1].field_1536 - (markets[arg1].field_1536 * (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4):
                                                require markets[arg1].field_1536 > 0
                                                require markets[arg1].field_1536
                                                markets[arg1].field_2048 = 0 / markets[arg1].field_1536
                                            else:
                                                require markets[arg1].field_1536 - (markets[arg1].field_1536 * (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4)
                                                require (markets[arg1].field_1536 * stor4) - (markets[arg1].field_1536 * (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor4) / markets[arg1].field_1536 - (markets[arg1].field_1536 * (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4) == stor4
                                                require markets[arg1].field_1536 > 0
                                                require markets[arg1].field_1536
                                                markets[arg1].field_2048 = (markets[arg1].field_1536 * stor4) - (markets[arg1].field_1536 * (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor4) / markets[arg1].field_1536
                                            if not markets[arg1].field_1792 + (markets[arg1].field_1536 * (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4):
                                                require markets[arg1].field_1792 > 0
                                                require markets[arg1].field_1792
                                                markets[arg1].field_2304 = 0 / markets[arg1].field_1792
                                            else:
                                                require markets[arg1].field_1792 + (markets[arg1].field_1536 * (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4)
                                                require (markets[arg1].field_1792 * stor4) + (markets[arg1].field_1536 * (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor4) / markets[arg1].field_1792 + (markets[arg1].field_1536 * (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4) == stor4
                                                require markets[arg1].field_1792 > 0
                                                require markets[arg1].field_1792
                                                markets[arg1].field_2304 = (markets[arg1].field_1792 * stor4) + (markets[arg1].field_1536 * (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor4) / markets[arg1].field_1792
                                        else:
                                            require markets[arg1].field_1536 * (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4
                                            require markets[arg1].field_1536 * (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor5 / markets[arg1].field_1536 * (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 == stor5
                                            require markets[arg1].field_1536 * (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor5 / 1000 <= markets[arg1].field_1536 * (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4
                                            require markets[arg1].field_1792 + (markets[arg1].field_1536 * (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4) - (markets[arg1].field_1536 * (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor5 / 1000) >= markets[arg1].field_1792
                                            markets[arg1].field_1280 = 1
                                            markets[arg1].field_1024 = arg2
                                            if not markets[arg1].field_1536 - (markets[arg1].field_1536 * (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4):
                                                require markets[arg1].field_1536 > 0
                                                require markets[arg1].field_1536
                                                markets[arg1].field_2048 = 0 / markets[arg1].field_1536
                                            else:
                                                require markets[arg1].field_1536 - (markets[arg1].field_1536 * (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4)
                                                require (markets[arg1].field_1536 * stor4) - (markets[arg1].field_1536 * (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor4) / markets[arg1].field_1536 - (markets[arg1].field_1536 * (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4) == stor4
                                                require markets[arg1].field_1536 > 0
                                                require markets[arg1].field_1536
                                                markets[arg1].field_2048 = (markets[arg1].field_1536 * stor4) - (markets[arg1].field_1536 * (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor4) / markets[arg1].field_1536
                                            if not markets[arg1].field_1792 + (markets[arg1].field_1536 * (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4) - (markets[arg1].field_1536 * (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor5 / 1000):
                                                require markets[arg1].field_1792 > 0
                                                require markets[arg1].field_1792
                                                markets[arg1].field_2304 = 0 / markets[arg1].field_1792
                                            else:
                                                require markets[arg1].field_1792 + (markets[arg1].field_1536 * (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4) - (markets[arg1].field_1536 * (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor5 / 1000)
                                                require (markets[arg1].field_1792 * stor4) + (markets[arg1].field_1536 * (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor4) - (markets[arg1].field_1536 * (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor5 / 1000 * stor4) / markets[arg1].field_1792 + (markets[arg1].field_1536 * (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4) - (markets[arg1].field_1536 * (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor5 / 1000) == stor4
                                                require markets[arg1].field_1792 > 0
                                                require markets[arg1].field_1792
                                                markets[arg1].field_2304 = (markets[arg1].field_1792 * stor4) + (markets[arg1].field_1536 * (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor4) - (markets[arg1].field_1536 * (arg2 * stor4) - (markets[arg1].field_768 * stor4) / markets[arg1].field_768 * markets[arg1].field_2560 / stor4 * stor5 / 1000 * stor4) / markets[arg1].field_1792
    return 1
}



}
