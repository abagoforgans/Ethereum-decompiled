contract main {




// =====================  Runtime code  =====================


const sub_52651c3a(?) = 0

const sub_674c7167(?) = 32, 32, mem[160 len 1024]

const sub_a34de41d(?) = 32, 32, mem[160 len 1024]

const sub_d42adb91(?) = 0


address sub_53b8cb76Address;
address stor1;
address stor2;
mapping of uint8 stor3;
address stor4;
address stor5;

function sub_53b8cb76(?) {
    return sub_53b8cb76Address
}

function _fallback() payable {
  stop
}

function sub_28474cdc(?) {
    require msg.sender == stor1
    stor4 = arg1
}

function sub_97a93504(?) {
    require msg.sender == stor1
    stor5 = arg1
}

function sub_ed15553b(?) {
    require msg.sender == stor1
    stor2 = arg1
}

function sub_747756ca(?) {
    require msg.sender == stor1
    stor3[address(arg1)] = 0
}

function sub_df1d5c8e(?) {
    require msg.sender == stor1
    stor3[address(arg1)] = 1
}

function sub_e26058df(?) {
    require msg.sender == stor1
    call stor1 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3cf6697d(?) {
    require msg.sender == stor1
    require arg1 != msg.sender
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_cdd18a15(?) payable {
    require arg1 != msg.sender
    require msg.value > 0
    call arg1 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_67b7ffd2(?) {
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_24f331af(?) {
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_b65fa393(?) {
    require msg.sender == stor1
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_a2e9f1d8(?) {
    require msg.sender == stor1
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_8c0a28cd(?) payable {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if not stor3[msg.sender]:
        require msg.sender == stor1
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
                    args stor1, ext_call.return_data[0]
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
                call stor1 with:
                   value ext_call.return_data[0] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0]
}

function sub_8a86f264(?) payable {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if not stor3[msg.sender]:
        require msg.sender == stor1
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
                    args stor1, ext_call.return_data[0]
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
            if ext_call.return_data[0] < arg3:
                require arg3 >= ext_call.return_data[0]
                require ext_code.size(mem[140 len 20])
                call mem[140 len 20].0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), arg3 - ext_call.return_data[0]
                mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
            require ext_code.size(mem[140 len 20])
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
                call stor1 with:
                   value ext_call.return_data[0] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0]
}

function sub_2aee65a5(?) payable {
    if stor3[msg.sender]:
        require ext_code.size(stor2)
        call stor2.0x52651c3a with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor2)
        call stor2.0xd42adb91 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        if ext_call.return_data[0] >= arg2:
            call address(ext_call.return_data[0]).0xdd62ed3e with:
                 gas gas_remaining wei
                args this.address, address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= arg2:
                mem[96] = 0xa34de41d00000000000000000000000000000000000000000000000000000000
                mem[100] = arg1
                mem[132] = arg5
                require ext_code.size(stor2)
                call stor2.0xa34de41d with:
                     gas gas_remaining wei
                    args arg1, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 32
                _60 = mem[96 len 4], Mask(224, 32, arg1) >> 32
                require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                require mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 96] = 0xf0843ba900000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 132] = arg2
                mem[ceil32(return_data.size) + 164] = arg3
                mem[ceil32(return_data.size) + 100] = 96
                mem[ceil32(return_data.size) + 196] = mem[_60 + 96]
                _81 = mem[_60 + 96]
                mem[ceil32(return_data.size) + 228 len floor32(mem[_60 + 96])] = mem[_60 + 128 len floor32(mem[_60 + 96])]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args 96, arg2, arg3, mem[ceil32(return_data.size) + 196 len (32 * _81) + 32]
            else:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if bool(ext_call.return_data[0]) != 1:
                    return 0
                mem[96] = 0xa34de41d00000000000000000000000000000000000000000000000000000000
                mem[100] = arg1
                mem[132] = arg5
                require ext_code.size(stor2)
                call stor2.0xa34de41d with:
                     gas gas_remaining wei
                    args arg1, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 32
                _88 = mem[96 len 4], Mask(224, 32, arg1) >> 32
                require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                require mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 96] = 0xf0843ba900000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 132] = arg2
                mem[ceil32(return_data.size) + 164] = arg3
                mem[ceil32(return_data.size) + 100] = 96
                mem[ceil32(return_data.size) + 196] = mem[_88 + 96]
                _113 = mem[_88 + 96]
                mem[ceil32(return_data.size) + 228 len floor32(mem[_88 + 96])] = mem[_88 + 128 len floor32(mem[_88 + 96])]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args 96, arg2, arg3, mem[ceil32(return_data.size) + 196 len (32 * _113) + 32]
        else:
            call address(ext_call.return_data[0]).0xdd62ed3e with:
                 gas gas_remaining wei
                args msg.sender, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < arg2:
                return 0
            require arg2 >= ext_call.return_data[0]
            mem[164] = arg2 - ext_call.return_data[0]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg2 - ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xdd62ed3e with:
                 gas gas_remaining wei
                args this.address, address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= arg2:
                mem[96] = 0xa34de41d00000000000000000000000000000000000000000000000000000000
                mem[100] = arg1
                mem[132] = arg5
                require ext_code.size(stor2)
                call stor2.0xa34de41d with:
                     gas gas_remaining wei
                    args arg1, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 32
                _141 = mem[96 len 4], Mask(224, 32, arg1) >> 32
                require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                require mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 96] = 0xf0843ba900000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 132] = arg2
                mem[ceil32(return_data.size) + 164] = arg3
                mem[ceil32(return_data.size) + 100] = 96
                mem[ceil32(return_data.size) + 196] = mem[_141 + 96]
                _167 = mem[_141 + 96]
                mem[ceil32(return_data.size) + 228 len floor32(mem[_141 + 96])] = mem[_141 + 128 len floor32(mem[_141 + 96])]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args 96, arg2, arg3, mem[ceil32(return_data.size) + 196 len (32 * _167) + 32]
            else:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if bool(ext_call.return_data[0]) != 1:
                    return 0
                mem[96] = 0xa34de41d00000000000000000000000000000000000000000000000000000000
                mem[100] = arg1
                mem[132] = arg5
                require ext_code.size(stor2)
                call stor2.0xa34de41d with:
                     gas gas_remaining wei
                    args arg1, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 32
                _174 = mem[96 len 4], Mask(224, 32, arg1) >> 32
                require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                require mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 96] = 0xf0843ba900000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 132] = arg2
                mem[ceil32(return_data.size) + 164] = arg3
                mem[ceil32(return_data.size) + 100] = 96
                mem[ceil32(return_data.size) + 196] = mem[_174 + 96]
                _206 = mem[_174 + 96]
                mem[ceil32(return_data.size) + 228 len floor32(mem[_174 + 96])] = mem[_174 + 128 len floor32(mem[_174 + 96])]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args 96, arg2, arg3, mem[ceil32(return_data.size) + 196 len (32 * _206) + 32]
    else:
        require msg.sender == stor1
        require ext_code.size(stor2)
        call stor2.0x52651c3a with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor2)
        call stor2.0xd42adb91 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        if ext_call.return_data[0] >= arg2:
            call address(ext_call.return_data[0]).0xdd62ed3e with:
                 gas gas_remaining wei
                args this.address, address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= arg2:
                mem[96] = 0xa34de41d00000000000000000000000000000000000000000000000000000000
                mem[100] = arg1
                mem[132] = arg5
                require ext_code.size(stor2)
                call stor2.0xa34de41d with:
                     gas gas_remaining wei
                    args arg1, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 32
                _70 = mem[96 len 4], Mask(224, 32, arg1) >> 32
                require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                require mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 96] = 0xf0843ba900000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 132] = arg2
                mem[ceil32(return_data.size) + 164] = arg3
                mem[ceil32(return_data.size) + 100] = 96
                mem[ceil32(return_data.size) + 196] = mem[_70 + 96]
                _91 = mem[_70 + 96]
                mem[ceil32(return_data.size) + 228 len floor32(mem[_70 + 96])] = mem[_70 + 128 len floor32(mem[_70 + 96])]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args 96, arg2, arg3, mem[ceil32(return_data.size) + 196 len (32 * _91) + 32]
            else:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if bool(ext_call.return_data[0]) != 1:
                    return 0
                mem[96] = 0xa34de41d00000000000000000000000000000000000000000000000000000000
                mem[100] = arg1
                mem[132] = arg5
                require ext_code.size(stor2)
                call stor2.0xa34de41d with:
                     gas gas_remaining wei
                    args arg1, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 32
                _100 = mem[96 len 4], Mask(224, 32, arg1) >> 32
                require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                require mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 96] = 0xf0843ba900000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 132] = arg2
                mem[ceil32(return_data.size) + 164] = arg3
                mem[ceil32(return_data.size) + 100] = 96
                mem[ceil32(return_data.size) + 196] = mem[_100 + 96]
                _126 = mem[_100 + 96]
                mem[ceil32(return_data.size) + 228 len floor32(mem[_100 + 96])] = mem[_100 + 128 len floor32(mem[_100 + 96])]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args 96, arg2, arg3, mem[ceil32(return_data.size) + 196 len (32 * _126) + 32]
        else:
            call address(ext_call.return_data[0]).0xdd62ed3e with:
                 gas gas_remaining wei
                args msg.sender, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < arg2:
                return 0
            require arg2 >= ext_call.return_data[0]
            mem[164] = arg2 - ext_call.return_data[0]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg2 - ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xdd62ed3e with:
                 gas gas_remaining wei
                args this.address, address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= arg2:
                mem[96] = 0xa34de41d00000000000000000000000000000000000000000000000000000000
                mem[100] = arg1
                mem[132] = arg5
                require ext_code.size(stor2)
                call stor2.0xa34de41d with:
                     gas gas_remaining wei
                    args arg1, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 32
                _151 = mem[96 len 4], Mask(224, 32, arg1) >> 32
                require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                require mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 96] = 0xf0843ba900000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 132] = arg2
                mem[ceil32(return_data.size) + 164] = arg3
                mem[ceil32(return_data.size) + 100] = 96
                mem[ceil32(return_data.size) + 196] = mem[_151 + 96]
                _179 = mem[_151 + 96]
                mem[ceil32(return_data.size) + 228 len floor32(mem[_151 + 96])] = mem[_151 + 128 len floor32(mem[_151 + 96])]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args 96, arg2, arg3, mem[ceil32(return_data.size) + 196 len (32 * _179) + 32]
            else:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if bool(ext_call.return_data[0]) != 1:
                    return 0
                mem[96] = 0xa34de41d00000000000000000000000000000000000000000000000000000000
                mem[100] = arg1
                mem[132] = arg5
                require ext_code.size(stor2)
                call stor2.0xa34de41d with:
                     gas gas_remaining wei
                    args arg1, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 32
                _188 = mem[96 len 4], Mask(224, 32, arg1) >> 32
                require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                require mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 96] = 0xf0843ba900000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 132] = arg2
                mem[ceil32(return_data.size) + 164] = arg3
                mem[ceil32(return_data.size) + 100] = 96
                mem[ceil32(return_data.size) + 196] = mem[_188 + 96]
                _218 = mem[_188 + 96]
                mem[ceil32(return_data.size) + 228 len floor32(mem[_188 + 96])] = mem[_188 + 128 len floor32(mem[_188 + 96])]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args 96, arg2, arg3, mem[ceil32(return_data.size) + 196 len (32 * _218) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg4:
        if ext_call.return_data[0] > 0:
            call stor1 with:
               value ext_call.return_data[0] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0]
}

