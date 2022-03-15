contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;

function _fallback() payable {
    stor1 = 0x258c09146b7a28dde8d3e230030e27643f91115f
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[75 len 10097]
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
           events[arg1].field_256,
           events[arg1].field_512,
           events[arg1].field_768
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
           sub_d5d902e8[arg1].field_256,
           sub_d5d902e8[arg1].field_512
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
    if msg.sender == address(stor0):
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
    while uint8(idx) <= uint8(events[stor2[arg1].field_256].field_8):
        mem[0] = uint8(idx)
        mem[32] = sha3(arg1, 2) + 3
        require idx < 64
        mem[(32 * idx) + 2144] = sub_d5d902e8[arg1][3][idx << 248].field_0
        idx = idx + 1
        continue 
    return block.timestamp, mem[2176 len 2016]
}

function getShareRange(uint256 arg1, uint8 arg2) payable {
    mem[160] = sub_d5d902e8[arg1][3][1].field_0
    mem[192] = sub_d5d902e8[arg1][3][1].field_0
    idx = 2
    while uint8(idx) <= arg2:
        if sub_d5d902e8[arg1][3][idx << 248].field_0 < mem[160]:
            mem[160] = sub_d5d902e8[arg1][3][idx << 248].field_0
        mem[0] = uint8(idx)
        mem[32] = sha3(arg1, 2) + 3
        if sub_d5d902e8[arg1][3][idx << 248].field_0 > mem[192]:
            mem[0] = uint8(idx)
            mem[32] = sha3(arg1, 2) + 3
            mem[192] = sub_d5d902e8[arg1][3][idx << 248].field_0
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
    if events[arg1].field_256:
        sub_ee3f06e8[address(msg.sender)][stor3[arg1].field_256][uint8(stor3[arg1].field_0)] += arg2
    else:
        call msg.sender with:
           value arg2 wei
             gas 0 wei
}

function buyAllOutcomes(uint256 arg1, uint256 arg2) payable {
    if 0 == events[arg1].field_256:
        idx = 1
        while uint8(idx) <= uint8(events[arg1].field_8):
            sub_ee3f06e8[address(msg.sender)][arg1][idx << 248] += msg.value
            mem[0] = arg1
            mem[32] = 3
            idx = idx + 1
            continue 
    else:
        if sub_ee3f06e8[address(msg.sender)][stor3[arg1].field_256][uint8(stor3[arg1].field_0)] >= arg2:
            idx = 1
            while uint8(idx) <= uint8(events[arg1].field_8):
                sub_ee3f06e8[address(msg.sender)][arg1][idx << 248] += arg2
                mem[0] = arg1
                mem[32] = 3
                idx = idx + 1
                continue 
            sub_ee3f06e8[address(msg.sender)][stor3[arg1].field_256][uint8(stor3[arg1].field_0)] -= arg2
}

function sub_34b88204(?) payable {
    idx = 1
    s = 0
    while uint8(idx) <= arg3:
        mem[0] = uint8(idx)
        mem[32] = sha3(arg1, 2) + 3
        mem[164] = arg2 * call.data[132] - sub_d5d902e8[arg1][3][idx << 248].field_0 / sub_d5d902e8[arg1].field_512 / 10000
        call stor1.e_exp(uint256 rg1) with:
             gas gas_remaining - 25050 wei
            args (arg2 * call.data[132] - sub_d5d902e8[arg1][3][idx << 248].field_0 / sub_d5d902e8[arg1].field_512 / 10000)
        mem[160] = ext_call.return_data[0]
        require ext_call.success
        idx = idx + 1
        s = s + ext_call.return_data[0]
        continue 
    call stor1.ln(uint256 rg1) with:
         gas gas_remaining - 25050 wei
        args (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None)
    require ext_call.success
    return (ext_call.return_data[0] << 64 / arg2)
}

function closeMarketMaker(uint256 arg1) payable {
    if msg.sender == address(sub_d5d902e8[arg1].field_16):
        idx = 1
        while uint8(idx) <= uint8(events[stor2[arg1].field_256].field_8):
            sub_ee3f06e8[address(msg.sender)][stor2[arg1].field_256][idx << 248] += sub_d5d902e8[arg1][3][idx << 248].field_0
            sub_d5d902e8[arg1][3][idx << 248].field_0 = 0
            mem[0] = sub_d5d902e8[arg1].field_256
            mem[32] = 3
            idx = idx + 1
            continue 
        s = 0
        idx = 0
        while uint8(idx) < sub_ad33e07a[stor2[arg1].field_256]:
            require idx < sub_ad33e07a[stor2[arg1].field_256]
            if s:
                require idx - 1 < sub_ad33e07a[stor2[arg1].field_256]
                sub_ad33e07a[stor2[arg1].field_256][idx] = sub_ad33e07a[stor2[arg1].field_256][idx]
            mem[0] = sub_d5d902e8[arg1].field_256
            mem[32] = 4
            s = sub_ad33e07a[stor2[arg1].field_256][idx] == arg1
            idx = idx + 1
            continue 
        sub_ad33e07a[stor2[arg1].field_256]--
        if not sub_ad33e07a[stor2[arg1].field_256] <= sub_ad33e07a[stor2[arg1].field_256] - 1:
            idx = sub_ad33e07a[stor2[arg1].field_256] - 1
            while sub_ad33e07a[stor2[arg1].field_256] > idx:
                sub_ad33e07a[stor2[arg1].field_256][idx] = 0
                idx = idx + 1
                continue 
        Mask(176, 0, sub_d5d902e8[arg1].field_0) = 0
        sub_d5d902e8[arg1].field_256 = 0
        sub_d5d902e8[arg1].field_512 = 0
}

