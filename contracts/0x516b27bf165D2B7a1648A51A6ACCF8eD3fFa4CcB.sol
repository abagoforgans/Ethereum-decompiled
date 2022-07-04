contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
address stor3;
address stor4;
address stor5;
uint256 stor6;

function destroy(address arg1) {
    if stor3 != msg.sender:
        if stor4 != msg.sender:
            require msg.sender == stor5
    selfdestruct(arg1)
}

function _fallback() payable {
    if stor3 != tx.origin:
        if stor4 != tx.origin:
            require tx.origin == stor5
}

function withdraw(uint256 arg1) {
    if stor3 != msg.sender:
        if stor4 != msg.sender:
            require msg.sender == stor5
    call 0xdead1241f2ee2a7950ad967993efb72d62bf6822 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function withdrawDelta(uint256 arg1) {
    if stor3 != msg.sender:
        if stor4 != msg.sender:
            require msg.sender == stor5
    require ext_code.size(stor2)
    call stor2.0x2e1a7d4d with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        return 0
}

function withdrawToken(address arg1, uint256 arg2) {
    if stor3 != msg.sender:
        if stor4 != msg.sender:
            require msg.sender == stor5
    require ext_code.size(stor2)
    call stor2.0x9e281a98 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        return 0
}

function sub_01a34023(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg4.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    if stor3 != msg.sender:
        if stor4 != msg.sender:
            require msg.sender == stor5
    require 0 < arg2.length
    require 0 < arg1.length
    require 1 < arg2.length
    require 1 < arg1.length
    require 2 < arg1.length
    require 3 < arg1.length
    require 2 < arg2.length
    require 0 < arg4.length
    require 1 < arg4.length
    require 4 < arg1.length
    require ext_code.size(stor2)
    call stor2.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
         gas gas_remaining wei
        args mem[(32 * arg1.length) + 172 len 20], mem[128], address(mem[(32 * arg1.length) + 192]), mem[160], mem[192], mem[224], address(mem[(32 * arg1.length) + 224]), arg3 << 248, mem[(32 * arg1.length) + (32 * arg2.length) + 192], mem[(32 * arg1.length) + (32 * arg2.length) + 224], mem[256]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_5dada527(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if stor3 != msg.sender:
        if stor4 != msg.sender:
            require msg.sender == stor5
    require 0 < arg1.length
    require ext_code.size(mem[140 len 20])
    call mem[140 len 20].0x70a08231 with:
         gas gas_remaining wei
        args arg3
    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0 < arg1.length
    require ext_code.size(mem[140 len 20])
    call mem[140 len 20].0x70a08231 with:
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
            args 10 * 10^6, 100 * 10^6
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
        require ext_call.return_data[0] > arg2
    else:
        call arg4.ethToTokenSwapInput(uint256 arg1, uint256 arg2) with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
            args 10 * 10^6, 100 * 10^6
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
        require ext_call.return_data[0] > eth.balance(this.address)
}

function sub_7a0fda36(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if msg.sender == stor3:
        require 4 < arg1.length
        _3 = mem[256]
        mem[(32 * arg1.length) + 132] = arg3
        require ext_code.size(address(_3))
        call address(_3).0x70a08231 with:
             gas gas_remaining wei
            args arg3
    else:
        if msg.sender == stor4:
            require 4 < arg1.length
            _8 = mem[256]
            mem[(32 * arg1.length) + 132] = arg3
            require ext_code.size(address(_8))
            call address(_8).0x70a08231 with:
                 gas gas_remaining wei
                args arg3
        else:
            require msg.sender == stor5
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
    require ext_call.return_data[0] >= arg5
    require ext_call.return_data[0] <= arg6
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
            args ext_call.return_data[0], arg2, 10^10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] > arg2
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
            args ext_call.return_data[0], eth.balance(this.address), 10^10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] > eth.balance(this.address)
}

