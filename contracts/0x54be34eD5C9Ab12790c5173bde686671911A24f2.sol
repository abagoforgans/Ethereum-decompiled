contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
array of struct sub_5e2d4631;

function sub_5e2d4631(?) {
    require msg.sender == stor0
    return sub_5e2d4631[arg1].field_256
}

function _fallback() payable {
  stop
}

function sub_97a93504(?) {
    require msg.sender == stor0
    stor1 = arg1
}

function sub_8a8a7645(?) {
    require msg.sender == stor0
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_d56d73e4(?) {
    require msg.sender == stor0
    require arg1 != msg.sender
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_8a331789(?) payable {
    require arg1 != msg.sender
    require msg.value > 0
    call arg1 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_eec16875(?) {
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_07f4c663(?) {
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_0adcbe58(?) {
    require msg.sender == stor0
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_7b57c442(?) {
    require msg.sender == stor0
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_de45ffd7(?) {
    require msg.sender == stor0
    sub_5e2d4631[arg1].field_0 = 0
    sub_5e2d4631[arg1].field_256 = 0
    sub_5e2d4631[arg1].field_512 = 0
    idx = 0
    while sub_5e2d4631[arg1].field_512 > idx:
        sub_5e2d4631[arg1][idx + 2].field_0 = 0
        idx = idx + 1
        continue 
    sub_5e2d4631[arg1].field_768 = 0
    idx = 0
    while sub_5e2d4631[arg1].field_768 > idx:
        sub_5e2d4631[arg1][idx + 3].field_0 = 0
        idx = idx + 1
        continue 
}

function sub_a5b66445(?) payable {
    require msg.sender == stor0
    require arg2 <= eth.balance(this.address)
    if not sub_5e2d4631[arg1].field_512:
        require ext_code.size(stor1)
        call stor1.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
           value arg2 wei
             gas gas_remaining wei
            args 0, 96, arg2, arg3, sub_5e2d4631[arg1].field_512
    else:
        mem[228] = sub_5e2d4631[arg1][2].field_0
        idx = 228
        s = 0
        while (32 * sub_5e2d4631[arg1].field_512) + 228 > idx + 32:
            mem[idx + 32] = sub_5e2d4631[arg1][s + 2].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(stor1)
        call stor1.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
           value arg2 wei
             gas gas_remaining wei
            args 0, 96, arg2, arg3, sub_5e2d4631[arg1].field_512, mem[228 len 32 * sub_5e2d4631[arg1].field_512]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg4:
        if ext_call.return_data[0] > 0:
            require ext_code.size(sub_5e2d4631[arg1].field_0)
            call sub_5e2d4631[arg1].field_0.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_01d861e6(?) {
    mem[128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + 128] = arg5.length
    mem[(32 * arg4.length) + 160 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    require msg.sender == stor0
    mem[(32 * arg5.length) + (32 * arg4.length) + 160] = arg2
    sub_5e2d4631[arg1].field_0 = arg2
    sub_5e2d4631[arg1].field_256 = arg3
    sub_5e2d4631[arg1].field_512 = arg4.length
    if not arg4.length:
        idx = 0
        while sub_5e2d4631[arg1].field_512 > idx:
            sub_5e2d4631[arg1][idx + 2].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg4.length) + 128 > idx:
            sub_5e2d4631[arg1][s + 2].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg4.length) + 31) >> 5
        while sub_5e2d4631[arg1].field_512 > idx:
            sub_5e2d4631[arg1][idx + 2].field_0 = 0
            idx = idx + 1
            continue 
    sub_5e2d4631[arg1].field_768 = arg5.length
    if not arg5.length:
        idx = 0
        while sub_5e2d4631[arg1].field_768 > idx:
            sub_5e2d4631[arg1][idx + 3].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (32 * arg4.length) + 160
        while (32 * arg4.length) + (32 * arg5.length) + 160 > idx:
            sub_5e2d4631[arg1][s + 3].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg5.length) + 31) >> 5
        while sub_5e2d4631[arg1].field_768 > idx:
            sub_5e2d4631[arg1][idx + 3].field_0 = 0
            idx = idx + 1
            continue 
}

function sub_e15fe7dc(?) payable {
    require msg.sender == stor0
    require 0 < sub_5e2d4631[arg1].field_768
    require ext_code.size(sub_5e2d4631[arg1][3].field_0)
    call sub_5e2d4631[arg1][3].field_0.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        require 0 < sub_5e2d4631[arg1].field_768
        require ext_code.size(sub_5e2d4631[arg1][3].field_0)
        call sub_5e2d4631[arg1][3].field_0.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    if not sub_5e2d4631[arg1].field_768:
        require ext_code.size(sub_5e2d4631[arg1].field_256)
        call sub_5e2d4631[arg1].field_256.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args 0, 96, arg2, arg3, sub_5e2d4631[arg1].field_768
    else:
        mem[228] = sub_5e2d4631[arg1][3].field_0
        idx = 228
        s = 0
        while (32 * sub_5e2d4631[arg1].field_768) + 228 > idx + 32:
            mem[idx + 32] = sub_5e2d4631[arg1][s + 3].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(sub_5e2d4631[arg1].field_256)
        call sub_5e2d4631[arg1].field_256.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args 0, 96, arg2, arg3, sub_5e2d4631[arg1].field_768, mem[228 len 32 * sub_5e2d4631[arg1].field_768]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg4:
        if ext_call.return_data[0] > 0:
            call msg.sender with:
               value ext_call.return_data[0] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0]
}

function sub_fbd44612(?) payable {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == stor0
    require 0 < arg2.length
    if 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315 == mem[140 len 20]:
        require arg3 <= eth.balance(this.address)
        mem[(32 * arg2.length) + 164] = arg3
        mem[(32 * arg2.length) + 196] = arg4
        mem[(32 * arg2.length) + 228] = arg5
        mem[(32 * arg2.length) + 260] = arg6
        mem[(32 * arg2.length) + 292] = arg7
        mem[(32 * arg2.length) + 324] = arg8
        mem[(32 * arg2.length) + 132] = 224
        mem[(32 * arg2.length) + 356] = arg2.length
        mem[(32 * arg2.length) + 388 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        require ext_code.size(arg1)
        call arg1.quickConvertPrioritized(address[] arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) with:
           value arg3 wei
             gas gas_remaining wei
            args Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg2.length) + floor32(arg2.length) + 388 len (32 * arg2.length) - floor32(arg2.length)]), arg3, arg4, arg5, arg6 << 248, arg7, arg8
        mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg9:
            if ext_call.return_data[0] > 0:
                require arg2.length - 1 < arg2.length
                require ext_code.size(mem[(32 * arg2.length - 1) + 140 len 20])
                call mem[(32 * arg2.length - 1) + 140 len 20].0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
    else:
        require 0 < arg2.length
        if mem[140 len 20] != 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c:
            require 0 < arg2.length
            require ext_code.size(mem[140 len 20])
            call mem[140 len 20].0xdd62ed3e with:
                 gas gas_remaining wei
                args address(this.address), arg1
            mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < arg3:
                require 0 < arg2.length
                require ext_code.size(mem[140 len 20])
                call mem[140 len 20].approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if bool(ext_call.return_data[0]) != 1:
                    return 0
        mem[(32 * arg2.length) + 388 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        require ext_code.size(arg1)
        call arg1.quickConvertPrioritized(address[] arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) with:
             gas gas_remaining wei
            args Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg2.length) + floor32(arg2.length) + 388 len (32 * arg2.length) - floor32(arg2.length)]), arg3, arg4, arg5, arg6 << 248, arg7, arg8
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg9:
            if ext_call.return_data[0] > 0:
                call msg.sender with:
                   value ext_call.return_data[0] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0]
}

