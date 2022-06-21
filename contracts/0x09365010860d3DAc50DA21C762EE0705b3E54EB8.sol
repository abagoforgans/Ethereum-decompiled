contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of uint256 sub_8cc83975;
mapping of uint256 sub_c5a0a74d;
uint256 sub_b0849d22;
address sub_017ed925Address;
array of struct stor5;
address stor6;
address stor7;
address stor8;
address stor9;
address stor10;
uint8 initialized; offset 160
uint128 stor11; offset 160
address stor11;
uint256 sub_67f596ed;
mapping of uint256 sub_fa16edb3;
mapping of uint256 sub_8681665b;
mapping of uint256 sub_5bc994ca;

function sub_017ed925(?) payable {
    return sub_017ed925Address
}

function sub_0369094e(?) payable {
    return sub_67f596ed
}

function initialized() payable {
    return bool(initialized)
}

function getCommitteeSize() payable {
    return stor5.length
}

function sub_5bc994ca(?) payable {
    require calldata.size - 4 >= 32
    return sub_5bc994ca[arg1]
}

function sub_67f596ed(?) payable {
    return sub_67f596ed
}

function sub_8681665b(?) payable {
    require calldata.size - 4 >= 32
    return sub_8681665b[arg1]
}

function sub_8cc83975(?) payable {
    require calldata.size - 4 >= 32
    return sub_8cc83975[address(arg1)]
}

function sub_b0849d22(?) payable {
    return sub_b0849d22
}

function sub_c5a0a74d(?) payable {
    require calldata.size - 4 >= 32
    return sub_c5a0a74d[address(arg1)]
}

function sub_fa16edb3(?) payable {
    require calldata.size - 4 >= 32
    return sub_fa16edb3[arg1]
}

function _fallback() payable {
    revert
}

function sub_185e2822(?) payable {
    require calldata.size - 4 >= 32
    return (sub_8cc83975[address(arg1)] > 0)
}

function sub_660dc7d5(?) payable {
    require ext_code.size(stor0)
    staticcall stor0.0x9c17be24 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_67f596ed + ext_call.return_data[0] >= sub_67f596ed
    return (sub_67f596ed + ext_call.return_data[0])
}

function sub_4cbf5cc4(?) payable {
    if block.timestamp <= sub_67f596ed:
        return (block.timestamp > sub_67f596ed)
    require ext_code.size(stor0)
    staticcall stor0.0x9c17be24 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_67f596ed + ext_call.return_data[0] >= sub_67f596ed
    return (block.timestamp < sub_67f596ed + ext_call.return_data[0])
}

function sub_a8f05f31(?) payable {
    sub_fa16edb3[address(msg.sender)] = 0
    require ext_code.size(stor6)
    call stor6.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, sub_fa16edb3[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Unable to refund displaced opt-in amount.'
    emit 0xaf259d91: sub_fa16edb3[address(msg.sender)], msg.sender
}

function initialize(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if initialized:
        revert with 0, 'ALREADY_INITIALIZED'
    require ext_code.size(address(stor11.field_0))
    staticcall address(stor11.field_0).0xdf7f453b with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'NOT_A_SUPER_ADMIN'
    stor7 = arg1
    stor10 = arg2
    stor8 = arg3
    Mask(96, 0, stor11.field_160) = 1
    sub_67f596ed = block.timestamp
}

function sub_10d9245a(?) payable {
    require ext_code.size(stor0)
    staticcall stor0.0xf9604681 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    staticcall stor0.0xf713b052 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    staticcall stor0.0x9c17be24 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_67f596ed + ext_call.return_data[0] >= sub_67f596ed
    require ext_call.return_data[0] >= 0
    require ext_call.return_data[0] >= 0
    return (sub_67f596ed + (3 * ext_call.return_data[0]))
}

function sub_20eb6e53(?) payable {
    require ext_code.size(stor0)
    staticcall stor0.0x84060e83 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_5bc994ca[address(msg.sender)] + ext_call.return_data[0] >= sub_5bc994ca[address(msg.sender)]
    if block.timestamp <= sub_5bc994ca[address(msg.sender)] + ext_call.return_data[0]:
        revert with 0, 'NOT_PAST_OPT_OUT_TIME_LOCK'
    sub_8681665b[address(msg.sender)] = 0
    require ext_code.size(stor6)
    call stor6.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, sub_8681665b[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'UNABLE_TO_REFUND_BALANCES'
    emit 0xa753e7de: sub_8681665b[address(msg.sender)], msg.sender
}

function sub_743229e9(?) payable {
    require ext_code.size(stor0)
    staticcall stor0.0x9c17be24 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_67f596ed + ext_call.return_data[0] >= sub_67f596ed
    if block.timestamp <= sub_67f596ed + ext_call.return_data[0]:
        return (block.timestamp > sub_67f596ed + ext_call.return_data[0])
    require ext_code.size(stor0)
    staticcall stor0.0xf713b052 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    staticcall stor0.0x9c17be24 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_67f596ed + ext_call.return_data[0] >= sub_67f596ed
    require ext_call.return_data[0] >= 0
    return (block.timestamp < sub_67f596ed + (2 * ext_call.return_data[0]))
}

function sub_b2a275f9(?) payable {
    mem[64] = (32 * stor5.length) + 128
    mem[96] = stor5.length
    if not stor5.length:
        mem[(32 * stor5.length) + 128] = 32
        mem[(32 * stor5.length) + 160] = stor5.length
        idx = 0
        s = 128
        t = (32 * stor5.length) + 192
        while idx < stor5.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor5.length) + 128
           len (96 * stor5.length) + 64
    mem[128] = address(stor5.field_0)
    idx = 128
    s = 0
    while (32 * stor5.length) + 96 > idx:
        mem[idx + 32] = stor5[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor5.length) + 128] = 32
    mem[(32 * stor5.length) + 160] = stor5.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < stor5.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor5.length) + -mem[64] + 192
}

