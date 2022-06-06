contract main {




// =====================  Runtime code  =====================


array of struct stor0;
mapping of struct orders;
array of struct stor2;
mapping of uint256 stor3;
array of struct stor4;
mapping of uint256 stor5;
uint256 stor6;
uint256 newId;
address stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
address stor12;

function getNewId() {
    return newId
}

function owner() {
    return stor0.length.field_8
}

function getOrderData(uint256 arg1) {
    require arg1 == orders[arg1].field_0
    return orders[arg1].field_0, 
           orders[arg1].field_256,
           orders[arg1].field_512,
           Mask(96, 160, orders[arg1].field_768),
           bool(orders[arg1].field_864),
           orders[arg1].field_1024
}

function orders(uint256 arg1) {
    return orders[arg1].field_0, 
           orders[arg1].field_256,
           orders[arg1].field_416 << 160,
           orders[arg1].field_512,
           Mask(96, 160, orders[arg1].field_768),
           bool(orders[arg1].field_864),
           orders[arg1].field_1024
}

function _fallback() payable {
    revert
}

function exists(uint256 arg1) {
    return (orders[arg1].field_0 == arg1)
}

function renounceOwnership() {
    require msg.sender == stor0.length.field_8
    emit OwnershipRenounced(stor0.length.field_8);
    stor0.length.field_8 = 0
}

function transferOwnership(address arg1) {
    require msg.sender == stor0.length.field_8
    require arg1
    emit OwnershipTransferred(stor0.length.field_8, arg1);
    stor0.length.field_8 = arg1
}

function setFees(uint256 arg1, uint256 arg2, uint256 arg3) {
    require msg.sender == stor0.length.field_8
    require arg1 < arg3
    require arg2 < arg3
    stor9 = arg1
    stor10 = arg2
    stor11 = arg3
}

function sub_9ebec7ab(?) {
    if not stor2.length:
        mem[(32 * stor2.length) + 128] = 32
        mem[(32 * stor2.length) + 160] = stor2.length
        mem[(32 * stor2.length) + 192 len floor32(stor2.length)] = mem[128 len floor32(stor2.length)]
        return memory
          from (32 * stor2.length) + 128
           len (96 * stor2.length) + 64
    mem[128] = uint256(stor2.field_0)
    idx = 128
    s = 0
    while (32 * stor2.length) + 96 > idx:
        mem[idx + 32] = stor2[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor2.length) + 192 len floor32(stor2.length)] = mem[128 len floor32(stor2.length)]
    return Array(len=stor2.length, data=mem[128 len floor32(stor2.length)], mem[(32 * stor2.length) + floor32(stor2.length) + 192 len (32 * stor2.length) - floor32(stor2.length)]), 
}

function sub_bd398339(?) {
    if stor4[msg.sender].field_0:
        mem[128] = stor4[msg.sender].field_0
        if (32 * stor4[msg.sender].field_0) + 32 > 64:
            mem[160] = stor4[msg.sender].field_256
            idx = 160
            s = 1
            while (32 * stor4[msg.sender].field_0) + 96 > idx:
                mem[idx + 32] = stor4[msg.sender][s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * stor4[msg.sender].field_0) + 128] = 32
    mem[(32 * stor4[msg.sender].field_0) + 160] = stor4[msg.sender].field_0
    mem[(32 * stor4[msg.sender].field_0) + 192 len floor32(stor4[msg.sender].field_0)] = mem[128 len floor32(stor4[msg.sender].field_0)]
    return memory
      from (32 * stor4[msg.sender].field_0) + 128
       len (96 * stor4[msg.sender].field_0) + 64
}