function sub_933df8f9(?) payable {
    if stor3[msg.sender]:
        require ext_code.size(stor2)
        call stor2.0xd42adb91 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor2)
        call stor2.0x52651c3a with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require arg2 <= eth.balance(this.address)
        if not arg7:
            if not arg6:
                mem[96] = 'gLqg'
                mem[100] = arg1
                mem[132] = arg5
                require ext_code.size(stor2)
                call stor2.'gLqg' with:
                     gas gas_remaining wei
                    args arg1, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 32
                _38 = mem[96 len 4], Mask(224, 32, arg1) >> 32
                require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                require mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 96] = 0xf0843ba900000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 132] = arg2
                mem[ceil32(return_data.size) + 164] = arg3
                mem[ceil32(return_data.size) + 100] = 96
                mem[ceil32(return_data.size) + 196] = mem[_38 + 96]
                _63 = mem[_38 + 96]
                mem[ceil32(return_data.size) + 228 len floor32(mem[_38 + 96])] = mem[_38 + 128 len floor32(mem[_38 + 96])]
                require ext_code.size(stor5)
                call stor5.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                   value arg2 wei
                     gas gas_remaining wei
                    args 96, arg2, arg3, mem[ceil32(return_data.size) + 196 len (32 * _63) + 32]
            else:
                if 1 == arg6:
                    mem[96] = 'gLqg'
                    mem[100] = arg1
                    mem[132] = arg5
                    require ext_code.size(stor2)
                    call stor2.'gLqg' with:
                         gas gas_remaining wei
                        args arg1, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _43 = mem[96 len 4], Mask(224, 32, arg1) >> 32
                    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                    require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                    require mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 96] = 0xf3898a9700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 132] = arg2
                    mem[ceil32(return_data.size) + 164] = arg3
                    mem[ceil32(return_data.size) + 100] = 96
                    mem[ceil32(return_data.size) + 196] = mem[_43 + 96]
                    _78 = mem[_43 + 96]
                    mem[ceil32(return_data.size) + 228 len floor32(mem[_43 + 96])] = mem[_43 + 128 len floor32(mem[_43 + 96])]
                    require ext_code.size(stor4)
                    call stor4.convert(address[] arg1, uint256 arg2, uint256 arg3) with:
                       value arg2 wei
                         gas gas_remaining wei
                        args 96, arg2, arg3, mem[ceil32(return_data.size) + 196 len (32 * _78) + 32]
                else:
                    if arg6 != 2:
                        return 0
                    mem[96] = 'gLqg'
                    mem[100] = arg1
                    mem[132] = arg5
                    require ext_code.size(stor2)
                    call stor2.'gLqg' with:
                         gas gas_remaining wei
                        args arg1, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _48 = mem[96 len 4], Mask(224, 32, arg1) >> 32
                    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                    require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                    require mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 96] = 0xf0843ba900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 132] = arg2
                    mem[ceil32(return_data.size) + 164] = arg3
                    mem[ceil32(return_data.size) + 100] = 96
                    mem[ceil32(return_data.size) + 196] = mem[_48 + 96]
                    _92 = mem[_48 + 96]
                    mem[ceil32(return_data.size) + 228 len floor32(mem[_48 + 96])] = mem[_48 + 128 len floor32(mem[_48 + 96])]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                       value arg2 wei
                         gas gas_remaining wei
                        args 96, arg2, arg3, mem[ceil32(return_data.size) + 196 len (32 * _92) + 32]
        else:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x70a08231 with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < arg7:
                return 0
            if not arg6:
                mem[96] = 'gLqg'
                mem[100] = arg1
                mem[132] = arg5
                require ext_code.size(stor2)
                call stor2.'gLqg' with:
                     gas gas_remaining wei
                    args arg1, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 32
                _80 = mem[96 len 4], Mask(224, 32, arg1) >> 32
                require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                require mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 96] = 0xf0843ba900000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 132] = arg2
                mem[ceil32(return_data.size) + 164] = arg3
                mem[ceil32(return_data.size) + 100] = 96
                mem[ceil32(return_data.size) + 196] = mem[_80 + 96]
                _124 = mem[_80 + 96]
                mem[ceil32(return_data.size) + 228 len floor32(mem[_80 + 96])] = mem[_80 + 128 len floor32(mem[_80 + 96])]
                require ext_code.size(stor5)
                call stor5.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                   value arg2 wei
                     gas gas_remaining wei
                    args 96, arg2, arg3, mem[ceil32(return_data.size) + 196 len (32 * _124) + 32]
            else:
                if 1 == arg6:
                    mem[96] = 'gLqg'
                    mem[100] = arg1
                    mem[132] = arg5
                    require ext_code.size(stor2)
                    call stor2.'gLqg' with:
                         gas gas_remaining wei
                        args arg1, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _96 = mem[96 len 4], Mask(224, 32, arg1) >> 32
                    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                    require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                    require mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 96] = 0xf3898a9700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 132] = arg2
                    mem[ceil32(return_data.size) + 164] = arg3
                    mem[ceil32(return_data.size) + 100] = 96
                    mem[ceil32(return_data.size) + 196] = mem[_96 + 96]
                    _136 = mem[_96 + 96]
                    mem[ceil32(return_data.size) + 228 len floor32(mem[_96 + 96])] = mem[_96 + 128 len floor32(mem[_96 + 96])]
                    require ext_code.size(stor4)
                    call stor4.convert(address[] arg1, uint256 arg2, uint256 arg3) with:
                       value arg2 wei
                         gas gas_remaining wei
                        args 96, arg2, arg3, mem[ceil32(return_data.size) + 196 len (32 * _136) + 32]
                else:
                    if arg6 != 2:
                        return 0
                    mem[96] = 'gLqg'
                    mem[100] = arg1
                    mem[132] = arg5
                    require ext_code.size(stor2)
                    call stor2.'gLqg' with:
                         gas gas_remaining wei
                        args arg1, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _107 = mem[96 len 4], Mask(224, 32, arg1) >> 32
                    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                    require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                    require mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 96] = 0xf0843ba900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 132] = arg2
                    mem[ceil32(return_data.size) + 164] = arg3
                    mem[ceil32(return_data.size) + 100] = 96
                    mem[ceil32(return_data.size) + 196] = mem[_107 + 96]
                    _150 = mem[_107 + 96]
                    mem[ceil32(return_data.size) + 228 len floor32(mem[_107 + 96])] = mem[_107 + 128 len floor32(mem[_107 + 96])]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                       value arg2 wei
                         gas gas_remaining wei
                        args 96, arg2, arg3, mem[ceil32(return_data.size) + 196 len (32 * _150) + 32]
    else:
        require msg.sender == stor1
        require ext_code.size(stor2)
        call stor2.0xd42adb91 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor2)
        call stor2.0x52651c3a with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require arg2 <= eth.balance(this.address)
        if not arg7:
            if not arg6:
                mem[96] = 'gLqg'
                mem[100] = arg1
                mem[132] = arg5
                require ext_code.size(stor2)
                call stor2.'gLqg' with:
                     gas gas_remaining wei
                    args arg1, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 32
                _47 = mem[96 len 4], Mask(224, 32, arg1) >> 32
                require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                require mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 96] = 0xf0843ba900000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 132] = arg2
                mem[ceil32(return_data.size) + 164] = arg3
                mem[ceil32(return_data.size) + 100] = 96
                mem[ceil32(return_data.size) + 196] = mem[_47 + 96]
                _86 = mem[_47 + 96]
                mem[ceil32(return_data.size) + 228 len floor32(mem[_47 + 96])] = mem[_47 + 128 len floor32(mem[_47 + 96])]
                require ext_code.size(stor5)
                call stor5.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                   value arg2 wei
                     gas gas_remaining wei
                    args 96, arg2, arg3, mem[ceil32(return_data.size) + 196 len (32 * _86) + 32]
            else:
                if 1 == arg6:
                    mem[96] = 'gLqg'
                    mem[100] = arg1
                    mem[132] = arg5
                    require ext_code.size(stor2)
                    call stor2.'gLqg' with:
                         gas gas_remaining wei
                        args arg1, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _55 = mem[96 len 4], Mask(224, 32, arg1) >> 32
                    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                    require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                    require mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 96] = 0xf3898a9700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 132] = arg2
                    mem[ceil32(return_data.size) + 164] = arg3
                    mem[ceil32(return_data.size) + 100] = 96
                    mem[ceil32(return_data.size) + 196] = mem[_55 + 96]
                    _102 = mem[_55 + 96]
                    mem[ceil32(return_data.size) + 228 len floor32(mem[_55 + 96])] = mem[_55 + 128 len floor32(mem[_55 + 96])]
                    require ext_code.size(stor4)
                    call stor4.convert(address[] arg1, uint256 arg2, uint256 arg3) with:
                       value arg2 wei
                         gas gas_remaining wei
                        args 96, arg2, arg3, mem[ceil32(return_data.size) + 196 len (32 * _102) + 32]
                else:
                    if arg6 != 2:
                        return 0
                    mem[96] = 'gLqg'
                    mem[100] = arg1
                    mem[132] = arg5
                    require ext_code.size(stor2)
                    call stor2.'gLqg' with:
                         gas gas_remaining wei
                        args arg1, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _67 = mem[96 len 4], Mask(224, 32, arg1) >> 32
                    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                    require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                    require mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 96] = 0xf0843ba900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 132] = arg2
                    mem[ceil32(return_data.size) + 164] = arg3
                    mem[ceil32(return_data.size) + 100] = 96
                    mem[ceil32(return_data.size) + 196] = mem[_67 + 96]
                    _111 = mem[_67 + 96]
                    mem[ceil32(return_data.size) + 228 len floor32(mem[_67 + 96])] = mem[_67 + 128 len floor32(mem[_67 + 96])]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                       value arg2 wei
                         gas gas_remaining wei
                        args 96, arg2, arg3, mem[ceil32(return_data.size) + 196 len (32 * _111) + 32]
        else:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x70a08231 with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < arg7:
                return 0
            if not arg6:
                mem[96] = 'gLqg'
                mem[100] = arg1
                mem[132] = arg5
                require ext_code.size(stor2)
                call stor2.'gLqg' with:
                     gas gas_remaining wei
                    args arg1, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 32
                _104 = mem[96 len 4], Mask(224, 32, arg1) >> 32
                require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                require mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 96] = 0xf0843ba900000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 132] = arg2
                mem[ceil32(return_data.size) + 164] = arg3
                mem[ceil32(return_data.size) + 100] = 96
                mem[ceil32(return_data.size) + 196] = mem[_104 + 96]
                _145 = mem[_104 + 96]
                mem[ceil32(return_data.size) + 228 len floor32(mem[_104 + 96])] = mem[_104 + 128 len floor32(mem[_104 + 96])]
                require ext_code.size(stor5)
                call stor5.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                   value arg2 wei
                     gas gas_remaining wei
                    args 96, arg2, arg3, mem[ceil32(return_data.size) + 196 len (32 * _145) + 32]
            else:
                if 1 == arg6:
                    mem[96] = 'gLqg'
                    mem[100] = arg1
                    mem[132] = arg5
                    require ext_code.size(stor2)
                    call stor2.'gLqg' with:
                         gas gas_remaining wei
                        args arg1, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _115 = mem[96 len 4], Mask(224, 32, arg1) >> 32
                    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                    require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                    require mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 96] = 0xf3898a9700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 132] = arg2
                    mem[ceil32(return_data.size) + 164] = arg3
                    mem[ceil32(return_data.size) + 100] = 96
                    mem[ceil32(return_data.size) + 196] = mem[_115 + 96]
                    _160 = mem[_115 + 96]
                    mem[ceil32(return_data.size) + 228 len floor32(mem[_115 + 96])] = mem[_115 + 128 len floor32(mem[_115 + 96])]
                    require ext_code.size(stor4)
                    call stor4.convert(address[] arg1, uint256 arg2, uint256 arg3) with:
                       value arg2 wei
                         gas gas_remaining wei
                        args 96, arg2, arg3, mem[ceil32(return_data.size) + 196 len (32 * _160) + 32]
                else:
                    if arg6 != 2:
                        return 0
                    mem[96] = 'gLqg'
                    mem[100] = arg1
                    mem[132] = arg5
                    require ext_code.size(stor2)
                    call stor2.'gLqg' with:
                         gas gas_remaining wei
                        args arg1, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _127 = mem[96 len 4], Mask(224, 32, arg1) >> 32
                    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                    require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                    require mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 96] = 0xf0843ba900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 132] = arg2
                    mem[ceil32(return_data.size) + 164] = arg3
                    mem[ceil32(return_data.size) + 100] = 96
                    mem[ceil32(return_data.size) + 196] = mem[_127 + 96]
                    _168 = mem[_127 + 96]
                    mem[ceil32(return_data.size) + 228 len floor32(mem[_127 + 96])] = mem[_127 + 128 len floor32(mem[_127 + 96])]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                       value arg2 wei
                         gas gas_remaining wei
                        args 96, arg2, arg3, mem[ceil32(return_data.size) + 196 len (32 * _168) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg4:
        if ext_call.return_data[0] > 0:
            require ext_code.size(stor2)
            call stor2.0x52651c3a with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args stor1, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    return ext_call.return_data[0]
}



}