function sub_b3a1ddf4(?) payable {
    require ext_code.size(stor0)
    staticcall stor0.0x9c17be24 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_67f596ed + ext_call.return_data[0] >= sub_67f596ed
    if block.timestamp <= sub_67f596ed + ext_call.return_data[0]:
        return (block.timestamp > sub_67f596ed + ext_call.return_data[0])
    require ext_code.size(stor0)
    staticcall stor0.0xf9604681 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    staticcall stor0.0xf713b052 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    staticcall stor0.0x9c17be24 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_67f596ed + ext_call.return_data[0] >= sub_67f596ed
    require ext_call.return_data[0] >= 0
    require ext_call.return_data[0] >= 0
    return (block.timestamp < sub_67f596ed + (3 * ext_call.return_data[0]))
}

function sub_ae79cc91(?) payable {
    require ext_code.size(stor0)
    staticcall stor0.0xf713b052 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    staticcall stor0.0x9c17be24 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_67f596ed + ext_call.return_data[0] >= sub_67f596ed
    require ext_call.return_data[0] >= 0
    if block.timestamp <= sub_67f596ed + (2 * ext_call.return_data[0]):
        return (block.timestamp > sub_67f596ed + (2 * ext_call.return_data[0]))
    require ext_code.size(stor0)
    staticcall stor0.0xf9604681 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    staticcall stor0.0xf713b052 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    staticcall stor0.0x9c17be24 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_67f596ed + ext_call.return_data[0] >= sub_67f596ed
    require ext_call.return_data[0] >= 0
    require ext_call.return_data[0] >= 0
    return (block.timestamp < sub_67f596ed + (3 * ext_call.return_data[0]))
}

function sub_1cc15e04(?) payable {
    require ext_code.size(stor0)
    staticcall stor0.0x9c17be24 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_67f596ed + ext_call.return_data[0] >= sub_67f596ed
    require ext_code.size(stor0)
    staticcall stor0.0xf9604681 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    staticcall stor0.0xf713b052 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= 0
    require ext_call.return_data[0] >= 0
    if block.timestamp > sub_67f596ed + (3 * ext_call.return_data[0]):
        require ext_code.size(stor7)
        staticcall stor7.0x46e3df21 with:
                gas gas_remaining wei
               args sub_67f596ed
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_code.size(stor7)
            staticcall stor7.0x60be973d with:
                    gas gas_remaining wei
                   args sub_67f596ed
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return bool(ext_call.return_data[0])
    if block.timestamp <= sub_67f596ed + ext_call.return_data[0]:
        return 0
    require ext_code.size(stor7)
    staticcall stor7.0xa803787a with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return not bool(ext_call.return_data[0])
}

function sub_086748f5(?) payable {
    require calldata.size - 4 >= 64
    if stor7 != msg.sender:
        revert with 0, 'ONLY_DISPUTE_MANAGER'
    require arg2 <= sub_8cc83975[address(arg1)]
    require sub_8cc83975[address(arg1)] <= sub_b0849d22
    if arg2:
        require arg2 >= 0
        sub_b0849d22 = sub_b0849d22 - sub_8cc83975[address(arg1)] + arg2
        sub_8cc83975[address(arg1)] = arg2
        require 0 < stor5.length
        mem[0] = 5
        idx = 0
        s = stor[sha3(mem[0])]
        t = sub_8cc83975[address(stor5.field_0)]
        while idx < stor5.length:
            mem[0] = stor5[idx].field_0
            mem[32] = 1
            if sub_8cc83975[stor5[idx].field_0] >= t:
                idx = idx + 1
                s = s
                t = t
                continue 
            require idx < stor5.length
            mem[32] = 1
            mem[0] = 5
            idx = idx + 1
            s = stor5[idx].field_0
            t = sub_8cc83975[stor5[idx].field_0]
            continue 
    else:
        sub_b0849d22 -= sub_8cc83975[address(arg1)]
        sub_8cc83975[address(arg1)] = 0
        require sub_c5a0a74d[address(arg1)] < stor5.length
        stor5[stor2[address(arg1)]].field_0 = 0
        require stor5.length - 1 < stor5.length
        require sub_c5a0a74d[address(arg1)] < stor5.length
        stor5[stor2[address(arg1)]].field_0 = stor5[stor5.length].field_0
        require stor5.length - 1 < stor5.length
        sub_c5a0a74d[stor5[stor5.length].field_0] = sub_c5a0a74d[address(arg1)]
        sub_c5a0a74d[address(arg1)] = 0
        require 0 < stor5.length
        mem[0] = 5
        idx = 0
        s = stor[sha3(mem[0])]
        t = sub_8cc83975[address(stor5.field_0)]
        while idx < stor5.length:
            mem[0] = stor5[idx].field_0
            mem[32] = 1
            if sub_8cc83975[stor5[idx].field_0] >= t:
                idx = idx + 1
                s = s
                t = t
                continue 
            require idx < stor5.length
            mem[32] = 1
            mem[0] = 5
            idx = idx + 1
            s = stor5[idx].field_0
            t = sub_8cc83975[stor5[idx].field_0]
            continue 
    sub_017ed925Address = address(s)
    require ext_code.size(stor6)
    call stor6.0xa9059cbb with:
         gas gas_remaining wei
        args stor10, sub_8cc83975[address(arg1)] - arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'CANNOT_TRANSFER_PENALTY'
}

