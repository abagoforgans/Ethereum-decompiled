contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;

function _fallback() payable {
    stor1 = 0x258c09146b7a28dde8d3e230030e27643f91115f
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[127 len 16195]
}



// =====================  Runtime code  =====================


address stor0;
uint256 stor0;
address stor1;
mapping of struct sub_d5d902e8;
mapping of struct events;
array of uint256 sub_ad33e07a;
array of uint256 sub_a5b70192;
mapping of uint256 sub_ee3f06e8;

function Events(uint256 arg1) payable {
    return uint8(events[arg1].field_0), 
           uint8(events[arg1].field_0),
           uint32(events[arg1].field_0),
           address(events[arg1].field_0),
           uint256(events[arg1].field_256),
           uint256(events[arg1].field_512),
           uint256(events[arg1].field_768)
}

function sub_a5b70192(?) payable {
    require arg2 < sub_a5b70192[arg1]
    return sub_a5b70192[arg1][arg2]
}

function sub_ad33e07a(?) payable {
    require arg2 < sub_ad33e07a[arg1]
    return sub_ad33e07a[arg1][arg2]
}

function sub_d5d902e8(?) payable {
    return uint16(sub_d5d902e8[arg1].field_0), 
           address(sub_d5d902e8[arg1].field_0),
           uint256(sub_d5d902e8[arg1].field_256),
           uint256(sub_d5d902e8[arg1].field_512)
}

function sub_ee3f06e8(?) payable {
    return sub_ee3f06e8[arg1][arg2][arg3]
}

function deleteContract() payable {
    if address(stor0) != msg.sender:
    selfdestruct(msg.sender)
}

function _fallback() payable {
  stop
}

