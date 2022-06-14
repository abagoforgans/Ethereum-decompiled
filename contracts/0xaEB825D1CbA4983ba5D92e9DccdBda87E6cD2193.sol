contract main {




// =====================  Runtime code  =====================


const INITIALSUPPLY = 10000000000 * 10^18


address owner;
address sub_881cc242Address;
array of struct stor10;
uint256 availableTotalSupply;
uint256 sub_8d1d4b08;
uint256 sub_4ed4451a;
uint256 sub_4e407d68;
uint256 sub_fbbe749f;
uint256 sub_3c41a40a;
uint256 grandTotalClaimed;
mapping of struct allocations;

function sub_3c41a40a(?) {
    return sub_3c41a40a
}

function sub_4e407d68(?) {
    return sub_4e407d68
}

function sub_4ed4451a(?) {
    return sub_4ed4451a
}

function allocations(address arg1) {
    require calldata.size - 4 >= 32
    require allocations[arg1].field_0 <= 4
    require allocations[arg1].field_1280 <= 2
    return allocations[arg1].field_0, allocations[arg1].field_768, allocations[arg1].field_1024, allocations[arg1].field_1280
}

function availableTotalSupply() {
    return availableTotalSupply
}

function sub_881cc242(?) {
    return sub_881cc242Address
}

function sub_8d1d4b08(?) {
    return sub_8d1d4b08
}

function owner() {
    return owner
}

function grandTotalClaimed() {
    return grandTotalClaimed
}

function sub_fbbe749f(?) {
    return sub_fbbe749f
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function grandTotalAllocated() {
    return (-availableTotalSupply + 10000000000 * 10^18)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function refundTokens(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require sub_881cc242Address != arg2
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    call arg2.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function getAllocatedAddresses() {
    if not stor10.length:
        mem[(32 * stor10.length) + 128] = 32
        mem[(32 * stor10.length) + 160] = stor10.length
        mem[(32 * stor10.length) + 192 len floor32(stor10.length)] = mem[128 len floor32(stor10.length)]
        return memory
          from (32 * stor10.length) + 128
           len (96 * stor10.length) + 64
    mem[128] = address(stor10.field_0)
    idx = 128
    s = 0
    while (32 * stor10.length) + 96 > idx:
        mem[idx + 32] = stor10[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor10.length) + 192 len floor32(stor10.length)] = mem[128 len floor32(stor10.length)]
    return Array(len=stor10.length, data=mem[128 len floor32(stor10.length)], mem[(32 * stor10.length) + floor32(stor10.length) + 192 len (32 * stor10.length) - floor32(stor10.length)]), 
}

function getAllocation(address arg1) {
    require calldata.size - 4 >= 32
    if allocations[address(arg1)].field_256:
        mem[128] = allocations[address(arg1)][1].field_0
        idx = 128
        s = 0
        while (32 * allocations[address(arg1)].field_256) + 96 > idx:
            mem[idx + 32] = allocations[address(arg1)][s + 1].field_256
            idx = idx + 32
            s = s + 1
            continue 
    if allocations[address(arg1)].field_512:
        mem[(32 * allocations[address(arg1)].field_256) + 160] = allocations[address(arg1)][2].field_0
        idx = (32 * allocations[address(arg1)].field_256) + 160
        s = 0
        while (32 * allocations[address(arg1)].field_256) + (32 * allocations[address(arg1)].field_512) + 128 > idx:
            mem[idx + 32] = stor('array', 2, ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor9', 9)))[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
            idx = idx + 32
            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
            continue 
    require allocations[address(arg1)].field_0 <= 4
    require allocations[address(arg1)].field_1280 <= 2
    mem[(32 * allocations[address(arg1)].field_256) + (32 * allocations[address(arg1)].field_512) + 384 len floor32(allocations[address(arg1)].field_256)] = mem[128 len floor32(allocations[address(arg1)].field_256)]
    mem[(64 * allocations[address(arg1)].field_256) + (32 * allocations[address(arg1)].field_512) + 384] = allocations[address(arg1)].field_512
    mem[(64 * allocations[address(arg1)].field_256) + (32 * allocations[address(arg1)].field_512) + 416 len floor32(allocations[address(arg1)].field_512)] = mem[(32 * allocations[address(arg1)].field_256) + 160 len floor32(allocations[address(arg1)].field_512)]
    return allocations[address(arg1)].field_0, 
           Array(len=allocations[address(arg1)].field_256, data=mem[128 len floor32(allocations[address(arg1)].field_256)], mem[(32 * allocations[address(arg1)].field_256) + (32 * allocations[address(arg1)].field_512) + floor32(allocations[address(arg1)].field_256) + 384 len (32 * allocations[address(arg1)].field_256) + (32 * allocations[address(arg1)].field_512) + -floor32(allocations[address(arg1)].field_256) + 32]),
           (32 * allocations[address(arg1)].field_256) + 224,
           allocations[address(arg1)].field_768,
           allocations[address(arg1)].field_1024,
           allocations[address(arg1)].field_1280
}

function cancelAllocation(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require allocations[address(arg1)].field_1280 <= 2
    if allocations[address(arg1)].field_1280 != 1:
        revert with 0, 'There is no allocation'
    if allocations[address(arg1)].field_1024:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can not cancel allocation with claimed tokens'
    allocations[address(arg1)].field_1280 = 2
    allocations[address(arg1)].field_256 = 0
    idx = 0
    while allocations[address(arg1)].field_256 > idx:
        allocations[address(arg1)][idx + 1].field_0 = 0
        idx = idx + 1
        continue 
    allocations[address(arg1)].field_256 = 0
    if allocations[address(arg1)].field_256 > 0:
        idx = 0
        while allocations[address(arg1)].field_256 > idx:
            allocations[address(arg1)][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    allocations[address(arg1)].field_512 = 0
    idx = 0
    while allocations[address(arg1)].field_512 + 31 / 32 > idx:
        allocations[address(arg1)][idx + 2].field_0 = 0
        idx = idx + 1
        continue 
    allocations[address(arg1)].field_512 = 0
    if allocations[address(arg1)].field_512 > 0:
        idx = 0
        while allocations[address(arg1)].field_512 + 31 / 32 > idx:
            allocations[address(arg1)][idx + 2].field_0 = 0
            idx = idx + 1
            continue 
    require allocations[address(arg1)].field_768 + availableTotalSupply >= availableTotalSupply
    availableTotalSupply += allocations[address(arg1)].field_768
    require allocations[address(arg1)].field_0 <= 4
    if not allocations[address(arg1)].field_0:
        require allocations[address(arg1)].field_768 + sub_8d1d4b08 >= sub_8d1d4b08
        sub_8d1d4b08 += allocations[address(arg1)].field_768
    else:
        require allocations[address(arg1)].field_0 <= 4
        if 1 == allocations[address(arg1)].field_0:
            require allocations[address(arg1)].field_768 + sub_4ed4451a >= sub_4ed4451a
            sub_4ed4451a += allocations[address(arg1)].field_768
        else:
            require allocations[address(arg1)].field_0 <= 4
            if 3 == allocations[address(arg1)].field_0:
                require allocations[address(arg1)].field_768 + sub_fbbe749f >= sub_fbbe749f
                sub_fbbe749f += allocations[address(arg1)].field_768
            else:
                require allocations[address(arg1)].field_0 <= 4
                if 4 == allocations[address(arg1)].field_0:
                    require allocations[address(arg1)].field_768 + sub_3c41a40a >= sub_3c41a40a
                    sub_3c41a40a += allocations[address(arg1)].field_768
                else:
                    require allocations[address(arg1)].field_0 <= 4
                    if 2 == allocations[address(arg1)].field_0:
                        require allocations[address(arg1)].field_768 + sub_4e407d68 >= sub_4e407d68
                        sub_4e407d68 += allocations[address(arg1)].field_768
    allocations[address(arg1)].field_768 = 0
    emit CancelAllocation(arg1);
}

function sub_dfa5d21a(?) {
    require calldata.size - 4 >= 128
    require msg.sender == owner
    require allocations[address(arg1)].field_1280 <= 2
    require allocations[address(arg1)].field_1280 != 1
    require 0 < arg2
    require arg3 <= 4
    require 0 <= arg3
    require arg3 <= 4
    require 4 >= arg3
    require arg1
    require arg3 <= 4
    if not arg3:
        require arg2 <= sub_8d1d4b08
        sub_8d1d4b08 -= arg2
        allocations[address(arg1)].field_0 = 0
        allocations[address(arg1)].field_256++
        if not arg4:
            stor[allocations[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allocations', 9)))].field_0 = block.timestamp
            allocations[address(arg1)].field_512++
            stor[allocations[address(arg1)].field_517 + ('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allocations', 9)))].field_0 = 100 * 256^allocations[address(arg1)].field_512 or !(255 * 256^allocations[address(arg1)].field_512) and stor[allocations[address(arg1)].field_517 + ('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allocations', 9)))].field_0
        else:
            stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allocations', 9))) + allocations[address(arg1)].field_256].field_0 = block.timestamp + (6480 * 24 * 3600)
            allocations[address(arg1)].field_256++
            stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allocations', 9))) + allocations[address(arg1)].field_256].field_0 = block.timestamp + (8640 * 24 * 3600)
            allocations[address(arg1)].field_512++
            stor[('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allocations', 9))) + allocations[address(arg1)].field_517].field_0 = stor[('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allocations', 9))) + allocations[address(arg1)].field_517].field_0 and !(255 * 256^allocations[address(arg1)].field_512) or 50 * 256^allocations[address(arg1)].field_512
            allocations[address(arg1)].field_512++
            stor[allocations[address(arg1)].field_517 + ('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allocations', 9)))].field_0 = stor[allocations[address(arg1)].field_517 + ('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allocations', 9)))].field_0 and !(255 * 256^allocations[address(arg1)].field_512) or 100 * 256^allocations[address(arg1)].field_512
    else:
        require arg3 <= 4
        if 1 == arg3:
            require arg2 <= sub_4ed4451a
            sub_4ed4451a -= arg2
            allocations[address(arg1)].field_0 = 1
            allocations[address(arg1)].field_256++
            if not arg4:
                stor[allocations[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allocations', 9)))].field_0 = block.timestamp
            else:
                stor[allocations[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allocations', 9)))].field_0 = block.timestamp + (8640 * 24 * 3600)
            allocations[address(arg1)].field_512++
            stor[allocations[address(arg1)].field_517 + ('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allocations', 9)))].field_0 = 100 * 256^allocations[address(arg1)].field_512 or !(255 * 256^allocations[address(arg1)].field_512) and stor[allocations[address(arg1)].field_517 + ('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allocations', 9)))].field_0
        else:
            require arg3 <= 4
            if 3 == arg3:
                require arg2 <= sub_fbbe749f
                sub_fbbe749f -= arg2
                allocations[address(arg1)].field_0 = 3
                allocations[address(arg1)].field_256++
                if not arg4:
                    stor[allocations[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allocations', 9)))].field_0 = block.timestamp
                else:
                    stor[allocations[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allocations', 9)))].field_0 = block.timestamp + (4320 * 24 * 3600)
                allocations[address(arg1)].field_512++
                stor[allocations[address(arg1)].field_517 + ('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allocations', 9)))].field_0 = 100 * 256^allocations[address(arg1)].field_512 or !(255 * 256^allocations[address(arg1)].field_512) and stor[allocations[address(arg1)].field_517 + ('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allocations', 9)))].field_0
            else:
                require arg3 <= 4
                if 4 == arg3:
                    require arg2 <= sub_3c41a40a
                    sub_3c41a40a -= arg2
                    allocations[address(arg1)].field_0 = 4
                    allocations[address(arg1)].field_256++
                    if not arg4:
                        stor[allocations[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allocations', 9)))].field_0 = block.timestamp
                    else:
                        stor[allocations[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allocations', 9)))].field_0 = block.timestamp + (8640 * 24 * 3600)
                    allocations[address(arg1)].field_512++
                    stor[allocations[address(arg1)].field_517 + ('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allocations', 9)))].field_0 = 100 * 256^allocations[address(arg1)].field_512 or !(255 * 256^allocations[address(arg1)].field_512) and stor[allocations[address(arg1)].field_517 + ('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allocations', 9)))].field_0
                else:
                    require arg3 <= 4
                    if 2 == arg3:
                        require arg2 <= sub_4e407d68
                        sub_4e407d68 -= arg2
                        allocations[address(arg1)].field_0 = 2
                        allocations[address(arg1)].field_256++
                        if not arg4:
                            stor[allocations[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allocations', 9)))].field_0 = block.timestamp
                        else:
                            stor[allocations[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allocations', 9)))].field_0 = block.timestamp + (8640 * 24 * 3600)
                        allocations[address(arg1)].field_512++
                        stor[allocations[address(arg1)].field_517 + ('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allocations', 9)))].field_0 = 100 * 256^allocations[address(arg1)].field_512 or !(255 * 256^allocations[address(arg1)].field_512) and stor[allocations[address(arg1)].field_517 + ('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allocations', 9)))].field_0
    require allocations[address(arg1)].field_256
    require allocations[address(arg1)].field_256 == allocations[address(arg1)].field_512
    idx = 0
    while uint8(idx) < allocations[address(arg1)].field_512 - 1:
        require uint8(idx + 1) < allocations[address(arg1)].field_512
        require uint8(idx) < allocations[address(arg1)].field_512
        require stor(('array', 2, ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor9', 9))) + (Mask(3, 5, idx) >> 5))[uint8(idx)] < stor((Mask(3, 5, idx + 1) >> 5) + ('array', 2, ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor9', 9))))[uint8(idx + 1)]
        require uint8(idx + 1) < allocations[address(arg1)].field_256
        require uint8(idx) < allocations[address(arg1)].field_256
        mem[0] = sha3(address(arg1), 9) + 1
        require stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allocations', 9))) + uint8(idx)].field_0 < stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allocations', 9))) + uint8(idx + 1)].field_0
        idx = idx + 1
        continue 
    require allocations[address(arg1)].field_512 - 1 < allocations[address(arg1)].field_512
    require 100 == stor((0.03125 / Mask(256, 512, stor[('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor9', 9))]) - 1) + ('array', 2, ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor9', 9))))[uint8(stor9[address(arg1)].field_512 - 1)]
    require 0 < allocations[address(arg1)].field_256
    require block.timestamp <= allocations[address(arg1)][1].field_0
    allocations[address(arg1)].field_768 = arg2
    allocations[address(arg1)].field_1024 = 0
    require allocations[address(arg1)].field_1280 <= 2
    if not allocations[address(arg1)].field_1280:
        stor10.length++
        stor10[stor10.length].field_0 = arg1
    allocations[address(arg1)].field_1280 = 1
    require arg2 <= availableTotalSupply
    availableTotalSupply -= arg2
    require arg3 <= 4
    emit 0xb832e6a1: arg2, -availableTotalSupply + 10000000000 * 10^18, arg1, arg3
}