function sub_cef88df4(?) {
    require ext_code.size(stor8)
    call stor8.getVanityOwner(bytes12 arg1) with:
         gas gas_remaining wei
        args Mask(96, 160, arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != arg1:
        if not arg3:
            return stor10
        return stor9
    require ext_code.size(stor8)
    call stor8.0xb7fe896a with:
         gas gas_remaining wei
        args Mask(96, 160, arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not arg3:
            return stor10
        return stor9
    require ext_code.size(stor8)
    call stor8.0x16166f89 with:
         gas gas_remaining wei
        args Mask(96, 160, arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_dc520e99(?) {
    idx = 0
    while idx < stor2.length:
        mem[0] = stor2[idx].field_0
        mem[32] = 1
        if not orders[stor2[idx].field_0].field_864:
            require idx < stor2.length
            stor0.length++
            mem[0] = 0
            stor0[stor0.length].field_0 = stor2[idx].field_0
        idx = idx + 1
        continue 
    if not stor0.length:
        mem[(32 * stor0.length) + 128] = 32
        mem[(32 * stor0.length) + 160] = stor0.length
        mem[(32 * stor0.length) + 192 len floor32(stor0.length)] = mem[128 len floor32(stor0.length)]
        return memory
          from (32 * stor0.length) + 128
           len (96 * stor0.length) + 64
    mem[128] = uint256(stor0.field_0)
    idx = 128
    s = 0
    while (32 * stor0.length) + 96 > idx:
        mem[idx + 32] = stor0[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor0.length) + 192 len floor32(stor0.length)] = mem[128 len floor32(stor0.length)]
    return Array(len=stor0.length, data=mem[128 len floor32(stor0.length)], mem[(32 * stor0.length) + floor32(stor0.length) + 192 len (32 * stor0.length) - floor32(stor0.length)]), 
}

function sub_a3539f52(?) {
    idx = 0
    while idx < stor2.length:
        mem[0] = stor2[idx].field_0
        mem[32] = 1
        if 1 == bool(orders[stor2[idx].field_0].field_864):
            require idx < stor2.length
            stor0.length++
            mem[0] = 0
            stor0[stor0.length].field_0 = stor2[idx].field_0
        idx = idx + 1
        continue 
    if not stor0.length:
        mem[(32 * stor0.length) + 128] = 32
        mem[(32 * stor0.length) + 160] = stor0.length
        mem[(32 * stor0.length) + 192 len floor32(stor0.length)] = mem[128 len floor32(stor0.length)]
        return memory
          from (32 * stor0.length) + 128
           len (96 * stor0.length) + 64
    mem[128] = uint256(stor0.field_0)
    idx = 128
    s = 0
    while (32 * stor0.length) + 96 > idx:
        mem[idx + 32] = stor0[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor0.length) + 192 len floor32(stor0.length)] = mem[128 len floor32(stor0.length)]
    return Array(len=stor0.length, data=mem[128 len floor32(stor0.length)], mem[(32 * stor0.length) + floor32(stor0.length) + 192 len (32 * stor0.length) - floor32(stor0.length)]), 
}

function sub_4c3722fa(?) {
    idx = 0
    while idx < stor4[msg.sender].field_0:
        mem[0] = stor4[msg.sender][idx].field_0
        mem[32] = 1
        if not orders[stor4[msg.sender][idx].field_0].field_864:
            require idx < stor4[msg.sender].field_0
            stor0.length++
            mem[0] = 0
            stor0[stor0.length].field_0 = stor4[msg.sender][idx].field_0
        idx = idx + 1
        continue 
    if not stor0.length:
        mem[(32 * stor0.length) + 128] = 32
        mem[(32 * stor0.length) + 160] = stor0.length
        mem[(32 * stor0.length) + 192 len floor32(stor0.length)] = mem[128 len floor32(stor0.length)]
        return memory
          from (32 * stor0.length) + 128
           len (96 * stor0.length) + 64
    mem[128] = uint256(stor0.field_0)
    idx = 128
    s = 0
    while (32 * stor0.length) + 96 > idx:
        mem[idx + 32] = stor0[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor0.length) + 192 len floor32(stor0.length)] = mem[128 len floor32(stor0.length)]
    return Array(len=stor0.length, data=mem[128 len floor32(stor0.length)], mem[(32 * stor0.length) + floor32(stor0.length) + 192 len (32 * stor0.length) - floor32(stor0.length)]), 
}

function sub_7c1b394d(?) {
    idx = 0
    while idx < stor4[msg.sender].field_0:
        mem[0] = stor4[msg.sender][idx].field_0
        mem[32] = 1
        if 1 == bool(orders[stor4[msg.sender][idx].field_0].field_864):
            require idx < stor4[msg.sender].field_0
            stor0.length++
            mem[0] = 0
            stor0[stor0.length].field_0 = stor4[msg.sender][idx].field_0
        idx = idx + 1
        continue 
    if not stor0.length:
        mem[(32 * stor0.length) + 128] = 32
        mem[(32 * stor0.length) + 160] = stor0.length
        mem[(32 * stor0.length) + 192 len floor32(stor0.length)] = mem[128 len floor32(stor0.length)]
        return memory
          from (32 * stor0.length) + 128
           len (96 * stor0.length) + 64
    mem[128] = uint256(stor0.field_0)
    idx = 128
    s = 0
    while (32 * stor0.length) + 96 > idx:
        mem[idx + 32] = stor0[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor0.length) + 192 len floor32(stor0.length)] = mem[128 len floor32(stor0.length)]
    return Array(len=stor0.length, data=mem[128 len floor32(stor0.length)], mem[(32 * stor0.length) + floor32(stor0.length) + 192 len (32 * stor0.length) - floor32(stor0.length)]), 
}