function changeCreator(address arg1) payable {
    if address(stor0) == msg.sender:
        uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function sendShares(uint256 arg1, uint8 arg2, uint256 arg3, address arg4) payable {
    if sub_ee3f06e8[address(msg.sender)][arg1][arg2 << 248] >= arg3:
        sub_ee3f06e8[address(msg.sender)][arg1][arg2 << 248] -= arg3
        sub_ee3f06e8[address(arg4)][arg1][arg2 << 248] += arg3
}

function getShareDistribution(uint256 arg1) payable {
    mem[2176 len 2016] = 0
    idx = 1
    while uint8(idx) <= uint8(events[uint256(stor2[arg1].field_256)].field_8):
        mem[0] = uint8(idx)
        mem[32] = sha3(arg1, 2) + 3
        require idx < 64
        mem[(32 * idx) + 2144] = uint256(sub_d5d902e8[arg1][3][idx << 248].field_0)
        idx = idx + 1
        continue 
    return block.timestamp, mem[2176 len 2016]
}

function getShareRange(uint256 arg1, uint8 arg2) payable {
    mem[160] = uint256(sub_d5d902e8[arg1][3][1].field_0)
    mem[192] = uint256(sub_d5d902e8[arg1][3][1].field_0)
    idx = 2
    while uint8(idx) <= arg2:
        if uint256(sub_d5d902e8[arg1][3][idx << 248].field_0) < mem[160]:
            mem[160] = uint256(sub_d5d902e8[arg1][3][idx << 248].field_0)
        mem[0] = uint8(idx)
        mem[32] = sha3(arg1, 2) + 3
        if uint256(sub_d5d902e8[arg1][3][idx << 248].field_0) > mem[192]:
            mem[0] = uint8(idx)
            mem[32] = sha3(arg1, 2) + 3
            mem[192] = uint256(sub_d5d902e8[arg1][3][idx << 248].field_0)
        idx = idx + 1
        continue 
    return memory
      from 160
       len 64
}

function redeemAllOutcomes(uint256 arg1, uint256 arg2) payable {
    idx = 1
    while uint8(idx) <= uint8(events[arg1].field_8):
        if sub_ee3f06e8[address(msg.sender)][arg1][idx << 248] < arg2:
        mem[0] = arg1
        mem[32] = 3
        idx = idx + 1
        continue 
    idx = 1
    while uint8(idx) <= uint8(events[arg1].field_8):
        sub_ee3f06e8[address(msg.sender)][arg1][idx << 248] -= arg2
        mem[0] = arg1
        mem[32] = 3
        idx = idx + 1
        continue 
    if uint256(events[arg1].field_256):
        sub_ee3f06e8[address(msg.sender)][uint256(stor3[arg1].field_256)][uint8(stor3[arg1].field_0)] += arg2
    else:
        call msg.sender with:
           value arg2 wei
             gas 0 wei
}

function buyAllOutcomes(uint256 arg1, uint256 arg2) payable {
    if not uint256(events[arg1].field_256):
        idx = 1
        while uint8(idx) <= uint8(events[arg1].field_8):
            sub_ee3f06e8[address(msg.sender)][arg1][idx << 248] += msg.value
            mem[0] = arg1
            mem[32] = 3
            idx = idx + 1
            continue 
    else:
        if sub_ee3f06e8[address(msg.sender)][uint256(stor3[arg1].field_256)][uint8(stor3[arg1].field_0)] >= arg2:
            idx = 1
            while uint8(idx) <= uint8(events[arg1].field_8):
                sub_ee3f06e8[address(msg.sender)][arg1][idx << 248] += arg2
                mem[0] = arg1
                mem[32] = 3
                idx = idx + 1
                continue 
            sub_ee3f06e8[address(msg.sender)][uint256(stor3[arg1].field_256)][uint8(stor3[arg1].field_0)] -= arg2
}

function sub_34b88204(?) payable {
    idx = 1
    s = 0
    while uint8(idx) <= arg3:
        mem[0] = uint8(idx)
        mem[32] = sha3(arg1, 2) + 3
        mem[164] = call.data[132] - uint256(sub_d5d902e8[arg1][3][idx << 248].field_0) / uint256(sub_d5d902e8[arg1].field_512) / 10000 * arg2
        call stor1.0x4b09ebb2 with:
             gas gas_remaining - 25050 wei
            args (call.data[132] - uint256(sub_d5d902e8[arg1][3][idx << 248].field_0) / uint256(sub_d5d902e8[arg1].field_512) / 10000 * arg2)
        mem[160] = ext_call.return_data[0]
        require ext_call.success
        idx = idx + 1
        s = s + ext_call.return_data[0]
        continue 
    call stor1.0x24d4e90a with:
         gas gas_remaining - 25050 wei
        args (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None)
    require ext_call.success
    return (ext_call.return_data[0] << 64 / arg2)
}

function redeemWinnings(uint256 arg1) payable {
    call address(events[arg1].field_48).getWinningOutcome(uint256 rg1) with:
         gas gas_remaining - 25050 wei
        args uint256(events[arg1].field_768)
    require ext_call.success
    if ext_call.return_data[30 len 2] > 0:
        if uint256(events[arg1].field_512) != 1:
            if uint256(events[arg1].field_256) <= 0:
                call msg.sender with:
                   value (10000 * sub_ee3f06e8[address(msg.sender)][arg1][1]) - (uint16(ext_call.return_data[0] - 1) * sub_ee3f06e8[address(msg.sender)][arg1][1]) + (sub_ee3f06e8[address(msg.sender)][arg1][2] * uint16(ext_call.return_data[0] - 1)) / 10000 wei
                     gas 0 wei
            else:
                sub_ee3f06e8[address(msg.sender)][uint256(stor3[arg1].field_256)][uint8(stor3[arg1].field_0)] += (10000 * sub_ee3f06e8[address(msg.sender)][arg1][1]) - (uint16(ext_call.return_data[0] - 1) * sub_ee3f06e8[address(msg.sender)][arg1][1]) + (sub_ee3f06e8[address(msg.sender)][arg1][2] * uint16(ext_call.return_data[0] - 1)) / 10000
        else:
            if uint256(events[arg1].field_256) <= 0:
                call msg.sender with:
                   value sub_ee3f06e8[address(msg.sender)][arg1][ext_call.return_data[0] << 248] wei
                     gas 0 wei
            else:
                sub_ee3f06e8[address(msg.sender)][uint256(stor3[arg1].field_256)][uint8(stor3[arg1].field_0)] += sub_ee3f06e8[address(msg.sender)][arg1][ext_call.return_data[0] << 248]
        idx = 1
        while uint8(idx) <= uint8(events[arg1].field_8):
            sub_ee3f06e8[address(msg.sender)][arg1][idx << 248] = 0
            mem[0] = arg1
            mem[32] = 3
            idx = idx + 1
            continue 
}

function closeMarketMaker(uint256 arg1) payable {
    if msg.sender == address(sub_d5d902e8[arg1].field_16):
        idx = 1
        while uint8(idx) <= uint8(events[uint256(stor2[arg1].field_256)].field_8):
            sub_ee3f06e8[address(msg.sender)][uint256(stor2[arg1].field_256)][idx << 248] += uint256(sub_d5d902e8[arg1][3][idx << 248].field_0)
            uint256(sub_d5d902e8[arg1][3][idx << 248].field_0) = 0
            mem[0] = uint256(sub_d5d902e8[arg1].field_256)
            mem[32] = 3
            idx = idx + 1
            continue 
        s = 0
        idx = 0
        while uint8(idx) < sub_ad33e07a[uint256(stor2[arg1].field_256)]:
            require idx < sub_ad33e07a[uint256(stor2[arg1].field_256)]
            if s:
                require idx - 1 < sub_ad33e07a[uint256(stor2[arg1].field_256)]
                sub_ad33e07a[uint256(stor2[arg1].field_256)][idx] = sub_ad33e07a[uint256(stor2[arg1].field_256)][idx]
            mem[0] = uint256(sub_d5d902e8[arg1].field_256)
            mem[32] = 4
            s = sub_ad33e07a[uint256(stor2[arg1].field_256)][idx] == arg1
            idx = idx + 1
            continue 
        sub_ad33e07a[uint256(stor2[arg1].field_256)]--
        if not sub_ad33e07a[uint256(stor2[arg1].field_256)] <= sub_ad33e07a[uint256(stor2[arg1].field_256)] - 1:
            idx = sub_ad33e07a[uint256(stor2[arg1].field_256)] - 1
            while sub_ad33e07a[uint256(stor2[arg1].field_256)] > idx:
                sub_ad33e07a[uint256(stor2[arg1].field_256)][idx] = 0
                idx = idx + 1
                continue 
        uint16(sub_d5d902e8[arg1].field_0) = 0
        address(sub_d5d902e8[arg1].field_16) = 0
        uint256(sub_d5d902e8[arg1].field_256) = 0
        uint256(sub_d5d902e8[arg1].field_512) = 0
}

function sub_017c2db9(?) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    mem[(32 * arg1.length) + 160 len 32736] = 0
    mem[(32 * arg1.length) + 32896] = 0
    mem[(32 * arg1.length) + 32928 len 32736] = 0
    s = 0
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        require s < 1024
        mem[(32 * s) + (32 * arg1.length) + 32896] = mem[(32 * idx) + 128]
        require idx < arg1.length
        require s + 1 < 1024
        mem[(32 * s + 1) + (32 * arg1.length) + 32896] = uint8(events[mem[(32 * idx) + 128]].field_8)
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 3
        if uint8(var24005) > uint8(events[mem[(32 * idx) + 128]].field_8):
            s = var24005
            idx = idx + 1
            s = s + uint8(var24005 + 1)
            continue 
        require idx < arg1.length
        require s + uint8(var28005) + 1 < 1024
        mem[(32 * var30001) + (32 * arg1.length) + 32896] = var30003
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 3
        _86 = sha3(mem[(32 * idx) + 128], 3)
        t = var30004
        while uint8(t + 1) <= uint8(stor[_86].field_8):
            require idx < arg1.length
            require s + uint8(t + 1) + 1 < 1024
            mem[(32 * s + uint8(t + 1) + 1) + (32 * arg1.length) + 32896] = sub_ee3f06e8[address(msg.sender)][mem[(32 * idx) + 128]][t + 1 << 248]
            require idx < arg1.length
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 3
            t = t + 1
            continue 
        s = None + 2
        idx = idx + 1
        s = s + uint8(None + 3)
        continue 
    return memory
      from (32 * arg1.length) + 32896
       len 32768
}

function sub_a9a75e28(?) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    mem[(32 * arg1.length) + 160 len 32736] = 0
    mem[(32 * arg1.length) + 32896] = 0
    mem[(32 * arg1.length) + 32928 len 32736] = 0
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 5
        _81 = sha3(mem[(32 * idx) + 128], 5)
        s = 0
        while s < sub_a5b70192[mem[(32 * idx) + 128]]:
            require s < sub_a5b70192[mem[(32 * idx) + 128]]
            mem[0] = sub_a5b70192[mem[(32 * idx) + 128]][s]
            mem[32] = 4
            if var64006 >= sub_ad33e07a[stor5[mem[(32 * idx) + 128]][s]]:
                s = s + 1
                continue 
            require idx < arg1.length
            require var68008 < 1024
            mem[(32 * var70001) + (32 * arg1.length) + 32896] = var70003
            require s < uint256(stor[_81].field_0)
            require var72008 + 1 < 1024
            mem[(32 * var74001) + (32 * arg1.length) + 32896] = var74003
            require s < uint256(stor[_81].field_0)
            require var76006 < sub_ad33e07a[uint256(stor[s + sha3(_81)].field_0)]
            require var78008 + 2 < 1024
            mem[(32 * var80001) + (32 * arg1.length) + 32896] = var80003
            require idx < arg1.length
            require s < sub_a5b70192[mem[(32 * idx) + 128]]
            require var84010 + 3 < 1024
            mem[(32 * var86001) + (32 * arg1.length) + 32896] = var86003
            require idx < arg1.length
            require s < sub_a5b70192[mem[(32 * idx) + 128]]
            require var90010 + 4 < 1024
            # nil
        s = sha3(mem[(32 * idx) + 128], 5)
        idx = idx + 1
        continue 
    return memory
      from (32 * arg1.length) + 32896
       len 32768
}