function sub_effc7f22(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = arg5.length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    if msg.sender == stor3:
        require 4 < arg2.length
        _6 = mem[(32 * arg1.length) + 288]
        require 4 < arg2.length
        _9 = mem[(32 * arg1.length) + 288]
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 260] = mem[(32 * arg1.length) + 288]
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 292] = 1
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 228] = 96
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 356 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
        call 0xcbc6a023eb975a1e2630223a7959988948e664f3.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
           value _6 wei
             gas gas_remaining wei
            args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + floor32(arg1.length) + 356 len (32 * arg1.length) - floor32(arg1.length)]), _9, 1
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 4 < arg1.length
        _380 = mem[256]
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 228] = stor2
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 260] = ext_call.return_data[0]
        require ext_code.size(address(_380))
        call address(_380).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor2, ext_call.return_data[0]
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 4 < arg1.length
        _398 = mem[256]
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = 0x338b5dea00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 228] = address(_398)
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 260] = ext_call.return_data[0]
        require ext_code.size(stor2)
        call stor2.depositToken(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(_398), ext_call.return_data[0]
    else:
        if msg.sender == stor4:
            require 4 < arg2.length
            _14 = mem[(32 * arg1.length) + 288]
            require 4 < arg2.length
            _18 = mem[(32 * arg1.length) + 288]
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 260] = mem[(32 * arg1.length) + 288]
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 292] = 1
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 228] = 96
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 356 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
            call 0xcbc6a023eb975a1e2630223a7959988948e664f3.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
               value _14 wei
                 gas gas_remaining wei
                args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + floor32(arg1.length) + 356 len (32 * arg1.length) - floor32(arg1.length)]), _18, 1
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 4 < arg1.length
            _377 = mem[256]
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 228] = stor2
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 260] = ext_call.return_data[0]
            require ext_code.size(address(_377))
            call address(_377).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor2, ext_call.return_data[0]
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 4 < arg1.length
            _395 = mem[256]
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = 0x338b5dea00000000000000000000000000000000000000000000000000000000
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 228] = address(_395)
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 260] = ext_call.return_data[0]
            require ext_code.size(stor2)
            call stor2.depositToken(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(_395), ext_call.return_data[0]
        else:
            require msg.sender == stor5
            require 4 < arg2.length
            _16 = mem[(32 * arg1.length) + 288]
            require 4 < arg2.length
            _24 = mem[(32 * arg1.length) + 288]
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 260] = mem[(32 * arg1.length) + 288]
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 292] = 1
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 228] = 96
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 356 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
            call 0xcbc6a023eb975a1e2630223a7959988948e664f3.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
               value _16 wei
                 gas gas_remaining wei
                args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + floor32(arg1.length) + 356 len (32 * arg1.length) - floor32(arg1.length)]), _24, 1
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 4 < arg1.length
            _374 = mem[256]
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 228] = stor2
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 260] = ext_call.return_data[0]
            require ext_code.size(address(_374))
            call address(_374).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor2, ext_call.return_data[0]
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 4 < arg1.length
            _392 = mem[256]
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = 0x338b5dea00000000000000000000000000000000000000000000000000000000
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 228] = address(_392)
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 260] = ext_call.return_data[0]
            require ext_code.size(stor2)
            call stor2.depositToken(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(_392), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require 4 < arg2.length
    mem[(32 * arg1.length) + 288] = 997 * ext_call.return_data[0] / 1000
    if stor3 != msg.sender:
        if stor4 != msg.sender:
            require msg.sender == stor5
    require 0 < arg3.length
    require 0 < arg2.length
    require 1 < arg3.length
    require 1 < arg2.length
    require 2 < arg2.length
    require 3 < arg2.length
    require 2 < arg3.length
    require 0 < arg5.length
    require 1 < arg5.length
    require 4 < arg2.length
    require ext_code.size(stor2)
    call stor2.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
         gas gas_remaining wei
        args mem[(32 * arg1.length) + (32 * arg2.length) + 204 len 20], mem[(32 * arg1.length) + 160], address(mem[(32 * arg1.length) + (32 * arg2.length) + 224]), mem[(32 * arg1.length) + 192], mem[(32 * arg1.length) + 224], mem[(32 * arg1.length) + 256], address(mem[(32 * arg1.length) + (32 * arg2.length) + 256]), arg4 << 248, mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224], mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 256], 997 * ext_call.return_data[0] / 1000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor2)
    call stor2.balanceOf(address arg1, address arg2) with:
         gas gas_remaining wei
        args 0, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 4 < arg2.length
    require 997 * ext_call.return_data[0] / 1000 < ext_call.return_data[0]
    require ext_code.size(stor2)
    call stor2.0x2e1a7d4d with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        return 0
}