function cancelOrder(uint256 arg1) {
    require not uint8(stor0.length)
    uint8(stor0.length) = 1
    require arg1 > 0
    require arg1 == orders[arg1].field_0
    require msg.sender == orders[arg1].field_256
    if arg1 <= 0:
        uint8(stor0.length) = 0
        return 0
    if arg1 != orders[arg1].field_0:
        uint8(stor0.length) = 0
        return 0
    require 1 <= stor2.length
    require stor2.length - 1 < stor2.length
    require stor3[arg1] < stor2.length
    stor2[stor3[arg1]].field_0 = stor2[stor2.length].field_0
    require stor2.length - 1 < stor2.length
    stor2[stor2.length].field_0 = 0
    stor3[arg1] = 0
    stor3[stor2[stor2.length].field_0] = stor3[arg1]
    stor2.length--
    if stor2.length > stor2.length - 1:
        idx = stor2.length - 1
        while stor2.length > idx:
            stor2[idx].field_0 = 0
            idx = idx + 1
            continue 
    if orders[arg1].field_864:
        call orders[arg1].field_256 with:
           value orders[arg1].field_512 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(stor8)
        call stor8.0x8eacf713 with:
             gas gas_remaining wei
            args Mask(96, 160, orders[arg1].field_768), orders[arg1].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    require 1 <= stor4[stor1[arg1].field_256].field_0
    require stor4[stor1[arg1].field_256].field_0 - 1 < stor4[stor1[arg1].field_256].field_0
    require stor5[stor1[arg1].field_256][arg1] < stor4[stor1[arg1].field_256].field_0
    stor4[stor1[arg1].field_256][stor5[stor1[arg1].field_256][arg1]].field_0 = stor4[stor1[arg1].field_256][stor4[stor1[arg1].field_256].field_0].field_0
    require stor4[stor1[arg1].field_256].field_0 - 1 < stor4[stor1[arg1].field_256].field_0
    stor4[stor1[arg1].field_256][stor4[stor1[arg1].field_256].field_0].field_0 = 0
    stor4[stor1[arg1].field_256].field_0--
    if stor4[stor1[arg1].field_256].field_0 > stor4[stor1[arg1].field_256].field_0 - 1:
        idx = stor4[stor1[arg1].field_256].field_0 - 1
        while stor4[stor1[arg1].field_256].field_0 > idx:
            stor4[stor1[arg1].field_256][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor5[stor1[arg1].field_256][arg1] = 0
    stor5[stor1[arg1].field_256][stor4[stor1[arg1].field_256][stor4[stor1[arg1].field_256].field_0].field_0] = stor5[stor1[arg1].field_256][arg1]
    orders[arg1].field_0 = 0
    orders[arg1].field_256 = 0
    orders[arg1].field_512 = 0
    orders[arg1].field_768 = 0
    orders[arg1].field_1024 = 0
    emit 0x300b395d: arg1, msg.sender, orders[arg1].field_512, Mask(96, 160, orders[arg1].field_768), bool(orders[arg1].field_864)
    uint8(stor0.length) = 0
    return 1
}

function sub_829899cc(?) payable {
    stor6 = msg.value
    require not uint8(stor0.length)
    uint8(stor0.length) = 1
    if arg1 <= 0:
        if stor6 > 0:
            call msg.sender with:
               value stor6 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        uint8(stor0.length) = 0
        stor6 = 0
        return 0
    if arg3:
        if stor6 <= 0:
            uint8(stor0.length) = 0
            stor6 = 0
            return 0
        if stor6 < arg1:
            if stor6 > 0:
                call msg.sender with:
                   value stor6 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            uint8(stor0.length) = 0
            stor6 = 0
            return 0
    else:
        require ext_code.size(stor8)
        call stor8.0x3bd86d2d with:
             gas gas_remaining wei
            args msg.sender, Mask(96, 160, arg2), this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if stor6 > 0:
                call msg.sender with:
                   value stor6 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            uint8(stor0.length) = 0
            stor6 = 0
            return 0
    orders[stor7].field_0 = newId
    orders[stor7].field_256 = msg.sender
    orders[stor7].field_416 = Mask(96, 160, arg4) >> 160
    orders[stor7].field_512 = arg1
    orders[stor7].field_768 = Mask(96, 160, arg2) >> 160
    orders[stor7].field_864 = address(arg3)
    orders[stor7].field_1024 = block.timestamp
    stor2.length++
    stor2[stor2.length].field_0 = newId
    require 1 <= stor2.length
    stor3[stor7] = stor2.length - 1
    if arg3:
        require arg1 <= stor6
        stor6 -= arg1
    else:
        require ext_code.size(stor8)
        call stor8.0xce086ec1 with:
             gas gas_remaining wei
            args msg.sender, this.address, Mask(96, 160, arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    stor4[address(msg.sender)].field_0++
    stor4[address(msg.sender)][stor4[address(msg.sender)].field_0].field_0 = newId
    stor5[address(msg.sender)][stor7] = stor4[address(msg.sender)].field_0
    emit 0xfd0d9b63: newId, msg.sender, arg1, Mask(96, 160, arg2), arg3, block.timestamp
    newId++
    if stor6 > 0:
        call msg.sender with:
           value stor6 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    uint8(stor0.length) = 0
    stor6 = 0
    return 1
}

function sub_42912a94(?) payable {
    stor6 = msg.value
    require not uint8(stor0.length)
    uint8(stor0.length) = 1
    require orders[arg1].field_256 != msg.sender
    if arg1 <= 0:
        if stor6 > 0:
            call msg.sender with:
               value stor6 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        uint8(stor0.length) = 0
        stor6 = 0
        return 0
    if arg1 != orders[arg1].field_0:
        if stor6 > 0:
            call msg.sender with:
               value stor6 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        uint8(stor0.length) = 0
        stor6 = 0
        return 0
    if not orders[arg1].field_864:
        if stor6 <= 0:
            uint8(stor0.length) = 0
            stor6 = 0
            return 0
        if stor6 < orders[arg1].field_512:
            if stor6 > 0:
                call msg.sender with:
                   value stor6 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            uint8(stor0.length) = 0
            stor6 = 0
            return 0
        require orders[arg1].field_512 <= stor6
        stor6 -= orders[arg1].field_512
        require ext_code.size(stor8)
        call stor8.0x8eacf713 with:
             gas gas_remaining wei
            args Mask(96, 160, orders[arg1].field_768), msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor8)
        call stor8.getVanityOwner(bytes12 arg1) with:
             gas gas_remaining wei
            args (orders[arg1].field_416 << 160)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != orders[arg1].field_256:
            if not orders[arg1].field_512:
                call stor12 with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call orders[arg1].field_256 with:
                   value orders[arg1].field_512 wei
                     gas 2300 * is_zero(value) wei
            else:
                require stor9 * orders[arg1].field_512 / orders[arg1].field_512 == stor9
                call stor12 with:
                   value stor9 * orders[arg1].field_512 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call orders[arg1].field_256 with:
                   value orders[arg1].field_512 - (stor9 * orders[arg1].field_512) wei
                     gas 2300 * is_zero(value) wei
        else:
            require ext_code.size(stor8)
            call stor8.0xb7fe896a with:
                 gas gas_remaining wei
                args (orders[arg1].field_416 << 160)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not orders[arg1].field_512:
                    call stor12 with:
                         gas 2300 wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call orders[arg1].field_256 with:
                       value orders[arg1].field_512 wei
                         gas 2300 * is_zero(value) wei
                else:
                    require stor9 * orders[arg1].field_512 / orders[arg1].field_512 == stor9
                    call stor12 with:
                       value stor9 * orders[arg1].field_512 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call orders[arg1].field_256 with:
                       value orders[arg1].field_512 - (stor9 * orders[arg1].field_512) wei
                         gas 2300 * is_zero(value) wei
            else:
                require ext_code.size(stor8)
                call stor8.0x16166f89 with:
                     gas gas_remaining wei
                    args (orders[arg1].field_416 << 160)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not orders[arg1].field_512:
                    call stor12 with:
                         gas 2300 wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call orders[arg1].field_256 with:
                       value orders[arg1].field_512 wei
                         gas 2300 * is_zero(value) wei
                else:
                    require ext_call.return_data[0] * orders[arg1].field_512 / orders[arg1].field_512 == ext_call.return_data[0]
                    call stor12 with:
                       value ext_call.return_data[0] * orders[arg1].field_512 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call orders[arg1].field_256 with:
                       value orders[arg1].field_512 - (ext_call.return_data[0] * orders[arg1].field_512) wei
                         gas 2300 * is_zero(value) wei
    else:
        require ext_code.size(stor8)
        call stor8.0x3bd86d2d with:
             gas gas_remaining wei
            args msg.sender, Mask(96, 160, orders[arg1].field_768), this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if stor6 > 0:
                call msg.sender with:
                   value stor6 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            uint8(stor0.length) = 0
            stor6 = 0
            return 0
        require ext_code.size(stor8)
        call stor8.0xce086ec1 with:
             gas gas_remaining wei
            args msg.sender, orders[arg1].field_256, Mask(96, 160, orders[arg1].field_768)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor8)
        call stor8.getVanityOwner(bytes12 arg1) with:
             gas gas_remaining wei
            args Mask(96, 160, arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != msg.sender:
            if not orders[arg1].field_512:
                call stor12 with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call msg.sender with:
                   value orders[arg1].field_512 wei
                     gas 2300 * is_zero(value) wei
            else:
                require stor9 * orders[arg1].field_512 / orders[arg1].field_512 == stor9
                call stor12 with:
                   value stor9 * orders[arg1].field_512 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call msg.sender with:
                   value orders[arg1].field_512 - (stor9 * orders[arg1].field_512) wei
                     gas 2300 * is_zero(value) wei
        else:
            require ext_code.size(stor8)
            call stor8.0xb7fe896a with:
                 gas gas_remaining wei
                args Mask(96, 160, arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not orders[arg1].field_512:
                    call stor12 with:
                         gas 2300 wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value orders[arg1].field_512 wei
                         gas 2300 * is_zero(value) wei
                else:
                    require stor9 * orders[arg1].field_512 / orders[arg1].field_512 == stor9
                    call stor12 with:
                       value stor9 * orders[arg1].field_512 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value orders[arg1].field_512 - (stor9 * orders[arg1].field_512) wei
                         gas 2300 * is_zero(value) wei
            else:
                require ext_code.size(stor8)
                call stor8.0x16166f89 with:
                     gas gas_remaining wei
                    args Mask(96, 160, arg2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not orders[arg1].field_512:
                    call stor12 with:
                         gas 2300 wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value orders[arg1].field_512 wei
                         gas 2300 * is_zero(value) wei
                else:
                    require ext_call.return_data[0] * orders[arg1].field_512 / orders[arg1].field_512 == ext_call.return_data[0]
                    call stor12 with:
                       value ext_call.return_data[0] * orders[arg1].field_512 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value orders[arg1].field_512 - (ext_call.return_data[0] * orders[arg1].field_512) wei
                         gas 2300 * is_zero(value) wei
    emit 0x6a902e79: arg1, orders[arg1].field_256, msg.sender, orders[arg1].field_512, Mask(96, 160, orders[arg1].field_768), bool(orders[arg1].field_864), block.timestamp
    require 1 <= stor2.length
    require stor2.length - 1 < stor2.length
    require stor3[arg1] < stor2.length
    stor2[stor3[arg1]].field_0 = stor2[stor2.length].field_0
    require stor2.length - 1 < stor2.length
    stor2[stor2.length].field_0 = 0
    stor3[arg1] = 0
    stor3[stor2[stor2.length].field_0] = stor3[arg1]
    stor2.length--
    if stor2.length > stor2.length - 1:
        idx = stor2.length - 1
        while stor2.length > idx:
            stor2[idx].field_0 = 0
            idx = idx + 1
            continue 
    require 1 <= stor4[stor1[arg1].field_256].field_0
    require stor4[stor1[arg1].field_256].field_0 - 1 < stor4[stor1[arg1].field_256].field_0
    require stor5[stor1[arg1].field_256][arg1] < stor4[stor1[arg1].field_256].field_0
    stor4[stor1[arg1].field_256][stor5[stor1[arg1].field_256][arg1]].field_0 = stor4[stor1[arg1].field_256][stor4[stor1[arg1].field_256].field_0].field_0
    require stor4[stor1[arg1].field_256].field_0 - 1 < stor4[stor1[arg1].field_256].field_0
    stor4[stor1[arg1].field_256][stor4[stor1[arg1].field_256].field_0].field_0 = 0
    stor4[stor1[arg1].field_256].field_0--
    if stor4[stor1[arg1].field_256].field_0 > stor4[stor1[arg1].field_256].field_0 - 1:
        idx = stor4[stor1[arg1].field_256].field_0 - 1
        while stor4[stor1[arg1].field_256].field_0 > idx:
            stor4[stor1[arg1].field_256][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor5[stor1[arg1].field_256][arg1] = 0
    stor5[stor1[arg1].field_256][stor4[stor1[arg1].field_256][stor4[stor1[arg1].field_256].field_0].field_0] = stor5[stor1[arg1].field_256][arg1]
    orders[arg1].field_0 = 0
    orders[arg1].field_256 = 0
    orders[arg1].field_512 = 0
    orders[arg1].field_768 = 0
    orders[arg1].field_1024 = 0
    if stor6 > 0:
        call msg.sender with:
           value stor6 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    uint8(stor0.length) = 0
    stor6 = 0
    return 1
}



}