function createEvent(uint256 arg1, uint256 arg2, uint8 arg3, uint32 arg4, address arg5, uint256 arg6, uint8 arg7) payable {
    if not uint32(events[arg1 + arg6 + arg7 + arg5].field_16):
        if arg4 > block.timestamp:
            if arg2 == 1:
                sub_a5b70192[arg1]++
                if not sub_a5b70192[arg1] <= sub_a5b70192[arg1] + 1:
                    idx = sub_a5b70192[arg1] + 1
                    while sub_a5b70192[arg1] > idx:
                        sub_a5b70192[arg1][idx] = 0
                        idx = idx + 1
                        continue 
                require sub_a5b70192[arg1] < sub_a5b70192[arg1]
                sub_a5b70192[arg1][sub_a5b70192[arg1]] = arg1 + arg6 + arg7 + arg5
                uint256(events[arg1 + arg6 + arg7 + arg5].field_768) = arg1
                Mask(248, 0, events[arg1 + arg6 + arg7 + arg5].field_8) = Mask(248, 0, arg3)
                Mask(240, 0, events[arg1 + arg6 + arg7 + arg5].field_16) = Mask(240, 0, arg4)
                Mask(208, 0, events[arg1 + arg6 + arg7 + arg5].field_48) = Mask(208, 0, arg5)
                uint256(events[arg1 + arg6 + arg7 + arg5].field_512) = arg2
                uint256(events[arg1 + arg6 + arg7 + arg5].field_256) = arg6
                uint256(events[arg1 + arg6 + arg7 + arg5].field_0) = arg7 or Mask(248, 8, uint256(events[arg1 + arg6 + arg7 + arg5].field_0))
            else:
                if not arg2:
                    if arg3 == 2:
                        sub_a5b70192[arg1]++
                        if not sub_a5b70192[arg1] <= sub_a5b70192[arg1] + 1:
                            idx = sub_a5b70192[arg1] + 1
                            while sub_a5b70192[arg1] > idx:
                                sub_a5b70192[arg1][idx] = 0
                                idx = idx + 1
                                continue 
                        require sub_a5b70192[arg1] < sub_a5b70192[arg1]
                        sub_a5b70192[arg1][sub_a5b70192[arg1]] = arg1 + arg6 + arg7 + arg5
                        uint256(events[arg1 + arg6 + arg7 + arg5].field_768) = arg1
                        Mask(248, 0, events[arg1 + arg6 + arg7 + arg5].field_8) = Mask(248, 0, arg3)
                        Mask(240, 0, events[arg1 + arg6 + arg7 + arg5].field_16) = Mask(240, 0, arg4)
                        Mask(208, 0, events[arg1 + arg6 + arg7 + arg5].field_48) = Mask(208, 0, arg5)
                        uint256(events[arg1 + arg6 + arg7 + arg5].field_512) = arg2
                        uint256(events[arg1 + arg6 + arg7 + arg5].field_256) = arg6
                        uint256(events[arg1 + arg6 + arg7 + arg5].field_0) = arg7 or Mask(248, 8, uint256(events[arg1 + arg6 + arg7 + arg5].field_0))
}

function createMarketMaker(uint256 arg1, uint16 arg2, uint256 arg3) payable {
    if not uint256(events[arg1].field_256):
        if msg.value >= 10^6:
            if not uint256(sub_d5d902e8[arg1 + msg.sender].field_512):
                if arg2 >= 0:
                    if arg2 < 50000:
                        sub_ad33e07a[arg1]++
                        if not sub_ad33e07a[arg1] <= sub_ad33e07a[arg1] + 1:
                            idx = sub_ad33e07a[arg1] + 1
                            while sub_ad33e07a[arg1] > idx:
                                sub_ad33e07a[arg1][idx] = 0
                                idx = idx + 1
                                continue 
                        require sub_ad33e07a[arg1] < sub_ad33e07a[arg1]
                        sub_ad33e07a[arg1][sub_ad33e07a[arg1]] = arg1 + msg.sender
                        uint256(sub_d5d902e8[arg1 + msg.sender].field_0) = arg2 or Mask(240, 16, uint256(sub_d5d902e8[arg1 + msg.sender].field_0))
                        uint256(sub_d5d902e8[arg1 + msg.sender].field_512) = msg.value
                        uint256(sub_d5d902e8[arg1 + msg.sender].field_256) = arg1
                        Mask(240, 0, sub_d5d902e8[arg1 + msg.sender].field_16) = Mask(240, 0, msg.sender)
                        idx = 1
                        while uint8(idx) <= uint8(events[arg1].field_8):
                            uint256(sub_d5d902e8[arg1 + msg.sender][3][idx << 248].field_0) = msg.value
                            mem[0] = arg1
                            mem[32] = 3
                            idx = idx + 1
                            continue 
    else:
        if arg3 >= 10^6:
            if arg3 <= sub_ee3f06e8[address(msg.sender)][uint256(stor3[arg1].field_256)][uint8(stor3[arg1].field_0)]:
                sub_ee3f06e8[address(msg.sender)][uint256(stor3[arg1].field_256)][uint8(stor3[arg1].field_0)] -= arg3
                if not uint256(sub_d5d902e8[arg1 + msg.sender].field_512):
                    if arg2 >= 0:
                        if arg2 < 50000:
                            sub_ad33e07a[arg1]++
                            if not sub_ad33e07a[arg1] <= sub_ad33e07a[arg1] + 1:
                                idx = sub_ad33e07a[arg1] + 1
                                while sub_ad33e07a[arg1] > idx:
                                    sub_ad33e07a[arg1][idx] = 0
                                    idx = idx + 1
                                    continue 
                            require sub_ad33e07a[arg1] < sub_ad33e07a[arg1]
                            sub_ad33e07a[arg1][sub_ad33e07a[arg1]] = arg1 + msg.sender
                            uint256(sub_d5d902e8[arg1 + msg.sender].field_0) = arg2 or Mask(240, 16, uint256(sub_d5d902e8[arg1 + msg.sender].field_0))
                            uint256(sub_d5d902e8[arg1 + msg.sender].field_512) = arg3
                            uint256(sub_d5d902e8[arg1 + msg.sender].field_256) = arg1
                            Mask(240, 0, sub_d5d902e8[arg1 + msg.sender].field_16) = Mask(240, 0, msg.sender)
                            idx = 1
                            while uint8(idx) <= uint8(events[arg1].field_8):
                                uint256(sub_d5d902e8[arg1 + msg.sender][3][idx << 248].field_0) = arg3
                                mem[0] = arg1
                                mem[32] = 3
                                idx = idx + 1
                                continue 
}

