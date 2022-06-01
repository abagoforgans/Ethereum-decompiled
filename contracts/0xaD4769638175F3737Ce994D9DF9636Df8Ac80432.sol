contract main {




// =====================  Runtime code  =====================


#
#  - setJackpot(uint8[5] arg1)
#  - nextRound()
#
address resolverAddress;
address controllerAddress;
uint256 stor1;
array of uint32 stor10;
mapping of uint32 stor11;
array of uint8 stor12;
array of uint8 stor13;
address bookAddress;
uint256 stor2;
uint8 currentState; offset 192
uint32 stor3;
uint32 currentRound; offset 160
address walletAddress;
uint256 stor3;
array of uint256 stor4;
array of uint256 stor5;
array of uint256 stor6;
uint256 rollover;
array of uint256 poolUsed;
array of struct stor9;

function resolver() {
    return resolverAddress
}

function book() {
    return address(bookAddress)
}

function currentState() {
    return currentState
}

function addrs(uint256 arg1) {
    require arg1 < stor5.length
    return addrs[uint8(arg1)]
}

function amounts(uint256 arg1) {
    require arg1 < stor4.length
    return amounts[uint8(arg1)]
}

function wallet() {
    return walletAddress
}

function currentRound() {
    return currentRound
}

function rollover() {
    return rollover
}

function drawed(uint256 arg1) {
    require arg1 < stor6.length
    return bool(stor('array', ('div', 0.03125, ('param', 'arg1')), ('name', 'stor6', 6))[uint8(arg1)])
}

function poolUsed(uint256 arg1) {
    require arg1 < poolUsed.length
    return poolUsed[arg1]
}

function controller() {
    return address(controllerAddress)
}

function _fallback() payable {
    revert
}

function getAmountWeeklybyNum(uint32 arg1, uint8[5] arg2) {
    if not arg1:
        return 0
    if currentRound < uint32((7 * arg1) - 7):
        return 0
    require uint32(arg1 - 1) < stor11.length
    return stor11[uint32(arg1 - 1)][call.data[36] << 248 or uint8(call.data[68]) << 240 or uint8(call.data[100]) << 232 or uint8(call.data[164]) << 216 or uint8(call.data[132]) << 224]
}

function getWeeklyJackpot(uint32 arg1) {
    if not arg1:
        return code.data[20330 len 160], 0
    if arg1 > uint32(currentRound / 7):
        return code.data[20330 len 160], 0
    require uint32(arg1 - 1) < stor13.length
    idx = 256
    s = 0
    while 416 > idx + 32:
        mem[idx + 32] = stor('array', ('mask_shl', 32, 0, 0, ('add', -1, ('param', 'arg1'))), ('name', 'stor13', 13))[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    if not arg1:
        return mem[288 len 128] >> 1024, 0
    if currentRound < uint32((7 * arg1) - 7):
        return mem[288 len 128] >> 1024, 0
    if uint32(arg1 - 1) < stor11.length:
        return mem[288 len 128] >> 1024, 
               stor11[uint32(arg1 - 1)][stor13[uint32(arg1 - 1)] or uint8(mem[288]) << 240 or uint8(mem[320]) << 232 or uint8(mem[384]) << 216 or uint8(mem[352]) << 224]
    revert
}

function getAmountDailybyNum(uint32 arg1, uint8[5] arg2) {
    mem[96 len 160] = call.data[36 len 160]
    if not arg1:
        return 0
    if arg1 > currentRound:
        return 0
    mem[256 len 160] = code.data[20330 len 160]
    mem[416 len 160] = code.data[20330 len 160]
    mem[576 len 160] = code.data[20330 len 160]
    idx = 0
    while uint8(idx) < 5:
        mem[(32 * uint8(idx)) + 576] = mem[(32 * uint8(idx)) + 127 len 1]
        idx = idx + 1
        continue 
    s = 0
    t = 0
    idx = 0
    while uint8(idx) < 4:
        t = s
        u = 0
        while uint8(u) < uint8(-idx + 4):
            require uint8(u + 1) < 5
            require uint8(u) < 5
            if mem[(32 * uint8(u)) + 607 len 1] <= mem[(32 * uint8(u + 1)) + 607 len 1]:
                t = t
                u = u + 1
                continue 
            require uint8(u) < 5
            _34 = mem[(32 * uint8(u)) + 576]
            require uint8(u + 1) < 5
            require uint8(u) < 5
            mem[(32 * uint8(u)) + 576] = mem[(32 * uint8(u + 1)) + 607 len 1]
            require uint8(u + 1) < 5
            mem[(32 * uint8(u + 1)) + 576] = uint8(_34)
            t = _34
            u = u + 1
            continue 
        s = t
        t = u
        idx = idx + 1
        continue 
    if uint32(arg1 - 1) < stor10.length:
        return stor10[uint32(arg1 - 1)][uint8(mem[672]) << 224 or uint8(mem[704]) << 216 or uint8(mem[640]) << 232 or uint8(mem[608]) << 240 or mem[576] << 248]
    revert
}

function getSingleBet(uint32 arg1, uint32 arg2) {
    if not arg1:
        return code.data[20330 len 160], 0, 0
    if arg1 > currentRound:
        return code.data[20330 len 160], 0, 0
    require uint32(arg1 - 1) < stor9.length
    if uint32(stor9[uint32(arg1 - 1)][msg.sender].field_0) <= 0:
        return code.data[20330 len 160], 0, 0
    if not arg2:
        return code.data[20330 len 160], 0, 0
    if arg2 > uint32(stor9[uint32(arg1 - 1)][msg.sender].field_0):
        return code.data[20330 len 160], 0, 0
    require uint32(arg1 - 1) < stor9.length
    require uint32(arg2 - 1) < stor9[uint32(arg1 - 1)][msg.sender].field_0
    idx = 256
    s = 0
    while 416 > idx + 32:
        mem[idx + 32] = stor('array', ('mask_shl', 32, 0, 1, ('add', -1, ('param', 'arg2'))), ('map', 'msg.sender', ('array', ('mask_shl', 32, 0, 0, ('add', -1, ('param', 'arg1'))), ('name', 'stor9', 9))))[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    if uint32(arg1 - 1) < stor9.length:
        if uint32(arg2 - 1) < stor9[uint32(arg1 - 1)][msg.sender].field_0:
            if uint32(arg1 - 1) < stor9.length:
                if uint32(arg2 - 1) < stor9[uint32(arg1 - 1)][msg.sender].field_0:
                    return mem[288 len 128] >> 1024, 
                           bool(uint8(stor9[uint32(arg1 - 1)][msg.sender][2 * uint32(arg2 - 1)].field_256)),
                           bool(uint8(stor9[uint32(arg1 - 1)][msg.sender][2 * uint32(arg2 - 1)].field_264))
    revert
}

function getDailyJackpot(uint32 arg1) {
    if not arg1:
        return code.data[20330 len 160], 0
    if arg1 > currentRound:
        return code.data[20330 len 160], 0
    require uint32(arg1 - 1) < stor12.length
    mem[256] = stor12[uint32(arg1 - 1)]
    idx = 256
    s = 0
    while 416 > idx + 32:
        mem[idx + 32] = stor('array', ('mask_shl', 32, 0, 0, ('add', -1, ('param', 'arg1'))), ('name', 'stor12', 12))[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    if not arg1:
        return mem[288 len 128] >> 1024, 0
    if arg1 > currentRound:
        return mem[288 len 128] >> 1024, 0
    mem[416 len 160] = code.data[20330 len 160]
    mem[576 len 160] = code.data[20330 len 160]
    mem[736 len 160] = code.data[20330 len 160]
    idx = 0
    while uint8(idx) < 5:
        mem[(32 * uint8(idx)) + 736] = mem[(32 * uint8(idx)) + 287 len 1]
        idx = idx + 1
        continue 
    s = 0
    t = 0
    idx = 0
    while uint8(idx) < 4:
        t = s
        u = 0
        while uint8(u) < uint8(-idx + 4):
            require uint8(u + 1) < 5
            require uint8(u) < 5
            if mem[(32 * uint8(u)) + 767 len 1] <= mem[(32 * uint8(u + 1)) + 767 len 1]:
                t = t
                u = u + 1
                continue 
            require uint8(u) < 5
            _58 = mem[(32 * uint8(u)) + 736]
            require uint8(u + 1) < 5
            require uint8(u) < 5
            mem[(32 * uint8(u)) + 736] = mem[(32 * uint8(u + 1)) + 767 len 1]
            require uint8(u + 1) < 5
            mem[(32 * uint8(u + 1)) + 736] = uint8(_58)
            t = _58
            u = u + 1
            continue 
        s = t
        t = u
        idx = idx + 1
        continue 
    require uint32(arg1 - 1) < stor10.length
    var41001 = 160
    return mem[288 len 128] >> 1024, 
           stor10[uint32(arg1 - 1)][uint8(mem[832]) << 224 or uint8(mem[864]) << 216 or uint8(mem[800]) << 232 or uint8(mem[768]) << 240 or mem[736] << 248]
}

function rewardWeekly(uint32 arg1, uint32 arg2) {
    require 1 == currentState
    require tx.origin == msg.sender
    require arg1 > 0
    require arg1 <= currentRound
    require uint32(arg1 - 1) < stor6.length
    require stor('array', ('mask_shl', 27, 5, -5, ('add', -1, ('param', 'arg1'))), ('name', 'stor6', 6))[uint8(arg1 - 1)]
    require arg2 > 0
    require uint32(arg1 - 1) < stor9.length
    require arg2 <= stor9[uint32(arg1 - 1)][msg.sender].field_0
    require uint32(arg1 - 1) < stor9.length
    require uint32(arg2 - 1) < stor9[uint32(arg1 - 1)][msg.sender].field_0
    require not uint8(stor9[uint32(arg1 - 1)][msg.sender][2 * uint32(arg2 - 1)].field_264)
    require uint32(arg1 - 1) < stor9.length
    require uint32(arg2 - 1) < stor9[uint32(arg1 - 1)][msg.sender].field_0
    idx = 256
    s = 0
    while 416 > idx + 32:
        mem[idx + 32] = stor('array', ('mask_shl', 32, 0, 1, ('add', -1, ('param', 'arg2'))), ('map', 'msg.sender', ('array', ('mask_shl', 32, 0, 0, ('add', -1, ('param', 'arg1'))), ('name', 'stor9', 9))))[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    require uint32(uint32(arg1 - 1) / 7) < stor13.length
    idx = 416
    s = 0
    while 576 > idx + 32:
        mem[idx + 32] = stor('array', ('mask_shl', 32, 0, 0, ('div', ('mask_shl', 32, 0, 0, ('add', -1, ('param', 'arg1'))), 7)), ('name', 'stor13', 13))[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    if stor13[uint32(uint32(arg1 - 1) / 7)] or uint8(mem[448]) << 240 or uint8(mem[480]) << 232 or uint8(mem[544]) << 216 or uint8(mem[512]) << 224 != uint8(stor9[uint32(arg1 - 1)][msg.sender][2 * uint32(arg2 - 1)].field_0) or uint8(mem[288]) << 240 or uint8(mem[320]) << 232 or uint8(mem[384]) << 216 or uint8(mem[352]) << 224:
        return 0
    require uint32(uint32(arg1 - 1) / 7) < stor11.length
    if stor11[uint32(uint32(arg1 - 1) / 7)][uint8(stor9[uint32(arg1 - 1)][msg.sender][2 * uint32(arg2 - 1)].field_0) or uint8(mem[288]) << 240 or uint8(mem[320]) << 232 or uint8(mem[384]) << 216 or uint8(mem[352]) << 224] <= 0:
        return 0
    require uint32(uint32(arg1 - 1) / 7) < poolUsed.length
    require stor11[uint32(uint32(arg1 - 1) / 7)][uint8(stor9[uint32(arg1 - 1)][msg.sender][2 * uint32(arg2 - 1)].field_0) or uint8(mem[288]) << 240 or uint8(mem[320]) << 232 or uint8(mem[384]) << 216 or uint8(mem[352]) << 224]
    if poolUsed[uint32(uint32(arg1 - 1) / 7)] / stor11[uint32(uint32(arg1 - 1) / 7)][uint8(stor9[uint32(arg1 - 1)][msg.sender][2 * uint32(arg2 - 1)].field_0) or uint8(mem[288]) << 240 or uint8(mem[320]) << 232 or uint8(mem[384]) << 216 or uint8(mem[352]) << 224] > eth.balance(this.address):
        emit BalanceNotEnough()
        return 0
    require uint32(arg1 - 1) < stor9.length
    require uint32(arg2 - 1) < stor9[uint32(arg1 - 1)][msg.sender].field_0
    Mask(248, 0, stor9[uint32(arg1 - 1)][msg.sender][2 * uint32(arg2 - 1)].field_264) = 1
    call msg.sender with:
       value poolUsed[uint32(uint32(arg1 - 1) / 7)] / stor11[uint32(uint32(arg1 - 1) / 7)][uint8(stor9[uint32(arg1 - 1)][msg.sender][2 * uint32(arg2 - 1)].field_0) or uint8(mem[288]) << 240 or uint8(mem[320]) << 232 or uint8(mem[384]) << 216 or uint8(mem[352]) << 224] wei
         gas 2300 * is_zero(value) wei
    if ext_call.success:
        emit OnRewardWeekly(msg.sender, arg1 << 224, arg2 << 224, poolUsed[uint32(uint32(arg1 - 1) / 7)] / stor11[uint32(uint32(arg1 - 1) / 7)][uint8(stor9[uint32(arg1 - 1)][msg.sender][2 * uint32(arg2 - 1)].field_0) or uint8(mem[288]) << 240 or uint8(mem[320]) << 232 or uint8(mem[384]) << 216 or uint8(mem[352]) << 224]);
        return (poolUsed[uint32(uint32(arg1 - 1) / 7)] / stor11[uint32(uint32(arg1 - 1) / 7)][uint8(stor9[uint32(arg1 - 1)][msg.sender][2 * uint32(arg2 - 1)].field_0) or uint8(mem[288]) << 240 or uint8(mem[320]) << 232 or uint8(mem[384]) << 216 or uint8(mem[352]) << 224])
    emit OnRewardWeeklyFailed(msg.sender, arg1 << 224, arg2);
    revert
}

function freeze() {
    if not resolverAddress:
        if ext_code.size(0xde4413799c73a356d83ace2dc9055957c0a5c335) > 0:
            resolverAddress = 0xde4413799c73a356d83ace2dc9055957c0a5c335
            require ext_code.size(resolverAddress)
            call resolverAddress.getWalletAddress() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            uint256(stor3.field_0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor3.field_0))
            require ext_code.size(resolverAddress)
            call resolverAddress.0x23226654 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
            require ext_code.size(resolverAddress)
            call resolverAddress.0xc57380a2 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
    else:
        if not ext_code.size(resolverAddress):
            if ext_code.size(0xde4413799c73a356d83ace2dc9055957c0a5c335) > 0:
                resolverAddress = 0xde4413799c73a356d83ace2dc9055957c0a5c335
                require ext_code.size(resolverAddress)
                call resolverAddress.getWalletAddress() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor3.field_0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor3.field_0))
                require ext_code.size(resolverAddress)
                call resolverAddress.0x23226654 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
                require ext_code.size(resolverAddress)
                call resolverAddress.0xc57380a2 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
        else:
            call resolverAddress.getWalletAddress() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(resolverAddress)
            if ext_call.return_data[12 len 20] != walletAddress:
                call resolverAddress.getWalletAddress() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor3.field_0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor3.field_0))
            call resolverAddress.0x23226654 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(resolverAddress)
            if ext_call.return_data[12 len 20] != address(bookAddress):
                call resolverAddress.0x23226654 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
            call resolverAddress.0xc57380a2 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] != address(controllerAddress):
                require ext_code.size(resolverAddress)
                call resolverAddress.0xc57380a2 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
    require msg.sender == address(controllerAddress)
    currentState = 2
    emit OnFreeze(uint32 arg1):
                  0,
                  currentRound,
}

function unfreeze() {
    if not resolverAddress:
        if ext_code.size(0xde4413799c73a356d83ace2dc9055957c0a5c335) > 0:
            resolverAddress = 0xde4413799c73a356d83ace2dc9055957c0a5c335
            require ext_code.size(resolverAddress)
            call resolverAddress.getWalletAddress() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            uint256(stor3.field_0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor3.field_0))
            require ext_code.size(resolverAddress)
            call resolverAddress.0x23226654 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
            require ext_code.size(resolverAddress)
            call resolverAddress.0xc57380a2 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
    else:
        if not ext_code.size(resolverAddress):
            if ext_code.size(0xde4413799c73a356d83ace2dc9055957c0a5c335) > 0:
                resolverAddress = 0xde4413799c73a356d83ace2dc9055957c0a5c335
                require ext_code.size(resolverAddress)
                call resolverAddress.getWalletAddress() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor3.field_0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor3.field_0))
                require ext_code.size(resolverAddress)
                call resolverAddress.0x23226654 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
                require ext_code.size(resolverAddress)
                call resolverAddress.0xc57380a2 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
        else:
            call resolverAddress.getWalletAddress() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(resolverAddress)
            if ext_call.return_data[12 len 20] != walletAddress:
                call resolverAddress.getWalletAddress() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor3.field_0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor3.field_0))
            call resolverAddress.0x23226654 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(resolverAddress)
            if ext_call.return_data[12 len 20] != address(bookAddress):
                call resolverAddress.0x23226654 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
            call resolverAddress.0xc57380a2 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] != address(controllerAddress):
                require ext_code.size(resolverAddress)
                call resolverAddress.0xc57380a2 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
    require msg.sender == address(controllerAddress)
    require 2 == currentState
    currentState = 1
    emit OnUnFreeze(uint32 arg1):
                    0,
                    currentRound,
}

function draw() {
    if not resolverAddress:
        if ext_code.size(0xde4413799c73a356d83ace2dc9055957c0a5c335) > 0:
            resolverAddress = 0xde4413799c73a356d83ace2dc9055957c0a5c335
            require ext_code.size(resolverAddress)
            call resolverAddress.getWalletAddress() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            uint256(stor3.field_0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor3.field_0))
            require ext_code.size(resolverAddress)
            call resolverAddress.0x23226654 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
            require ext_code.size(resolverAddress)
            call resolverAddress.0xc57380a2 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
    else:
        if not ext_code.size(resolverAddress):
            if ext_code.size(0xde4413799c73a356d83ace2dc9055957c0a5c335) > 0:
                resolverAddress = 0xde4413799c73a356d83ace2dc9055957c0a5c335
                require ext_code.size(resolverAddress)
                call resolverAddress.getWalletAddress() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor3.field_0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor3.field_0))
                require ext_code.size(resolverAddress)
                call resolverAddress.0x23226654 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
                require ext_code.size(resolverAddress)
                call resolverAddress.0xc57380a2 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
        else:
            call resolverAddress.getWalletAddress() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(resolverAddress)
            if ext_call.return_data[12 len 20] != walletAddress:
                call resolverAddress.getWalletAddress() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor3.field_0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor3.field_0))
            call resolverAddress.0x23226654 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(resolverAddress)
            if ext_call.return_data[12 len 20] != address(bookAddress):
                call resolverAddress.0x23226654 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
            call resolverAddress.0xc57380a2 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] != address(controllerAddress):
                require ext_code.size(resolverAddress)
                call resolverAddress.0xc57380a2 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
    require msg.sender == address(controllerAddress)
    require uint32(currentRound - 1) < stor6.length
    require not stor('array', ('mask_shl', 27, 5, -5, ('add', -1, ('stor', 32, 160, ('name', 'stor3', 3)))), ('name', 'stor6', 6))[uint8(uint32(stor3.field_160) - 1)]
    currentState = 3
    emit OnDrawStart(uint32 arg1):
                     0,
                     currentRound,
}

