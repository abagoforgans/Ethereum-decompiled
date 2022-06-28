contract main {




// =====================  Runtime code  =====================


address stor2;

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

function sub_b83ca17c(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if 0xdead1241f2ee2a7950ad967993efb72d62bf6822 != msg.sender:
        if 0xdead3b4bdb1c7160196c41fd1bab168f71486123 != msg.sender:
            require msg.sender == 0xdead27218f7243f71bd4b7bd39c314d5cc66840e
    mem[(32 * arg1.length) + 132] = 1
    mem[(32 * arg1.length) + 164] = block.number + 10
    require ext_code.size(arg3)
    if eth.balance(this.address) >= arg2:
        call arg3.ethToTokenSwapInput(uint256 arg1, uint256 arg2) with:
           value arg2 wei
             gas gas_remaining wei
            args 1, block.number + 10
    else:
        call arg3.ethToTokenSwapInput(uint256 arg1, uint256 arg2) with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
            args 1, block.number + 10
    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 4 < arg1.length
    require ext_code.size(mem[268 len 20])
    call mem[268 len 20].approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xcbc6a023eb975a1e2630223a7959988948e664f3, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg1.length) + 260 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
    call 0xcbc6a023eb975a1e2630223a7959988948e664f3.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 260 len (32 * arg1.length) - floor32(arg1.length)]), ext_call.return_data[0], 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_0f7e985c(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if 0xdead1241f2ee2a7950ad967993efb72d62bf6822 != msg.sender:
        if 0xdead3b4bdb1c7160196c41fd1bab168f71486123 != msg.sender:
            require msg.sender == 0xdead27218f7243f71bd4b7bd39c314d5cc66840e
    mem[(32 * arg1.length) + 132] = 1
    mem[(32 * arg1.length) + 164] = block.number + 10
    require ext_code.size(arg3)
    if eth.balance(this.address) >= arg2:
        call arg3.ethToTokenSwapOutput(uint256 arg1, uint256 arg2) with:
           value arg2 wei
             gas gas_remaining wei
            args 1, block.number + 10
    else:
        call arg3.ethToTokenSwapOutput(uint256 arg1, uint256 arg2) with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
            args 1, block.number + 10
    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 4 < arg1.length
    require ext_code.size(mem[268 len 20])
    call mem[268 len 20].approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xcbc6a023eb975a1e2630223a7959988948e664f3, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg1.length) + 260 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
    call 0xcbc6a023eb975a1e2630223a7959988948e664f3.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 260 len (32 * arg1.length) - floor32(arg1.length)]), ext_call.return_data[0], 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_6aac3979(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if 0xdead1241f2ee2a7950ad967993efb72d62bf6822 != msg.sender:
        if 0xdead3b4bdb1c7160196c41fd1bab168f71486123 != msg.sender:
            require msg.sender == 0xdead27218f7243f71bd4b7bd39c314d5cc66840e
    if eth.balance(this.address) >= arg2:
        mem[(32 * arg1.length) + 164] = arg2
        mem[(32 * arg1.length) + 196] = 1
        mem[(32 * arg1.length) + 132] = 96
        mem[(32 * arg1.length) + 228] = arg1.length
        mem[(32 * arg1.length) + 260 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
        call 0xcbc6a023eb975a1e2630223a7959988948e664f3.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
           value arg2 wei
             gas gas_remaining wei
            args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 260 len (32 * arg1.length) - floor32(arg1.length)]), arg2, 1
    else:
        mem[(32 * arg1.length) + 164] = eth.balance(this.address)
        mem[(32 * arg1.length) + 196] = 1
        mem[(32 * arg1.length) + 132] = 96
        mem[(32 * arg1.length) + 228] = arg1.length
        mem[(32 * arg1.length) + 260 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
        call 0xcbc6a023eb975a1e2630223a7959988948e664f3.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
            args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 260 len (32 * arg1.length) - floor32(arg1.length)]), eth.balance(this.address), 1
    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 4 < arg1.length
    require ext_code.size(mem[268 len 20])
    call mem[268 len 20].approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg3), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg3)
    call arg3.tokenToEthSwapInput(uint256 arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 1, block.number + 10
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_5dada527(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if msg.sender == 0xdead1241f2ee2a7950ad967993efb72d62bf6822:
        require 4 < arg1.length
        _3 = mem[256]
        mem[(32 * arg1.length) + 132] = arg3
        require ext_code.size(address(_3))
        call address(_3).0x70a08231 with:
             gas gas_remaining wei
            args arg3
    else:
        if msg.sender == 0xdead3b4bdb1c7160196c41fd1bab168f71486123:
            require 4 < arg1.length
            _8 = mem[256]
            mem[(32 * arg1.length) + 132] = arg3
            require ext_code.size(address(_8))
            call address(_8).0x70a08231 with:
                 gas gas_remaining wei
                args arg3
        else:
            require msg.sender == 0xdead27218f7243f71bd4b7bd39c314d5cc66840e
            require 4 < arg1.length
            _12 = mem[256]
            mem[(32 * arg1.length) + 132] = arg3
            require ext_code.size(address(_12))
            call address(_12).0x70a08231 with:
                 gas gas_remaining wei
                args arg3
    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 4 < arg1.length
    require ext_code.size(mem[268 len 20])
    call mem[268 len 20].0x70a08231 with:
         gas gas_remaining wei
        args arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= arg5
    require ext_call.return_data[0] >= arg6
    mem[(32 * arg1.length) + 132] = 1
    mem[(32 * arg1.length) + 164] = block.number + 10
    require ext_code.size(arg4)
    if eth.balance(this.address) >= arg2:
        call arg4.ethToTokenSwapOutput(uint256 arg1, uint256 arg2) with:
           value arg2 wei
             gas gas_remaining wei
            args 1, block.number + 10
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 4 < arg1.length
        require ext_code.size(mem[268 len 20])
        call mem[268 len 20].approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0xcbc6a023eb975a1e2630223a7959988948e664f3, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * arg1.length) + 260 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
        call 0xcbc6a023eb975a1e2630223a7959988948e664f3.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 260 len (32 * arg1.length) - floor32(arg1.length)]), ext_call.return_data[0], 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require arg2 <= ext_call.return_data[0]
    else:
        call arg4.ethToTokenSwapOutput(uint256 arg1, uint256 arg2) with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
            args 1, block.number + 10
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 4 < arg1.length
        require ext_code.size(mem[268 len 20])
        call mem[268 len 20].approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0xcbc6a023eb975a1e2630223a7959988948e664f3, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * arg1.length) + 260 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
        call 0xcbc6a023eb975a1e2630223a7959988948e664f3.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 260 len (32 * arg1.length) - floor32(arg1.length)]), ext_call.return_data[0], 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require eth.balance(this.address) <= ext_call.return_data[0]
}

