contract main {




// =====================  Runtime code  =====================


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

function sub_0f7e985c(?) {
    if 0xdead1241f2ee2a7950ad967993efb72d62bf6822 != msg.sender:
        if 0xdead3b4bdb1c7160196c41fd1bab168f71486123 != msg.sender:
            require msg.sender == 0xdead27218f7243f71bd4b7bd39c314d5cc66840e
    require ext_code.size(arg2)
    if eth.balance(this.address) >= arg1:
        call arg2.ethToTokenSwapInput(uint256 arg1, uint256 arg2) with:
           value arg1 wei
             gas gas_remaining wei
            args 10^9, 10^13
    else:
        call arg2.ethToTokenSwapInput(uint256 arg1, uint256 arg2) with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
            args 10^9, 10^13
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_b83ca17c(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if 0xdead1241f2ee2a7950ad967993efb72d62bf6822 != msg.sender:
        if 0xdead3b4bdb1c7160196c41fd1bab168f71486123 != msg.sender:
            require msg.sender == 0xdead27218f7243f71bd4b7bd39c314d5cc66840e
    require ext_code.size(arg3)
    if eth.balance(this.address) >= arg2:
        call arg3.ethToTokenSwapInput(uint256 arg1, uint256 arg2) with:
           value arg2 wei
             gas gas_remaining wei
            args 10^9, 10^13
    else:
        call arg3.ethToTokenSwapInput(uint256 arg1, uint256 arg2) with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
            args 10^9, 10^13
    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0 < arg1.length
    require ext_code.size(mem[140 len 20])
    call mem[140 len 20].approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xcbc6a023eb975a1e2630223a7959988948e664f3, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg1.length) + 260 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
    call 0xcbc6a023eb975a1e2630223a7959988948e664f3.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args 96, ext_call.return_data[0], 10^9, arg1.length, call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 260 len (32 * arg1.length) - floor32(arg1.length)]
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
    require ext_code.size(arg4)
    if eth.balance(this.address) >= arg2:
        call arg4.ethToTokenSwapInput(uint256 arg1, uint256 arg2) with:
           value arg2 wei
             gas gas_remaining wei
            args 10^9, 10^13
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0 < arg1.length
        require ext_code.size(mem[140 len 20])
        call mem[140 len 20].approve(address arg1, uint256 arg2) with:
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
        call arg4.ethToTokenSwapInput(uint256 arg1, uint256 arg2) with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
            args 10^9, 10^13
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0 < arg1.length
        require ext_code.size(mem[140 len 20])
        call mem[140 len 20].approve(address arg1, uint256 arg2) with:
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



}
