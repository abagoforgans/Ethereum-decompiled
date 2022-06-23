contract main {




// =====================  Runtime code  =====================


address stor1;
address stor3;

function destroy(address arg1) {
    if 0xdead1241f2ee2a7950ad967993efb72d62bf6822 != msg.sender:
        if 0xdead3b4bdb1c7160196c41fd1bab168f71486123 != msg.sender:
            require msg.sender == 0xdead27218f7243f71bd4b7bd39c314d5cc66840e
    selfdestruct(arg1)
}

function _fallback() payable {
    if 0xdead1241f2ee2a7950ad967993efb72d62bf6822 != tx.origin:
        if 0xdead3b4bdb1c7160196c41fd1bab168f71486123 != tx.origin:
            require tx.origin == 0xdead27218f7243f71bd4b7bd39c314d5cc66840e
}

function withdraw(uint256 arg1) {
    if 0xdead1241f2ee2a7950ad967993efb72d62bf6822 != msg.sender:
        if 0xdead3b4bdb1c7160196c41fd1bab168f71486123 != msg.sender:
            require msg.sender == 0xdead27218f7243f71bd4b7bd39c314d5cc66840e
    call 0xdead1241f2ee2a7950ad967993efb72d62bf6822 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_c42cdd48(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if 0xdead1241f2ee2a7950ad967993efb72d62bf6822 != msg.sender:
        if 0xdead3b4bdb1c7160196c41fd1bab168f71486123 != msg.sender:
            require msg.sender == 0xdead27218f7243f71bd4b7bd39c314d5cc66840e
    require 0 < arg1.length
    require ext_code.size(stor1)
    if eth.balance(this.address) >= arg2:
        call stor1.swapEtherToToken(address arg1, uint256 arg2) with:
           value arg2 wei
             gas gas_remaining wei
            args address(mem[128]), 1
    else:
        call stor1.swapEtherToToken(address arg1, uint256 arg2) with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
            args address(mem[128]), 1
    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0 < arg1.length
    require ext_code.size(mem[140 len 20])
    call mem[140 len 20].approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor3, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg1.length) + 388 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
    call 0xcbc6a023eb975a1e2630223a7959988948e664f3.quickConvertPrioritized(address[] arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 388 len (32 * arg1.length) - floor32(arg1.length)]), ext_call.return_data[0], 1, arg6, arg3 << 248, arg4, arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_cfaee809(?) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if msg.sender == 0xdead1241f2ee2a7950ad967993efb72d62bf6822:
        if eth.balance(this.address) >= arg2:
            mem[(32 * arg1.length) + 164] = arg2
            mem[(32 * arg1.length) + 196] = 1
            mem[(32 * arg1.length) + 228] = arg6
            mem[(32 * arg1.length) + 260] = arg3
            mem[(32 * arg1.length) + 132] = 224
            mem[(32 * arg1.length) + 388 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
            call 0xcbc6a023eb975a1e2630223a7959988948e664f3.quickConvertPrioritized(address[] arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) with:
               value arg2 wei
                 gas gas_remaining wei
                args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 388 len (32 * arg1.length) - floor32(arg1.length)]), arg2, 1, arg6, arg3 << 248, arg4, arg5
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 4 < arg1.length
            _170 = mem[256]
            mem[(32 * arg1.length) + 132] = stor1
            mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
            require ext_code.size(address(_170))
            call address(_170).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor1, ext_call.return_data[0]
        else:
            mem[(32 * arg1.length) + 164] = eth.balance(this.address)
            mem[(32 * arg1.length) + 196] = 1
            mem[(32 * arg1.length) + 228] = arg6
            mem[(32 * arg1.length) + 260] = arg3
            mem[(32 * arg1.length) + 132] = 224
            mem[(32 * arg1.length) + 388 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
            call 0xcbc6a023eb975a1e2630223a7959988948e664f3.quickConvertPrioritized(address[] arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
                args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 388 len (32 * arg1.length) - floor32(arg1.length)]), eth.balance(this.address), 1, arg6, arg3 << 248, arg4, arg5
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 4 < arg1.length
            _173 = mem[256]
            mem[(32 * arg1.length) + 132] = stor1
            mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
            require ext_code.size(address(_173))
            call address(_173).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor1, ext_call.return_data[0]
    else:
        if msg.sender == 0xdead3b4bdb1c7160196c41fd1bab168f71486123:
            if eth.balance(this.address) >= arg2:
                mem[(32 * arg1.length) + 164] = arg2
                mem[(32 * arg1.length) + 196] = 1
                mem[(32 * arg1.length) + 228] = arg6
                mem[(32 * arg1.length) + 260] = arg3
                mem[(32 * arg1.length) + 132] = 224
                mem[(32 * arg1.length) + 388 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                call 0xcbc6a023eb975a1e2630223a7959988948e664f3.quickConvertPrioritized(address[] arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) with:
                   value arg2 wei
                     gas gas_remaining wei
                    args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 388 len (32 * arg1.length) - floor32(arg1.length)]), arg2, 1, arg6, arg3 << 248, arg4, arg5
                mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 4 < arg1.length
                _164 = mem[256]
                mem[(32 * arg1.length) + 132] = stor1
                mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
                require ext_code.size(address(_164))
                call address(_164).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor1, ext_call.return_data[0]
            else:
                mem[(32 * arg1.length) + 164] = eth.balance(this.address)
                mem[(32 * arg1.length) + 196] = 1
                mem[(32 * arg1.length) + 228] = arg6
                mem[(32 * arg1.length) + 260] = arg3
                mem[(32 * arg1.length) + 132] = 224
                mem[(32 * arg1.length) + 388 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                call 0xcbc6a023eb975a1e2630223a7959988948e664f3.quickConvertPrioritized(address[] arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 388 len (32 * arg1.length) - floor32(arg1.length)]), eth.balance(this.address), 1, arg6, arg3 << 248, arg4, arg5
                mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 4 < arg1.length
                _167 = mem[256]
                mem[(32 * arg1.length) + 132] = stor1
                mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
                require ext_code.size(address(_167))
                call address(_167).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor1, ext_call.return_data[0]
        else:
            require msg.sender == 0xdead27218f7243f71bd4b7bd39c314d5cc66840e
            if eth.balance(this.address) >= arg2:
                mem[(32 * arg1.length) + 164] = arg2
                mem[(32 * arg1.length) + 196] = 1
                mem[(32 * arg1.length) + 228] = arg6
                mem[(32 * arg1.length) + 260] = arg3
                mem[(32 * arg1.length) + 132] = 224
                mem[(32 * arg1.length) + 388 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                call 0xcbc6a023eb975a1e2630223a7959988948e664f3.quickConvertPrioritized(address[] arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) with:
                   value arg2 wei
                     gas gas_remaining wei
                    args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 388 len (32 * arg1.length) - floor32(arg1.length)]), arg2, 1, arg6, arg3 << 248, arg4, arg5
                mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 4 < arg1.length
                _158 = mem[256]
                mem[(32 * arg1.length) + 132] = stor1
                mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
                require ext_code.size(address(_158))
                call address(_158).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor1, ext_call.return_data[0]
            else:
                mem[(32 * arg1.length) + 164] = eth.balance(this.address)
                mem[(32 * arg1.length) + 196] = 1
                mem[(32 * arg1.length) + 228] = arg6
                mem[(32 * arg1.length) + 260] = arg3
                mem[(32 * arg1.length) + 132] = 224
                mem[(32 * arg1.length) + 388 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                call 0xcbc6a023eb975a1e2630223a7959988948e664f3.quickConvertPrioritized(address[] arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 388 len (32 * arg1.length) - floor32(arg1.length)]), eth.balance(this.address), 1, arg6, arg3 << 248, arg4, arg5
                mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 4 < arg1.length
                _161 = mem[256]
                mem[(32 * arg1.length) + 132] = stor1
                mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
                require ext_code.size(address(_161))
                call address(_161).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor1, ext_call.return_data[0]
    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 4 < arg1.length
    require ext_code.size(stor1)
    call stor1.swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(mem[256]), ext_call.return_data[0], 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}



}