function sub_7a0fda36(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if msg.sender == 0xdead1241f2ee2a7950ad967993efb72d62bf6822:
        require 4 < arg1.length
        _3 = mem[256]
        mem[(32 * arg1.length) + 132] = arg3
        require ext_code.size(address(_3))
        call address(_3).0x70a08231 with:
             gas gas_remaining wei
            args arg3
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 4 < arg1.length
        _18 = mem[256]
        mem[(32 * arg1.length) + 132] = arg4
        require ext_code.size(address(_18))
        call address(_18).0x70a08231 with:
             gas gas_remaining wei
            args arg4
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= arg5
        require ext_call.return_data[0] <= arg6
        if ext_call.return_data[0] > arg5:
            require 0 < arg1.length
            require 1 < arg1.length
            _43 = mem[160]
            mem[(32 * arg1.length) + 164] = mem[172 len 20]
            mem[(32 * arg1.length) + 196] = arg2
            require ext_code.size(stor2)
            call stor2.getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(mem[128]), address(_43), arg2
            mem[(32 * arg1.length) + 128 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require 2 < arg1.length
            _104 = mem[192]
            require 4 < arg1.length
            _119 = mem[256]
            mem[(32 * arg1.length) + 132] = mem[204 len 20]
            mem[(32 * arg1.length) + 164] = address(_119)
            mem[(32 * arg1.length) + 196] = ext_call.return_data[0]
            require ext_code.size(arg3)
            call arg3.getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(_104), address(_119), ext_call.return_data[0]
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 4 < arg1.length
            require ext_code.size(mem[268 len 20])
            call mem[268 len 20].0x70a08231 with:
                 gas gas_remaining wei
                args arg4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 1997 * ext_call.return_data[0]
            require 997 * ext_call.return_data[0] * eth.balance(arg4) / 1997 * ext_call.return_data[0] >= arg2
        else:
            if ext_call.return_data[0] < arg6:
                require 0 < arg1.length
                require 1 < arg1.length
                _58 = mem[160]
                mem[(32 * arg1.length) + 164] = mem[172 len 20]
                mem[(32 * arg1.length) + 196] = arg2
                require ext_code.size(stor2)
                call stor2.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(mem[128]), address(_58), arg2
                mem[(32 * arg1.length) + 128 len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require 2 < arg1.length
                _125 = mem[192]
                require 4 < arg1.length
                _144 = mem[256]
                mem[(32 * arg1.length) + 132] = mem[204 len 20]
                mem[(32 * arg1.length) + 164] = address(_144)
                mem[(32 * arg1.length) + 196] = ext_call.return_data[0]
                require ext_code.size(arg3)
                call arg3.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(_125), address(_144), ext_call.return_data[0]
                mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 4 < arg1.length
                require ext_code.size(mem[268 len 20])
                call mem[268 len 20].0x70a08231 with:
                     gas gas_remaining wei
                    args arg4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1997 * ext_call.return_data[0]
                require 997 * ext_call.return_data[0] * eth.balance(arg4) / 1997 * ext_call.return_data[0] >= arg2
    else:
        if msg.sender == 0xdead3b4bdb1c7160196c41fd1bab168f71486123:
            require 4 < arg1.length
            _8 = mem[256]
            mem[(32 * arg1.length) + 132] = arg3
            require ext_code.size(address(_8))
            call address(_8).0x70a08231 with:
                 gas gas_remaining wei
                args arg3
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 4 < arg1.length
            _26 = mem[256]
            mem[(32 * arg1.length) + 132] = arg4
            require ext_code.size(address(_26))
            call address(_26).0x70a08231 with:
                 gas gas_remaining wei
                args arg4
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] >= arg5
            require ext_call.return_data[0] <= arg6
            if ext_call.return_data[0] > arg5:
                require 0 < arg1.length
                require 1 < arg1.length
                _64 = mem[160]
                mem[(32 * arg1.length) + 164] = mem[172 len 20]
                mem[(32 * arg1.length) + 196] = arg2
                require ext_code.size(stor2)
                call stor2.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(mem[128]), address(_64), arg2
                mem[(32 * arg1.length) + 128 len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require 2 < arg1.length
                _133 = mem[192]
                require 4 < arg1.length
                _153 = mem[256]
                mem[(32 * arg1.length) + 132] = mem[204 len 20]
                mem[(32 * arg1.length) + 164] = address(_153)
                mem[(32 * arg1.length) + 196] = ext_call.return_data[0]
                require ext_code.size(arg3)
                call arg3.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(_133), address(_153), ext_call.return_data[0]
                mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 4 < arg1.length
                require ext_code.size(mem[268 len 20])
                call mem[268 len 20].0x70a08231 with:
                     gas gas_remaining wei
                    args arg4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1997 * ext_call.return_data[0]
                require 997 * ext_call.return_data[0] * eth.balance(arg4) / 1997 * ext_call.return_data[0] >= arg2
            else:
                if ext_call.return_data[0] < arg6:
                    require 0 < arg1.length
                    require 1 < arg1.length
                    _86 = mem[160]
                    mem[(32 * arg1.length) + 164] = mem[172 len 20]
                    mem[(32 * arg1.length) + 196] = arg2
                    require ext_code.size(stor2)
                    call stor2.getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(mem[128]), address(_86), arg2
                    mem[(32 * arg1.length) + 128 len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require 2 < arg1.length
                    _159 = mem[192]
                    require 4 < arg1.length
                    _178 = mem[256]
                    mem[(32 * arg1.length) + 132] = mem[204 len 20]
                    mem[(32 * arg1.length) + 164] = address(_178)
                    mem[(32 * arg1.length) + 196] = ext_call.return_data[0]
                    require ext_code.size(arg3)
                    call arg3.getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(_159), address(_178), ext_call.return_data[0]
                    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 4 < arg1.length
                    require ext_code.size(mem[268 len 20])
                    call mem[268 len 20].0x70a08231 with:
                         gas gas_remaining wei
                        args arg4
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 1997 * ext_call.return_data[0]
                    require 997 * ext_call.return_data[0] * eth.balance(arg4) / 1997 * ext_call.return_data[0] >= arg2
        else:
            require msg.sender == 0xdead27218f7243f71bd4b7bd39c314d5cc66840e
            require 4 < arg1.length
            _12 = mem[256]
            mem[(32 * arg1.length) + 132] = arg3
            require ext_code.size(address(_12))
            call address(_12).0x70a08231 with:
                 gas gas_remaining wei
                args arg3
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 4 < arg1.length
            _30 = mem[256]
            mem[(32 * arg1.length) + 132] = arg4
            require ext_code.size(address(_30))
            call address(_30).0x70a08231 with:
                 gas gas_remaining wei
                args arg4
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] >= arg5
            require ext_call.return_data[0] <= arg6
            if ext_call.return_data[0] > arg5:
                require 0 < arg1.length
                require 1 < arg1.length
                _75 = mem[160]
                mem[(32 * arg1.length) + 164] = mem[172 len 20]
                mem[(32 * arg1.length) + 196] = arg2
                require ext_code.size(stor2)
                call stor2.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(mem[128]), address(_75), arg2
                mem[(32 * arg1.length) + 128 len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require 2 < arg1.length
                _147 = mem[192]
                require 4 < arg1.length
                _165 = mem[256]
                mem[(32 * arg1.length) + 132] = mem[204 len 20]
                mem[(32 * arg1.length) + 164] = address(_165)
                mem[(32 * arg1.length) + 196] = ext_call.return_data[0]
                require ext_code.size(arg3)
                call arg3.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(_147), address(_165), ext_call.return_data[0]
                mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 4 < arg1.length
                require ext_code.size(mem[268 len 20])
                call mem[268 len 20].0x70a08231 with:
                     gas gas_remaining wei
                    args arg4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1997 * ext_call.return_data[0]
                require 997 * ext_call.return_data[0] * eth.balance(arg4) / 1997 * ext_call.return_data[0] >= arg2
            else:
                if ext_call.return_data[0] < arg6:
                    require 0 < arg1.length
                    require 1 < arg1.length
                    _98 = mem[160]
                    mem[(32 * arg1.length) + 164] = mem[172 len 20]
                    mem[(32 * arg1.length) + 196] = arg2
                    require ext_code.size(stor2)
                    call stor2.getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(mem[128]), address(_98), arg2
                    mem[(32 * arg1.length) + 128 len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require 2 < arg1.length
                    _171 = mem[192]
                    require 4 < arg1.length
                    _190 = mem[256]
                    mem[(32 * arg1.length) + 132] = mem[204 len 20]
                    mem[(32 * arg1.length) + 164] = address(_190)
                    mem[(32 * arg1.length) + 196] = ext_call.return_data[0]
                    require ext_code.size(arg3)
                    call arg3.getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(_171), address(_190), ext_call.return_data[0]
                    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 4 < arg1.length
                    require ext_code.size(mem[268 len 20])
                    call mem[268 len 20].0x70a08231 with:
                         gas gas_remaining wei
                        args arg4
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 1997 * ext_call.return_data[0]
                    require 997 * ext_call.return_data[0] * eth.balance(arg4) / 1997 * ext_call.return_data[0] >= arg2
    if eth.balance(this.address) >= arg2:
        mem[(32 * arg1.length) + 164] = arg2
        mem[(32 * arg1.length) + 196] = 1
        mem[(32 * arg1.length) + 132] = 96
        mem[(32 * arg1.length) + 228] = arg1.length
        mem[(32 * arg1.length) + 260 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
        call 0xcbc6a023eb975a1e2630223a7959988948e664f3.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
           value arg2 wei
             gas gas_remaining wei
            args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 260 len (32 * arg1.length) - floor32(arg1.length)]), arg2, 1
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 4 < arg1.length
        require ext_code.size(mem[268 len 20])
        call mem[268 len 20].approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg4), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg4)
        call arg4.tokenToEthSwapInput(uint256 arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 1, block.number + 10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require arg2 <= ext_call.return_data[0]
    else:
        mem[(32 * arg1.length) + 164] = eth.balance(this.address)
        mem[(32 * arg1.length) + 196] = 1
        mem[(32 * arg1.length) + 132] = 96
        mem[(32 * arg1.length) + 228] = arg1.length
        mem[(32 * arg1.length) + 260 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
        call 0xcbc6a023eb975a1e2630223a7959988948e664f3.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
            args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 260 len (32 * arg1.length) - floor32(arg1.length)]), eth.balance(this.address), 1
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 4 < arg1.length
        require ext_code.size(mem[268 len 20])
        call mem[268 len 20].approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg4), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg4)
        call arg4.tokenToEthSwapInput(uint256 arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 1, block.number + 10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require eth.balance(this.address) <= ext_call.return_data[0]
}



}
