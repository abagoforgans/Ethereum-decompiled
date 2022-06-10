contract main {




// =====================  Runtime code  =====================


#
#  - vote(address arg1, uint256 arg2, uint256 arg3)
#
const sub_0432dc9b(?) = Array(len=4, data=mem[320 len 128])

const sub_5b1e42a9(?) = Array(len=4, data=mem[320 len 128])


address owner;
address newOwner;
uint256 sub_39557d3d;
mapping of struct sub_5bf01d4c;
mapping of uint16 sub_fe254a3d;
mapping of struct sub_25a03ebe;
mapping of uint8 sub_604c3ad4;
mapping of uint8 stor7;
address stor8;
address stor9;
address stor10;
address stor11;
address stor12;
mapping of uint16 stor13;
uint8 enabled;
address stor14;
address sub_a9fe5c30Address; offset 8
array of uint256 stor15;

function sub_0b3fd64e(?) {
    require calldata.size - 4 >= 32
    return bool(stor7[arg1])
}

function enabled() {
    return bool(enabled)
}

function sub_25a03ebe(?) {
    require calldata.size - 4 >= 32
    return sub_25a03ebe[arg1].field_0, sub_25a03ebe[arg1].field_256, sub_25a03ebe[arg1].field_512, sub_25a03ebe[arg1].field_768
}

function sub_39557d3d(?) {
    return sub_39557d3d
}

function sub_5bf01d4c(?) {
    require calldata.size - 4 >= 32
    return sub_5bf01d4c[arg1].field_0, sub_5bf01d4c[arg1].field_512, sub_5bf01d4c[arg1].field_768
}

function sub_604c3ad4(?) {
    require calldata.size - 4 >= 32
    return sub_604c3ad4[arg1]
}

function owner() {
    return owner
}

function sub_a9fe5c30(?) {
    return sub_a9fe5c30Address
}

function newOwner() {
    return newOwner
}

function sub_fe254a3d(?) {
    require calldata.size - 4 >= 64
    return sub_fe254a3d[arg1][arg2]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Only owner'
    newOwner = arg1
}

function acceptOwnership() {
    if newOwner != msg.sender:
        revert with 0, 'Only new owner'
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function teamTimestamps() {
    if stor15.length:
        mem[128 len 32 * stor15.length] = code.data[11722 len 32 * stor15.length]
    idx = 0
    while idx < stor15.length:
        mem[0] = 15
        require idx < stor15.length
        mem[(32 * idx) + 128] = stor15[idx]
        idx = idx + 1
        continue 
    mem[(32 * stor15.length) + 192 len floor32(stor15.length)] = mem[128 len floor32(stor15.length)]
    return Array(len=stor15.length, data=mem[128 len floor32(stor15.length)], mem[(32 * stor15.length) + floor32(stor15.length) + 192 len (32 * stor15.length) - floor32(stor15.length)]), 
}

function sub_ca967e47(?) {
    require calldata.size - 4 >= 32
    if stor8 != msg.sender:
        if stor9 != msg.sender:
            if stor10 != msg.sender:
                if stor11 != msg.sender:
                    revert with 0, 32, 11, 0xfe4f6e6c79206d656d6265720000000000000000000000000000000000000000
    if not arg1:
        revert with 0, 'must true'
    stor7[stor2] = uint8(arg1)
    sub_5bf01d4c[stor2].field_0 = msg.sender or Mask(96, 160, sub_5bf01d4c[stor2].field_0)
    sub_5bf01d4c[stor2][1][msg.sender].field_0 = 1
    sub_5bf01d4c[stor2].field_512 = block.timestamp
    sub_5bf01d4c[stor2].field_768 = 4
    sub_39557d3d++
    emit 0x2363c49e: msg.sender, block.timestamp, arg1
}

function sub_313b7859(?) {
    require calldata.size - 4 >= 32
    if stor8 != msg.sender:
        if stor9 != msg.sender:
            if stor10 != msg.sender:
                if stor11 != msg.sender:
                    revert with 0, 32, 11, 0xfe4f6e6c79206d656d6265720000000000000000000000000000000000000000
    if arg1 != 1:
        if arg1 != 2:
            revert with 0, 'must be one of 1 and 2'
    sub_604c3ad4[stor2] = arg1
    sub_5bf01d4c[stor2].field_0 = msg.sender or Mask(96, 160, sub_5bf01d4c[stor2].field_0)
    sub_5bf01d4c[stor2][1][msg.sender].field_0 = 1
    sub_5bf01d4c[stor2].field_512 = block.timestamp
    sub_5bf01d4c[stor2].field_768 = 3
    sub_39557d3d++
    emit 0x4e114e42: msg.sender, block.timestamp, arg1
}

function deposit() {
    if sub_a9fe5c30Address != msg.sender:
        revert with 0, 'msg.sender must be fundingSource'
    require ext_code.size(stor12)
    staticcall stor12.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Value must more than 0'
    require ext_code.size(stor12)
    call stor12.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Deposited(msg.sender, ext_call.return_data[0]);
    return 0
}

function sub_c1848463(?) {
    require calldata.size - 4 >= 128
    if stor8 != msg.sender:
        if stor9 != msg.sender:
            if stor10 != msg.sender:
                if stor11 != msg.sender:
                    revert with 0, 32, 11, 0xfe4f6e6c79206d656d6265720000000000000000000000000000000000000000
    if uint16(arg4 + arg3 + arg2 + arg1) != 1000:
        revert with 0, 'the sum must be 1000'
    sub_fe254a3d[stor2][stor8] = arg1
    sub_fe254a3d[stor2][stor9] = arg2
    sub_fe254a3d[stor2][stor10] = arg3
    sub_fe254a3d[stor2][stor11] = arg4
    sub_5bf01d4c[stor2].field_0 = msg.sender or Mask(96, 160, sub_5bf01d4c[stor2].field_0)
    sub_5bf01d4c[stor2][1][msg.sender].field_0 = 1
    sub_5bf01d4c[stor2].field_512 = block.timestamp
    sub_5bf01d4c[stor2].field_768 = 1
    sub_39557d3d++
    emit 0xab6c49de: msg.sender, block.timestamp, arg1 << 240, arg2 << 240, arg3, arg4 << 240
}

function sub_544097a5(?) {
    require calldata.size - 4 >= 128
    if stor8 != msg.sender:
        if stor9 != msg.sender:
            if stor10 != msg.sender:
                if stor11 != msg.sender:
                    revert with 0, 32, 11, 0xfe4f6e6c79206d656d6265720000000000000000000000000000000000000000
    if not arg1:
        revert with 0, 'invalid addresses'
    if not arg2:
        revert with 0, 'invalid addresses'
    if not arg3:
        revert with 0, 'invalid addresses'
    if not arg4:
        revert with 0, 'invalid addresses'
    sub_25a03ebe[stor2].field_0 = arg1
    sub_25a03ebe[stor2].field_256 = arg2
    sub_25a03ebe[stor2].field_512 = arg3
    sub_25a03ebe[stor2].field_768 = arg4
    sub_5bf01d4c[stor2].field_0 = msg.sender or Mask(96, 160, sub_5bf01d4c[stor2].field_0)
    sub_5bf01d4c[stor2][1][msg.sender].field_0 = 1
    sub_5bf01d4c[stor2].field_512 = block.timestamp
    sub_5bf01d4c[stor2].field_768 = 2
    sub_39557d3d++
    emit 0xca3a8cd3: msg.sender, block.timestamp, address(arg1), address(arg2), arg3, address(arg4)
}

function sub_e3f017a7(?) {
    require calldata.size - 4 >= 32
    mem[864 len 0] = None
    mem[1024 len 0] = None
    mem[1184 len 0] = None
    if sub_5bf01d4c[arg1].field_768 == 1:
        return sub_5bf01d4c[arg1].field_0, 
               256,
               sub_5bf01d4c[arg1].field_512,
               sub_5bf01d4c[arg1].field_768,
               416,
               576,
               0,
               0,
               4,
               mem[864 len 128],
               4,
               mem[1024 len 128],
               4,
               mem[1184 len 128]
    if 2 == sub_5bf01d4c[arg1].field_768:
        return sub_5bf01d4c[arg1].field_0, 
               256,
               sub_5bf01d4c[arg1].field_512,
               sub_5bf01d4c[arg1].field_768,
               416,
               576,
               0,
               0,
               4,
               mem[864 len 128],
               4,
               mem[1024 len 128],
               4,
               mem[1184 len 128]
    if 3 == sub_5bf01d4c[arg1].field_768:
        return sub_5bf01d4c[arg1].field_0, 
               256,
               sub_5bf01d4c[arg1].field_512,
               sub_5bf01d4c[arg1].field_768,
               416,
               576,
               sub_604c3ad4[arg1],
               0,
               4,
               mem[864 len 128],
               4,
               mem[1024 len 128],
               4,
               mem[1184 len 128]
    if sub_5bf01d4c[arg1].field_768 != 4:
        return sub_5bf01d4c[arg1].field_0, 
               256,
               sub_5bf01d4c[arg1].field_512,
               sub_5bf01d4c[arg1].field_768,
               416,
               576,
               0,
               0,
               4,
               mem[864 len 128],
               4,
               mem[1024 len 128],
               4,
               mem[1184 len 128]
    return sub_5bf01d4c[arg1].field_0, 
           256,
           sub_5bf01d4c[arg1].field_512,
           sub_5bf01d4c[arg1].field_768,
           416,
           576,
           0,
           bool(stor7[arg1]),
           4,
           mem[864 len 128],
           4,
           mem[1024 len 128],
           4,
           mem[1184 len 128]
}

function candy() {
    if owner != msg.sender:
        if stor8 != msg.sender:
            if stor9 != msg.sender:
                if stor10 != msg.sender:
                    if stor11 != msg.sender:
                        revert with 0, 32, 11, 0xfe4f6e6c79206d656d6265720000000000000000000000000000000000000000
    if not enabled:
        revert with 0, 'Must enabled'
    require ext_code.size(stor12)
    staticcall stor12.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    s = 0
    while idx < stor15.length:
        mem[0] = 15
        if not stor15[idx]:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    if ext_call.return_data[0] <= s:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'tokens should be larger than count'
    if s <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'tokens should be larger than count'
    require s
    idx = 0
    t = 0
    u = ext_call.return_data[0]
    while idx < stor15.length:
        mem[0] = 15
        if 0 == stor15[idx]:
            idx = idx + 1
            t = t
            u = u
            continue 
        require idx < stor15.length
        mem[0] = 15
        if stor15[idx] > block.timestamp:
            idx = idx + 1
            t = t
            u = u
            continue 
        if ext_call.return_data[0] * stor13[stor8] / 1000 / s <= 0:
            if ext_call.return_data[0] * stor13[stor9] / 1000 / s <= 0:
                if ext_call.return_data[0] * stor13[stor10] / 1000 / s <= 0:
                    if ext_call.return_data[0] * stor13[stor11] / 1000 / s <= 0:
                        require idx < stor15.length
                        mem[0] = 15
                        stor15[idx] = 0
                        idx = idx + 1
                        t = t + 1
                        u = u
                        continue 
                    mem[100] = stor11
                    mem[132] = ext_call.return_data[0] * stor13[stor11] / 1000 / s
                    require ext_code.size(stor12)
                    call stor12.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor11, ext_call.return_data[0] * stor13[stor11] / 1000 / s
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < stor15.length
                    mem[0] = 15
                    stor15[idx] = 0
                    idx = idx + 1
                    t = t + 1
                    u = u - (ext_call.return_data[0] * stor13[stor11] / 1000 / s)
                    continue 
                mem[100] = stor10
                mem[132] = ext_call.return_data[0] * stor13[stor10] / 1000 / s
                require ext_code.size(stor12)
                call stor12.0xa9059cbb with:
                     gas gas_remaining wei
                    args stor10, ext_call.return_data[0] * stor13[stor10] / 1000 / s
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] * stor13[stor11] / 1000 / s <= 0:
                    require idx < stor15.length
                    mem[0] = 15
                    stor15[idx] = 0
                    idx = idx + 1
                    t = t + 1
                    u = u - (ext_call.return_data[0] * stor13[stor10] / 1000 / s)
                    continue 
                mem[100] = stor11
                mem[132] = ext_call.return_data[0] * stor13[stor11] / 1000 / s
                require ext_code.size(stor12)
                call stor12.0xa9059cbb with:
                     gas gas_remaining wei
                    args stor11, ext_call.return_data[0] * stor13[stor11] / 1000 / s
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < stor15.length
                mem[0] = 15
                stor15[idx] = 0
                idx = idx + 1
                t = t + 1
                u = u - (ext_call.return_data[0] * stor13[stor10] / 1000 / s) - (ext_call.return_data[0] * stor13[stor11] / 1000 / s)
                continue 
            mem[100] = stor9
            mem[132] = ext_call.return_data[0] * stor13[stor9] / 1000 / s
            require ext_code.size(stor12)
            call stor12.0xa9059cbb with:
                 gas gas_remaining wei
                args stor9, ext_call.return_data[0] * stor13[stor9] / 1000 / s
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] * stor13[stor10] / 1000 / s <= 0:
                if ext_call.return_data[0] * stor13[stor11] / 1000 / s <= 0:
                    require idx < stor15.length
                    mem[0] = 15
                    stor15[idx] = 0
                    idx = idx + 1
                    t = t + 1
                    u = u - (ext_call.return_data[0] * stor13[stor9] / 1000 / s)
                    continue 
                mem[100] = stor11
                mem[132] = ext_call.return_data[0] * stor13[stor11] / 1000 / s
                require ext_code.size(stor12)
                call stor12.0xa9059cbb with:
                     gas gas_remaining wei
                    args stor11, ext_call.return_data[0] * stor13[stor11] / 1000 / s
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < stor15.length
                mem[0] = 15
                stor15[idx] = 0
                idx = idx + 1
                t = t + 1
                u = u - (ext_call.return_data[0] * stor13[stor9] / 1000 / s) - (ext_call.return_data[0] * stor13[stor11] / 1000 / s)
                continue 
            mem[100] = stor10
            mem[132] = ext_call.return_data[0] * stor13[stor10] / 1000 / s
            require ext_code.size(stor12)
            call stor12.0xa9059cbb with:
                 gas gas_remaining wei
                args stor10, ext_call.return_data[0] * stor13[stor10] / 1000 / s
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] * stor13[stor11] / 1000 / s <= 0:
                require idx < stor15.length
                mem[0] = 15
                stor15[idx] = 0
                idx = idx + 1
                t = t + 1
                u = u - (ext_call.return_data[0] * stor13[stor9] / 1000 / s) - (ext_call.return_data[0] * stor13[stor10] / 1000 / s)
                continue 
            mem[100] = stor11
            mem[132] = ext_call.return_data[0] * stor13[stor11] / 1000 / s
            require ext_code.size(stor12)
            call stor12.0xa9059cbb with:
                 gas gas_remaining wei
                args stor11, ext_call.return_data[0] * stor13[stor11] / 1000 / s
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < stor15.length
            mem[0] = 15
            stor15[idx] = 0
            idx = idx + 1
            t = t + 1
            u = u - (ext_call.return_data[0] * stor13[stor9] / 1000 / s) - (ext_call.return_data[0] * stor13[stor10] / 1000 / s) - (ext_call.return_data[0] * stor13[stor11] / 1000 / s)
            continue 
        mem[100] = stor8
        mem[132] = ext_call.return_data[0] * stor13[stor8] / 1000 / s
        require ext_code.size(stor12)
        call stor12.0xa9059cbb with:
             gas gas_remaining wei
            args stor8, ext_call.return_data[0] * stor13[stor8] / 1000 / s
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] * stor13[stor9] / 1000 / s <= 0:
            if ext_call.return_data[0] * stor13[stor10] / 1000 / s <= 0:
                if ext_call.return_data[0] * stor13[stor11] / 1000 / s <= 0:
                    require idx < stor15.length
                    mem[0] = 15
                    stor15[idx] = 0
                    idx = idx + 1
                    t = t + 1
                    u = u - (ext_call.return_data[0] * stor13[stor8] / 1000 / s)
                    continue 
                mem[100] = stor11
                mem[132] = ext_call.return_data[0] * stor13[stor11] / 1000 / s
                require ext_code.size(stor12)
                call stor12.0xa9059cbb with:
                     gas gas_remaining wei
                    args stor11, ext_call.return_data[0] * stor13[stor11] / 1000 / s
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < stor15.length
                mem[0] = 15
                stor15[idx] = 0
                idx = idx + 1
                t = t + 1
                u = u - (ext_call.return_data[0] * stor13[stor8] / 1000 / s) - (ext_call.return_data[0] * stor13[stor11] / 1000 / s)
                continue 
            mem[100] = stor10
            mem[132] = ext_call.return_data[0] * stor13[stor10] / 1000 / s
            require ext_code.size(stor12)
            call stor12.0xa9059cbb with:
                 gas gas_remaining wei
                args stor10, ext_call.return_data[0] * stor13[stor10] / 1000 / s
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] * stor13[stor11] / 1000 / s <= 0:
                require idx < stor15.length
                mem[0] = 15
                stor15[idx] = 0
                idx = idx + 1
                t = t + 1
                u = u - (ext_call.return_data[0] * stor13[stor8] / 1000 / s) - (ext_call.return_data[0] * stor13[stor10] / 1000 / s)
                continue 
            mem[100] = stor11
            mem[132] = ext_call.return_data[0] * stor13[stor11] / 1000 / s
            require ext_code.size(stor12)
            call stor12.0xa9059cbb with:
                 gas gas_remaining wei
                args stor11, ext_call.return_data[0] * stor13[stor11] / 1000 / s
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < stor15.length
            mem[0] = 15
            stor15[idx] = 0
            idx = idx + 1
            t = t + 1
            u = u - (ext_call.return_data[0] * stor13[stor8] / 1000 / s) - (ext_call.return_data[0] * stor13[stor10] / 1000 / s) - (ext_call.return_data[0] * stor13[stor11] / 1000 / s)
            continue 
        mem[100] = stor9
        mem[132] = ext_call.return_data[0] * stor13[stor9] / 1000 / s
        require ext_code.size(stor12)
        call stor12.0xa9059cbb with:
             gas gas_remaining wei
            args stor9, ext_call.return_data[0] * stor13[stor9] / 1000 / s
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] * stor13[stor10] / 1000 / s <= 0:
            if ext_call.return_data[0] * stor13[stor11] / 1000 / s <= 0:
                require idx < stor15.length
                mem[0] = 15
                stor15[idx] = 0
                idx = idx + 1
                t = t + 1
                u = u - (ext_call.return_data[0] * stor13[stor8] / 1000 / s) - (ext_call.return_data[0] * stor13[stor9] / 1000 / s)
                continue 
            mem[100] = stor11
            mem[132] = ext_call.return_data[0] * stor13[stor11] / 1000 / s
            require ext_code.size(stor12)
            call stor12.0xa9059cbb with:
                 gas gas_remaining wei
                args stor11, ext_call.return_data[0] * stor13[stor11] / 1000 / s
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < stor15.length
            mem[0] = 15
            stor15[idx] = 0
            idx = idx + 1
            t = t + 1
            u = u - (ext_call.return_data[0] * stor13[stor8] / 1000 / s) - (ext_call.return_data[0] * stor13[stor9] / 1000 / s) - (ext_call.return_data[0] * stor13[stor11] / 1000 / s)
            continue 
        mem[100] = stor10
        mem[132] = ext_call.return_data[0] * stor13[stor10] / 1000 / s
        require ext_code.size(stor12)
        call stor12.0xa9059cbb with:
             gas gas_remaining wei
            args stor10, ext_call.return_data[0] * stor13[stor10] / 1000 / s
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] * stor13[stor11] / 1000 / s <= 0:
            require idx < stor15.length
            mem[0] = 15
            stor15[idx] = 0
            idx = idx + 1
            t = t + 1
            u = u - (ext_call.return_data[0] * stor13[stor8] / 1000 / s) - (ext_call.return_data[0] * stor13[stor9] / 1000 / s) - (ext_call.return_data[0] * stor13[stor10] / 1000 / s)
            continue 
        mem[100] = stor11
        mem[132] = ext_call.return_data[0] * stor13[stor11] / 1000 / s
        require ext_code.size(stor12)
        call stor12.0xa9059cbb with:
             gas gas_remaining wei
            args stor11, ext_call.return_data[0] * stor13[stor11] / 1000 / s
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < stor15.length
        mem[0] = 15
        stor15[idx] = 0
        idx = idx + 1
        t = t + 1
        u = u - (ext_call.return_data[0] * stor13[stor8] / 1000 / s) - (ext_call.return_data[0] * stor13[stor9] / 1000 / s) - (ext_call.return_data[0] * stor13[stor10] / 1000 / s) - (ext_call.return_data[0] * stor13[stor11] / 1000 / s)
        continue 
    if t <= 0:
        revert with 0, 'enabledCount cant be zero'
    if 1 == s:
        if u > 0:
            require ext_code.size(stor12)
            staticcall stor12.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor12)
            call stor12.0xa9059cbb with:
                 gas gas_remaining wei
                args stor14, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    emit Candy()
}



}
