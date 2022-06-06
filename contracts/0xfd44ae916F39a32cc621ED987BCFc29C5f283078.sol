contract main {




// =====================  Runtime code  =====================


#
#  - sub_1ffcfebd(?)
#  - sub_d1dfb3d1(?)
#
array of struct stor0;
mapping of struct orders;
array of struct stor2;
mapping of uint256 stor3;
array of struct stor4;
mapping of uint256 stor5;
uint256 stor6;
uint256 newId;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
address stor15;
address stor16;

function getNewId() {
    return newId
}

function owner() {
    return stor0.length.field_8
}

function getOrderData(uint256 arg1) {
    require arg1 == orders[arg1].field_0
    return orders[arg1].field_0, 
           orders[arg1].field_512,
           orders[arg1].field_768,
           orders[arg1].field_1280,
           orders[arg1].field_256,
           orders[arg1].field_1536
}

function orders(uint256 arg1) {
    return orders[arg1].field_0, 
           orders[arg1].field_256,
           orders[arg1].field_416 << 160,
           orders[arg1].field_512,
           orders[arg1].field_768,
           bool(orders[arg1].field_1024),
           orders[arg1].field_1280,
           orders[arg1].field_1536
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
    stor12 = arg1
    stor13 = arg2
    stor14 = arg3
}

function sub_a161f9d2(?) {
    idx = 0
    s = 0
    while idx < stor2.length:
        mem[0] = stor2[idx].field_0
        mem[32] = 1
        if orders[stor2[idx].field_0].field_1024:
            idx = idx + 1
            s = s
            continue 
        require idx < stor2.length
        mem[0] = stor2[idx].field_0
        mem[32] = 1
        idx = idx + 1
        s = s + orders[stor2[idx].field_0].field_512
        continue 
    return s
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
    require ext_code.size(stor16)
    call stor16.getVanityOwner(bytes12 arg1) with:
         gas gas_remaining wei
        args Mask(96, 160, arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != arg1:
        if not arg3:
            return stor13
        return stor12
    require ext_code.size(stor16)
    call stor16.0xb7fe896a with:
         gas gas_remaining wei
        args Mask(96, 160, arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not arg3:
            return stor13
        return stor12
    require ext_code.size(stor16)
    call stor16.0x16166f89 with:
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
        if not orders[stor2[idx].field_0].field_1024:
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
        if 1 == bool(orders[stor2[idx].field_0].field_1024):
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
        if not orders[stor4[msg.sender][idx].field_0].field_1024:
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
        if 1 == bool(orders[stor4[msg.sender][idx].field_0].field_1024):
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

function sub_db14c6ed(?) {
    require ext_code.size(stor15)
    call stor15.0xd64d22ae with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit 0xdaae9aa7: 5000
    require ext_code.size(stor15)
    call stor15.0x9980ec86 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor15)
    call stor15.0xe2a33732 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(stor16)
        call stor16.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
    else:
        require ext_code.size(stor15)
        call stor15.0x6352211e with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor16)
        call stor16.0x23b872dd with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor15)
    call stor15.0x6352211e with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor15)
    call stor15.0xcf948c5c with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x83991a85: arg1
    return 1
}

function startMining(uint256 arg1) {
    require ext_code.size(stor15)
    call stor15.0x6352211e with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == msg.sender
    require ext_code.size(stor15)
    call stor15.0xe2a33732 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    require ext_code.size(stor15)
    call stor15.0x9980ec86 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor15)
    call stor15.getAmountForUserMining(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor16)
    call stor16.0xdd62ed3e with:
         gas gas_remaining wei
        args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
    require ext_code.size(stor15)
    call stor15.0x18a064a5 with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor15)
    call stor15.0x9980ec86 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor16)
    call stor16.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0xdaae9aa7: arg1
    return 1
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
    if orders[arg1].field_512:
        if not orders[arg1].field_1024:
            require ext_code.size(stor16)
            call stor16.0xa9059cbb with:
                 gas gas_remaining wei
                args orders[arg1].field_256, orders[arg1].field_512
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        else:
            if not orders[arg1].field_512:
                require stor11
                call orders[arg1].field_256 with:
                   value 0 / stor11 wei
                     gas 2300 * is_zero(value) wei
            else:
                require orders[arg1].field_768 * orders[arg1].field_512 / orders[arg1].field_512 == orders[arg1].field_768
                require stor11
                call orders[arg1].field_256 with:
                   value orders[arg1].field_768 * orders[arg1].field_512 / stor11 wei
                     gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
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
    orders[arg1].field_1280 = 0
    orders[arg1].field_1536 = 0
    emit 0xf42459dd: arg1, msg.sender, orders[arg1].field_512, orders[arg1].field_768, bool(orders[arg1].field_1024), orders[arg1].field_1280, orders[arg1].field_1536
    uint8(stor0.length) = 0
    return 1
}

function sub_c686aa91(?) payable {
    stor6 = msg.value
    require not uint8(stor0.length)
    uint8(stor0.length) = 1
    if arg2 <= 0:
        if stor6 > 0:
            call msg.sender with:
               value stor6 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        uint8(stor0.length) = 0
        stor6 = 0
        return 0
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
    if not arg2:
        if 0 < stor11:
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
        require arg1 * arg2 / arg2 == arg1
        if arg1 * arg2 < stor11:
            if stor6 > 0:
                call msg.sender with:
                   value stor6 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            uint8(stor0.length) = 0
            stor6 = 0
            return 0
    if arg4 != stor8:
        if arg4 != stor9:
            if arg4 != stor10:
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
        if not arg2:
            require stor11
            if stor6 < 0 / stor11:
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
            require arg1 * arg2 / arg2 == arg1
            require stor11
            if stor6 < arg1 * arg2 / stor11:
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
        require ext_code.size(stor15)
        call stor15.getAmountForUserMining(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor16)
        call stor16.0x70a08231 with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 0 < arg2:
            if stor6 > 0:
                call msg.sender with:
                   value stor6 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            uint8(stor0.length) = 0
            stor6 = 0
            return 0
        require ext_code.size(stor15)
        call stor15.getAmountForUserMining(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor16)
        call stor16.0xdd62ed3e with:
             gas gas_remaining wei
            args msg.sender, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 0 < arg2:
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
    orders[stor7].field_416 = Mask(96, 160, arg5) >> 160
    orders[stor7].field_512 = arg2
    orders[stor7].field_768 = arg1
    orders[stor7].field_1024 = uint8(arg3)
    orders[stor7].field_1280 = arg4
    orders[stor7].field_1536 = block.timestamp
    stor2.length++
    stor2[stor2.length].field_0 = newId
    require 1 <= stor2.length
    stor3[stor7] = stor2.length - 1
    if not arg3:
        require ext_code.size(stor16)
        call stor16.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    else:
        if not arg2:
            require stor11
            require 0 / stor11 <= stor6
            stor6 -= 0 / stor11
        else:
            require arg1 * arg2 / arg2 == arg1
            require stor11
            require arg1 * arg2 / stor11 <= stor6
            stor6 -= arg1 * arg2 / stor11
    stor4[address(msg.sender)].field_0++
    stor4[address(msg.sender)][stor4[address(msg.sender)].field_0].field_0 = newId
    stor5[address(msg.sender)][stor7] = stor4[address(msg.sender)].field_0
    emit 0xeb7c639c: newId, msg.sender, arg2, arg1, arg3, arg4, block.timestamp
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



}
