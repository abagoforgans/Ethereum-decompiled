contract main {




// =====================  Runtime code  =====================


#
#  - sub_23210ea4(?)
#  - sub_41ee0fc7(?)
#  - sub_71a91f69(?)
#  - sub_977136b0(?)
#  - sub_af8d8e11(?)
#  - sub_e92c5b98(?)
#  - sub_f82a728a(?)
#
address owner;
address stor1;
uint8 sub_2b742f50; offset 160
address sub_d943c6fdAddress;

function sub_2b742f50(?) {
    require sub_2b742f50 <= 4
    return sub_2b742f50
}

function sub_5c2758d3(?) {
    return sub_d943c6fdAddress
}

function getOwner() {
    return owner
}

function sub_d943c6fd(?) {
    return sub_d943c6fdAddress
}

function _fallback() payable {
    revert
}

function sub_d7facd9b(?) {
    return (arg1 + arg3 - arg2 - arg4)
}

function setOwner(address arg1) {
    if owner != msg.sender:
        revert with 0, '1'
    owner = arg1
}

function sub_06024aa4(?) {
    if owner != msg.sender:
        revert with 0, '1'
    sub_d943c6fdAddress = arg1
}

function setExchangeAddress(address arg1) {
    if owner != msg.sender:
        revert with 0, '1'
    stor1 = arg1
}

function sub_5962b4a0(?) {
    if eth.balance(arg1):
        return ((100 * eth.balance(arg1)) + (100 * arg2) / eth.balance(arg1))
    else:
        return 0
}

function sub_57e1000a(?) {
    require arg1 <= 4
    if not arg1:
        revert with 0, '3'
    require arg1 <= 4
    if arg1 == 1:
        return 1
    require arg1 <= 4
    if arg1 == 2:
        return 2
    require arg1 <= 4
    if arg1 == 3:
        return 3
    require arg1 <= 4
    if arg1 != 4:
        revert with 0, '4'
    return 4
}

function sub_60bb4cbf(?) {
    require ext_code.size(sub_d943c6fdAddress)
    call sub_d943c6fdAddress.0x60bb4cbf with:
         gas gas_remaining wei
        args 0, 64, arg1.length + 96, arg1.length, arg1[all], arg2.length, arg2[all]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[28 len 4]
}

function sub_1dbe9759(?) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        if mem[(32 * idx) + 156 len 4] != arg1:
            idx = idx + 1
            continue 
        require idx < arg3.length
        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg2.length) + 160]
        return memory
          from (32 * arg3.length) + (32 * arg2.length) + 160
           len 32
    require ext_code.size(stor1)
    call stor1.0xd266770c with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_7feb6e85(?) {
    require ext_code.size(sub_d943c6fdAddress)
    call sub_d943c6fdAddress.0x12081ef5 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    require ext_code.size(sub_d943c6fdAddress)
    call sub_d943c6fdAddress.0x40490a90 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x4454205ecd208cc580643bcd6bf710c9009b5a34)
    delegate 0x4454205ecd208cc580643bcd6bf710c9009b5a34.abs(int256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    return (ext_call.return_data[64] * delegate.return_data[0] / ext_call.return_data[0])
}

function sub_ae375d05(?) {
    require sub_2b742f50 <= 4
    if not sub_2b742f50:
        revert with 0, '3'
    require sub_2b742f50 <= 4
    if sub_2b742f50 == 1:
        require ext_code.size(arg1)
        call arg1.0x5ee74564 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[31 len 1] != 1:
            revert with 0, '2'
    else:
        require sub_2b742f50 <= 4
        if sub_2b742f50 == 2:
            require ext_code.size(arg1)
            call arg1.0x5ee74564 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[31 len 1] != 2:
                revert with 0, '2'
        else:
            require sub_2b742f50 <= 4
            if sub_2b742f50 == 3:
                require ext_code.size(arg1)
                call arg1.0x5ee74564 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[31 len 1] != 3:
                    revert with 0, '2'
            else:
                require sub_2b742f50 <= 4
                if sub_2b742f50 != 4:
                    revert with 0, '4'
                require ext_code.size(arg1)
                call arg1.0x5ee74564 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[31 len 1] != 4:
                    revert with 0, '2'
    require ext_code.size(arg1)
    call arg1.0x80d23170 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return not bool(ext_call.return_data[0])
}

function sub_c2637c7e(?) {
    require sub_2b742f50 <= 4
    if not sub_2b742f50:
        revert with 0, '3'
    require sub_2b742f50 <= 4
    if sub_2b742f50 == 1:
        require ext_code.size(arg1)
        call arg1.0x5ee74564 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[31 len 1] != 1:
            revert with 0, '2'
    else:
        require sub_2b742f50 <= 4
        if sub_2b742f50 == 2:
            require ext_code.size(arg1)
            call arg1.0x5ee74564 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[31 len 1] != 2:
                revert with 0, '2'
        else:
            require sub_2b742f50 <= 4
            if sub_2b742f50 == 3:
                require ext_code.size(arg1)
                call arg1.0x5ee74564 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[31 len 1] != 3:
                    revert with 0, '2'
            else:
                require sub_2b742f50 <= 4
                if sub_2b742f50 != 4:
                    revert with 0, '4'
                require ext_code.size(arg1)
                call arg1.0x5ee74564 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[31 len 1] != 4:
                    revert with 0, '2'
    require ext_code.size(sub_d943c6fdAddress)
    call sub_d943c6fdAddress.0x5678fa73 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if eth.balance(arg1):
        return (ext_call.return_data[31 len 1] > (100 * eth.balance(arg1)) + (100 * arg2) / eth.balance(arg1))
    return (ext_call.return_data[31 len 1] > 0)
}

function sub_8ba002fc(?) {
    require sub_2b742f50 <= 4
    if not sub_2b742f50:
        revert with 0, '3'
    require sub_2b742f50 <= 4
    if sub_2b742f50 == 1:
        require ext_code.size(arg1)
        call arg1.0x5ee74564 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[31 len 1] != 1:
            revert with 0, '2'
    else:
        require sub_2b742f50 <= 4
        if sub_2b742f50 == 2:
            require ext_code.size(arg1)
            call arg1.0x5ee74564 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[31 len 1] != 2:
                revert with 0, '2'
        else:
            require sub_2b742f50 <= 4
            if sub_2b742f50 == 3:
                require ext_code.size(arg1)
                call arg1.0x5ee74564 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[31 len 1] != 3:
                    revert with 0, '2'
            else:
                require sub_2b742f50 <= 4
                if sub_2b742f50 != 4:
                    revert with 0, '4'
                require ext_code.size(arg1)
                call arg1.0x5ee74564 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[31 len 1] != 4:
                    revert with 0, '2'
    require ext_code.size(0x4454205ecd208cc580643bcd6bf710c9009b5a34)
    delegate 0x4454205ecd208cc580643bcd6bf710c9009b5a34.abs(int256 arg1) with:
         gas gas_remaining wei
        args arg3
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xb8310f49 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_d943c6fdAddress)
    call sub_d943c6fdAddress.0xe2491a34 with:
         gas gas_remaining wei
        args arg2 << 224, delegate.return_data[0] + ext_call.return_data[0], arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return bool(ext_call.return_data[0]), ext_call.return_data[32]
}



}