function calcCostsSelling(uint256 arg1, uint8 arg2, uint8 arg3, uint256 arg4) payable {
    call stor1.0x24d4e90a with:
         gas gas_remaining - 25050 wei
        args (uint8(arg2) << 64)
    require ext_call.success
    mem[224] = uint256(sub_d5d902e8[arg1][3][1].field_0)
    mem[256] = uint256(sub_d5d902e8[arg1][3][1].field_0)
    idx = 2
    while uint8(idx) <= arg2:
        if uint256(sub_d5d902e8[arg1][3][idx << 248].field_0) < mem[224]:
            mem[224] = uint256(sub_d5d902e8[arg1][3][idx << 248].field_0)
        mem[0] = uint8(idx)
        mem[32] = sha3(arg1, 2) + 3
        if uint256(sub_d5d902e8[arg1][3][idx << 248].field_0) > mem[256]:
            mem[0] = uint8(idx)
            mem[32] = sha3(arg1, 2) + 3
            mem[256] = uint256(sub_d5d902e8[arg1][3][idx << 248].field_0)
        idx = idx + 1
        continue 
    mem[256] = mem[256] + arg4
    idx = 1
    s = 0
    while uint8(idx) <= arg2:
        mem[0] = uint8(idx)
        mem[32] = sha3(arg1, 2) + 3
        mem[292] = mem[256] - uint256(sub_d5d902e8[arg1][3][idx << 248].field_0) / uint256(sub_d5d902e8[arg1].field_512) / 10000 * ext_call.return_data[0] / 10000
        call stor1.0x4b09ebb2 with:
             gas gas_remaining - 25050 wei
            args (mem[256] - uint256(sub_d5d902e8[arg1][3][idx << 248].field_0) / uint256(sub_d5d902e8[arg1].field_512) / 10000 * ext_call.return_data[0] / 10000)
        mem[288] = ext_call.return_data[0]
        require ext_call.success
        idx = idx + 1
        s = s + ext_call.return_data[0]
        continue 
    call stor1.0x24d4e90a with:
         gas gas_remaining - 25050 wei
        args (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None)
    require ext_call.success
    uint256(sub_d5d902e8[arg1][3][arg3 << 248].field_0) += arg4
    idx = 1
    s = 0
    while uint8(idx) <= arg2:
        mem[0] = uint8(idx)
        mem[32] = sha3(arg1, 2) + 3
        mem[292] = mem[256] - uint256(sub_d5d902e8[arg1][3][idx << 248].field_0) / uint256(sub_d5d902e8[arg1].field_512) / 10000 * ext_call.return_data[0] / 10000
        call stor1.0x4b09ebb2 with:
             gas gas_remaining - 25050 wei
            args (mem[256] - uint256(sub_d5d902e8[arg1][3][idx << 248].field_0) / uint256(sub_d5d902e8[arg1].field_512) / 10000 * ext_call.return_data[0] / 10000)
        mem[288] = ext_call.return_data[0]
        require ext_call.success
        idx = idx + 1
        s = s + ext_call.return_data[0]
        continue 
    call stor1.0x24d4e90a with:
         gas gas_remaining - 25050 wei
        args (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None)
    require ext_call.success
    uint256(sub_d5d902e8[arg1][3][arg3 << 248].field_0) -= arg4
    return (Mask(192, 64, (ext_call.return_data[0] << 64 / ext_call.return_data[0] / 10000 * uint256(sub_d5d902e8[arg1].field_512) / 10000 * -uint16(sub_d5d902e8[arg1].field_0) + 99998 % 16777216) - (ext_call.return_data[0] << 64 / ext_call.return_data[0] / 10000 * uint256(sub_d5d902e8[arg1].field_512) / 10000 * -uint16(sub_d5d902e8[arg1].field_0) + 99998 % 16777216) / 100000) >> 64)
}

function calcCostsBuying(uint256 arg1, uint8 arg2, uint8 arg3, uint256 arg4) payable {
    call stor1.0x24d4e90a with:
         gas gas_remaining - 25050 wei
        args (uint8(arg2) << 64)
    require ext_call.success
    mem[224] = uint256(sub_d5d902e8[arg1][3][1].field_0)
    mem[256] = uint256(sub_d5d902e8[arg1][3][1].field_0)
    idx = 2
    while uint8(idx) <= arg2:
        if uint256(sub_d5d902e8[arg1][3][idx << 248].field_0) < mem[224]:
            mem[224] = uint256(sub_d5d902e8[arg1][3][idx << 248].field_0)
        mem[0] = uint8(idx)
        mem[32] = sha3(arg1, 2) + 3
        if uint256(sub_d5d902e8[arg1][3][idx << 248].field_0) > mem[256]:
            mem[0] = uint8(idx)
            mem[32] = sha3(arg1, 2) + 3
            mem[256] = uint256(sub_d5d902e8[arg1][3][idx << 248].field_0)
        idx = idx + 1
        continue 
    idx = 1
    s = 0
    while uint8(idx) <= arg2:
        mem[0] = uint8(idx)
        mem[32] = sha3(arg1, 2) + 3
        mem[292] = mem[256] - uint256(sub_d5d902e8[arg1][3][idx << 248].field_0) / uint256(sub_d5d902e8[arg1].field_512) / 10000 * ext_call.return_data[0] / 10000
        call stor1.0x4b09ebb2 with:
             gas gas_remaining - 25050 wei
            args (mem[256] - uint256(sub_d5d902e8[arg1][3][idx << 248].field_0) / uint256(sub_d5d902e8[arg1].field_512) / 10000 * ext_call.return_data[0] / 10000)
        mem[288] = ext_call.return_data[0]
        require ext_call.success
        idx = idx + 1
        s = s + ext_call.return_data[0]
        continue 
    call stor1.0x24d4e90a with:
         gas gas_remaining - 25050 wei
        args (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None)
    require ext_call.success
    uint256(sub_d5d902e8[arg1][3][arg3 << 248].field_0) -= arg4
    idx = 1
    s = 0
    while uint8(idx) <= arg2:
        mem[0] = uint8(idx)
        mem[32] = sha3(arg1, 2) + 3
        mem[292] = mem[256] - uint256(sub_d5d902e8[arg1][3][idx << 248].field_0) / uint256(sub_d5d902e8[arg1].field_512) / 10000 * ext_call.return_data[0] / 10000
        call stor1.0x4b09ebb2 with:
             gas gas_remaining - 25050 wei
            args (mem[256] - uint256(sub_d5d902e8[arg1][3][idx << 248].field_0) / uint256(sub_d5d902e8[arg1].field_512) / 10000 * ext_call.return_data[0] / 10000)
        mem[288] = ext_call.return_data[0]
        require ext_call.success
        idx = idx + 1
        s = s + ext_call.return_data[0]
        continue 
    call stor1.0x24d4e90a with:
         gas gas_remaining - 25050 wei
        args (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None)
    require ext_call.success
    uint256(sub_d5d902e8[arg1][3][arg3 << 248].field_0) += arg4
    if Mask(192, 64, (ext_call.return_data[0] << 64 / ext_call.return_data[0] / 10000 * uint256(sub_d5d902e8[arg1].field_512) / 10000 * uint16(sub_d5d902e8[arg1].field_0) + 100002 % 16777216) - (ext_call.return_data[0] << 64 / ext_call.return_data[0] / 10000 * uint256(sub_d5d902e8[arg1].field_512) / 10000 * uint16(sub_d5d902e8[arg1].field_0) + 100002 % 16777216) / 100000) >> 64 <= arg4:
        return (Mask(192, 64, (ext_call.return_data[0] << 64 / ext_call.return_data[0] / 10000 * uint256(sub_d5d902e8[arg1].field_512) / 10000 * uint16(sub_d5d902e8[arg1].field_0) + 100002 % 16777216) - (ext_call.return_data[0] << 64 / ext_call.return_data[0] / 10000 * uint256(sub_d5d902e8[arg1].field_512) / 10000 * uint16(sub_d5d902e8[arg1].field_0) + 100002 % 16777216) / 100000) >> 64)
    return arg4
}