function getMarkets(uint256[128] arg1) payable {
    mem[96 len 4096] = call.data[4 len 4096]
    mem[4192] = 0
    mem[4224 len 32736] = 0
    mem[36960] = 0
    mem[36992 len 32736] = 0
    s = 0
    idx = 0
    while idx < 128:
        mem[0] = mem[(32 * idx) + 96]
        mem[32] = 5
        _68 = sha3(mem[(32 * idx) + 96], 5)
        s = 0
        while s < sub_a5b70192[mem[(32 * idx) + 96]]:
            require s < sub_a5b70192[mem[(32 * idx) + 96]]
            mem[0] = sub_a5b70192[mem[(32 * idx) + 96]][s]
            mem[32] = 4
            if var62006 >= sub_ad33e07a[stor5[mem[(32 * idx) + 96]][s]]:
                s = s + 1
                continue 
            require idx < 128
            require var66008 < 1024
            mem[(32 * var68001) + 36960] = var68003
            require s < stor[_68]
            require var70008 + 1 < 1024
            mem[(32 * var72001) + 36960] = var72003
            require s < stor[_68]
            require var74006 < sub_ad33e07a[stor[s + sha3(_68)]]
            require var76008 + 2 < 1024
            mem[(32 * var78001) + 36960] = var78003
            require idx < 128
            require s < sub_a5b70192[mem[(32 * idx) + 96]]
            require var82010 + 3 < 1024
            mem[(32 * var84001) + 36960] = var84003
            require idx < 128
            require s < sub_a5b70192[mem[(32 * idx) + 96]]
            require var88010 + 4 < 1024
            # nil
        s = sha3(mem[(32 * idx) + 96], 5)
        idx = idx + 1
        continue 
    return memory
      from 36960
       len 32768
}

function getShares(uint256[128] arg1) payable {
    mem[96 len 4096] = call.data[4 len 4096]
    mem[4192] = 0
    mem[4224 len 32736] = 0
    mem[36960] = 0
    mem[36992 len 32736] = 0
    s = 0
    idx = 0
    s = 0
    while idx < 128:
        require s < 1024
        mem[(32 * s) + 36960] = mem[(32 * idx) + 96]
        require idx < 128
        require s + 1 < 1024
        mem[(32 * s + 1) + 36960] = uint8(events[mem[(32 * idx) + 96]].field_8)
        require idx < 128
        mem[0] = mem[(32 * idx) + 96]
        mem[32] = 3
        if uint8(var22005) > uint8(events[mem[(32 * idx) + 96]].field_8):
            s = var22005
            idx = idx + 1
            s = s + uint8(var22005 + 1)
            continue 
        require idx < 128
        require s + uint8(var26005) + 1 < 1024
        mem[(32 * var28001) + 36960] = var28003
        require idx < 128
        mem[0] = mem[(32 * idx) + 96]
        mem[32] = 3
        if uint8(var32005) > uint8(events[mem[(32 * idx) + 96]].field_8):
            s = var32005
            idx = idx + 1
            s = s + uint8(var32005 + 1)
            continue 
        require idx < 128
        require s + uint8(var36005) + 1 < 1024
        mem[(32 * var38001) + 36960] = var38003
        require idx < 128
        mem[0] = mem[(32 * idx) + 96]
        mem[32] = 3
        if uint8(var42005) > uint8(events[mem[(32 * idx) + 96]].field_8):
            s = var42005
            idx = idx + 1
            s = s + uint8(var42005 + 1)
            continue 
        require idx < 128
        require s + uint8(var46005) + 1 < 1024
        require idx < 128
        # nil
    return memory
      from 36960
       len 32768
}

function redeemWinnings(uint256 arg1) payable {
    call address(events[arg1].field_48).getWinningOutcome(uint256 rg1) with:
         gas gas_remaining - 25050 wei
        args events[arg1].field_768
    require ext_call.success
    if ext_call.return_data[30 len 2] > 0:
        if events[arg1].field_512 != 1:
            if events[arg1].field_256 <= 0:
                call msg.sender with:
                   value (10000 * sub_ee3f06e8[address(msg.sender)][arg1][1]) - (uint16(ext_call.return_data[0] - 1) * sub_ee3f06e8[address(msg.sender)][arg1][1]) + (uint16(ext_call.return_data[0] - 1) * sub_ee3f06e8[address(msg.sender)][arg1][2]) / 10000 wei
                     gas 0 wei
            else:
                sub_ee3f06e8[address(msg.sender)][stor3[arg1].field_256][uint8(stor3[arg1].field_0)] += (10000 * sub_ee3f06e8[address(msg.sender)][arg1][1]) - (uint16(ext_call.return_data[0] - 1) * sub_ee3f06e8[address(msg.sender)][arg1][1]) + (uint16(ext_call.return_data[0] - 1) * sub_ee3f06e8[address(msg.sender)][arg1][2]) / 10000
        else:
            if events[arg1].field_256 <= 0:
                call msg.sender with:
                   value sub_ee3f06e8[address(msg.sender)][arg1][ext_call.return_data[0] << 248] wei
                     gas 0 wei
            else:
                sub_ee3f06e8[address(msg.sender)][stor3[arg1].field_256][uint8(stor3[arg1].field_0)] += sub_ee3f06e8[address(msg.sender)][arg1][ext_call.return_data[0] << 248]
        idx = 1
        while uint8(idx) <= uint8(events[arg1].field_8):
            sub_ee3f06e8[address(msg.sender)][arg1][idx << 248] = 0
            mem[0] = arg1
            mem[32] = 3
            idx = idx + 1
            continue 
}