function sub_89d6ec54(?) payable {
    require calldata.size - 4 >= 32
    if block.timestamp <= sub_67f596ed:
        revert with 0, 'INVALID_OPT_IN_OUT_PERIOD'
    require ext_code.size(stor0)
    staticcall stor0.0x9c17be24 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_67f596ed + ext_call.return_data[0] >= sub_67f596ed
    if block.timestamp >= sub_67f596ed + ext_call.return_data[0]:
        revert with 0, 'INVALID_OPT_IN_OUT_PERIOD'
    if sub_8cc83975[address(msg.sender)] <= 0:
        revert with 0, 'MUST_BE_OPTED_IN'
    if arg1 > sub_8cc83975[address(msg.sender)]:
        revert with 0, 'INSUFFICIENT_DEPOSITED_BETX'
    require sub_8cc83975[address(msg.sender)] <= sub_b0849d22
    if sub_8cc83975[address(msg.sender)] - arg1:
        require sub_8cc83975[address(msg.sender)] - arg1 >= 0
        sub_b0849d22 -= arg1
        sub_8cc83975[address(msg.sender)] -= arg1
        require 0 < stor5.length
        mem[0] = 5
        idx = 0
        s = stor[sha3(mem[0])]
        t = sub_8cc83975[address(stor5.field_0)]
        while idx < stor5.length:
            mem[0] = stor5[idx].field_0
            mem[32] = 1
            if sub_8cc83975[stor5[idx].field_0] >= t:
                idx = idx + 1
                s = s
                t = t
                continue 
            require idx < stor5.length
            mem[32] = 1
            mem[0] = 5
            idx = idx + 1
            s = stor5[idx].field_0
            t = sub_8cc83975[stor5[idx].field_0]
            continue 
    else:
        sub_b0849d22 -= sub_8cc83975[address(msg.sender)]
        sub_8cc83975[address(msg.sender)] = 0
        require sub_c5a0a74d[address(msg.sender)] < stor5.length
        stor5[stor2[address(msg.sender)]].field_0 = 0
        require stor5.length - 1 < stor5.length
        require sub_c5a0a74d[address(msg.sender)] < stor5.length
        stor5[stor2[address(msg.sender)]].field_0 = stor5[stor5.length].field_0
        require stor5.length - 1 < stor5.length
        sub_c5a0a74d[stor5[stor5.length].field_0] = sub_c5a0a74d[address(msg.sender)]
        sub_c5a0a74d[address(msg.sender)] = 0
        require 0 < stor5.length
        mem[0] = 5
        idx = 0
        s = stor[sha3(mem[0])]
        t = sub_8cc83975[address(stor5.field_0)]
        while idx < stor5.length:
            mem[0] = stor5[idx].field_0
            mem[32] = 1
            if sub_8cc83975[stor5[idx].field_0] >= t:
                idx = idx + 1
                s = s
                t = t
                continue 
            require idx < stor5.length
            mem[32] = 1
            mem[0] = 5
            idx = idx + 1
            s = stor5[idx].field_0
            t = sub_8cc83975[stor5[idx].field_0]
            continue 
    sub_017ed925Address = address(s)
    require sub_8681665b[address(msg.sender)] + arg1 >= sub_8681665b[address(msg.sender)]
    sub_8681665b[address(msg.sender)] += arg1
    sub_5bc994ca[address(msg.sender)] = block.timestamp
    emit 0x3f33e6a7: arg1, msg.sender
}