function sellShares(uint256 arg1, uint8 arg2, uint256 arg3, uint256 arg4) payable {
    call stor1.0x24d4e90a with:
         gas gas_remaining - 25050 wei
        args (uint8(events[uint256(stor2[arg1].field_256)].field_8) << 64)
    require ext_call.success
    mem[224] = uint256(sub_d5d902e8[arg1][3][1].field_0)
    mem[256] = uint256(sub_d5d902e8[arg1][3][1].field_0)
    idx = 2
    while uint8(idx) <= uint8(events[uint256(stor2[arg1].field_256)].field_8):
        if uint256(sub_d5d902e8[arg1][3][idx << 248].field_0) < mem[224]:
            mem[224] = uint256(sub_d5d902e8[arg1][3][idx << 248].field_0)
        mem[0] = uint8(idx)
        mem[32] = sha3(arg1, 2) + 3
        if uint256(sub_d5d902e8[arg1][3][idx << 248].field_0) > mem[256]:
            mem[0] = uint8(idx)
            mem[32] = sha3(arg1, 2) + 3
            mem[256] = uint256(sub_d5d902e8[arg1][3][idx << 248].field_0)
        idx = idx + 1
        continue 
    mem[256] = mem[256] + arg3
    idx = 1
    s = 0
    while uint8(idx) <= uint8(events[uint256(stor2[arg1].field_256)].field_8):
        mem[0] = uint8(idx)
        mem[32] = sha3(arg1, 2) + 3
        mem[292] = mem[256] - uint256(sub_d5d902e8[arg1][3][idx << 248].field_0) / uint256(sub_d5d902e8[arg1].field_512) / 10000 * ext_call.return_data[0] / 10000
        call stor1.0x4b09ebb2 with:
             gas gas_remaining - 25050 wei
            args (mem[256] - uint256(sub_d5d902e8[arg1][3][idx << 248].field_0) / uint256(sub_d5d902e8[arg1].field_512) / 10000 * ext_call.return_data[0] / 10000)
        mem[288] = ext_call.return_data[0]
        require ext_call.success
        idx = idx + 1
        s = s + ext_call.return_data[0]
        continue 
    call stor1.0x24d4e90a with:
         gas gas_remaining - 25050 wei
        args (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None)
    require ext_call.success
    uint256(sub_d5d902e8[arg1][3][arg2 << 248].field_0) += arg3
    idx = 1
    s = 0
    while uint8(idx) <= uint8(events[uint256(stor2[arg1].field_256)].field_8):
        mem[0] = uint8(idx)
        mem[32] = sha3(arg1, 2) + 3
        mem[292] = mem[256] - uint256(sub_d5d902e8[arg1][3][idx << 248].field_0) / uint256(sub_d5d902e8[arg1].field_512) / 10000 * ext_call.return_data[0] / 10000
        call stor1.0x4b09ebb2 with:
             gas gas_remaining - 25050 wei
            args (mem[256] - uint256(sub_d5d902e8[arg1][3][idx << 248].field_0) / uint256(sub_d5d902e8[arg1].field_512) / 10000 * ext_call.return_data[0] / 10000)
        mem[288] = ext_call.return_data[0]
        require ext_call.success
        idx = idx + 1
        s = s + ext_call.return_data[0]
        continue 
    call stor1.0x24d4e90a with:
         gas gas_remaining - 25050 wei
        args (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None)
    require ext_call.success
    uint256(sub_d5d902e8[arg1][3][arg2 << 248].field_0) -= arg3
    if Mask(192, 64, (ext_call.return_data[0] << 64 / ext_call.return_data[0] / 10000 * uint256(sub_d5d902e8[arg1].field_512) / 10000 * -uint16(sub_d5d902e8[arg1].field_0) + 99998 % 16777216) - (ext_call.return_data[0] << 64 / ext_call.return_data[0] / 10000 * uint256(sub_d5d902e8[arg1].field_512) / 10000 * -uint16(sub_d5d902e8[arg1].field_0) + 99998 % 16777216) / 100000) >> 64 >= arg4:
        if sub_ee3f06e8[address(msg.sender)][uint256(stor2[arg1].field_256)][arg2 << 248] >= arg3:
            idx = 1
            while uint8(idx) <= uint8(events[uint256(stor2[arg1].field_256)].field_8):
                uint256(sub_d5d902e8[arg1][3][idx << 248].field_0) -= Mask(192, 64, (ext_call.return_data[0] << 64 / ext_call.return_data[0] / 10000 * uint256(sub_d5d902e8[arg1].field_512) / 10000 * -uint16(sub_d5d902e8[arg1].field_0) + 99998 % 16777216) - (ext_call.return_data[0] << 64 / ext_call.return_data[0] / 10000 * uint256(sub_d5d902e8[arg1].field_512) / 10000 * -uint16(sub_d5d902e8[arg1].field_0) + 99998 % 16777216) / 100000) >> 64
                mem[0] = uint256(sub_d5d902e8[arg1].field_256)
                mem[32] = 3
                idx = idx + 1
                continue 
            uint256(sub_d5d902e8[arg1][3][arg2 << 248].field_0) += arg3
            sub_ee3f06e8[address(msg.sender)][uint256(stor2[arg1].field_256)][arg2 << 248] -= arg3
            if not uint256(events[uint256(stor2[arg1].field_256)].field_256):
                call msg.sender with:
                   value Mask(192, 64, (ext_call.return_data[0] << 64 / ext_call.return_data[0] / 10000 * uint256(sub_d5d902e8[arg1].field_512) / 10000 * -uint16(sub_d5d902e8[arg1].field_0) + 99998 % 16777216) - (ext_call.return_data[0] << 64 / ext_call.return_data[0] / 10000 * uint256(sub_d5d902e8[arg1].field_512) / 10000 * -uint16(sub_d5d902e8[arg1].field_0) + 99998 % 16777216) / 100000) >> 64 wei
                     gas 0 wei
            else:
                sub_ee3f06e8[address(msg.sender)][uint256(stor3[uint256(stor2[arg1].field_256)].field_256)][uint8(stor3[uint256(stor2[arg1].field_256)].field_0)] += Mask(192, 64, (ext_call.return_data[0] << 64 / ext_call.return_data[0] / 10000 * uint256(sub_d5d902e8[arg1].field_512) / 10000 * -uint16(sub_d5d902e8[arg1].field_0) + 99998 % 16777216) - (ext_call.return_data[0] << 64 / ext_call.return_data[0] / 10000 * uint256(sub_d5d902e8[arg1].field_512) / 10000 * -uint16(sub_d5d902e8[arg1].field_0) + 99998 % 16777216) / 100000) >> 64
}