function createEvent(uint256 arg1, uint256 arg2, uint8 arg3, uint32 arg4, address arg5, uint256 arg6, uint8 arg7) payable {
    if 0 == uint32(events[arg5 + arg7 + arg1 + arg6].field_16):
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
                sub_a5b70192[arg1][sub_a5b70192[arg1]] = arg5 + arg7 + arg1 + arg6
                events[arg5 + arg7 + arg1 + arg6].field_768 = arg1
                events[arg5 + arg7 + arg1 + arg6].field_512 = arg2
                events[arg5 + arg7 + arg1 + arg6].field_256 = arg6
                events[arg5 + arg7 + arg1 + arg6].field_0 = arg7 or arg5 << 48 or Mask(48, 192, arg4) << 16 or Mask(48, 200, arg3) << 8 or Mask(48, 208, events[arg5 + arg7 + arg1 + arg6].field_0) or Mask(48, 208, uint8(events[arg5 + arg7 + arg1 + arg6].field_0)) or uint32(arg4) << 16 or uint8(arg3) << 8 or Mask(248, 8, uint8(events[arg5 + arg7 + arg1 + arg6].field_0))
            else:
                if not arg2:
                    if 2 == arg3:
                        sub_a5b70192[arg1]++
                        if not sub_a5b70192[arg1] <= sub_a5b70192[arg1] + 1:
                            idx = sub_a5b70192[arg1] + 1
                            while sub_a5b70192[arg1] > idx:
                                sub_a5b70192[arg1][idx] = 0
                                idx = idx + 1
                                continue 
                        require sub_a5b70192[arg1] < sub_a5b70192[arg1]
                        sub_a5b70192[arg1][sub_a5b70192[arg1]] = arg5 + arg7 + arg1 + arg6
                        events[arg5 + arg7 + arg1 + arg6].field_768 = arg1
                        events[arg5 + arg7 + arg1 + arg6].field_512 = arg2
                        events[arg5 + arg7 + arg1 + arg6].field_256 = arg6
                        events[arg5 + arg7 + arg1 + arg6].field_0 = arg7 or arg5 << 48 or Mask(48, 192, arg4) << 16 or Mask(48, 200, arg3) << 8 or Mask(48, 208, events[arg5 + arg7 + arg1 + arg6].field_0) or Mask(48, 208, uint8(events[arg5 + arg7 + arg1 + arg6].field_0)) or uint32(arg4) << 16 or uint8(arg3) << 8 or Mask(248, 8, uint8(events[arg5 + arg7 + arg1 + arg6].field_0))
}

function createMarketMaker(uint256 arg1, uint16 arg2, uint256 arg3) payable {
    if 0 == events[arg1].field_256:
        if msg.value >= 10^6:
            if 0 == sub_d5d902e8[arg1 + msg.sender].field_512:
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
                        sub_d5d902e8[arg1 + msg.sender].field_512 = msg.value
                        sub_d5d902e8[arg1 + msg.sender].field_256 = arg1
                        uint16(sub_d5d902e8[arg1 + msg.sender].field_0) = arg2
                        Mask(240, 0, sub_d5d902e8[arg1 + msg.sender].field_16) = Mask(240, 0, msg.sender)
                        Mask(80, 0, sub_d5d902e8[arg1 + msg.sender].field_176) = Mask(80, 176, arg2) >> 176
                        idx = 1
                        while uint8(idx) <= uint8(events[arg1].field_8):
                            sub_d5d902e8[arg1 + msg.sender][3][idx << 248].field_0 = msg.value
                            mem[0] = arg1
                            mem[32] = 3
                            idx = idx + 1
                            continue 
    else:
        if arg3 >= 10^6:
            if arg3 <= sub_ee3f06e8[address(msg.sender)][stor3[arg1].field_256][uint8(stor3[arg1].field_0)]:
                sub_ee3f06e8[address(msg.sender)][stor3[arg1].field_256][uint8(stor3[arg1].field_0)] -= arg3
                if 0 == sub_d5d902e8[arg1 + msg.sender].field_512:
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
                            sub_d5d902e8[arg1 + msg.sender].field_512 = arg3
                            sub_d5d902e8[arg1 + msg.sender].field_256 = arg1
                            uint16(sub_d5d902e8[arg1 + msg.sender].field_0) = arg2
                            Mask(240, 0, sub_d5d902e8[arg1 + msg.sender].field_16) = Mask(240, 0, msg.sender)
                            Mask(80, 0, sub_d5d902e8[arg1 + msg.sender].field_176) = Mask(80, 176, arg2) >> 176
                            idx = 1
                            while uint8(idx) <= uint8(events[arg1].field_8):
                                sub_d5d902e8[arg1 + msg.sender][3][idx << 248].field_0 = arg3
                                mem[0] = arg1
                                mem[32] = 3
                                idx = idx + 1
                                continue 
}

function calcCostsSelling(uint256 arg1, uint8 arg2, uint8 arg3, uint256 arg4) payable {
    call stor1.ln(uint256 rg1) with:
         gas gas_remaining - 25050 wei
        args (uint8(arg2) << 64)
    require ext_call.success
    mem[224] = sub_d5d902e8[arg1][3][1].field_0
    mem[256] = sub_d5d902e8[arg1][3][1].field_0
    idx = 2
    while uint8(idx) <= arg2:
        if sub_d5d902e8[arg1][3][idx << 248].field_0 < mem[224]:
            mem[224] = sub_d5d902e8[arg1][3][idx << 248].field_0
        mem[0] = uint8(idx)
        mem[32] = sha3(arg1, 2) + 3
        if sub_d5d902e8[arg1][3][idx << 248].field_0 > mem[256]:
            mem[0] = uint8(idx)
            mem[32] = sha3(arg1, 2) + 3
            mem[256] = sub_d5d902e8[arg1][3][idx << 248].field_0
        idx = idx + 1
        continue 
    mem[256] = arg4 + mem[256]
    s = 1
    t = 0
    while uint8(s) <= arg2:
        mem[0] = uint8(s)
        mem[32] = sha3(arg1, 2) + 3
        mem[292] = ext_call.return_data[0] / 10000 * mem[256] - sub_d5d902e8[arg1][3][s << 248].field_0 / sub_d5d902e8[arg1].field_512 / 10000
        call stor1.e_exp(uint256 rg1) with:
             gas gas_remaining - 25050 wei
            args (ext_call.return_data[0] / 10000 * mem[256] - sub_d5d902e8[arg1][3][s << 248].field_0 / sub_d5d902e8[arg1].field_512 / 10000)
        mem[288] = ext_call.return_data[0]
        require ext_call.success
        s = s + 1
        t = t + ext_call.return_data[0]
        continue 
    call stor1.ln(uint256 rg1) with:
         gas gas_remaining - 25050 wei
        args (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None)
    require ext_call.success
    sub_d5d902e8[arg1][3][arg3 << 248].field_0 += arg4
    idx = 1
    s = 0
    while uint8(idx) <= arg2:
        mem[0] = uint8(idx)
        mem[32] = sha3(arg1, 2) + 3
        mem[292] = ext_call.return_data[0] / 10000 * mem[256] - sub_d5d902e8[arg1][3][idx << 248].field_0 / sub_d5d902e8[arg1].field_512 / 10000
        call stor1.e_exp(uint256 rg1) with:
             gas gas_remaining - 25050 wei
            args (ext_call.return_data[0] / 10000 * mem[256] - sub_d5d902e8[arg1][3][idx << 248].field_0 / sub_d5d902e8[arg1].field_512 / 10000)
        mem[288] = ext_call.return_data[0]
        require ext_call.success
        idx = idx + 1
        s = s + ext_call.return_data[0]
        continue 
    call stor1.ln(uint256 rg1) with:
         gas gas_remaining - 25050 wei
        args (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None)
    require ext_call.success
    sub_d5d902e8[arg1][3][arg3 << 248].field_0 -= arg4
    return (Mask(192, 64, (ext_call.return_data[0] << 64 / ext_call.return_data[0] / 10000 * sub_d5d902e8[arg1].field_512 / 10000 * -uint16(sub_d5d902e8[arg1].field_0) + 99998 % 16777216) - (ext_call.return_data[0] << 64 / ext_call.return_data[0] / 10000 * sub_d5d902e8[arg1].field_512 / 10000 * -uint16(sub_d5d902e8[arg1].field_0) + 99998 % 16777216) / 100000) >> 64)
}