function sub_86f11a4a(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if msg.sender == stor3:
        require 0 < arg1.length
        require ext_code.size(mem[140 len 20])
        call mem[140 len 20].0x70a08231 with:
             gas gas_remaining wei
            args 0x63825c174ab367968ec60f061753d3bbd36a0d8f
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0 < arg1.length
        require ext_code.size(mem[140 len 20])
        call mem[140 len 20].0x70a08231 with:
             gas gas_remaining wei
            args arg3
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= arg5
        require ext_call.return_data[0] <= arg4
        if ext_call.return_data[0] > arg5:
            require 0 < arg1.length
            mem[(32 * arg1.length) + 164] = mem[140 len 20]
            mem[(32 * arg1.length) + 196] = arg2
            require ext_code.size(stor0)
            call stor0.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(mem[128]), arg2
            mem[(32 * arg1.length) + 128 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require 0 < arg1.length
            _82 = mem[128]
            require 2 < arg1.length
            _100 = mem[192]
            require 0 < arg1.length
            require ext_code.size(mem[140 len 20])
            call mem[140 len 20].0x313ce567 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 10^(-ext_call.return_data[0] + 18)
            mem[(32 * arg1.length) + 132] = mem[140 len 20]
            mem[(32 * arg1.length) + 164] = address(_100)
            mem[(32 * arg1.length) + 196] = ext_call.return_data[0] * arg2 / 10^18 / 10^(-ext_call.return_data[0] + 18)
            require ext_code.size(arg3)
            call arg3.getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(_82), address(_100), ext_call.return_data[0] * arg2 / 10^18 / 10^(-ext_call.return_data[0] + 18)
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 2 < arg1.length
            require 4 < arg1.length
            require ext_code.size(stor1)
            call stor1.getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(mem[192]), address(mem[256]), ext_call.return_data[0]
            mem[(32 * arg1.length) + 128 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_call.return_data[0] >= arg2
        else:
            if ext_call.return_data[0] < arg4:
                require 0 < arg1.length
                mem[(32 * arg1.length) + 164] = mem[140 len 20]
                mem[(32 * arg1.length) + 196] = arg2
                require ext_code.size(stor0)
                call stor0.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(mem[128]), arg2
                mem[(32 * arg1.length) + 128 len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require 0 < arg1.length
                _105 = mem[128]
                require 2 < arg1.length
                _128 = mem[192]
                require 0 < arg1.length
                require ext_code.size(mem[140 len 20])
                call mem[140 len 20].0x313ce567 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 10^(-ext_call.return_data[0] + 18)
                mem[(32 * arg1.length) + 132] = mem[140 len 20]
                mem[(32 * arg1.length) + 164] = address(_128)
                mem[(32 * arg1.length) + 196] = ext_call.return_data[0] * arg2 / 10^18 / 10^(-ext_call.return_data[0] + 18)
                require ext_code.size(arg3)
                call arg3.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(_105), address(_128), ext_call.return_data[0] * arg2 / 10^18 / 10^(-ext_call.return_data[0] + 18)
                mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 2 < arg1.length
                require 4 < arg1.length
                require ext_code.size(stor1)
                call stor1.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(mem[192]), address(mem[256]), ext_call.return_data[0]
                mem[(32 * arg1.length) + 128 len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_call.return_data[0] >= arg2
    else:
        if msg.sender == stor4:
            require 0 < arg1.length
            require ext_code.size(mem[140 len 20])
            call mem[140 len 20].0x70a08231 with:
                 gas gas_remaining wei
                args 0x63825c174ab367968ec60f061753d3bbd36a0d8f
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 0 < arg1.length
            require ext_code.size(mem[140 len 20])
            call mem[140 len 20].0x70a08231 with:
                 gas gas_remaining wei
                args arg3
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] >= arg5
            require ext_call.return_data[0] <= arg4
            if ext_call.return_data[0] > arg5:
                require 0 < arg1.length
                mem[(32 * arg1.length) + 164] = mem[140 len 20]
                mem[(32 * arg1.length) + 196] = arg2
                require ext_code.size(stor0)
                call stor0.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(mem[128]), arg2
                mem[(32 * arg1.length) + 128 len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require 0 < arg1.length
                _114 = mem[128]
                require 2 < arg1.length
                _136 = mem[192]
                require 0 < arg1.length
                require ext_code.size(mem[140 len 20])
                call mem[140 len 20].0x313ce567 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 10^(-ext_call.return_data[0] + 18)
                mem[(32 * arg1.length) + 132] = mem[140 len 20]
                mem[(32 * arg1.length) + 164] = address(_136)
                mem[(32 * arg1.length) + 196] = ext_call.return_data[0] * arg2 / 10^18 / 10^(-ext_call.return_data[0] + 18)
                require ext_code.size(arg3)
                call arg3.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(_114), address(_136), ext_call.return_data[0] * arg2 / 10^18 / 10^(-ext_call.return_data[0] + 18)
                mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 2 < arg1.length
                require 4 < arg1.length
                require ext_code.size(stor1)
                call stor1.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(mem[192]), address(mem[256]), ext_call.return_data[0]
                mem[(32 * arg1.length) + 128 len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_call.return_data[0] >= arg2
            else:
                if ext_call.return_data[0] < arg4:
                    require 0 < arg1.length
                    mem[(32 * arg1.length) + 164] = mem[140 len 20]
                    mem[(32 * arg1.length) + 196] = arg2
                    require ext_code.size(stor0)
                    call stor0.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(mem[128]), arg2
                    mem[(32 * arg1.length) + 128 len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require 0 < arg1.length
                    _141 = mem[128]
                    require 2 < arg1.length
                    _164 = mem[192]
                    require 0 < arg1.length
                    require ext_code.size(mem[140 len 20])
                    call mem[140 len 20].0x313ce567 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 10^(-ext_call.return_data[0] + 18)
                    mem[(32 * arg1.length) + 132] = mem[140 len 20]
                    mem[(32 * arg1.length) + 164] = address(_164)
                    mem[(32 * arg1.length) + 196] = ext_call.return_data[0] * arg2 / 10^18 / 10^(-ext_call.return_data[0] + 18)
                    require ext_code.size(arg3)
                    call arg3.getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(_141), address(_164), ext_call.return_data[0] * arg2 / 10^18 / 10^(-ext_call.return_data[0] + 18)
                    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 2 < arg1.length
                    require 4 < arg1.length
                    require ext_code.size(stor1)
                    call stor1.getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(mem[192]), address(mem[256]), ext_call.return_data[0]
                    mem[(32 * arg1.length) + 128 len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require ext_call.return_data[0] >= arg2
        else:
            require msg.sender == stor5
            require 0 < arg1.length
            require ext_code.size(mem[140 len 20])
            call mem[140 len 20].0x70a08231 with:
                 gas gas_remaining wei
                args 0x63825c174ab367968ec60f061753d3bbd36a0d8f
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 0 < arg1.length
            require ext_code.size(mem[140 len 20])
            call mem[140 len 20].0x70a08231 with:
                 gas gas_remaining wei
                args arg3
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] >= arg5
            require ext_call.return_data[0] <= arg4
            if ext_call.return_data[0] > arg5:
                require 0 < arg1.length
                mem[(32 * arg1.length) + 164] = mem[140 len 20]
                mem[(32 * arg1.length) + 196] = arg2
                require ext_code.size(stor0)
                call stor0.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(mem[128]), arg2
                mem[(32 * arg1.length) + 128 len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require 0 < arg1.length
                _130 = mem[128]
                require 2 < arg1.length
                _149 = mem[192]
                require 0 < arg1.length
                require ext_code.size(mem[140 len 20])
                call mem[140 len 20].0x313ce567 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 10^(-ext_call.return_data[0] + 18)
                mem[(32 * arg1.length) + 132] = mem[140 len 20]
                mem[(32 * arg1.length) + 164] = address(_149)
                mem[(32 * arg1.length) + 196] = ext_call.return_data[0] * arg2 / 10^18 / 10^(-ext_call.return_data[0] + 18)
                require ext_code.size(arg3)
                call arg3.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(_130), address(_149), ext_call.return_data[0] * arg2 / 10^18 / 10^(-ext_call.return_data[0] + 18)
                mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 2 < arg1.length
                require 4 < arg1.length
                require ext_code.size(stor1)
                call stor1.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(mem[192]), address(mem[256]), ext_call.return_data[0]
                mem[(32 * arg1.length) + 128 len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_call.return_data[0] >= arg2
            else:
                if ext_call.return_data[0] < arg4:
                    require 0 < arg1.length
                    mem[(32 * arg1.length) + 164] = mem[140 len 20]
                    mem[(32 * arg1.length) + 196] = arg2
                    require ext_code.size(stor0)
                    call stor0.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(mem[128]), arg2
                    mem[(32 * arg1.length) + 128 len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require 0 < arg1.length
                    _154 = mem[128]
                    require 2 < arg1.length
                    _176 = mem[192]
                    require 0 < arg1.length
                    require ext_code.size(mem[140 len 20])
                    call mem[140 len 20].0x313ce567 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 10^(-ext_call.return_data[0] + 18)
                    mem[(32 * arg1.length) + 132] = mem[140 len 20]
                    mem[(32 * arg1.length) + 164] = address(_176)
                    mem[(32 * arg1.length) + 196] = ext_call.return_data[0] * arg2 / 10^18 / 10^(-ext_call.return_data[0] + 18)
                    require ext_code.size(arg3)
                    call arg3.getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(_154), address(_176), ext_call.return_data[0] * arg2 / 10^18 / 10^(-ext_call.return_data[0] + 18)
                    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 2 < arg1.length
                    require 4 < arg1.length
                    require ext_code.size(stor1)
                    call stor1.getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(mem[192]), address(mem[256]), ext_call.return_data[0]
                    mem[(32 * arg1.length) + 128 len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require ext_call.return_data[0] >= arg2
    require 0 < arg1.length
    require ext_code.size(stor0)
    if eth.balance(this.address) >= arg2:
        call stor0.swapEtherToToken(address arg1, uint256 arg2) with:
           value arg2 wei
             gas gas_remaining wei
            args address(mem[128]), 1
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        stor6 = ext_call.return_data[0]
        require 0 < arg1.length
        require ext_code.size(mem[140 len 20])
        call mem[140 len 20].approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0xcbc6a023eb975a1e2630223a7959988948e664f3, stor6
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * arg1.length) + 260 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
        call 0xcbc6a023eb975a1e2630223a7959988948e664f3.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 260 len (32 * arg1.length) - floor32(arg1.length)]), stor6, 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require arg2 <= ext_call.return_data[0]
    else:
        call stor0.swapEtherToToken(address arg1, uint256 arg2) with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
            args address(mem[128]), 1
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        stor6 = ext_call.return_data[0]
        require 0 < arg1.length
        require ext_code.size(mem[140 len 20])
        call mem[140 len 20].approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0xcbc6a023eb975a1e2630223a7959988948e664f3, stor6
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * arg1.length) + 260 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
        call 0xcbc6a023eb975a1e2630223a7959988948e664f3.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 260 len (32 * arg1.length) - floor32(arg1.length)]), stor6, 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require eth.balance(this.address) <= ext_call.return_data[0]
}

function sub_a75f8dc1(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = arg5.length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    if msg.sender == stor3:
        require 4 < arg2.length
        _6 = mem[(32 * arg1.length) + 288]
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
        require ext_code.size(stor2)
        call stor2.deposit() with:
           value 1003 * _6 / 1000 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if msg.sender == stor3:
            require 0 < arg3.length
            require 0 < arg2.length
            require 1 < arg3.length
            _30 = mem[(32 * arg1.length) + (32 * arg2.length) + 224]
            require 1 < arg2.length
            require 2 < arg2.length
            _55 = mem[(32 * arg1.length) + 224]
            require 3 < arg2.length
            _72 = mem[(32 * arg1.length) + 256]
            require 2 < arg3.length
            _90 = mem[(32 * arg1.length) + (32 * arg2.length) + 256]
            require 0 < arg5.length
            _108 = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
            require 1 < arg5.length
            _126 = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 256]
            require 4 < arg2.length
            _144 = mem[(32 * arg1.length) + 288]
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = 0xa19b14a00000000000000000000000000000000000000000000000000000000
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 228] = mem[(32 * arg1.length) + (32 * arg2.length) + 204 len 20]
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 356] = _55
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 388] = _72
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 420] = address(_90)
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 452] = arg4
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 484] = _108
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 516] = _126
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 548] = _144
            require ext_code.size(stor2)
            call stor2.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                 gas gas_remaining wei
                args mem[(32 * arg1.length) + (32 * arg2.length) + 204 len 20], mem[(32 * arg1.length) + 160], address(_30), mem[(32 * arg1.length) + 192], _55, _72, address(_90), arg4 << 248, _108, _126, _144
        else:
            if msg.sender == stor4:
                require 0 < arg3.length
                require 0 < arg2.length
                require 1 < arg3.length
                _53 = mem[(32 * arg1.length) + (32 * arg2.length) + 224]
                require 1 < arg2.length
                require 2 < arg2.length
                _88 = mem[(32 * arg1.length) + 224]
                require 3 < arg2.length
                _106 = mem[(32 * arg1.length) + 256]
                require 2 < arg3.length
                _124 = mem[(32 * arg1.length) + (32 * arg2.length) + 256]
                require 0 < arg5.length
                _142 = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                require 1 < arg5.length
                _161 = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 256]
                require 4 < arg2.length
                _178 = mem[(32 * arg1.length) + 288]
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = 0xa19b14a00000000000000000000000000000000000000000000000000000000
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 228] = mem[(32 * arg1.length) + (32 * arg2.length) + 204 len 20]
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 356] = _88
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 388] = _106
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 420] = address(_124)
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 452] = arg4
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 484] = _142
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 516] = _161
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 548] = _178
                require ext_code.size(stor2)
                call stor2.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                     gas gas_remaining wei
                    args mem[(32 * arg1.length) + (32 * arg2.length) + 204 len 20], mem[(32 * arg1.length) + 160], address(_53), mem[(32 * arg1.length) + 192], _88, _106, address(_124), arg4 << 248, _142, _161, _178
            else:
                require msg.sender == stor5
                require 0 < arg3.length
                require 0 < arg2.length
                require 1 < arg3.length
                _68 = mem[(32 * arg1.length) + (32 * arg2.length) + 224]
                require 1 < arg2.length
                require 2 < arg2.length
                _104 = mem[(32 * arg1.length) + 224]
                require 3 < arg2.length
                _122 = mem[(32 * arg1.length) + 256]
                require 2 < arg3.length
                _140 = mem[(32 * arg1.length) + (32 * arg2.length) + 256]
                require 0 < arg5.length
                _159 = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                require 1 < arg5.length
                _176 = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 256]
                require 4 < arg2.length
                _192 = mem[(32 * arg1.length) + 288]
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = 0xa19b14a00000000000000000000000000000000000000000000000000000000
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 228] = mem[(32 * arg1.length) + (32 * arg2.length) + 204 len 20]
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 356] = _104
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 388] = _122
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 420] = address(_140)
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 452] = arg4
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 484] = _159
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 516] = _176
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 548] = _192
                require ext_code.size(stor2)
                call stor2.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                     gas gas_remaining wei
                    args mem[(32 * arg1.length) + (32 * arg2.length) + 204 len 20], mem[(32 * arg1.length) + 160], address(_68), mem[(32 * arg1.length) + 192], _104, _122, address(_140), arg4 << 248, _159, _176, _192
    else:
        if msg.sender == stor4:
            require 4 < arg2.length
            _11 = mem[(32 * arg1.length) + 288]
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
            require ext_code.size(stor2)
            call stor2.deposit() with:
               value 1003 * _11 / 1000 wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if msg.sender == stor3:
                require 0 < arg3.length
                require 0 < arg2.length
                require 1 < arg3.length
                _49 = mem[(32 * arg1.length) + (32 * arg2.length) + 224]
                require 1 < arg2.length
                require 2 < arg2.length
                _84 = mem[(32 * arg1.length) + 224]
                require 3 < arg2.length
                _102 = mem[(32 * arg1.length) + 256]
                require 2 < arg3.length
                _120 = mem[(32 * arg1.length) + (32 * arg2.length) + 256]
                require 0 < arg5.length
                _138 = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                require 1 < arg5.length
                _157 = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 256]
                require 4 < arg2.length
                _173 = mem[(32 * arg1.length) + 288]
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = 0xa19b14a00000000000000000000000000000000000000000000000000000000
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 228] = mem[(32 * arg1.length) + (32 * arg2.length) + 204 len 20]
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 356] = _84
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 388] = _102
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 420] = address(_120)
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 452] = arg4
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 484] = _138
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 516] = _157
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 548] = _173
                require ext_code.size(stor2)
                call stor2.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                     gas gas_remaining wei
                    args mem[(32 * arg1.length) + (32 * arg2.length) + 204 len 20], mem[(32 * arg1.length) + 160], address(_49), mem[(32 * arg1.length) + 192], _84, _102, address(_120), arg4 << 248, _138, _157, _173
            else:
                if msg.sender == stor4:
                    require 0 < arg3.length
                    require 0 < arg2.length
                    require 1 < arg3.length
                    _82 = mem[(32 * arg1.length) + (32 * arg2.length) + 224]
                    require 1 < arg2.length
                    require 2 < arg2.length
                    _118 = mem[(32 * arg1.length) + 224]
                    require 3 < arg2.length
                    _136 = mem[(32 * arg1.length) + 256]
                    require 2 < arg3.length
                    _155 = mem[(32 * arg1.length) + (32 * arg2.length) + 256]
                    require 0 < arg5.length
                    _171 = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                    require 1 < arg5.length
                    _190 = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 256]
                    require 4 < arg2.length
                    _202 = mem[(32 * arg1.length) + 288]
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = 0xa19b14a00000000000000000000000000000000000000000000000000000000
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 228] = mem[(32 * arg1.length) + (32 * arg2.length) + 204 len 20]
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 356] = _118
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 388] = _136
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 420] = address(_155)
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 452] = arg4
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 484] = _171
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 516] = _190
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 548] = _202
                    require ext_code.size(stor2)
                    call stor2.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                         gas gas_remaining wei
                        args mem[(32 * arg1.length) + (32 * arg2.length) + 204 len 20], mem[(32 * arg1.length) + 160], address(_82), mem[(32 * arg1.length) + 192], _118, _136, address(_155), arg4 << 248, _171, _190, _202
                else:
                    require msg.sender == stor5
                    require 0 < arg3.length
                    require 0 < arg2.length
                    require 1 < arg3.length
                    _98 = mem[(32 * arg1.length) + (32 * arg2.length) + 224]
                    require 1 < arg2.length
                    require 2 < arg2.length
                    _134 = mem[(32 * arg1.length) + 224]
                    require 3 < arg2.length
                    _153 = mem[(32 * arg1.length) + 256]
                    require 2 < arg3.length
                    _169 = mem[(32 * arg1.length) + (32 * arg2.length) + 256]
                    require 0 < arg5.length
                    _188 = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                    require 1 < arg5.length
                    _200 = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 256]
                    require 4 < arg2.length
                    _213 = mem[(32 * arg1.length) + 288]
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = 0xa19b14a00000000000000000000000000000000000000000000000000000000
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 228] = mem[(32 * arg1.length) + (32 * arg2.length) + 204 len 20]
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 356] = _134
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 388] = _153
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 420] = address(_169)
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 452] = arg4
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 484] = _188
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 516] = _200
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 548] = _213
                    require ext_code.size(stor2)
                    call stor2.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                         gas gas_remaining wei
                        args mem[(32 * arg1.length) + (32 * arg2.length) + 204 len 20], mem[(32 * arg1.length) + 160], address(_98), mem[(32 * arg1.length) + 192], _134, _153, address(_169), arg4 << 248, _188, _200, _213
        else:
            require msg.sender == stor5
            require 4 < arg2.length
            _12 = mem[(32 * arg1.length) + 288]
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
            require ext_code.size(stor2)
            call stor2.deposit() with:
               value 1003 * _12 / 1000 wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if msg.sender == stor3:
                require 0 < arg3.length
                require 0 < arg2.length
                require 1 < arg3.length
                _60 = mem[(32 * arg1.length) + (32 * arg2.length) + 224]
                require 1 < arg2.length
                require 2 < arg2.length
                _96 = mem[(32 * arg1.length) + 224]
                require 3 < arg2.length
                _114 = mem[(32 * arg1.length) + 256]
                require 2 < arg3.length
                _132 = mem[(32 * arg1.length) + (32 * arg2.length) + 256]
                require 0 < arg5.length
                _151 = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                require 1 < arg5.length
                _167 = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 256]
                require 4 < arg2.length
                _185 = mem[(32 * arg1.length) + 288]
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = 0xa19b14a00000000000000000000000000000000000000000000000000000000
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 228] = mem[(32 * arg1.length) + (32 * arg2.length) + 204 len 20]
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 356] = _96
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 388] = _114
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 420] = address(_132)
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 452] = arg4
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 484] = _151
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 516] = _167
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 548] = _185
                require ext_code.size(stor2)
                call stor2.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                     gas gas_remaining wei
                    args mem[(32 * arg1.length) + (32 * arg2.length) + 204 len 20], mem[(32 * arg1.length) + 160], address(_60), mem[(32 * arg1.length) + 192], _96, _114, address(_132), arg4 << 248, _151, _167, _185
            else:
                if msg.sender == stor4:
                    require 0 < arg3.length
                    require 0 < arg2.length
                    require 1 < arg3.length
                    _94 = mem[(32 * arg1.length) + (32 * arg2.length) + 224]
                    require 1 < arg2.length
                    require 2 < arg2.length
                    _130 = mem[(32 * arg1.length) + 224]
                    require 3 < arg2.length
                    _149 = mem[(32 * arg1.length) + 256]
                    require 2 < arg3.length
                    _165 = mem[(32 * arg1.length) + (32 * arg2.length) + 256]
                    require 0 < arg5.length
                    _183 = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                    require 1 < arg5.length
                    _198 = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 256]
                    require 4 < arg2.length
                    _210 = mem[(32 * arg1.length) + 288]
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = 0xa19b14a00000000000000000000000000000000000000000000000000000000
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 228] = mem[(32 * arg1.length) + (32 * arg2.length) + 204 len 20]
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 356] = _130
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 388] = _149
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 420] = address(_165)
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 452] = arg4
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 484] = _183
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 516] = _198
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 548] = _210
                    require ext_code.size(stor2)
                    call stor2.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                         gas gas_remaining wei
                        args mem[(32 * arg1.length) + (32 * arg2.length) + 204 len 20], mem[(32 * arg1.length) + 160], address(_94), mem[(32 * arg1.length) + 192], _130, _149, address(_165), arg4 << 248, _183, _198, _210
                else:
                    require msg.sender == stor5
                    require 0 < arg3.length
                    require 0 < arg2.length
                    require 1 < arg3.length
                    _110 = mem[(32 * arg1.length) + (32 * arg2.length) + 224]
                    require 1 < arg2.length
                    require 2 < arg2.length
                    _147 = mem[(32 * arg1.length) + 224]
                    require 3 < arg2.length
                    _163 = mem[(32 * arg1.length) + 256]
                    require 2 < arg3.length
                    _181 = mem[(32 * arg1.length) + (32 * arg2.length) + 256]
                    require 0 < arg5.length
                    _196 = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                    require 1 < arg5.length
                    _208 = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 256]
                    require 4 < arg2.length
                    _218 = mem[(32 * arg1.length) + 288]
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = 0xa19b14a00000000000000000000000000000000000000000000000000000000
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 228] = mem[(32 * arg1.length) + (32 * arg2.length) + 204 len 20]
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 356] = _147
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 388] = _163
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 420] = address(_181)
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 452] = arg4
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 484] = _196
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 516] = _208
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 548] = _218
                    require ext_code.size(stor2)
                    call stor2.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                         gas gas_remaining wei
                        args mem[(32 * arg1.length) + (32 * arg2.length) + 204 len 20], mem[(32 * arg1.length) + 160], address(_110), mem[(32 * arg1.length) + 192], _147, _163, address(_181), arg4 << 248, _196, _208, _218
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require 1 < arg3.length
    require ext_code.size(stor2)
    call stor2.balanceOf(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(mem[(32 * arg1.length) + (32 * arg2.length) + 224]), this.address
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 1 < arg3.length
    require ext_code.size(stor2)
    call stor2.0x9e281a98 with:
         gas gas_remaining wei
        args address(mem[(32 * arg1.length) + (32 * arg2.length) + 224]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require 0 < arg1.length
    require ext_code.size(mem[140 len 20])
    call mem[140 len 20].approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xcbc6a023eb975a1e2630223a7959988948e664f3, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 260] = ext_call.return_data[0]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 292] = 1
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 228] = 96
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 356 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
    call 0xcbc6a023eb975a1e2630223a7959988948e664f3.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + floor32(arg1.length) + 356 len (32 * arg1.length) - floor32(arg1.length)]), ext_call.return_data[0], 1
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 4 < arg2.length
    require 1003 * mem[(32 * arg1.length) + 288] / 1000 < ext_call.return_data[0]
    return 0
}

