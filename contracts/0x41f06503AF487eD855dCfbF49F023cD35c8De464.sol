contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
  stop
}

function sub_58a54997(?) {
    require msg.sender == 0xfd855a7bd33b1cc1e65ae09deb5a4c1fc4f6d173
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3c855ac1(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == 0xfd855a7bd33b1cc1e65ae09deb5a4c1fc4f6d173
    call arg1 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_4d6f7390(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(arg2)
    staticcall arg2.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_7f8b0716(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args 0xfd855a7bd33b1cc1e65ae09deb5a4c1fc4f6d173, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3af2c408(?) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require msg.sender == 0xfd855a7bd33b1cc1e65ae09deb5a4c1fc4f6d173
    mem[ceil32(arg4.length) + 128 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    mem[ceil32(arg4.length) + floor32(arg4.length) + -(arg4.length % 32) + 160 len arg4.length % 32] = mem[-(arg4.length % 32) + floor32(arg4.length) + 160 len arg4.length % 32]
    call arg2 with:
       funct Mask(32, -(8 * ceil32(arg4.length) + -arg4.length + 4) + 256, 0) >> -(8 * ceil32(arg4.length) + -arg4.length + 4) + 256
       value arg1 wei
         gas arg3 wei
        args mem[ceil32(arg4.length) + 132 len arg4.length - 4]
}

function sub_0357835f(?) {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        _12 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg1.length
        _14 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + (32 * arg2.length) + 164] = address(_14)
        mem[(32 * arg1.length) + (32 * arg2.length) + 196] = arg3
        require ext_code.size(address(_12))
        call address(_12).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(_14), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function sub_48a67f06(?) {
    require calldata.size - 4 >= 288
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require arg7 <= 4294967296
    require arg7 + 36 <= calldata.size
    require arg7.length <= 4294967296 and arg7 + arg7.length + 36 <= calldata.size
    mem[ceil32(arg4.length) + 128] = arg7.length
    mem[ceil32(arg4.length) + 160 len arg7.length] = arg7[all]
    mem[ceil32(arg4.length) + arg7.length + 160] = 0
    require arg9 <= 4294967296
    require arg9 + 36 <= calldata.size
    require arg9.length <= 4294967296 and arg9 + arg9.length + 36 <= calldata.size
    mem[64] = ceil32(arg4.length) + ceil32(arg7.length) + ceil32(arg9.length) + 192
    mem[ceil32(arg4.length) + ceil32(arg7.length) + 160] = arg9.length
    mem[ceil32(arg4.length) + ceil32(arg7.length) + 192 len arg9.length] = arg9[all]
    mem[ceil32(arg4.length) + ceil32(arg7.length) + arg9.length + 192] = 0
    require msg.sender == 0xfd855a7bd33b1cc1e65ae09deb5a4c1fc4f6d173
    mem[ceil32(arg4.length) + ceil32(arg7.length) + ceil32(arg9.length) + 192 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    mem[ceil32(arg4.length) + ceil32(arg7.length) + ceil32(arg9.length) + floor32(arg4.length) + -(arg4.length % 32) + 224 len arg4.length % 32] = mem[-(arg4.length % 32) + floor32(arg4.length) + 160 len arg4.length % 32]
    call arg2 with:
       funct Mask(32, -(8 * ceil32(arg9.length) + -arg9.length + 4) + 256, 0) >> -(8 * ceil32(arg9.length) + -arg9.length + 4) + 256
       value arg1 wei
         gas arg3 wei
        args mem[ceil32(arg4.length) + ceil32(arg7.length) + ceil32(arg9.length) + 196 len arg4.length - 4]
    if not return_data.size:
        if arg5 != 1:
            mem[ceil32(arg4.length) + ceil32(arg7.length) + ceil32(arg9.length) + 192 len floor32(Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[ceil32(arg4.length) + arg7.length + 192 len -arg7.length + ceil32(arg7.length)])] = mem[ceil32(arg4.length) + ceil32(arg7.length) + 192 len floor32(Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[ceil32(arg4.length) + arg7.length + 192 len -arg7.length + ceil32(arg7.length)])]
            mem[ceil32(arg4.length) + ceil32(arg7.length) + ceil32(arg9.length) + floor32(Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[ceil32(arg4.length) + arg7.length + 192 len -arg7.length + ceil32(arg7.length)]) + -(Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[ceil32(arg4.length) + arg7.length + 192 len -arg7.length + ceil32(arg7.length)] % 32) + 224 len Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[ceil32(arg4.length) + arg7.length + 192 len -arg7.length + ceil32(arg7.length)] % 32] = mem[ceil32(arg4.length) + ceil32(arg7.length) + -(Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[ceil32(arg4.length) + arg7.length + 192 len -arg7.length + ceil32(arg7.length)] % 32) + floor32(Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[ceil32(arg4.length) + arg7.length + 192 len -arg7.length + ceil32(arg7.length)]) + 224 len Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[ceil32(arg4.length) + arg7.length + 192 len -arg7.length + ceil32(arg7.length)] % 32]
            call arg8 with:
               funct Mask(32, -(8 * ceil32(arg9.length) + -arg9.length + 4) + 256, 0) >> -(8 * ceil32(arg9.length) + -arg9.length + 4) + 256
                 gas arg3 wei
                args mem[ceil32(arg4.length) + ceil32(arg7.length) + ceil32(arg9.length) + 196 len Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[ceil32(arg4.length) + arg7.length + 192 len -arg7.length + ceil32(arg7.length)] - 4]
        else:
            mem[ceil32(arg4.length) + ceil32(arg7.length) + ceil32(arg9.length) + 192 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
            mem[ceil32(arg4.length) + ceil32(arg7.length) + ceil32(arg9.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 224 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32] = mem[ceil32(arg4.length) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
            call arg6 with:
               funct Mask(32, -(8 * ceil32(arg9.length) + -arg9.length + 4) + 256, 0) >> -(8 * ceil32(arg9.length) + -arg9.length + 4) + 256
                 gas arg3 wei
                args mem[ceil32(arg4.length) + ceil32(arg7.length) + ceil32(arg9.length) + 196 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] - 4]
            if not return_data.size:
                mem[ceil32(arg4.length) + ceil32(arg7.length) + ceil32(arg9.length) + 192 len floor32(Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[ceil32(arg4.length) + arg7.length + 192 len -arg7.length + ceil32(arg7.length)])] = mem[ceil32(arg4.length) + ceil32(arg7.length) + 192 len floor32(Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[ceil32(arg4.length) + arg7.length + 192 len -arg7.length + ceil32(arg7.length)])]
                mem[ceil32(arg4.length) + ceil32(arg7.length) + ceil32(arg9.length) + floor32(Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[ceil32(arg4.length) + arg7.length + 192 len -arg7.length + ceil32(arg7.length)]) + -(Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[ceil32(arg4.length) + arg7.length + 192 len -arg7.length + ceil32(arg7.length)] % 32) + 224 len Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[ceil32(arg4.length) + arg7.length + 192 len -arg7.length + ceil32(arg7.length)] % 32] = mem[ceil32(arg4.length) + ceil32(arg7.length) + -(Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[ceil32(arg4.length) + arg7.length + 192 len -arg7.length + ceil32(arg7.length)] % 32) + floor32(Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[ceil32(arg4.length) + arg7.length + 192 len -arg7.length + ceil32(arg7.length)]) + 224 len Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[ceil32(arg4.length) + arg7.length + 192 len -arg7.length + ceil32(arg7.length)] % 32]
                call arg8 with:
                   funct Mask(32, -(8 * ceil32(arg9.length) + -arg9.length + 4) + 256, 0) >> -(8 * ceil32(arg9.length) + -arg9.length + 4) + 256
                     gas arg3 wei
                    args mem[ceil32(arg4.length) + ceil32(arg7.length) + ceil32(arg9.length) + 196 len Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[ceil32(arg4.length) + arg7.length + 192 len -arg7.length + ceil32(arg7.length)] - 4]
            else:
                mem[64] = ceil32(arg4.length) + ceil32(arg7.length) + ceil32(arg9.length) + ceil32(return_data.size) + 193
                mem[ceil32(arg4.length) + ceil32(arg7.length) + ceil32(arg9.length) + 192] = return_data.size
                mem[ceil32(arg4.length) + ceil32(arg7.length) + ceil32(arg9.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[ceil32(arg4.length) + ceil32(arg7.length) + ceil32(arg9.length) + ceil32(return_data.size) + 193 len floor32(Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[ceil32(arg4.length) + arg7.length + 192 len -arg7.length + ceil32(arg7.length)])] = mem[ceil32(arg4.length) + ceil32(arg7.length) + 192 len floor32(Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[ceil32(arg4.length) + arg7.length + 192 len -arg7.length + ceil32(arg7.length)])]
                mem[ceil32(arg4.length) + ceil32(arg7.length) + ceil32(arg9.length) + ceil32(return_data.size) + floor32(Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[ceil32(arg4.length) + arg7.length + 192 len -arg7.length + ceil32(arg7.length)]) + -(Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[ceil32(arg4.length) + arg7.length + 192 len -arg7.length + ceil32(arg7.length)] % 32) + 225 len Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[ceil32(arg4.length) + arg7.length + 192 len -arg7.length + ceil32(arg7.length)] % 32] = mem[ceil32(arg4.length) + ceil32(arg7.length) + -(Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[ceil32(arg4.length) + arg7.length + 192 len -arg7.length + ceil32(arg7.length)] % 32) + floor32(Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[ceil32(arg4.length) + arg7.length + 192 len -arg7.length + ceil32(arg7.length)]) + 224 len Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[ceil32(arg4.length) + arg7.length + 192 len -arg7.length + ceil32(arg7.length)] % 32]
                call arg8.mem[ceil32(arg4.length) + ceil32(arg7.length) + ceil32(arg9.length) + ceil32(return_data.size) + 193 len 4] with:
                     gas arg3 wei
                    args mem[ceil32(arg4.length) + ceil32(arg7.length) + ceil32(arg9.length) + ceil32(return_data.size) + 197 len Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[ceil32(arg4.length) + arg7.length + 192 len -arg7.length + ceil32(arg7.length)] - 4]
    else:
        mem[64] = ceil32(arg4.length) + ceil32(arg7.length) + ceil32(arg9.length) + ceil32(return_data.size) + 193
        mem[ceil32(arg4.length) + ceil32(arg7.length) + ceil32(arg9.length) + 192] = return_data.size
        mem[ceil32(arg4.length) + ceil32(arg7.length) + ceil32(arg9.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if arg5 != 1:
            mem[ceil32(arg4.length) + ceil32(arg7.length) + ceil32(arg9.length) + ceil32(return_data.size) + 193 len floor32(Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[ceil32(arg4.length) + arg7.length + 192 len -arg7.length + ceil32(arg7.length)])] = mem[ceil32(arg4.length) + ceil32(arg7.length) + 192 len floor32(Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[ceil32(arg4.length) + arg7.length + 192 len -arg7.length + ceil32(arg7.length)])]
            mem[ceil32(arg4.length) + ceil32(arg7.length) + ceil32(arg9.length) + ceil32(return_data.size) + floor32(Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[ceil32(arg4.length) + arg7.length + 192 len -arg7.length + ceil32(arg7.length)]) + -(Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[ceil32(arg4.length) + arg7.length + 192 len -arg7.length + ceil32(arg7.length)] % 32) + 225 len Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[ceil32(arg4.length) + arg7.length + 192 len -arg7.length + ceil32(arg7.length)] % 32] = mem[ceil32(arg4.length) + ceil32(arg7.length) + -(Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[ceil32(arg4.length) + arg7.length + 192 len -arg7.length + ceil32(arg7.length)] % 32) + floor32(Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[ceil32(arg4.length) + arg7.length + 192 len -arg7.length + ceil32(arg7.length)]) + 224 len Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[ceil32(arg4.length) + arg7.length + 192 len -arg7.length + ceil32(arg7.length)] % 32]
            call arg8.mem[ceil32(arg4.length) + ceil32(arg7.length) + ceil32(arg9.length) + ceil32(return_data.size) + 193 len 4] with:
                 gas arg3 wei
                args mem[ceil32(arg4.length) + ceil32(arg7.length) + ceil32(arg9.length) + ceil32(return_data.size) + 197 len Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[ceil32(arg4.length) + arg7.length + 192 len -arg7.length + ceil32(arg7.length)] - 4]
        else:
            mem[ceil32(arg4.length) + ceil32(arg7.length) + ceil32(arg9.length) + ceil32(return_data.size) + 193 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
            mem[ceil32(arg4.length) + ceil32(arg7.length) + ceil32(arg9.length) + ceil32(return_data.size) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 225 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32] = mem[ceil32(arg4.length) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
            call arg6.mem[ceil32(arg4.length) + ceil32(arg7.length) + ceil32(arg9.length) + ceil32(return_data.size) + 193 len 4] with:
                 gas arg3 wei
                args mem[ceil32(arg4.length) + ceil32(arg7.length) + ceil32(arg9.length) + ceil32(return_data.size) + 197 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] - 4]
            if not return_data.size:
                mem[ceil32(arg4.length) + ceil32(arg7.length) + ceil32(arg9.length) + ceil32(return_data.size) + 193 len floor32(Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[ceil32(arg4.length) + arg7.length + 192 len -arg7.length + ceil32(arg7.length)])] = mem[ceil32(arg4.length) + ceil32(arg7.length) + 192 len floor32(Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[ceil32(arg4.length) + arg7.length + 192 len -arg7.length + ceil32(arg7.length)])]
                mem[ceil32(arg4.length) + ceil32(arg7.length) + ceil32(arg9.length) + ceil32(return_data.size) + floor32(Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[ceil32(arg4.length) + arg7.length + 192 len -arg7.length + ceil32(arg7.length)]) + -(Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[ceil32(arg4.length) + arg7.length + 192 len -arg7.length + ceil32(arg7.length)] % 32) + 225 len Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[ceil32(arg4.length) + arg7.length + 192 len -arg7.length + ceil32(arg7.length)] % 32] = mem[ceil32(arg4.length) + ceil32(arg7.length) + -(Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[ceil32(arg4.length) + arg7.length + 192 len -arg7.length + ceil32(arg7.length)] % 32) + floor32(Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[ceil32(arg4.length) + arg7.length + 192 len -arg7.length + ceil32(arg7.length)]) + 224 len Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[ceil32(arg4.length) + arg7.length + 192 len -arg7.length + ceil32(arg7.length)] % 32]
                call arg8.mem[ceil32(arg4.length) + ceil32(arg7.length) + ceil32(arg9.length) + ceil32(return_data.size) + 193 len 4] with:
                     gas arg3 wei
                    args mem[ceil32(arg4.length) + ceil32(arg7.length) + ceil32(arg9.length) + ceil32(return_data.size) + 197 len Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[ceil32(arg4.length) + arg7.length + 192 len -arg7.length + ceil32(arg7.length)] - 4]
            else:
                mem[64] = ceil32(arg4.length) + ceil32(arg7.length) + ceil32(arg9.length) + (2 * ceil32(return_data.size)) + 194
                mem[ceil32(arg4.length) + ceil32(arg7.length) + ceil32(arg9.length) + ceil32(return_data.size) + 193] = return_data.size
                mem[ceil32(arg4.length) + ceil32(arg7.length) + ceil32(arg9.length) + ceil32(return_data.size) + 225 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[ceil32(arg4.length) + ceil32(arg7.length) + ceil32(arg9.length) + (2 * ceil32(return_data.size)) + 194 len floor32(Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[ceil32(arg4.length) + arg7.length + 192 len -arg7.length + ceil32(arg7.length)])] = mem[ceil32(arg4.length) + ceil32(arg7.length) + 192 len floor32(Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[ceil32(arg4.length) + arg7.length + 192 len -arg7.length + ceil32(arg7.length)])]
                mem[ceil32(arg4.length) + ceil32(arg7.length) + ceil32(arg9.length) + (2 * ceil32(return_data.size)) + floor32(Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[ceil32(arg4.length) + arg7.length + 192 len -arg7.length + ceil32(arg7.length)]) + -(Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[ceil32(arg4.length) + arg7.length + 192 len -arg7.length + ceil32(arg7.length)] % 32) + 226 len Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[ceil32(arg4.length) + arg7.length + 192 len -arg7.length + ceil32(arg7.length)] % 32] = mem[ceil32(arg4.length) + ceil32(arg7.length) + -(Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[ceil32(arg4.length) + arg7.length + 192 len -arg7.length + ceil32(arg7.length)] % 32) + floor32(Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[ceil32(arg4.length) + arg7.length + 192 len -arg7.length + ceil32(arg7.length)]) + 224 len Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[ceil32(arg4.length) + arg7.length + 192 len -arg7.length + ceil32(arg7.length)] % 32]
                call arg8.mem[ceil32(arg4.length) + ceil32(arg7.length) + ceil32(arg9.length) + (2 * ceil32(return_data.size)) + 194 len 4] with:
                     gas arg3 wei
                    args mem[ceil32(arg4.length) + ceil32(arg7.length) + ceil32(arg9.length) + (2 * ceil32(return_data.size)) + 198 len Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[ceil32(arg4.length) + arg7.length + 192 len -arg7.length + ceil32(arg7.length)] - 4]
}



}