function calcCostsBuying(uint256 arg1, uint8 arg2, uint8 arg3, uint256 arg4) payable {
    call stor1.ln(uint256 rg1) with:
         gas gas_remaining - 25050 wei
        args (uint8(arg2) << 64)
    require ext_call.success
    mem[224] = sub_d5d902e8[arg1][3][1].field_0
    mem[256] = sub_d5d902e8[arg1][3][1].field_0
    idx = 2
    while uint8(idx) <= arg2:
        if sub_d5d902e8[arg1][3][idx << 248].field_0 < mem[224]:
            mem[224] = sub_d5d902e8[arg1][3][idx << 248].field_0
        mem[0] = uint8(idx)
        mem[32] = sha3(arg1, 2) + 3
        if sub_d5d902e8[arg1][3][idx << 248].field_0 > mem[256]:
            mem[0] = uint8(idx)
            mem[32] = sha3(arg1, 2) + 3
            mem[256] = sub_d5d902e8[arg1][3][idx << 248].field_0
        idx = idx + 1
        continue 
    s = 1
    t = 0
    while uint8(s) <= arg2:
        mem[0] = uint8(s)
        mem[32] = sha3(arg1, 2) + 3
        mem[292] = ext_call.return_data[0] / 10000 * mem[256] - sub_d5d902e8[arg1][3][s << 248].field_0 / sub_d5d902e8[arg1].field_512 / 10000
        call stor1.e_exp(uint256 rg1) with:
             gas gas_remaining - 25050 wei
            args (ext_call.return_data[0] / 10000 * mem[256] - sub_d5d902e8[arg1][3][s << 248].field_0 / sub_d5d902e8[arg1].field_512 / 10000)
        mem[288] = ext_call.return_data[0]
        require ext_call.success
        s = s + 1
        t = t + ext_call.return_data[0]
        continue 
    call stor1.ln(uint256 rg1) with:
         gas gas_remaining - 25050 wei
        args (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None)
    require ext_call.success
    sub_d5d902e8[arg1][3][arg3 << 248].field_0 -= arg4
    idx = 1
    s = 0
    while uint8(idx) <= arg2:
        mem[0] = uint8(idx)
        mem[32] = sha3(arg1, 2) + 3
        mem[292] = ext_call.return_data[0] / 10000 * mem[256] - sub_d5d902e8[arg1][3][idx << 248].field_0 / sub_d5d902e8[arg1].field_512 / 10000
        call stor1.e_exp(uint256 rg1) with:
             gas gas_remaining - 25050 wei
            args (ext_call.return_data[0] / 10000 * mem[256] - sub_d5d902e8[arg1][3][idx << 248].field_0 / sub_d5d902e8[arg1].field_512 / 10000)
        mem[288] = ext_call.return_data[0]
        require ext_call.success
        idx = idx + 1
        s = s + ext_call.return_data[0]
        continue 
    call stor1.ln(uint256 rg1) with:
         gas gas_remaining - 25050 wei
        args (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None)
    require ext_call.success
    sub_d5d902e8[arg1][3][arg3 << 248].field_0 += arg4
    if Mask(192, 64, (ext_call.return_data[0] << 64 / ext_call.return_data[0] / 10000 * sub_d5d902e8[arg1].field_512 / 10000 * uint16(sub_d5d902e8[arg1].field_0) + 100002 % 16777216) - (ext_call.return_data[0] << 64 / ext_call.return_data[0] / 10000 * sub_d5d902e8[arg1].field_512 / 10000 * uint16(sub_d5d902e8[arg1].field_0) + 100002 % 16777216) / 100000) >> 64 <= arg4:
        return (Mask(192, 64, (ext_call.return_data[0] << 64 / ext_call.return_data[0] / 10000 * sub_d5d902e8[arg1].field_512 / 10000 * uint16(sub_d5d902e8[arg1].field_0) + 100002 % 16777216) - (ext_call.return_data[0] << 64 / ext_call.return_data[0] / 10000 * sub_d5d902e8[arg1].field_512 / 10000 * uint16(sub_d5d902e8[arg1].field_0) + 100002 % 16777216) / 100000) >> 64)
    return arg4
}