function sub_783dc353(?) payable {
    require calldata.size - 4 >= 64
    if stor8 != msg.sender:
        revert with 0, 'ONLY_DISPUTE_VOTE'
    require ext_code.size(stor0)
    staticcall stor0.0x328b11e4 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not sub_8cc83975[address(arg1)]:
        require 0 <= sub_8cc83975[address(arg1)]
        require sub_8cc83975[address(arg1)] <= sub_b0849d22
        sub_b0849d22 -= sub_8cc83975[address(arg1)]
        sub_8cc83975[address(arg1)] = 0
        require sub_c5a0a74d[address(arg1)] < stor5.length
        stor5[stor2[address(arg1)]].field_0 = 0
        require stor5.length - 1 < stor5.length
        require sub_c5a0a74d[address(arg1)] < stor5.length
        stor5[stor2[address(arg1)]].field_0 = stor5[stor5.length].field_0
        require stor5.length - 1 < stor5.length
        sub_c5a0a74d[stor5[stor5.length].field_0] = sub_c5a0a74d[address(arg1)]
        sub_c5a0a74d[address(arg1)] = 0
        require 0 < stor5.length
        mem[0] = 5
        idx = 0
        s = stor[sha3(mem[0])]
        t = sub_8cc83975[address(stor5.field_0)]
        while idx < stor5.length:
            mem[0] = stor5[idx].field_0
            mem[32] = 1
            if sub_8cc83975[stor5[idx].field_0] >= t:
                idx = idx + 1
                s = s
                t = t
                continue 
            require idx < stor5.length
            mem[32] = 1
            mem[0] = 5
            idx = idx + 1
            s = stor5[idx].field_0
            t = sub_8cc83975[stor5[idx].field_0]
            continue 
        sub_017ed925Address = address(s)
        require ext_code.size(stor6)
        call stor6.0xa9059cbb with:
             gas gas_remaining wei
            args stor10, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'CANNOT_TRANSFER_TAX_TO_FEE_POOL'
        require ext_code.size(stor6)
        call stor6.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), sub_8cc83975[address(arg1)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'CANNOT_TRANSFER_STAKE_TO_PAYEE'
        emit 0x167c93bc: sub_8cc83975[address(arg1)], arg1, arg2
    else:
        require sub_8cc83975[address(arg1)]
        require sub_8cc83975[address(arg1)] * ext_call.return_data[0] / sub_8cc83975[address(arg1)] == ext_call.return_data[0]
        require sub_8cc83975[address(arg1)] * ext_call.return_data[0] / 10^6 <= sub_8cc83975[address(arg1)]
        require sub_8cc83975[address(arg1)] <= sub_b0849d22
        sub_b0849d22 -= sub_8cc83975[address(arg1)]
        sub_8cc83975[address(arg1)] = 0
        require sub_c5a0a74d[address(arg1)] < stor5.length
        stor5[stor2[address(arg1)]].field_0 = 0
        require stor5.length - 1 < stor5.length
        require sub_c5a0a74d[address(arg1)] < stor5.length
        stor5[stor2[address(arg1)]].field_0 = stor5[stor5.length].field_0
        require stor5.length - 1 < stor5.length
        sub_c5a0a74d[stor5[stor5.length].field_0] = sub_c5a0a74d[address(arg1)]
        sub_c5a0a74d[address(arg1)] = 0
        require 0 < stor5.length
        mem[0] = 5
        idx = 0
        s = stor[sha3(mem[0])]
        t = sub_8cc83975[address(stor5.field_0)]
        while idx < stor5.length:
            mem[0] = stor5[idx].field_0
            mem[32] = 1
            if sub_8cc83975[stor5[idx].field_0] >= t:
                idx = idx + 1
                s = s
                t = t
                continue 
            require idx < stor5.length
            mem[32] = 1
            mem[0] = 5
            idx = idx + 1
            s = stor5[idx].field_0
            t = sub_8cc83975[stor5[idx].field_0]
            continue 
        sub_017ed925Address = address(s)
        require ext_code.size(stor6)
        call stor6.0xa9059cbb with:
             gas gas_remaining wei
            args stor10, sub_8cc83975[address(arg1)] * ext_call.return_data[0] / 10^6
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'CANNOT_TRANSFER_TAX_TO_FEE_POOL'
        require ext_code.size(stor6)
        call stor6.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), sub_8cc83975[address(arg1)] - (sub_8cc83975[address(arg1)] * ext_call.return_data[0] / 10^6)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'CANNOT_TRANSFER_STAKE_TO_PAYEE'
        emit 0x167c93bc: (sub_8cc83975[address(arg1)] - (sub_8cc83975[address(arg1)] * ext_call.return_data[0] / 10^6)), arg1, arg2
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require ceil32(arg3.length) + 128 <= test266151307() and ceil32(arg3.length) + 128 >= 96
    require arg3 + arg3.length + 36 <= calldata.size
    if stor6 != msg.sender:
        revert with 0, 'ONLY_BETX'
    if arg2 <= 0:
        revert with 0, 'ONLY_POSITIVE_DEPOSITS'
    if block.timestamp <= sub_67f596ed:
        revert with 0, 'INVALID_OPT_IN_OUT_PERIOD'
    require ext_code.size(stor0)
    staticcall stor0.0x9c17be24 with:
            gas gas_remaining wei
    mem[ceil32(arg3.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_67f596ed + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] >= sub_67f596ed
    if block.timestamp >= sub_67f596ed + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]:
        revert with 0, 'INVALID_OPT_IN_OUT_PERIOD'
    if sub_8cc83975[address(arg1)] > 0:
        require sub_8cc83975[address(arg1)] + arg2 >= sub_8cc83975[address(arg1)]
        require sub_8cc83975[address(arg1)] <= sub_b0849d22
        require sub_8cc83975[address(arg1)] + arg2 >= 0
        sub_b0849d22 += arg2
        sub_8cc83975[address(arg1)] += arg2
        require 0 < stor5.length
        mem[0] = 5
        idx = 0
        s = stor[sha3(mem[0])]
        t = sub_8cc83975[address(stor5.field_0)]
        while idx < stor5.length:
            mem[0] = stor5[idx].field_0
            mem[32] = 1
            if sub_8cc83975[stor5[idx].field_0] >= t:
                idx = idx + 1
                s = s
                t = t
                continue 
            require idx < stor5.length
            mem[32] = 1
            mem[0] = 5
            idx = idx + 1
            s = stor5[idx].field_0
            t = sub_8cc83975[stor5[idx].field_0]
            continue 
        sub_017ed925Address = address(s)
        emit 0xd7fb4b3d: sub_8cc83975[address(arg1)], 0, 0, arg1
    else:
        if not stor5.length:
            sub_8cc83975[address(arg1)] = arg2
            stor5.length++
            stor5[stor5.length].field_0 = arg1
            sub_c5a0a74d[address(arg1)] = 0
            require sub_b0849d22 + arg2 >= sub_b0849d22
            sub_b0849d22 += arg2
            sub_017ed925Address = arg1
            require 0 < stor5.length
            mem[0] = 5
            idx = 0
            s = stor[sha3(mem[0])]
            t = sub_8cc83975[address(stor5.field_0)]
            while idx < stor5.length:
                mem[0] = stor5[idx].field_0
                mem[32] = 1
                if sub_8cc83975[stor5[idx].field_0] >= t:
                    idx = idx + 1
                    s = s
                    t = t
                    continue 
                require idx < stor5.length
                mem[32] = 1
                mem[0] = 5
                idx = idx + 1
                s = stor5[idx].field_0
                t = sub_8cc83975[stor5[idx].field_0]
                continue 
            sub_017ed925Address = address(s)
            emit 0xd7fb4b3d: sub_8cc83975[address(arg1)], 0, 0, arg1
        else:
            require ext_code.size(stor0)
            staticcall stor0.0x9cf4364b with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if stor5.length < ext_call.return_data[31 len 1]:
                sub_8cc83975[address(arg1)] = arg2
                stor5.length++
                stor5[stor5.length].field_0 = arg1
                sub_c5a0a74d[address(arg1)] = stor5.length - 1
                require sub_b0849d22 + arg2 >= sub_b0849d22
                sub_b0849d22 += arg2
                require 0 < stor5.length
                mem[0] = 5
                idx = 0
                s = stor[sha3(mem[0])]
                t = sub_8cc83975[address(stor5.field_0)]
                while idx < stor5.length:
                    mem[0] = stor5[idx].field_0
                    mem[32] = 1
                    if sub_8cc83975[stor5[idx].field_0] >= t:
                        idx = idx + 1
                        s = s
                        t = t
                        continue 
                    require idx < stor5.length
                    mem[32] = 1
                    mem[0] = 5
                    idx = idx + 1
                    s = stor5[idx].field_0
                    t = sub_8cc83975[stor5[idx].field_0]
                    continue 
                sub_017ed925Address = address(s)
                emit 0xd7fb4b3d: sub_8cc83975[address(arg1)], 0, 0, arg1
            else:
                if arg2 <= sub_8cc83975[stor4]:
                    revert with 0, 'INSUFFICIENT_OPT_IN_AMOUNT'
                sub_8cc83975[address(arg1)] = arg2
                require sub_c5a0a74d[stor4] < stor5.length
                stor5[stor2[stor4]].field_0 = 0
                require sub_c5a0a74d[stor4] < stor5.length
                stor5[stor2[stor4]].field_0 = arg1
                sub_c5a0a74d[address(arg1)] = sub_c5a0a74d[stor4]
                sub_c5a0a74d[stor4] = 0
                require sub_b0849d22 + arg2 >= sub_b0849d22
                require sub_8cc83975[stor4] <= sub_b0849d22 + arg2
                sub_b0849d22 = sub_b0849d22 + arg2 - sub_8cc83975[stor4]
                sub_8cc83975[stor4] = 0
                require 0 < stor5.length
                mem[0] = 5
                idx = 0
                s = stor[sha3(mem[0])]
                t = sub_8cc83975[address(stor5.field_0)]
                while idx < stor5.length:
                    mem[0] = stor5[idx].field_0
                    mem[32] = 1
                    if sub_8cc83975[stor5[idx].field_0] >= t:
                        idx = idx + 1
                        s = s
                        t = t
                        continue 
                    require idx < stor5.length
                    mem[32] = 1
                    mem[0] = 5
                    idx = idx + 1
                    s = stor5[idx].field_0
                    t = sub_8cc83975[stor5[idx].field_0]
                    continue 
                sub_017ed925Address = address(s)
                if sub_017ed925Address:
                    if sub_8cc83975[stor4]:
                        sub_fa16edb3[stor4] += sub_8cc83975[stor4]
                emit 0xd7fb4b3d: sub_8cc83975[address(arg1)], sub_017ed925Address, sub_8cc83975[stor4], arg1
}