function sub_53a5e7fb(?) payable {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == stor0
    require 0 < arg2.length
    if 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315 == mem[140 len 20]:
        require arg3 <= eth.balance(this.address)
        mem[(32 * arg2.length) + 164] = arg3
        mem[(32 * arg2.length) + 196] = arg4
        mem[(32 * arg2.length) + 132] = 96
        mem[(32 * arg2.length) + 228] = arg2.length
        mem[(32 * arg2.length) + 260 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        require ext_code.size(arg1)
        call arg1.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
           value arg3 wei
             gas gas_remaining wei
            args Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg2.length) + floor32(arg2.length) + 260 len (32 * arg2.length) - floor32(arg2.length)]), arg3, arg4
        mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg5:
            if ext_call.return_data[0] > 0:
                require arg2.length - 1 < arg2.length
                require ext_code.size(mem[(32 * arg2.length - 1) + 140 len 20])
                call mem[(32 * arg2.length - 1) + 140 len 20].0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
    else:
        require 0 < arg2.length
        if mem[140 len 20] != 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c:
            require 0 < arg2.length
            require ext_code.size(mem[140 len 20])
            call mem[140 len 20].0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 0 < arg2.length
            require ext_code.size(mem[140 len 20])
            if ext_call.return_data[0] < arg3:
                call mem[140 len 20].0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, arg3
                mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
            call mem[140 len 20].0xdd62ed3e with:
                 gas gas_remaining wei
                args this.address, arg1
            mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < arg3:
                require 0 < arg2.length
                require ext_code.size(mem[140 len 20])
                call mem[140 len 20].approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if bool(ext_call.return_data[0]) != 1:
                    return 0
        mem[(32 * arg2.length) + 260 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        require ext_code.size(arg1)
        call arg1.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg2.length) + floor32(arg2.length) + 260 len (32 * arg2.length) - floor32(arg2.length)]), arg3, arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg5:
            if ext_call.return_data[0] > 0:
                call msg.sender with:
                   value ext_call.return_data[0] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0]
}



}