function sellShares(uint256 arg1, uint8 arg2, uint256 arg3, uint256 arg4) payable {
    call stor1.ln(uint256 rg1) with:
         gas gas_remaining - 25050 wei
        args (uint8(events[stor2[arg1].field_256].field_8) << 64)
    require ext_call.success
    mem[224] = sub_d5d902e8[arg1][3][1].field_0
    mem[256] = sub_d5d902e8[arg1][3][1].field_0
    idx = 2
    while uint8(idx) <= uint8(events[stor2[arg1].field_256].field_8):
        if sub_d5d902e8[arg1][3][idx << 248].field_0 < mem[224]:
            mem[224] = sub_d5d902e8[arg1][3][idx << 248].field_0
        mem[0] = uint8(idx)
        mem[32] = sha3(arg1, 2) + 3
        if sub_d5d902e8[arg1][3][idx << 248].field_0 > mem[256]:
            mem[0] = uint8(idx)
            mem[32] = sha3(arg1, 2) + 3
            mem[256] = sub_d5d902e8[arg1][3][idx << 248].field_0
        idx = idx + 1
        continue 
    mem[256] = arg3 + mem[256]
    s = 1
    t = 0
    while uint8(s) <= uint8(events[stor2[arg1].field_256].field_8):
        mem[0] = uint8(s)
        mem[32] = sha3(arg1, 2) + 3
        mem[292] = ext_call.return_data[0] / 10000 * mem[256] - sub_d5d902e8[arg1][3][s << 248].field_0 / sub_d5d902e8[arg1].field_512 / 10000
        call stor1.e_exp(uint256 rg1) with:
             gas gas_remaining - 25050 wei
            args (ext_call.return_data[0] / 10000 * mem[256] - sub_d5d902e8[arg1][3][s << 248].field_0 / sub_d5d902e8[arg1].field_512 / 10000)
        mem[288] = ext_call.return_data[0]
        require ext_call.success
        s = s + 1
        t = t + ext_call.return_data[0]
        continue 
    call stor1.ln(uint256 rg1) with:
         gas gas_remaining - 25050 wei
        args (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None)
    require ext_call.success
    sub_d5d902e8[arg1][3][arg2 << 248].field_0 += arg3
    idx = 1
    s = 0
    while uint8(idx) <= uint8(events[stor2[arg1].field_256].field_8):
        mem[0] = uint8(idx)
        mem[32] = sha3(arg1, 2) + 3
        mem[292] = ext_call.return_data[0] / 10000 * mem[256] - sub_d5d902e8[arg1][3][idx << 248].field_0 / sub_d5d902e8[arg1].field_512 / 10000
        call stor1.e_exp(uint256 rg1) with:
             gas gas_remaining - 25050 wei
            args (ext_call.return_data[0] / 10000 * mem[256] - sub_d5d902e8[arg1][3][idx << 248].field_0 / sub_d5d902e8[arg1].field_512 / 10000)
        mem[288] = ext_call.return_data[0]
        require ext_call.success
        idx = idx + 1
        s = s + ext_call.return_data[0]
        continue 
    call stor1.ln(uint256 rg1) with:
         gas gas_remaining - 25050 wei
        args (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None)
    require ext_call.success
    sub_d5d902e8[arg1][3][arg2 << 248].field_0 -= arg3
    if Mask(192, 64, (ext_call.return_data[0] << 64 / ext_call.return_data[0] / 10000 * sub_d5d902e8[arg1].field_512 / 10000 * -uint16(sub_d5d902e8[arg1].field_0) + 99998 % 16777216) - (ext_call.return_data[0] << 64 / ext_call.return_data[0] / 10000 * sub_d5d902e8[arg1].field_512 / 10000 * -uint16(sub_d5d902e8[arg1].field_0) + 99998 % 16777216) / 100000) >> 64 >= arg4:
        if sub_ee3f06e8[address(msg.sender)][stor2[arg1].field_256][arg2 << 248] >= arg3:
            idx = 1
            while uint8(idx) <= uint8(events[stor2[arg1].field_256].field_8):
                sub_d5d902e8[arg1][3][idx << 248].field_0 -= Mask(192, 64, (ext_call.return_data[0] << 64 / ext_call.return_data[0] / 10000 * sub_d5d902e8[arg1].field_512 / 10000 * -uint16(sub_d5d902e8[arg1].field_0) + 99998 % 16777216) - (ext_call.return_data[0] << 64 / ext_call.return_data[0] / 10000 * sub_d5d902e8[arg1].field_512 / 10000 * -uint16(sub_d5d902e8[arg1].field_0) + 99998 % 16777216) / 100000) >> 64
                mem[0] = sub_d5d902e8[arg1].field_256
                mem[32] = 3
                idx = idx + 1
                continue 
            sub_d5d902e8[arg1][3][arg2 << 248].field_0 += arg3
            sub_ee3f06e8[address(msg.sender)][stor2[arg1].field_256][arg2 << 248] -= arg3
            if not events[stor2[arg1].field_256].field_256:
                call msg.sender with:
                   value Mask(192, 64, (ext_call.return_data[0] << 64 / ext_call.return_data[0] / 10000 * sub_d5d902e8[arg1].field_512 / 10000 * -uint16(sub_d5d902e8[arg1].field_0) + 99998 % 16777216) - (ext_call.return_data[0] << 64 / ext_call.return_data[0] / 10000 * sub_d5d902e8[arg1].field_512 / 10000 * -uint16(sub_d5d902e8[arg1].field_0) + 99998 % 16777216) / 100000) >> 64 wei
                     gas 0 wei
            else:
                sub_ee3f06e8[address(msg.sender)][stor3[stor2[arg1].field_256].field_256][uint8(stor3[stor2[arg1].field_256].field_0)] += Mask(192, 64, (ext_call.return_data[0] << 64 / ext_call.return_data[0] / 10000 * sub_d5d902e8[arg1].field_512 / 10000 * -uint16(sub_d5d902e8[arg1].field_0) + 99998 % 16777216) - (ext_call.return_data[0] << 64 / ext_call.return_data[0] / 10000 * sub_d5d902e8[arg1].field_512 / 10000 * -uint16(sub_d5d902e8[arg1].field_0) + 99998 % 16777216) / 100000) >> 64
}