function rewardDaily(uint32 arg1, uint32 arg2) {
    require 1 == currentState
    require tx.origin == msg.sender
    require arg1 > 0
    require arg1 <= currentRound
    require uint32(arg1 - 1) < stor6.length
    require stor('array', ('mask_shl', 27, 5, -5, ('add', -1, ('param', 'arg1'))), ('name', 'stor6', 6))[uint8(arg1 - 1)]
    require arg2 > 0
    require uint32(arg1 - 1) < stor9.length
    require arg2 <= stor9[uint32(arg1 - 1)][msg.sender].field_0
    require uint32(arg1 - 1) < stor9.length
    require uint32(arg2 - 1) < stor9[uint32(arg1 - 1)][msg.sender].field_0
    require not uint8(stor9[uint32(arg1 - 1)][msg.sender][2 * uint32(arg2 - 1)].field_256)
    require uint32(arg1 - 1) < stor9.length
    require uint32(arg2 - 1) < stor9[uint32(arg1 - 1)][msg.sender].field_0
    mem[256] = uint8(stor9[uint32(arg1 - 1)][msg.sender][2 * uint32(arg2 - 1)].field_0)
    idx = 256
    s = 0
    while 416 > idx + 32:
        mem[idx + 32] = stor('array', ('mask_shl', 32, 0, 1, ('add', -1, ('param', 'arg2'))), ('map', 'msg.sender', ('array', ('mask_shl', 32, 0, 0, ('add', -1, ('param', 'arg1'))), ('name', 'stor9', 9))))[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    mem[416 len 160] = code.data[20330 len 160]
    mem[576 len 160] = code.data[20330 len 160]
    mem[736 len 160] = code.data[20330 len 160]
    idx = 0
    while uint8(idx) < 5:
        mem[(32 * uint8(idx)) + 736] = mem[(32 * uint8(idx)) + 287 len 1]
        idx = idx + 1
        continue 
    s = 0
    t = 0
    idx = 0
    while uint8(idx) < 4:
        t = s
        u = 0
        while uint8(u) < uint8(-idx + 4):
            require uint8(u + 1) < 5
            require uint8(u) < 5
            if mem[(32 * uint8(u)) + 767 len 1] <= mem[(32 * uint8(u + 1)) + 767 len 1]:
                t = t
                u = u + 1
                continue 
            require uint8(u) < 5
            _47 = mem[(32 * uint8(u)) + 736]
            require uint8(u + 1) < 5
            require uint8(u) < 5
            mem[(32 * uint8(u)) + 736] = mem[(32 * uint8(u + 1)) + 767 len 1]
            require uint8(u + 1) < 5
            mem[(32 * uint8(u + 1)) + 736] = uint8(_47)
            t = _47
            u = u + 1
            continue 
        s = t
        t = u
        idx = idx + 1
        continue 
    require uint32(arg1 - 1) < stor12.length
    mem[896] = stor12[uint32(arg1 - 1)]
    idx = 896
    s = 0
    while 1056 > idx + 32:
        mem[idx + 32] = stor('array', ('mask_shl', 32, 0, 0, ('add', -1, ('param', 'arg1'))), ('name', 'stor12', 12))[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    mem[1056 len 160] = code.data[20330 len 160]
    mem[1216 len 160] = code.data[20330 len 160]
    mem[1376 len 160] = code.data[20330 len 160]
    idx = 0
    while uint8(idx) < 5:
        mem[(32 * uint8(idx)) + 1376] = mem[(32 * uint8(idx)) + 927 len 1]
        idx = idx + 1
        continue 
    s = 0
    t = 0
    idx = 0
    while uint8(idx) < 4:
        t = s
        u = 0
        while uint8(u) < uint8(-idx + 4):
            require uint8(u + 1) < 5
            require uint8(u) < 5
            if mem[(32 * uint8(u)) + 1407 len 1] <= mem[(32 * uint8(u + 1)) + 1407 len 1]:
                t = t
                u = u + 1
                continue 
            require uint8(u) < 5
            _123 = mem[(32 * uint8(u)) + 1376]
            require uint8(u + 1) < 5
            require uint8(u) < 5
            mem[(32 * uint8(u)) + 1376] = mem[(32 * uint8(u + 1)) + 1407 len 1]
            require uint8(u + 1) < 5
            mem[(32 * uint8(u + 1)) + 1376] = uint8(_123)
            t = _123
            u = u + 1
            continue 
        s = t
        t = u
        idx = idx + 1
        continue 
    if uint8(mem[1472]) << 224 or uint8(mem[1504]) << 216 or uint8(mem[1440]) << 232 or uint8(mem[1408]) << 240 or mem[1376] << 248 != uint8(mem[832]) << 224 or uint8(mem[864]) << 216 or uint8(mem[800]) << 232 or uint8(mem[768]) << 240 or mem[736] << 248:
        return 0
    require uint32(arg1 - 1) < stor10.length
    if stor10[uint32(arg1 - 1)][uint8(mem[832]) << 224 or uint8(mem[864]) << 216 or uint8(mem[800]) << 232 or uint8(mem[768]) << 240 or mem[736] << 248] <= 0:
        return 0
    require uint32(arg1 - 1) < stor4.length
    require 5 * 10^16 * stor('array', ('mask_shl', 29, 3, -3, ('add', -1, ('param', 'arg1'))), ('name', 'stor4', 4))[uint8(arg1 - 1)] / 5 * 10^16 == stor('array', ('mask_shl', 29, 3, -3, ('add', -1, ('param', 'arg1'))), ('name', 'stor4', 4))[uint8(arg1 - 1)]
    if not 5 * 10^16 * stor('array', ('mask_shl', 29, 3, -3, ('add', -1, ('param', 'arg1'))), ('name', 'stor4', 4))[uint8(arg1 - 1)]:
        require stor10[uint32(arg1 - 1)][uint8(mem[832]) << 224 or uint8(mem[864]) << 216 or uint8(mem[800]) << 232 or uint8(mem[768]) << 240 or mem[736] << 248]
        if 0 / stor10[uint32(arg1 - 1)][uint8(mem[832]) << 224 or uint8(mem[864]) << 216 or uint8(mem[800]) << 232 or uint8(mem[768]) << 240 or mem[736] << 248] > eth.balance(this.address):
            emit BalanceNotEnough()
        else:
            require uint32(arg1 - 1) < stor9.length
            require uint32(arg2 - 1) < stor9[uint32(arg1 - 1)][msg.sender].field_0
            uint8(stor9[uint32(arg1 - 1)][msg.sender][2 * uint32(arg2 - 1)].field_256) = 1
            call msg.sender with:
               value 0 / stor10[uint32(arg1 - 1)][uint8(mem[832]) << 224 or uint8(mem[864]) << 216 or uint8(mem[800]) << 232 or uint8(mem[768]) << 240 or mem[736] << 248] wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
                emit OnRewardDaily(msg.sender, arg1 << 224, arg2 << 224, 0 / stor10[uint32(arg1 - 1)][uint8(mem[832]) << 224 or uint8(mem[864]) << 216 or uint8(mem[800]) << 232 or uint8(mem[768]) << 240 or mem[736] << 248]);
                return (0 / stor10[uint32(arg1 - 1)][uint8(mem[832]) << 224 or uint8(mem[864]) << 216 or uint8(mem[800]) << 232 or uint8(mem[768]) << 240 or mem[736] << 248])
            emit OnRewardDailyFailed(msg.sender, arg1 << 224, arg2);
    else:
        require 125 * 10^14 * 3600 * stor('array', ('mask_shl', 29, 3, -3, ('add', -1, ('param', 'arg1'))), ('name', 'stor4', 4))[uint8(arg1 - 1)] / 5 * 10^16 * stor('array', ('mask_shl', 29, 3, -3, ('add', -1, ('param', 'arg1'))), ('name', 'stor4', 4))[uint8(arg1 - 1)] == 900
        if not 125 * 10^14 * 3600 * stor('array', ('mask_shl', 29, 3, -3, ('add', -1, ('param', 'arg1'))), ('name', 'stor4', 4))[uint8(arg1 - 1)] / 1000:
            require stor10[uint32(arg1 - 1)][uint8(mem[832]) << 224 or uint8(mem[864]) << 216 or uint8(mem[800]) << 232 or uint8(mem[768]) << 240 or mem[736] << 248]
            if 0 / stor10[uint32(arg1 - 1)][uint8(mem[832]) << 224 or uint8(mem[864]) << 216 or uint8(mem[800]) << 232 or uint8(mem[768]) << 240 or mem[736] << 248] > eth.balance(this.address):
                emit BalanceNotEnough()
            else:
                require uint32(arg1 - 1) < stor9.length
                require uint32(arg2 - 1) < stor9[uint32(arg1 - 1)][msg.sender].field_0
                uint8(stor9[uint32(arg1 - 1)][msg.sender][2 * uint32(arg2 - 1)].field_256) = 1
                call msg.sender with:
                   value 0 / stor10[uint32(arg1 - 1)][uint8(mem[832]) << 224 or uint8(mem[864]) << 216 or uint8(mem[800]) << 232 or uint8(mem[768]) << 240 or mem[736] << 248] wei
                     gas 2300 * is_zero(value) wei
                if ext_call.success:
                    emit OnRewardDaily(msg.sender, arg1 << 224, arg2 << 224, 0 / stor10[uint32(arg1 - 1)][uint8(mem[832]) << 224 or uint8(mem[864]) << 216 or uint8(mem[800]) << 232 or uint8(mem[768]) << 240 or mem[736] << 248]);
                    return (0 / stor10[uint32(arg1 - 1)][uint8(mem[832]) << 224 or uint8(mem[864]) << 216 or uint8(mem[800]) << 232 or uint8(mem[768]) << 240 or mem[736] << 248])
                emit OnRewardDailyFailed(msg.sender, arg1 << 224, arg2);
        else:
            require 500 * 125 * 10^14 * 3600 * stor('array', ('mask_shl', 29, 3, -3, ('add', -1, ('param', 'arg1'))), ('name', 'stor4', 4))[uint8(arg1 - 1)] / 1000 / 125 * 10^14 * 3600 * stor('array', ('mask_shl', 29, 3, -3, ('add', -1, ('param', 'arg1'))), ('name', 'stor4', 4))[uint8(arg1 - 1)] / 1000 == 500
            if not 500 * 125 * 10^14 * 3600 * stor('array', ('mask_shl', 29, 3, -3, ('add', -1, ('param', 'arg1'))), ('name', 'stor4', 4))[uint8(arg1 - 1)] / 1000 / 1000:
                require stor10[uint32(arg1 - 1)][uint8(mem[832]) << 224 or uint8(mem[864]) << 216 or uint8(mem[800]) << 232 or uint8(mem[768]) << 240 or mem[736] << 248]
                if 0 / stor10[uint32(arg1 - 1)][uint8(mem[832]) << 224 or uint8(mem[864]) << 216 or uint8(mem[800]) << 232 or uint8(mem[768]) << 240 or mem[736] << 248] > eth.balance(this.address):
                    emit BalanceNotEnough()
                else:
                    require uint32(arg1 - 1) < stor9.length
                    require uint32(arg2 - 1) < stor9[uint32(arg1 - 1)][msg.sender].field_0
                    uint8(stor9[uint32(arg1 - 1)][msg.sender][2 * uint32(arg2 - 1)].field_256) = 1
                    call msg.sender with:
                       value 0 / stor10[uint32(arg1 - 1)][uint8(mem[832]) << 224 or uint8(mem[864]) << 216 or uint8(mem[800]) << 232 or uint8(mem[768]) << 240 or mem[736] << 248] wei
                         gas 2300 * is_zero(value) wei
                    if ext_call.success:
                        emit OnRewardDaily(msg.sender, arg1 << 224, arg2 << 224, 0 / stor10[uint32(arg1 - 1)][uint8(mem[832]) << 224 or uint8(mem[864]) << 216 or uint8(mem[800]) << 232 or uint8(mem[768]) << 240 or mem[736] << 248]);
                        return (0 / stor10[uint32(arg1 - 1)][uint8(mem[832]) << 224 or uint8(mem[864]) << 216 or uint8(mem[800]) << 232 or uint8(mem[768]) << 240 or mem[736] << 248])
                    emit OnRewardDailyFailed(msg.sender, arg1 << 224, arg2);
            else:
                require 950 * 500 * 125 * 10^14 * 3600 * stor('array', ('mask_shl', 29, 3, -3, ('add', -1, ('param', 'arg1'))), ('name', 'stor4', 4))[uint8(arg1 - 1)] / 1000 / 1000 / 500 * 125 * 10^14 * 3600 * stor('array', ('mask_shl', 29, 3, -3, ('add', -1, ('param', 'arg1'))), ('name', 'stor4', 4))[uint8(arg1 - 1)] / 1000 / 1000 == 950
                require stor10[uint32(arg1 - 1)][uint8(mem[832]) << 224 or uint8(mem[864]) << 216 or uint8(mem[800]) << 232 or uint8(mem[768]) << 240 or mem[736] << 248]
                if 950 * 500 * 125 * 10^14 * 3600 * stor('array', ('mask_shl', 29, 3, -3, ('add', -1, ('param', 'arg1'))), ('name', 'stor4', 4))[uint8(arg1 - 1)] / 1000 / 1000 / 1000 / stor10[uint32(arg1 - 1)][uint8(mem[832]) << 224 or uint8(mem[864]) << 216 or uint8(mem[800]) << 232 or uint8(mem[768]) << 240 or mem[736] << 248] > eth.balance(this.address):
                    emit BalanceNotEnough()
                else:
                    require uint32(arg1 - 1) < stor9.length
                    require uint32(arg2 - 1) < stor9[uint32(arg1 - 1)][msg.sender].field_0
                    uint8(stor9[uint32(arg1 - 1)][msg.sender][2 * uint32(arg2 - 1)].field_256) = 1
                    call msg.sender with:
                       value 950 * 500 * 125 * 10^14 * 3600 * stor('array', ('mask_shl', 29, 3, -3, ('add', -1, ('param', 'arg1'))), ('name', 'stor4', 4))[uint8(arg1 - 1)] / 1000 / 1000 / 1000 / stor10[uint32(arg1 - 1)][uint8(mem[832]) << 224 or uint8(mem[864]) << 216 or uint8(mem[800]) << 232 or uint8(mem[768]) << 240 or mem[736] << 248] wei
                         gas 2300 * is_zero(value) wei
                    if ext_call.success:
                        emit OnRewardDaily(msg.sender, arg1 << 224, arg2 << 224, 950 * 500 * 125 * 10^14 * 3600 * stor('array', ('mask_shl', 29, 3, -3, ('add', -1, ('param', 'arg1'))), ('name', 'stor4', 4))[uint8(arg1 - 1)] / 1000 / 1000 / 1000 / stor10[uint32(arg1 - 1)][uint8(mem[832]) << 224 or uint8(mem[864]) << 216 or uint8(mem[800]) << 232 or uint8(mem[768]) << 240 or mem[736] << 248]);
                        return (950 * 500 * 125 * 10^14 * 3600 * stor('array', ('mask_shl', 29, 3, -3, ('add', -1, ('param', 'arg1'))), ('name', 'stor4', 4))[uint8(arg1 - 1)] / 1000 / 1000 / 1000 / stor10[uint32(arg1 - 1)][uint8(mem[832]) << 224 or uint8(mem[864]) << 216 or uint8(mem[800]) << 232 or uint8(mem[768]) << 240 or mem[736] << 248])
                    emit OnRewardDailyFailed(msg.sender, arg1 << 224, arg2);
    revert
}

function buy(uint8[5] arg1, string arg2) payable {
    mem[96 len 160] = call.data[4 len 160]
    mem[256] = ('cd', 164).length
    mem[288 len ('cd', 164).length] = call.data[cd[164] + 36 len ('cd', 164).length]
    mem[ceil32(('cd', 164).length) + 512 len 160] = code.data[20330 len 160]
    mem[ceil32(('cd', 164).length) + 288] = ceil32(('cd', 164).length) + 512
    mem[ceil32(('cd', 164).length) + 320] = 0
    mem[ceil32(('cd', 164).length) + 352] = 0
    require 1 == currentState
    require tx.origin == msg.sender
    if not resolverAddress:
        if ext_code.size(0xde4413799c73a356d83ace2dc9055957c0a5c335) <= 0:
            idx = 0
            while idx < 5:
                require mem[(32 * idx) + 127 len 1] >= 1
                require idx < 5
                require mem[(32 * idx) + 127 len 1] <= 16
                idx = idx + 1
                continue 
            s = 0
            idx = 0
            while uint8(idx) < 4:
                s = idx
                while uint8(s) < 4:
                    require uint8(s + 1) < 5
                    require uint8(idx) < 5
                    require mem[(32 * uint8(idx)) + 127 len 1] != uint8(call.data[(32 * uint8(s + 1)) + 4])
                    s = s + 1
                    continue 
                s = None
                idx = idx + 1
                continue 
            require msg.value >= 5 * 10^16
            if uint32(currentRound - 1) < stor9.length:
                if stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0 + 1 >= stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0:
                    require stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0 + 1 <= 100
                    if uint32(currentRound - 1) < stor4.length:
                        stor4[uint32(uint32(stor3.field_160) - 1) / 8] = 256^(4 * currentRound - 1 % 8) * uint32(stor('array', ('mask_shl', 29, 3, -3, ('add', -1, ('stor', 32, 160, ('name', 'stor3', 3)))), ('name', 'stor4', 4))[uint8(uint32(stor3.field_160) - 1)] + 1) or stor4[uint32(uint32(stor3.field_160) - 1) / 8] and !(test266151307() * 256^(4 * currentRound - 1 % 8))
                        if uint32(currentRound - 1) < stor9.length:
                            if stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0 > 0:
                                mem[ceil32(('cd', 164).length) + 288] = 96
                                mem[ceil32(('cd', 164).length) + 320] = 0
                                mem[ceil32(('cd', 164).length) + 352] = 0
                                if uint32(currentRound - 1) < stor9.length:
                                    stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0++
                                    s = 0
                                    idx = 96
                                    while 256 > idx:
                                        stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_0 = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_0
                                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                        idx = idx + 32
                                        continue 
                                    idx = 5
                                    s = sha3(sha3(msg.sender, uint32(currentRound - 1) + sha3(9))) + (2 * stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0)
                                    while idx:
                                        stor[s] = !(255 * 256^idx) and stor[s]
                                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                        s = (idx + 1 / 32) + s
                                        continue 
                                    idx = (2 * stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0) - (3 * None + 3 / 32) + (None * None + 3 / 32)
                                    while (2 * stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0) + 1 > idx:
                                        uint8(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][idx].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                    uint8(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_256) = 0
                                    Mask(248, 0, stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_264) = 0
                                    Mask(240, 0, stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_272) = 0
                                    mem[ceil32(('cd', 164).length) + 672 len 160] = code.data[20330 len 160]
                                    mem[ceil32(('cd', 164).length) + 832 len 160] = code.data[20330 len 160]
                                    mem[ceil32(('cd', 164).length) + 992 len 160] = code.data[20330 len 160]
                                    idx = 0
                                    while uint8(idx) < 5:
                                        mem[(32 * uint8(idx)) + ceil32(('cd', 164).length) + 992] = mem[(32 * uint8(idx)) + 127 len 1]
                                        idx = idx + 1
                                        continue 
                                    s = 0
                                    t = 0
                                    idx = 0
                                    while uint8(idx) < 4:
                                        t = s
                                        u = 0
                                        while uint8(u) < uint8(-idx + 4):
                                            require uint8(u + 1) < 5
                                            require uint8(u) < 5
                                            if mem[(32 * uint8(u)) + ceil32(('cd', 164).length) + 1023 len 1] <= mem[(32 * uint8(u + 1)) + ceil32(('cd', 164).length) + 1023 len 1]:
                                                t = t
                                                u = u + 1
                                                continue 
                                            require uint8(u) < 5
                                            _4381 = mem[(32 * uint8(u)) + ceil32(('cd', 164).length) + 992]
                                            require uint8(u + 1) < 5
                                            require uint8(u) < 5
                                            mem[(32 * uint8(u)) + ceil32(('cd', 164).length) + 992] = mem[(32 * uint8(u + 1)) + ceil32(('cd', 164).length) + 1023 len 1]
                                            require uint8(u + 1) < 5
                                            mem[(32 * uint8(u + 1)) + ceil32(('cd', 164).length) + 992] = uint8(_4381)
                                            t = _4381
                                            u = u + 1
                                            continue 
                                        s = t
                                        t = u
                                        idx = idx + 1
                                        continue 
                                    if uint32(currentRound - 1) < stor10.length:
                                        stor10[uint32(uint32(stor3.field_160) - 1)][uint8(mem[ceil32(('cd', 164).length) + 1088]) << 224 or uint8(mem[ceil32(('cd', 164).length) + 1120]) << 216 or uint8(mem[ceil32(('cd', 164).length) + 1056]) << 232 or uint8(mem[ceil32(('cd', 164).length) + 1024]) << 240 or mem[ceil32(('cd', 164).length) + 992] << 248] = uint32(stor10[uint32(uint32(stor3.field_160) - 1)][uint8(mem[ceil32(('cd', 164).length) + 1088]) << 224 or uint8(mem[ceil32(('cd', 164).length) + 1120]) << 216 or uint8(mem[ceil32(('cd', 164).length) + 1056]) << 232 or uint8(mem[ceil32(('cd', 164).length) + 1024]) << 240 or mem[ceil32(('cd', 164).length) + 992] << 248] + 1)
                                        if uint32(uint32(currentRound - 1) / 7) < stor11.length:
                                            stor11[uint32(uint32(uint32(stor3.field_160) - 1) / 7)][call.data[4] << 248 or uint8(call.data[36]) << 240 or uint8(call.data[68]) << 232 or uint8(call.data[132]) << 216 or uint8(call.data[100]) << 224] = uint32(stor11[uint32(uint32(uint32(stor3.field_160) - 1) / 7)][call.data[4] << 248 or uint8(call.data[36]) << 240 or uint8(call.data[68]) << 232 or uint8(call.data[132]) << 216 or uint8(call.data[100]) << 224] + 1)
                                            if msg.value <= 5 * 10^16:
                                                require ext_code.size(address(bookAddress))
                                                call address(bookAddress).hasInviter(address arg1) with:
                                                     gas gas_remaining wei
                                                    args msg.sender
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(address(bookAddress))
                                                if not ext_call.return_data[0]:
                                                    call address(bookAddress).isRoot(address arg1) with:
                                                         gas gas_remaining wei
                                                        args msg.sender
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if not ext_call.return_data[0]:
                                                        require ext_code.size(address(bookAddress))
                                                        call address(bookAddress).setInviter(address arg1, string arg2) with:
                                                             gas gas_remaining wei
                                                            args msg.sender, Array(len=('cd', 164).length, data=call.data[cd[164] + 36 len ('cd', 164).length])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                call address(bookAddress).pay(address arg1) with:
                                                   value 5 * 10^15 wei
                                                     gas gas_remaining wei
                                                    args msg.sender
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if uint32(currentRound - 1) < stor9.length:
                                                    emit OnBuy(msg.sender, uint32(stor3.field_0), uint32(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0), call.data[4 len 160]);
                                                    if uint32(currentRound - 1) < stor9.length:
                                                        return stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0
                                            else:
                                                if 5 * 10^16 <= msg.value:
                                                    call msg.sender with:
                                                       value msg.value - 5 * 10^16 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require ext_code.size(address(bookAddress))
                                                    call address(bookAddress).hasInviter(address arg1) with:
                                                         gas gas_remaining wei
                                                        args msg.sender
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(address(bookAddress))
                                                    if not ext_call.return_data[0]:
                                                        call address(bookAddress).isRoot(address arg1) with:
                                                             gas gas_remaining wei
                                                            args msg.sender
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if not ext_call.return_data[0]:
                                                            require ext_code.size(address(bookAddress))
                                                            call address(bookAddress).setInviter(address arg1, string arg2) with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, Array(len=('cd', 164).length, data=call.data[cd[164] + 36 len ('cd', 164).length])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                    call address(bookAddress).pay(address arg1) with:
                                                       value 5 * 10^15 wei
                                                         gas gas_remaining wei
                                                        args msg.sender
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if uint32(currentRound - 1) < stor9.length:
                                                        emit OnBuy(msg.sender, uint32(stor3.field_0), uint32(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0), call.data[4 len 160]);
                                                        if uint32(currentRound - 1) < stor9.length:
                                                            return stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0
                            else:
                                if uint32(currentRound - 1) < stor5.length:
                                    stor5[uint32(uint32(stor3.field_160) - 1) / 8] = uint32(stor('array', ('mask_shl', 29, 3, -3, ('add', -1, ('stor', 32, 160, ('name', 'stor3', 3)))), ('name', 'stor5', 5))[uint8(uint32(stor3.field_160) - 1)] + 1) * 256^(4 * currentRound - 1 % 8) or stor5[uint32(uint32(stor3.field_160) - 1) / 8] and !(test266151307() * 256^(4 * currentRound - 1 % 8))
                                    mem[ceil32(('cd', 164).length) + 288] = 96
                                    mem[ceil32(('cd', 164).length) + 320] = 0
                                    mem[ceil32(('cd', 164).length) + 352] = 0
                                    if uint32(currentRound - 1) < stor9.length:
                                        stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0++
                                        s = 0
                                        idx = 96
                                        while 256 > idx:
                                            stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_0 = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_0
                                            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                            idx = idx + 32
                                            continue 
                                        idx = 5
                                        s = sha3(sha3(msg.sender, uint32(currentRound - 1) + sha3(9))) + (2 * stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0)
                                        while idx:
                                            stor[s] = !(255 * 256^idx) and stor[s]
                                            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                            s = (idx + 1 / 32) + s
                                            continue 
                                        idx = (2 * stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0) - (3 * None + 3 / 32) + (None * None + 3 / 32)
                                        while (2 * stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0) + 1 > idx:
                                            uint8(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][idx].field_0) = 0
                                            idx = idx + 1
                                            continue 
                                        uint8(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_256) = 0
                                        Mask(248, 0, stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_264) = 0
                                        Mask(240, 0, stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_272) = 0
                                        mem[ceil32(('cd', 164).length) + 672 len 160] = code.data[20330 len 160]
                                        mem[ceil32(('cd', 164).length) + 832 len 160] = code.data[20330 len 160]
                                        mem[ceil32(('cd', 164).length) + 992 len 160] = code.data[20330 len 160]
                                        idx = 0
                                        while uint8(idx) < 5:
                                            mem[(32 * uint8(idx)) + ceil32(('cd', 164).length) + 992] = mem[(32 * uint8(idx)) + 127 len 1]
                                            idx = idx + 1
                                            continue 
                                        s = 0
                                        t = 0
                                        idx = 0
                                        while uint8(idx) < 4:
                                            t = s
                                            u = 0
                                            while uint8(u) < uint8(-idx + 4):
                                                require uint8(u + 1) < 5
                                                require uint8(u) < 5
                                                if mem[(32 * uint8(u)) + ceil32(('cd', 164).length) + 1023 len 1] <= mem[(32 * uint8(u + 1)) + ceil32(('cd', 164).length) + 1023 len 1]:
                                                    t = t
                                                    u = u + 1
                                                    continue 
                                                require uint8(u) < 5
                                                _4382 = mem[(32 * uint8(u)) + ceil32(('cd', 164).length) + 992]
                                                require uint8(u + 1) < 5
                                                require uint8(u) < 5
                                                mem[(32 * uint8(u)) + ceil32(('cd', 164).length) + 992] = mem[(32 * uint8(u + 1)) + ceil32(('cd', 164).length) + 1023 len 1]
                                                require uint8(u + 1) < 5
                                                mem[(32 * uint8(u + 1)) + ceil32(('cd', 164).length) + 992] = uint8(_4382)
                                                t = _4382
                                                u = u + 1
                                                continue 
                                            s = t
                                            t = u
                                            idx = idx + 1
                                            continue 
                                        if uint32(currentRound - 1) < stor10.length:
                                            stor10[uint32(uint32(stor3.field_160) - 1)][uint8(mem[ceil32(('cd', 164).length) + 1088]) << 224 or uint8(mem[ceil32(('cd', 164).length) + 1120]) << 216 or uint8(mem[ceil32(('cd', 164).length) + 1056]) << 232 or uint8(mem[ceil32(('cd', 164).length) + 1024]) << 240 or mem[ceil32(('cd', 164).length) + 992] << 248] = uint32(stor10[uint32(uint32(stor3.field_160) - 1)][uint8(mem[ceil32(('cd', 164).length) + 1088]) << 224 or uint8(mem[ceil32(('cd', 164).length) + 1120]) << 216 or uint8(mem[ceil32(('cd', 164).length) + 1056]) << 232 or uint8(mem[ceil32(('cd', 164).length) + 1024]) << 240 or mem[ceil32(('cd', 164).length) + 992] << 248] + 1)
                                            if uint32(uint32(currentRound - 1) / 7) < stor11.length:
                                                stor11[uint32(uint32(uint32(stor3.field_160) - 1) / 7)][call.data[4] << 248 or uint8(call.data[36]) << 240 or uint8(call.data[68]) << 232 or uint8(call.data[132]) << 216 or uint8(call.data[100]) << 224] = uint32(stor11[uint32(uint32(uint32(stor3.field_160) - 1) / 7)][call.data[4] << 248 or uint8(call.data[36]) << 240 or uint8(call.data[68]) << 232 or uint8(call.data[132]) << 216 or uint8(call.data[100]) << 224] + 1)
                                                if msg.value <= 5 * 10^16:
                                                    require ext_code.size(address(bookAddress))
                                                    call address(bookAddress).hasInviter(address arg1) with:
                                                         gas gas_remaining wei
                                                        args msg.sender
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(address(bookAddress))
                                                    if not ext_call.return_data[0]:
                                                        call address(bookAddress).isRoot(address arg1) with:
                                                             gas gas_remaining wei
                                                            args msg.sender
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if not ext_call.return_data[0]:
                                                            require ext_code.size(address(bookAddress))
                                                            call address(bookAddress).setInviter(address arg1, string arg2) with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, Array(len=('cd', 164).length, data=call.data[cd[164] + 36 len ('cd', 164).length])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                    call address(bookAddress).pay(address arg1) with:
                                                       value 5 * 10^15 wei
                                                         gas gas_remaining wei
                                                        args msg.sender
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if uint32(currentRound - 1) < stor9.length:
                                                        emit OnBuy(msg.sender, uint32(stor3.field_0), uint32(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0), call.data[4 len 160]);
                                                        if uint32(currentRound - 1) < stor9.length:
                                                            return stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0
                                                else:
                                                    if 5 * 10^16 <= msg.value:
                                                        call msg.sender with:
                                                           value msg.value - 5 * 10^16 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require ext_code.size(address(bookAddress))
                                                        call address(bookAddress).hasInviter(address arg1) with:
                                                             gas gas_remaining wei
                                                            args msg.sender
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(address(bookAddress))
                                                        if not ext_call.return_data[0]:
                                                            call address(bookAddress).isRoot(address arg1) with:
                                                                 gas gas_remaining wei
                                                                args msg.sender
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if not ext_call.return_data[0]:
                                                                require ext_code.size(address(bookAddress))
                                                                call address(bookAddress).setInviter(address arg1, string arg2) with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, Array(len=('cd', 164).length, data=call.data[cd[164] + 36 len ('cd', 164).length])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                        call address(bookAddress).pay(address arg1) with:
                                                           value 5 * 10^15 wei
                                                             gas gas_remaining wei
                                                            args msg.sender
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        if uint32(currentRound - 1) < stor9.length:
                                                            emit OnBuy(msg.sender, uint32(stor3.field_0), uint32(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0), call.data[4 len 160]);
                                                            if uint32(currentRound - 1) < stor9.length:
                                                                return stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0
        else:
            resolverAddress = 0xde4413799c73a356d83ace2dc9055957c0a5c335
            require ext_code.size(resolverAddress)
            call resolverAddress.getWalletAddress() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            uint256(stor3.field_0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor3.field_0))
            require ext_code.size(resolverAddress)
            call resolverAddress.0x23226654 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
            require ext_code.size(resolverAddress)
            call resolverAddress.0xc57380a2 with:
                 gas gas_remaining wei
            mem[ceil32(('cd', 164).length) + 672] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
            idx = 0
            while idx < 5:
                require mem[(32 * idx) + 127 len 1] >= 1
                require idx < 5
                require mem[(32 * idx) + 127 len 1] <= 16
                idx = idx + 1
                continue 
            s = 0
            idx = 0
            while uint8(idx) < 4:
                s = idx
                while uint8(s) < 4:
                    require uint8(s + 1) < 5
                    require uint8(idx) < 5
                    require mem[(32 * uint8(idx)) + 127 len 1] != uint8(call.data[(32 * uint8(s + 1)) + 4])
                    s = s + 1
                    continue 
                s = None
                idx = idx + 1
                continue 
            require msg.value >= 5 * 10^16
            if uint32(currentRound - 1) < stor9.length:
                if stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0 + 1 >= stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0:
                    require stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0 + 1 <= 100
                    if uint32(currentRound - 1) < stor4.length:
                        stor4[uint32(uint32(stor3.field_160) - 1) / 8] = 256^(4 * currentRound - 1 % 8) * uint32(stor('array', ('mask_shl', 29, 3, -3, ('add', -1, ('stor', 32, 160, ('name', 'stor3', 3)))), ('name', 'stor4', 4))[uint8(uint32(stor3.field_160) - 1)] + 1) or stor4[uint32(uint32(stor3.field_160) - 1) / 8] and !(test266151307() * 256^(4 * currentRound - 1 % 8))
                        if uint32(currentRound - 1) < stor9.length:
                            if stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0 > 0:
                                mem[ceil32(('cd', 164).length) + 288] = 96
                                mem[ceil32(('cd', 164).length) + 320] = 0
                                mem[ceil32(('cd', 164).length) + 352] = 0
                                if uint32(currentRound - 1) < stor9.length:
                                    stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0++
                                    s = 0
                                    idx = 96
                                    while 256 > idx:
                                        stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_0 = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_0
                                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                        idx = idx + 32
                                        continue 
                                    idx = 5
                                    s = sha3(sha3(msg.sender, uint32(currentRound - 1) + sha3(9))) + (2 * stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0)
                                    while idx:
                                        stor[s] = !(255 * 256^idx) and stor[s]
                                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                        s = (idx + 1 / 32) + s
                                        continue 
                                    idx = (2 * stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0) - (3 * None + 3 / 32) + (None * None + 3 / 32)
                                    while (2 * stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0) + 1 > idx:
                                        uint8(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][idx].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                    uint8(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_256) = 0
                                    Mask(248, 0, stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_264) = 0
                                    Mask(240, 0, stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_272) = 0
                                    mem[ceil32(('cd', 164).length) + 672 len 160] = code.data[20330 len 160]
                                    mem[ceil32(('cd', 164).length) + 832 len 160] = code.data[20330 len 160]
                                    mem[ceil32(('cd', 164).length) + 992 len 160] = code.data[20330 len 160]
                                    idx = 0
                                    while uint8(idx) < 5:
                                        mem[(32 * uint8(idx)) + ceil32(('cd', 164).length) + 992] = mem[(32 * uint8(idx)) + 127 len 1]
                                        idx = idx + 1
                                        continue 
                                    s = 0
                                    t = 0
                                    idx = 0
                                    while uint8(idx) < 4:
                                        t = s
                                        u = 0
                                        while uint8(u) < uint8(-idx + 4):
                                            require uint8(u + 1) < 5
                                            require uint8(u) < 5
                                            if mem[(32 * uint8(u)) + ceil32(('cd', 164).length) + 1023 len 1] <= mem[(32 * uint8(u + 1)) + ceil32(('cd', 164).length) + 1023 len 1]:
                                                t = t
                                                u = u + 1
                                                continue 
                                            require uint8(u) < 5
                                            _4383 = mem[(32 * uint8(u)) + ceil32(('cd', 164).length) + 992]
                                            require uint8(u + 1) < 5
                                            require uint8(u) < 5
                                            mem[(32 * uint8(u)) + ceil32(('cd', 164).length) + 992] = mem[(32 * uint8(u + 1)) + ceil32(('cd', 164).length) + 1023 len 1]
                                            require uint8(u + 1) < 5
                                            mem[(32 * uint8(u + 1)) + ceil32(('cd', 164).length) + 992] = uint8(_4383)
                                            t = _4383
                                            u = u + 1
                                            continue 
                                        s = t
                                        t = u
                                        idx = idx + 1
                                        continue 
                                    if uint32(currentRound - 1) < stor10.length:
                                        stor10[uint32(uint32(stor3.field_160) - 1)][uint8(mem[ceil32(('cd', 164).length) + 1088]) << 224 or uint8(mem[ceil32(('cd', 164).length) + 1120]) << 216 or uint8(mem[ceil32(('cd', 164).length) + 1056]) << 232 or uint8(mem[ceil32(('cd', 164).length) + 1024]) << 240 or mem[ceil32(('cd', 164).length) + 992] << 248] = uint32(stor10[uint32(uint32(stor3.field_160) - 1)][uint8(mem[ceil32(('cd', 164).length) + 1088]) << 224 or uint8(mem[ceil32(('cd', 164).length) + 1120]) << 216 or uint8(mem[ceil32(('cd', 164).length) + 1056]) << 232 or uint8(mem[ceil32(('cd', 164).length) + 1024]) << 240 or mem[ceil32(('cd', 164).length) + 992] << 248] + 1)
                                        if uint32(uint32(currentRound - 1) / 7) < stor11.length:
                                            stor11[uint32(uint32(uint32(stor3.field_160) - 1) / 7)][call.data[4] << 248 or uint8(call.data[36]) << 240 or uint8(call.data[68]) << 232 or uint8(call.data[132]) << 216 or uint8(call.data[100]) << 224] = uint32(stor11[uint32(uint32(uint32(stor3.field_160) - 1) / 7)][call.data[4] << 248 or uint8(call.data[36]) << 240 or uint8(call.data[68]) << 232 or uint8(call.data[132]) << 216 or uint8(call.data[100]) << 224] + 1)
                                            if msg.value <= 5 * 10^16:
                                                require ext_code.size(address(bookAddress))
                                                call address(bookAddress).hasInviter(address arg1) with:
                                                     gas gas_remaining wei
                                                    args msg.sender
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(address(bookAddress))
                                                if not ext_call.return_data[0]:
                                                    call address(bookAddress).isRoot(address arg1) with:
                                                         gas gas_remaining wei
                                                        args msg.sender
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if not ext_call.return_data[0]:
                                                        require ext_code.size(address(bookAddress))
                                                        call address(bookAddress).setInviter(address arg1, string arg2) with:
                                                             gas gas_remaining wei
                                                            args msg.sender, Array(len=('cd', 164).length, data=call.data[cd[164] + 36 len ('cd', 164).length])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                call address(bookAddress).pay(address arg1) with:
                                                   value 5 * 10^15 wei
                                                     gas gas_remaining wei
                                                    args msg.sender
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if uint32(currentRound - 1) < stor9.length:
                                                    emit OnBuy(msg.sender, uint32(stor3.field_0), uint32(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0), call.data[4 len 160]);
                                                    if uint32(currentRound - 1) < stor9.length:
                                                        return stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0
                                            else:
                                                if 5 * 10^16 <= msg.value:
                                                    call msg.sender with:
                                                       value msg.value - 5 * 10^16 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require ext_code.size(address(bookAddress))
                                                    call address(bookAddress).hasInviter(address arg1) with:
                                                         gas gas_remaining wei
                                                        args msg.sender
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(address(bookAddress))
                                                    if not ext_call.return_data[0]:
                                                        call address(bookAddress).isRoot(address arg1) with:
                                                             gas gas_remaining wei
                                                            args msg.sender
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if not ext_call.return_data[0]:
                                                            require ext_code.size(address(bookAddress))
                                                            call address(bookAddress).setInviter(address arg1, string arg2) with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, Array(len=('cd', 164).length, data=call.data[cd[164] + 36 len ('cd', 164).length])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                    call address(bookAddress).pay(address arg1) with:
                                                       value 5 * 10^15 wei
                                                         gas gas_remaining wei
                                                        args msg.sender
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if uint32(currentRound - 1) < stor9.length:
                                                        emit OnBuy(msg.sender, uint32(stor3.field_0), uint32(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0), call.data[4 len 160]);
                                                        if uint32(currentRound - 1) < stor9.length:
                                                            return stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0
                            else:
                                if uint32(currentRound - 1) < stor5.length:
                                    stor5[uint32(uint32(stor3.field_160) - 1) / 8] = uint32(stor('array', ('mask_shl', 29, 3, -3, ('add', -1, ('stor', 32, 160, ('name', 'stor3', 3)))), ('name', 'stor5', 5))[uint8(uint32(stor3.field_160) - 1)] + 1) * 256^(4 * currentRound - 1 % 8) or stor5[uint32(uint32(stor3.field_160) - 1) / 8] and !(test266151307() * 256^(4 * currentRound - 1 % 8))
                                    mem[ceil32(('cd', 164).length) + 288] = 96
                                    mem[ceil32(('cd', 164).length) + 320] = 0
                                    mem[ceil32(('cd', 164).length) + 352] = 0
                                    if uint32(currentRound - 1) < stor9.length:
                                        stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0++
                                        s = 0
                                        idx = 96
                                        while 256 > idx:
                                            stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_0 = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_0
                                            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                            idx = idx + 32
                                            continue 
                                        idx = 5
                                        s = sha3(sha3(msg.sender, uint32(currentRound - 1) + sha3(9))) + (2 * stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0)
                                        while idx:
                                            stor[s] = !(255 * 256^idx) and stor[s]
                                            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                            s = (idx + 1 / 32) + s
                                            continue 
                                        idx = (2 * stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0) - (3 * None + 3 / 32) + (None * None + 3 / 32)
                                        while (2 * stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0) + 1 > idx:
                                            uint8(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][idx].field_0) = 0
                                            idx = idx + 1
                                            continue 
                                        uint8(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_256) = 0
                                        Mask(248, 0, stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_264) = 0
                                        Mask(240, 0, stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_272) = 0
                                        mem[ceil32(('cd', 164).length) + 672 len 160] = code.data[20330 len 160]
                                        mem[ceil32(('cd', 164).length) + 832 len 160] = code.data[20330 len 160]
                                        mem[ceil32(('cd', 164).length) + 992 len 160] = code.data[20330 len 160]
                                        idx = 0
                                        while uint8(idx) < 5:
                                            mem[(32 * uint8(idx)) + ceil32(('cd', 164).length) + 992] = mem[(32 * uint8(idx)) + 127 len 1]
                                            idx = idx + 1
                                            continue 
                                        s = 0
                                        t = 0
                                        idx = 0
                                        while uint8(idx) < 4:
                                            t = s
                                            u = 0
                                            while uint8(u) < uint8(-idx + 4):
                                                require uint8(u + 1) < 5
                                                require uint8(u) < 5
                                                if mem[(32 * uint8(u)) + ceil32(('cd', 164).length) + 1023 len 1] <= mem[(32 * uint8(u + 1)) + ceil32(('cd', 164).length) + 1023 len 1]:
                                                    t = t
                                                    u = u + 1
                                                    continue 
                                                require uint8(u) < 5
                                                _4384 = mem[(32 * uint8(u)) + ceil32(('cd', 164).length) + 992]
                                                require uint8(u + 1) < 5
                                                require uint8(u) < 5
                                                mem[(32 * uint8(u)) + ceil32(('cd', 164).length) + 992] = mem[(32 * uint8(u + 1)) + ceil32(('cd', 164).length) + 1023 len 1]
                                                require uint8(u + 1) < 5
                                                mem[(32 * uint8(u + 1)) + ceil32(('cd', 164).length) + 992] = uint8(_4384)
                                                t = _4384
                                                u = u + 1
                                                continue 
                                            s = t
                                            t = u
                                            idx = idx + 1
                                            continue 
                                        if uint32(currentRound - 1) < stor10.length:
                                            stor10[uint32(uint32(stor3.field_160) - 1)][uint8(mem[ceil32(('cd', 164).length) + 1088]) << 224 or uint8(mem[ceil32(('cd', 164).length) + 1120]) << 216 or uint8(mem[ceil32(('cd', 164).length) + 1056]) << 232 or uint8(mem[ceil32(('cd', 164).length) + 1024]) << 240 or mem[ceil32(('cd', 164).length) + 992] << 248] = uint32(stor10[uint32(uint32(stor3.field_160) - 1)][uint8(mem[ceil32(('cd', 164).length) + 1088]) << 224 or uint8(mem[ceil32(('cd', 164).length) + 1120]) << 216 or uint8(mem[ceil32(('cd', 164).length) + 1056]) << 232 or uint8(mem[ceil32(('cd', 164).length) + 1024]) << 240 or mem[ceil32(('cd', 164).length) + 992] << 248] + 1)
                                            if uint32(uint32(currentRound - 1) / 7) < stor11.length:
                                                stor11[uint32(uint32(uint32(stor3.field_160) - 1) / 7)][call.data[4] << 248 or uint8(call.data[36]) << 240 or uint8(call.data[68]) << 232 or uint8(call.data[132]) << 216 or uint8(call.data[100]) << 224] = uint32(stor11[uint32(uint32(uint32(stor3.field_160) - 1) / 7)][call.data[4] << 248 or uint8(call.data[36]) << 240 or uint8(call.data[68]) << 232 or uint8(call.data[132]) << 216 or uint8(call.data[100]) << 224] + 1)
                                                if msg.value <= 5 * 10^16:
                                                    require ext_code.size(address(bookAddress))
                                                    call address(bookAddress).hasInviter(address arg1) with:
                                                         gas gas_remaining wei
                                                        args msg.sender
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(address(bookAddress))
                                                    if not ext_call.return_data[0]:
                                                        call address(bookAddress).isRoot(address arg1) with:
                                                             gas gas_remaining wei
                                                            args msg.sender
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if not ext_call.return_data[0]:
                                                            require ext_code.size(address(bookAddress))
                                                            call address(bookAddress).setInviter(address arg1, string arg2) with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, Array(len=('cd', 164).length, data=call.data[cd[164] + 36 len ('cd', 164).length])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                    call address(bookAddress).pay(address arg1) with:
                                                       value 5 * 10^15 wei
                                                         gas gas_remaining wei
                                                        args msg.sender
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if uint32(currentRound - 1) < stor9.length:
                                                        emit OnBuy(msg.sender, uint32(stor3.field_0), uint32(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0), call.data[4 len 160]);
                                                        if uint32(currentRound - 1) < stor9.length:
                                                            return stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0
                                                else:
                                                    if 5 * 10^16 <= msg.value:
                                                        call msg.sender with:
                                                           value msg.value - 5 * 10^16 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require ext_code.size(address(bookAddress))
                                                        call address(bookAddress).hasInviter(address arg1) with:
                                                             gas gas_remaining wei
                                                            args msg.sender
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(address(bookAddress))
                                                        if not ext_call.return_data[0]:
                                                            call address(bookAddress).isRoot(address arg1) with:
                                                                 gas gas_remaining wei
                                                                args msg.sender
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if not ext_call.return_data[0]:
                                                                require ext_code.size(address(bookAddress))
                                                                call address(bookAddress).setInviter(address arg1, string arg2) with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, Array(len=('cd', 164).length, data=call.data[cd[164] + 36 len ('cd', 164).length])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                        call address(bookAddress).pay(address arg1) with:
                                                           value 5 * 10^15 wei
                                                             gas gas_remaining wei
                                                            args msg.sender
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        if uint32(currentRound - 1) < stor9.length:
                                                            emit OnBuy(msg.sender, uint32(stor3.field_0), uint32(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0), call.data[4 len 160]);
                                                            if uint32(currentRound - 1) < stor9.length:
                                                                return stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0
    else:
        if not ext_code.size(resolverAddress):
            if ext_code.size(0xde4413799c73a356d83ace2dc9055957c0a5c335) <= 0:
                idx = 0
                while idx < 5:
                    require mem[(32 * idx) + 127 len 1] >= 1
                    require idx < 5
                    require mem[(32 * idx) + 127 len 1] <= 16
                    idx = idx + 1
                    continue 
                s = 0
                idx = 0
                while uint8(idx) < 4:
                    s = idx
                    while uint8(s) < 4:
                        require uint8(s + 1) < 5
                        require uint8(idx) < 5
                        require mem[(32 * uint8(idx)) + 127 len 1] != uint8(call.data[(32 * uint8(s + 1)) + 4])
                        s = s + 1
                        continue 
                    s = None
                    idx = idx + 1
                    continue 
                require msg.value >= 5 * 10^16
                if uint32(currentRound - 1) < stor9.length:
                    if stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0 + 1 >= stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0:
                        require stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0 + 1 <= 100
                        if uint32(currentRound - 1) < stor4.length:
                            stor4[uint32(uint32(stor3.field_160) - 1) / 8] = 256^(4 * currentRound - 1 % 8) * uint32(stor('array', ('mask_shl', 29, 3, -3, ('add', -1, ('stor', 32, 160, ('name', 'stor3', 3)))), ('name', 'stor4', 4))[uint8(uint32(stor3.field_160) - 1)] + 1) or stor4[uint32(uint32(stor3.field_160) - 1) / 8] and !(test266151307() * 256^(4 * currentRound - 1 % 8))
                            if uint32(currentRound - 1) < stor9.length:
                                if stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0 > 0:
                                    mem[ceil32(('cd', 164).length) + 288] = 96
                                    mem[ceil32(('cd', 164).length) + 320] = 0
                                    mem[ceil32(('cd', 164).length) + 352] = 0
                                    if uint32(currentRound - 1) < stor9.length:
                                        stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0++
                                        s = 0
                                        idx = 96
                                        while 256 > idx:
                                            stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_0 = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_0
                                            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                            idx = idx + 32
                                            continue 
                                        idx = 5
                                        s = sha3(sha3(msg.sender, uint32(currentRound - 1) + sha3(9))) + (2 * stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0)
                                        while idx:
                                            stor[s] = !(255 * 256^idx) and stor[s]
                                            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                            s = (idx + 1 / 32) + s
                                            continue 
                                        idx = (2 * stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0) - (3 * None + 3 / 32) + (None * None + 3 / 32)
                                        while (2 * stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0) + 1 > idx:
                                            uint8(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][idx].field_0) = 0
                                            idx = idx + 1
                                            continue 
                                        uint8(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_256) = 0
                                        Mask(248, 0, stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_264) = 0
                                        Mask(240, 0, stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_272) = 0
                                        mem[ceil32(('cd', 164).length) + 672 len 160] = code.data[20330 len 160]
                                        mem[ceil32(('cd', 164).length) + 832 len 160] = code.data[20330 len 160]
                                        mem[ceil32(('cd', 164).length) + 992 len 160] = code.data[20330 len 160]
                                        idx = 0
                                        while uint8(idx) < 5:
                                            mem[(32 * uint8(idx)) + ceil32(('cd', 164).length) + 992] = mem[(32 * uint8(idx)) + 127 len 1]
                                            idx = idx + 1
                                            continue 
                                        s = 0
                                        t = 0
                                        idx = 0
                                        while uint8(idx) < 4:
                                            t = s
                                            u = 0
                                            while uint8(u) < uint8(-idx + 4):
                                                require uint8(u + 1) < 5
                                                require uint8(u) < 5
                                                if mem[(32 * uint8(u)) + ceil32(('cd', 164).length) + 1023 len 1] <= mem[(32 * uint8(u + 1)) + ceil32(('cd', 164).length) + 1023 len 1]:
                                                    t = t
                                                    u = u + 1
                                                    continue 
                                                require uint8(u) < 5
                                                _4401 = mem[(32 * uint8(u)) + ceil32(('cd', 164).length) + 992]
                                                require uint8(u + 1) < 5
                                                require uint8(u) < 5
                                                mem[(32 * uint8(u)) + ceil32(('cd', 164).length) + 992] = mem[(32 * uint8(u + 1)) + ceil32(('cd', 164).length) + 1023 len 1]
                                                require uint8(u + 1) < 5
                                                mem[(32 * uint8(u + 1)) + ceil32(('cd', 164).length) + 992] = uint8(_4401)
                                                t = _4401
                                                u = u + 1
                                                continue 
                                            s = t
                                            t = u
                                            idx = idx + 1
                                            continue 
                                        if uint32(currentRound - 1) < stor10.length:
                                            stor10[uint32(uint32(stor3.field_160) - 1)][uint8(mem[ceil32(('cd', 164).length) + 1088]) << 224 or uint8(mem[ceil32(('cd', 164).length) + 1120]) << 216 or uint8(mem[ceil32(('cd', 164).length) + 1056]) << 232 or uint8(mem[ceil32(('cd', 164).length) + 1024]) << 240 or mem[ceil32(('cd', 164).length) + 992] << 248] = uint32(stor10[uint32(uint32(stor3.field_160) - 1)][uint8(mem[ceil32(('cd', 164).length) + 1088]) << 224 or uint8(mem[ceil32(('cd', 164).length) + 1120]) << 216 or uint8(mem[ceil32(('cd', 164).length) + 1056]) << 232 or uint8(mem[ceil32(('cd', 164).length) + 1024]) << 240 or mem[ceil32(('cd', 164).length) + 992] << 248] + 1)
                                            if uint32(uint32(currentRound - 1) / 7) < stor11.length:
                                                stor11[uint32(uint32(uint32(stor3.field_160) - 1) / 7)][call.data[4] << 248 or uint8(call.data[36]) << 240 or uint8(call.data[68]) << 232 or uint8(call.data[132]) << 216 or uint8(call.data[100]) << 224] = uint32(stor11[uint32(uint32(uint32(stor3.field_160) - 1) / 7)][call.data[4] << 248 or uint8(call.data[36]) << 240 or uint8(call.data[68]) << 232 or uint8(call.data[132]) << 216 or uint8(call.data[100]) << 224] + 1)
                                                if msg.value <= 5 * 10^16:
                                                    require ext_code.size(address(bookAddress))
                                                    call address(bookAddress).hasInviter(address arg1) with:
                                                         gas gas_remaining wei
                                                        args msg.sender
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(address(bookAddress))
                                                    if not ext_call.return_data[0]:
                                                        call address(bookAddress).isRoot(address arg1) with:
                                                             gas gas_remaining wei
                                                            args msg.sender
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if not ext_call.return_data[0]:
                                                            require ext_code.size(address(bookAddress))
                                                            call address(bookAddress).setInviter(address arg1, string arg2) with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, Array(len=('cd', 164).length, data=call.data[cd[164] + 36 len ('cd', 164).length])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                    call address(bookAddress).pay(address arg1) with:
                                                       value 5 * 10^15 wei
                                                         gas gas_remaining wei
                                                        args msg.sender
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if uint32(currentRound - 1) < stor9.length:
                                                        emit OnBuy(msg.sender, uint32(stor3.field_0), uint32(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0), call.data[4 len 160]);
                                                        if uint32(currentRound - 1) < stor9.length:
                                                            return stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0
                                                else:
                                                    if 5 * 10^16 <= msg.value:
                                                        call msg.sender with:
                                                           value msg.value - 5 * 10^16 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require ext_code.size(address(bookAddress))
                                                        call address(bookAddress).hasInviter(address arg1) with:
                                                             gas gas_remaining wei
                                                            args msg.sender
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(address(bookAddress))
                                                        if not ext_call.return_data[0]:
                                                            call address(bookAddress).isRoot(address arg1) with:
                                                                 gas gas_remaining wei
                                                                args msg.sender
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if not ext_call.return_data[0]:
                                                                require ext_code.size(address(bookAddress))
                                                                call address(bookAddress).setInviter(address arg1, string arg2) with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, Array(len=('cd', 164).length, data=call.data[cd[164] + 36 len ('cd', 164).length])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                        call address(bookAddress).pay(address arg1) with:
                                                           value 5 * 10^15 wei
                                                             gas gas_remaining wei
                                                            args msg.sender
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        if uint32(currentRound - 1) < stor9.length:
                                                            emit OnBuy(msg.sender, uint32(stor3.field_0), uint32(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0), call.data[4 len 160]);
                                                            if uint32(currentRound - 1) < stor9.length:
                                                                return stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0
                                else:
                                    if uint32(currentRound - 1) < stor5.length:
                                        stor5[uint32(uint32(stor3.field_160) - 1) / 8] = uint32(stor('array', ('mask_shl', 29, 3, -3, ('add', -1, ('stor', 32, 160, ('name', 'stor3', 3)))), ('name', 'stor5', 5))[uint8(uint32(stor3.field_160) - 1)] + 1) * 256^(4 * currentRound - 1 % 8) or stor5[uint32(uint32(stor3.field_160) - 1) / 8] and !(test266151307() * 256^(4 * currentRound - 1 % 8))
                                        mem[ceil32(('cd', 164).length) + 288] = 96
                                        mem[ceil32(('cd', 164).length) + 320] = 0
                                        mem[ceil32(('cd', 164).length) + 352] = 0
                                        if uint32(currentRound - 1) < stor9.length:
                                            stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0++
                                            s = 0
                                            idx = 96
                                            while 256 > idx:
                                                stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_0 = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_0
                                                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                                idx = idx + 32
                                                continue 
                                            idx = 5
                                            s = sha3(sha3(msg.sender, uint32(currentRound - 1) + sha3(9))) + (2 * stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0)
                                            while idx:
                                                stor[s] = !(255 * 256^idx) and stor[s]
                                                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                                s = (idx + 1 / 32) + s
                                                continue 
                                            idx = (2 * stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0) - (3 * None + 3 / 32) + (None * None + 3 / 32)
                                            while (2 * stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0) + 1 > idx:
                                                uint8(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][idx].field_0) = 0
                                                idx = idx + 1
                                                continue 
                                            uint8(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_256) = 0
                                            Mask(248, 0, stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_264) = 0
                                            Mask(240, 0, stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_272) = 0
                                            mem[ceil32(('cd', 164).length) + 672 len 160] = code.data[20330 len 160]
                                            mem[ceil32(('cd', 164).length) + 832 len 160] = code.data[20330 len 160]
                                            mem[ceil32(('cd', 164).length) + 992 len 160] = code.data[20330 len 160]
                                            idx = 0
                                            while uint8(idx) < 5:
                                                mem[(32 * uint8(idx)) + ceil32(('cd', 164).length) + 992] = mem[(32 * uint8(idx)) + 127 len 1]
                                                idx = idx + 1
                                                continue 
                                            s = 0
                                            t = 0
                                            idx = 0
                                            while uint8(idx) < 4:
                                                t = s
                                                u = 0
                                                while uint8(u) < uint8(-idx + 4):
                                                    require uint8(u + 1) < 5
                                                    require uint8(u) < 5
                                                    if mem[(32 * uint8(u)) + ceil32(('cd', 164).length) + 1023 len 1] <= mem[(32 * uint8(u + 1)) + ceil32(('cd', 164).length) + 1023 len 1]:
                                                        t = t
                                                        u = u + 1
                                                        continue 
                                                    require uint8(u) < 5
                                                    _4402 = mem[(32 * uint8(u)) + ceil32(('cd', 164).length) + 992]
                                                    require uint8(u + 1) < 5
                                                    require uint8(u) < 5
                                                    mem[(32 * uint8(u)) + ceil32(('cd', 164).length) + 992] = mem[(32 * uint8(u + 1)) + ceil32(('cd', 164).length) + 1023 len 1]
                                                    require uint8(u + 1) < 5
                                                    mem[(32 * uint8(u + 1)) + ceil32(('cd', 164).length) + 992] = uint8(_4402)
                                                    t = _4402
                                                    u = u + 1
                                                    continue 
                                                s = t
                                                t = u
                                                idx = idx + 1
                                                continue 
                                            if uint32(currentRound - 1) < stor10.length:
                                                stor10[uint32(uint32(stor3.field_160) - 1)][uint8(mem[ceil32(('cd', 164).length) + 1088]) << 224 or uint8(mem[ceil32(('cd', 164).length) + 1120]) << 216 or uint8(mem[ceil32(('cd', 164).length) + 1056]) << 232 or uint8(mem[ceil32(('cd', 164).length) + 1024]) << 240 or mem[ceil32(('cd', 164).length) + 992] << 248] = uint32(stor10[uint32(uint32(stor3.field_160) - 1)][uint8(mem[ceil32(('cd', 164).length) + 1088]) << 224 or uint8(mem[ceil32(('cd', 164).length) + 1120]) << 216 or uint8(mem[ceil32(('cd', 164).length) + 1056]) << 232 or uint8(mem[ceil32(('cd', 164).length) + 1024]) << 240 or mem[ceil32(('cd', 164).length) + 992] << 248] + 1)
                                                if uint32(uint32(currentRound - 1) / 7) < stor11.length:
                                                    stor11[uint32(uint32(uint32(stor3.field_160) - 1) / 7)][call.data[4] << 248 or uint8(call.data[36]) << 240 or uint8(call.data[68]) << 232 or uint8(call.data[132]) << 216 or uint8(call.data[100]) << 224] = uint32(stor11[uint32(uint32(uint32(stor3.field_160) - 1) / 7)][call.data[4] << 248 or uint8(call.data[36]) << 240 or uint8(call.data[68]) << 232 or uint8(call.data[132]) << 216 or uint8(call.data[100]) << 224] + 1)
                                                    if msg.value <= 5 * 10^16:
                                                        require ext_code.size(address(bookAddress))
                                                        call address(bookAddress).hasInviter(address arg1) with:
                                                             gas gas_remaining wei
                                                            args msg.sender
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(address(bookAddress))
                                                        if not ext_call.return_data[0]:
                                                            call address(bookAddress).isRoot(address arg1) with:
                                                                 gas gas_remaining wei
                                                                args msg.sender
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if not ext_call.return_data[0]:
                                                                require ext_code.size(address(bookAddress))
                                                                call address(bookAddress).setInviter(address arg1, string arg2) with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, Array(len=('cd', 164).length, data=call.data[cd[164] + 36 len ('cd', 164).length])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                        call address(bookAddress).pay(address arg1) with:
                                                           value 5 * 10^15 wei
                                                             gas gas_remaining wei
                                                            args msg.sender
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        if uint32(currentRound - 1) < stor9.length:
                                                            emit OnBuy(msg.sender, uint32(stor3.field_0), uint32(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0), call.data[4 len 160]);
                                                            if uint32(currentRound - 1) < stor9.length:
                                                                return stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0
                                                    else:
                                                        if 5 * 10^16 <= msg.value:
                                                            call msg.sender with:
                                                               value msg.value - 5 * 10^16 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require ext_code.size(address(bookAddress))
                                                            call address(bookAddress).hasInviter(address arg1) with:
                                                                 gas gas_remaining wei
                                                                args msg.sender
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_code.size(address(bookAddress))
                                                            if not ext_call.return_data[0]:
                                                                call address(bookAddress).isRoot(address arg1) with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if not ext_call.return_data[0]:
                                                                    require ext_code.size(address(bookAddress))
                                                                    call address(bookAddress).setInviter(address arg1, string arg2) with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, Array(len=('cd', 164).length, data=call.data[cd[164] + 36 len ('cd', 164).length])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                            call address(bookAddress).pay(address arg1) with:
                                                               value 5 * 10^15 wei
                                                                 gas gas_remaining wei
                                                                args msg.sender
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            if uint32(currentRound - 1) < stor9.length:
                                                                emit OnBuy(msg.sender, uint32(stor3.field_0), uint32(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0), call.data[4 len 160]);
                                                                if uint32(currentRound - 1) < stor9.length:
                                                                    return stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0
            else:
                resolverAddress = 0xde4413799c73a356d83ace2dc9055957c0a5c335
                require ext_code.size(resolverAddress)
                call resolverAddress.getWalletAddress() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor3.field_0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor3.field_0))
                require ext_code.size(resolverAddress)
                call resolverAddress.0x23226654 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
                require ext_code.size(resolverAddress)
                call resolverAddress.0xc57380a2 with:
                     gas gas_remaining wei
                mem[ceil32(('cd', 164).length) + 672] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                idx = 0
                while idx < 5:
                    require mem[(32 * idx) + 127 len 1] >= 1
                    require idx < 5
                    require mem[(32 * idx) + 127 len 1] <= 16
                    idx = idx + 1
                    continue 
                s = 0
                idx = 0
                while uint8(idx) < 4:
                    s = idx
                    while uint8(s) < 4:
                        require uint8(s + 1) < 5
                        require uint8(idx) < 5
                        require mem[(32 * uint8(idx)) + 127 len 1] != uint8(call.data[(32 * uint8(s + 1)) + 4])
                        s = s + 1
                        continue 
                    s = None
                    idx = idx + 1
                    continue 
                require msg.value >= 5 * 10^16
                if uint32(currentRound - 1) < stor9.length:
                    if stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0 + 1 >= stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0:
                        require stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0 + 1 <= 100
                        if uint32(currentRound - 1) < stor4.length:
                            stor4[uint32(uint32(stor3.field_160) - 1) / 8] = 256^(4 * currentRound - 1 % 8) * uint32(stor('array', ('mask_shl', 29, 3, -3, ('add', -1, ('stor', 32, 160, ('name', 'stor3', 3)))), ('name', 'stor4', 4))[uint8(uint32(stor3.field_160) - 1)] + 1) or stor4[uint32(uint32(stor3.field_160) - 1) / 8] and !(test266151307() * 256^(4 * currentRound - 1 % 8))
                            if uint32(currentRound - 1) < stor9.length:
                                if stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0 > 0:
                                    mem[ceil32(('cd', 164).length) + 288] = 96
                                    mem[ceil32(('cd', 164).length) + 320] = 0
                                    mem[ceil32(('cd', 164).length) + 352] = 0
                                    if uint32(currentRound - 1) < stor9.length:
                                        stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0++
                                        s = 0
                                        idx = 96
                                        while 256 > idx:
                                            stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_0 = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_0
                                            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                            idx = idx + 32
                                            continue 
                                        idx = 5
                                        s = sha3(sha3(msg.sender, uint32(currentRound - 1) + sha3(9))) + (2 * stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0)
                                        while idx:
                                            stor[s] = !(255 * 256^idx) and stor[s]
                                            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                            s = (idx + 1 / 32) + s
                                            continue 
                                        idx = (2 * stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0) - (3 * None + 3 / 32) + (None * None + 3 / 32)
                                        while (2 * stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0) + 1 > idx:
                                            uint8(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][idx].field_0) = 0
                                            idx = idx + 1
                                            continue 
                                        uint8(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_256) = 0
                                        Mask(248, 0, stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_264) = 0
                                        Mask(240, 0, stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_272) = 0
                                        mem[ceil32(('cd', 164).length) + 672 len 160] = code.data[20330 len 160]
                                        mem[ceil32(('cd', 164).length) + 832 len 160] = code.data[20330 len 160]
                                        mem[ceil32(('cd', 164).length) + 992 len 160] = code.data[20330 len 160]
                                        idx = 0
                                        while uint8(idx) < 5:
                                            mem[(32 * uint8(idx)) + ceil32(('cd', 164).length) + 992] = mem[(32 * uint8(idx)) + 127 len 1]
                                            idx = idx + 1
                                            continue 
                                        s = 0
                                        t = 0
                                        idx = 0
                                        while uint8(idx) < 4:
                                            t = s
                                            u = 0
                                            while uint8(u) < uint8(-idx + 4):
                                                require uint8(u + 1) < 5
                                                require uint8(u) < 5
                                                if mem[(32 * uint8(u)) + ceil32(('cd', 164).length) + 1023 len 1] <= mem[(32 * uint8(u + 1)) + ceil32(('cd', 164).length) + 1023 len 1]:
                                                    t = t
                                                    u = u + 1
                                                    continue 
                                                require uint8(u) < 5
                                                _4403 = mem[(32 * uint8(u)) + ceil32(('cd', 164).length) + 992]
                                                require uint8(u + 1) < 5
                                                require uint8(u) < 5
                                                mem[(32 * uint8(u)) + ceil32(('cd', 164).length) + 992] = mem[(32 * uint8(u + 1)) + ceil32(('cd', 164).length) + 1023 len 1]
                                                require uint8(u + 1) < 5
                                                mem[(32 * uint8(u + 1)) + ceil32(('cd', 164).length) + 992] = uint8(_4403)
                                                t = _4403
                                                u = u + 1
                                                continue 
                                            s = t
                                            t = u
                                            idx = idx + 1
                                            continue 
                                        if uint32(currentRound - 1) < stor10.length:
                                            stor10[uint32(uint32(stor3.field_160) - 1)][uint8(mem[ceil32(('cd', 164).length) + 1088]) << 224 or uint8(mem[ceil32(('cd', 164).length) + 1120]) << 216 or uint8(mem[ceil32(('cd', 164).length) + 1056]) << 232 or uint8(mem[ceil32(('cd', 164).length) + 1024]) << 240 or mem[ceil32(('cd', 164).length) + 992] << 248] = uint32(stor10[uint32(uint32(stor3.field_160) - 1)][uint8(mem[ceil32(('cd', 164).length) + 1088]) << 224 or uint8(mem[ceil32(('cd', 164).length) + 1120]) << 216 or uint8(mem[ceil32(('cd', 164).length) + 1056]) << 232 or uint8(mem[ceil32(('cd', 164).length) + 1024]) << 240 or mem[ceil32(('cd', 164).length) + 992] << 248] + 1)
                                            if uint32(uint32(currentRound - 1) / 7) < stor11.length:
                                                stor11[uint32(uint32(uint32(stor3.field_160) - 1) / 7)][call.data[4] << 248 or uint8(call.data[36]) << 240 or uint8(call.data[68]) << 232 or uint8(call.data[132]) << 216 or uint8(call.data[100]) << 224] = uint32(stor11[uint32(uint32(uint32(stor3.field_160) - 1) / 7)][call.data[4] << 248 or uint8(call.data[36]) << 240 or uint8(call.data[68]) << 232 or uint8(call.data[132]) << 216 or uint8(call.data[100]) << 224] + 1)
                                                if msg.value <= 5 * 10^16:
                                                    require ext_code.size(address(bookAddress))
                                                    call address(bookAddress).hasInviter(address arg1) with:
                                                         gas gas_remaining wei
                                                        args msg.sender
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(address(bookAddress))
                                                    if not ext_call.return_data[0]:
                                                        call address(bookAddress).isRoot(address arg1) with:
                                                             gas gas_remaining wei
                                                            args msg.sender
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if not ext_call.return_data[0]:
                                                            require ext_code.size(address(bookAddress))
                                                            call address(bookAddress).setInviter(address arg1, string arg2) with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, Array(len=('cd', 164).length, data=call.data[cd[164] + 36 len ('cd', 164).length])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                    call address(bookAddress).pay(address arg1) with:
                                                       value 5 * 10^15 wei
                                                         gas gas_remaining wei
                                                        args msg.sender
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if uint32(currentRound - 1) < stor9.length:
                                                        emit OnBuy(msg.sender, uint32(stor3.field_0), uint32(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0), call.data[4 len 160]);
                                                        if uint32(currentRound - 1) < stor9.length:
                                                            return stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0
                                                else:
                                                    if 5 * 10^16 <= msg.value:
                                                        call msg.sender with:
                                                           value msg.value - 5 * 10^16 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require ext_code.size(address(bookAddress))
                                                        call address(bookAddress).hasInviter(address arg1) with:
                                                             gas gas_remaining wei
                                                            args msg.sender
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(address(bookAddress))
                                                        if not ext_call.return_data[0]:
                                                            call address(bookAddress).isRoot(address arg1) with:
                                                                 gas gas_remaining wei
                                                                args msg.sender
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if not ext_call.return_data[0]:
                                                                require ext_code.size(address(bookAddress))
                                                                call address(bookAddress).setInviter(address arg1, string arg2) with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, Array(len=('cd', 164).length, data=call.data[cd[164] + 36 len ('cd', 164).length])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                        call address(bookAddress).pay(address arg1) with:
                                                           value 5 * 10^15 wei
                                                             gas gas_remaining wei
                                                            args msg.sender
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        if uint32(currentRound - 1) < stor9.length:
                                                            emit OnBuy(msg.sender, uint32(stor3.field_0), uint32(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0), call.data[4 len 160]);
                                                            if uint32(currentRound - 1) < stor9.length:
                                                                return stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0
                                else:
                                    if uint32(currentRound - 1) < stor5.length:
                                        stor5[uint32(uint32(stor3.field_160) - 1) / 8] = uint32(stor('array', ('mask_shl', 29, 3, -3, ('add', -1, ('stor', 32, 160, ('name', 'stor3', 3)))), ('name', 'stor5', 5))[uint8(uint32(stor3.field_160) - 1)] + 1) * 256^(4 * currentRound - 1 % 8) or stor5[uint32(uint32(stor3.field_160) - 1) / 8] and !(test266151307() * 256^(4 * currentRound - 1 % 8))
                                        mem[ceil32(('cd', 164).length) + 288] = 96
                                        mem[ceil32(('cd', 164).length) + 320] = 0
                                        mem[ceil32(('cd', 164).length) + 352] = 0
                                        if uint32(currentRound - 1) < stor9.length:
                                            stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0++
                                            s = 0
                                            idx = 96
                                            while 256 > idx:
                                                stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_0 = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_0
                                                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                                idx = idx + 32
                                                continue 
                                            idx = 5
                                            s = sha3(sha3(msg.sender, uint32(currentRound - 1) + sha3(9))) + (2 * stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0)
                                            while idx:
                                                stor[s] = !(255 * 256^idx) and stor[s]
                                                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                                s = (idx + 1 / 32) + s
                                                continue 
                                            idx = (2 * stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0) - (3 * None + 3 / 32) + (None * None + 3 / 32)
                                            while (2 * stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0) + 1 > idx:
                                                uint8(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][idx].field_0) = 0
                                                idx = idx + 1
                                                continue 
                                            uint8(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_256) = 0
                                            Mask(248, 0, stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_264) = 0
                                            Mask(240, 0, stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_272) = 0
                                            mem[ceil32(('cd', 164).length) + 672 len 160] = code.data[20330 len 160]
                                            mem[ceil32(('cd', 164).length) + 832 len 160] = code.data[20330 len 160]
                                            mem[ceil32(('cd', 164).length) + 992 len 160] = code.data[20330 len 160]
                                            idx = 0
                                            while uint8(idx) < 5:
                                                mem[(32 * uint8(idx)) + ceil32(('cd', 164).length) + 992] = mem[(32 * uint8(idx)) + 127 len 1]
                                                idx = idx + 1
                                                continue 
                                            s = 0
                                            t = 0
                                            idx = 0
                                            while uint8(idx) < 4:
                                                t = s
                                                u = 0
                                                while uint8(u) < uint8(-idx + 4):
                                                    require uint8(u + 1) < 5
                                                    require uint8(u) < 5
                                                    if mem[(32 * uint8(u)) + ceil32(('cd', 164).length) + 1023 len 1] <= mem[(32 * uint8(u + 1)) + ceil32(('cd', 164).length) + 1023 len 1]:
                                                        t = t
                                                        u = u + 1
                                                        continue 
                                                    require uint8(u) < 5
                                                    _4404 = mem[(32 * uint8(u)) + ceil32(('cd', 164).length) + 992]
                                                    require uint8(u + 1) < 5
                                                    require uint8(u) < 5
                                                    mem[(32 * uint8(u)) + ceil32(('cd', 164).length) + 992] = mem[(32 * uint8(u + 1)) + ceil32(('cd', 164).length) + 1023 len 1]
                                                    require uint8(u + 1) < 5
                                                    mem[(32 * uint8(u + 1)) + ceil32(('cd', 164).length) + 992] = uint8(_4404)
                                                    t = _4404
                                                    u = u + 1
                                                    continue 
                                                s = t
                                                t = u
                                                idx = idx + 1
                                                continue 
                                            if uint32(currentRound - 1) < stor10.length:
                                                stor10[uint32(uint32(stor3.field_160) - 1)][uint8(mem[ceil32(('cd', 164).length) + 1088]) << 224 or uint8(mem[ceil32(('cd', 164).length) + 1120]) << 216 or uint8(mem[ceil32(('cd', 164).length) + 1056]) << 232 or uint8(mem[ceil32(('cd', 164).length) + 1024]) << 240 or mem[ceil32(('cd', 164).length) + 992] << 248] = uint32(stor10[uint32(uint32(stor3.field_160) - 1)][uint8(mem[ceil32(('cd', 164).length) + 1088]) << 224 or uint8(mem[ceil32(('cd', 164).length) + 1120]) << 216 or uint8(mem[ceil32(('cd', 164).length) + 1056]) << 232 or uint8(mem[ceil32(('cd', 164).length) + 1024]) << 240 or mem[ceil32(('cd', 164).length) + 992] << 248] + 1)
                                                if uint32(uint32(currentRound - 1) / 7) < stor11.length:
                                                    stor11[uint32(uint32(uint32(stor3.field_160) - 1) / 7)][call.data[4] << 248 or uint8(call.data[36]) << 240 or uint8(call.data[68]) << 232 or uint8(call.data[132]) << 216 or uint8(call.data[100]) << 224] = uint32(stor11[uint32(uint32(uint32(stor3.field_160) - 1) / 7)][call.data[4] << 248 or uint8(call.data[36]) << 240 or uint8(call.data[68]) << 232 or uint8(call.data[132]) << 216 or uint8(call.data[100]) << 224] + 1)
                                                    if msg.value <= 5 * 10^16:
                                                        require ext_code.size(address(bookAddress))
                                                        call address(bookAddress).hasInviter(address arg1) with:
                                                             gas gas_remaining wei
                                                            args msg.sender
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(address(bookAddress))
                                                        if not ext_call.return_data[0]:
                                                            call address(bookAddress).isRoot(address arg1) with:
                                                                 gas gas_remaining wei
                                                                args msg.sender
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if not ext_call.return_data[0]:
                                                                require ext_code.size(address(bookAddress))
                                                                call address(bookAddress).setInviter(address arg1, string arg2) with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, Array(len=('cd', 164).length, data=call.data[cd[164] + 36 len ('cd', 164).length])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                        call address(bookAddress).pay(address arg1) with:
                                                           value 5 * 10^15 wei
                                                             gas gas_remaining wei
                                                            args msg.sender
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        if uint32(currentRound - 1) < stor9.length:
                                                            emit OnBuy(msg.sender, uint32(stor3.field_0), uint32(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0), call.data[4 len 160]);
                                                            if uint32(currentRound - 1) < stor9.length:
                                                                return stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0
                                                    else:
                                                        if 5 * 10^16 <= msg.value:
                                                            call msg.sender with:
                                                               value msg.value - 5 * 10^16 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require ext_code.size(address(bookAddress))
                                                            call address(bookAddress).hasInviter(address arg1) with:
                                                                 gas gas_remaining wei
                                                                args msg.sender
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_code.size(address(bookAddress))
                                                            if not ext_call.return_data[0]:
                                                                call address(bookAddress).isRoot(address arg1) with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if not ext_call.return_data[0]:
                                                                    require ext_code.size(address(bookAddress))
                                                                    call address(bookAddress).setInviter(address arg1, string arg2) with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, Array(len=('cd', 164).length, data=call.data[cd[164] + 36 len ('cd', 164).length])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                            call address(bookAddress).pay(address arg1) with:
                                                               value 5 * 10^15 wei
                                                                 gas gas_remaining wei
                                                                args msg.sender
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            if uint32(currentRound - 1) < stor9.length:
                                                                emit OnBuy(msg.sender, uint32(stor3.field_0), uint32(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0), call.data[4 len 160]);
                                                                if uint32(currentRound - 1) < stor9.length:
                                                                    return stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0
        else:
            call resolverAddress.getWalletAddress() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(resolverAddress)
            if ext_call.return_data[12 len 20] == walletAddress:
                call resolverAddress.0x23226654 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(resolverAddress)
                if ext_call.return_data[12 len 20] == address(bookAddress):
                    call resolverAddress.0xc57380a2 with:
                         gas gas_remaining wei
                    mem[ceil32(('cd', 164).length) + 672] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[12 len 20] == address(controllerAddress):
                        idx = 0
                        while idx < 5:
                            require mem[(32 * idx) + 127 len 1] >= 1
                            require idx < 5
                            require mem[(32 * idx) + 127 len 1] <= 16
                            idx = idx + 1
                            continue 
                        s = 0
                        idx = 0
                        while uint8(idx) < 4:
                            s = idx
                            while uint8(s) < 4:
                                require uint8(s + 1) < 5
                                require uint8(idx) < 5
                                require mem[(32 * uint8(idx)) + 127 len 1] != uint8(call.data[(32 * uint8(s + 1)) + 4])
                                s = s + 1
                                continue 
                            s = None
                            idx = idx + 1
                            continue 
                        require msg.value >= 5 * 10^16
                        if uint32(currentRound - 1) < stor9.length:
                            if stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0 + 1 >= stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0:
                                require stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0 + 1 <= 100
                                if uint32(currentRound - 1) < stor4.length:
                                    stor4[uint32(uint32(stor3.field_160) - 1) / 8] = 256^(4 * currentRound - 1 % 8) * uint32(stor('array', ('mask_shl', 29, 3, -3, ('add', -1, ('stor', 32, 160, ('name', 'stor3', 3)))), ('name', 'stor4', 4))[uint8(uint32(stor3.field_160) - 1)] + 1) or stor4[uint32(uint32(stor3.field_160) - 1) / 8] and !(test266151307() * 256^(4 * currentRound - 1 % 8))
                                    if uint32(currentRound - 1) < stor9.length:
                                        if stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0 > 0:
                                            mem[ceil32(('cd', 164).length) + 288] = 96
                                            mem[ceil32(('cd', 164).length) + 320] = 0
                                            mem[ceil32(('cd', 164).length) + 352] = 0
                                            if uint32(currentRound - 1) < stor9.length:
                                                stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0++
                                                s = 0
                                                idx = 96
                                                while 256 > idx:
                                                    stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_0 = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_0
                                                    s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                                    idx = idx + 32
                                                    continue 
                                                idx = 5
                                                s = sha3(sha3(msg.sender, uint32(currentRound - 1) + sha3(9))) + (2 * stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0)
                                                while idx:
                                                    stor[s] = !(255 * 256^idx) and stor[s]
                                                    idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                                    s = (idx + 1 / 32) + s
                                                    continue 
                                                idx = (2 * stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0) - (3 * None + 3 / 32) + (None * None + 3 / 32)
                                                while (2 * stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0) + 1 > idx:
                                                    uint8(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][idx].field_0) = 0
                                                    idx = idx + 1
                                                    continue 
                                                uint8(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_256) = 0
                                                Mask(248, 0, stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_264) = 0
                                                Mask(240, 0, stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_272) = 0
                                                mem[ceil32(('cd', 164).length) + 672 len 160] = code.data[20330 len 160]
                                                mem[ceil32(('cd', 164).length) + 832 len 160] = code.data[20330 len 160]
                                                mem[ceil32(('cd', 164).length) + 992 len 160] = code.data[20330 len 160]
                                                idx = 0
                                                while uint8(idx) < 5:
                                                    mem[(32 * uint8(idx)) + ceil32(('cd', 164).length) + 992] = mem[(32 * uint8(idx)) + 127 len 1]
                                                    idx = idx + 1
                                                    continue 
                                                s = 0
                                                t = 0
                                                idx = 0
                                                while uint8(idx) < 4:
                                                    t = s
                                                    u = 0
                                                    while uint8(u) < uint8(-idx + 4):
                                                        require uint8(u + 1) < 5
                                                        require uint8(u) < 5
                                                        if mem[(32 * uint8(u)) + ceil32(('cd', 164).length) + 1023 len 1] <= mem[(32 * uint8(u + 1)) + ceil32(('cd', 164).length) + 1023 len 1]:
                                                            t = t
                                                            u = u + 1
                                                            continue 
                                                        require uint8(u) < 5
                                                        _4385 = mem[(32 * uint8(u)) + ceil32(('cd', 164).length) + 992]
                                                        require uint8(u + 1) < 5
                                                        require uint8(u) < 5
                                                        mem[(32 * uint8(u)) + ceil32(('cd', 164).length) + 992] = mem[(32 * uint8(u + 1)) + ceil32(('cd', 164).length) + 1023 len 1]
                                                        require uint8(u + 1) < 5
                                                        mem[(32 * uint8(u + 1)) + ceil32(('cd', 164).length) + 992] = uint8(_4385)
                                                        t = _4385
                                                        u = u + 1
                                                        continue 
                                                    s = t
                                                    t = u
                                                    idx = idx + 1
                                                    continue 
                                                if uint32(currentRound - 1) < stor10.length:
                                                    stor10[uint32(uint32(stor3.field_160) - 1)][uint8(mem[ceil32(('cd', 164).length) + 1088]) << 224 or uint8(mem[ceil32(('cd', 164).length) + 1120]) << 216 or uint8(mem[ceil32(('cd', 164).length) + 1056]) << 232 or uint8(mem[ceil32(('cd', 164).length) + 1024]) << 240 or mem[ceil32(('cd', 164).length) + 992] << 248] = uint32(stor10[uint32(uint32(stor3.field_160) - 1)][uint8(mem[ceil32(('cd', 164).length) + 1088]) << 224 or uint8(mem[ceil32(('cd', 164).length) + 1120]) << 216 or uint8(mem[ceil32(('cd', 164).length) + 1056]) << 232 or uint8(mem[ceil32(('cd', 164).length) + 1024]) << 240 or mem[ceil32(('cd', 164).length) + 992] << 248] + 1)
                                                    if uint32(uint32(currentRound - 1) / 7) < stor11.length:
                                                        stor11[uint32(uint32(uint32(stor3.field_160) - 1) / 7)][call.data[4] << 248 or uint8(call.data[36]) << 240 or uint8(call.data[68]) << 232 or uint8(call.data[132]) << 216 or uint8(call.data[100]) << 224] = uint32(stor11[uint32(uint32(uint32(stor3.field_160) - 1) / 7)][call.data[4] << 248 or uint8(call.data[36]) << 240 or uint8(call.data[68]) << 232 or uint8(call.data[132]) << 216 or uint8(call.data[100]) << 224] + 1)
                                                        if msg.value <= 5 * 10^16:
                                                            require ext_code.size(address(bookAddress))
                                                            call address(bookAddress).hasInviter(address arg1) with:
                                                                 gas gas_remaining wei
                                                                args msg.sender
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_code.size(address(bookAddress))
                                                            if not ext_call.return_data[0]:
                                                                call address(bookAddress).isRoot(address arg1) with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if not ext_call.return_data[0]:
                                                                    require ext_code.size(address(bookAddress))
                                                                    call address(bookAddress).setInviter(address arg1, string arg2) with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, Array(len=('cd', 164).length, data=call.data[cd[164] + 36 len ('cd', 164).length])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                            call address(bookAddress).pay(address arg1) with:
                                                               value 5 * 10^15 wei
                                                                 gas gas_remaining wei
                                                                args msg.sender
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            if uint32(currentRound - 1) < stor9.length:
                                                                emit OnBuy(msg.sender, uint32(stor3.field_0), uint32(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0), call.data[4 len 160]);
                                                                if uint32(currentRound - 1) < stor9.length:
                                                                    return stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0
                                                        else:
                                                            if 5 * 10^16 <= msg.value:
                                                                call msg.sender with:
                                                                   value msg.value - 5 * 10^16 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require ext_code.size(address(bookAddress))
                                                                call address(bookAddress).hasInviter(address arg1) with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                require ext_code.size(address(bookAddress))
                                                                if not ext_call.return_data[0]:
                                                                    call address(bookAddress).isRoot(address arg1) with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 32
                                                                    if not ext_call.return_data[0]:
                                                                        require ext_code.size(address(bookAddress))
                                                                        call address(bookAddress).setInviter(address arg1, string arg2) with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, Array(len=('cd', 164).length, data=call.data[cd[164] + 36 len ('cd', 164).length])
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                call address(bookAddress).pay(address arg1) with:
                                                                   value 5 * 10^15 wei
                                                                     gas gas_remaining wei
                                                                    args msg.sender
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                if uint32(currentRound - 1) < stor9.length:
                                                                    emit OnBuy(msg.sender, uint32(stor3.field_0), uint32(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0), call.data[4 len 160]);
                                                                    if uint32(currentRound - 1) < stor9.length:
                                                                        return stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0
                                        else:
                                            if uint32(currentRound - 1) < stor5.length:
                                                stor5[uint32(uint32(stor3.field_160) - 1) / 8] = uint32(stor('array', ('mask_shl', 29, 3, -3, ('add', -1, ('stor', 32, 160, ('name', 'stor3', 3)))), ('name', 'stor5', 5))[uint8(uint32(stor3.field_160) - 1)] + 1) * 256^(4 * currentRound - 1 % 8) or stor5[uint32(uint32(stor3.field_160) - 1) / 8] and !(test266151307() * 256^(4 * currentRound - 1 % 8))
                                                mem[ceil32(('cd', 164).length) + 288] = 96
                                                mem[ceil32(('cd', 164).length) + 320] = 0
                                                mem[ceil32(('cd', 164).length) + 352] = 0
                                                if uint32(currentRound - 1) < stor9.length:
                                                    stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0++
                                                    s = 0
                                                    idx = 96
                                                    while 256 > idx:
                                                        stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_0 = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_0
                                                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                                        idx = idx + 32
                                                        continue 
                                                    idx = 5
                                                    s = sha3(sha3(msg.sender, uint32(currentRound - 1) + sha3(9))) + (2 * stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0)
                                                    while idx:
                                                        stor[s] = !(255 * 256^idx) and stor[s]
                                                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                                        s = (idx + 1 / 32) + s
                                                        continue 
                                                    idx = (2 * stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0) - (3 * None + 3 / 32) + (None * None + 3 / 32)
                                                    while (2 * stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0) + 1 > idx:
                                                        uint8(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][idx].field_0) = 0
                                                        idx = idx + 1
                                                        continue 
                                                    uint8(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_256) = 0
                                                    Mask(248, 0, stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_264) = 0
                                                    Mask(240, 0, stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_272) = 0
                                                    mem[ceil32(('cd', 164).length) + 672 len 160] = code.data[20330 len 160]
                                                    mem[ceil32(('cd', 164).length) + 832 len 160] = code.data[20330 len 160]
                                                    mem[ceil32(('cd', 164).length) + 992 len 160] = code.data[20330 len 160]
                                                    idx = 0
                                                    while uint8(idx) < 5:
                                                        mem[(32 * uint8(idx)) + ceil32(('cd', 164).length) + 992] = mem[(32 * uint8(idx)) + 127 len 1]
                                                        idx = idx + 1
                                                        continue 
                                                    s = 0
                                                    t = 0
                                                    idx = 0
                                                    while uint8(idx) < 4:
                                                        t = s
                                                        u = 0
                                                        while uint8(u) < uint8(-idx + 4):
                                                            require uint8(u + 1) < 5
                                                            require uint8(u) < 5
                                                            if mem[(32 * uint8(u)) + ceil32(('cd', 164).length) + 1023 len 1] <= mem[(32 * uint8(u + 1)) + ceil32(('cd', 164).length) + 1023 len 1]:
                                                                t = t
                                                                u = u + 1
                                                                continue 
                                                            require uint8(u) < 5
                                                            _4386 = mem[(32 * uint8(u)) + ceil32(('cd', 164).length) + 992]
                                                            require uint8(u + 1) < 5
                                                            require uint8(u) < 5
                                                            mem[(32 * uint8(u)) + ceil32(('cd', 164).length) + 992] = mem[(32 * uint8(u + 1)) + ceil32(('cd', 164).length) + 1023 len 1]
                                                            require uint8(u + 1) < 5
                                                            mem[(32 * uint8(u + 1)) + ceil32(('cd', 164).length) + 992] = uint8(_4386)
                                                            t = _4386
                                                            u = u + 1
                                                            continue 
                                                        s = t
                                                        t = u
                                                        idx = idx + 1
                                                        continue 
                                                    if uint32(currentRound - 1) < stor10.length:
                                                        stor10[uint32(uint32(stor3.field_160) - 1)][uint8(mem[ceil32(('cd', 164).length) + 1088]) << 224 or uint8(mem[ceil32(('cd', 164).length) + 1120]) << 216 or uint8(mem[ceil32(('cd', 164).length) + 1056]) << 232 or uint8(mem[ceil32(('cd', 164).length) + 1024]) << 240 or mem[ceil32(('cd', 164).length) + 992] << 248] = uint32(stor10[uint32(uint32(stor3.field_160) - 1)][uint8(mem[ceil32(('cd', 164).length) + 1088]) << 224 or uint8(mem[ceil32(('cd', 164).length) + 1120]) << 216 or uint8(mem[ceil32(('cd', 164).length) + 1056]) << 232 or uint8(mem[ceil32(('cd', 164).length) + 1024]) << 240 or mem[ceil32(('cd', 164).length) + 992] << 248] + 1)
                                                        if uint32(uint32(currentRound - 1) / 7) < stor11.length:
                                                            stor11[uint32(uint32(uint32(stor3.field_160) - 1) / 7)][call.data[4] << 248 or uint8(call.data[36]) << 240 or uint8(call.data[68]) << 232 or uint8(call.data[132]) << 216 or uint8(call.data[100]) << 224] = uint32(stor11[uint32(uint32(uint32(stor3.field_160) - 1) / 7)][call.data[4] << 248 or uint8(call.data[36]) << 240 or uint8(call.data[68]) << 232 or uint8(call.data[132]) << 216 or uint8(call.data[100]) << 224] + 1)
                                                            if msg.value <= 5 * 10^16:
                                                                require ext_code.size(address(bookAddress))
                                                                call address(bookAddress).hasInviter(address arg1) with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                require ext_code.size(address(bookAddress))
                                                                if not ext_call.return_data[0]:
                                                                    call address(bookAddress).isRoot(address arg1) with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 32
                                                                    if not ext_call.return_data[0]:
                                                                        require ext_code.size(address(bookAddress))
                                                                        call address(bookAddress).setInviter(address arg1, string arg2) with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, Array(len=('cd', 164).length, data=call.data[cd[164] + 36 len ('cd', 164).length])
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                call address(bookAddress).pay(address arg1) with:
                                                                   value 5 * 10^15 wei
                                                                     gas gas_remaining wei
                                                                    args msg.sender
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                if uint32(currentRound - 1) < stor9.length:
                                                                    emit OnBuy(msg.sender, uint32(stor3.field_0), uint32(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0), call.data[4 len 160]);
                                                                    if uint32(currentRound - 1) < stor9.length:
                                                                        return stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0
                                                            else:
                                                                if 5 * 10^16 <= msg.value:
                                                                    call msg.sender with:
                                                                       value msg.value - 5 * 10^16 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require ext_code.size(address(bookAddress))
                                                                    call address(bookAddress).hasInviter(address arg1) with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 32
                                                                    require ext_code.size(address(bookAddress))
                                                                    if not ext_call.return_data[0]:
                                                                        call address(bookAddress).isRoot(address arg1) with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        if not ext_call.return_data[0]:
                                                                            require ext_code.size(address(bookAddress))
                                                                            call address(bookAddress).setInviter(address arg1, string arg2) with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, Array(len=('cd', 164).length, data=call.data[cd[164] + 36 len ('cd', 164).length])
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                    call address(bookAddress).pay(address arg1) with:
                                                                       value 5 * 10^15 wei
                                                                         gas gas_remaining wei
                                                                        args msg.sender
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    if uint32(currentRound - 1) < stor9.length:
                                                                        emit OnBuy(msg.sender, uint32(stor3.field_0), uint32(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0), call.data[4 len 160]);
                                                                        if uint32(currentRound - 1) < stor9.length:
                                                                            return stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0
                    else:
                        require ext_code.size(resolverAddress)
                        call resolverAddress.0xc57380a2 with:
                             gas gas_remaining wei
                        mem[ceil32(('cd', 164).length) + 672] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                        idx = 0
                        while idx < 5:
                            require mem[(32 * idx) + 127 len 1] >= 1
                            require idx < 5
                            require mem[(32 * idx) + 127 len 1] <= 16
                            idx = idx + 1
                            continue 
                        s = 0
                        idx = 0
                        while uint8(idx) < 4:
                            s = idx
                            while uint8(s) < 4:
                                require uint8(s + 1) < 5
                                require uint8(idx) < 5
                                require mem[(32 * uint8(idx)) + 127 len 1] != uint8(call.data[(32 * uint8(s + 1)) + 4])
                                s = s + 1
                                continue 
                            s = None
                            idx = idx + 1
                            continue 
                        require msg.value >= 5 * 10^16
                        if uint32(currentRound - 1) < stor9.length:
                            if stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0 + 1 >= stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0:
                                require stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0 + 1 <= 100
                                if uint32(currentRound - 1) < stor4.length:
                                    stor4[uint32(uint32(stor3.field_160) - 1) / 8] = 256^(4 * currentRound - 1 % 8) * uint32(stor('array', ('mask_shl', 29, 3, -3, ('add', -1, ('stor', 32, 160, ('name', 'stor3', 3)))), ('name', 'stor4', 4))[uint8(uint32(stor3.field_160) - 1)] + 1) or stor4[uint32(uint32(stor3.field_160) - 1) / 8] and !(test266151307() * 256^(4 * currentRound - 1 % 8))
                                    if uint32(currentRound - 1) < stor9.length:
                                        if stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0 > 0:
                                            mem[ceil32(('cd', 164).length) + 288] = 96
                                            mem[ceil32(('cd', 164).length) + 320] = 0
                                            mem[ceil32(('cd', 164).length) + 352] = 0
                                            if uint32(currentRound - 1) < stor9.length:
                                                stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0++
                                                s = 0
                                                idx = 96
                                                while 256 > idx:
                                                    stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_0 = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_0
                                                    s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                                    idx = idx + 32
                                                    continue 
                                                idx = 5
                                                s = sha3(sha3(msg.sender, uint32(currentRound - 1) + sha3(9))) + (2 * stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0)
                                                while idx:
                                                    stor[s] = !(255 * 256^idx) and stor[s]
                                                    idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                                    s = (idx + 1 / 32) + s
                                                    continue 
                                                idx = (2 * stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0) - (3 * None + 3 / 32) + (None * None + 3 / 32)
                                                while (2 * stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0) + 1 > idx:
                                                    uint8(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][idx].field_0) = 0
                                                    idx = idx + 1
                                                    continue 
                                                uint8(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_256) = 0
                                                Mask(248, 0, stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_264) = 0
                                                Mask(240, 0, stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_272) = 0
                                                mem[ceil32(('cd', 164).length) + 672 len 160] = code.data[20330 len 160]
                                                mem[ceil32(('cd', 164).length) + 832 len 160] = code.data[20330 len 160]
                                                mem[ceil32(('cd', 164).length) + 992 len 160] = code.data[20330 len 160]
                                                idx = 0
                                                while uint8(idx) < 5:
                                                    mem[(32 * uint8(idx)) + ceil32(('cd', 164).length) + 992] = mem[(32 * uint8(idx)) + 127 len 1]
                                                    idx = idx + 1
                                                    continue 
                                                s = 0
                                                t = 0
                                                idx = 0
                                                while uint8(idx) < 4:
                                                    t = s
                                                    u = 0
                                                    while uint8(u) < uint8(-idx + 4):
                                                        require uint8(u + 1) < 5
                                                        require uint8(u) < 5
                                                        if mem[(32 * uint8(u)) + ceil32(('cd', 164).length) + 1023 len 1] <= mem[(32 * uint8(u + 1)) + ceil32(('cd', 164).length) + 1023 len 1]:
                                                            t = t
                                                            u = u + 1
                                                            continue 
                                                        require uint8(u) < 5
                                                        _4387 = mem[(32 * uint8(u)) + ceil32(('cd', 164).length) + 992]
                                                        require uint8(u + 1) < 5
                                                        require uint8(u) < 5
                                                        mem[(32 * uint8(u)) + ceil32(('cd', 164).length) + 992] = mem[(32 * uint8(u + 1)) + ceil32(('cd', 164).length) + 1023 len 1]
                                                        require uint8(u + 1) < 5
                                                        mem[(32 * uint8(u + 1)) + ceil32(('cd', 164).length) + 992] = uint8(_4387)
                                                        t = _4387
                                                        u = u + 1
                                                        continue 
                                                    s = t
                                                    t = u
                                                    idx = idx + 1
                                                    continue 
                                                if uint32(currentRound - 1) < stor10.length:
                                                    stor10[uint32(uint32(stor3.field_160) - 1)][uint8(mem[ceil32(('cd', 164).length) + 1088]) << 224 or uint8(mem[ceil32(('cd', 164).length) + 1120]) << 216 or uint8(mem[ceil32(('cd', 164).length) + 1056]) << 232 or uint8(mem[ceil32(('cd', 164).length) + 1024]) << 240 or mem[ceil32(('cd', 164).length) + 992] << 248] = uint32(stor10[uint32(uint32(stor3.field_160) - 1)][uint8(mem[ceil32(('cd', 164).length) + 1088]) << 224 or uint8(mem[ceil32(('cd', 164).length) + 1120]) << 216 or uint8(mem[ceil32(('cd', 164).length) + 1056]) << 232 or uint8(mem[ceil32(('cd', 164).length) + 1024]) << 240 or mem[ceil32(('cd', 164).length) + 992] << 248] + 1)
                                                    if uint32(uint32(currentRound - 1) / 7) < stor11.length:
                                                        stor11[uint32(uint32(uint32(stor3.field_160) - 1) / 7)][call.data[4] << 248 or uint8(call.data[36]) << 240 or uint8(call.data[68]) << 232 or uint8(call.data[132]) << 216 or uint8(call.data[100]) << 224] = uint32(stor11[uint32(uint32(uint32(stor3.field_160) - 1) / 7)][call.data[4] << 248 or uint8(call.data[36]) << 240 or uint8(call.data[68]) << 232 or uint8(call.data[132]) << 216 or uint8(call.data[100]) << 224] + 1)
                                                        if msg.value <= 5 * 10^16:
                                                            require ext_code.size(address(bookAddress))
                                                            call address(bookAddress).hasInviter(address arg1) with:
                                                                 gas gas_remaining wei
                                                                args msg.sender
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_code.size(address(bookAddress))
                                                            if not ext_call.return_data[0]:
                                                                call address(bookAddress).isRoot(address arg1) with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if not ext_call.return_data[0]:
                                                                    require ext_code.size(address(bookAddress))
                                                                    call address(bookAddress).setInviter(address arg1, string arg2) with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, Array(len=('cd', 164).length, data=call.data[cd[164] + 36 len ('cd', 164).length])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                            call address(bookAddress).pay(address arg1) with:
                                                               value 5 * 10^15 wei
                                                                 gas gas_remaining wei
                                                                args msg.sender
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            if uint32(currentRound - 1) < stor9.length:
                                                                emit OnBuy(msg.sender, uint32(stor3.field_0), uint32(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0), call.data[4 len 160]);
                                                                if uint32(currentRound - 1) < stor9.length:
                                                                    return stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0
                                                        else:
                                                            if 5 * 10^16 <= msg.value:
                                                                call msg.sender with:
                                                                   value msg.value - 5 * 10^16 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require ext_code.size(address(bookAddress))
                                                                call address(bookAddress).hasInviter(address arg1) with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                require ext_code.size(address(bookAddress))
                                                                if not ext_call.return_data[0]:
                                                                    call address(bookAddress).isRoot(address arg1) with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 32
                                                                    if not ext_call.return_data[0]:
                                                                        require ext_code.size(address(bookAddress))
                                                                        call address(bookAddress).setInviter(address arg1, string arg2) with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, Array(len=('cd', 164).length, data=call.data[cd[164] + 36 len ('cd', 164).length])
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                call address(bookAddress).pay(address arg1) with:
                                                                   value 5 * 10^15 wei
                                                                     gas gas_remaining wei
                                                                    args msg.sender
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                if uint32(currentRound - 1) < stor9.length:
                                                                    emit OnBuy(msg.sender, uint32(stor3.field_0), uint32(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0), call.data[4 len 160]);
                                                                    if uint32(currentRound - 1) < stor9.length:
                                                                        return stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0
                                        else:
                                            if uint32(currentRound - 1) < stor5.length:
                                                stor5[uint32(uint32(stor3.field_160) - 1) / 8] = uint32(stor('array', ('mask_shl', 29, 3, -3, ('add', -1, ('stor', 32, 160, ('name', 'stor3', 3)))), ('name', 'stor5', 5))[uint8(uint32(stor3.field_160) - 1)] + 1) * 256^(4 * currentRound - 1 % 8) or stor5[uint32(uint32(stor3.field_160) - 1) / 8] and !(test266151307() * 256^(4 * currentRound - 1 % 8))
                                                mem[ceil32(('cd', 164).length) + 288] = 96
                                                mem[ceil32(('cd', 164).length) + 320] = 0
                                                mem[ceil32(('cd', 164).length) + 352] = 0
                                                if uint32(currentRound - 1) < stor9.length:
                                                    stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0++
                                                    s = 0
                                                    idx = 96
                                                    while 256 > idx:
                                                        stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_0 = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_0
                                                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                                        idx = idx + 32
                                                        continue 
                                                    idx = 5
                                                    s = sha3(sha3(msg.sender, uint32(currentRound - 1) + sha3(9))) + (2 * stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0)
                                                    while idx:
                                                        stor[s] = !(255 * 256^idx) and stor[s]
                                                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                                        s = (idx + 1 / 32) + s
                                                        continue 
                                                    idx = (2 * stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0) - (3 * None + 3 / 32) + (None * None + 3 / 32)
                                                    while (2 * stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0) + 1 > idx:
                                                        uint8(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][idx].field_0) = 0
                                                        idx = idx + 1
                                                        continue 
                                                    uint8(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_256) = 0
                                                    Mask(248, 0, stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_264) = 0
                                                    Mask(240, 0, stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_272) = 0
                                                    mem[ceil32(('cd', 164).length) + 672 len 160] = code.data[20330 len 160]
                                                    mem[ceil32(('cd', 164).length) + 832 len 160] = code.data[20330 len 160]
                                                    mem[ceil32(('cd', 164).length) + 992 len 160] = code.data[20330 len 160]
                                                    idx = 0
                                                    while uint8(idx) < 5:
                                                        mem[(32 * uint8(idx)) + ceil32(('cd', 164).length) + 992] = mem[(32 * uint8(idx)) + 127 len 1]
                                                        idx = idx + 1
                                                        continue 
                                                    s = 0
                                                    t = 0
                                                    idx = 0
                                                    while uint8(idx) < 4:
                                                        t = s
                                                        u = 0
                                                        while uint8(u) < uint8(-idx + 4):
                                                            require uint8(u + 1) < 5
                                                            require uint8(u) < 5
                                                            if mem[(32 * uint8(u)) + ceil32(('cd', 164).length) + 1023 len 1] <= mem[(32 * uint8(u + 1)) + ceil32(('cd', 164).length) + 1023 len 1]:
                                                                t = t
                                                                u = u + 1
                                                                continue 
                                                            require uint8(u) < 5
                                                            _4388 = mem[(32 * uint8(u)) + ceil32(('cd', 164).length) + 992]
                                                            require uint8(u + 1) < 5
                                                            require uint8(u) < 5
                                                            mem[(32 * uint8(u)) + ceil32(('cd', 164).length) + 992] = mem[(32 * uint8(u + 1)) + ceil32(('cd', 164).length) + 1023 len 1]
                                                            require uint8(u + 1) < 5
                                                            mem[(32 * uint8(u + 1)) + ceil32(('cd', 164).length) + 992] = uint8(_4388)
                                                            t = _4388
                                                            u = u + 1
                                                            continue 
                                                        s = t
                                                        t = u
                                                        idx = idx + 1
                                                        continue 
                                                    if uint32(currentRound - 1) < stor10.length:
                                                        stor10[uint32(uint32(stor3.field_160) - 1)][uint8(mem[ceil32(('cd', 164).length) + 1088]) << 224 or uint8(mem[ceil32(('cd', 164).length) + 1120]) << 216 or uint8(mem[ceil32(('cd', 164).length) + 1056]) << 232 or uint8(mem[ceil32(('cd', 164).length) + 1024]) << 240 or mem[ceil32(('cd', 164).length) + 992] << 248] = uint32(stor10[uint32(uint32(stor3.field_160) - 1)][uint8(mem[ceil32(('cd', 164).length) + 1088]) << 224 or uint8(mem[ceil32(('cd', 164).length) + 1120]) << 216 or uint8(mem[ceil32(('cd', 164).length) + 1056]) << 232 or uint8(mem[ceil32(('cd', 164).length) + 1024]) << 240 or mem[ceil32(('cd', 164).length) + 992] << 248] + 1)
                                                        if uint32(uint32(currentRound - 1) / 7) < stor11.length:
                                                            stor11[uint32(uint32(uint32(stor3.field_160) - 1) / 7)][call.data[4] << 248 or uint8(call.data[36]) << 240 or uint8(call.data[68]) << 232 or uint8(call.data[132]) << 216 or uint8(call.data[100]) << 224] = uint32(stor11[uint32(uint32(uint32(stor3.field_160) - 1) / 7)][call.data[4] << 248 or uint8(call.data[36]) << 240 or uint8(call.data[68]) << 232 or uint8(call.data[132]) << 216 or uint8(call.data[100]) << 224] + 1)
                                                            if msg.value <= 5 * 10^16:
                                                                require ext_code.size(address(bookAddress))
                                                                call address(bookAddress).hasInviter(address arg1) with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                require ext_code.size(address(bookAddress))
                                                                if not ext_call.return_data[0]:
                                                                    call address(bookAddress).isRoot(address arg1) with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 32
                                                                    if not ext_call.return_data[0]:
                                                                        require ext_code.size(address(bookAddress))
                                                                        call address(bookAddress).setInviter(address arg1, string arg2) with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, Array(len=('cd', 164).length, data=call.data[cd[164] + 36 len ('cd', 164).length])
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                call address(bookAddress).pay(address arg1) with:
                                                                   value 5 * 10^15 wei
                                                                     gas gas_remaining wei
                                                                    args msg.sender
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                if uint32(currentRound - 1) < stor9.length:
                                                                    emit OnBuy(msg.sender, uint32(stor3.field_0), uint32(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0), call.data[4 len 160]);
                                                                    if uint32(currentRound - 1) < stor9.length:
                                                                        return stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0
                                                            else:
                                                                if 5 * 10^16 <= msg.value:
                                                                    call msg.sender with:
                                                                       value msg.value - 5 * 10^16 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require ext_code.size(address(bookAddress))
                                                                    call address(bookAddress).hasInviter(address arg1) with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 32
                                                                    require ext_code.size(address(bookAddress))
                                                                    if not ext_call.return_data[0]:
                                                                        call address(bookAddress).isRoot(address arg1) with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        if not ext_call.return_data[0]:
                                                                            require ext_code.size(address(bookAddress))
                                                                            call address(bookAddress).setInviter(address arg1, string arg2) with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, Array(len=('cd', 164).length, data=call.data[cd[164] + 36 len ('cd', 164).length])
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                    call address(bookAddress).pay(address arg1) with:
                                                                       value 5 * 10^15 wei
                                                                         gas gas_remaining wei
                                                                        args msg.sender
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    if uint32(currentRound - 1) < stor9.length:
                                                                        emit OnBuy(msg.sender, uint32(stor3.field_0), uint32(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0), call.data[4 len 160]);
                                                                        if uint32(currentRound - 1) < stor9.length:
                                                                            return stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0
                else:
                    call resolverAddress.0x23226654 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
                    require ext_code.size(resolverAddress)
                    call resolverAddress.0xc57380a2 with:
                         gas gas_remaining wei
                    mem[ceil32(('cd', 164).length) + 672] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[12 len 20] == address(controllerAddress):
                        idx = 0
                        while idx < 5:
                            require mem[(32 * idx) + 127 len 1] >= 1
                            require idx < 5
                            require mem[(32 * idx) + 127 len 1] <= 16
                            idx = idx + 1
                            continue 
                        s = 0
                        idx = 0
                        while uint8(idx) < 4:
                            s = idx
                            while uint8(s) < 4:
                                require uint8(s + 1) < 5
                                require uint8(idx) < 5
                                require mem[(32 * uint8(idx)) + 127 len 1] != uint8(call.data[(32 * uint8(s + 1)) + 4])
                                s = s + 1
                                continue 
                            s = None
                            idx = idx + 1
                            continue 
                        require msg.value >= 5 * 10^16
                        if uint32(currentRound - 1) < stor9.length:
                            if stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0 + 1 >= stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0:
                                require stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0 + 1 <= 100
                                if uint32(currentRound - 1) < stor4.length:
                                    stor4[uint32(uint32(stor3.field_160) - 1) / 8] = 256^(4 * currentRound - 1 % 8) * uint32(stor('array', ('mask_shl', 29, 3, -3, ('add', -1, ('stor', 32, 160, ('name', 'stor3', 3)))), ('name', 'stor4', 4))[uint8(uint32(stor3.field_160) - 1)] + 1) or stor4[uint32(uint32(stor3.field_160) - 1) / 8] and !(test266151307() * 256^(4 * currentRound - 1 % 8))
                                    if uint32(currentRound - 1) < stor9.length:
                                        if stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0 > 0:
                                            mem[ceil32(('cd', 164).length) + 288] = 96
                                            mem[ceil32(('cd', 164).length) + 320] = 0
                                            mem[ceil32(('cd', 164).length) + 352] = 0
                                            if uint32(currentRound - 1) < stor9.length:
                                                stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0++
                                                s = 0
                                                idx = 96
                                                while 256 > idx:
                                                    stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_0 = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_0
                                                    s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                                    idx = idx + 32
                                                    continue 
                                                idx = 5
                                                s = sha3(sha3(msg.sender, uint32(currentRound - 1) + sha3(9))) + (2 * stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0)
                                                while idx:
                                                    stor[s] = !(255 * 256^idx) and stor[s]
                                                    idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                                    s = (idx + 1 / 32) + s
                                                    continue 
                                                idx = (2 * stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0) - (3 * None + 3 / 32) + (None * None + 3 / 32)
                                                while (2 * stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0) + 1 > idx:
                                                    uint8(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][idx].field_0) = 0
                                                    idx = idx + 1
                                                    continue 
                                                uint8(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_256) = 0
                                                Mask(248, 0, stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_264) = 0
                                                Mask(240, 0, stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_272) = 0
                                                mem[ceil32(('cd', 164).length) + 672 len 160] = code.data[20330 len 160]
                                                mem[ceil32(('cd', 164).length) + 832 len 160] = code.data[20330 len 160]
                                                mem[ceil32(('cd', 164).length) + 992 len 160] = code.data[20330 len 160]
                                                idx = 0
                                                while uint8(idx) < 5:
                                                    mem[(32 * uint8(idx)) + ceil32(('cd', 164).length) + 992] = mem[(32 * uint8(idx)) + 127 len 1]
                                                    idx = idx + 1
                                                    continue 
                                                s = 0
                                                t = 0
                                                idx = 0
                                                while uint8(idx) < 4:
                                                    t = s
                                                    u = 0
                                                    while uint8(u) < uint8(-idx + 4):
                                                        require uint8(u + 1) < 5
                                                        require uint8(u) < 5
                                                        if mem[(32 * uint8(u)) + ceil32(('cd', 164).length) + 1023 len 1] <= mem[(32 * uint8(u + 1)) + ceil32(('cd', 164).length) + 1023 len 1]:
                                                            t = t
                                                            u = u + 1
                                                            continue 
                                                        require uint8(u) < 5
                                                        _4389 = mem[(32 * uint8(u)) + ceil32(('cd', 164).length) + 992]
                                                        require uint8(u + 1) < 5
                                                        require uint8(u) < 5
                                                        mem[(32 * uint8(u)) + ceil32(('cd', 164).length) + 992] = mem[(32 * uint8(u + 1)) + ceil32(('cd', 164).length) + 1023 len 1]
                                                        require uint8(u + 1) < 5
                                                        mem[(32 * uint8(u + 1)) + ceil32(('cd', 164).length) + 992] = uint8(_4389)
                                                        t = _4389
                                                        u = u + 1
                                                        continue 
                                                    s = t
                                                    t = u
                                                    idx = idx + 1
                                                    continue 
                                                if uint32(currentRound - 1) < stor10.length:
                                                    stor10[uint32(uint32(stor3.field_160) - 1)][uint8(mem[ceil32(('cd', 164).length) + 1088]) << 224 or uint8(mem[ceil32(('cd', 164).length) + 1120]) << 216 or uint8(mem[ceil32(('cd', 164).length) + 1056]) << 232 or uint8(mem[ceil32(('cd', 164).length) + 1024]) << 240 or mem[ceil32(('cd', 164).length) + 992] << 248] = uint32(stor10[uint32(uint32(stor3.field_160) - 1)][uint8(mem[ceil32(('cd', 164).length) + 1088]) << 224 or uint8(mem[ceil32(('cd', 164).length) + 1120]) << 216 or uint8(mem[ceil32(('cd', 164).length) + 1056]) << 232 or uint8(mem[ceil32(('cd', 164).length) + 1024]) << 240 or mem[ceil32(('cd', 164).length) + 992] << 248] + 1)
                                                    if uint32(uint32(currentRound - 1) / 7) < stor11.length:
                                                        stor11[uint32(uint32(uint32(stor3.field_160) - 1) / 7)][call.data[4] << 248 or uint8(call.data[36]) << 240 or uint8(call.data[68]) << 232 or uint8(call.data[132]) << 216 or uint8(call.data[100]) << 224] = uint32(stor11[uint32(uint32(uint32(stor3.field_160) - 1) / 7)][call.data[4] << 248 or uint8(call.data[36]) << 240 or uint8(call.data[68]) << 232 or uint8(call.data[132]) << 216 or uint8(call.data[100]) << 224] + 1)
                                                        if msg.value <= 5 * 10^16:
                                                            require ext_code.size(address(bookAddress))
                                                            call address(bookAddress).hasInviter(address arg1) with:
                                                                 gas gas_remaining wei
                                                                args msg.sender
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_code.size(address(bookAddress))
                                                            if not ext_call.return_data[0]:
                                                                call address(bookAddress).isRoot(address arg1) with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if not ext_call.return_data[0]:
                                                                    require ext_code.size(address(bookAddress))
                                                                    call address(bookAddress).setInviter(address arg1, string arg2) with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, Array(len=('cd', 164).length, data=call.data[cd[164] + 36 len ('cd', 164).length])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                            call address(bookAddress).pay(address arg1) with:
                                                               value 5 * 10^15 wei
                                                                 gas gas_remaining wei
                                                                args msg.sender
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            if uint32(currentRound - 1) < stor9.length:
                                                                emit OnBuy(msg.sender, uint32(stor3.field_0), uint32(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0), call.data[4 len 160]);
                                                                if uint32(currentRound - 1) < stor9.length:
                                                                    return stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0
                                                        else:
                                                            if 5 * 10^16 <= msg.value:
                                                                call msg.sender with:
                                                                   value msg.value - 5 * 10^16 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require ext_code.size(address(bookAddress))
                                                                call address(bookAddress).hasInviter(address arg1) with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                require ext_code.size(address(bookAddress))
                                                                if not ext_call.return_data[0]:
                                                                    call address(bookAddress).isRoot(address arg1) with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 32
                                                                    if not ext_call.return_data[0]:
                                                                        require ext_code.size(address(bookAddress))
                                                                        call address(bookAddress).setInviter(address arg1, string arg2) with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, Array(len=('cd', 164).length, data=call.data[cd[164] + 36 len ('cd', 164).length])
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                call address(bookAddress).pay(address arg1) with:
                                                                   value 5 * 10^15 wei
                                                                     gas gas_remaining wei
                                                                    args msg.sender
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                if uint32(currentRound - 1) < stor9.length:
                                                                    emit OnBuy(msg.sender, uint32(stor3.field_0), uint32(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0), call.data[4 len 160]);
                                                                    if uint32(currentRound - 1) < stor9.length:
                                                                        return stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0
                                        else:
                                            if uint32(currentRound - 1) < stor5.length:
                                                stor5[uint32(uint32(stor3.field_160) - 1) / 8] = uint32(stor('array', ('mask_shl', 29, 3, -3, ('add', -1, ('stor', 32, 160, ('name', 'stor3', 3)))), ('name', 'stor5', 5))[uint8(uint32(stor3.field_160) - 1)] + 1) * 256^(4 * currentRound - 1 % 8) or stor5[uint32(uint32(stor3.field_160) - 1) / 8] and !(test266151307() * 256^(4 * currentRound - 1 % 8))
                                                mem[ceil32(('cd', 164).length) + 288] = 96
                                                mem[ceil32(('cd', 164).length) + 320] = 0
                                                mem[ceil32(('cd', 164).length) + 352] = 0
                                                if uint32(currentRound - 1) < stor9.length:
                                                    stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0++
                                                    s = 0
                                                    idx = 96
                                                    while 256 > idx:
                                                        stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_0 = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_0
                                                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                                        idx = idx + 32
                                                        continue 
                                                    idx = 5
                                                    s = sha3(sha3(msg.sender, uint32(currentRound - 1) + sha3(9))) + (2 * stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0)
                                                    while idx:
                                                        stor[s] = !(255 * 256^idx) and stor[s]
                                                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                                        s = (idx + 1 / 32) + s
                                                        continue 
                                                    idx = (2 * stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0) - (3 * None + 3 / 32) + (None * None + 3 / 32)
                                                    while (2 * stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0) + 1 > idx:
                                                        uint8(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][idx].field_0) = 0
                                                        idx = idx + 1
                                                        continue 
                                                    uint8(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_256) = 0
                                                    Mask(248, 0, stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_264) = 0
                                                    Mask(240, 0, stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_272) = 0
                                                    mem[ceil32(('cd', 164).length) + 672 len 160] = code.data[20330 len 160]
                                                    mem[ceil32(('cd', 164).length) + 832 len 160] = code.data[20330 len 160]
                                                    mem[ceil32(('cd', 164).length) + 992 len 160] = code.data[20330 len 160]
                                                    idx = 0
                                                    while uint8(idx) < 5:
                                                        mem[(32 * uint8(idx)) + ceil32(('cd', 164).length) + 992] = mem[(32 * uint8(idx)) + 127 len 1]
                                                        idx = idx + 1
                                                        continue 
                                                    s = 0
                                                    t = 0
                                                    idx = 0
                                                    while uint8(idx) < 4:
                                                        t = s
                                                        u = 0
                                                        while uint8(u) < uint8(-idx + 4):
                                                            require uint8(u + 1) < 5
                                                            require uint8(u) < 5
                                                            if mem[(32 * uint8(u)) + ceil32(('cd', 164).length) + 1023 len 1] <= mem[(32 * uint8(u + 1)) + ceil32(('cd', 164).length) + 1023 len 1]:
                                                                t = t
                                                                u = u + 1
                                                                continue 
                                                            require uint8(u) < 5
                                                            _4390 = mem[(32 * uint8(u)) + ceil32(('cd', 164).length) + 992]
                                                            require uint8(u + 1) < 5
                                                            require uint8(u) < 5
                                                            mem[(32 * uint8(u)) + ceil32(('cd', 164).length) + 992] = mem[(32 * uint8(u + 1)) + ceil32(('cd', 164).length) + 1023 len 1]
                                                            require uint8(u + 1) < 5
                                                            mem[(32 * uint8(u + 1)) + ceil32(('cd', 164).length) + 992] = uint8(_4390)
                                                            t = _4390
                                                            u = u + 1
                                                            continue 
                                                        s = t
                                                        t = u
                                                        idx = idx + 1
                                                        continue 
                                                    if uint32(currentRound - 1) < stor10.length:
                                                        stor10[uint32(uint32(stor3.field_160) - 1)][uint8(mem[ceil32(('cd', 164).length) + 1088]) << 224 or uint8(mem[ceil32(('cd', 164).length) + 1120]) << 216 or uint8(mem[ceil32(('cd', 164).length) + 1056]) << 232 or uint8(mem[ceil32(('cd', 164).length) + 1024]) << 240 or mem[ceil32(('cd', 164).length) + 992] << 248] = uint32(stor10[uint32(uint32(stor3.field_160) - 1)][uint8(mem[ceil32(('cd', 164).length) + 1088]) << 224 or uint8(mem[ceil32(('cd', 164).length) + 1120]) << 216 or uint8(mem[ceil32(('cd', 164).length) + 1056]) << 232 or uint8(mem[ceil32(('cd', 164).length) + 1024]) << 240 or mem[ceil32(('cd', 164).length) + 992] << 248] + 1)
                                                        if uint32(uint32(currentRound - 1) / 7) < stor11.length:
                                                            stor11[uint32(uint32(uint32(stor3.field_160) - 1) / 7)][call.data[4] << 248 or uint8(call.data[36]) << 240 or uint8(call.data[68]) << 232 or uint8(call.data[132]) << 216 or uint8(call.data[100]) << 224] = uint32(stor11[uint32(uint32(uint32(stor3.field_160) - 1) / 7)][call.data[4] << 248 or uint8(call.data[36]) << 240 or uint8(call.data[68]) << 232 or uint8(call.data[132]) << 216 or uint8(call.data[100]) << 224] + 1)
                                                            if msg.value <= 5 * 10^16:
                                                                require ext_code.size(address(bookAddress))
                                                                call address(bookAddress).hasInviter(address arg1) with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                require ext_code.size(address(bookAddress))
                                                                if not ext_call.return_data[0]:
                                                                    call address(bookAddress).isRoot(address arg1) with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 32
                                                                    if not ext_call.return_data[0]:
                                                                        require ext_code.size(address(bookAddress))
                                                                        call address(bookAddress).setInviter(address arg1, string arg2) with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, Array(len=('cd', 164).length, data=call.data[cd[164] + 36 len ('cd', 164).length])
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                call address(bookAddress).pay(address arg1) with:
                                                                   value 5 * 10^15 wei
                                                                     gas gas_remaining wei
                                                                    args msg.sender
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                if uint32(currentRound - 1) < stor9.length:
                                                                    emit OnBuy(msg.sender, uint32(stor3.field_0), uint32(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0), call.data[4 len 160]);
                                                                    if uint32(currentRound - 1) < stor9.length:
                                                                        return stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0
                                                            else:
                                                                if 5 * 10^16 <= msg.value:
                                                                    call msg.sender with:
                                                                       value msg.value - 5 * 10^16 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require ext_code.size(address(bookAddress))
                                                                    call address(bookAddress).hasInviter(address arg1) with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 32
                                                                    require ext_code.size(address(bookAddress))
                                                                    if not ext_call.return_data[0]:
                                                                        call address(bookAddress).isRoot(address arg1) with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        if not ext_call.return_data[0]:
                                                                            require ext_code.size(address(bookAddress))
                                                                            call address(bookAddress).setInviter(address arg1, string arg2) with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, Array(len=('cd', 164).length, data=call.data[cd[164] + 36 len ('cd', 164).length])
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                    call address(bookAddress).pay(address arg1) with:
                                                                       value 5 * 10^15 wei
                                                                         gas gas_remaining wei
                                                                        args msg.sender
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    if uint32(currentRound - 1) < stor9.length:
                                                                        emit OnBuy(msg.sender, uint32(stor3.field_0), uint32(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0), call.data[4 len 160]);
                                                                        if uint32(currentRound - 1) < stor9.length:
                                                                            return stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0
                    else:
                        require ext_code.size(resolverAddress)
                        call resolverAddress.0xc57380a2 with:
                             gas gas_remaining wei
                        mem[ceil32(('cd', 164).length) + 672] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                        idx = 0
                        while idx < 5:
                            require mem[(32 * idx) + 127 len 1] >= 1
                            require idx < 5
                            require mem[(32 * idx) + 127 len 1] <= 16
                            idx = idx + 1
                            continue 
                        s = 0
                        idx = 0
                        while uint8(idx) < 4:
                            s = idx
                            while uint8(s) < 4:
                                require uint8(s + 1) < 5
                                require uint8(idx) < 5
                                require mem[(32 * uint8(idx)) + 127 len 1] != uint8(call.data[(32 * uint8(s + 1)) + 4])
                                s = s + 1
                                continue 
                            s = None
                            idx = idx + 1
                            continue 
                        require msg.value >= 5 * 10^16
                        if uint32(currentRound - 1) < stor9.length:
                            if stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0 + 1 >= stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0:
                                require stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0 + 1 <= 100
                                if uint32(currentRound - 1) < stor4.length:
                                    stor4[uint32(uint32(stor3.field_160) - 1) / 8] = 256^(4 * currentRound - 1 % 8) * uint32(stor('array', ('mask_shl', 29, 3, -3, ('add', -1, ('stor', 32, 160, ('name', 'stor3', 3)))), ('name', 'stor4', 4))[uint8(uint32(stor3.field_160) - 1)] + 1) or stor4[uint32(uint32(stor3.field_160) - 1) / 8] and !(test266151307() * 256^(4 * currentRound - 1 % 8))
                                    if uint32(currentRound - 1) < stor9.length:
                                        if stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0 > 0:
                                            mem[ceil32(('cd', 164).length) + 288] = 96
                                            mem[ceil32(('cd', 164).length) + 320] = 0
                                            mem[ceil32(('cd', 164).length) + 352] = 0
                                            if uint32(currentRound - 1) < stor9.length:
                                                stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0++
                                                s = 0
                                                idx = 96
                                                while 256 > idx:
                                                    stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_0 = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_0
                                                    s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                                    idx = idx + 32
                                                    continue 
                                                idx = 5
                                                s = sha3(sha3(msg.sender, uint32(currentRound - 1) + sha3(9))) + (2 * stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0)
                                                while idx:
                                                    stor[s] = !(255 * 256^idx) and stor[s]
                                                    idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                                    s = (idx + 1 / 32) + s
                                                    continue 
                                                idx = (2 * stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0) - (3 * None + 3 / 32) + (None * None + 3 / 32)
                                                while (2 * stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0) + 1 > idx:
                                                    uint8(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][idx].field_0) = 0
                                                    idx = idx + 1
                                                    continue 
                                                uint8(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_256) = 0
                                                Mask(248, 0, stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_264) = 0
                                                Mask(240, 0, stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_272) = 0
                                                mem[ceil32(('cd', 164).length) + 672 len 160] = code.data[20330 len 160]
                                                mem[ceil32(('cd', 164).length) + 832 len 160] = code.data[20330 len 160]
                                                mem[ceil32(('cd', 164).length) + 992 len 160] = code.data[20330 len 160]
                                                idx = 0
                                                while uint8(idx) < 5:
                                                    mem[(32 * uint8(idx)) + ceil32(('cd', 164).length) + 992] = mem[(32 * uint8(idx)) + 127 len 1]
                                                    idx = idx + 1
                                                    continue 
                                                s = 0
                                                t = 0
                                                idx = 0
                                                while uint8(idx) < 4:
                                                    t = s
                                                    u = 0
                                                    while uint8(u) < uint8(-idx + 4):
                                                        require uint8(u + 1) < 5
                                                        require uint8(u) < 5
                                                        if mem[(32 * uint8(u)) + ceil32(('cd', 164).length) + 1023 len 1] <= mem[(32 * uint8(u + 1)) + ceil32(('cd', 164).length) + 1023 len 1]:
                                                            t = t
                                                            u = u + 1
                                                            continue 
                                                        require uint8(u) < 5
                                                        _4391 = mem[(32 * uint8(u)) + ceil32(('cd', 164).length) + 992]
                                                        require uint8(u + 1) < 5
                                                        require uint8(u) < 5
                                                        mem[(32 * uint8(u)) + ceil32(('cd', 164).length) + 992] = mem[(32 * uint8(u + 1)) + ceil32(('cd', 164).length) + 1023 len 1]
                                                        require uint8(u + 1) < 5
                                                        mem[(32 * uint8(u + 1)) + ceil32(('cd', 164).length) + 992] = uint8(_4391)
                                                        t = _4391
                                                        u = u + 1
                                                        continue 
                                                    s = t
                                                    t = u
                                                    idx = idx + 1
                                                    continue 
                                                if uint32(currentRound - 1) < stor10.length:
                                                    stor10[uint32(uint32(stor3.field_160) - 1)][uint8(mem[ceil32(('cd', 164).length) + 1088]) << 224 or uint8(mem[ceil32(('cd', 164).length) + 1120]) << 216 or uint8(mem[ceil32(('cd', 164).length) + 1056]) << 232 or uint8(mem[ceil32(('cd', 164).length) + 1024]) << 240 or mem[ceil32(('cd', 164).length) + 992] << 248] = uint32(stor10[uint32(uint32(stor3.field_160) - 1)][uint8(mem[ceil32(('cd', 164).length) + 1088]) << 224 or uint8(mem[ceil32(('cd', 164).length) + 1120]) << 216 or uint8(mem[ceil32(('cd', 164).length) + 1056]) << 232 or uint8(mem[ceil32(('cd', 164).length) + 1024]) << 240 or mem[ceil32(('cd', 164).length) + 992] << 248] + 1)
                                                    if uint32(uint32(currentRound - 1) / 7) < stor11.length:
                                                        stor11[uint32(uint32(uint32(stor3.field_160) - 1) / 7)][call.data[4] << 248 or uint8(call.data[36]) << 240 or uint8(call.data[68]) << 232 or uint8(call.data[132]) << 216 or uint8(call.data[100]) << 224] = uint32(stor11[uint32(uint32(uint32(stor3.field_160) - 1) / 7)][call.data[4] << 248 or uint8(call.data[36]) << 240 or uint8(call.data[68]) << 232 or uint8(call.data[132]) << 216 or uint8(call.data[100]) << 224] + 1)
                                                        if msg.value <= 5 * 10^16:
                                                            require ext_code.size(address(bookAddress))
                                                            call address(bookAddress).hasInviter(address arg1) with:
                                                                 gas gas_remaining wei
                                                                args msg.sender
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_code.size(address(bookAddress))
                                                            if not ext_call.return_data[0]:
                                                                call address(bookAddress).isRoot(address arg1) with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if not ext_call.return_data[0]:
                                                                    require ext_code.size(address(bookAddress))
                                                                    call address(bookAddress).setInviter(address arg1, string arg2) with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, Array(len=('cd', 164).length, data=call.data[cd[164] + 36 len ('cd', 164).length])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                            call address(bookAddress).pay(address arg1) with:
                                                               value 5 * 10^15 wei
                                                                 gas gas_remaining wei
                                                                args msg.sender
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            if uint32(currentRound - 1) < stor9.length:
                                                                emit OnBuy(msg.sender, uint32(stor3.field_0), uint32(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0), call.data[4 len 160]);
                                                                if uint32(currentRound - 1) < stor9.length:
                                                                    return stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0
                                                        else:
                                                            if 5 * 10^16 <= msg.value:
                                                                call msg.sender with:
                                                                   value msg.value - 5 * 10^16 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require ext_code.size(address(bookAddress))
                                                                call address(bookAddress).hasInviter(address arg1) with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                require ext_code.size(address(bookAddress))
                                                                if not ext_call.return_data[0]:
                                                                    call address(bookAddress).isRoot(address arg1) with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 32
                                                                    if not ext_call.return_data[0]:
                                                                        require ext_code.size(address(bookAddress))
                                                                        call address(bookAddress).setInviter(address arg1, string arg2) with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, Array(len=('cd', 164).length, data=call.data[cd[164] + 36 len ('cd', 164).length])
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                call address(bookAddress).pay(address arg1) with:
                                                                   value 5 * 10^15 wei
                                                                     gas gas_remaining wei
                                                                    args msg.sender
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                if uint32(currentRound - 1) < stor9.length:
                                                                    emit OnBuy(msg.sender, uint32(stor3.field_0), uint32(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0), call.data[4 len 160]);
                                                                    if uint32(currentRound - 1) < stor9.length:
                                                                        return stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0
                                        else:
                                            if uint32(currentRound - 1) < stor5.length:
                                                stor5[uint32(uint32(stor3.field_160) - 1) / 8] = uint32(stor('array', ('mask_shl', 29, 3, -3, ('add', -1, ('stor', 32, 160, ('name', 'stor3', 3)))), ('name', 'stor5', 5))[uint8(uint32(stor3.field_160) - 1)] + 1) * 256^(4 * currentRound - 1 % 8) or stor5[uint32(uint32(stor3.field_160) - 1) / 8] and !(test266151307() * 256^(4 * currentRound - 1 % 8))
                                                mem[ceil32(('cd', 164).length) + 288] = 96
                                                mem[ceil32(('cd', 164).length) + 320] = 0
                                                mem[ceil32(('cd', 164).length) + 352] = 0
                                                if uint32(currentRound - 1) < stor9.length:
                                                    stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0++
                                                    s = 0
                                                    idx = 96
                                                    while 256 > idx:
                                                        stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_0 = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_0
                                                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                                        idx = idx + 32
                                                        continue 
                                                    idx = 5
                                                    s = sha3(sha3(msg.sender, uint32(currentRound - 1) + sha3(9))) + (2 * stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0)
                                                    while idx:
                                                        stor[s] = !(255 * 256^idx) and stor[s]
                                                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                                        s = (idx + 1 / 32) + s
                                                        continue 
                                                    idx = (2 * stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0) - (3 * None + 3 / 32) + (None * None + 3 / 32)
                                                    while (2 * stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0) + 1 > idx:
                                                        uint8(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][idx].field_0) = 0
                                                        idx = idx + 1
                                                        continue 
                                                    uint8(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_256) = 0
                                                    Mask(248, 0, stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_264) = 0
                                                    Mask(240, 0, stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_272) = 0
                                                    mem[ceil32(('cd', 164).length) + 672 len 160] = code.data[20330 len 160]
                                                    mem[ceil32(('cd', 164).length) + 832 len 160] = code.data[20330 len 160]
                                                    mem[ceil32(('cd', 164).length) + 992 len 160] = code.data[20330 len 160]
                                                    idx = 0
                                                    while uint8(idx) < 5:
                                                        mem[(32 * uint8(idx)) + ceil32(('cd', 164).length) + 992] = mem[(32 * uint8(idx)) + 127 len 1]
                                                        idx = idx + 1
                                                        continue 
                                                    s = 0
                                                    t = 0
                                                    idx = 0
                                                    while uint8(idx) < 4:
                                                        t = s
                                                        u = 0
                                                        while uint8(u) < uint8(-idx + 4):
                                                            require uint8(u + 1) < 5
                                                            require uint8(u) < 5
                                                            if mem[(32 * uint8(u)) + ceil32(('cd', 164).length) + 1023 len 1] <= mem[(32 * uint8(u + 1)) + ceil32(('cd', 164).length) + 1023 len 1]:
                                                                t = t
                                                                u = u + 1
                                                                continue 
                                                            require uint8(u) < 5
                                                            _4392 = mem[(32 * uint8(u)) + ceil32(('cd', 164).length) + 992]
                                                            require uint8(u + 1) < 5
                                                            require uint8(u) < 5
                                                            mem[(32 * uint8(u)) + ceil32(('cd', 164).length) + 992] = mem[(32 * uint8(u + 1)) + ceil32(('cd', 164).length) + 1023 len 1]
                                                            require uint8(u + 1) < 5
                                                            mem[(32 * uint8(u + 1)) + ceil32(('cd', 164).length) + 992] = uint8(_4392)
                                                            t = _4392
                                                            u = u + 1
                                                            continue 
                                                        s = t
                                                        t = u
                                                        idx = idx + 1
                                                        continue 
                                                    if uint32(currentRound - 1) < stor10.length:
                                                        stor10[uint32(uint32(stor3.field_160) - 1)][uint8(mem[ceil32(('cd', 164).length) + 1088]) << 224 or uint8(mem[ceil32(('cd', 164).length) + 1120]) << 216 or uint8(mem[ceil32(('cd', 164).length) + 1056]) << 232 or uint8(mem[ceil32(('cd', 164).length) + 1024]) << 240 or mem[ceil32(('cd', 164).length) + 992] << 248] = uint32(stor10[uint32(uint32(stor3.field_160) - 1)][uint8(mem[ceil32(('cd', 164).length) + 1088]) << 224 or uint8(mem[ceil32(('cd', 164).length) + 1120]) << 216 or uint8(mem[ceil32(('cd', 164).length) + 1056]) << 232 or uint8(mem[ceil32(('cd', 164).length) + 1024]) << 240 or mem[ceil32(('cd', 164).length) + 992] << 248] + 1)
                                                        if uint32(uint32(currentRound - 1) / 7) < stor11.length:
                                                            stor11[uint32(uint32(uint32(stor3.field_160) - 1) / 7)][call.data[4] << 248 or uint8(call.data[36]) << 240 or uint8(call.data[68]) << 232 or uint8(call.data[132]) << 216 or uint8(call.data[100]) << 224] = uint32(stor11[uint32(uint32(uint32(stor3.field_160) - 1) / 7)][call.data[4] << 248 or uint8(call.data[36]) << 240 or uint8(call.data[68]) << 232 or uint8(call.data[132]) << 216 or uint8(call.data[100]) << 224] + 1)
                                                            if msg.value <= 5 * 10^16:
                                                                require ext_code.size(address(bookAddress))
                                                                call address(bookAddress).hasInviter(address arg1) with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                require ext_code.size(address(bookAddress))
                                                                if not ext_call.return_data[0]:
                                                                    call address(bookAddress).isRoot(address arg1) with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 32
                                                                    if not ext_call.return_data[0]:
                                                                        require ext_code.size(address(bookAddress))
                                                                        call address(bookAddress).setInviter(address arg1, string arg2) with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, Array(len=('cd', 164).length, data=call.data[cd[164] + 36 len ('cd', 164).length])
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                call address(bookAddress).pay(address arg1) with:
                                                                   value 5 * 10^15 wei
                                                                     gas gas_remaining wei
                                                                    args msg.sender
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                if uint32(currentRound - 1) < stor9.length:
                                                                    emit OnBuy(msg.sender, uint32(stor3.field_0), uint32(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0), call.data[4 len 160]);
                                                                    if uint32(currentRound - 1) < stor9.length:
                                                                        return stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0
                                                            else:
                                                                if 5 * 10^16 <= msg.value:
                                                                    call msg.sender with:
                                                                       value msg.value - 5 * 10^16 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require ext_code.size(address(bookAddress))
                                                                    call address(bookAddress).hasInviter(address arg1) with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 32
                                                                    require ext_code.size(address(bookAddress))
                                                                    if not ext_call.return_data[0]:
                                                                        call address(bookAddress).isRoot(address arg1) with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        if not ext_call.return_data[0]:
                                                                            require ext_code.size(address(bookAddress))
                                                                            call address(bookAddress).setInviter(address arg1, string arg2) with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, Array(len=('cd', 164).length, data=call.data[cd[164] + 36 len ('cd', 164).length])
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                    call address(bookAddress).pay(address arg1) with:
                                                                       value 5 * 10^15 wei
                                                                         gas gas_remaining wei
                                                                        args msg.sender
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    if uint32(currentRound - 1) < stor9.length:
                                                                        emit OnBuy(msg.sender, uint32(stor3.field_0), uint32(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0), call.data[4 len 160]);
                                                                        if uint32(currentRound - 1) < stor9.length:
                                                                            return stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0
            else:
                call resolverAddress.getWalletAddress() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor3.field_0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor3.field_0))
                require ext_code.size(resolverAddress)
                call resolverAddress.0x23226654 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(resolverAddress)
                if ext_call.return_data[12 len 20] == address(bookAddress):
                    call resolverAddress.0xc57380a2 with:
                         gas gas_remaining wei
                    mem[ceil32(('cd', 164).length) + 672] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[12 len 20] == address(controllerAddress):
                        idx = 0
                        while idx < 5:
                            require mem[(32 * idx) + 127 len 1] >= 1
                            require idx < 5
                            require mem[(32 * idx) + 127 len 1] <= 16
                            idx = idx + 1
                            continue 
                        s = 0
                        idx = 0
                        while uint8(idx) < 4:
                            s = idx
                            while uint8(s) < 4:
                                require uint8(s + 1) < 5
                                require uint8(idx) < 5
                                require mem[(32 * uint8(idx)) + 127 len 1] != uint8(call.data[(32 * uint8(s + 1)) + 4])
                                s = s + 1
                                continue 
                            s = None
                            idx = idx + 1
                            continue 
                        require msg.value >= 5 * 10^16
                        if uint32(currentRound - 1) < stor9.length:
                            if stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0 + 1 >= stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0:
                                require stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0 + 1 <= 100
                                if uint32(currentRound - 1) < stor4.length:
                                    stor4[uint32(uint32(stor3.field_160) - 1) / 8] = 256^(4 * currentRound - 1 % 8) * uint32(stor('array', ('mask_shl', 29, 3, -3, ('add', -1, ('stor', 32, 160, ('name', 'stor3', 3)))), ('name', 'stor4', 4))[uint8(uint32(stor3.field_160) - 1)] + 1) or stor4[uint32(uint32(stor3.field_160) - 1) / 8] and !(test266151307() * 256^(4 * currentRound - 1 % 8))
                                    if uint32(currentRound - 1) < stor9.length:
                                        if stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0 > 0:
                                            mem[ceil32(('cd', 164).length) + 288] = 96
                                            mem[ceil32(('cd', 164).length) + 320] = 0
                                            mem[ceil32(('cd', 164).length) + 352] = 0
                                            if uint32(currentRound - 1) < stor9.length:
                                                stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0++
                                                s = 0
                                                idx = 96
                                                while 256 > idx:
                                                    stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_0 = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_0
                                                    s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                                    idx = idx + 32
                                                    continue 
                                                idx = 5
                                                s = sha3(sha3(msg.sender, uint32(currentRound - 1) + sha3(9))) + (2 * stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0)
                                                while idx:
                                                    stor[s] = !(255 * 256^idx) and stor[s]
                                                    idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                                    s = (idx + 1 / 32) + s
                                                    continue 
                                                idx = (2 * stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0) - (3 * None + 3 / 32) + (None * None + 3 / 32)
                                                while (2 * stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0) + 1 > idx:
                                                    uint8(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][idx].field_0) = 0
                                                    idx = idx + 1
                                                    continue 
                                                uint8(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_256) = 0
                                                Mask(248, 0, stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_264) = 0
                                                Mask(240, 0, stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_272) = 0
                                                mem[ceil32(('cd', 164).length) + 672 len 160] = code.data[20330 len 160]
                                                mem[ceil32(('cd', 164).length) + 832 len 160] = code.data[20330 len 160]
                                                mem[ceil32(('cd', 164).length) + 992 len 160] = code.data[20330 len 160]
                                                idx = 0
                                                while uint8(idx) < 5:
                                                    mem[(32 * uint8(idx)) + ceil32(('cd', 164).length) + 992] = mem[(32 * uint8(idx)) + 127 len 1]
                                                    idx = idx + 1
                                                    continue 
                                                s = 0
                                                t = 0
                                                idx = 0
                                                while uint8(idx) < 4:
                                                    t = s
                                                    u = 0
                                                    while uint8(u) < uint8(-idx + 4):
                                                        require uint8(u + 1) < 5
                                                        require uint8(u) < 5
                                                        if mem[(32 * uint8(u)) + ceil32(('cd', 164).length) + 1023 len 1] <= mem[(32 * uint8(u + 1)) + ceil32(('cd', 164).length) + 1023 len 1]:
                                                            t = t
                                                            u = u + 1
                                                            continue 
                                                        require uint8(u) < 5
                                                        _4393 = mem[(32 * uint8(u)) + ceil32(('cd', 164).length) + 992]
                                                        require uint8(u + 1) < 5
                                                        require uint8(u) < 5
                                                        mem[(32 * uint8(u)) + ceil32(('cd', 164).length) + 992] = mem[(32 * uint8(u + 1)) + ceil32(('cd', 164).length) + 1023 len 1]
                                                        require uint8(u + 1) < 5
                                                        mem[(32 * uint8(u + 1)) + ceil32(('cd', 164).length) + 992] = uint8(_4393)
                                                        t = _4393
                                                        u = u + 1
                                                        continue 
                                                    s = t
                                                    t = u
                                                    idx = idx + 1
                                                    continue 
                                                if uint32(currentRound - 1) < stor10.length:
                                                    stor10[uint32(uint32(stor3.field_160) - 1)][uint8(mem[ceil32(('cd', 164).length) + 1088]) << 224 or uint8(mem[ceil32(('cd', 164).length) + 1120]) << 216 or uint8(mem[ceil32(('cd', 164).length) + 1056]) << 232 or uint8(mem[ceil32(('cd', 164).length) + 1024]) << 240 or mem[ceil32(('cd', 164).length) + 992] << 248] = uint32(stor10[uint32(uint32(stor3.field_160) - 1)][uint8(mem[ceil32(('cd', 164).length) + 1088]) << 224 or uint8(mem[ceil32(('cd', 164).length) + 1120]) << 216 or uint8(mem[ceil32(('cd', 164).length) + 1056]) << 232 or uint8(mem[ceil32(('cd', 164).length) + 1024]) << 240 or mem[ceil32(('cd', 164).length) + 992] << 248] + 1)
                                                    if uint32(uint32(currentRound - 1) / 7) < stor11.length:
                                                        stor11[uint32(uint32(uint32(stor3.field_160) - 1) / 7)][call.data[4] << 248 or uint8(call.data[36]) << 240 or uint8(call.data[68]) << 232 or uint8(call.data[132]) << 216 or uint8(call.data[100]) << 224] = uint32(stor11[uint32(uint32(uint32(stor3.field_160) - 1) / 7)][call.data[4] << 248 or uint8(call.data[36]) << 240 or uint8(call.data[68]) << 232 or uint8(call.data[132]) << 216 or uint8(call.data[100]) << 224] + 1)
                                                        if msg.value <= 5 * 10^16:
                                                            require ext_code.size(address(bookAddress))
                                                            call address(bookAddress).hasInviter(address arg1) with:
                                                                 gas gas_remaining wei
                                                                args msg.sender
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_code.size(address(bookAddress))
                                                            if not ext_call.return_data[0]:
                                                                call address(bookAddress).isRoot(address arg1) with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if not ext_call.return_data[0]:
                                                                    require ext_code.size(address(bookAddress))
                                                                    call address(bookAddress).setInviter(address arg1, string arg2) with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, Array(len=('cd', 164).length, data=call.data[cd[164] + 36 len ('cd', 164).length])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                            call address(bookAddress).pay(address arg1) with:
                                                               value 5 * 10^15 wei
                                                                 gas gas_remaining wei
                                                                args msg.sender
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            if uint32(currentRound - 1) < stor9.length:
                                                                emit OnBuy(msg.sender, uint32(stor3.field_0), uint32(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0), call.data[4 len 160]);
                                                                if uint32(currentRound - 1) < stor9.length:
                                                                    return stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0
                                                        else:
                                                            if 5 * 10^16 <= msg.value:
                                                                call msg.sender with:
                                                                   value msg.value - 5 * 10^16 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require ext_code.size(address(bookAddress))
                                                                call address(bookAddress).hasInviter(address arg1) with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                require ext_code.size(address(bookAddress))
                                                                if not ext_call.return_data[0]:
                                                                    call address(bookAddress).isRoot(address arg1) with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 32
                                                                    if not ext_call.return_data[0]:
                                                                        require ext_code.size(address(bookAddress))
                                                                        call address(bookAddress).setInviter(address arg1, string arg2) with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, Array(len=('cd', 164).length, data=call.data[cd[164] + 36 len ('cd', 164).length])
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                call address(bookAddress).pay(address arg1) with:
                                                                   value 5 * 10^15 wei
                                                                     gas gas_remaining wei
                                                                    args msg.sender
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                if uint32(currentRound - 1) < stor9.length:
                                                                    emit OnBuy(msg.sender, uint32(stor3.field_0), uint32(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0), call.data[4 len 160]);
                                                                    if uint32(currentRound - 1) < stor9.length:
                                                                        return stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0
                                        else:
                                            if uint32(currentRound - 1) < stor5.length:
                                                stor5[uint32(uint32(stor3.field_160) - 1) / 8] = uint32(stor('array', ('mask_shl', 29, 3, -3, ('add', -1, ('stor', 32, 160, ('name', 'stor3', 3)))), ('name', 'stor5', 5))[uint8(uint32(stor3.field_160) - 1)] + 1) * 256^(4 * currentRound - 1 % 8) or stor5[uint32(uint32(stor3.field_160) - 1) / 8] and !(test266151307() * 256^(4 * currentRound - 1 % 8))
                                                mem[ceil32(('cd', 164).length) + 288] = 96
                                                mem[ceil32(('cd', 164).length) + 320] = 0
                                                mem[ceil32(('cd', 164).length) + 352] = 0
                                                if uint32(currentRound - 1) < stor9.length:
                                                    stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0++
                                                    s = 0
                                                    idx = 96
                                                    while 256 > idx:
                                                        stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_0 = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_0
                                                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                                        idx = idx + 32
                                                        continue 
                                                    idx = 5
                                                    s = sha3(sha3(msg.sender, uint32(currentRound - 1) + sha3(9))) + (2 * stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0)
                                                    while idx:
                                                        stor[s] = !(255 * 256^idx) and stor[s]
                                                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                                        s = (idx + 1 / 32) + s
                                                        continue 
                                                    idx = (2 * stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0) - (3 * None + 3 / 32) + (None * None + 3 / 32)
                                                    while (2 * stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0) + 1 > idx:
                                                        uint8(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][idx].field_0) = 0
                                                        idx = idx + 1
                                                        continue 
                                                    uint8(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_256) = 0
                                                    Mask(248, 0, stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_264) = 0
                                                    Mask(240, 0, stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_272) = 0
                                                    mem[ceil32(('cd', 164).length) + 672 len 160] = code.data[20330 len 160]
                                                    mem[ceil32(('cd', 164).length) + 832 len 160] = code.data[20330 len 160]
                                                    mem[ceil32(('cd', 164).length) + 992 len 160] = code.data[20330 len 160]
                                                    idx = 0
                                                    while uint8(idx) < 5:
                                                        mem[(32 * uint8(idx)) + ceil32(('cd', 164).length) + 992] = mem[(32 * uint8(idx)) + 127 len 1]
                                                        idx = idx + 1
                                                        continue 
                                                    s = 0
                                                    t = 0
                                                    idx = 0
                                                    while uint8(idx) < 4:
                                                        t = s
                                                        u = 0
                                                        while uint8(u) < uint8(-idx + 4):
                                                            require uint8(u + 1) < 5
                                                            require uint8(u) < 5
                                                            if mem[(32 * uint8(u)) + ceil32(('cd', 164).length) + 1023 len 1] <= mem[(32 * uint8(u + 1)) + ceil32(('cd', 164).length) + 1023 len 1]:
                                                                t = t
                                                                u = u + 1
                                                                continue 
                                                            require uint8(u) < 5
                                                            _4394 = mem[(32 * uint8(u)) + ceil32(('cd', 164).length) + 992]
                                                            require uint8(u + 1) < 5
                                                            require uint8(u) < 5
                                                            mem[(32 * uint8(u)) + ceil32(('cd', 164).length) + 992] = mem[(32 * uint8(u + 1)) + ceil32(('cd', 164).length) + 1023 len 1]
                                                            require uint8(u + 1) < 5
                                                            mem[(32 * uint8(u + 1)) + ceil32(('cd', 164).length) + 992] = uint8(_4394)
                                                            t = _4394
                                                            u = u + 1
                                                            continue 
                                                        s = t
                                                        t = u
                                                        idx = idx + 1
                                                        continue 
                                                    if uint32(currentRound - 1) < stor10.length:
                                                        stor10[uint32(uint32(stor3.field_160) - 1)][uint8(mem[ceil32(('cd', 164).length) + 1088]) << 224 or uint8(mem[ceil32(('cd', 164).length) + 1120]) << 216 or uint8(mem[ceil32(('cd', 164).length) + 1056]) << 232 or uint8(mem[ceil32(('cd', 164).length) + 1024]) << 240 or mem[ceil32(('cd', 164).length) + 992] << 248] = uint32(stor10[uint32(uint32(stor3.field_160) - 1)][uint8(mem[ceil32(('cd', 164).length) + 1088]) << 224 or uint8(mem[ceil32(('cd', 164).length) + 1120]) << 216 or uint8(mem[ceil32(('cd', 164).length) + 1056]) << 232 or uint8(mem[ceil32(('cd', 164).length) + 1024]) << 240 or mem[ceil32(('cd', 164).length) + 992] << 248] + 1)
                                                        if uint32(uint32(currentRound - 1) / 7) < stor11.length:
                                                            stor11[uint32(uint32(uint32(stor3.field_160) - 1) / 7)][call.data[4] << 248 or uint8(call.data[36]) << 240 or uint8(call.data[68]) << 232 or uint8(call.data[132]) << 216 or uint8(call.data[100]) << 224] = uint32(stor11[uint32(uint32(uint32(stor3.field_160) - 1) / 7)][call.data[4] << 248 or uint8(call.data[36]) << 240 or uint8(call.data[68]) << 232 or uint8(call.data[132]) << 216 or uint8(call.data[100]) << 224] + 1)
                                                            if msg.value <= 5 * 10^16:
                                                                require ext_code.size(address(bookAddress))
                                                                call address(bookAddress).hasInviter(address arg1) with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                require ext_code.size(address(bookAddress))
                                                                if not ext_call.return_data[0]:
                                                                    call address(bookAddress).isRoot(address arg1) with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 32
                                                                    if not ext_call.return_data[0]:
                                                                        require ext_code.size(address(bookAddress))
                                                                        call address(bookAddress).setInviter(address arg1, string arg2) with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, Array(len=('cd', 164).length, data=call.data[cd[164] + 36 len ('cd', 164).length])
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                call address(bookAddress).pay(address arg1) with:
                                                                   value 5 * 10^15 wei
                                                                     gas gas_remaining wei
                                                                    args msg.sender
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                if uint32(currentRound - 1) < stor9.length:
                                                                    emit OnBuy(msg.sender, uint32(stor3.field_0), uint32(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0), call.data[4 len 160]);
                                                                    if uint32(currentRound - 1) < stor9.length:
                                                                        return stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0
                                                            else:
                                                                if 5 * 10^16 <= msg.value:
                                                                    call msg.sender with:
                                                                       value msg.value - 5 * 10^16 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require ext_code.size(address(bookAddress))
                                                                    call address(bookAddress).hasInviter(address arg1) with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 32
                                                                    require ext_code.size(address(bookAddress))
                                                                    if not ext_call.return_data[0]:
                                                                        call address(bookAddress).isRoot(address arg1) with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        if not ext_call.return_data[0]:
                                                                            require ext_code.size(address(bookAddress))
                                                                            call address(bookAddress).setInviter(address arg1, string arg2) with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, Array(len=('cd', 164).length, data=call.data[cd[164] + 36 len ('cd', 164).length])
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                    call address(bookAddress).pay(address arg1) with:
                                                                       value 5 * 10^15 wei
                                                                         gas gas_remaining wei
                                                                        args msg.sender
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    if uint32(currentRound - 1) < stor9.length:
                                                                        emit OnBuy(msg.sender, uint32(stor3.field_0), uint32(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0), call.data[4 len 160]);
                                                                        if uint32(currentRound - 1) < stor9.length:
                                                                            return stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0
                    else:
                        require ext_code.size(resolverAddress)
                        call resolverAddress.0xc57380a2 with:
                             gas gas_remaining wei
                        mem[ceil32(('cd', 164).length) + 672] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                        idx = 0
                        while idx < 5:
                            require mem[(32 * idx) + 127 len 1] >= 1
                            require idx < 5
                            require mem[(32 * idx) + 127 len 1] <= 16
                            idx = idx + 1
                            continue 
                        s = 0
                        idx = 0
                        while uint8(idx) < 4:
                            s = idx
                            while uint8(s) < 4:
                                require uint8(s + 1) < 5
                                require uint8(idx) < 5
                                require mem[(32 * uint8(idx)) + 127 len 1] != uint8(call.data[(32 * uint8(s + 1)) + 4])
                                s = s + 1
                                continue 
                            s = None
                            idx = idx + 1
                            continue 
                        require msg.value >= 5 * 10^16
                        if uint32(currentRound - 1) < stor9.length:
                            if stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0 + 1 >= stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0:
                                require stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0 + 1 <= 100
                                if uint32(currentRound - 1) < stor4.length:
                                    stor4[uint32(uint32(stor3.field_160) - 1) / 8] = 256^(4 * currentRound - 1 % 8) * uint32(stor('array', ('mask_shl', 29, 3, -3, ('add', -1, ('stor', 32, 160, ('name', 'stor3', 3)))), ('name', 'stor4', 4))[uint8(uint32(stor3.field_160) - 1)] + 1) or stor4[uint32(uint32(stor3.field_160) - 1) / 8] and !(test266151307() * 256^(4 * currentRound - 1 % 8))
                                    if uint32(currentRound - 1) < stor9.length:
                                        if stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0 > 0:
                                            mem[ceil32(('cd', 164).length) + 288] = 96
                                            mem[ceil32(('cd', 164).length) + 320] = 0
                                            mem[ceil32(('cd', 164).length) + 352] = 0
                                            if uint32(currentRound - 1) < stor9.length:
                                                stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0++
                                                s = 0
                                                idx = 96
                                                while 256 > idx:
                                                    stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_0 = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_0
                                                    s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                                    idx = idx + 32
                                                    continue 
                                                idx = 5
                                                s = sha3(sha3(msg.sender, uint32(currentRound - 1) + sha3(9))) + (2 * stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0)
                                                while idx:
                                                    stor[s] = !(255 * 256^idx) and stor[s]
                                                    idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                                    s = (idx + 1 / 32) + s
                                                    continue 
                                                idx = (2 * stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0) - (3 * None + 3 / 32) + (None * None + 3 / 32)
                                                while (2 * stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0) + 1 > idx:
                                                    uint8(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][idx].field_0) = 0
                                                    idx = idx + 1
                                                    continue 
                                                uint8(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_256) = 0
                                                Mask(248, 0, stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_264) = 0
                                                Mask(240, 0, stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_272) = 0
                                                mem[ceil32(('cd', 164).length) + 672 len 160] = code.data[20330 len 160]
                                                mem[ceil32(('cd', 164).length) + 832 len 160] = code.data[20330 len 160]
                                                mem[ceil32(('cd', 164).length) + 992 len 160] = code.data[20330 len 160]
                                                idx = 0
                                                while uint8(idx) < 5:
                                                    mem[(32 * uint8(idx)) + ceil32(('cd', 164).length) + 992] = mem[(32 * uint8(idx)) + 127 len 1]
                                                    idx = idx + 1
                                                    continue 
                                                s = 0
                                                t = 0
                                                idx = 0
                                                while uint8(idx) < 4:
                                                    t = s
                                                    u = 0
                                                    while uint8(u) < uint8(-idx + 4):
                                                        require uint8(u + 1) < 5
                                                        require uint8(u) < 5
                                                        if mem[(32 * uint8(u)) + ceil32(('cd', 164).length) + 1023 len 1] <= mem[(32 * uint8(u + 1)) + ceil32(('cd', 164).length) + 1023 len 1]:
                                                            t = t
                                                            u = u + 1
                                                            continue 
                                                        require uint8(u) < 5
                                                        _4395 = mem[(32 * uint8(u)) + ceil32(('cd', 164).length) + 992]
                                                        require uint8(u + 1) < 5
                                                        require uint8(u) < 5
                                                        mem[(32 * uint8(u)) + ceil32(('cd', 164).length) + 992] = mem[(32 * uint8(u + 1)) + ceil32(('cd', 164).length) + 1023 len 1]
                                                        require uint8(u + 1) < 5
                                                        mem[(32 * uint8(u + 1)) + ceil32(('cd', 164).length) + 992] = uint8(_4395)
                                                        t = _4395
                                                        u = u + 1
                                                        continue 
                                                    s = t
                                                    t = u
                                                    idx = idx + 1
                                                    continue 
                                                if uint32(currentRound - 1) < stor10.length:
                                                    stor10[uint32(uint32(stor3.field_160) - 1)][uint8(mem[ceil32(('cd', 164).length) + 1088]) << 224 or uint8(mem[ceil32(('cd', 164).length) + 1120]) << 216 or uint8(mem[ceil32(('cd', 164).length) + 1056]) << 232 or uint8(mem[ceil32(('cd', 164).length) + 1024]) << 240 or mem[ceil32(('cd', 164).length) + 992] << 248] = uint32(stor10[uint32(uint32(stor3.field_160) - 1)][uint8(mem[ceil32(('cd', 164).length) + 1088]) << 224 or uint8(mem[ceil32(('cd', 164).length) + 1120]) << 216 or uint8(mem[ceil32(('cd', 164).length) + 1056]) << 232 or uint8(mem[ceil32(('cd', 164).length) + 1024]) << 240 or mem[ceil32(('cd', 164).length) + 992] << 248] + 1)
                                                    if uint32(uint32(currentRound - 1) / 7) < stor11.length:
                                                        stor11[uint32(uint32(uint32(stor3.field_160) - 1) / 7)][call.data[4] << 248 or uint8(call.data[36]) << 240 or uint8(call.data[68]) << 232 or uint8(call.data[132]) << 216 or uint8(call.data[100]) << 224] = uint32(stor11[uint32(uint32(uint32(stor3.field_160) - 1) / 7)][call.data[4] << 248 or uint8(call.data[36]) << 240 or uint8(call.data[68]) << 232 or uint8(call.data[132]) << 216 or uint8(call.data[100]) << 224] + 1)
                                                        if msg.value <= 5 * 10^16:
                                                            require ext_code.size(address(bookAddress))
                                                            call address(bookAddress).hasInviter(address arg1) with:
                                                                 gas gas_remaining wei
                                                                args msg.sender
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_code.size(address(bookAddress))
                                                            if not ext_call.return_data[0]:
                                                                call address(bookAddress).isRoot(address arg1) with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if not ext_call.return_data[0]:
                                                                    require ext_code.size(address(bookAddress))
                                                                    call address(bookAddress).setInviter(address arg1, string arg2) with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, Array(len=('cd', 164).length, data=call.data[cd[164] + 36 len ('cd', 164).length])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                            call address(bookAddress).pay(address arg1) with:
                                                               value 5 * 10^15 wei
                                                                 gas gas_remaining wei
                                                                args msg.sender
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            if uint32(currentRound - 1) < stor9.length:
                                                                emit OnBuy(msg.sender, uint32(stor3.field_0), uint32(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0), call.data[4 len 160]);
                                                                if uint32(currentRound - 1) < stor9.length:
                                                                    return stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0
                                                        else:
                                                            if 5 * 10^16 <= msg.value:
                                                                call msg.sender with:
                                                                   value msg.value - 5 * 10^16 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require ext_code.size(address(bookAddress))
                                                                call address(bookAddress).hasInviter(address arg1) with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                require ext_code.size(address(bookAddress))
                                                                if not ext_call.return_data[0]:
                                                                    call address(bookAddress).isRoot(address arg1) with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 32
                                                                    if not ext_call.return_data[0]:
                                                                        require ext_code.size(address(bookAddress))
                                                                        call address(bookAddress).setInviter(address arg1, string arg2) with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, Array(len=('cd', 164).length, data=call.data[cd[164] + 36 len ('cd', 164).length])
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                call address(bookAddress).pay(address arg1) with:
                                                                   value 5 * 10^15 wei
                                                                     gas gas_remaining wei
                                                                    args msg.sender
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                if uint32(currentRound - 1) < stor9.length:
                                                                    emit OnBuy(msg.sender, uint32(stor3.field_0), uint32(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0), call.data[4 len 160]);
                                                                    if uint32(currentRound - 1) < stor9.length:
                                                                        return stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0
                                        else:
                                            if uint32(currentRound - 1) < stor5.length:
                                                stor5[uint32(uint32(stor3.field_160) - 1) / 8] = uint32(stor('array', ('mask_shl', 29, 3, -3, ('add', -1, ('stor', 32, 160, ('name', 'stor3', 3)))), ('name', 'stor5', 5))[uint8(uint32(stor3.field_160) - 1)] + 1) * 256^(4 * currentRound - 1 % 8) or stor5[uint32(uint32(stor3.field_160) - 1) / 8] and !(test266151307() * 256^(4 * currentRound - 1 % 8))
                                                mem[ceil32(('cd', 164).length) + 288] = 96
                                                mem[ceil32(('cd', 164).length) + 320] = 0
                                                mem[ceil32(('cd', 164).length) + 352] = 0
                                                if uint32(currentRound - 1) < stor9.length:
                                                    stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0++
                                                    s = 0
                                                    idx = 96
                                                    while 256 > idx:
                                                        stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_0 = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_0
                                                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                                        idx = idx + 32
                                                        continue 
                                                    idx = 5
                                                    s = sha3(sha3(msg.sender, uint32(currentRound - 1) + sha3(9))) + (2 * stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0)
                                                    while idx:
                                                        stor[s] = !(255 * 256^idx) and stor[s]
                                                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                                        s = (idx + 1 / 32) + s
                                                        continue 
                                                    idx = (2 * stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0) - (3 * None + 3 / 32) + (None * None + 3 / 32)
                                                    while (2 * stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0) + 1 > idx:
                                                        uint8(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][idx].field_0) = 0
                                                        idx = idx + 1
                                                        continue 
                                                    uint8(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_256) = 0
                                                    Mask(248, 0, stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_264) = 0
                                                    Mask(240, 0, stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_272) = 0
                                                    mem[ceil32(('cd', 164).length) + 672 len 160] = code.data[20330 len 160]
                                                    mem[ceil32(('cd', 164).length) + 832 len 160] = code.data[20330 len 160]
                                                    mem[ceil32(('cd', 164).length) + 992 len 160] = code.data[20330 len 160]
                                                    idx = 0
                                                    while uint8(idx) < 5:
                                                        mem[(32 * uint8(idx)) + ceil32(('cd', 164).length) + 992] = mem[(32 * uint8(idx)) + 127 len 1]
                                                        idx = idx + 1
                                                        continue 
                                                    s = 0
                                                    t = 0
                                                    idx = 0
                                                    while uint8(idx) < 4:
                                                        t = s
                                                        u = 0
                                                        while uint8(u) < uint8(-idx + 4):
                                                            require uint8(u + 1) < 5
                                                            require uint8(u) < 5
                                                            if mem[(32 * uint8(u)) + ceil32(('cd', 164).length) + 1023 len 1] <= mem[(32 * uint8(u + 1)) + ceil32(('cd', 164).length) + 1023 len 1]:
                                                                t = t
                                                                u = u + 1
                                                                continue 
                                                            require uint8(u) < 5
                                                            _4396 = mem[(32 * uint8(u)) + ceil32(('cd', 164).length) + 992]
                                                            require uint8(u + 1) < 5
                                                            require uint8(u) < 5
                                                            mem[(32 * uint8(u)) + ceil32(('cd', 164).length) + 992] = mem[(32 * uint8(u + 1)) + ceil32(('cd', 164).length) + 1023 len 1]
                                                            require uint8(u + 1) < 5
                                                            mem[(32 * uint8(u + 1)) + ceil32(('cd', 164).length) + 992] = uint8(_4396)
                                                            t = _4396
                                                            u = u + 1
                                                            continue 
                                                        s = t
                                                        t = u
                                                        idx = idx + 1
                                                        continue 
                                                    if uint32(currentRound - 1) < stor10.length:
                                                        stor10[uint32(uint32(stor3.field_160) - 1)][uint8(mem[ceil32(('cd', 164).length) + 1088]) << 224 or uint8(mem[ceil32(('cd', 164).length) + 1120]) << 216 or uint8(mem[ceil32(('cd', 164).length) + 1056]) << 232 or uint8(mem[ceil32(('cd', 164).length) + 1024]) << 240 or mem[ceil32(('cd', 164).length) + 992] << 248] = uint32(stor10[uint32(uint32(stor3.field_160) - 1)][uint8(mem[ceil32(('cd', 164).length) + 1088]) << 224 or uint8(mem[ceil32(('cd', 164).length) + 1120]) << 216 or uint8(mem[ceil32(('cd', 164).length) + 1056]) << 232 or uint8(mem[ceil32(('cd', 164).length) + 1024]) << 240 or mem[ceil32(('cd', 164).length) + 992] << 248] + 1)
                                                        if uint32(uint32(currentRound - 1) / 7) < stor11.length:
                                                            stor11[uint32(uint32(uint32(stor3.field_160) - 1) / 7)][call.data[4] << 248 or uint8(call.data[36]) << 240 or uint8(call.data[68]) << 232 or uint8(call.data[132]) << 216 or uint8(call.data[100]) << 224] = uint32(stor11[uint32(uint32(uint32(stor3.field_160) - 1) / 7)][call.data[4] << 248 or uint8(call.data[36]) << 240 or uint8(call.data[68]) << 232 or uint8(call.data[132]) << 216 or uint8(call.data[100]) << 224] + 1)
                                                            if msg.value <= 5 * 10^16:
                                                                require ext_code.size(address(bookAddress))
                                                                call address(bookAddress).hasInviter(address arg1) with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                require ext_code.size(address(bookAddress))
                                                                if not ext_call.return_data[0]:
                                                                    call address(bookAddress).isRoot(address arg1) with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 32
                                                                    if not ext_call.return_data[0]:
                                                                        require ext_code.size(address(bookAddress))
                                                                        call address(bookAddress).setInviter(address arg1, string arg2) with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, Array(len=('cd', 164).length, data=call.data[cd[164] + 36 len ('cd', 164).length])
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                call address(bookAddress).pay(address arg1) with:
                                                                   value 5 * 10^15 wei
                                                                     gas gas_remaining wei
                                                                    args msg.sender
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                if uint32(currentRound - 1) < stor9.length:
                                                                    emit OnBuy(msg.sender, uint32(stor3.field_0), uint32(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0), call.data[4 len 160]);
                                                                    if uint32(currentRound - 1) < stor9.length:
                                                                        return stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0
                                                            else:
                                                                if 5 * 10^16 <= msg.value:
                                                                    call msg.sender with:
                                                                       value msg.value - 5 * 10^16 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require ext_code.size(address(bookAddress))
                                                                    call address(bookAddress).hasInviter(address arg1) with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 32
                                                                    require ext_code.size(address(bookAddress))
                                                                    if not ext_call.return_data[0]:
                                                                        call address(bookAddress).isRoot(address arg1) with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        if not ext_call.return_data[0]:
                                                                            require ext_code.size(address(bookAddress))
                                                                            call address(bookAddress).setInviter(address arg1, string arg2) with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, Array(len=('cd', 164).length, data=call.data[cd[164] + 36 len ('cd', 164).length])
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                    call address(bookAddress).pay(address arg1) with:
                                                                       value 5 * 10^15 wei
                                                                         gas gas_remaining wei
                                                                        args msg.sender
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    if uint32(currentRound - 1) < stor9.length:
                                                                        emit OnBuy(msg.sender, uint32(stor3.field_0), uint32(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0), call.data[4 len 160]);
                                                                        if uint32(currentRound - 1) < stor9.length:
                                                                            return stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0
                else:
                    call resolverAddress.0x23226654 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
                    require ext_code.size(resolverAddress)
                    call resolverAddress.0xc57380a2 with:
                         gas gas_remaining wei
                    mem[ceil32(('cd', 164).length) + 672] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[12 len 20] == address(controllerAddress):
                        idx = 0
                        while idx < 5:
                            require mem[(32 * idx) + 127 len 1] >= 1
                            require idx < 5
                            require mem[(32 * idx) + 127 len 1] <= 16
                            idx = idx + 1
                            continue 
                        s = 0
                        idx = 0
                        while uint8(idx) < 4:
                            s = idx
                            while uint8(s) < 4:
                                require uint8(s + 1) < 5
                                require uint8(idx) < 5
                                require mem[(32 * uint8(idx)) + 127 len 1] != uint8(call.data[(32 * uint8(s + 1)) + 4])
                                s = s + 1
                                continue 
                            s = None
                            idx = idx + 1
                            continue 
                        require msg.value >= 5 * 10^16
                        if uint32(currentRound - 1) < stor9.length:
                            if stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0 + 1 >= stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0:
                                require stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0 + 1 <= 100
                                if uint32(currentRound - 1) < stor4.length:
                                    stor4[uint32(uint32(stor3.field_160) - 1) / 8] = 256^(4 * currentRound - 1 % 8) * uint32(stor('array', ('mask_shl', 29, 3, -3, ('add', -1, ('stor', 32, 160, ('name', 'stor3', 3)))), ('name', 'stor4', 4))[uint8(uint32(stor3.field_160) - 1)] + 1) or stor4[uint32(uint32(stor3.field_160) - 1) / 8] and !(test266151307() * 256^(4 * currentRound - 1 % 8))
                                    if uint32(currentRound - 1) < stor9.length:
                                        if stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0 > 0:
                                            mem[ceil32(('cd', 164).length) + 288] = 96
                                            mem[ceil32(('cd', 164).length) + 320] = 0
                                            mem[ceil32(('cd', 164).length) + 352] = 0
                                            if uint32(currentRound - 1) < stor9.length:
                                                stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0++
                                                s = 0
                                                idx = 96
                                                while 256 > idx:
                                                    stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_0 = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_0
                                                    s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                                    idx = idx + 32
                                                    continue 
                                                idx = 5
                                                s = sha3(sha3(msg.sender, uint32(currentRound - 1) + sha3(9))) + (2 * stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0)
                                                while idx:
                                                    stor[s] = !(255 * 256^idx) and stor[s]
                                                    idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                                    s = (idx + 1 / 32) + s
                                                    continue 
                                                idx = (2 * stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0) - (3 * None + 3 / 32) + (None * None + 3 / 32)
                                                while (2 * stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0) + 1 > idx:
                                                    uint8(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][idx].field_0) = 0
                                                    idx = idx + 1
                                                    continue 
                                                uint8(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_256) = 0
                                                Mask(248, 0, stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_264) = 0
                                                Mask(240, 0, stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_272) = 0
                                                mem[ceil32(('cd', 164).length) + 672 len 160] = code.data[20330 len 160]
                                                mem[ceil32(('cd', 164).length) + 832 len 160] = code.data[20330 len 160]
                                                mem[ceil32(('cd', 164).length) + 992 len 160] = code.data[20330 len 160]
                                                idx = 0
                                                while uint8(idx) < 5:
                                                    mem[(32 * uint8(idx)) + ceil32(('cd', 164).length) + 992] = mem[(32 * uint8(idx)) + 127 len 1]
                                                    idx = idx + 1
                                                    continue 
                                                s = 0
                                                t = 0
                                                idx = 0
                                                while uint8(idx) < 4:
                                                    t = s
                                                    u = 0
                                                    while uint8(u) < uint8(-idx + 4):
                                                        require uint8(u + 1) < 5
                                                        require uint8(u) < 5
                                                        if mem[(32 * uint8(u)) + ceil32(('cd', 164).length) + 1023 len 1] <= mem[(32 * uint8(u + 1)) + ceil32(('cd', 164).length) + 1023 len 1]:
                                                            t = t
                                                            u = u + 1
                                                            continue 
                                                        require uint8(u) < 5
                                                        _4397 = mem[(32 * uint8(u)) + ceil32(('cd', 164).length) + 992]
                                                        require uint8(u + 1) < 5
                                                        require uint8(u) < 5
                                                        mem[(32 * uint8(u)) + ceil32(('cd', 164).length) + 992] = mem[(32 * uint8(u + 1)) + ceil32(('cd', 164).length) + 1023 len 1]
                                                        require uint8(u + 1) < 5
                                                        mem[(32 * uint8(u + 1)) + ceil32(('cd', 164).length) + 992] = uint8(_4397)
                                                        t = _4397
                                                        u = u + 1
                                                        continue 
                                                    s = t
                                                    t = u
                                                    idx = idx + 1
                                                    continue 
                                                if uint32(currentRound - 1) < stor10.length:
                                                    stor10[uint32(uint32(stor3.field_160) - 1)][uint8(mem[ceil32(('cd', 164).length) + 1088]) << 224 or uint8(mem[ceil32(('cd', 164).length) + 1120]) << 216 or uint8(mem[ceil32(('cd', 164).length) + 1056]) << 232 or uint8(mem[ceil32(('cd', 164).length) + 1024]) << 240 or mem[ceil32(('cd', 164).length) + 992] << 248] = uint32(stor10[uint32(uint32(stor3.field_160) - 1)][uint8(mem[ceil32(('cd', 164).length) + 1088]) << 224 or uint8(mem[ceil32(('cd', 164).length) + 1120]) << 216 or uint8(mem[ceil32(('cd', 164).length) + 1056]) << 232 or uint8(mem[ceil32(('cd', 164).length) + 1024]) << 240 or mem[ceil32(('cd', 164).length) + 992] << 248] + 1)
                                                    if uint32(uint32(currentRound - 1) / 7) < stor11.length:
                                                        stor11[uint32(uint32(uint32(stor3.field_160) - 1) / 7)][call.data[4] << 248 or uint8(call.data[36]) << 240 or uint8(call.data[68]) << 232 or uint8(call.data[132]) << 216 or uint8(call.data[100]) << 224] = uint32(stor11[uint32(uint32(uint32(stor3.field_160) - 1) / 7)][call.data[4] << 248 or uint8(call.data[36]) << 240 or uint8(call.data[68]) << 232 or uint8(call.data[132]) << 216 or uint8(call.data[100]) << 224] + 1)
                                                        if msg.value <= 5 * 10^16:
                                                            require ext_code.size(address(bookAddress))
                                                            call address(bookAddress).hasInviter(address arg1) with:
                                                                 gas gas_remaining wei
                                                                args msg.sender
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_code.size(address(bookAddress))
                                                            if not ext_call.return_data[0]:
                                                                call address(bookAddress).isRoot(address arg1) with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if not ext_call.return_data[0]:
                                                                    require ext_code.size(address(bookAddress))
                                                                    call address(bookAddress).setInviter(address arg1, string arg2) with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, Array(len=('cd', 164).length, data=call.data[cd[164] + 36 len ('cd', 164).length])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                            call address(bookAddress).pay(address arg1) with:
                                                               value 5 * 10^15 wei
                                                                 gas gas_remaining wei
                                                                args msg.sender
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            if uint32(currentRound - 1) < stor9.length:
                                                                emit OnBuy(msg.sender, uint32(stor3.field_0), uint32(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0), call.data[4 len 160]);
                                                                if uint32(currentRound - 1) < stor9.length:
                                                                    return stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0
                                                        else:
                                                            if 5 * 10^16 <= msg.value:
                                                                call msg.sender with:
                                                                   value msg.value - 5 * 10^16 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require ext_code.size(address(bookAddress))
                                                                call address(bookAddress).hasInviter(address arg1) with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                require ext_code.size(address(bookAddress))
                                                                if not ext_call.return_data[0]:
                                                                    call address(bookAddress).isRoot(address arg1) with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 32
                                                                    if not ext_call.return_data[0]:
                                                                        require ext_code.size(address(bookAddress))
                                                                        call address(bookAddress).setInviter(address arg1, string arg2) with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, Array(len=('cd', 164).length, data=call.data[cd[164] + 36 len ('cd', 164).length])
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                call address(bookAddress).pay(address arg1) with:
                                                                   value 5 * 10^15 wei
                                                                     gas gas_remaining wei
                                                                    args msg.sender
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                if uint32(currentRound - 1) < stor9.length:
                                                                    emit OnBuy(msg.sender, uint32(stor3.field_0), uint32(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0), call.data[4 len 160]);
                                                                    if uint32(currentRound - 1) < stor9.length:
                                                                        return stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0
                                        else:
                                            if uint32(currentRound - 1) < stor5.length:
                                                stor5[uint32(uint32(stor3.field_160) - 1) / 8] = uint32(stor('array', ('mask_shl', 29, 3, -3, ('add', -1, ('stor', 32, 160, ('name', 'stor3', 3)))), ('name', 'stor5', 5))[uint8(uint32(stor3.field_160) - 1)] + 1) * 256^(4 * currentRound - 1 % 8) or stor5[uint32(uint32(stor3.field_160) - 1) / 8] and !(test266151307() * 256^(4 * currentRound - 1 % 8))
                                                mem[ceil32(('cd', 164).length) + 288] = 96
                                                mem[ceil32(('cd', 164).length) + 320] = 0
                                                mem[ceil32(('cd', 164).length) + 352] = 0
                                                if uint32(currentRound - 1) < stor9.length:
                                                    stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0++
                                                    s = 0
                                                    idx = 96
                                                    while 256 > idx:
                                                        stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_0 = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_0
                                                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                                        idx = idx + 32
                                                        continue 
                                                    idx = 5
                                                    s = sha3(sha3(msg.sender, uint32(currentRound - 1) + sha3(9))) + (2 * stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0)
                                                    while idx:
                                                        stor[s] = !(255 * 256^idx) and stor[s]
                                                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                                        s = (idx + 1 / 32) + s
                                                        continue 
                                                    idx = (2 * stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0) - (3 * None + 3 / 32) + (None * None + 3 / 32)
                                                    while (2 * stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0) + 1 > idx:
                                                        uint8(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][idx].field_0) = 0
                                                        idx = idx + 1
                                                        continue 
                                                    uint8(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_256) = 0
                                                    Mask(248, 0, stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_264) = 0
                                                    Mask(240, 0, stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_272) = 0
                                                    mem[ceil32(('cd', 164).length) + 672 len 160] = code.data[20330 len 160]
                                                    mem[ceil32(('cd', 164).length) + 832 len 160] = code.data[20330 len 160]
                                                    mem[ceil32(('cd', 164).length) + 992 len 160] = code.data[20330 len 160]
                                                    idx = 0
                                                    while uint8(idx) < 5:
                                                        mem[(32 * uint8(idx)) + ceil32(('cd', 164).length) + 992] = mem[(32 * uint8(idx)) + 127 len 1]
                                                        idx = idx + 1
                                                        continue 
                                                    s = 0
                                                    t = 0
                                                    idx = 0
                                                    while uint8(idx) < 4:
                                                        t = s
                                                        u = 0
                                                        while uint8(u) < uint8(-idx + 4):
                                                            require uint8(u + 1) < 5
                                                            require uint8(u) < 5
                                                            if mem[(32 * uint8(u)) + ceil32(('cd', 164).length) + 1023 len 1] <= mem[(32 * uint8(u + 1)) + ceil32(('cd', 164).length) + 1023 len 1]:
                                                                t = t
                                                                u = u + 1
                                                                continue 
                                                            require uint8(u) < 5
                                                            _4398 = mem[(32 * uint8(u)) + ceil32(('cd', 164).length) + 992]
                                                            require uint8(u + 1) < 5
                                                            require uint8(u) < 5
                                                            mem[(32 * uint8(u)) + ceil32(('cd', 164).length) + 992] = mem[(32 * uint8(u + 1)) + ceil32(('cd', 164).length) + 1023 len 1]
                                                            require uint8(u + 1) < 5
                                                            mem[(32 * uint8(u + 1)) + ceil32(('cd', 164).length) + 992] = uint8(_4398)
                                                            t = _4398
                                                            u = u + 1
                                                            continue 
                                                        s = t
                                                        t = u
                                                        idx = idx + 1
                                                        continue 
                                                    if uint32(currentRound - 1) < stor10.length:
                                                        stor10[uint32(uint32(stor3.field_160) - 1)][uint8(mem[ceil32(('cd', 164).length) + 1088]) << 224 or uint8(mem[ceil32(('cd', 164).length) + 1120]) << 216 or uint8(mem[ceil32(('cd', 164).length) + 1056]) << 232 or uint8(mem[ceil32(('cd', 164).length) + 1024]) << 240 or mem[ceil32(('cd', 164).length) + 992] << 248] = uint32(stor10[uint32(uint32(stor3.field_160) - 1)][uint8(mem[ceil32(('cd', 164).length) + 1088]) << 224 or uint8(mem[ceil32(('cd', 164).length) + 1120]) << 216 or uint8(mem[ceil32(('cd', 164).length) + 1056]) << 232 or uint8(mem[ceil32(('cd', 164).length) + 1024]) << 240 or mem[ceil32(('cd', 164).length) + 992] << 248] + 1)
                                                        if uint32(uint32(currentRound - 1) / 7) < stor11.length:
                                                            stor11[uint32(uint32(uint32(stor3.field_160) - 1) / 7)][call.data[4] << 248 or uint8(call.data[36]) << 240 or uint8(call.data[68]) << 232 or uint8(call.data[132]) << 216 or uint8(call.data[100]) << 224] = uint32(stor11[uint32(uint32(uint32(stor3.field_160) - 1) / 7)][call.data[4] << 248 or uint8(call.data[36]) << 240 or uint8(call.data[68]) << 232 or uint8(call.data[132]) << 216 or uint8(call.data[100]) << 224] + 1)
                                                            if msg.value <= 5 * 10^16:
                                                                require ext_code.size(address(bookAddress))
                                                                call address(bookAddress).hasInviter(address arg1) with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                require ext_code.size(address(bookAddress))
                                                                if not ext_call.return_data[0]:
                                                                    call address(bookAddress).isRoot(address arg1) with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 32
                                                                    if not ext_call.return_data[0]:
                                                                        require ext_code.size(address(bookAddress))
                                                                        call address(bookAddress).setInviter(address arg1, string arg2) with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, Array(len=('cd', 164).length, data=call.data[cd[164] + 36 len ('cd', 164).length])
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                call address(bookAddress).pay(address arg1) with:
                                                                   value 5 * 10^15 wei
                                                                     gas gas_remaining wei
                                                                    args msg.sender
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                if uint32(currentRound - 1) < stor9.length:
                                                                    emit OnBuy(msg.sender, uint32(stor3.field_0), uint32(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0), call.data[4 len 160]);
                                                                    if uint32(currentRound - 1) < stor9.length:
                                                                        return stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0
                                                            else:
                                                                if 5 * 10^16 <= msg.value:
                                                                    call msg.sender with:
                                                                       value msg.value - 5 * 10^16 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require ext_code.size(address(bookAddress))
                                                                    call address(bookAddress).hasInviter(address arg1) with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 32
                                                                    require ext_code.size(address(bookAddress))
                                                                    if not ext_call.return_data[0]:
                                                                        call address(bookAddress).isRoot(address arg1) with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        if not ext_call.return_data[0]:
                                                                            require ext_code.size(address(bookAddress))
                                                                            call address(bookAddress).setInviter(address arg1, string arg2) with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, Array(len=('cd', 164).length, data=call.data[cd[164] + 36 len ('cd', 164).length])
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                    call address(bookAddress).pay(address arg1) with:
                                                                       value 5 * 10^15 wei
                                                                         gas gas_remaining wei
                                                                        args msg.sender
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    if uint32(currentRound - 1) < stor9.length:
                                                                        emit OnBuy(msg.sender, uint32(stor3.field_0), uint32(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0), call.data[4 len 160]);
                                                                        if uint32(currentRound - 1) < stor9.length:
                                                                            return stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0
                    else:
                        require ext_code.size(resolverAddress)
                        call resolverAddress.0xc57380a2 with:
                             gas gas_remaining wei
                        mem[ceil32(('cd', 164).length) + 672] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                        idx = 0
                        while idx < 5:
                            require mem[(32 * idx) + 127 len 1] >= 1
                            require idx < 5
                            require mem[(32 * idx) + 127 len 1] <= 16
                            idx = idx + 1
                            continue 
                        s = 0
                        idx = 0
                        while uint8(idx) < 4:
                            s = idx
                            while uint8(s) < 4:
                                require uint8(s + 1) < 5
                                require uint8(idx) < 5
                                require mem[(32 * uint8(idx)) + 127 len 1] != uint8(call.data[(32 * uint8(s + 1)) + 4])
                                s = s + 1
                                continue 
                            s = None
                            idx = idx + 1
                            continue 
                        require msg.value >= 5 * 10^16
                        if uint32(currentRound - 1) < stor9.length:
                            if stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0 + 1 >= stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0:
                                require stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0 + 1 <= 100
                                if uint32(currentRound - 1) < stor4.length:
                                    stor4[uint32(uint32(stor3.field_160) - 1) / 8] = 256^(4 * currentRound - 1 % 8) * uint32(stor('array', ('mask_shl', 29, 3, -3, ('add', -1, ('stor', 32, 160, ('name', 'stor3', 3)))), ('name', 'stor4', 4))[uint8(uint32(stor3.field_160) - 1)] + 1) or stor4[uint32(uint32(stor3.field_160) - 1) / 8] and !(test266151307() * 256^(4 * currentRound - 1 % 8))
                                    if uint32(currentRound - 1) < stor9.length:
                                        if stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0 > 0:
                                            mem[ceil32(('cd', 164).length) + 288] = 96
                                            mem[ceil32(('cd', 164).length) + 320] = 0
                                            mem[ceil32(('cd', 164).length) + 352] = 0
                                            if uint32(currentRound - 1) < stor9.length:
                                                stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0++
                                                s = 0
                                                idx = 96
                                                while 256 > idx:
                                                    stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_0 = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_0
                                                    s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                                    idx = idx + 32
                                                    continue 
                                                idx = 5
                                                s = sha3(sha3(msg.sender, uint32(currentRound - 1) + sha3(9))) + (2 * stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0)
                                                while idx:
                                                    stor[s] = !(255 * 256^idx) and stor[s]
                                                    idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                                    s = (idx + 1 / 32) + s
                                                    continue 
                                                idx = (2 * stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0) - (3 * None + 3 / 32) + (None * None + 3 / 32)
                                                while (2 * stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0) + 1 > idx:
                                                    uint8(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][idx].field_0) = 0
                                                    idx = idx + 1
                                                    continue 
                                                uint8(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_256) = 0
                                                Mask(248, 0, stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_264) = 0
                                                Mask(240, 0, stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_272) = 0
                                                mem[ceil32(('cd', 164).length) + 672 len 160] = code.data[20330 len 160]
                                                mem[ceil32(('cd', 164).length) + 832 len 160] = code.data[20330 len 160]
                                                mem[ceil32(('cd', 164).length) + 992 len 160] = code.data[20330 len 160]
                                                idx = 0
                                                while uint8(idx) < 5:
                                                    mem[(32 * uint8(idx)) + ceil32(('cd', 164).length) + 992] = mem[(32 * uint8(idx)) + 127 len 1]
                                                    idx = idx + 1
                                                    continue 
                                                s = 0
                                                t = 0
                                                idx = 0
                                                while uint8(idx) < 4:
                                                    t = s
                                                    u = 0
                                                    while uint8(u) < uint8(-idx + 4):
                                                        require uint8(u + 1) < 5
                                                        require uint8(u) < 5
                                                        if mem[(32 * uint8(u)) + ceil32(('cd', 164).length) + 1023 len 1] <= mem[(32 * uint8(u + 1)) + ceil32(('cd', 164).length) + 1023 len 1]:
                                                            t = t
                                                            u = u + 1
                                                            continue 
                                                        require uint8(u) < 5
                                                        _4399 = mem[(32 * uint8(u)) + ceil32(('cd', 164).length) + 992]
                                                        require uint8(u + 1) < 5
                                                        require uint8(u) < 5
                                                        mem[(32 * uint8(u)) + ceil32(('cd', 164).length) + 992] = mem[(32 * uint8(u + 1)) + ceil32(('cd', 164).length) + 1023 len 1]
                                                        require uint8(u + 1) < 5
                                                        mem[(32 * uint8(u + 1)) + ceil32(('cd', 164).length) + 992] = uint8(_4399)
                                                        t = _4399
                                                        u = u + 1
                                                        continue 
                                                    s = t
                                                    t = u
                                                    idx = idx + 1
                                                    continue 
                                                if uint32(currentRound - 1) < stor10.length:
                                                    stor10[uint32(uint32(stor3.field_160) - 1)][uint8(mem[ceil32(('cd', 164).length) + 1088]) << 224 or uint8(mem[ceil32(('cd', 164).length) + 1120]) << 216 or uint8(mem[ceil32(('cd', 164).length) + 1056]) << 232 or uint8(mem[ceil32(('cd', 164).length) + 1024]) << 240 or mem[ceil32(('cd', 164).length) + 992] << 248] = uint32(stor10[uint32(uint32(stor3.field_160) - 1)][uint8(mem[ceil32(('cd', 164).length) + 1088]) << 224 or uint8(mem[ceil32(('cd', 164).length) + 1120]) << 216 or uint8(mem[ceil32(('cd', 164).length) + 1056]) << 232 or uint8(mem[ceil32(('cd', 164).length) + 1024]) << 240 or mem[ceil32(('cd', 164).length) + 992] << 248] + 1)
                                                    if uint32(uint32(currentRound - 1) / 7) < stor11.length:
                                                        stor11[uint32(uint32(uint32(stor3.field_160) - 1) / 7)][call.data[4] << 248 or uint8(call.data[36]) << 240 or uint8(call.data[68]) << 232 or uint8(call.data[132]) << 216 or uint8(call.data[100]) << 224] = uint32(stor11[uint32(uint32(uint32(stor3.field_160) - 1) / 7)][call.data[4] << 248 or uint8(call.data[36]) << 240 or uint8(call.data[68]) << 232 or uint8(call.data[132]) << 216 or uint8(call.data[100]) << 224] + 1)
                                                        if msg.value <= 5 * 10^16:
                                                            require ext_code.size(address(bookAddress))
                                                            call address(bookAddress).hasInviter(address arg1) with:
                                                                 gas gas_remaining wei
                                                                args msg.sender
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_code.size(address(bookAddress))
                                                            if not ext_call.return_data[0]:
                                                                call address(bookAddress).isRoot(address arg1) with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if not ext_call.return_data[0]:
                                                                    require ext_code.size(address(bookAddress))
                                                                    call address(bookAddress).setInviter(address arg1, string arg2) with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, Array(len=('cd', 164).length, data=call.data[cd[164] + 36 len ('cd', 164).length])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                            call address(bookAddress).pay(address arg1) with:
                                                               value 5 * 10^15 wei
                                                                 gas gas_remaining wei
                                                                args msg.sender
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            if uint32(currentRound - 1) < stor9.length:
                                                                emit OnBuy(msg.sender, uint32(stor3.field_0), uint32(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0), call.data[4 len 160]);
                                                                if uint32(currentRound - 1) < stor9.length:
                                                                    return stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0
                                                        else:
                                                            if 5 * 10^16 <= msg.value:
                                                                call msg.sender with:
                                                                   value msg.value - 5 * 10^16 wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require ext_code.size(address(bookAddress))
                                                                call address(bookAddress).hasInviter(address arg1) with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                require ext_code.size(address(bookAddress))
                                                                if not ext_call.return_data[0]:
                                                                    call address(bookAddress).isRoot(address arg1) with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 32
                                                                    if not ext_call.return_data[0]:
                                                                        require ext_code.size(address(bookAddress))
                                                                        call address(bookAddress).setInviter(address arg1, string arg2) with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, Array(len=('cd', 164).length, data=call.data[cd[164] + 36 len ('cd', 164).length])
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                call address(bookAddress).pay(address arg1) with:
                                                                   value 5 * 10^15 wei
                                                                     gas gas_remaining wei
                                                                    args msg.sender
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                if uint32(currentRound - 1) < stor9.length:
                                                                    emit OnBuy(msg.sender, uint32(stor3.field_0), uint32(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0), call.data[4 len 160]);
                                                                    if uint32(currentRound - 1) < stor9.length:
                                                                        return stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0
                                        else:
                                            if uint32(currentRound - 1) < stor5.length:
                                                stor5[uint32(uint32(stor3.field_160) - 1) / 8] = uint32(stor('array', ('mask_shl', 29, 3, -3, ('add', -1, ('stor', 32, 160, ('name', 'stor3', 3)))), ('name', 'stor5', 5))[uint8(uint32(stor3.field_160) - 1)] + 1) * 256^(4 * currentRound - 1 % 8) or stor5[uint32(uint32(stor3.field_160) - 1) / 8] and !(test266151307() * 256^(4 * currentRound - 1 % 8))
                                                mem[ceil32(('cd', 164).length) + 288] = 96
                                                mem[ceil32(('cd', 164).length) + 320] = 0
                                                mem[ceil32(('cd', 164).length) + 352] = 0
                                                if uint32(currentRound - 1) < stor9.length:
                                                    stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0++
                                                    s = 0
                                                    idx = 96
                                                    while 256 > idx:
                                                        stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_0 = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_0
                                                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                                        idx = idx + 32
                                                        continue 
                                                    idx = 5
                                                    s = sha3(sha3(msg.sender, uint32(currentRound - 1) + sha3(9))) + (2 * stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0)
                                                    while idx:
                                                        stor[s] = !(255 * 256^idx) and stor[s]
                                                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                                        s = (idx + 1 / 32) + s
                                                        continue 
                                                    idx = (2 * stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0) - (3 * None + 3 / 32) + (None * None + 3 / 32)
                                                    while (2 * stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0) + 1 > idx:
                                                        uint8(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][idx].field_0) = 0
                                                        idx = idx + 1
                                                        continue 
                                                    uint8(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_256) = 0
                                                    Mask(248, 0, stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_264) = 0
                                                    Mask(240, 0, stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender][stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0].field_272) = 0
                                                    mem[ceil32(('cd', 164).length) + 672 len 160] = code.data[20330 len 160]
                                                    mem[ceil32(('cd', 164).length) + 832 len 160] = code.data[20330 len 160]
                                                    mem[ceil32(('cd', 164).length) + 992 len 160] = code.data[20330 len 160]
                                                    idx = 0
                                                    while uint8(idx) < 5:
                                                        mem[(32 * uint8(idx)) + ceil32(('cd', 164).length) + 992] = mem[(32 * uint8(idx)) + 127 len 1]
                                                        idx = idx + 1
                                                        continue 
                                                    s = 0
                                                    t = 0
                                                    idx = 0
                                                    while uint8(idx) < 4:
                                                        t = s
                                                        u = 0
                                                        while uint8(u) < uint8(-idx + 4):
                                                            require uint8(u + 1) < 5
                                                            require uint8(u) < 5
                                                            if mem[(32 * uint8(u)) + ceil32(('cd', 164).length) + 1023 len 1] <= mem[(32 * uint8(u + 1)) + ceil32(('cd', 164).length) + 1023 len 1]:
                                                                t = t
                                                                u = u + 1
                                                                continue 
                                                            require uint8(u) < 5
                                                            _4400 = mem[(32 * uint8(u)) + ceil32(('cd', 164).length) + 992]
                                                            require uint8(u + 1) < 5
                                                            require uint8(u) < 5
                                                            mem[(32 * uint8(u)) + ceil32(('cd', 164).length) + 992] = mem[(32 * uint8(u + 1)) + ceil32(('cd', 164).length) + 1023 len 1]
                                                            require uint8(u + 1) < 5
                                                            mem[(32 * uint8(u + 1)) + ceil32(('cd', 164).length) + 992] = uint8(_4400)
                                                            t = _4400
                                                            u = u + 1
                                                            continue 
                                                        s = t
                                                        t = u
                                                        idx = idx + 1
                                                        continue 
                                                    if uint32(currentRound - 1) < stor10.length:
                                                        stor10[uint32(uint32(stor3.field_160) - 1)][uint8(mem[ceil32(('cd', 164).length) + 1088]) << 224 or uint8(mem[ceil32(('cd', 164).length) + 1120]) << 216 or uint8(mem[ceil32(('cd', 164).length) + 1056]) << 232 or uint8(mem[ceil32(('cd', 164).length) + 1024]) << 240 or mem[ceil32(('cd', 164).length) + 992] << 248] = uint32(stor10[uint32(uint32(stor3.field_160) - 1)][uint8(mem[ceil32(('cd', 164).length) + 1088]) << 224 or uint8(mem[ceil32(('cd', 164).length) + 1120]) << 216 or uint8(mem[ceil32(('cd', 164).length) + 1056]) << 232 or uint8(mem[ceil32(('cd', 164).length) + 1024]) << 240 or mem[ceil32(('cd', 164).length) + 992] << 248] + 1)
                                                        if uint32(uint32(currentRound - 1) / 7) < stor11.length:
                                                            stor11[uint32(uint32(uint32(stor3.field_160) - 1) / 7)][call.data[4] << 248 or uint8(call.data[36]) << 240 or uint8(call.data[68]) << 232 or uint8(call.data[132]) << 216 or uint8(call.data[100]) << 224] = uint32(stor11[uint32(uint32(uint32(stor3.field_160) - 1) / 7)][call.data[4] << 248 or uint8(call.data[36]) << 240 or uint8(call.data[68]) << 232 or uint8(call.data[132]) << 216 or uint8(call.data[100]) << 224] + 1)
                                                            if msg.value <= 5 * 10^16:
                                                                require ext_code.size(address(bookAddress))
                                                                call address(bookAddress).hasInviter(address arg1) with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                require ext_code.size(address(bookAddress))
                                                                if not ext_call.return_data[0]:
                                                                    call address(bookAddress).isRoot(address arg1) with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 32
                                                                    if not ext_call.return_data[0]:
                                                                        require ext_code.size(address(bookAddress))
                                                                        call address(bookAddress).setInviter(address arg1, string arg2) with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, Array(len=('cd', 164).length, data=call.data[cd[164] + 36 len ('cd', 164).length])
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                call address(bookAddress).pay(address arg1) with:
                                                                   value 5 * 10^15 wei
                                                                     gas gas_remaining wei
                                                                    args msg.sender
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                if uint32(currentRound - 1) < stor9.length:
                                                                    emit OnBuy(msg.sender, uint32(stor3.field_0), uint32(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0), call.data[4 len 160]);
                                                                    if uint32(currentRound - 1) < stor9.length:
                                                                        return stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0
                                                            else:
                                                                if 5 * 10^16 <= msg.value:
                                                                    call msg.sender with:
                                                                       value msg.value - 5 * 10^16 wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require ext_code.size(address(bookAddress))
                                                                    call address(bookAddress).hasInviter(address arg1) with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 32
                                                                    require ext_code.size(address(bookAddress))
                                                                    if not ext_call.return_data[0]:
                                                                        call address(bookAddress).isRoot(address arg1) with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        if not ext_call.return_data[0]:
                                                                            require ext_code.size(address(bookAddress))
                                                                            call address(bookAddress).setInviter(address arg1, string arg2) with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, Array(len=('cd', 164).length, data=call.data[cd[164] + 36 len ('cd', 164).length])
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                    call address(bookAddress).pay(address arg1) with:
                                                                       value 5 * 10^15 wei
                                                                         gas gas_remaining wei
                                                                        args msg.sender
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    if uint32(currentRound - 1) < stor9.length:
                                                                        emit OnBuy(msg.sender, uint32(stor3.field_0), uint32(stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0), call.data[4 len 160]);
                                                                        if uint32(currentRound - 1) < stor9.length:
                                                                            return stor9[uint32(uint32(stor3.field_160) - 1)][msg.sender].field_0
    revert
}



}
