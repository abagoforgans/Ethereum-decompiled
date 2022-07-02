contract main {




// =====================  Runtime code  =====================


#
#  - sub_590aa479(?)
#  - getParams()
#
address adminAddress;
address sub_9df8ed43Address;
mapping of struct affiliates;
uint256 sub_3eb3b9d7;
mapping of struct deals;
uint256 sub_3bf251b9;
array of struct sub_27de3446;
mapping of uint256 sub_84238da5;
mapping of uint256 sub_78c16b90;
mapping of uint256 sub_eaefe81b;
mapping of uint256 sub_eff56b04;
address owner;
array of struct sub_5a2f6526;
uint32 stor16; offset 160

function deals(uint256 arg1) {
    return deals[arg1].field_0, 
           bool(deals[arg1].field_160),
           bool(deals[arg1].field_168),
           deals[arg1].field_256,
           deals[arg1].field_512,
           deals[arg1].field_768,
           deals[arg1].field_1024,
           deals[arg1].field_1280,
           deals[arg1].field_1536,
           deals[arg1].field_1792,
           deals[arg1].field_2048,
           Mask(32, 224, deals[arg1].field_2560),
           bool(deals[arg1].field_2592)
}

function affiliates(uint256 arg1) {
    return affiliates[arg1].field_0, bool(affiliates[arg1].field_160), affiliates[arg1].field_256, affiliates[arg1].field_512
}

function sub_27de3446(?) {
    require arg2 < sub_27de3446[arg1].field_0
    return sub_27de3446[arg1][arg2].field_0
}

function sub_3bf251b9(?) {
    return sub_3bf251b9
}

function sub_3eb3b9d7(?) {
    return sub_3eb3b9d7
}

function sub_5a2f6526(?) {
    if arg1 >= sub_5a2f6526.length:
        revert with 0, 'Stage does not exist'
    return sub_5a2f6526[arg1].field_256
}

function sub_78c16b90(?) {
    require arg1 < sub_3bf251b9
    require arg2
    require sub_eaefe81b[arg1][address(arg2)] == 1
    return sub_78c16b90[arg1][address(arg2)]
}

function sub_84238da5(?) {
    return sub_84238da5[arg1]
}

function sub_8b3b69cb(?) {
    if arg1 >= sub_5a2f6526.length:
        revert with 0, 'Stage does not exist'
    return sub_5a2f6526[arg1].field_512
}

function owner() {
    return owner
}

function sub_931ddadd(?) {
    require arg1
    require arg1 <= sub_3eb3b9d7
    return sub_eff56b04[arg1]
}

function sub_9df8ed43(?) {
    return sub_9df8ed43Address
}

function sub_a827e8e3(?) {
    return Mask(32, 224, deals[arg1].field_2560)
}

function sub_b3a81b22(?) {
    return sub_78c16b90[arg1][arg2]
}

function sub_e548aaba(?) {
    require arg1
    require arg1 <= sub_3eb3b9d7
    require arg2 < affiliates[arg1].field_512
    return affiliates[arg1][3][arg2].field_0, affiliates[arg1][3][arg2].field_256
}

function sub_eaefe81b(?) {
    return sub_eaefe81b[arg1][arg2]
}

function sub_eff56b04(?) {
    return sub_eff56b04[arg1]
}

function adminAddress() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function changeAdmin(address arg1) {
    require msg.sender == adminAddress
    require arg1
    adminAddress = arg1
}

function sub_356feebb(?) {
    require arg1
    require arg1 <= sub_3eb3b9d7
    return affiliates[arg1].field_0, sub_eff56b04[arg1]
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_141c8263(?) {
    require arg1 < sub_3bf251b9
    if not deals[arg1].field_160:
        if not deals[arg1].field_168:
            return 1
        else:
            return 0
    else:
        return 0
}

function sub_c63e7013(?) {
    require msg.sender == adminAddress
    require arg1 < sub_3bf251b9
    deals[arg1].field_160 = 1
    emit 0xd2200290: Mask(32, 224, deals[arg1].field_2560), deals[arg1].field_512, msg.sender
}

function sub_b8bfb89c(?) {
    idx = 0
    while idx < sub_3bf251b9:
        mem[0] = idx
        mem[32] = 4
        if Mask(32, 224, deals[idx].field_2560) != Mask(32, 224, arg1):
            idx = idx + 1
            continue 
        return idx
    revert with 0, 'dealID not found'
}

function sub_b68e3c76(?) {
    require msg.sender == adminAddress
    require arg1
    require arg1 <= sub_3eb3b9d7
    affiliates[arg1].field_160 = Mask(96, 0, not bool(affiliates[arg1].field_160))
    emit 0xaa5f886d: Mask(32, 224, deals[stor10[arg1]].field_2560), arg1, bool(affiliates[arg1].field_160)
}

function sub_e7ee0089(?) {
    require msg.sender == sub_9df8ed43Address
    require arg1 < sub_3bf251b9
    require not deals[arg1].field_160
    require not deals[arg1].field_168
    deals[arg1].field_168 = 1
    deals[arg1].field_1280 = block.timestamp
    if not deals[arg1].field_512:
        deals[arg1].field_160 = 1
    emit 0xd2200290: Mask(32, 224, deals[arg1].field_2560), deals[arg1].field_512, msg.sender
}

function sub_eabb87fb(?) {
    require arg1 < sub_3bf251b9
    if deals[arg1].field_2304:
        idx = 1024
        s = 0
        while (32 * deals[arg1].field_2304) + 992 > idx:
            mem[idx + 32] = deals[arg1][s + 9].field_256
            idx = idx + 32
            s = s + 1
            continue 
    if block.timestamp - deals[arg1].field_1024 < 24 * 3600 * deals[arg1].field_768:
        return 0
    return 1
}

function sub_537e8a32(?) {
    require 0 < sub_5a2f6526.length
    if arg1 < uint32(sub_5a2f6526.field_0):
        revert with 0, 'Sale not started'
    if arg1 >= stor16:
        revert with 0, 'Sale finished'
    idx = 1
    while idx < sub_5a2f6526.length:
        mem[0] = 12
        if arg1 >= sub_5a2f6526[idx].field_0:
            idx = idx + 1
            continue 
        require idx - 1 < sub_5a2f6526.length
        return sub_5a2f6526[idx].field_0
    if arg1 >= stor16:
        return 0
    if sub_5a2f6526.length - 1 < sub_5a2f6526.length:
        return sub_5a2f6526[sub_5a2f6526.length].field_0
    revert
}

function sub_cf8c1840(?) {
    require 0 < sub_5a2f6526.length
    if arg1 < uint32(sub_5a2f6526.field_0):
        revert with 0, 'Sale not started'
    if arg1 >= stor16:
        revert with 0, 'Sale finished'
    idx = 1
    while idx < sub_5a2f6526.length:
        mem[0] = 12
        if arg1 >= sub_5a2f6526[idx].field_0:
            idx = idx + 1
            continue 
        require idx - 1 < sub_5a2f6526.length
        return sub_5a2f6526[idx].field_0
    if arg1 >= stor16:
        return 0
    if sub_5a2f6526.length - 1 < sub_5a2f6526.length:
        return sub_5a2f6526[sub_5a2f6526.length].field_0
    revert
}

function sub_61293690(?) {
    require msg.sender == owner
    if arg1 >= sub_5a2f6526.length:
        revert with 0, 'Stage does not exist'
    if arg2 == sub_5a2f6526[arg1].field_512:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'That is the current minimum investment'
    if arg2:
        if arg1 >= sub_5a2f6526.length:
            revert with 0, 'Stage does not exist'
        if arg2 < sub_5a2f6526[arg1].field_256:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Maximum should be either 0, or higher than the minimum investment'
    require arg1 < sub_5a2f6526.length
    sub_5a2f6526[arg1].field_512 = arg2
}

function sub_f06d9605(?) {
    require msg.sender == owner
    if arg1 >= sub_5a2f6526.length:
        revert with 0, 'Stage does not exist'
    if arg2 == sub_5a2f6526[arg1].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'That is the current minimum investment'
    if arg1 >= sub_5a2f6526.length:
        revert with 0, 'Stage does not exist'
    if sub_5a2f6526[arg1].field_512:
        if arg1 >= sub_5a2f6526.length:
            revert with 0, 'Stage does not exist'
        if arg2 > sub_5a2f6526[arg1].field_512:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Minimum should be lower than the maximum investment when it is not 0'
    require arg1 < sub_5a2f6526.length
    sub_5a2f6526[arg1].field_256 = arg2
}

function sub_a71e8668(?) {
    require arg1 < sub_3bf251b9
    if not deals[arg1].field_2304:
        mem[(32 * deals[arg1].field_2304) + 128] = 32
        mem[(32 * deals[arg1].field_2304) + 160] = deals[arg1].field_2304
        mem[(32 * deals[arg1].field_2304) + 192 len floor32(deals[arg1].field_2304)] = mem[128 len floor32(deals[arg1].field_2304)]
        return memory
          from (32 * deals[arg1].field_2304) + 128
           len (96 * deals[arg1].field_2304) + 64
    mem[128] = deals[arg1][9].field_0
    idx = 128
    s = 0
    while (32 * deals[arg1].field_2304) + 96 > idx:
        mem[idx + 32] = deals[arg1][s + 9].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * deals[arg1].field_2304) + 192 len floor32(deals[arg1].field_2304)] = mem[128 len floor32(deals[arg1].field_2304)]
    return Array(len=deals[arg1].field_2304, data=mem[128 len floor32(deals[arg1].field_2304)], mem[(32 * deals[arg1].field_2304) + floor32(deals[arg1].field_2304) + 192 len (32 * deals[arg1].field_2304) - floor32(deals[arg1].field_2304)]), 
}