function createEventAndMarketMaker(uint256 arg1, uint256 arg2, uint8 arg3, uint32 arg4, address arg5, uint256 arg6, uint8 arg7, uint16 arg8, uint256 arg9) payable {
    if 0 == uint32(events[arg5 + arg7 + arg1 + arg6].field_16):
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
                sub_a5b70192[arg1][sub_a5b70192[arg1]] = arg5 + arg7 + arg1 + arg6
                events[arg5 + arg7 + arg1 + arg6].field_768 = arg1
                events[arg5 + arg7 + arg1 + arg6].field_512 = arg2
                events[arg5 + arg7 + arg1 + arg6].field_256 = arg6
                events[arg5 + arg7 + arg1 + arg6].field_0 = arg7 or arg5 << 48 or Mask(48, 192, arg4) << 16 or Mask(48, 200, arg3) << 8 or Mask(48, 208, events[arg5 + arg7 + arg1 + arg6].field_0) or Mask(48, 208, uint8(events[arg5 + arg7 + arg1 + arg6].field_0)) or uint32(arg4) << 16 or uint8(arg3) << 8 or Mask(248, 8, uint8(events[arg5 + arg7 + arg1 + arg6].field_0))
            else:
                if not arg2:
                    if 2 == arg3:
                        sub_a5b70192[arg1]++
                        if not sub_a5b70192[arg1] <= sub_a5b70192[arg1] + 1:
                            idx = sub_a5b70192[arg1] + 1
                            while sub_a5b70192[arg1] > idx:
                                sub_a5b70192[arg1][idx] = 0
                                idx = idx + 1
                                continue 
                        require sub_a5b70192[arg1] < sub_a5b70192[arg1]
                        sub_a5b70192[arg1][sub_a5b70192[arg1]] = arg5 + arg7 + arg1 + arg6
                        events[arg5 + arg7 + arg1 + arg6].field_768 = arg1
                        events[arg5 + arg7 + arg1 + arg6].field_512 = arg2
                        events[arg5 + arg7 + arg1 + arg6].field_256 = arg6
                        events[arg5 + arg7 + arg1 + arg6].field_0 = arg7 or arg5 << 48 or Mask(48, 192, arg4) << 16 or Mask(48, 200, arg3) << 8 or Mask(48, 208, events[arg5 + arg7 + arg1 + arg6].field_0) or Mask(48, 208, uint8(events[arg5 + arg7 + arg1 + arg6].field_0)) or uint32(arg4) << 16 or uint8(arg3) << 8 or Mask(248, 8, uint8(events[arg5 + arg7 + arg1 + arg6].field_0))
    if 0 == events[arg5 + arg7 + arg6 + arg1].field_256:
        if msg.value >= 10^6:
            if 0 == sub_d5d902e8[arg5 + arg7 + arg6 + arg1 + msg.sender].field_512:
                if arg8 >= 0:
                    if arg8 < 50000:
                        sub_ad33e07a[arg5 + arg7 + arg6 + arg1]++
                        if not sub_ad33e07a[arg5 + arg7 + arg6 + arg1] <= sub_ad33e07a[arg5 + arg7 + arg6 + arg1] + 1:
                            idx = sub_ad33e07a[arg5 + arg7 + arg6 + arg1] + 1
                            while sub_ad33e07a[arg5 + arg7 + arg6 + arg1] > idx:
                                sub_ad33e07a[arg5 + arg7 + arg6 + arg1][idx] = 0
                                idx = idx + 1
                                continue 
                        require sub_ad33e07a[arg5 + arg7 + arg6 + arg1] < sub_ad33e07a[arg5 + arg7 + arg6 + arg1]
                        sub_ad33e07a[arg5 + arg7 + arg6 + arg1][sub_ad33e07a[arg5 + arg7 + arg6 + arg1]] = arg5 + arg7 + arg6 + arg1 + msg.sender
                        sub_d5d902e8[arg5 + arg7 + arg6 + arg1 + msg.sender].field_512 = msg.value
                        sub_d5d902e8[arg5 + arg7 + arg6 + arg1 + msg.sender].field_256 = arg5 + arg7 + arg6 + arg1
                        uint16(sub_d5d902e8[arg5 + arg7 + arg6 + arg1 + msg.sender].field_0) = arg8
                        Mask(240, 0, sub_d5d902e8[arg5 + arg7 + arg6 + arg1 + msg.sender].field_16) = Mask(240, 0, msg.sender)
                        Mask(80, 0, sub_d5d902e8[arg5 + arg7 + arg6 + arg1 + msg.sender].field_176) = Mask(80, 176, arg8) >> 176
                        idx = 1
                        while uint8(idx) <= uint8(events[arg5 + arg7 + arg6 + arg1].field_8):
                            sub_d5d902e8[arg5 + arg7 + arg6 + arg1 + msg.sender][3][idx << 248].field_0 = msg.value
                            mem[0] = arg5 + arg7 + arg6 + arg1
                            mem[32] = 3
                            idx = idx + 1
                            continue 
    else:
        if arg9 >= 10^6:
            if arg9 <= sub_ee3f06e8[address(msg.sender)][stor3[arg5 + arg7 + arg6 + arg1].field_256][uint8(stor3[arg5 + arg7 + arg6 + arg1].field_0)]:
                sub_ee3f06e8[address(msg.sender)][stor3[arg5 + arg7 + arg6 + arg1].field_256][uint8(stor3[arg5 + arg7 + arg6 + arg1].field_0)] -= arg9
                if 0 == sub_d5d902e8[arg5 + arg7 + arg6 + arg1 + msg.sender].field_512:
                    if arg8 >= 0:
                        if arg8 < 50000:
                            sub_ad33e07a[arg5 + arg7 + arg6 + arg1]++
                            if not sub_ad33e07a[arg5 + arg7 + arg6 + arg1] <= sub_ad33e07a[arg5 + arg7 + arg6 + arg1] + 1:
                                idx = sub_ad33e07a[arg5 + arg7 + arg6 + arg1] + 1
                                while sub_ad33e07a[arg5 + arg7 + arg6 + arg1] > idx:
                                    sub_ad33e07a[arg5 + arg7 + arg6 + arg1][idx] = 0
                                    idx = idx + 1
                                    continue 
                            require sub_ad33e07a[arg5 + arg7 + arg6 + arg1] < sub_ad33e07a[arg5 + arg7 + arg6 + arg1]
                            sub_ad33e07a[arg5 + arg7 + arg6 + arg1][sub_ad33e07a[arg5 + arg7 + arg6 + arg1]] = arg5 + arg7 + arg6 + arg1 + msg.sender
                            sub_d5d902e8[arg5 + arg7 + arg6 + arg1 + msg.sender].field_512 = arg9
                            sub_d5d902e8[arg5 + arg7 + arg6 + arg1 + msg.sender].field_256 = arg5 + arg7 + arg6 + arg1
                            uint16(sub_d5d902e8[arg5 + arg7 + arg6 + arg1 + msg.sender].field_0) = arg8
                            Mask(240, 0, sub_d5d902e8[arg5 + arg7 + arg6 + arg1 + msg.sender].field_16) = Mask(240, 0, msg.sender)
                            Mask(80, 0, sub_d5d902e8[arg5 + arg7 + arg6 + arg1 + msg.sender].field_176) = Mask(80, 176, arg8) >> 176
                            idx = 1
                            while uint8(idx) <= uint8(events[arg5 + arg7 + arg6 + arg1].field_8):
                                sub_d5d902e8[arg5 + arg7 + arg6 + arg1 + msg.sender][3][idx << 248].field_0 = arg9
                                mem[0] = arg5 + arg7 + arg6 + arg1
                                mem[32] = 3
                                idx = idx + 1
                                continue 
}