function createEventAndMarketMaker(uint256 arg1, uint256 arg2, uint8 arg3, uint32 arg4, address arg5, uint256 arg6, uint8 arg7, uint16 arg8, uint256 arg9) payable {
    if not uint32(events[arg1 + arg6 + arg7 + arg5].field_16):
        if arg4 > block.timestamp:
            if arg2 == 1:
                sub_a5b70192[arg1]++
                if not sub_a5b70192[arg1] <= sub_a5b70192[arg1] + 1:
                    idx = sub_a5b70192[arg1] + 1
                    while sub_a5b70192[arg1] > idx:
                        sub_a5b70192[arg1][idx] = 0
                        idx = idx + 1
                        continue 
                require sub_a5b70192[arg1] < sub_a5b70192[arg1]
                sub_a5b70192[arg1][sub_a5b70192[arg1]] = arg1 + arg6 + arg7 + arg5
                uint256(events[arg1 + arg6 + arg7 + arg5].field_768) = arg1
                Mask(248, 0, events[arg1 + arg6 + arg7 + arg5].field_8) = Mask(248, 0, arg3)
                Mask(240, 0, events[arg1 + arg6 + arg7 + arg5].field_16) = Mask(240, 0, arg4)
                Mask(208, 0, events[arg1 + arg6 + arg7 + arg5].field_48) = Mask(208, 0, arg5)
                uint256(events[arg1 + arg6 + arg7 + arg5].field_512) = arg2
                uint256(events[arg1 + arg6 + arg7 + arg5].field_256) = arg6
                uint256(events[arg1 + arg6 + arg7 + arg5].field_0) = arg7 or Mask(248, 8, uint256(events[arg1 + arg6 + arg7 + arg5].field_0))
            else:
                if not arg2:
                    if arg3 == 2:
                        sub_a5b70192[arg1]++
                        if not sub_a5b70192[arg1] <= sub_a5b70192[arg1] + 1:
                            idx = sub_a5b70192[arg1] + 1
                            while sub_a5b70192[arg1] > idx:
                                sub_a5b70192[arg1][idx] = 0
                                idx = idx + 1
                                continue 
                        require sub_a5b70192[arg1] < sub_a5b70192[arg1]
                        sub_a5b70192[arg1][sub_a5b70192[arg1]] = arg1 + arg6 + arg7 + arg5
                        uint256(events[arg1 + arg6 + arg7 + arg5].field_768) = arg1
                        Mask(248, 0, events[arg1 + arg6 + arg7 + arg5].field_8) = Mask(248, 0, arg3)
                        Mask(240, 0, events[arg1 + arg6 + arg7 + arg5].field_16) = Mask(240, 0, arg4)
                        Mask(208, 0, events[arg1 + arg6 + arg7 + arg5].field_48) = Mask(208, 0, arg5)
                        uint256(events[arg1 + arg6 + arg7 + arg5].field_512) = arg2
                        uint256(events[arg1 + arg6 + arg7 + arg5].field_256) = arg6
                        uint256(events[arg1 + arg6 + arg7 + arg5].field_0) = arg7 or Mask(248, 8, uint256(events[arg1 + arg6 + arg7 + arg5].field_0))
    if not uint256(events[arg1 + arg6 + arg7 + arg5].field_256):
        if msg.value >= 10^6:
            if not uint256(sub_d5d902e8[arg1 + arg6 + arg7 + arg5 + msg.sender].field_512):
                if arg8 >= 0:
                    if arg8 < 50000:
                        sub_ad33e07a[arg1 + arg6 + arg7 + arg5]++
                        if not sub_ad33e07a[arg1 + arg6 + arg7 + arg5] <= sub_ad33e07a[arg1 + arg6 + arg7 + arg5] + 1:
                            idx = sub_ad33e07a[arg1 + arg6 + arg7 + arg5] + 1
                            while sub_ad33e07a[arg1 + arg6 + arg7 + arg5] > idx:
                                sub_ad33e07a[arg1 + arg6 + arg7 + arg5][idx] = 0
                                idx = idx + 1
                                continue 
                        require sub_ad33e07a[arg1 + arg6 + arg7 + arg5] < sub_ad33e07a[arg1 + arg6 + arg7 + arg5]
                        sub_ad33e07a[arg1 + arg6 + arg7 + arg5][sub_ad33e07a[arg1 + arg6 + arg7 + arg5]] = arg1 + arg6 + arg7 + arg5 + msg.sender
                        uint256(sub_d5d902e8[arg1 + arg6 + arg7 + arg5 + msg.sender].field_0) = arg8 or Mask(240, 16, uint256(sub_d5d902e8[arg1 + arg6 + arg7 + arg5 + msg.sender].field_0))
                        uint256(sub_d5d902e8[arg1 + arg6 + arg7 + arg5 + msg.sender].field_512) = msg.value
                        uint256(sub_d5d902e8[arg1 + arg6 + arg7 + arg5 + msg.sender].field_256) = arg1 + arg6 + arg7 + arg5
                        Mask(240, 0, sub_d5d902e8[arg1 + arg6 + arg7 + arg5 + msg.sender].field_16) = Mask(240, 0, msg.sender)
                        idx = 1
                        while uint8(idx) <= uint8(events[arg1 + arg6 + arg7 + arg5].field_8):
                            uint256(sub_d5d902e8[arg1 + arg6 + arg7 + arg5 + msg.sender][3][idx << 248].field_0) = msg.value
                            mem[0] = arg1 + arg6 + arg7 + arg5
                            mem[32] = 3
                            idx = idx + 1
                            continue 
    else:
        if arg9 >= 10^6:
            if arg9 <= sub_ee3f06e8[address(msg.sender)][uint256(stor3[arg1 + arg6 + arg7 + arg5].field_256)][uint8(stor3[arg1 + arg6 + arg7 + arg5].field_0)]:
                sub_ee3f06e8[address(msg.sender)][uint256(stor3[arg1 + arg6 + arg7 + arg5].field_256)][uint8(stor3[arg1 + arg6 + arg7 + arg5].field_0)] -= arg9
                if not uint256(sub_d5d902e8[arg1 + arg6 + arg7 + arg5 + msg.sender].field_512):
                    if arg8 >= 0:
                        if arg8 < 50000:
                            sub_ad33e07a[arg1 + arg6 + arg7 + arg5]++
                            if not sub_ad33e07a[arg1 + arg6 + arg7 + arg5] <= sub_ad33e07a[arg1 + arg6 + arg7 + arg5] + 1:
                                idx = sub_ad33e07a[arg1 + arg6 + arg7 + arg5] + 1
                                while sub_ad33e07a[arg1 + arg6 + arg7 + arg5] > idx:
                                    sub_ad33e07a[arg1 + arg6 + arg7 + arg5][idx] = 0
                                    idx = idx + 1
                                    continue 
                            require sub_ad33e07a[arg1 + arg6 + arg7 + arg5] < sub_ad33e07a[arg1 + arg6 + arg7 + arg5]
                            sub_ad33e07a[arg1 + arg6 + arg7 + arg5][sub_ad33e07a[arg1 + arg6 + arg7 + arg5]] = arg1 + arg6 + arg7 + arg5 + msg.sender
                            uint256(sub_d5d902e8[arg1 + arg6 + arg7 + arg5 + msg.sender].field_0) = arg8 or Mask(240, 16, uint256(sub_d5d902e8[arg1 + arg6 + arg7 + arg5 + msg.sender].field_0))
                            uint256(sub_d5d902e8[arg1 + arg6 + arg7 + arg5 + msg.sender].field_512) = arg9
                            uint256(sub_d5d902e8[arg1 + arg6 + arg7 + arg5 + msg.sender].field_256) = arg1 + arg6 + arg7 + arg5
                            Mask(240, 0, sub_d5d902e8[arg1 + arg6 + arg7 + arg5 + msg.sender].field_16) = Mask(240, 0, msg.sender)
                            idx = 1
                            while uint8(idx) <= uint8(events[arg1 + arg6 + arg7 + arg5].field_8):
                                uint256(sub_d5d902e8[arg1 + arg6 + arg7 + arg5 + msg.sender][3][idx << 248].field_0) = arg9
                                mem[0] = arg1 + arg6 + arg7 + arg5
                                mem[32] = 3
                                idx = idx + 1
                                continue 
}