function transferTokens(address arg1) {
    require calldata.size - 4 >= 32
    require allocations[address(arg1)].field_0 <= 4
    if not allocations[address(arg1)].field_256:
        mem[(32 * allocations[address(arg1)].field_256) + 512] = allocations[address(arg1)].field_512
        if not allocations[address(arg1)].field_512:
            require allocations[address(arg1)].field_1280 <= 2
            require allocations[address(arg1)].field_1280 <= 2
            require 1 == allocations[address(arg1)].field_1280
            require allocations[address(arg1)].field_1024 < allocations[address(arg1)].field_768
            if uint8(var22001) >= allocations[address(arg1)].field_256:
                if not uint8(var22001):
                    revert with 0, 'Cliff period not reached'
                require uint8(var22001 - 1) < allocations[address(arg1)].field_512
                if not allocations[address(arg1)].field_768:
                    if 0 <= allocations[address(arg1)].field_1024:
                        revert with 0, 'Tokens for this period are already transferred'
                    require allocations[address(arg1)].field_1024 <= 0
                    require ext_code.size(sub_881cc242Address)
                    call sub_881cc242Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), -allocations[address(arg1)].field_1024
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    allocations[address(arg1)].field_1024 = 0
                    require -allocations[address(arg1)].field_1024 + grandTotalClaimed >= grandTotalClaimed
                    grandTotalClaimed -= allocations[address(arg1)].field_1024
                    require allocations[address(arg1)].field_0 <= 4
                    emit 0xd32854d7: -allocations[address(arg1)].field_1024, 0, grandTotalClaimed, arg1, allocations[address(arg1)].field_0
                else:
                    require mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var22001 - 1)) + 575 len 1] * allocations[address(arg1)].field_768 / allocations[address(arg1)].field_768 == mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var22001 - 1)) + 575 len 1]
                    if mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var22001 - 1)) + 575 len 1] * allocations[address(arg1)].field_768 / 100 <= allocations[address(arg1)].field_1024:
                        revert with 0, 'Tokens for this period are already transferred'
                    require allocations[address(arg1)].field_1024 <= mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var22001 - 1)) + 575 len 1] * allocations[address(arg1)].field_768 / 100
                    require ext_code.size(sub_881cc242Address)
                    call sub_881cc242Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), (mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var22001 - 1)) + 575 len 1] * allocations[address(arg1)].field_768 / 100) - allocations[address(arg1)].field_1024
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    allocations[address(arg1)].field_1024 = mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var22001 - 1)) + 575 len 1] * allocations[address(arg1)].field_768 / 100
                    require (mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var22001 - 1)) + 575 len 1] * allocations[address(arg1)].field_768 / 100) - allocations[address(arg1)].field_1024 + grandTotalClaimed >= grandTotalClaimed
                    grandTotalClaimed = (mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var22001 - 1)) + 575 len 1] * allocations[address(arg1)].field_768 / 100) - allocations[address(arg1)].field_1024 + grandTotalClaimed
                    require allocations[address(arg1)].field_0 <= 4
                    emit 0xd32854d7: (mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var22001 - 1)) + 575 len 1] * allocations[address(arg1)].field_768 / 100) - allocations[address(arg1)].field_1024, mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var22001 - 1)) + 575 len 1] * allocations[address(arg1)].field_768 / 100, grandTotalClaimed, arg1, allocations[address(arg1)].field_0
            else:
                require uint8(var24002) < allocations[address(arg1)].field_256
                if not var28001:
                    if not uint8(var28002):
                        revert with 0, 'Cliff period not reached'
                    require uint8(var28002 - 1) < allocations[address(arg1)].field_512
                    if not allocations[address(arg1)].field_768:
                        if 0 <= allocations[address(arg1)].field_1024:
                            revert with 0, 'Tokens for this period are already transferred'
                        require allocations[address(arg1)].field_1024 <= 0
                        require ext_code.size(sub_881cc242Address)
                        call sub_881cc242Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), -allocations[address(arg1)].field_1024
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        allocations[address(arg1)].field_1024 = 0
                        require -allocations[address(arg1)].field_1024 + grandTotalClaimed >= grandTotalClaimed
                        grandTotalClaimed -= allocations[address(arg1)].field_1024
                        require allocations[address(arg1)].field_0 <= 4
                        emit 0xd32854d7: -allocations[address(arg1)].field_1024, 0, grandTotalClaimed, arg1, allocations[address(arg1)].field_0
                    else:
                        require mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var28002 - 1)) + 575 len 1] * allocations[address(arg1)].field_768 / allocations[address(arg1)].field_768 == mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var28002 - 1)) + 575 len 1]
                        if mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var28002 - 1)) + 575 len 1] * allocations[address(arg1)].field_768 / 100 <= allocations[address(arg1)].field_1024:
                            revert with 0, 'Tokens for this period are already transferred'
                        require allocations[address(arg1)].field_1024 <= mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var28002 - 1)) + 575 len 1] * allocations[address(arg1)].field_768 / 100
                        require ext_code.size(sub_881cc242Address)
                        call sub_881cc242Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), (mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var28002 - 1)) + 575 len 1] * allocations[address(arg1)].field_768 / 100) - allocations[address(arg1)].field_1024
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        allocations[address(arg1)].field_1024 = mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var28002 - 1)) + 575 len 1] * allocations[address(arg1)].field_768 / 100
                        require (mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var28002 - 1)) + 575 len 1] * allocations[address(arg1)].field_768 / 100) - allocations[address(arg1)].field_1024 + grandTotalClaimed >= grandTotalClaimed
                        grandTotalClaimed = (mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var28002 - 1)) + 575 len 1] * allocations[address(arg1)].field_768 / 100) - allocations[address(arg1)].field_1024 + grandTotalClaimed
                        require allocations[address(arg1)].field_0 <= 4
                        emit 0xd32854d7: (mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var28002 - 1)) + 575 len 1] * allocations[address(arg1)].field_768 / 100) - allocations[address(arg1)].field_1024, mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var28002 - 1)) + 575 len 1] * allocations[address(arg1)].field_768 / 100, grandTotalClaimed, arg1, allocations[address(arg1)].field_0
                else:
                    idx = var28002
                    while uint8(idx + 1) < allocations[address(arg1)].field_256:
                        require uint8(idx + 1) < allocations[address(arg1)].field_256
                        if mem[(32 * uint8(idx + 1)) + 512] <= block.timestamp:
                            idx = idx + 1
                            continue 
                        if not uint8(idx + 1):
                            revert with 0, 'Cliff period not reached'
                        require uint8(idx) < allocations[address(arg1)].field_512
                        if not allocations[address(arg1)].field_768:
                            if 0 <= allocations[address(arg1)].field_1024:
                                revert with 0, 'Tokens for this period are already transferred'
                            require allocations[address(arg1)].field_1024 <= 0
                            require ext_code.size(sub_881cc242Address)
                            call sub_881cc242Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), -allocations[address(arg1)].field_1024
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            allocations[address(arg1)].field_1024 = 0
                            require -allocations[address(arg1)].field_1024 + grandTotalClaimed >= grandTotalClaimed
                            grandTotalClaimed -= allocations[address(arg1)].field_1024
                            require allocations[address(arg1)].field_0 <= 4
                            emit 0xd32854d7: -allocations[address(arg1)].field_1024, 0, grandTotalClaimed, arg1, allocations[address(arg1)].field_0
                        else:
                            require mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(idx)) + 575 len 1] * allocations[address(arg1)].field_768 / allocations[address(arg1)].field_768 == mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(idx)) + 575 len 1]
                            if mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(idx)) + 575 len 1] * allocations[address(arg1)].field_768 / 100 <= allocations[address(arg1)].field_1024:
                                revert with 0, 'Tokens for this period are already transferred'
                            require allocations[address(arg1)].field_1024 <= mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(idx)) + 575 len 1] * allocations[address(arg1)].field_768 / 100
                            require ext_code.size(sub_881cc242Address)
                            call sub_881cc242Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), (mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(idx)) + 575 len 1] * allocations[address(arg1)].field_768 / 100) - allocations[address(arg1)].field_1024
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            allocations[address(arg1)].field_1024 = mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(idx)) + 575 len 1] * allocations[address(arg1)].field_768 / 100
                            require (mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(idx)) + 575 len 1] * allocations[address(arg1)].field_768 / 100) - allocations[address(arg1)].field_1024 + grandTotalClaimed >= grandTotalClaimed
                            grandTotalClaimed = (mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(idx)) + 575 len 1] * allocations[address(arg1)].field_768 / 100) - allocations[address(arg1)].field_1024 + grandTotalClaimed
                            require allocations[address(arg1)].field_0 <= 4
                            emit 0xd32854d7: (mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(idx)) + 575 len 1] * allocations[address(arg1)].field_768 / 100) - allocations[address(arg1)].field_1024, mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(idx)) + 575 len 1] * allocations[address(arg1)].field_768 / 100, grandTotalClaimed, arg1, allocations[address(arg1)].field_0
                    if not uint8(None + 1):
                        revert with 0, 'Cliff period not reached'
                    require uint8(None) < allocations[address(arg1)].field_512
                    if not allocations[address(arg1)].field_768:
                        if 0 <= allocations[address(arg1)].field_1024:
                            revert with 0, 'Tokens for this period are already transferred'
                        require allocations[address(arg1)].field_1024 <= 0
                        require ext_code.size(sub_881cc242Address)
                        call sub_881cc242Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), -allocations[address(arg1)].field_1024
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        allocations[address(arg1)].field_1024 = 0
                        require -allocations[address(arg1)].field_1024 + grandTotalClaimed >= grandTotalClaimed
                        grandTotalClaimed -= allocations[address(arg1)].field_1024
                        require allocations[address(arg1)].field_0 <= 4
                        emit 0xd32854d7: -allocations[address(arg1)].field_1024, 0, grandTotalClaimed, arg1, allocations[address(arg1)].field_0
                    else:
                        require mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(None)) + 575 len 1] * allocations[address(arg1)].field_768 / allocations[address(arg1)].field_768 == mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(None)) + 575 len 1]
                        if mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(None)) + 575 len 1] * allocations[address(arg1)].field_768 / 100 <= allocations[address(arg1)].field_1024:
                            revert with 0, 'Tokens for this period are already transferred'
                        require allocations[address(arg1)].field_1024 <= mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(None)) + 575 len 1] * allocations[address(arg1)].field_768 / 100
                        require ext_code.size(sub_881cc242Address)
                        call sub_881cc242Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), (mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(None)) + 575 len 1] * allocations[address(arg1)].field_768 / 100) - allocations[address(arg1)].field_1024
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        allocations[address(arg1)].field_1024 = mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(None)) + 575 len 1] * allocations[address(arg1)].field_768 / 100
                        require (mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(None)) + 575 len 1] * allocations[address(arg1)].field_768 / 100) - allocations[address(arg1)].field_1024 + grandTotalClaimed >= grandTotalClaimed
                        grandTotalClaimed = (mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(None)) + 575 len 1] * allocations[address(arg1)].field_768 / 100) - allocations[address(arg1)].field_1024 + grandTotalClaimed
                        require allocations[address(arg1)].field_0 <= 4
                        emit 0xd32854d7: (mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(None)) + 575 len 1] * allocations[address(arg1)].field_768 / 100) - allocations[address(arg1)].field_1024, mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(None)) + 575 len 1] * allocations[address(arg1)].field_768 / 100, grandTotalClaimed, arg1, allocations[address(arg1)].field_0
        else:
            mem[(32 * allocations[address(arg1)].field_256) + 544] = allocations[address(arg1)][2].field_0
            idx = (32 * allocations[address(arg1)].field_256) + 544
            s = 0
            while (32 * allocations[address(arg1)].field_256) + (32 * allocations[address(arg1)].field_512) + 512 > idx:
                mem[idx + 32] = stor('array', 2, ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor9', 9)))[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                idx = idx + 32
                s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                continue 
            require allocations[address(arg1)].field_1280 <= 2
            require allocations[address(arg1)].field_1280 <= 2
            require 1 == allocations[address(arg1)].field_1280
            require allocations[address(arg1)].field_1024 < allocations[address(arg1)].field_768
            if uint8(var26001) >= allocations[address(arg1)].field_256:
                if not uint8(var26001):
                    revert with 0, 'Cliff period not reached'
                require uint8(var26001 - 1) < allocations[address(arg1)].field_512
                if not allocations[address(arg1)].field_768:
                    if 0 <= allocations[address(arg1)].field_1024:
                        revert with 0, 'Tokens for this period are already transferred'
                    require allocations[address(arg1)].field_1024 <= 0
                    require ext_code.size(sub_881cc242Address)
                    call sub_881cc242Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), -allocations[address(arg1)].field_1024
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    allocations[address(arg1)].field_1024 = 0
                    require -allocations[address(arg1)].field_1024 + grandTotalClaimed >= grandTotalClaimed
                    grandTotalClaimed -= allocations[address(arg1)].field_1024
                    require allocations[address(arg1)].field_0 <= 4
                    emit 0xd32854d7: -allocations[address(arg1)].field_1024, 0, grandTotalClaimed, arg1, allocations[address(arg1)].field_0
                else:
                    require mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var26001 - 1)) + 575 len 1] * allocations[address(arg1)].field_768 / allocations[address(arg1)].field_768 == mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var26001 - 1)) + 575 len 1]
                    if mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var26001 - 1)) + 575 len 1] * allocations[address(arg1)].field_768 / 100 <= allocations[address(arg1)].field_1024:
                        revert with 0, 'Tokens for this period are already transferred'
                    require allocations[address(arg1)].field_1024 <= mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var26001 - 1)) + 575 len 1] * allocations[address(arg1)].field_768 / 100
                    require ext_code.size(sub_881cc242Address)
                    call sub_881cc242Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), (mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var26001 - 1)) + 575 len 1] * allocations[address(arg1)].field_768 / 100) - allocations[address(arg1)].field_1024
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    allocations[address(arg1)].field_1024 = mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var26001 - 1)) + 575 len 1] * allocations[address(arg1)].field_768 / 100
                    require (mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var26001 - 1)) + 575 len 1] * allocations[address(arg1)].field_768 / 100) - allocations[address(arg1)].field_1024 + grandTotalClaimed >= grandTotalClaimed
                    grandTotalClaimed = (mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var26001 - 1)) + 575 len 1] * allocations[address(arg1)].field_768 / 100) - allocations[address(arg1)].field_1024 + grandTotalClaimed
                    require allocations[address(arg1)].field_0 <= 4
                    emit 0xd32854d7: (mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var26001 - 1)) + 575 len 1] * allocations[address(arg1)].field_768 / 100) - allocations[address(arg1)].field_1024, mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var26001 - 1)) + 575 len 1] * allocations[address(arg1)].field_768 / 100, grandTotalClaimed, arg1, allocations[address(arg1)].field_0
            else:
                require uint8(var28002) < allocations[address(arg1)].field_256
                if not var32001:
                    if not uint8(var32002):
                        revert with 0, 'Cliff period not reached'
                    require uint8(var32002 - 1) < allocations[address(arg1)].field_512
                    if not allocations[address(arg1)].field_768:
                        if 0 <= allocations[address(arg1)].field_1024:
                            revert with 0, 'Tokens for this period are already transferred'
                        require allocations[address(arg1)].field_1024 <= 0
                        require ext_code.size(sub_881cc242Address)
                        call sub_881cc242Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), -allocations[address(arg1)].field_1024
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        allocations[address(arg1)].field_1024 = 0
                        require -allocations[address(arg1)].field_1024 + grandTotalClaimed >= grandTotalClaimed
                        grandTotalClaimed -= allocations[address(arg1)].field_1024
                        require allocations[address(arg1)].field_0 <= 4
                        emit 0xd32854d7: -allocations[address(arg1)].field_1024, 0, grandTotalClaimed, arg1, allocations[address(arg1)].field_0
                    else:
                        require mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var32002 - 1)) + 575 len 1] * allocations[address(arg1)].field_768 / allocations[address(arg1)].field_768 == mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var32002 - 1)) + 575 len 1]
                        if mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var32002 - 1)) + 575 len 1] * allocations[address(arg1)].field_768 / 100 <= allocations[address(arg1)].field_1024:
                            revert with 0, 'Tokens for this period are already transferred'
                        require allocations[address(arg1)].field_1024 <= mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var32002 - 1)) + 575 len 1] * allocations[address(arg1)].field_768 / 100
                        require ext_code.size(sub_881cc242Address)
                        call sub_881cc242Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), (mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var32002 - 1)) + 575 len 1] * allocations[address(arg1)].field_768 / 100) - allocations[address(arg1)].field_1024
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        allocations[address(arg1)].field_1024 = mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var32002 - 1)) + 575 len 1] * allocations[address(arg1)].field_768 / 100
                        require (mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var32002 - 1)) + 575 len 1] * allocations[address(arg1)].field_768 / 100) - allocations[address(arg1)].field_1024 + grandTotalClaimed >= grandTotalClaimed
                        grandTotalClaimed = (mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var32002 - 1)) + 575 len 1] * allocations[address(arg1)].field_768 / 100) - allocations[address(arg1)].field_1024 + grandTotalClaimed
                        require allocations[address(arg1)].field_0 <= 4
                        emit 0xd32854d7: (mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var32002 - 1)) + 575 len 1] * allocations[address(arg1)].field_768 / 100) - allocations[address(arg1)].field_1024, mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var32002 - 1)) + 575 len 1] * allocations[address(arg1)].field_768 / 100, grandTotalClaimed, arg1, allocations[address(arg1)].field_0
                else:
                    idx = var32002
                    while uint8(idx + 1) < allocations[address(arg1)].field_256:
                        require uint8(idx + 1) < allocations[address(arg1)].field_256
                        if mem[(32 * uint8(idx + 1)) + 512] <= block.timestamp:
                            idx = idx + 1
                            continue 
                        if not uint8(idx + 1):
                            revert with 0, 'Cliff period not reached'
                        require uint8(idx) < allocations[address(arg1)].field_512
                        if not allocations[address(arg1)].field_768:
                            if 0 <= allocations[address(arg1)].field_1024:
                                revert with 0, 'Tokens for this period are already transferred'
                            require allocations[address(arg1)].field_1024 <= 0
                            require ext_code.size(sub_881cc242Address)
                            call sub_881cc242Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), -allocations[address(arg1)].field_1024
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            allocations[address(arg1)].field_1024 = 0
                            require -allocations[address(arg1)].field_1024 + grandTotalClaimed >= grandTotalClaimed
                            grandTotalClaimed -= allocations[address(arg1)].field_1024
                            require allocations[address(arg1)].field_0 <= 4
                            emit 0xd32854d7: -allocations[address(arg1)].field_1024, 0, grandTotalClaimed, arg1, allocations[address(arg1)].field_0
                        else:
                            require mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(idx)) + 575 len 1] * allocations[address(arg1)].field_768 / allocations[address(arg1)].field_768 == mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(idx)) + 575 len 1]
                            if mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(idx)) + 575 len 1] * allocations[address(arg1)].field_768 / 100 <= allocations[address(arg1)].field_1024:
                                revert with 0, 'Tokens for this period are already transferred'
                            require allocations[address(arg1)].field_1024 <= mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(idx)) + 575 len 1] * allocations[address(arg1)].field_768 / 100
                            require ext_code.size(sub_881cc242Address)
                            call sub_881cc242Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), (mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(idx)) + 575 len 1] * allocations[address(arg1)].field_768 / 100) - allocations[address(arg1)].field_1024
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            allocations[address(arg1)].field_1024 = mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(idx)) + 575 len 1] * allocations[address(arg1)].field_768 / 100
                            require (mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(idx)) + 575 len 1] * allocations[address(arg1)].field_768 / 100) - allocations[address(arg1)].field_1024 + grandTotalClaimed >= grandTotalClaimed
                            grandTotalClaimed = (mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(idx)) + 575 len 1] * allocations[address(arg1)].field_768 / 100) - allocations[address(arg1)].field_1024 + grandTotalClaimed
                            require allocations[address(arg1)].field_0 <= 4
                            emit 0xd32854d7: (mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(idx)) + 575 len 1] * allocations[address(arg1)].field_768 / 100) - allocations[address(arg1)].field_1024, mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(idx)) + 575 len 1] * allocations[address(arg1)].field_768 / 100, grandTotalClaimed, arg1, allocations[address(arg1)].field_0
                    if not uint8(None + 1):
                        revert with 0, 'Cliff period not reached'
                    require uint8(None) < allocations[address(arg1)].field_512
                    if not allocations[address(arg1)].field_768:
                        if 0 <= allocations[address(arg1)].field_1024:
                            revert with 0, 'Tokens for this period are already transferred'
                        require allocations[address(arg1)].field_1024 <= 0
                        require ext_code.size(sub_881cc242Address)
                        call sub_881cc242Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), -allocations[address(arg1)].field_1024
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        allocations[address(arg1)].field_1024 = 0
                        require -allocations[address(arg1)].field_1024 + grandTotalClaimed >= grandTotalClaimed
                        grandTotalClaimed -= allocations[address(arg1)].field_1024
                        require allocations[address(arg1)].field_0 <= 4
                        emit 0xd32854d7: -allocations[address(arg1)].field_1024, 0, grandTotalClaimed, arg1, allocations[address(arg1)].field_0
                    else:
                        require mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(None)) + 575 len 1] * allocations[address(arg1)].field_768 / allocations[address(arg1)].field_768 == mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(None)) + 575 len 1]
                        if mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(None)) + 575 len 1] * allocations[address(arg1)].field_768 / 100 <= allocations[address(arg1)].field_1024:
                            revert with 0, 'Tokens for this period are already transferred'
                        require allocations[address(arg1)].field_1024 <= mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(None)) + 575 len 1] * allocations[address(arg1)].field_768 / 100
                        require ext_code.size(sub_881cc242Address)
                        call sub_881cc242Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), (mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(None)) + 575 len 1] * allocations[address(arg1)].field_768 / 100) - allocations[address(arg1)].field_1024
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        allocations[address(arg1)].field_1024 = mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(None)) + 575 len 1] * allocations[address(arg1)].field_768 / 100
                        require (mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(None)) + 575 len 1] * allocations[address(arg1)].field_768 / 100) - allocations[address(arg1)].field_1024 + grandTotalClaimed >= grandTotalClaimed
                        grandTotalClaimed = (mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(None)) + 575 len 1] * allocations[address(arg1)].field_768 / 100) - allocations[address(arg1)].field_1024 + grandTotalClaimed
                        require allocations[address(arg1)].field_0 <= 4
                        emit 0xd32854d7: (mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(None)) + 575 len 1] * allocations[address(arg1)].field_768 / 100) - allocations[address(arg1)].field_1024, mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(None)) + 575 len 1] * allocations[address(arg1)].field_768 / 100, grandTotalClaimed, arg1, allocations[address(arg1)].field_0
    else:
        mem[512] = allocations[address(arg1)][1].field_0
        idx = 512
        s = 0
        while (32 * allocations[address(arg1)].field_256) + 480 > idx:
            mem[idx + 32] = allocations[address(arg1)][s + 1].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * allocations[address(arg1)].field_256) + 512] = allocations[address(arg1)].field_512
        if not allocations[address(arg1)].field_512:
            require allocations[address(arg1)].field_1280 <= 2
            require allocations[address(arg1)].field_1280 <= 2
            require 1 == allocations[address(arg1)].field_1280
            require allocations[address(arg1)].field_1024 < allocations[address(arg1)].field_768
            if uint8(var26001) >= allocations[address(arg1)].field_256:
                if not uint8(var26001):
                    revert with 0, 'Cliff period not reached'
                require uint8(var26001 - 1) < allocations[address(arg1)].field_512
                if not allocations[address(arg1)].field_768:
                    if 0 <= allocations[address(arg1)].field_1024:
                        revert with 0, 'Tokens for this period are already transferred'
                    require allocations[address(arg1)].field_1024 <= 0
                    require ext_code.size(sub_881cc242Address)
                    call sub_881cc242Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), -allocations[address(arg1)].field_1024
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    allocations[address(arg1)].field_1024 = 0
                    require -allocations[address(arg1)].field_1024 + grandTotalClaimed >= grandTotalClaimed
                    grandTotalClaimed -= allocations[address(arg1)].field_1024
                    require allocations[address(arg1)].field_0 <= 4
                    emit 0xd32854d7: -allocations[address(arg1)].field_1024, 0, grandTotalClaimed, arg1, allocations[address(arg1)].field_0
                else:
                    require mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var26001 - 1)) + 575 len 1] * allocations[address(arg1)].field_768 / allocations[address(arg1)].field_768 == mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var26001 - 1)) + 575 len 1]
                    if mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var26001 - 1)) + 575 len 1] * allocations[address(arg1)].field_768 / 100 <= allocations[address(arg1)].field_1024:
                        revert with 0, 'Tokens for this period are already transferred'
                    require allocations[address(arg1)].field_1024 <= mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var26001 - 1)) + 575 len 1] * allocations[address(arg1)].field_768 / 100
                    require ext_code.size(sub_881cc242Address)
                    call sub_881cc242Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), (mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var26001 - 1)) + 575 len 1] * allocations[address(arg1)].field_768 / 100) - allocations[address(arg1)].field_1024
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    allocations[address(arg1)].field_1024 = mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var26001 - 1)) + 575 len 1] * allocations[address(arg1)].field_768 / 100
                    require (mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var26001 - 1)) + 575 len 1] * allocations[address(arg1)].field_768 / 100) - allocations[address(arg1)].field_1024 + grandTotalClaimed >= grandTotalClaimed
                    grandTotalClaimed = (mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var26001 - 1)) + 575 len 1] * allocations[address(arg1)].field_768 / 100) - allocations[address(arg1)].field_1024 + grandTotalClaimed
                    require allocations[address(arg1)].field_0 <= 4
                    emit 0xd32854d7: (mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var26001 - 1)) + 575 len 1] * allocations[address(arg1)].field_768 / 100) - allocations[address(arg1)].field_1024, mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var26001 - 1)) + 575 len 1] * allocations[address(arg1)].field_768 / 100, grandTotalClaimed, arg1, allocations[address(arg1)].field_0
            else:
                require uint8(var28002) < allocations[address(arg1)].field_256
                if not var32001:
                    if not uint8(var32002):
                        revert with 0, 'Cliff period not reached'
                    require uint8(var32002 - 1) < allocations[address(arg1)].field_512
                    if not allocations[address(arg1)].field_768:
                        if 0 <= allocations[address(arg1)].field_1024:
                            revert with 0, 'Tokens for this period are already transferred'
                        require allocations[address(arg1)].field_1024 <= 0
                        require ext_code.size(sub_881cc242Address)
                        call sub_881cc242Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), -allocations[address(arg1)].field_1024
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        allocations[address(arg1)].field_1024 = 0
                        require -allocations[address(arg1)].field_1024 + grandTotalClaimed >= grandTotalClaimed
                        grandTotalClaimed -= allocations[address(arg1)].field_1024
                        require allocations[address(arg1)].field_0 <= 4
                        emit 0xd32854d7: -allocations[address(arg1)].field_1024, 0, grandTotalClaimed, arg1, allocations[address(arg1)].field_0
                    else:
                        require mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var32002 - 1)) + 575 len 1] * allocations[address(arg1)].field_768 / allocations[address(arg1)].field_768 == mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var32002 - 1)) + 575 len 1]
                        if mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var32002 - 1)) + 575 len 1] * allocations[address(arg1)].field_768 / 100 <= allocations[address(arg1)].field_1024:
                            revert with 0, 'Tokens for this period are already transferred'
                        require allocations[address(arg1)].field_1024 <= mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var32002 - 1)) + 575 len 1] * allocations[address(arg1)].field_768 / 100
                        require ext_code.size(sub_881cc242Address)
                        call sub_881cc242Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), (mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var32002 - 1)) + 575 len 1] * allocations[address(arg1)].field_768 / 100) - allocations[address(arg1)].field_1024
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        allocations[address(arg1)].field_1024 = mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var32002 - 1)) + 575 len 1] * allocations[address(arg1)].field_768 / 100
                        require (mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var32002 - 1)) + 575 len 1] * allocations[address(arg1)].field_768 / 100) - allocations[address(arg1)].field_1024 + grandTotalClaimed >= grandTotalClaimed
                        grandTotalClaimed = (mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var32002 - 1)) + 575 len 1] * allocations[address(arg1)].field_768 / 100) - allocations[address(arg1)].field_1024 + grandTotalClaimed
                        require allocations[address(arg1)].field_0 <= 4
                        emit 0xd32854d7: (mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var32002 - 1)) + 575 len 1] * allocations[address(arg1)].field_768 / 100) - allocations[address(arg1)].field_1024, mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var32002 - 1)) + 575 len 1] * allocations[address(arg1)].field_768 / 100, grandTotalClaimed, arg1, allocations[address(arg1)].field_0
                else:
                    idx = var32002
                    while uint8(idx + 1) < allocations[address(arg1)].field_256:
                        require uint8(idx + 1) < allocations[address(arg1)].field_256
                        if mem[(32 * uint8(idx + 1)) + 512] <= block.timestamp:
                            idx = idx + 1
                            continue 
                        if not uint8(idx + 1):
                            revert with 0, 'Cliff period not reached'
                        require uint8(idx) < allocations[address(arg1)].field_512
                        if not allocations[address(arg1)].field_768:
                            if 0 <= allocations[address(arg1)].field_1024:
                                revert with 0, 'Tokens for this period are already transferred'
                            require allocations[address(arg1)].field_1024 <= 0
                            require ext_code.size(sub_881cc242Address)
                            call sub_881cc242Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), -allocations[address(arg1)].field_1024
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            allocations[address(arg1)].field_1024 = 0
                            require -allocations[address(arg1)].field_1024 + grandTotalClaimed >= grandTotalClaimed
                            grandTotalClaimed -= allocations[address(arg1)].field_1024
                            require allocations[address(arg1)].field_0 <= 4
                            emit 0xd32854d7: -allocations[address(arg1)].field_1024, 0, grandTotalClaimed, arg1, allocations[address(arg1)].field_0
                        else:
                            require mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(idx)) + 575 len 1] * allocations[address(arg1)].field_768 / allocations[address(arg1)].field_768 == mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(idx)) + 575 len 1]
                            if mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(idx)) + 575 len 1] * allocations[address(arg1)].field_768 / 100 <= allocations[address(arg1)].field_1024:
                                revert with 0, 'Tokens for this period are already transferred'
                            require allocations[address(arg1)].field_1024 <= mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(idx)) + 575 len 1] * allocations[address(arg1)].field_768 / 100
                            require ext_code.size(sub_881cc242Address)
                            call sub_881cc242Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), (mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(idx)) + 575 len 1] * allocations[address(arg1)].field_768 / 100) - allocations[address(arg1)].field_1024
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            allocations[address(arg1)].field_1024 = mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(idx)) + 575 len 1] * allocations[address(arg1)].field_768 / 100
                            require (mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(idx)) + 575 len 1] * allocations[address(arg1)].field_768 / 100) - allocations[address(arg1)].field_1024 + grandTotalClaimed >= grandTotalClaimed
                            grandTotalClaimed = (mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(idx)) + 575 len 1] * allocations[address(arg1)].field_768 / 100) - allocations[address(arg1)].field_1024 + grandTotalClaimed
                            require allocations[address(arg1)].field_0 <= 4
                            emit 0xd32854d7: (mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(idx)) + 575 len 1] * allocations[address(arg1)].field_768 / 100) - allocations[address(arg1)].field_1024, mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(idx)) + 575 len 1] * allocations[address(arg1)].field_768 / 100, grandTotalClaimed, arg1, allocations[address(arg1)].field_0
                    if not uint8(None + 1):
                        revert with 0, 'Cliff period not reached'
                    require uint8(None) < allocations[address(arg1)].field_512
                    if not allocations[address(arg1)].field_768:
                        if 0 <= allocations[address(arg1)].field_1024:
                            revert with 0, 'Tokens for this period are already transferred'
                        require allocations[address(arg1)].field_1024 <= 0
                        require ext_code.size(sub_881cc242Address)
                        call sub_881cc242Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), -allocations[address(arg1)].field_1024
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        allocations[address(arg1)].field_1024 = 0
                        require -allocations[address(arg1)].field_1024 + grandTotalClaimed >= grandTotalClaimed
                        grandTotalClaimed -= allocations[address(arg1)].field_1024
                        require allocations[address(arg1)].field_0 <= 4
                        emit 0xd32854d7: -allocations[address(arg1)].field_1024, 0, grandTotalClaimed, arg1, allocations[address(arg1)].field_0
                    else:
                        require mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(None)) + 575 len 1] * allocations[address(arg1)].field_768 / allocations[address(arg1)].field_768 == mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(None)) + 575 len 1]
                        if mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(None)) + 575 len 1] * allocations[address(arg1)].field_768 / 100 <= allocations[address(arg1)].field_1024:
                            revert with 0, 'Tokens for this period are already transferred'
                        require allocations[address(arg1)].field_1024 <= mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(None)) + 575 len 1] * allocations[address(arg1)].field_768 / 100
                        require ext_code.size(sub_881cc242Address)
                        call sub_881cc242Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), (mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(None)) + 575 len 1] * allocations[address(arg1)].field_768 / 100) - allocations[address(arg1)].field_1024
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        allocations[address(arg1)].field_1024 = mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(None)) + 575 len 1] * allocations[address(arg1)].field_768 / 100
                        require (mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(None)) + 575 len 1] * allocations[address(arg1)].field_768 / 100) - allocations[address(arg1)].field_1024 + grandTotalClaimed >= grandTotalClaimed
                        grandTotalClaimed = (mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(None)) + 575 len 1] * allocations[address(arg1)].field_768 / 100) - allocations[address(arg1)].field_1024 + grandTotalClaimed
                        require allocations[address(arg1)].field_0 <= 4
                        emit 0xd32854d7: (mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(None)) + 575 len 1] * allocations[address(arg1)].field_768 / 100) - allocations[address(arg1)].field_1024, mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(None)) + 575 len 1] * allocations[address(arg1)].field_768 / 100, grandTotalClaimed, arg1, allocations[address(arg1)].field_0
        else:
            mem[(32 * allocations[address(arg1)].field_256) + 544] = allocations[address(arg1)][2].field_0
            idx = (32 * allocations[address(arg1)].field_256) + 544
            s = 0
            while (32 * allocations[address(arg1)].field_256) + (32 * allocations[address(arg1)].field_512) + 512 > idx:
                mem[idx + 32] = stor('array', 2, ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor9', 9)))[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                idx = idx + 32
                s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                continue 
            require allocations[address(arg1)].field_1280 <= 2
            require allocations[address(arg1)].field_1280 <= 2
            require 1 == allocations[address(arg1)].field_1280
            require allocations[address(arg1)].field_1024 < allocations[address(arg1)].field_768
            if uint8(var30001) >= allocations[address(arg1)].field_256:
                if not uint8(var30001):
                    revert with 0, 'Cliff period not reached'
                require uint8(var30001 - 1) < allocations[address(arg1)].field_512
                if not allocations[address(arg1)].field_768:
                    if 0 <= allocations[address(arg1)].field_1024:
                        revert with 0, 'Tokens for this period are already transferred'
                    require allocations[address(arg1)].field_1024 <= 0
                    require ext_code.size(sub_881cc242Address)
                    call sub_881cc242Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), -allocations[address(arg1)].field_1024
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    allocations[address(arg1)].field_1024 = 0
                    require -allocations[address(arg1)].field_1024 + grandTotalClaimed >= grandTotalClaimed
                    grandTotalClaimed -= allocations[address(arg1)].field_1024
                    require allocations[address(arg1)].field_0 <= 4
                    emit 0xd32854d7: -allocations[address(arg1)].field_1024, 0, grandTotalClaimed, arg1, allocations[address(arg1)].field_0
                else:
                    require mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var30001 - 1)) + 575 len 1] * allocations[address(arg1)].field_768 / allocations[address(arg1)].field_768 == mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var30001 - 1)) + 575 len 1]
                    if mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var30001 - 1)) + 575 len 1] * allocations[address(arg1)].field_768 / 100 <= allocations[address(arg1)].field_1024:
                        revert with 0, 'Tokens for this period are already transferred'
                    require allocations[address(arg1)].field_1024 <= mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var30001 - 1)) + 575 len 1] * allocations[address(arg1)].field_768 / 100
                    require ext_code.size(sub_881cc242Address)
                    call sub_881cc242Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), (mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var30001 - 1)) + 575 len 1] * allocations[address(arg1)].field_768 / 100) - allocations[address(arg1)].field_1024
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    allocations[address(arg1)].field_1024 = mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var30001 - 1)) + 575 len 1] * allocations[address(arg1)].field_768 / 100
                    require (mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var30001 - 1)) + 575 len 1] * allocations[address(arg1)].field_768 / 100) - allocations[address(arg1)].field_1024 + grandTotalClaimed >= grandTotalClaimed
                    grandTotalClaimed = (mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var30001 - 1)) + 575 len 1] * allocations[address(arg1)].field_768 / 100) - allocations[address(arg1)].field_1024 + grandTotalClaimed
                    require allocations[address(arg1)].field_0 <= 4
                    emit 0xd32854d7: (mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var30001 - 1)) + 575 len 1] * allocations[address(arg1)].field_768 / 100) - allocations[address(arg1)].field_1024, mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var30001 - 1)) + 575 len 1] * allocations[address(arg1)].field_768 / 100, grandTotalClaimed, arg1, allocations[address(arg1)].field_0
            else:
                require uint8(var32002) < allocations[address(arg1)].field_256
                if not var36001:
                    if not uint8(var36002):
                        revert with 0, 'Cliff period not reached'
                    require uint8(var36002 - 1) < allocations[address(arg1)].field_512
                    if not allocations[address(arg1)].field_768:
                        if 0 <= allocations[address(arg1)].field_1024:
                            revert with 0, 'Tokens for this period are already transferred'
                        require allocations[address(arg1)].field_1024 <= 0
                        require ext_code.size(sub_881cc242Address)
                        call sub_881cc242Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), -allocations[address(arg1)].field_1024
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        allocations[address(arg1)].field_1024 = 0
                        require -allocations[address(arg1)].field_1024 + grandTotalClaimed >= grandTotalClaimed
                        grandTotalClaimed -= allocations[address(arg1)].field_1024
                        require allocations[address(arg1)].field_0 <= 4
                        emit 0xd32854d7: -allocations[address(arg1)].field_1024, 0, grandTotalClaimed, arg1, allocations[address(arg1)].field_0
                    else:
                        require mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var36002 - 1)) + 575 len 1] * allocations[address(arg1)].field_768 / allocations[address(arg1)].field_768 == mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var36002 - 1)) + 575 len 1]
                        if mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var36002 - 1)) + 575 len 1] * allocations[address(arg1)].field_768 / 100 <= allocations[address(arg1)].field_1024:
                            revert with 0, 'Tokens for this period are already transferred'
                        require allocations[address(arg1)].field_1024 <= mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var36002 - 1)) + 575 len 1] * allocations[address(arg1)].field_768 / 100
                        require ext_code.size(sub_881cc242Address)
                        call sub_881cc242Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), (mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var36002 - 1)) + 575 len 1] * allocations[address(arg1)].field_768 / 100) - allocations[address(arg1)].field_1024
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        allocations[address(arg1)].field_1024 = mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var36002 - 1)) + 575 len 1] * allocations[address(arg1)].field_768 / 100
                        require (mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var36002 - 1)) + 575 len 1] * allocations[address(arg1)].field_768 / 100) - allocations[address(arg1)].field_1024 + grandTotalClaimed >= grandTotalClaimed
                        grandTotalClaimed = (mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var36002 - 1)) + 575 len 1] * allocations[address(arg1)].field_768 / 100) - allocations[address(arg1)].field_1024 + grandTotalClaimed
                        require allocations[address(arg1)].field_0 <= 4
                        emit 0xd32854d7: (mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var36002 - 1)) + 575 len 1] * allocations[address(arg1)].field_768 / 100) - allocations[address(arg1)].field_1024, mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(var36002 - 1)) + 575 len 1] * allocations[address(arg1)].field_768 / 100, grandTotalClaimed, arg1, allocations[address(arg1)].field_0
                else:
                    idx = var36002
                    while uint8(idx + 1) < allocations[address(arg1)].field_256:
                        require uint8(idx + 1) < allocations[address(arg1)].field_256
                        if mem[(32 * uint8(idx + 1)) + 512] <= block.timestamp:
                            idx = idx + 1
                            continue 
                        if not uint8(idx + 1):
                            revert with 0, 'Cliff period not reached'
                        require uint8(idx) < allocations[address(arg1)].field_512
                        if not allocations[address(arg1)].field_768:
                            if 0 <= allocations[address(arg1)].field_1024:
                                revert with 0, 'Tokens for this period are already transferred'
                            require allocations[address(arg1)].field_1024 <= 0
                            require ext_code.size(sub_881cc242Address)
                            call sub_881cc242Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), -allocations[address(arg1)].field_1024
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            allocations[address(arg1)].field_1024 = 0
                            require -allocations[address(arg1)].field_1024 + grandTotalClaimed >= grandTotalClaimed
                            grandTotalClaimed -= allocations[address(arg1)].field_1024
                            require allocations[address(arg1)].field_0 <= 4
                            emit 0xd32854d7: -allocations[address(arg1)].field_1024, 0, grandTotalClaimed, arg1, allocations[address(arg1)].field_0
                        else:
                            require mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(idx)) + 575 len 1] * allocations[address(arg1)].field_768 / allocations[address(arg1)].field_768 == mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(idx)) + 575 len 1]
                            if mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(idx)) + 575 len 1] * allocations[address(arg1)].field_768 / 100 <= allocations[address(arg1)].field_1024:
                                revert with 0, 'Tokens for this period are already transferred'
                            require allocations[address(arg1)].field_1024 <= mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(idx)) + 575 len 1] * allocations[address(arg1)].field_768 / 100
                            require ext_code.size(sub_881cc242Address)
                            call sub_881cc242Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), (mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(idx)) + 575 len 1] * allocations[address(arg1)].field_768 / 100) - allocations[address(arg1)].field_1024
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            allocations[address(arg1)].field_1024 = mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(idx)) + 575 len 1] * allocations[address(arg1)].field_768 / 100
                            require (mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(idx)) + 575 len 1] * allocations[address(arg1)].field_768 / 100) - allocations[address(arg1)].field_1024 + grandTotalClaimed >= grandTotalClaimed
                            grandTotalClaimed = (mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(idx)) + 575 len 1] * allocations[address(arg1)].field_768 / 100) - allocations[address(arg1)].field_1024 + grandTotalClaimed
                            require allocations[address(arg1)].field_0 <= 4
                            emit 0xd32854d7: (mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(idx)) + 575 len 1] * allocations[address(arg1)].field_768 / 100) - allocations[address(arg1)].field_1024, mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(idx)) + 575 len 1] * allocations[address(arg1)].field_768 / 100, grandTotalClaimed, arg1, allocations[address(arg1)].field_0
                    if not uint8(None + 1):
                        revert with 0, 'Cliff period not reached'
                    require uint8(None) < allocations[address(arg1)].field_512
                    if not allocations[address(arg1)].field_768:
                        if 0 <= allocations[address(arg1)].field_1024:
                            revert with 0, 'Tokens for this period are already transferred'
                        require allocations[address(arg1)].field_1024 <= 0
                        require ext_code.size(sub_881cc242Address)
                        call sub_881cc242Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), -allocations[address(arg1)].field_1024
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        allocations[address(arg1)].field_1024 = 0
                        require -allocations[address(arg1)].field_1024 + grandTotalClaimed >= grandTotalClaimed
                        grandTotalClaimed -= allocations[address(arg1)].field_1024
                        require allocations[address(arg1)].field_0 <= 4
                        emit 0xd32854d7: -allocations[address(arg1)].field_1024, 0, grandTotalClaimed, arg1, allocations[address(arg1)].field_0
                    else:
                        require mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(None)) + 575 len 1] * allocations[address(arg1)].field_768 / allocations[address(arg1)].field_768 == mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(None)) + 575 len 1]
                        if mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(None)) + 575 len 1] * allocations[address(arg1)].field_768 / 100 <= allocations[address(arg1)].field_1024:
                            revert with 0, 'Tokens for this period are already transferred'
                        require allocations[address(arg1)].field_1024 <= mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(None)) + 575 len 1] * allocations[address(arg1)].field_768 / 100
                        require ext_code.size(sub_881cc242Address)
                        call sub_881cc242Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), (mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(None)) + 575 len 1] * allocations[address(arg1)].field_768 / 100) - allocations[address(arg1)].field_1024
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        allocations[address(arg1)].field_1024 = mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(None)) + 575 len 1] * allocations[address(arg1)].field_768 / 100
                        require (mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(None)) + 575 len 1] * allocations[address(arg1)].field_768 / 100) - allocations[address(arg1)].field_1024 + grandTotalClaimed >= grandTotalClaimed
                        grandTotalClaimed = (mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(None)) + 575 len 1] * allocations[address(arg1)].field_768 / 100) - allocations[address(arg1)].field_1024 + grandTotalClaimed
                        require allocations[address(arg1)].field_0 <= 4
                        emit 0xd32854d7: (mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(None)) + 575 len 1] * allocations[address(arg1)].field_768 / 100) - allocations[address(arg1)].field_1024, mem[(32 * allocations[address(arg1)].field_256) + (32 * uint8(None)) + 575 len 1] * allocations[address(arg1)].field_768 / 100, grandTotalClaimed, arg1, allocations[address(arg1)].field_0
}



}