function sub_23c47ab4(?) payable {
    mem[64] = 96
    require not msg.value
    require msg.sender == sub_9df8ed43Address
    idx = 0
    while idx < sub_3bf251b9:
        mem[0] = idx
        mem[32] = 4
        if not deals[idx].field_160:
            mem[0] = idx
            mem[32] = 4
            if not deals[idx].field_168:
                require msg.sender == sub_9df8ed43Address
                require idx < sub_3bf251b9
                require not deals[idx].field_160
                require not deals[idx].field_168
                deals[idx].field_168 = 1
                deals[idx].field_1280 = block.timestamp
                if not deals[idx].field_512:
                    deals[idx].field_160 = 1
                mem[32] = 4
                mem[mem[64] + 32] = deals[idx].field_512
                mem[mem[64] + 64] = msg.sender
                emit 0xd2200290: Mask(32, 224, deals[idx].field_2560), deals[idx].field_512, msg.sender
                mem[0] = idx
                mem[32] = 4
                mem[mem[64]] = Mask(32, 224, deals[idx].field_2560)
                mem[mem[64] + 32] = deals[idx].field_512
                mem[mem[64] + 64] = msg.sender
                emit 0xd2200290: Mask(32, 224, deals[idx].field_2560), deals[idx].field_512, msg.sender
        idx = idx + 1
        continue 
}

function sub_5ddbe86f(?) {
    require arg1
    if not sub_27de3446[address(arg1)].field_0:
        mem[(32 * sub_27de3446[address(arg1)].field_0) + 128] = 32
        mem[(32 * sub_27de3446[address(arg1)].field_0) + 160] = sub_27de3446[address(arg1)].field_0
        mem[(32 * sub_27de3446[address(arg1)].field_0) + 192 len floor32(sub_27de3446[address(arg1)].field_0)] = mem[128 len floor32(sub_27de3446[address(arg1)].field_0)]
        return memory
          from (32 * sub_27de3446[address(arg1)].field_0) + 128
           len (96 * sub_27de3446[address(arg1)].field_0) + 64
    mem[128] = sub_27de3446[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * sub_27de3446[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = sub_27de3446[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_27de3446[address(arg1)].field_0) + 192 len floor32(sub_27de3446[address(arg1)].field_0)] = mem[128 len floor32(sub_27de3446[address(arg1)].field_0)]
    return Array(len=sub_27de3446[address(arg1)].field_0, data=mem[128 len floor32(sub_27de3446[address(arg1)].field_0)], mem[(32 * sub_27de3446[address(arg1)].field_0) + floor32(sub_27de3446[address(arg1)].field_0) + 192 len (32 * sub_27de3446[address(arg1)].field_0) - floor32(sub_27de3446[address(arg1)].field_0)]), 
}

function sub_c54bd9e1(?) {
    require arg1 < sub_3bf251b9
    require msg.sender
    require sub_eaefe81b[arg1][address(msg.sender)] == 1
    require not affiliates[stor8[arg1][address(msg.sender)]].field_160
    require affiliates[stor8[arg1][address(msg.sender)]].field_256 > 0
    require deals[arg1].field_1536 >= affiliates[stor8[arg1][address(msg.sender)]].field_256
    require affiliates[stor8[arg1][address(msg.sender)]].field_256 <= deals[arg1].field_1536
    deals[arg1].field_1536 -= affiliates[stor8[arg1][address(msg.sender)]].field_256
    affiliates[stor8[arg1][address(msg.sender)]].field_256 = 0
    require affiliates[stor8[arg1][address(msg.sender)]].field_256 <= deals[arg1].field_2048
    deals[arg1].field_2048 -= affiliates[stor8[arg1][address(msg.sender)]].field_256
    require ext_code.size(deals[arg1].field_0)
    call deals[arg1].field_0.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args affiliates[stor8[arg1][address(msg.sender)]].field_0, affiliates[stor8[arg1][address(msg.sender)]].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0xce724aec: Mask(32, 224, deals[arg1].field_2560), sub_78c16b90[arg1][address(msg.sender)], affiliates[stor8[arg1][address(msg.sender)]].field_256
}

function sub_8d6d7830(?) {
    require arg1 < sub_3bf251b9
    if not deals[arg1].field_2304:
        if not deals[arg1].field_160:
            if not deals[arg1].field_168:
                return 0
            else:
                if block.timestamp - deals[arg1].field_1280 < 24 * 3600 * deals[arg1].field_512:
                    return 0
                else:
                    return 1
        else:
            if not deals[arg1].field_168:
                return 1
            else:
                if block.timestamp - deals[arg1].field_1280 < 24 * 3600 * deals[arg1].field_512:
                    return 1
                else:
                    return 1
    else:
        idx = 1024
        s = 0
        while (32 * deals[arg1].field_2304) + 992 > idx:
            mem[idx + 32] = deals[arg1][s + 9].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if not deals[arg1].field_160:
            if not deals[arg1].field_168:
                return 0
            else:
                if block.timestamp - deals[arg1].field_1280 < 24 * 3600 * deals[arg1].field_512:
                    return 0
                else:
                    return 1
        else:
            if not deals[arg1].field_168:
                return 1
            else:
                if block.timestamp - deals[arg1].field_1280 < 24 * 3600 * deals[arg1].field_512:
                    return 1
                else:
                    return 1
}

function sub_95e32987(?) {
    mem[128] = 0
    mem[160] = 0
    mem[320] = 0
    mem[352] = 0
    mem[384] = 0
    mem[416] = 0
    mem[448] = 96
    require msg.sender == sub_9df8ed43Address
    require arg2
    require arg3 > 0
    require arg4 <= 90
    require arg5 > 0
    require arg5 <= 90
    mem[480] = Mask(32, 224, arg1)
    mem[192] = arg3
    mem[224] = arg4
    mem[256] = arg5
    mem[288] = block.timestamp
    mem[512] = arg6
    deals[stor5].field_0 = arg2
    deals[stor5].field_160 = 0
    deals[stor5].field_168 = 0
    deals[stor5].field_256 = arg3
    deals[stor5].field_512 = arg4
    deals[stor5].field_768 = arg5
    deals[stor5].field_1024 = block.timestamp
    deals[stor5].field_1280 = 0
    deals[stor5].field_1536 = 0
    deals[stor5].field_1792 = 0
    deals[stor5].field_2048 = 0
    deals[stor5].field_2304 = arg2
    deals[stor5].field_2464 = 0
    if not arg2:
        idx = 0
        while deals[stor5].field_2304 > idx:
            deals[stor5][idx + 9].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * address(arg2)) + 128 > idx:
            deals[stor5][s + 9].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * address(arg2)) + 31) >> 5
        while deals[stor5].field_2304 > idx:
            deals[stor5][idx + 9].field_0 = 0
            idx = idx + 1
            continue 
    deals[stor5].field_2560 = arg1
    deals[stor5].field_2592 = Mask(224, 0, arg6)
    require sub_3bf251b9 + 1 >= sub_3bf251b9
    sub_3bf251b9++
    emit 0x86ef207c: Mask(32, 224, arg1), sub_3bf251b9 - 1, arg3, arg4, arg5, sub_3bf251b9, msg.sender, arg2
}