function sub_3bb276eb(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if msg.sender == stor3:
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
        mem[(32 * arg1.length) + 132] = 0x63825c174ab367968ec60f061753d3bbd36a0d8f
        require ext_code.size(address(_18))
        call address(_18).0x70a08231 with:
             gas gas_remaining wei
            args 0x63825c174ab367968ec60f061753d3bbd36a0d8f
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= arg4
        require ext_call.return_data[0] <= arg5
        if ext_call.return_data[0] > arg4:
            require 0 < arg1.length
            require 1 < arg1.length
            _43 = mem[160]
            mem[(32 * arg1.length) + 164] = mem[172 len 20]
            mem[(32 * arg1.length) + 196] = arg2
            require ext_code.size(stor1)
            call stor1.getReturn(address arg1, address arg2, uint256 arg3) with:
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
            _197 = mem[256]
            mem[(32 * arg1.length) + 164] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
            mem[(32 * arg1.length) + 196] = ext_call.return_data[0]
            require ext_code.size(stor0)
            call stor0.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(_197), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, ext_call.return_data[0]
            mem[(32 * arg1.length) + 128 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require 4 < arg1.length
            require ext_code.size(mem[268 len 20])
            call mem[268 len 20].0x313ce567 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] / 10^18 >= arg2
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
                _722 = mem[256]
                mem[(32 * arg1.length) + 132] = stor0
                mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
                require ext_code.size(address(_722))
                call address(_722).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor0, ext_call.return_data[0]
                mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 4 < arg1.length
                require ext_code.size(stor0)
                call stor0.swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(mem[256]), ext_call.return_data[0], 1
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
                _725 = mem[256]
                mem[(32 * arg1.length) + 132] = stor0
                mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
                require ext_code.size(address(_725))
                call address(_725).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor0, ext_call.return_data[0]
                mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 4 < arg1.length
                require ext_code.size(stor0)
                call stor0.swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(mem[256]), ext_call.return_data[0], 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require eth.balance(this.address) <= ext_call.return_data[0]
        else:
            if ext_call.return_data[0] >= arg5:
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
                    _728 = mem[256]
                    mem[(32 * arg1.length) + 132] = stor0
                    mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
                    require ext_code.size(address(_728))
                    call address(_728).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor0, ext_call.return_data[0]
                    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 4 < arg1.length
                    require ext_code.size(stor0)
                    call stor0.swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(mem[256]), ext_call.return_data[0], 1
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
                    _731 = mem[256]
                    mem[(32 * arg1.length) + 132] = stor0
                    mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
                    require ext_code.size(address(_731))
                    call address(_731).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor0, ext_call.return_data[0]
                    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 4 < arg1.length
                    require ext_code.size(stor0)
                    call stor0.swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(mem[256]), ext_call.return_data[0], 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require eth.balance(this.address) <= ext_call.return_data[0]
            else:
                require 0 < arg1.length
                require 1 < arg1.length
                _58 = mem[160]
                mem[(32 * arg1.length) + 164] = mem[172 len 20]
                mem[(32 * arg1.length) + 196] = arg2
                require ext_code.size(stor1)
                call stor1.getReturn(address arg1, address arg2, uint256 arg3) with:
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
                _218 = mem[256]
                mem[(32 * arg1.length) + 164] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                mem[(32 * arg1.length) + 196] = ext_call.return_data[0]
                require ext_code.size(stor0)
                call stor0.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(_218), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, ext_call.return_data[0]
                mem[(32 * arg1.length) + 128 len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require 4 < arg1.length
                require ext_code.size(mem[268 len 20])
                call mem[268 len 20].0x313ce567 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] / 10^18 >= arg2
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
                    _734 = mem[256]
                    mem[(32 * arg1.length) + 132] = stor0
                    mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
                    require ext_code.size(address(_734))
                    call address(_734).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor0, ext_call.return_data[0]
                    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 4 < arg1.length
                    require ext_code.size(stor0)
                    call stor0.swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(mem[256]), ext_call.return_data[0], 1
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
                    _737 = mem[256]
                    mem[(32 * arg1.length) + 132] = stor0
                    mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
                    require ext_code.size(address(_737))
                    call address(_737).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor0, ext_call.return_data[0]
                    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 4 < arg1.length
                    require ext_code.size(stor0)
                    call stor0.swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(mem[256]), ext_call.return_data[0], 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require eth.balance(this.address) <= ext_call.return_data[0]
    else:
        if msg.sender == stor4:
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
            mem[(32 * arg1.length) + 132] = 0x63825c174ab367968ec60f061753d3bbd36a0d8f
            require ext_code.size(address(_26))
            call address(_26).0x70a08231 with:
                 gas gas_remaining wei
                args 0x63825c174ab367968ec60f061753d3bbd36a0d8f
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] >= arg4
            require ext_call.return_data[0] <= arg5
            if ext_call.return_data[0] > arg4:
                require 0 < arg1.length
                require 1 < arg1.length
                _64 = mem[160]
                mem[(32 * arg1.length) + 164] = mem[172 len 20]
                mem[(32 * arg1.length) + 196] = arg2
                require ext_code.size(stor1)
                call stor1.getReturn(address arg1, address arg2, uint256 arg3) with:
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
                _225 = mem[256]
                mem[(32 * arg1.length) + 164] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                mem[(32 * arg1.length) + 196] = ext_call.return_data[0]
                require ext_code.size(stor0)
                call stor0.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(_225), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, ext_call.return_data[0]
                mem[(32 * arg1.length) + 128 len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require 4 < arg1.length
                require ext_code.size(mem[268 len 20])
                call mem[268 len 20].0x313ce567 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] / 10^18 >= arg2
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
                    _704 = mem[256]
                    mem[(32 * arg1.length) + 132] = stor0
                    mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
                    require ext_code.size(address(_704))
                    call address(_704).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor0, ext_call.return_data[0]
                    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 4 < arg1.length
                    require ext_code.size(stor0)
                    call stor0.swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(mem[256]), ext_call.return_data[0], 1
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
                    _707 = mem[256]
                    mem[(32 * arg1.length) + 132] = stor0
                    mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
                    require ext_code.size(address(_707))
                    call address(_707).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor0, ext_call.return_data[0]
                    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 4 < arg1.length
                    require ext_code.size(stor0)
                    call stor0.swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(mem[256]), ext_call.return_data[0], 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require eth.balance(this.address) <= ext_call.return_data[0]
            else:
                if ext_call.return_data[0] >= arg5:
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
                        _710 = mem[256]
                        mem[(32 * arg1.length) + 132] = stor0
                        mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
                        require ext_code.size(address(_710))
                        call address(_710).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor0, ext_call.return_data[0]
                        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 4 < arg1.length
                        require ext_code.size(stor0)
                        call stor0.swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(mem[256]), ext_call.return_data[0], 1
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
                        _713 = mem[256]
                        mem[(32 * arg1.length) + 132] = stor0
                        mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
                        require ext_code.size(address(_713))
                        call address(_713).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor0, ext_call.return_data[0]
                        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 4 < arg1.length
                        require ext_code.size(stor0)
                        call stor0.swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(mem[256]), ext_call.return_data[0], 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require eth.balance(this.address) <= ext_call.return_data[0]
                else:
                    require 0 < arg1.length
                    require 1 < arg1.length
                    _86 = mem[160]
                    mem[(32 * arg1.length) + 164] = mem[172 len 20]
                    mem[(32 * arg1.length) + 196] = arg2
                    require ext_code.size(stor1)
                    call stor1.getReturn(address arg1, address arg2, uint256 arg3) with:
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
                    _250 = mem[256]
                    mem[(32 * arg1.length) + 164] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                    mem[(32 * arg1.length) + 196] = ext_call.return_data[0]
                    require ext_code.size(stor0)
                    call stor0.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(_250), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, ext_call.return_data[0]
                    mem[(32 * arg1.length) + 128 len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require 4 < arg1.length
                    require ext_code.size(mem[268 len 20])
                    call mem[268 len 20].0x313ce567 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] / 10^18 >= arg2
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
                        _716 = mem[256]
                        mem[(32 * arg1.length) + 132] = stor0
                        mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
                        require ext_code.size(address(_716))
                        call address(_716).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor0, ext_call.return_data[0]
                        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 4 < arg1.length
                        require ext_code.size(stor0)
                        call stor0.swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(mem[256]), ext_call.return_data[0], 1
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
                        _719 = mem[256]
                        mem[(32 * arg1.length) + 132] = stor0
                        mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
                        require ext_code.size(address(_719))
                        call address(_719).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor0, ext_call.return_data[0]
                        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 4 < arg1.length
                        require ext_code.size(stor0)
                        call stor0.swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(mem[256]), ext_call.return_data[0], 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require eth.balance(this.address) <= ext_call.return_data[0]
        else:
            require msg.sender == stor5
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
            mem[(32 * arg1.length) + 132] = 0x63825c174ab367968ec60f061753d3bbd36a0d8f
            require ext_code.size(address(_30))
            call address(_30).0x70a08231 with:
                 gas gas_remaining wei
                args 0x63825c174ab367968ec60f061753d3bbd36a0d8f
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] >= arg4
            require ext_call.return_data[0] <= arg5
            if ext_call.return_data[0] > arg4:
                require 0 < arg1.length
                require 1 < arg1.length
                _75 = mem[160]
                mem[(32 * arg1.length) + 164] = mem[172 len 20]
                mem[(32 * arg1.length) + 196] = arg2
                require ext_code.size(stor1)
                call stor1.getReturn(address arg1, address arg2, uint256 arg3) with:
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
                _237 = mem[256]
                mem[(32 * arg1.length) + 164] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                mem[(32 * arg1.length) + 196] = ext_call.return_data[0]
                require ext_code.size(stor0)
                call stor0.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(_237), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, ext_call.return_data[0]
                mem[(32 * arg1.length) + 128 len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require 4 < arg1.length
                require ext_code.size(mem[268 len 20])
                call mem[268 len 20].0x313ce567 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] / 10^18 >= arg2
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
                    _686 = mem[256]
                    mem[(32 * arg1.length) + 132] = stor0
                    mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
                    require ext_code.size(address(_686))
                    call address(_686).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor0, ext_call.return_data[0]
                    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 4 < arg1.length
                    require ext_code.size(stor0)
                    call stor0.swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(mem[256]), ext_call.return_data[0], 1
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
                    _689 = mem[256]
                    mem[(32 * arg1.length) + 132] = stor0
                    mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
                    require ext_code.size(address(_689))
                    call address(_689).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor0, ext_call.return_data[0]
                    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 4 < arg1.length
                    require ext_code.size(stor0)
                    call stor0.swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(mem[256]), ext_call.return_data[0], 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require eth.balance(this.address) <= ext_call.return_data[0]
            else:
                if ext_call.return_data[0] >= arg5:
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
                        _692 = mem[256]
                        mem[(32 * arg1.length) + 132] = stor0
                        mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
                        require ext_code.size(address(_692))
                        call address(_692).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor0, ext_call.return_data[0]
                        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 4 < arg1.length
                        require ext_code.size(stor0)
                        call stor0.swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(mem[256]), ext_call.return_data[0], 1
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
                        _695 = mem[256]
                        mem[(32 * arg1.length) + 132] = stor0
                        mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
                        require ext_code.size(address(_695))
                        call address(_695).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor0, ext_call.return_data[0]
                        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 4 < arg1.length
                        require ext_code.size(stor0)
                        call stor0.swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(mem[256]), ext_call.return_data[0], 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require eth.balance(this.address) <= ext_call.return_data[0]
                else:
                    require 0 < arg1.length
                    require 1 < arg1.length
                    _98 = mem[160]
                    mem[(32 * arg1.length) + 164] = mem[172 len 20]
                    mem[(32 * arg1.length) + 196] = arg2
                    require ext_code.size(stor1)
                    call stor1.getReturn(address arg1, address arg2, uint256 arg3) with:
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
                    _263 = mem[256]
                    mem[(32 * arg1.length) + 164] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                    mem[(32 * arg1.length) + 196] = ext_call.return_data[0]
                    require ext_code.size(stor0)
                    call stor0.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(_263), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, ext_call.return_data[0]
                    mem[(32 * arg1.length) + 128 len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require 4 < arg1.length
                    require ext_code.size(mem[268 len 20])
                    call mem[268 len 20].0x313ce567 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] / 10^18 >= arg2
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
                        _698 = mem[256]
                        mem[(32 * arg1.length) + 132] = stor0
                        mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
                        require ext_code.size(address(_698))
                        call address(_698).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor0, ext_call.return_data[0]
                        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 4 < arg1.length
                        require ext_code.size(stor0)
                        call stor0.swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(mem[256]), ext_call.return_data[0], 1
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
                        _701 = mem[256]
                        mem[(32 * arg1.length) + 132] = stor0
                        mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
                        require ext_code.size(address(_701))
                        call address(_701).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor0, ext_call.return_data[0]
                        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 4 < arg1.length
                        require ext_code.size(stor0)
                        call stor0.swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(mem[256]), ext_call.return_data[0], 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require eth.balance(this.address) <= ext_call.return_data[0]
    return 1
}



}