function sub_956b04b6(?) payable {
    require ext_code.size(stor0)
    staticcall stor0.0x9c17be24 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_67f596ed + ext_call.return_data[0] >= sub_67f596ed
    require ext_code.size(stor0)
    staticcall stor0.0xf9604681 with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    staticcall stor0.0xf713b052 with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= 0
    require ext_call.return_data[0] >= 0
    if block.timestamp <= sub_67f596ed + (3 * ext_call.return_data[0]):
        if block.timestamp <= sub_67f596ed + ext_call.return_data[0]:
            revert with 0, 'INVALID_COMMITTEE_TRANSITION_TIME'
        require ext_code.size(stor7)
        staticcall stor7.0xa803787a with:
                gas gas_remaining wei
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'INVALID_COMMITTEE_TRANSITION_TIME'
        mem[(6 * ceil32(return_data.size)) + 96] = 0x14cbd99300000000000000000000000000000000000000000000000000000000
        require ext_code.size(stor9)
        staticcall stor9.0x14cbd993 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(6 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (7 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _28 = mem[(6 * ceil32(return_data.size)) + 96]
        require mem[(6 * ceil32(return_data.size)) + 96] <= test266151307()
        require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96] + 127 < (6 * ceil32(return_data.size)) + return_data.size + 96
        _33 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96] + 96]
        require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96] + 96] <= test266151307()
        require (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96] + 96]) + 128 <= test266151307() and (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96] + 96]) + 32 >= 0
        mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96] + 96]) + 128
        mem[(7 * ceil32(return_data.size)) + 96] = _33
        require _28 + (32 * _33) + 32 <= return_data.size
        idx = 0
        s = (6 * ceil32(return_data.size)) + _28 + 128
        t = (7 * ceil32(return_data.size)) + 128
        while idx < _33:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        idx = 0
        while idx < _33:
            require idx < mem[(7 * ceil32(return_data.size)) + 96]
            _229 = mem[(32 * idx) + (7 * ceil32(return_data.size)) + 128]
            mem[mem[64] + 4] = stor10
            require ext_code.size(address(_229))
            staticcall address(_229).0x70a08231 with:
                    gas gas_remaining wei
                   args stor10
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _246 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _252 = mem[_246]
            if mem[_246] > 0:
                s = 0
                while s < stor5.length:
                    mem[0] = stor5[s].field_0
                    mem[32] = 1
                    if not _252:
                        require sub_b0849d22 > 0
                        require sub_b0849d22
                        mem[mem[64]] = 0x5e2ccb2000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(_229)
                        mem[mem[64] + 36] = stor5[s].field_0
                        mem[mem[64] + 68] = 0 / sub_b0849d22
                        require ext_code.size(stor10)
                        call stor10.0x5e2ccb20 with:
                             gas gas_remaining wei
                            args address(_229), stor5[s].field_0, 0 / sub_b0849d22
                    else:
                        require _252
                        require _252 * sub_8cc83975[stor5[s].field_0] / _252 == sub_8cc83975[stor5[s].field_0]
                        require sub_b0849d22 > 0
                        require sub_b0849d22
                        mem[mem[64]] = 0x5e2ccb2000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(_229)
                        mem[mem[64] + 36] = stor5[s].field_0
                        mem[mem[64] + 68] = _252 * sub_8cc83975[stor5[s].field_0] / sub_b0849d22
                        require ext_code.size(stor10)
                        call stor10.0x5e2ccb20 with:
                             gas gas_remaining wei
                            args address(_229), stor5[s].field_0, _252 * sub_8cc83975[stor5[s].field_0] / sub_b0849d22
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = stor10
        require ext_code.size(stor6)
        staticcall stor6.0x70a08231 with:
                gas gas_remaining wei
               args stor10
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _243 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _249 = mem[_243]
        if mem[_243] > 0:
            idx = 0
            while idx < stor5.length:
                mem[0] = stor5[idx].field_0
                mem[32] = 1
                if not _249:
                    require sub_b0849d22 > 0
                    require sub_b0849d22
                    mem[mem[64]] = 0x5e2ccb2000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = stor6
                    mem[mem[64] + 36] = stor5[idx].field_0
                    mem[mem[64] + 68] = 0 / sub_b0849d22
                    require ext_code.size(stor10)
                    call stor10.0x5e2ccb20 with:
                         gas gas_remaining wei
                        args stor6, stor5[idx].field_0, 0 / sub_b0849d22
                else:
                    require _249
                    require _249 * sub_8cc83975[stor5[idx].field_0] / _249 == sub_8cc83975[stor5[idx].field_0]
                    require sub_b0849d22 > 0
                    require sub_b0849d22
                    mem[mem[64]] = 0x5e2ccb2000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = stor6
                    mem[mem[64] + 36] = stor5[idx].field_0
                    mem[mem[64] + 68] = _249 * sub_8cc83975[stor5[idx].field_0] / sub_b0849d22
                    require ext_code.size(stor10)
                    call stor10.0x5e2ccb20 with:
                         gas gas_remaining wei
                        args stor6, stor5[idx].field_0, _249 * sub_8cc83975[stor5[idx].field_0] / sub_b0849d22
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
    else:
        mem[(4 * ceil32(return_data.size)) + 100] = sub_67f596ed
        require ext_code.size(stor7)
        staticcall stor7.0x46e3df21 with:
                gas gas_remaining wei
               args sub_67f596ed
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if block.timestamp <= sub_67f596ed + ext_call.return_data[0]:
                revert with 0, 'INVALID_COMMITTEE_TRANSITION_TIME'
            require ext_code.size(stor7)
            staticcall stor7.0xa803787a with:
                    gas gas_remaining wei
            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'INVALID_COMMITTEE_TRANSITION_TIME'
            mem[(7 * ceil32(return_data.size)) + 96] = 0x14cbd99300000000000000000000000000000000000000000000000000000000
            require ext_code.size(stor9)
            staticcall stor9.0x14cbd993 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(7 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (8 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            _48 = mem[(7 * ceil32(return_data.size)) + 96]
            require mem[(7 * ceil32(return_data.size)) + 96] <= test266151307()
            require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96] + 127 < (7 * ceil32(return_data.size)) + return_data.size + 96
            _56 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96] + 96]
            require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96] + 96] <= test266151307()
            require (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96] + 96]) + 128 <= test266151307() and (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96] + 96]) + 32 >= 0
            mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96] + 96]) + 128
            mem[(8 * ceil32(return_data.size)) + 96] = _56
            require _48 + (32 * _56) + 32 <= return_data.size
            idx = 0
            s = (7 * ceil32(return_data.size)) + _48 + 128
            t = (8 * ceil32(return_data.size)) + 128
            while idx < _56:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            idx = 0
            while idx < _56:
                require idx < mem[(8 * ceil32(return_data.size)) + 96]
                _231 = mem[(32 * idx) + (8 * ceil32(return_data.size)) + 128]
                mem[mem[64] + 4] = stor10
                require ext_code.size(address(_231))
                staticcall address(_231).0x70a08231 with:
                        gas gas_remaining wei
                       args stor10
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _247 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _253 = mem[_247]
                if mem[_247] > 0:
                    s = 0
                    while s < stor5.length:
                        mem[0] = stor5[s].field_0
                        mem[32] = 1
                        if not _253:
                            require sub_b0849d22 > 0
                            require sub_b0849d22
                            mem[mem[64]] = 0x5e2ccb2000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(_231)
                            mem[mem[64] + 36] = stor5[s].field_0
                            mem[mem[64] + 68] = 0 / sub_b0849d22
                            require ext_code.size(stor10)
                            call stor10.0x5e2ccb20 with:
                                 gas gas_remaining wei
                                args address(_231), stor5[s].field_0, 0 / sub_b0849d22
                        else:
                            require _253
                            require _253 * sub_8cc83975[stor5[s].field_0] / _253 == sub_8cc83975[stor5[s].field_0]
                            require sub_b0849d22 > 0
                            require sub_b0849d22
                            mem[mem[64]] = 0x5e2ccb2000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(_231)
                            mem[mem[64] + 36] = stor5[s].field_0
                            mem[mem[64] + 68] = _253 * sub_8cc83975[stor5[s].field_0] / sub_b0849d22
                            require ext_code.size(stor10)
                            call stor10.0x5e2ccb20 with:
                                 gas gas_remaining wei
                                args address(_231), stor5[s].field_0, _253 * sub_8cc83975[stor5[s].field_0] / sub_b0849d22
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        s = s + 1
                        continue 
                idx = idx + 1
                continue 
            mem[mem[64] + 4] = stor10
            require ext_code.size(stor6)
            staticcall stor6.0x70a08231 with:
                    gas gas_remaining wei
                   args stor10
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _244 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _250 = mem[_244]
            if mem[_244] > 0:
                idx = 0
                while idx < stor5.length:
                    mem[0] = stor5[idx].field_0
                    mem[32] = 1
                    if not _250:
                        require sub_b0849d22 > 0
                        require sub_b0849d22
                        mem[mem[64]] = 0x5e2ccb2000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = stor6
                        mem[mem[64] + 36] = stor5[idx].field_0
                        mem[mem[64] + 68] = 0 / sub_b0849d22
                        require ext_code.size(stor10)
                        call stor10.0x5e2ccb20 with:
                             gas gas_remaining wei
                            args stor6, stor5[idx].field_0, 0 / sub_b0849d22
                    else:
                        require _250
                        require _250 * sub_8cc83975[stor5[idx].field_0] / _250 == sub_8cc83975[stor5[idx].field_0]
                        require sub_b0849d22 > 0
                        require sub_b0849d22
                        mem[mem[64]] = 0x5e2ccb2000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = stor6
                        mem[mem[64] + 36] = stor5[idx].field_0
                        mem[mem[64] + 68] = _250 * sub_8cc83975[stor5[idx].field_0] / sub_b0849d22
                        require ext_code.size(stor10)
                        call stor10.0x5e2ccb20 with:
                             gas gas_remaining wei
                            args stor6, stor5[idx].field_0, _250 * sub_8cc83975[stor5[idx].field_0] / sub_b0849d22
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
        else:
            mem[(6 * ceil32(return_data.size)) + 100] = sub_67f596ed
            require ext_code.size(stor7)
            staticcall stor7.0x60be973d with:
                    gas gas_remaining wei
                   args sub_67f596ed
            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'INVALID_COMMITTEE_TRANSITION_TIME'
            mem[(7 * ceil32(return_data.size)) + 96] = 0x14cbd99300000000000000000000000000000000000000000000000000000000
            require ext_code.size(stor9)
            staticcall stor9.0x14cbd993 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(7 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (8 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            _58 = mem[(7 * ceil32(return_data.size)) + 96]
            require mem[(7 * ceil32(return_data.size)) + 96] <= test266151307()
            require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96] + 127 < (7 * ceil32(return_data.size)) + return_data.size + 96
            _61 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96] + 96]
            require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96] + 96] <= test266151307()
            require (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96] + 96]) + 128 <= test266151307() and (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96] + 96]) + 32 >= 0
            mem[64] = (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96] + 96]) + 128
            mem[(8 * ceil32(return_data.size)) + 96] = _61
            require _58 + (32 * _61) + 32 <= return_data.size
            idx = 0
            s = (7 * ceil32(return_data.size)) + _58 + 128
            t = (8 * ceil32(return_data.size)) + 128
            while idx < _61:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            idx = 0
            while idx < _61:
                require idx < mem[(8 * ceil32(return_data.size)) + 96]
                _233 = mem[(32 * idx) + (8 * ceil32(return_data.size)) + 128]
                mem[mem[64] + 4] = stor10
                require ext_code.size(address(_233))
                staticcall address(_233).0x70a08231 with:
                        gas gas_remaining wei
                       args stor10
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _248 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _254 = mem[_248]
                if mem[_248] > 0:
                    s = 0
                    while s < stor5.length:
                        mem[0] = stor5[s].field_0
                        mem[32] = 1
                        if not _254:
                            require sub_b0849d22 > 0
                            require sub_b0849d22
                            mem[mem[64]] = 0x5e2ccb2000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(_233)
                            mem[mem[64] + 36] = stor5[s].field_0
                            mem[mem[64] + 68] = 0 / sub_b0849d22
                            require ext_code.size(stor10)
                            call stor10.0x5e2ccb20 with:
                                 gas gas_remaining wei
                                args address(_233), stor5[s].field_0, 0 / sub_b0849d22
                        else:
                            require _254
                            require _254 * sub_8cc83975[stor5[s].field_0] / _254 == sub_8cc83975[stor5[s].field_0]
                            require sub_b0849d22 > 0
                            require sub_b0849d22
                            mem[mem[64]] = 0x5e2ccb2000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(_233)
                            mem[mem[64] + 36] = stor5[s].field_0
                            mem[mem[64] + 68] = _254 * sub_8cc83975[stor5[s].field_0] / sub_b0849d22
                            require ext_code.size(stor10)
                            call stor10.0x5e2ccb20 with:
                                 gas gas_remaining wei
                                args address(_233), stor5[s].field_0, _254 * sub_8cc83975[stor5[s].field_0] / sub_b0849d22
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        s = s + 1
                        continue 
                idx = idx + 1
                continue 
            mem[mem[64] + 4] = stor10
            require ext_code.size(stor6)
            staticcall stor6.0x70a08231 with:
                    gas gas_remaining wei
                   args stor10
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _245 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _251 = mem[_245]
            if mem[_245] > 0:
                idx = 0
                while idx < stor5.length:
                    mem[0] = stor5[idx].field_0
                    mem[32] = 1
                    if not _251:
                        require sub_b0849d22 > 0
                        require sub_b0849d22
                        mem[mem[64]] = 0x5e2ccb2000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = stor6
                        mem[mem[64] + 36] = stor5[idx].field_0
                        mem[mem[64] + 68] = 0 / sub_b0849d22
                        require ext_code.size(stor10)
                        call stor10.0x5e2ccb20 with:
                             gas gas_remaining wei
                            args stor6, stor5[idx].field_0, 0 / sub_b0849d22
                    else:
                        require _251
                        require _251 * sub_8cc83975[stor5[idx].field_0] / _251 == sub_8cc83975[stor5[idx].field_0]
                        require sub_b0849d22 > 0
                        require sub_b0849d22
                        mem[mem[64]] = 0x5e2ccb2000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = stor6
                        mem[mem[64] + 36] = stor5[idx].field_0
                        mem[mem[64] + 68] = _251 * sub_8cc83975[stor5[idx].field_0] / sub_b0849d22
                        require ext_code.size(stor10)
                        call stor10.0x5e2ccb20 with:
                             gas gas_remaining wei
                            args stor6, stor5[idx].field_0, _251 * sub_8cc83975[stor5[idx].field_0] / sub_b0849d22
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
    sub_67f596ed = block.timestamp
    emit 0x37b46b33 
}



}