function sub_ce82ec46(?) {
    require msg.sender == sub_9df8ed43Address
    require arg1 < sub_3bf251b9
    if not deals[arg1].field_2304:
        if not deals[arg1].field_160:
            if not deals[arg1].field_168:
                require arg1 < sub_3bf251b9
                if not deals[arg1].field_2304:
                    require block.timestamp - deals[arg1].field_1024 < 24 * 3600 * deals[arg1].field_768
                    require arg2 > 0
                    deals[arg1].field_256 = arg2
                    mem[(64 * deals[arg1].field_2304) + 1952] = Mask(32, 224, deals[arg1].field_2560)
                    mem[(64 * deals[arg1].field_2304) + 1984] = arg2
                    emit 0x3f32eca1: mem[(64 * deals[arg1].field_2304) + 1952 len (127 * deals[arg1].field_2304) + 64]
                else:
                    idx = (32 * deals[arg1].field_2304) + 1952
                    s = 0
                    while (64 * deals[arg1].field_2304) + 1920 > idx:
                        mem[idx + 32] = deals[arg1][s + 9].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require block.timestamp - deals[arg1].field_1024 < 24 * 3600 * deals[arg1].field_768
                    require arg2 > 0
                    deals[arg1].field_256 = arg2
                    emit 0x3f32eca1: Mask(32, 224, deals[arg1].field_2560), arg2
            else:
                require block.timestamp - deals[arg1].field_1280 < 24 * 3600 * deals[arg1].field_512
                require arg1 < sub_3bf251b9
                if not deals[arg1].field_2304:
                    require block.timestamp - deals[arg1].field_1024 < 24 * 3600 * deals[arg1].field_768
                    require arg2 > 0
                    deals[arg1].field_256 = arg2
                    mem[(64 * deals[arg1].field_2304) + 1952] = Mask(32, 224, deals[arg1].field_2560)
                    mem[(64 * deals[arg1].field_2304) + 1984] = arg2
                    emit 0x3f32eca1: mem[(64 * deals[arg1].field_2304) + 1952 len (127 * deals[arg1].field_2304) + 64]
                else:
                    idx = (32 * deals[arg1].field_2304) + 1952
                    s = 0
                    while (64 * deals[arg1].field_2304) + 1920 > idx:
                        mem[idx + 32] = deals[arg1][s + 9].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require block.timestamp - deals[arg1].field_1024 < 24 * 3600 * deals[arg1].field_768
                    require arg2 > 0
                    deals[arg1].field_256 = arg2
                    emit 0x3f32eca1: Mask(32, 224, deals[arg1].field_2560), arg2
        else:
            require deals[arg1].field_168
            require block.timestamp - deals[arg1].field_1280 >= 24 * 3600 * deals[arg1].field_512
            revert
    else:
        idx = 1024
        s = 0
        while (32 * deals[arg1].field_2304) + 992 > idx:
            mem[idx + 32] = deals[arg1][s + 9].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if not deals[arg1].field_160:
            if not deals[arg1].field_168:
                require arg1 < sub_3bf251b9
                if not deals[arg1].field_2304:
                    require block.timestamp - deals[arg1].field_1024 < 24 * 3600 * deals[arg1].field_768
                    require arg2 > 0
                    deals[arg1].field_256 = arg2
                    emit 0x3f32eca1: Mask(32, 224, deals[arg1].field_2560), arg2
                else:
                    idx = (32 * deals[arg1].field_2304) + 1952
                    s = 0
                    while (64 * deals[arg1].field_2304) + 1920 > idx:
                        mem[idx + 32] = deals[arg1][s + 9].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require block.timestamp - deals[arg1].field_1024 < 24 * 3600 * deals[arg1].field_768
                    require arg2 > 0
                    deals[arg1].field_256 = arg2
                    emit 0x3f32eca1: Mask(32, 224, deals[arg1].field_2560), arg2
            else:
                require block.timestamp - deals[arg1].field_1280 < 24 * 3600 * deals[arg1].field_512
                require arg1 < sub_3bf251b9
                if not deals[arg1].field_2304:
                    require block.timestamp - deals[arg1].field_1024 < 24 * 3600 * deals[arg1].field_768
                    require arg2 > 0
                    deals[arg1].field_256 = arg2
                    emit 0x3f32eca1: Mask(32, 224, deals[arg1].field_2560), arg2
                else:
                    idx = (32 * deals[arg1].field_2304) + 1952
                    s = 0
                    while (64 * deals[arg1].field_2304) + 1920 > idx:
                        mem[idx + 32] = deals[arg1][s + 9].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require block.timestamp - deals[arg1].field_1024 < 24 * 3600 * deals[arg1].field_768
                    require arg2 > 0
                    deals[arg1].field_256 = arg2
                    emit 0x3f32eca1: Mask(32, 224, deals[arg1].field_2560), arg2
        else:
            require deals[arg1].field_168
            require block.timestamp - deals[arg1].field_1280 >= 24 * 3600 * deals[arg1].field_512
            revert
}

function sub_3787cb54(?) {
    require msg.sender == sub_9df8ed43Address
    require arg1 < sub_3bf251b9
    if not deals[arg1].field_2304:
        if not deals[arg1].field_160:
            require deals[arg1].field_168
            require block.timestamp - deals[arg1].field_1280 >= 24 * 3600 * deals[arg1].field_512
            require deals[arg1].field_1536 > 0
            require deals[arg1].field_1536 >= deals[arg1].field_2048
            deals[arg1].field_1536 = deals[arg1].field_2048
            require ext_code.size(deals[arg1].field_0)
            call deals[arg1].field_0.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, deals[arg1].field_1536 - deals[arg1].field_2048
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                require return_data.size >= 32
        else:
            if not deals[arg1].field_168:
                require deals[arg1].field_1536 > 0
                require deals[arg1].field_1536 >= deals[arg1].field_2048
                deals[arg1].field_1536 = deals[arg1].field_2048
                require ext_code.size(deals[arg1].field_0)
                call deals[arg1].field_0.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, deals[arg1].field_1536 - deals[arg1].field_2048
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
            else:
                if block.timestamp - deals[arg1].field_1280 < 24 * 3600 * deals[arg1].field_512:
                    require deals[arg1].field_1536 > 0
                    require deals[arg1].field_1536 >= deals[arg1].field_2048
                    deals[arg1].field_1536 = deals[arg1].field_2048
                    require ext_code.size(deals[arg1].field_0)
                    call deals[arg1].field_0.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, deals[arg1].field_1536 - deals[arg1].field_2048
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                else:
                    require deals[arg1].field_1536 > 0
                    require deals[arg1].field_1536 >= deals[arg1].field_2048
                    deals[arg1].field_1536 = deals[arg1].field_2048
                    require ext_code.size(deals[arg1].field_0)
                    call deals[arg1].field_0.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, deals[arg1].field_1536 - deals[arg1].field_2048
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
    else:
        idx = 1024
        s = 0
        while (32 * deals[arg1].field_2304) + 992 > idx:
            mem[idx + 32] = deals[arg1][s + 9].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if not deals[arg1].field_160:
            require deals[arg1].field_168
            require block.timestamp - deals[arg1].field_1280 >= 24 * 3600 * deals[arg1].field_512
            require deals[arg1].field_1536 > 0
            require deals[arg1].field_1536 >= deals[arg1].field_2048
            deals[arg1].field_1536 = deals[arg1].field_2048
            require ext_code.size(deals[arg1].field_0)
            call deals[arg1].field_0.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, deals[arg1].field_1536 - deals[arg1].field_2048
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                require return_data.size >= 32
        else:
            if not deals[arg1].field_168:
                require deals[arg1].field_1536 > 0
                require deals[arg1].field_1536 >= deals[arg1].field_2048
                deals[arg1].field_1536 = deals[arg1].field_2048
                require ext_code.size(deals[arg1].field_0)
                call deals[arg1].field_0.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, deals[arg1].field_1536 - deals[arg1].field_2048
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
            else:
                if block.timestamp - deals[arg1].field_1280 < 24 * 3600 * deals[arg1].field_512:
                    require deals[arg1].field_1536 > 0
                    require deals[arg1].field_1536 >= deals[arg1].field_2048
                    deals[arg1].field_1536 = deals[arg1].field_2048
                    require ext_code.size(deals[arg1].field_0)
                    call deals[arg1].field_0.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, deals[arg1].field_1536 - deals[arg1].field_2048
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                else:
                    require deals[arg1].field_1536 > 0
                    require deals[arg1].field_1536 >= deals[arg1].field_2048
                    deals[arg1].field_1536 = deals[arg1].field_2048
                    require ext_code.size(deals[arg1].field_0)
                    call deals[arg1].field_0.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, deals[arg1].field_1536 - deals[arg1].field_2048
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
}