function buyShares(uint256 arg1, uint8 arg2, uint256 arg3, uint256 arg4) payable {
    call stor1.0x24d4e90a with:
         gas gas_remaining - 25050 wei
        args (uint8(events[uint256(stor2[arg1].field_256)].field_8) << 64)
    require ext_call.success
    mem[224] = uint256(sub_d5d902e8[arg1][3][1].field_0)
    mem[256] = uint256(sub_d5d902e8[arg1][3][1].field_0)
    idx = 2
    while uint8(idx) <= uint8(events[uint256(stor2[arg1].field_256)].field_8):
        if uint256(sub_d5d902e8[arg1][3][idx << 248].field_0) < mem[224]:
            mem[224] = uint256(sub_d5d902e8[arg1][3][idx << 248].field_0)
        mem[0] = uint8(idx)
        mem[32] = sha3(arg1, 2) + 3
        if uint256(sub_d5d902e8[arg1][3][idx << 248].field_0) > mem[256]:
            mem[0] = uint8(idx)
            mem[32] = sha3(arg1, 2) + 3
            mem[256] = uint256(sub_d5d902e8[arg1][3][idx << 248].field_0)
        idx = idx + 1
        continue 
    idx = 1
    s = 0
    while uint8(idx) <= uint8(events[uint256(stor2[arg1].field_256)].field_8):
        mem[0] = uint8(idx)
        mem[32] = sha3(arg1, 2) + 3
        mem[292] = mem[256] - uint256(sub_d5d902e8[arg1][3][idx << 248].field_0) / uint256(sub_d5d902e8[arg1].field_512) / 10000 * ext_call.return_data[0] / 10000
        call stor1.0x4b09ebb2 with:
             gas gas_remaining - 25050 wei
            args (mem[256] - uint256(sub_d5d902e8[arg1][3][idx << 248].field_0) / uint256(sub_d5d902e8[arg1].field_512) / 10000 * ext_call.return_data[0] / 10000)
        mem[288] = ext_call.return_data[0]
        require ext_call.success
        idx = idx + 1
        s = s + ext_call.return_data[0]
        continue 
    call stor1.0x24d4e90a with:
         gas gas_remaining - 25050 wei
        args (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None)
    require ext_call.success
    uint256(sub_d5d902e8[arg1][3][arg2 << 248].field_0) -= arg3
    idx = 1
    s = 0
    while uint8(idx) <= uint8(events[uint256(stor2[arg1].field_256)].field_8):
        mem[0] = uint8(idx)
        mem[32] = sha3(arg1, 2) + 3
        mem[292] = mem[256] - uint256(sub_d5d902e8[arg1][3][idx << 248].field_0) / uint256(sub_d5d902e8[arg1].field_512) / 10000 * ext_call.return_data[0] / 10000
        call stor1.0x4b09ebb2 with:
             gas gas_remaining - 25050 wei
            args (mem[256] - uint256(sub_d5d902e8[arg1][3][idx << 248].field_0) / uint256(sub_d5d902e8[arg1].field_512) / 10000 * ext_call.return_data[0] / 10000)
        mem[288] = ext_call.return_data[0]
        require ext_call.success
        idx = idx + 1
        s = s + ext_call.return_data[0]
        continue 
    call stor1.0x24d4e90a with:
         gas gas_remaining - 25050 wei
        args (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None)
    require ext_call.success
    uint256(sub_d5d902e8[arg1][3][arg2 << 248].field_0) += arg3
    if Mask(192, 64, (ext_call.return_data[0] << 64 / ext_call.return_data[0] / 10000 * uint256(sub_d5d902e8[arg1].field_512) / 10000 * uint16(sub_d5d902e8[arg1].field_0) + 100002 % 16777216) - (ext_call.return_data[0] << 64 / ext_call.return_data[0] / 10000 * uint256(sub_d5d902e8[arg1].field_512) / 10000 * uint16(sub_d5d902e8[arg1].field_0) + 100002 % 16777216) / 100000) >> 64 <= arg3:
        if not uint256(events[uint256(stor2[arg1].field_256)].field_256):
            if Mask(192, 64, (ext_call.return_data[0] << 64 / ext_call.return_data[0] / 10000 * uint256(sub_d5d902e8[arg1].field_512) / 10000 * uint16(sub_d5d902e8[arg1].field_0) + 100002 % 16777216) - (ext_call.return_data[0] << 64 / ext_call.return_data[0] / 10000 * uint256(sub_d5d902e8[arg1].field_512) / 10000 * uint16(sub_d5d902e8[arg1].field_0) + 100002 % 16777216) / 100000) >> 64 > msg.value:
                call msg.sender with:
                   value msg.value wei
                     gas 0 wei
            else:
                idx = 1
                while uint8(idx) <= uint8(events[uint256(stor2[arg1].field_256)].field_8):
                    uint256(sub_d5d902e8[arg1][3][idx << 248].field_0) += Mask(192, 64, (ext_call.return_data[0] << 64 / ext_call.return_data[0] / 10000 * uint256(sub_d5d902e8[arg1].field_512) / 10000 * uint16(sub_d5d902e8[arg1].field_0) + 100002 % 16777216) - (ext_call.return_data[0] << 64 / ext_call.return_data[0] / 10000 * uint256(sub_d5d902e8[arg1].field_512) / 10000 * uint16(sub_d5d902e8[arg1].field_0) + 100002 % 16777216) / 100000) >> 64
                    mem[0] = uint256(sub_d5d902e8[arg1].field_256)
                    mem[32] = 3
                    idx = idx + 1
                    continue 
                uint256(sub_d5d902e8[arg1][3][arg2 << 248].field_0) -= arg3
                sub_ee3f06e8[address(msg.sender)][uint256(stor2[arg1].field_256)][arg2 << 248] += arg3
                call msg.sender with:
                   value msg.value - (Mask(192, 64, (ext_call.return_data[0] << 64 / ext_call.return_data[0] / 10000 * uint256(sub_d5d902e8[arg1].field_512) / 10000 * uint16(sub_d5d902e8[arg1].field_0) + 100002 % 16777216) - (ext_call.return_data[0] << 64 / ext_call.return_data[0] / 10000 * uint256(sub_d5d902e8[arg1].field_512) / 10000 * uint16(sub_d5d902e8[arg1].field_0) + 100002 % 16777216) / 100000) >> 64) wei
                     gas 0 wei
        else:
            if Mask(192, 64, (ext_call.return_data[0] << 64 / ext_call.return_data[0] / 10000 * uint256(sub_d5d902e8[arg1].field_512) / 10000 * uint16(sub_d5d902e8[arg1].field_0) + 100002 % 16777216) - (ext_call.return_data[0] << 64 / ext_call.return_data[0] / 10000 * uint256(sub_d5d902e8[arg1].field_512) / 10000 * uint16(sub_d5d902e8[arg1].field_0) + 100002 % 16777216) / 100000) >> 64 <= arg4:
                if Mask(192, 64, (ext_call.return_data[0] << 64 / ext_call.return_data[0] / 10000 * uint256(sub_d5d902e8[arg1].field_512) / 10000 * uint16(sub_d5d902e8[arg1].field_0) + 100002 % 16777216) - (ext_call.return_data[0] << 64 / ext_call.return_data[0] / 10000 * uint256(sub_d5d902e8[arg1].field_512) / 10000 * uint16(sub_d5d902e8[arg1].field_0) + 100002 % 16777216) / 100000) >> 64 <= sub_ee3f06e8[address(msg.sender)][uint256(stor3[uint256(stor2[arg1].field_256)].field_256)][uint8(stor3[uint256(stor2[arg1].field_256)].field_0)]:
                    idx = 1
                    while uint8(idx) <= uint8(events[uint256(stor2[arg1].field_256)].field_8):
                        uint256(sub_d5d902e8[arg1][3][idx << 248].field_0) += Mask(192, 64, (ext_call.return_data[0] << 64 / ext_call.return_data[0] / 10000 * uint256(sub_d5d902e8[arg1].field_512) / 10000 * uint16(sub_d5d902e8[arg1].field_0) + 100002 % 16777216) - (ext_call.return_data[0] << 64 / ext_call.return_data[0] / 10000 * uint256(sub_d5d902e8[arg1].field_512) / 10000 * uint16(sub_d5d902e8[arg1].field_0) + 100002 % 16777216) / 100000) >> 64
                        mem[0] = uint256(sub_d5d902e8[arg1].field_256)
                        mem[32] = 3
                        idx = idx + 1
                        continue 
                    uint256(sub_d5d902e8[arg1][3][arg2 << 248].field_0) -= arg3
                    sub_ee3f06e8[address(msg.sender)][uint256(stor2[arg1].field_256)][arg2 << 248] += arg3
                    sub_ee3f06e8[address(msg.sender)][uint256(stor3[uint256(stor2[arg1].field_256)].field_256)][uint8(stor3[uint256(stor2[arg1].field_256)].field_0)] -= Mask(192, 64, (ext_call.return_data[0] << 64 / ext_call.return_data[0] / 10000 * uint256(sub_d5d902e8[arg1].field_512) / 10000 * uint16(sub_d5d902e8[arg1].field_0) + 100002 % 16777216) - (ext_call.return_data[0] << 64 / ext_call.return_data[0] / 10000 * uint256(sub_d5d902e8[arg1].field_512) / 10000 * uint16(sub_d5d902e8[arg1].field_0) + 100002 % 16777216) / 100000) >> 64
    else:
        if not uint256(events[uint256(stor2[arg1].field_256)].field_256):
            if arg3 > msg.value:
                call msg.sender with:
                   value msg.value wei
                     gas 0 wei
            else:
                idx = 1
                while uint8(idx) <= uint8(events[uint256(stor2[arg1].field_256)].field_8):
                    uint256(sub_d5d902e8[arg1][3][idx << 248].field_0) += arg3
                    mem[0] = uint256(sub_d5d902e8[arg1].field_256)
                    mem[32] = 3
                    idx = idx + 1
                    continue 
                uint256(sub_d5d902e8[arg1][3][arg2 << 248].field_0) -= arg3
                sub_ee3f06e8[address(msg.sender)][uint256(stor2[arg1].field_256)][arg2 << 248] += arg3
                call msg.sender with:
                   value msg.value - arg3 wei
                     gas 0 wei
        else:
            if arg3 <= arg4:
                if arg3 <= sub_ee3f06e8[address(msg.sender)][uint256(stor3[uint256(stor2[arg1].field_256)].field_256)][uint8(stor3[uint256(stor2[arg1].field_256)].field_0)]:
                    idx = 1
                    while uint8(idx) <= uint8(events[uint256(stor2[arg1].field_256)].field_8):
                        uint256(sub_d5d902e8[arg1][3][idx << 248].field_0) += arg3
                        mem[0] = uint256(sub_d5d902e8[arg1].field_256)
                        mem[32] = 3
                        idx = idx + 1
                        continue 
                    uint256(sub_d5d902e8[arg1][3][arg2 << 248].field_0) -= arg3
                    sub_ee3f06e8[address(msg.sender)][uint256(stor2[arg1].field_256)][arg2 << 248] += arg3
                    sub_ee3f06e8[address(msg.sender)][uint256(stor3[uint256(stor2[arg1].field_256)].field_256)][uint8(stor3[uint256(stor2[arg1].field_256)].field_0)] -= arg3
}



}