function buyShares(uint256 arg1, uint8 arg2, uint256 arg3, uint256 arg4) payable {
    call stor1.ln(uint256 rg1) with:
         gas gas_remaining - 25050 wei
        args (uint8(events[stor2[arg1].field_256].field_8) << 64)
    require ext_call.success
    mem[224] = sub_d5d902e8[arg1][3][1].field_0
    mem[256] = sub_d5d902e8[arg1][3][1].field_0
    idx = 2
    while uint8(idx) <= uint8(events[stor2[arg1].field_256].field_8):
        if sub_d5d902e8[arg1][3][idx << 248].field_0 < mem[224]:
            mem[224] = sub_d5d902e8[arg1][3][idx << 248].field_0
        mem[0] = uint8(idx)
        mem[32] = sha3(arg1, 2) + 3
        if sub_d5d902e8[arg1][3][idx << 248].field_0 > mem[256]:
            mem[0] = uint8(idx)
            mem[32] = sha3(arg1, 2) + 3
            mem[256] = sub_d5d902e8[arg1][3][idx << 248].field_0
        idx = idx + 1
        continue 
    s = 1
    t = 0
    while uint8(s) <= uint8(events[stor2[arg1].field_256].field_8):
        mem[0] = uint8(s)
        mem[32] = sha3(arg1, 2) + 3
        mem[292] = ext_call.return_data[0] / 10000 * mem[256] - sub_d5d902e8[arg1][3][s << 248].field_0 / sub_d5d902e8[arg1].field_512 / 10000
        call stor1.e_exp(uint256 rg1) with:
             gas gas_remaining - 25050 wei
            args (ext_call.return_data[0] / 10000 * mem[256] - sub_d5d902e8[arg1][3][s << 248].field_0 / sub_d5d902e8[arg1].field_512 / 10000)
        mem[288] = ext_call.return_data[0]
        require ext_call.success
        s = s + 1
        t = t + ext_call.return_data[0]
        continue 
    call stor1.ln(uint256 rg1) with:
         gas gas_remaining - 25050 wei
        args (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None)
    require ext_call.success
    sub_d5d902e8[arg1][3][arg2 << 248].field_0 -= arg3
    idx = 1
    s = 0
    while uint8(idx) <= uint8(events[stor2[arg1].field_256].field_8):
        mem[0] = uint8(idx)
        mem[32] = sha3(arg1, 2) + 3
        mem[292] = ext_call.return_data[0] / 10000 * mem[256] - sub_d5d902e8[arg1][3][idx << 248].field_0 / sub_d5d902e8[arg1].field_512 / 10000
        call stor1.e_exp(uint256 rg1) with:
             gas gas_remaining - 25050 wei
            args (ext_call.return_data[0] / 10000 * mem[256] - sub_d5d902e8[arg1][3][idx << 248].field_0 / sub_d5d902e8[arg1].field_512 / 10000)
        mem[288] = ext_call.return_data[0]
        require ext_call.success
        idx = idx + 1
        s = s + ext_call.return_data[0]
        continue 
    call stor1.ln(uint256 rg1) with:
         gas gas_remaining - 25050 wei
        args (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None)
    require ext_call.success
    sub_d5d902e8[arg1][3][arg2 << 248].field_0 += arg3
    if Mask(192, 64, (ext_call.return_data[0] << 64 / ext_call.return_data[0] / 10000 * sub_d5d902e8[arg1].field_512 / 10000 * uint16(sub_d5d902e8[arg1].field_0) + 100002 % 16777216) - (ext_call.return_data[0] << 64 / ext_call.return_data[0] / 10000 * sub_d5d902e8[arg1].field_512 / 10000 * uint16(sub_d5d902e8[arg1].field_0) + 100002 % 16777216) / 100000) >> 64 <= arg3:
        if 0 == events[stor2[arg1].field_256].field_256:
            if Mask(192, 64, (ext_call.return_data[0] << 64 / ext_call.return_data[0] / 10000 * sub_d5d902e8[arg1].field_512 / 10000 * uint16(sub_d5d902e8[arg1].field_0) + 100002 % 16777216) - (ext_call.return_data[0] << 64 / ext_call.return_data[0] / 10000 * sub_d5d902e8[arg1].field_512 / 10000 * uint16(sub_d5d902e8[arg1].field_0) + 100002 % 16777216) / 100000) >> 64 > msg.value:
                call msg.sender with:
                   value msg.value wei
                     gas 0 wei
            else:
                idx = 1
                while uint8(idx) <= uint8(events[stor2[arg1].field_256].field_8):
                    sub_d5d902e8[arg1][3][idx << 248].field_0 += Mask(192, 64, (ext_call.return_data[0] << 64 / ext_call.return_data[0] / 10000 * sub_d5d902e8[arg1].field_512 / 10000 * uint16(sub_d5d902e8[arg1].field_0) + 100002 % 16777216) - (ext_call.return_data[0] << 64 / ext_call.return_data[0] / 10000 * sub_d5d902e8[arg1].field_512 / 10000 * uint16(sub_d5d902e8[arg1].field_0) + 100002 % 16777216) / 100000) >> 64
                    mem[0] = sub_d5d902e8[arg1].field_256
                    mem[32] = 3
                    idx = idx + 1
                    continue 
                sub_d5d902e8[arg1][3][arg2 << 248].field_0 -= arg3
                sub_ee3f06e8[address(msg.sender)][stor2[arg1].field_256][arg2 << 248] += arg3
                call msg.sender with:
                   value msg.value - (Mask(192, 64, (ext_call.return_data[0] << 64 / ext_call.return_data[0] / 10000 * sub_d5d902e8[arg1].field_512 / 10000 * uint16(sub_d5d902e8[arg1].field_0) + 100002 % 16777216) - (ext_call.return_data[0] << 64 / ext_call.return_data[0] / 10000 * sub_d5d902e8[arg1].field_512 / 10000 * uint16(sub_d5d902e8[arg1].field_0) + 100002 % 16777216) / 100000) >> 64) wei
                     gas 0 wei
        else:
            if Mask(192, 64, (ext_call.return_data[0] << 64 / ext_call.return_data[0] / 10000 * sub_d5d902e8[arg1].field_512 / 10000 * uint16(sub_d5d902e8[arg1].field_0) + 100002 % 16777216) - (ext_call.return_data[0] << 64 / ext_call.return_data[0] / 10000 * sub_d5d902e8[arg1].field_512 / 10000 * uint16(sub_d5d902e8[arg1].field_0) + 100002 % 16777216) / 100000) >> 64 <= arg4:
                if Mask(192, 64, (ext_call.return_data[0] << 64 / ext_call.return_data[0] / 10000 * sub_d5d902e8[arg1].field_512 / 10000 * uint16(sub_d5d902e8[arg1].field_0) + 100002 % 16777216) - (ext_call.return_data[0] << 64 / ext_call.return_data[0] / 10000 * sub_d5d902e8[arg1].field_512 / 10000 * uint16(sub_d5d902e8[arg1].field_0) + 100002 % 16777216) / 100000) >> 64 <= sub_ee3f06e8[address(msg.sender)][stor3[stor2[arg1].field_256].field_256][uint8(stor3[stor2[arg1].field_256].field_0)]:
                    idx = 1
                    while uint8(idx) <= uint8(events[stor2[arg1].field_256].field_8):
                        sub_d5d902e8[arg1][3][idx << 248].field_0 += Mask(192, 64, (ext_call.return_data[0] << 64 / ext_call.return_data[0] / 10000 * sub_d5d902e8[arg1].field_512 / 10000 * uint16(sub_d5d902e8[arg1].field_0) + 100002 % 16777216) - (ext_call.return_data[0] << 64 / ext_call.return_data[0] / 10000 * sub_d5d902e8[arg1].field_512 / 10000 * uint16(sub_d5d902e8[arg1].field_0) + 100002 % 16777216) / 100000) >> 64
                        mem[0] = sub_d5d902e8[arg1].field_256
                        mem[32] = 3
                        idx = idx + 1
                        continue 
                    sub_d5d902e8[arg1][3][arg2 << 248].field_0 -= arg3
                    sub_ee3f06e8[address(msg.sender)][stor2[arg1].field_256][arg2 << 248] += arg3
                    sub_ee3f06e8[address(msg.sender)][stor3[stor2[arg1].field_256].field_256][uint8(stor3[stor2[arg1].field_256].field_0)] -= Mask(192, 64, (ext_call.return_data[0] << 64 / ext_call.return_data[0] / 10000 * sub_d5d902e8[arg1].field_512 / 10000 * uint16(sub_d5d902e8[arg1].field_0) + 100002 % 16777216) - (ext_call.return_data[0] << 64 / ext_call.return_data[0] / 10000 * sub_d5d902e8[arg1].field_512 / 10000 * uint16(sub_d5d902e8[arg1].field_0) + 100002 % 16777216) / 100000) >> 64
    else:
        if 0 == events[stor2[arg1].field_256].field_256:
            if arg3 > msg.value:
                call msg.sender with:
                   value msg.value wei
                     gas 0 wei
            else:
                idx = 1
                while uint8(idx) <= uint8(events[stor2[arg1].field_256].field_8):
                    sub_d5d902e8[arg1][3][idx << 248].field_0 += arg3
                    mem[0] = sub_d5d902e8[arg1].field_256
                    mem[32] = 3
                    idx = idx + 1
                    continue 
                sub_d5d902e8[arg1][3][arg2 << 248].field_0 -= arg3
                sub_ee3f06e8[address(msg.sender)][stor2[arg1].field_256][arg2 << 248] += arg3
                call msg.sender with:
                   value msg.value - arg3 wei
                     gas 0 wei
        else:
            if arg3 <= arg4:
                if arg3 <= sub_ee3f06e8[address(msg.sender)][stor3[stor2[arg1].field_256].field_256][uint8(stor3[stor2[arg1].field_256].field_0)]:
                    idx = 1
                    while uint8(idx) <= uint8(events[stor2[arg1].field_256].field_8):
                        sub_d5d902e8[arg1][3][idx << 248].field_0 += arg3
                        mem[0] = sub_d5d902e8[arg1].field_256
                        mem[32] = 3
                        idx = idx + 1
                        continue 
                    sub_d5d902e8[arg1][3][arg2 << 248].field_0 -= arg3
                    sub_ee3f06e8[address(msg.sender)][stor2[arg1].field_256][arg2 << 248] += arg3
                    sub_ee3f06e8[address(msg.sender)][stor3[stor2[arg1].field_256].field_256][uint8(stor3[stor2[arg1].field_256].field_0)] -= arg3
}



}