function sub_948cb26f(?) {
    require msg.sender == sub_9df8ed43Address
    require arg1 < sub_3bf251b9
    if not deals[arg1].field_2304:
        if not deals[arg1].field_160:
            if not deals[arg1].field_168:
                require arg1 < sub_3bf251b9
                if not deals[arg1].field_2304:
                    require block.timestamp - deals[arg1].field_1024 < 24 * 3600 * deals[arg1].field_768
                    require arg2 > 0
                    mem[(64 * deals[arg1].field_2304) + 1956] = msg.sender
                    mem[(64 * deals[arg1].field_2304) + 1988] = this.address
                    require ext_code.size(deals[arg1].field_0)
                    call deals[arg1].field_0.allowance(address arg1, address arg2) with:
                         gas gas_remaining wei
                        args mem[(64 * deals[arg1].field_2304) + 1956 len (127 * deals[arg1].field_2304) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        require ext_call.return_data[0] >= arg2
                        require deals[arg1].field_1536 + arg2 >= deals[arg1].field_1536
                        deals[arg1].field_1536 += arg2
                        mem[(64 * deals[arg1].field_2304) + 1956] = msg.sender
                        mem[(64 * deals[arg1].field_2304) + 1988] = this.address
                        mem[(64 * deals[arg1].field_2304) + 2020] = arg2
                        require ext_code.size(deals[arg1].field_0)
                        call deals[arg1].field_0.transferFrom(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args mem[(64 * deals[arg1].field_2304) + 1956 len (127 * deals[arg1].field_2304) + 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            mem[(64 * deals[arg1].field_2304) + 1952] = Mask(32, 224, deals[arg1].field_2560)
                            mem[(64 * deals[arg1].field_2304) + 1984] = arg2
                            mem[(64 * deals[arg1].field_2304) + 2016] = deals[arg1].field_1536
                            emit 0x83f76a74: mem[(64 * deals[arg1].field_2304) + 1952 len (127 * deals[arg1].field_2304) + 96]
                else:
                    idx = (32 * deals[arg1].field_2304) + 1952
                    s = 0
                    while (64 * deals[arg1].field_2304) + 1920 > idx:
                        mem[idx + 32] = deals[arg1][s + 9].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require block.timestamp - deals[arg1].field_1024 < 24 * 3600 * deals[arg1].field_768
                    require arg2 > 0
                    require ext_code.size(deals[arg1].field_0)
                    call deals[arg1].field_0.allowance(address arg1, address arg2) with:
                         gas gas_remaining wei
                        args msg.sender, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        require ext_call.return_data[0] >= arg2
                        require deals[arg1].field_1536 + arg2 >= deals[arg1].field_1536
                        deals[arg1].field_1536 += arg2
                        require ext_code.size(deals[arg1].field_0)
                        call deals[arg1].field_0.transferFrom(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            emit 0x83f76a74: Mask(32, 224, deals[arg1].field_2560), arg2, deals[arg1].field_1536
            else:
                require block.timestamp - deals[arg1].field_1280 < 24 * 3600 * deals[arg1].field_512
                require arg1 < sub_3bf251b9
                if not deals[arg1].field_2304:
                    require block.timestamp - deals[arg1].field_1024 < 24 * 3600 * deals[arg1].field_768
                    require arg2 > 0
                    mem[(64 * deals[arg1].field_2304) + 1956] = msg.sender
                    mem[(64 * deals[arg1].field_2304) + 1988] = this.address
                    require ext_code.size(deals[arg1].field_0)
                    call deals[arg1].field_0.allowance(address arg1, address arg2) with:
                         gas gas_remaining wei
                        args mem[(64 * deals[arg1].field_2304) + 1956 len (127 * deals[arg1].field_2304) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        require ext_call.return_data[0] >= arg2
                        require deals[arg1].field_1536 + arg2 >= deals[arg1].field_1536
                        deals[arg1].field_1536 += arg2
                        mem[(64 * deals[arg1].field_2304) + 1956] = msg.sender
                        mem[(64 * deals[arg1].field_2304) + 1988] = this.address
                        mem[(64 * deals[arg1].field_2304) + 2020] = arg2
                        require ext_code.size(deals[arg1].field_0)
                        call deals[arg1].field_0.transferFrom(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args mem[(64 * deals[arg1].field_2304) + 1956 len (127 * deals[arg1].field_2304) + 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            mem[(64 * deals[arg1].field_2304) + 1952] = Mask(32, 224, deals[arg1].field_2560)
                            mem[(64 * deals[arg1].field_2304) + 1984] = arg2
                            mem[(64 * deals[arg1].field_2304) + 2016] = deals[arg1].field_1536
                            emit 0x83f76a74: mem[(64 * deals[arg1].field_2304) + 1952 len (127 * deals[arg1].field_2304) + 96]
                else:
                    idx = (32 * deals[arg1].field_2304) + 1952
                    s = 0
                    while (64 * deals[arg1].field_2304) + 1920 > idx:
                        mem[idx + 32] = deals[arg1][s + 9].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require block.timestamp - deals[arg1].field_1024 < 24 * 3600 * deals[arg1].field_768
                    require arg2 > 0
                    require ext_code.size(deals[arg1].field_0)
                    call deals[arg1].field_0.allowance(address arg1, address arg2) with:
                         gas gas_remaining wei
                        args msg.sender, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        require ext_call.return_data[0] >= arg2
                        require deals[arg1].field_1536 + arg2 >= deals[arg1].field_1536
                        deals[arg1].field_1536 += arg2
                        require ext_code.size(deals[arg1].field_0)
                        call deals[arg1].field_0.transferFrom(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            emit 0x83f76a74: Mask(32, 224, deals[arg1].field_2560), arg2, deals[arg1].field_1536
        else:
            require deals[arg1].field_168
            require block.timestamp - deals[arg1].field_1280 >= 24 * 3600 * deals[arg1].field_512
            revert
    else:
        idx = 1024
        s = 0
        while (32 * deals[arg1].field_2304) + 992 > idx:
            mem[idx + 32] = deals[arg1][s + 9].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if not deals[arg1].field_160:
            if not deals[arg1].field_168:
                require arg1 < sub_3bf251b9
                if not deals[arg1].field_2304:
                    require block.timestamp - deals[arg1].field_1024 < 24 * 3600 * deals[arg1].field_768
                    require arg2 > 0
                    require ext_code.size(deals[arg1].field_0)
                    call deals[arg1].field_0.allowance(address arg1, address arg2) with:
                         gas gas_remaining wei
                        args msg.sender, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        require ext_call.return_data[0] >= arg2
                        require deals[arg1].field_1536 + arg2 >= deals[arg1].field_1536
                        deals[arg1].field_1536 += arg2
                        require ext_code.size(deals[arg1].field_0)
                        call deals[arg1].field_0.transferFrom(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            emit 0x83f76a74: Mask(32, 224, deals[arg1].field_2560), arg2, deals[arg1].field_1536
                else:
                    idx = (32 * deals[arg1].field_2304) + 1952
                    s = 0
                    while (64 * deals[arg1].field_2304) + 1920 > idx:
                        mem[idx + 32] = deals[arg1][s + 9].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require block.timestamp - deals[arg1].field_1024 < 24 * 3600 * deals[arg1].field_768
                    require arg2 > 0
                    require ext_code.size(deals[arg1].field_0)
                    call deals[arg1].field_0.allowance(address arg1, address arg2) with:
                         gas gas_remaining wei
                        args msg.sender, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        require ext_call.return_data[0] >= arg2
                        require deals[arg1].field_1536 + arg2 >= deals[arg1].field_1536
                        deals[arg1].field_1536 += arg2
                        require ext_code.size(deals[arg1].field_0)
                        call deals[arg1].field_0.transferFrom(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            emit 0x83f76a74: Mask(32, 224, deals[arg1].field_2560), arg2, deals[arg1].field_1536
            else:
                require block.timestamp - deals[arg1].field_1280 < 24 * 3600 * deals[arg1].field_512
                require arg1 < sub_3bf251b9
                if not deals[arg1].field_2304:
                    require block.timestamp - deals[arg1].field_1024 < 24 * 3600 * deals[arg1].field_768
                    require arg2 > 0
                    require ext_code.size(deals[arg1].field_0)
                    call deals[arg1].field_0.allowance(address arg1, address arg2) with:
                         gas gas_remaining wei
                        args msg.sender, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        require ext_call.return_data[0] >= arg2
                        require deals[arg1].field_1536 + arg2 >= deals[arg1].field_1536
                        deals[arg1].field_1536 += arg2
                        require ext_code.size(deals[arg1].field_0)
                        call deals[arg1].field_0.transferFrom(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            emit 0x83f76a74: Mask(32, 224, deals[arg1].field_2560), arg2, deals[arg1].field_1536
                else:
                    idx = (32 * deals[arg1].field_2304) + 1952
                    s = 0
                    while (64 * deals[arg1].field_2304) + 1920 > idx:
                        mem[idx + 32] = deals[arg1][s + 9].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require block.timestamp - deals[arg1].field_1024 < 24 * 3600 * deals[arg1].field_768
                    require arg2 > 0
                    require ext_code.size(deals[arg1].field_0)
                    call deals[arg1].field_0.allowance(address arg1, address arg2) with:
                         gas gas_remaining wei
                        args msg.sender, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        require ext_call.return_data[0] >= arg2
                        require deals[arg1].field_1536 + arg2 >= deals[arg1].field_1536
                        deals[arg1].field_1536 += arg2
                        require ext_code.size(deals[arg1].field_0)
                        call deals[arg1].field_0.transferFrom(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            emit 0x83f76a74: Mask(32, 224, deals[arg1].field_2560), arg2, deals[arg1].field_1536
        else:
            require deals[arg1].field_168
            require block.timestamp - deals[arg1].field_1280 >= 24 * 3600 * deals[arg1].field_512
            revert
}

function sub_8209303f(?) {
    require arg1 < sub_3bf251b9
    if not deals[arg1].field_2304:
        if not deals[arg1].field_160:
            if not deals[arg1].field_168:
                require arg1 < sub_3bf251b9
                if not deals[arg1].field_2304:
                    require block.timestamp - deals[arg1].field_1024 < 24 * 3600 * deals[arg1].field_768
                    if deals[arg1].field_2592:
                        if msg.sender == adminAddress:
                            require arg2
                            require not sub_eaefe81b[arg1][address(arg2)]
                            require sub_3eb3b9d7 + 1 >= sub_3eb3b9d7
                            sub_3eb3b9d7++
                            affiliates[stor3].field_0 = arg2
                            affiliates[stor3].field_160 = 0
                            affiliates[stor3].field_256 = 0
                            affiliates[stor3].field_512 = 0
                            deals[arg1].field_2304++
                            stor[('array', 9, ('map', ('param', 'arg1'), ('name', 'deals', 4))) + deals[arg1].field_2304].field_0 = sub_3eb3b9d7
                            require deals[arg1].field_1792 + 1 >= deals[arg1].field_1792
                            deals[arg1].field_1792++
                            sub_27de3446[address(arg2)].field_0++
                            sub_27de3446[address(arg2)][sub_27de3446[address(arg2)].field_0].field_0 = arg1
                            require sub_84238da5[address(arg2)] + 1 >= sub_84238da5[address(arg2)]
                            sub_84238da5[address(arg2)]++
                            sub_78c16b90[arg1][address(arg2)] = sub_3eb3b9d7
                            sub_eaefe81b[arg1][address(arg2)] = 1
                            sub_eff56b04[stor3] = arg1
                            mem[(64 * deals[arg1].field_2304) + 2080] = Mask(32, 224, deals[arg1].field_2560)
                            mem[(64 * deals[arg1].field_2304) + 2112] = sub_3eb3b9d7
                            emit 0x72c6e492: mem[(64 * deals[arg1].field_2304) + 2080 len (127 * deals[arg1].field_2304) + 64], msg.sender, arg1, arg2
                        else:
                            require msg.sender == sub_9df8ed43Address
                            require arg2
                            require not sub_eaefe81b[arg1][address(arg2)]
                            require sub_3eb3b9d7 + 1 >= sub_3eb3b9d7
                            sub_3eb3b9d7++
                            affiliates[stor3].field_0 = arg2
                            affiliates[stor3].field_160 = 0
                            affiliates[stor3].field_256 = 0
                            affiliates[stor3].field_512 = 0
                            deals[arg1].field_2304++
                            stor[('array', 9, ('map', ('param', 'arg1'), ('name', 'deals', 4))) + deals[arg1].field_2304].field_0 = sub_3eb3b9d7
                            require deals[arg1].field_1792 + 1 >= deals[arg1].field_1792
                            deals[arg1].field_1792++
                            sub_27de3446[address(arg2)].field_0++
                            sub_27de3446[address(arg2)][sub_27de3446[address(arg2)].field_0].field_0 = arg1
                            require sub_84238da5[address(arg2)] + 1 >= sub_84238da5[address(arg2)]
                            sub_84238da5[address(arg2)]++
                            sub_78c16b90[arg1][address(arg2)] = sub_3eb3b9d7
                            sub_eaefe81b[arg1][address(arg2)] = 1
                            sub_eff56b04[stor3] = arg1
                            mem[(64 * deals[arg1].field_2304) + 2080] = Mask(32, 224, deals[arg1].field_2560)
                            mem[(64 * deals[arg1].field_2304) + 2112] = sub_3eb3b9d7
                            emit 0x72c6e492: mem[(64 * deals[arg1].field_2304) + 2080 len (127 * deals[arg1].field_2304) + 64], msg.sender, arg1, arg2
                    else:
                        require msg.sender == sub_9df8ed43Address
                        require arg2
                        require not sub_eaefe81b[arg1][address(arg2)]
                        require sub_3eb3b9d7 + 1 >= sub_3eb3b9d7
                        sub_3eb3b9d7++
                        affiliates[stor3].field_0 = arg2
                        affiliates[stor3].field_160 = 0
                        affiliates[stor3].field_256 = 0
                        affiliates[stor3].field_512 = 0
                        deals[arg1].field_2304++
                        stor[('array', 9, ('map', ('param', 'arg1'), ('name', 'deals', 4))) + deals[arg1].field_2304].field_0 = sub_3eb3b9d7
                        require deals[arg1].field_1792 + 1 >= deals[arg1].field_1792
                        deals[arg1].field_1792++
                        sub_27de3446[address(arg2)].field_0++
                        sub_27de3446[address(arg2)][sub_27de3446[address(arg2)].field_0].field_0 = arg1
                        require sub_84238da5[address(arg2)] + 1 >= sub_84238da5[address(arg2)]
                        sub_84238da5[address(arg2)]++
                        sub_78c16b90[arg1][address(arg2)] = sub_3eb3b9d7
                        sub_eaefe81b[arg1][address(arg2)] = 1
                        sub_eff56b04[stor3] = arg1
                        mem[(64 * deals[arg1].field_2304) + 2080] = Mask(32, 224, deals[arg1].field_2560)
                        mem[(64 * deals[arg1].field_2304) + 2112] = sub_3eb3b9d7
                        emit 0x72c6e492: mem[(64 * deals[arg1].field_2304) + 2080 len (127 * deals[arg1].field_2304) + 64], msg.sender, arg1, arg2
                else:
                    idx = (32 * deals[arg1].field_2304) + 2080
                    s = 0
                    while (64 * deals[arg1].field_2304) + 2048 > idx:
                        mem[idx + 32] = deals[arg1][s + 9].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require block.timestamp - deals[arg1].field_1024 < 24 * 3600 * deals[arg1].field_768
                    if deals[arg1].field_2592:
                        if msg.sender == adminAddress:
                            require arg2
                            require not sub_eaefe81b[arg1][address(arg2)]
                            require sub_3eb3b9d7 + 1 >= sub_3eb3b9d7
                            sub_3eb3b9d7++
                            affiliates[stor3].field_0 = arg2
                            affiliates[stor3].field_160 = 0
                            affiliates[stor3].field_256 = 0
                            affiliates[stor3].field_512 = 0
                            deals[arg1].field_2304++
                            stor[('array', 9, ('map', ('param', 'arg1'), ('name', 'deals', 4))) + deals[arg1].field_2304].field_0 = sub_3eb3b9d7
                            require deals[arg1].field_1792 + 1 >= deals[arg1].field_1792
                            deals[arg1].field_1792++
                            sub_27de3446[address(arg2)].field_0++
                            sub_27de3446[address(arg2)][sub_27de3446[address(arg2)].field_0].field_0 = arg1
                            require sub_84238da5[address(arg2)] + 1 >= sub_84238da5[address(arg2)]
                            sub_84238da5[address(arg2)]++
                            sub_78c16b90[arg1][address(arg2)] = sub_3eb3b9d7
                            sub_eaefe81b[arg1][address(arg2)] = 1
                            sub_eff56b04[stor3] = arg1
                            emit 0x72c6e492: Mask(32, 224, deals[arg1].field_2560), sub_3eb3b9d7, msg.sender, arg1, arg2
                        else:
                            require msg.sender == sub_9df8ed43Address
                            require arg2
                            require not sub_eaefe81b[arg1][address(arg2)]
                            require sub_3eb3b9d7 + 1 >= sub_3eb3b9d7
                            sub_3eb3b9d7++
                            affiliates[stor3].field_0 = arg2
                            affiliates[stor3].field_160 = 0
                            affiliates[stor3].field_256 = 0
                            affiliates[stor3].field_512 = 0
                            deals[arg1].field_2304++
                            stor[('array', 9, ('map', ('param', 'arg1'), ('name', 'deals', 4))) + deals[arg1].field_2304].field_0 = sub_3eb3b9d7
                            require deals[arg1].field_1792 + 1 >= deals[arg1].field_1792
                            deals[arg1].field_1792++
                            sub_27de3446[address(arg2)].field_0++
                            sub_27de3446[address(arg2)][sub_27de3446[address(arg2)].field_0].field_0 = arg1
                            require sub_84238da5[address(arg2)] + 1 >= sub_84238da5[address(arg2)]
                            sub_84238da5[address(arg2)]++
                            sub_78c16b90[arg1][address(arg2)] = sub_3eb3b9d7
                            sub_eaefe81b[arg1][address(arg2)] = 1
                            sub_eff56b04[stor3] = arg1
                            emit 0x72c6e492: Mask(32, 224, deals[arg1].field_2560), sub_3eb3b9d7, msg.sender, arg1, arg2
                    else:
                        require msg.sender == sub_9df8ed43Address
                        require arg2
                        require not sub_eaefe81b[arg1][address(arg2)]
                        require sub_3eb3b9d7 + 1 >= sub_3eb3b9d7
                        sub_3eb3b9d7++
                        affiliates[stor3].field_0 = arg2
                        affiliates[stor3].field_160 = 0
                        affiliates[stor3].field_256 = 0
                        affiliates[stor3].field_512 = 0
                        deals[arg1].field_2304++
                        stor[('array', 9, ('map', ('param', 'arg1'), ('name', 'deals', 4))) + deals[arg1].field_2304].field_0 = sub_3eb3b9d7
                        require deals[arg1].field_1792 + 1 >= deals[arg1].field_1792
                        deals[arg1].field_1792++
                        sub_27de3446[address(arg2)].field_0++
                        sub_27de3446[address(arg2)][sub_27de3446[address(arg2)].field_0].field_0 = arg1
                        require sub_84238da5[address(arg2)] + 1 >= sub_84238da5[address(arg2)]
                        sub_84238da5[address(arg2)]++
                        sub_78c16b90[arg1][address(arg2)] = sub_3eb3b9d7
                        sub_eaefe81b[arg1][address(arg2)] = 1
                        sub_eff56b04[stor3] = arg1
                        emit 0x72c6e492: Mask(32, 224, deals[arg1].field_2560), sub_3eb3b9d7, msg.sender, arg1, arg2
            else:
                require block.timestamp - deals[arg1].field_1280 < 24 * 3600 * deals[arg1].field_512
                require arg1 < sub_3bf251b9
                if not deals[arg1].field_2304:
                    require block.timestamp - deals[arg1].field_1024 < 24 * 3600 * deals[arg1].field_768
                    if deals[arg1].field_2592:
                        if msg.sender == adminAddress:
                            require arg2
                            require not sub_eaefe81b[arg1][address(arg2)]
                            require sub_3eb3b9d7 + 1 >= sub_3eb3b9d7
                            sub_3eb3b9d7++
                            affiliates[stor3].field_0 = arg2
                            affiliates[stor3].field_160 = 0
                            affiliates[stor3].field_256 = 0
                            affiliates[stor3].field_512 = 0
                            deals[arg1].field_2304++
                            stor[('array', 9, ('map', ('param', 'arg1'), ('name', 'deals', 4))) + deals[arg1].field_2304].field_0 = sub_3eb3b9d7
                            require deals[arg1].field_1792 + 1 >= deals[arg1].field_1792
                            deals[arg1].field_1792++
                            sub_27de3446[address(arg2)].field_0++
                            sub_27de3446[address(arg2)][sub_27de3446[address(arg2)].field_0].field_0 = arg1
                            require sub_84238da5[address(arg2)] + 1 >= sub_84238da5[address(arg2)]
                            sub_84238da5[address(arg2)]++
                            sub_78c16b90[arg1][address(arg2)] = sub_3eb3b9d7
                            sub_eaefe81b[arg1][address(arg2)] = 1
                            sub_eff56b04[stor3] = arg1
                            mem[(64 * deals[arg1].field_2304) + 2080] = Mask(32, 224, deals[arg1].field_2560)
                            mem[(64 * deals[arg1].field_2304) + 2112] = sub_3eb3b9d7
                            emit 0x72c6e492: mem[(64 * deals[arg1].field_2304) + 2080 len (127 * deals[arg1].field_2304) + 64], msg.sender, arg1, arg2
                        else:
                            require msg.sender == sub_9df8ed43Address
                            require arg2
                            require not sub_eaefe81b[arg1][address(arg2)]
                            require sub_3eb3b9d7 + 1 >= sub_3eb3b9d7
                            sub_3eb3b9d7++
                            affiliates[stor3].field_0 = arg2
                            affiliates[stor3].field_160 = 0
                            affiliates[stor3].field_256 = 0
                            affiliates[stor3].field_512 = 0
                            deals[arg1].field_2304++
                            stor[('array', 9, ('map', ('param', 'arg1'), ('name', 'deals', 4))) + deals[arg1].field_2304].field_0 = sub_3eb3b9d7
                            require deals[arg1].field_1792 + 1 >= deals[arg1].field_1792
                            deals[arg1].field_1792++
                            sub_27de3446[address(arg2)].field_0++
                            sub_27de3446[address(arg2)][sub_27de3446[address(arg2)].field_0].field_0 = arg1
                            require sub_84238da5[address(arg2)] + 1 >= sub_84238da5[address(arg2)]
                            sub_84238da5[address(arg2)]++
                            sub_78c16b90[arg1][address(arg2)] = sub_3eb3b9d7
                            sub_eaefe81b[arg1][address(arg2)] = 1
                            sub_eff56b04[stor3] = arg1
                            mem[(64 * deals[arg1].field_2304) + 2080] = Mask(32, 224, deals[arg1].field_2560)
                            mem[(64 * deals[arg1].field_2304) + 2112] = sub_3eb3b9d7
                            emit 0x72c6e492: mem[(64 * deals[arg1].field_2304) + 2080 len (127 * deals[arg1].field_2304) + 64], msg.sender, arg1, arg2
                    else:
                        require msg.sender == sub_9df8ed43Address
                        require arg2
                        require not sub_eaefe81b[arg1][address(arg2)]
                        require sub_3eb3b9d7 + 1 >= sub_3eb3b9d7
                        sub_3eb3b9d7++
                        affiliates[stor3].field_0 = arg2
                        affiliates[stor3].field_160 = 0
                        affiliates[stor3].field_256 = 0
                        affiliates[stor3].field_512 = 0
                        deals[arg1].field_2304++
                        stor[('array', 9, ('map', ('param', 'arg1'), ('name', 'deals', 4))) + deals[arg1].field_2304].field_0 = sub_3eb3b9d7
                        require deals[arg1].field_1792 + 1 >= deals[arg1].field_1792
                        deals[arg1].field_1792++
                        sub_27de3446[address(arg2)].field_0++
                        sub_27de3446[address(arg2)][sub_27de3446[address(arg2)].field_0].field_0 = arg1
                        require sub_84238da5[address(arg2)] + 1 >= sub_84238da5[address(arg2)]
                        sub_84238da5[address(arg2)]++
                        sub_78c16b90[arg1][address(arg2)] = sub_3eb3b9d7
                        sub_eaefe81b[arg1][address(arg2)] = 1
                        sub_eff56b04[stor3] = arg1
                        mem[(64 * deals[arg1].field_2304) + 2080] = Mask(32, 224, deals[arg1].field_2560)
                        mem[(64 * deals[arg1].field_2304) + 2112] = sub_3eb3b9d7
                        emit 0x72c6e492: mem[(64 * deals[arg1].field_2304) + 2080 len (127 * deals[arg1].field_2304) + 64], msg.sender, arg1, arg2
                else:
                    idx = (32 * deals[arg1].field_2304) + 2080
                    s = 0
                    while (64 * deals[arg1].field_2304) + 2048 > idx:
                        mem[idx + 32] = deals[arg1][s + 9].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require block.timestamp - deals[arg1].field_1024 < 24 * 3600 * deals[arg1].field_768
                    if deals[arg1].field_2592:
                        if msg.sender == adminAddress:
                            require arg2
                            require not sub_eaefe81b[arg1][address(arg2)]
                            require sub_3eb3b9d7 + 1 >= sub_3eb3b9d7
                            sub_3eb3b9d7++
                            affiliates[stor3].field_0 = arg2
                            affiliates[stor3].field_160 = 0
                            affiliates[stor3].field_256 = 0
                            affiliates[stor3].field_512 = 0
                            deals[arg1].field_2304++
                            stor[('array', 9, ('map', ('param', 'arg1'), ('name', 'deals', 4))) + deals[arg1].field_2304].field_0 = sub_3eb3b9d7
                            require deals[arg1].field_1792 + 1 >= deals[arg1].field_1792
                            deals[arg1].field_1792++
                            sub_27de3446[address(arg2)].field_0++
                            sub_27de3446[address(arg2)][sub_27de3446[address(arg2)].field_0].field_0 = arg1
                            require sub_84238da5[address(arg2)] + 1 >= sub_84238da5[address(arg2)]
                            sub_84238da5[address(arg2)]++
                            sub_78c16b90[arg1][address(arg2)] = sub_3eb3b9d7
                            sub_eaefe81b[arg1][address(arg2)] = 1
                            sub_eff56b04[stor3] = arg1
                            emit 0x72c6e492: Mask(32, 224, deals[arg1].field_2560), sub_3eb3b9d7, msg.sender, arg1, arg2
                        else:
                            require msg.sender == sub_9df8ed43Address
                            require arg2
                            require not sub_eaefe81b[arg1][address(arg2)]
                            require sub_3eb3b9d7 + 1 >= sub_3eb3b9d7
                            sub_3eb3b9d7++
                            affiliates[stor3].field_0 = arg2
                            affiliates[stor3].field_160 = 0
                            affiliates[stor3].field_256 = 0
                            affiliates[stor3].field_512 = 0
                            deals[arg1].field_2304++
                            stor[('array', 9, ('map', ('param', 'arg1'), ('name', 'deals', 4))) + deals[arg1].field_2304].field_0 = sub_3eb3b9d7
                            require deals[arg1].field_1792 + 1 >= deals[arg1].field_1792
                            deals[arg1].field_1792++
                            sub_27de3446[address(arg2)].field_0++
                            sub_27de3446[address(arg2)][sub_27de3446[address(arg2)].field_0].field_0 = arg1
                            require sub_84238da5[address(arg2)] + 1 >= sub_84238da5[address(arg2)]
                            sub_84238da5[address(arg2)]++
                            sub_78c16b90[arg1][address(arg2)] = sub_3eb3b9d7
                            sub_eaefe81b[arg1][address(arg2)] = 1
                            sub_eff56b04[stor3] = arg1
                            emit 0x72c6e492: Mask(32, 224, deals[arg1].field_2560), sub_3eb3b9d7, msg.sender, arg1, arg2
                    else:
                        require msg.sender == sub_9df8ed43Address
                        require arg2
                        require not sub_eaefe81b[arg1][address(arg2)]
                        require sub_3eb3b9d7 + 1 >= sub_3eb3b9d7
                        sub_3eb3b9d7++
                        affiliates[stor3].field_0 = arg2
                        affiliates[stor3].field_160 = 0
                        affiliates[stor3].field_256 = 0
                        affiliates[stor3].field_512 = 0
                        deals[arg1].field_2304++
                        stor[('array', 9, ('map', ('param', 'arg1'), ('name', 'deals', 4))) + deals[arg1].field_2304].field_0 = sub_3eb3b9d7
                        require deals[arg1].field_1792 + 1 >= deals[arg1].field_1792
                        deals[arg1].field_1792++
                        sub_27de3446[address(arg2)].field_0++
                        sub_27de3446[address(arg2)][sub_27de3446[address(arg2)].field_0].field_0 = arg1
                        require sub_84238da5[address(arg2)] + 1 >= sub_84238da5[address(arg2)]
                        sub_84238da5[address(arg2)]++
                        sub_78c16b90[arg1][address(arg2)] = sub_3eb3b9d7
                        sub_eaefe81b[arg1][address(arg2)] = 1
                        sub_eff56b04[stor3] = arg1
                        emit 0x72c6e492: Mask(32, 224, deals[arg1].field_2560), sub_3eb3b9d7, msg.sender, arg1, arg2
        else:
            require deals[arg1].field_168
            require block.timestamp - deals[arg1].field_1280 >= 24 * 3600 * deals[arg1].field_512
            revert
    else:
        idx = 1152
        s = 0
        while (32 * deals[arg1].field_2304) + 1120 > idx:
            mem[idx + 32] = deals[arg1][s + 9].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if not deals[arg1].field_160:
            if not deals[arg1].field_168:
                require arg1 < sub_3bf251b9
                if not deals[arg1].field_2304:
                    require block.timestamp - deals[arg1].field_1024 < 24 * 3600 * deals[arg1].field_768
                    if deals[arg1].field_2592:
                        if msg.sender == adminAddress:
                            require arg2
                            require not sub_eaefe81b[arg1][address(arg2)]
                            require sub_3eb3b9d7 + 1 >= sub_3eb3b9d7
                            sub_3eb3b9d7++
                            affiliates[stor3].field_0 = arg2
                            affiliates[stor3].field_160 = 0
                            affiliates[stor3].field_256 = 0
                            affiliates[stor3].field_512 = 0
                            deals[arg1].field_2304++
                            stor[('array', 9, ('map', ('param', 'arg1'), ('name', 'deals', 4))) + deals[arg1].field_2304].field_0 = sub_3eb3b9d7
                            require deals[arg1].field_1792 + 1 >= deals[arg1].field_1792
                            deals[arg1].field_1792++
                            sub_27de3446[address(arg2)].field_0++
                            sub_27de3446[address(arg2)][sub_27de3446[address(arg2)].field_0].field_0 = arg1
                            require sub_84238da5[address(arg2)] + 1 >= sub_84238da5[address(arg2)]
                            sub_84238da5[address(arg2)]++
                            sub_78c16b90[arg1][address(arg2)] = sub_3eb3b9d7
                            sub_eaefe81b[arg1][address(arg2)] = 1
                            sub_eff56b04[stor3] = arg1
                            emit 0x72c6e492: Mask(32, 224, deals[arg1].field_2560), sub_3eb3b9d7, msg.sender, arg1, arg2
                        else:
                            require msg.sender == sub_9df8ed43Address
                            require arg2
                            require not sub_eaefe81b[arg1][address(arg2)]
                            require sub_3eb3b9d7 + 1 >= sub_3eb3b9d7
                            sub_3eb3b9d7++
                            affiliates[stor3].field_0 = arg2
                            affiliates[stor3].field_160 = 0
                            affiliates[stor3].field_256 = 0
                            affiliates[stor3].field_512 = 0
                            deals[arg1].field_2304++
                            stor[('array', 9, ('map', ('param', 'arg1'), ('name', 'deals', 4))) + deals[arg1].field_2304].field_0 = sub_3eb3b9d7
                            require deals[arg1].field_1792 + 1 >= deals[arg1].field_1792
                            deals[arg1].field_1792++
                            sub_27de3446[address(arg2)].field_0++
                            sub_27de3446[address(arg2)][sub_27de3446[address(arg2)].field_0].field_0 = arg1
                            require sub_84238da5[address(arg2)] + 1 >= sub_84238da5[address(arg2)]
                            sub_84238da5[address(arg2)]++
                            sub_78c16b90[arg1][address(arg2)] = sub_3eb3b9d7
                            sub_eaefe81b[arg1][address(arg2)] = 1
                            sub_eff56b04[stor3] = arg1
                            emit 0x72c6e492: Mask(32, 224, deals[arg1].field_2560), sub_3eb3b9d7, msg.sender, arg1, arg2
                    else:
                        require msg.sender == sub_9df8ed43Address
                        require arg2
                        require not sub_eaefe81b[arg1][address(arg2)]
                        require sub_3eb3b9d7 + 1 >= sub_3eb3b9d7
                        sub_3eb3b9d7++
                        affiliates[stor3].field_0 = arg2
                        affiliates[stor3].field_160 = 0
                        affiliates[stor3].field_256 = 0
                        affiliates[stor3].field_512 = 0
                        deals[arg1].field_2304++
                        stor[('array', 9, ('map', ('param', 'arg1'), ('name', 'deals', 4))) + deals[arg1].field_2304].field_0 = sub_3eb3b9d7
                        require deals[arg1].field_1792 + 1 >= deals[arg1].field_1792
                        deals[arg1].field_1792++
                        sub_27de3446[address(arg2)].field_0++
                        sub_27de3446[address(arg2)][sub_27de3446[address(arg2)].field_0].field_0 = arg1
                        require sub_84238da5[address(arg2)] + 1 >= sub_84238da5[address(arg2)]
                        sub_84238da5[address(arg2)]++
                        sub_78c16b90[arg1][address(arg2)] = sub_3eb3b9d7
                        sub_eaefe81b[arg1][address(arg2)] = 1
                        sub_eff56b04[stor3] = arg1
                        emit 0x72c6e492: Mask(32, 224, deals[arg1].field_2560), sub_3eb3b9d7, msg.sender, arg1, arg2
                else:
                    idx = (32 * deals[arg1].field_2304) + 2080
                    s = 0
                    while (64 * deals[arg1].field_2304) + 2048 > idx:
                        mem[idx + 32] = deals[arg1][s + 9].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require block.timestamp - deals[arg1].field_1024 < 24 * 3600 * deals[arg1].field_768
                    if deals[arg1].field_2592:
                        if msg.sender == adminAddress:
                            require arg2
                            require not sub_eaefe81b[arg1][address(arg2)]
                            require sub_3eb3b9d7 + 1 >= sub_3eb3b9d7
                            sub_3eb3b9d7++
                            affiliates[stor3].field_0 = arg2
                            affiliates[stor3].field_160 = 0
                            affiliates[stor3].field_256 = 0
                            affiliates[stor3].field_512 = 0
                            deals[arg1].field_2304++
                            stor[('array', 9, ('map', ('param', 'arg1'), ('name', 'deals', 4))) + deals[arg1].field_2304].field_0 = sub_3eb3b9d7
                            require deals[arg1].field_1792 + 1 >= deals[arg1].field_1792
                            deals[arg1].field_1792++
                            sub_27de3446[address(arg2)].field_0++
                            sub_27de3446[address(arg2)][sub_27de3446[address(arg2)].field_0].field_0 = arg1
                            require sub_84238da5[address(arg2)] + 1 >= sub_84238da5[address(arg2)]
                            sub_84238da5[address(arg2)]++
                            sub_78c16b90[arg1][address(arg2)] = sub_3eb3b9d7
                            sub_eaefe81b[arg1][address(arg2)] = 1
                            sub_eff56b04[stor3] = arg1
                            emit 0x72c6e492: Mask(32, 224, deals[arg1].field_2560), sub_3eb3b9d7, msg.sender, arg1, arg2
                        else:
                            require msg.sender == sub_9df8ed43Address
                            require arg2
                            require not sub_eaefe81b[arg1][address(arg2)]
                            require sub_3eb3b9d7 + 1 >= sub_3eb3b9d7
                            sub_3eb3b9d7++
                            affiliates[stor3].field_0 = arg2
                            affiliates[stor3].field_160 = 0
                            affiliates[stor3].field_256 = 0
                            affiliates[stor3].field_512 = 0
                            deals[arg1].field_2304++
                            stor[('array', 9, ('map', ('param', 'arg1'), ('name', 'deals', 4))) + deals[arg1].field_2304].field_0 = sub_3eb3b9d7
                            require deals[arg1].field_1792 + 1 >= deals[arg1].field_1792
                            deals[arg1].field_1792++
                            sub_27de3446[address(arg2)].field_0++
                            sub_27de3446[address(arg2)][sub_27de3446[address(arg2)].field_0].field_0 = arg1
                            require sub_84238da5[address(arg2)] + 1 >= sub_84238da5[address(arg2)]
                            sub_84238da5[address(arg2)]++
                            sub_78c16b90[arg1][address(arg2)] = sub_3eb3b9d7
                            sub_eaefe81b[arg1][address(arg2)] = 1
                            sub_eff56b04[stor3] = arg1
                            emit 0x72c6e492: Mask(32, 224, deals[arg1].field_2560), sub_3eb3b9d7, msg.sender, arg1, arg2
                    else:
                        require msg.sender == sub_9df8ed43Address
                        require arg2
                        require not sub_eaefe81b[arg1][address(arg2)]
                        require sub_3eb3b9d7 + 1 >= sub_3eb3b9d7
                        sub_3eb3b9d7++
                        affiliates[stor3].field_0 = arg2
                        affiliates[stor3].field_160 = 0
                        affiliates[stor3].field_256 = 0
                        affiliates[stor3].field_512 = 0
                        deals[arg1].field_2304++
                        stor[('array', 9, ('map', ('param', 'arg1'), ('name', 'deals', 4))) + deals[arg1].field_2304].field_0 = sub_3eb3b9d7
                        require deals[arg1].field_1792 + 1 >= deals[arg1].field_1792
                        deals[arg1].field_1792++
                        sub_27de3446[address(arg2)].field_0++
                        sub_27de3446[address(arg2)][sub_27de3446[address(arg2)].field_0].field_0 = arg1
                        require sub_84238da5[address(arg2)] + 1 >= sub_84238da5[address(arg2)]
                        sub_84238da5[address(arg2)]++
                        sub_78c16b90[arg1][address(arg2)] = sub_3eb3b9d7
                        sub_eaefe81b[arg1][address(arg2)] = 1
                        sub_eff56b04[stor3] = arg1
                        emit 0x72c6e492: Mask(32, 224, deals[arg1].field_2560), sub_3eb3b9d7, msg.sender, arg1, arg2
            else:
                require block.timestamp - deals[arg1].field_1280 < 24 * 3600 * deals[arg1].field_512
                require arg1 < sub_3bf251b9
                if not deals[arg1].field_2304:
                    require block.timestamp - deals[arg1].field_1024 < 24 * 3600 * deals[arg1].field_768
                    if deals[arg1].field_2592:
                        if msg.sender == adminAddress:
                            require arg2
                            require not sub_eaefe81b[arg1][address(arg2)]
                            require sub_3eb3b9d7 + 1 >= sub_3eb3b9d7
                            sub_3eb3b9d7++
                            affiliates[stor3].field_0 = arg2
                            affiliates[stor3].field_160 = 0
                            affiliates[stor3].field_256 = 0
                            affiliates[stor3].field_512 = 0
                            deals[arg1].field_2304++
                            stor[('array', 9, ('map', ('param', 'arg1'), ('name', 'deals', 4))) + deals[arg1].field_2304].field_0 = sub_3eb3b9d7
                            require deals[arg1].field_1792 + 1 >= deals[arg1].field_1792
                            deals[arg1].field_1792++
                            sub_27de3446[address(arg2)].field_0++
                            sub_27de3446[address(arg2)][sub_27de3446[address(arg2)].field_0].field_0 = arg1
                            require sub_84238da5[address(arg2)] + 1 >= sub_84238da5[address(arg2)]
                            sub_84238da5[address(arg2)]++
                            sub_78c16b90[arg1][address(arg2)] = sub_3eb3b9d7
                            sub_eaefe81b[arg1][address(arg2)] = 1
                            sub_eff56b04[stor3] = arg1
                            emit 0x72c6e492: Mask(32, 224, deals[arg1].field_2560), sub_3eb3b9d7, msg.sender, arg1, arg2
                        else:
                            require msg.sender == sub_9df8ed43Address
                            require arg2
                            require not sub_eaefe81b[arg1][address(arg2)]
                            require sub_3eb3b9d7 + 1 >= sub_3eb3b9d7
                            sub_3eb3b9d7++
                            affiliates[stor3].field_0 = arg2
                            affiliates[stor3].field_160 = 0
                            affiliates[stor3].field_256 = 0
                            affiliates[stor3].field_512 = 0
                            deals[arg1].field_2304++
                            stor[('array', 9, ('map', ('param', 'arg1'), ('name', 'deals', 4))) + deals[arg1].field_2304].field_0 = sub_3eb3b9d7
                            require deals[arg1].field_1792 + 1 >= deals[arg1].field_1792
                            deals[arg1].field_1792++
                            sub_27de3446[address(arg2)].field_0++
                            sub_27de3446[address(arg2)][sub_27de3446[address(arg2)].field_0].field_0 = arg1
                            require sub_84238da5[address(arg2)] + 1 >= sub_84238da5[address(arg2)]
                            sub_84238da5[address(arg2)]++
                            sub_78c16b90[arg1][address(arg2)] = sub_3eb3b9d7
                            sub_eaefe81b[arg1][address(arg2)] = 1
                            sub_eff56b04[stor3] = arg1
                            emit 0x72c6e492: Mask(32, 224, deals[arg1].field_2560), sub_3eb3b9d7, msg.sender, arg1, arg2
                    else:
                        require msg.sender == sub_9df8ed43Address
                        require arg2
                        require not sub_eaefe81b[arg1][address(arg2)]
                        require sub_3eb3b9d7 + 1 >= sub_3eb3b9d7
                        sub_3eb3b9d7++
                        affiliates[stor3].field_0 = arg2
                        affiliates[stor3].field_160 = 0
                        affiliates[stor3].field_256 = 0
                        affiliates[stor3].field_512 = 0
                        deals[arg1].field_2304++
                        stor[('array', 9, ('map', ('param', 'arg1'), ('name', 'deals', 4))) + deals[arg1].field_2304].field_0 = sub_3eb3b9d7
                        require deals[arg1].field_1792 + 1 >= deals[arg1].field_1792
                        deals[arg1].field_1792++
                        sub_27de3446[address(arg2)].field_0++
                        sub_27de3446[address(arg2)][sub_27de3446[address(arg2)].field_0].field_0 = arg1
                        require sub_84238da5[address(arg2)] + 1 >= sub_84238da5[address(arg2)]
                        sub_84238da5[address(arg2)]++
                        sub_78c16b90[arg1][address(arg2)] = sub_3eb3b9d7
                        sub_eaefe81b[arg1][address(arg2)] = 1
                        sub_eff56b04[stor3] = arg1
                        emit 0x72c6e492: Mask(32, 224, deals[arg1].field_2560), sub_3eb3b9d7, msg.sender, arg1, arg2
                else:
                    idx = (32 * deals[arg1].field_2304) + 2080
                    s = 0
                    while (64 * deals[arg1].field_2304) + 2048 > idx:
                        mem[idx + 32] = deals[arg1][s + 9].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require block.timestamp - deals[arg1].field_1024 < 24 * 3600 * deals[arg1].field_768
                    if deals[arg1].field_2592:
                        if msg.sender == adminAddress:
                            require arg2
                            require not sub_eaefe81b[arg1][address(arg2)]
                            require sub_3eb3b9d7 + 1 >= sub_3eb3b9d7
                            sub_3eb3b9d7++
                            affiliates[stor3].field_0 = arg2
                            affiliates[stor3].field_160 = 0
                            affiliates[stor3].field_256 = 0
                            affiliates[stor3].field_512 = 0
                            deals[arg1].field_2304++
                            stor[('array', 9, ('map', ('param', 'arg1'), ('name', 'deals', 4))) + deals[arg1].field_2304].field_0 = sub_3eb3b9d7
                            require deals[arg1].field_1792 + 1 >= deals[arg1].field_1792
                            deals[arg1].field_1792++
                            sub_27de3446[address(arg2)].field_0++
                            sub_27de3446[address(arg2)][sub_27de3446[address(arg2)].field_0].field_0 = arg1
                            require sub_84238da5[address(arg2)] + 1 >= sub_84238da5[address(arg2)]
                            sub_84238da5[address(arg2)]++
                            sub_78c16b90[arg1][address(arg2)] = sub_3eb3b9d7
                            sub_eaefe81b[arg1][address(arg2)] = 1
                            sub_eff56b04[stor3] = arg1
                            emit 0x72c6e492: Mask(32, 224, deals[arg1].field_2560), sub_3eb3b9d7, msg.sender, arg1, arg2
                        else:
                            require msg.sender == sub_9df8ed43Address
                            require arg2
                            require not sub_eaefe81b[arg1][address(arg2)]
                            require sub_3eb3b9d7 + 1 >= sub_3eb3b9d7
                            sub_3eb3b9d7++
                            affiliates[stor3].field_0 = arg2
                            affiliates[stor3].field_160 = 0
                            affiliates[stor3].field_256 = 0
                            affiliates[stor3].field_512 = 0
                            deals[arg1].field_2304++
                            stor[('array', 9, ('map', ('param', 'arg1'), ('name', 'deals', 4))) + deals[arg1].field_2304].field_0 = sub_3eb3b9d7
                            require deals[arg1].field_1792 + 1 >= deals[arg1].field_1792
                            deals[arg1].field_1792++
                            sub_27de3446[address(arg2)].field_0++
                            sub_27de3446[address(arg2)][sub_27de3446[address(arg2)].field_0].field_0 = arg1
                            require sub_84238da5[address(arg2)] + 1 >= sub_84238da5[address(arg2)]
                            sub_84238da5[address(arg2)]++
                            sub_78c16b90[arg1][address(arg2)] = sub_3eb3b9d7
                            sub_eaefe81b[arg1][address(arg2)] = 1
                            sub_eff56b04[stor3] = arg1
                            emit 0x72c6e492: Mask(32, 224, deals[arg1].field_2560), sub_3eb3b9d7, msg.sender, arg1, arg2
                    else:
                        require msg.sender == sub_9df8ed43Address
                        require arg2
                        require not sub_eaefe81b[arg1][address(arg2)]
                        require sub_3eb3b9d7 + 1 >= sub_3eb3b9d7
                        sub_3eb3b9d7++
                        affiliates[stor3].field_0 = arg2
                        affiliates[stor3].field_160 = 0
                        affiliates[stor3].field_256 = 0
                        affiliates[stor3].field_512 = 0
                        deals[arg1].field_2304++
                        stor[('array', 9, ('map', ('param', 'arg1'), ('name', 'deals', 4))) + deals[arg1].field_2304].field_0 = sub_3eb3b9d7
                        require deals[arg1].field_1792 + 1 >= deals[arg1].field_1792
                        deals[arg1].field_1792++
                        sub_27de3446[address(arg2)].field_0++
                        sub_27de3446[address(arg2)][sub_27de3446[address(arg2)].field_0].field_0 = arg1
                        require sub_84238da5[address(arg2)] + 1 >= sub_84238da5[address(arg2)]
                        sub_84238da5[address(arg2)]++
                        sub_78c16b90[arg1][address(arg2)] = sub_3eb3b9d7
                        sub_eaefe81b[arg1][address(arg2)] = 1
                        sub_eff56b04[stor3] = arg1
                        emit 0x72c6e492: Mask(32, 224, deals[arg1].field_2560), sub_3eb3b9d7, msg.sender, arg1, arg2
        else:
            require deals[arg1].field_168
            require block.timestamp - deals[arg1].field_1280 >= 24 * 3600 * deals[arg1].field_512
            revert
}



}
