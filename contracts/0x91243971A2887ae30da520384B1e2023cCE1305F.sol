contract main {




// =====================  Runtime code  =====================


address stor1;
address stor3;
address stor4;

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

function sub_84d43a47(?) {
    if 0xdead1241f2ee2a7950ad967993efb72d62bf6822 != msg.sender:
        if 0xdead3b4bdb1c7160196c41fd1bab168f71486123 != msg.sender:
            require msg.sender == 0xdead27218f7243f71bd4b7bd39c314d5cc66840e
    require ext_code.size(stor4)
    call stor4.deposit() with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        return 0
}

function withdrawDelta(uint256 arg1) {
    if 0xdead1241f2ee2a7950ad967993efb72d62bf6822 != msg.sender:
        if 0xdead3b4bdb1c7160196c41fd1bab168f71486123 != msg.sender:
            require msg.sender == 0xdead27218f7243f71bd4b7bd39c314d5cc66840e
    require ext_code.size(stor4)
    call stor4.0x2e1a7d4d with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        return 0
}

function withdrawToken(address arg1, uint256 arg2) {
    if 0xdead1241f2ee2a7950ad967993efb72d62bf6822 != msg.sender:
        if 0xdead3b4bdb1c7160196c41fd1bab168f71486123 != msg.sender:
            require msg.sender == 0xdead27218f7243f71bd4b7bd39c314d5cc66840e
    require ext_code.size(stor4)
    call stor4.0x9e281a98 with:
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
    if 0xdead1241f2ee2a7950ad967993efb72d62bf6822 != msg.sender:
        if 0xdead3b4bdb1c7160196c41fd1bab168f71486123 != msg.sender:
            require msg.sender == 0xdead27218f7243f71bd4b7bd39c314d5cc66840e
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
    require ext_code.size(stor4)
    call stor4.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
         gas gas_remaining wei
        args mem[(32 * arg1.length) + 172 len 20], mem[128], address(mem[(32 * arg1.length) + 192]), mem[160], mem[192], mem[224], address(mem[(32 * arg1.length) + 224]), arg3 << 248, mem[(32 * arg1.length) + (32 * arg2.length) + 192], mem[(32 * arg1.length) + (32 * arg2.length) + 224], mem[256]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_86f11a4a(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if 0xdead1241f2ee2a7950ad967993efb72d62bf6822 != msg.sender:
        if 0xdead3b4bdb1c7160196c41fd1bab168f71486123 != msg.sender:
            require msg.sender == 0xdead27218f7243f71bd4b7bd39c314d5cc66840e
    require 0 < arg1.length
    require ext_code.size(mem[140 len 20])
    call mem[140 len 20].0x70a08231 with:
         gas gas_remaining wei
        args 0x63825c174ab367968ec60f061753d3bbd36a0d8f
    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= arg5
    require 0 < arg1.length
    require ext_code.size(mem[140 len 20])
    call mem[140 len 20].0x70a08231 with:
         gas gas_remaining wei
        args arg3
    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= arg4
    require 0 < arg1.length
    require ext_code.size(stor1)
    if eth.balance(this.address) >= arg2:
        call stor1.swapEtherToToken(address arg1, uint256 arg2) with:
           value arg2 wei
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
        mem[(32 * arg1.length) + 260 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        require ext_code.size(stor3)
        call stor3.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 260 len (32 * arg1.length) - floor32(arg1.length)]), ext_call.return_data[0], 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require arg2 <= ext_call.return_data[0]
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
        mem[(32 * arg1.length) + 260 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        require ext_code.size(stor3)
        call stor3.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 260 len (32 * arg1.length) - floor32(arg1.length)]), ext_call.return_data[0], 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require eth.balance(this.address) <= ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_effc7f22(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = arg5.length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    if msg.sender == 0xdead1241f2ee2a7950ad967993efb72d62bf6822:
        require 4 < arg2.length
        _6 = mem[(32 * arg1.length) + 288]
        require 4 < arg2.length
        _9 = mem[(32 * arg1.length) + 288]
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 260] = mem[(32 * arg1.length) + 288]
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 292] = 1
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 228] = 96
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 356 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        require ext_code.size(stor3)
        call stor3.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
           value _6 wei
             gas gas_remaining wei
            args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + floor32(arg1.length) + 356 len (32 * arg1.length) - floor32(arg1.length)]), _9, 1
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 4 < arg1.length
        _380 = mem[256]
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 228] = stor4
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 260] = ext_call.return_data[0]
        require ext_code.size(address(_380))
        call address(_380).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor4, ext_call.return_data[0]
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 4 < arg1.length
        _398 = mem[256]
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = 0x338b5dea00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 228] = address(_398)
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 260] = ext_call.return_data[0]
        require ext_code.size(stor4)
        call stor4.depositToken(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(_398), ext_call.return_data[0]
    else:
        if msg.sender == 0xdead3b4bdb1c7160196c41fd1bab168f71486123:
            require 4 < arg2.length
            _14 = mem[(32 * arg1.length) + 288]
            require 4 < arg2.length
            _18 = mem[(32 * arg1.length) + 288]
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 260] = mem[(32 * arg1.length) + 288]
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 292] = 1
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 228] = 96
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 356 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            require ext_code.size(stor3)
            call stor3.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
               value _14 wei
                 gas gas_remaining wei
                args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + floor32(arg1.length) + 356 len (32 * arg1.length) - floor32(arg1.length)]), _18, 1
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 4 < arg1.length
            _377 = mem[256]
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 228] = stor4
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 260] = ext_call.return_data[0]
            require ext_code.size(address(_377))
            call address(_377).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor4, ext_call.return_data[0]
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 4 < arg1.length
            _395 = mem[256]
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = 0x338b5dea00000000000000000000000000000000000000000000000000000000
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 228] = address(_395)
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 260] = ext_call.return_data[0]
            require ext_code.size(stor4)
            call stor4.depositToken(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(_395), ext_call.return_data[0]
        else:
            require msg.sender == 0xdead27218f7243f71bd4b7bd39c314d5cc66840e
            require 4 < arg2.length
            _16 = mem[(32 * arg1.length) + 288]
            require 4 < arg2.length
            _24 = mem[(32 * arg1.length) + 288]
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 260] = mem[(32 * arg1.length) + 288]
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 292] = 1
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 228] = 96
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 356 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            require ext_code.size(stor3)
            call stor3.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
               value _16 wei
                 gas gas_remaining wei
                args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + floor32(arg1.length) + 356 len (32 * arg1.length) - floor32(arg1.length)]), _24, 1
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 4 < arg1.length
            _374 = mem[256]
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 228] = stor4
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 260] = ext_call.return_data[0]
            require ext_code.size(address(_374))
            call address(_374).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor4, ext_call.return_data[0]
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 4 < arg1.length
            _392 = mem[256]
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = 0x338b5dea00000000000000000000000000000000000000000000000000000000
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 228] = address(_392)
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 260] = ext_call.return_data[0]
            require ext_code.size(stor4)
            call stor4.depositToken(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(_392), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require 4 < arg2.length
    mem[(32 * arg1.length) + 288] = 997 * ext_call.return_data[0] / 1000
    if 0xdead1241f2ee2a7950ad967993efb72d62bf6822 != msg.sender:
        if 0xdead3b4bdb1c7160196c41fd1bab168f71486123 != msg.sender:
            require msg.sender == 0xdead27218f7243f71bd4b7bd39c314d5cc66840e
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
    require ext_code.size(stor4)
    call stor4.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
         gas gas_remaining wei
        args mem[(32 * arg1.length) + (32 * arg2.length) + 204 len 20], mem[(32 * arg1.length) + 160], address(mem[(32 * arg1.length) + (32 * arg2.length) + 224]), mem[(32 * arg1.length) + 192], mem[(32 * arg1.length) + 224], mem[(32 * arg1.length) + 256], address(mem[(32 * arg1.length) + (32 * arg2.length) + 256]), arg4 << 248, mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224], mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 256], 997 * ext_call.return_data[0] / 1000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor4)
    call stor4.0xf7888aec with:
         gas gas_remaining wei
        args 0, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 4 < arg2.length
    require 997 * ext_call.return_data[0] / 1000 < ext_call.return_data[0]
    require ext_code.size(stor4)
    call stor4.0x2e1a7d4d with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        return 0
}

function sub_3bb276eb(?) {
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
        require ext_call.return_data[0] >= arg4
        require 4 < arg1.length
        require ext_code.size(mem[268 len 20])
        call mem[268 len 20].0x70a08231 with:
             gas gas_remaining wei
            args 0x63825c174ab367968ec60f061753d3bbd36a0d8f
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] <= arg5
        if eth.balance(this.address) >= arg2:
            mem[(32 * arg1.length) + 164] = arg2
            mem[(32 * arg1.length) + 196] = 1
            mem[(32 * arg1.length) + 132] = 96
            mem[(32 * arg1.length) + 228] = arg1.length
            mem[(32 * arg1.length) + 260 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            require ext_code.size(stor3)
            call stor3.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
               value arg2 wei
                 gas gas_remaining wei
                args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 260 len (32 * arg1.length) - floor32(arg1.length)]), arg2, 1
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 4 < arg1.length
            _206 = mem[256]
            mem[(32 * arg1.length) + 132] = stor1
            mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
            require ext_code.size(address(_206))
            call address(_206).approve(address arg1, uint256 arg2) with:
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
            require arg2 <= ext_call.return_data[0]
        else:
            mem[(32 * arg1.length) + 164] = eth.balance(this.address)
            mem[(32 * arg1.length) + 196] = 1
            mem[(32 * arg1.length) + 132] = 96
            mem[(32 * arg1.length) + 228] = arg1.length
            mem[(32 * arg1.length) + 260 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            require ext_code.size(stor3)
            call stor3.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
                args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 260 len (32 * arg1.length) - floor32(arg1.length)]), eth.balance(this.address), 1
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 4 < arg1.length
            _209 = mem[256]
            mem[(32 * arg1.length) + 132] = stor1
            mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
            require ext_code.size(address(_209))
            call address(_209).approve(address arg1, uint256 arg2) with:
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
            require eth.balance(this.address) <= ext_call.return_data[0]
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
            require ext_call.return_data[0] >= arg4
            require 4 < arg1.length
            require ext_code.size(mem[268 len 20])
            call mem[268 len 20].0x70a08231 with:
                 gas gas_remaining wei
                args 0x63825c174ab367968ec60f061753d3bbd36a0d8f
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] <= arg5
            if eth.balance(this.address) >= arg2:
                mem[(32 * arg1.length) + 164] = arg2
                mem[(32 * arg1.length) + 196] = 1
                mem[(32 * arg1.length) + 132] = 96
                mem[(32 * arg1.length) + 228] = arg1.length
                mem[(32 * arg1.length) + 260 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                require ext_code.size(stor3)
                call stor3.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                   value arg2 wei
                     gas gas_remaining wei
                    args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 260 len (32 * arg1.length) - floor32(arg1.length)]), arg2, 1
                mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 4 < arg1.length
                _200 = mem[256]
                mem[(32 * arg1.length) + 132] = stor1
                mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
                require ext_code.size(address(_200))
                call address(_200).approve(address arg1, uint256 arg2) with:
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
                require arg2 <= ext_call.return_data[0]
            else:
                mem[(32 * arg1.length) + 164] = eth.balance(this.address)
                mem[(32 * arg1.length) + 196] = 1
                mem[(32 * arg1.length) + 132] = 96
                mem[(32 * arg1.length) + 228] = arg1.length
                mem[(32 * arg1.length) + 260 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                require ext_code.size(stor3)
                call stor3.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 260 len (32 * arg1.length) - floor32(arg1.length)]), eth.balance(this.address), 1
                mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 4 < arg1.length
                _203 = mem[256]
                mem[(32 * arg1.length) + 132] = stor1
                mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
                require ext_code.size(address(_203))
                call address(_203).approve(address arg1, uint256 arg2) with:
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
                require eth.balance(this.address) <= ext_call.return_data[0]
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
            require ext_call.return_data[0] >= arg4
            require 4 < arg1.length
            require ext_code.size(mem[268 len 20])
            call mem[268 len 20].0x70a08231 with:
                 gas gas_remaining wei
                args 0x63825c174ab367968ec60f061753d3bbd36a0d8f
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] <= arg5
            if eth.balance(this.address) >= arg2:
                mem[(32 * arg1.length) + 164] = arg2
                mem[(32 * arg1.length) + 196] = 1
                mem[(32 * arg1.length) + 132] = 96
                mem[(32 * arg1.length) + 228] = arg1.length
                mem[(32 * arg1.length) + 260 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                require ext_code.size(stor3)
                call stor3.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                   value arg2 wei
                     gas gas_remaining wei
                    args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 260 len (32 * arg1.length) - floor32(arg1.length)]), arg2, 1
                mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 4 < arg1.length
                _194 = mem[256]
                mem[(32 * arg1.length) + 132] = stor1
                mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
                require ext_code.size(address(_194))
                call address(_194).approve(address arg1, uint256 arg2) with:
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
                require arg2 <= ext_call.return_data[0]
            else:
                mem[(32 * arg1.length) + 164] = eth.balance(this.address)
                mem[(32 * arg1.length) + 196] = 1
                mem[(32 * arg1.length) + 132] = 96
                mem[(32 * arg1.length) + 228] = arg1.length
                mem[(32 * arg1.length) + 260 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                require ext_code.size(stor3)
                call stor3.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 260 len (32 * arg1.length) - floor32(arg1.length)]), eth.balance(this.address), 1
                mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 4 < arg1.length
                _197 = mem[256]
                mem[(32 * arg1.length) + 132] = stor1
                mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
                require ext_code.size(address(_197))
                call address(_197).approve(address arg1, uint256 arg2) with:
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
                require eth.balance(this.address) <= ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_a75f8dc1(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = arg5.length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    if msg.sender == 0xdead1241f2ee2a7950ad967993efb72d62bf6822:
        require 4 < arg2.length
        _6 = mem[(32 * arg1.length) + 288]
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
        require ext_code.size(stor4)
        call stor4.deposit() with:
           value 1003 * _6 / 1000 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if msg.sender == 0xdead1241f2ee2a7950ad967993efb72d62bf6822:
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
            require ext_code.size(stor4)
            call stor4.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                 gas gas_remaining wei
                args mem[(32 * arg1.length) + (32 * arg2.length) + 204 len 20], mem[(32 * arg1.length) + 160], address(_30), mem[(32 * arg1.length) + 192], _55, _72, address(_90), arg4 << 248, _108, _126, _144
        else:
            if msg.sender == 0xdead3b4bdb1c7160196c41fd1bab168f71486123:
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
                require ext_code.size(stor4)
                call stor4.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                     gas gas_remaining wei
                    args mem[(32 * arg1.length) + (32 * arg2.length) + 204 len 20], mem[(32 * arg1.length) + 160], address(_53), mem[(32 * arg1.length) + 192], _88, _106, address(_124), arg4 << 248, _142, _161, _178
            else:
                require msg.sender == 0xdead27218f7243f71bd4b7bd39c314d5cc66840e
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
                require ext_code.size(stor4)
                call stor4.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                     gas gas_remaining wei
                    args mem[(32 * arg1.length) + (32 * arg2.length) + 204 len 20], mem[(32 * arg1.length) + 160], address(_68), mem[(32 * arg1.length) + 192], _104, _122, address(_140), arg4 << 248, _159, _176, _192
    else:
        if msg.sender == 0xdead3b4bdb1c7160196c41fd1bab168f71486123:
            require 4 < arg2.length
            _11 = mem[(32 * arg1.length) + 288]
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
            require ext_code.size(stor4)
            call stor4.deposit() with:
               value 1003 * _11 / 1000 wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if msg.sender == 0xdead1241f2ee2a7950ad967993efb72d62bf6822:
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
                require ext_code.size(stor4)
                call stor4.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                     gas gas_remaining wei
                    args mem[(32 * arg1.length) + (32 * arg2.length) + 204 len 20], mem[(32 * arg1.length) + 160], address(_49), mem[(32 * arg1.length) + 192], _84, _102, address(_120), arg4 << 248, _138, _157, _173
            else:
                if msg.sender == 0xdead3b4bdb1c7160196c41fd1bab168f71486123:
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
                    require ext_code.size(stor4)
                    call stor4.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                         gas gas_remaining wei
                        args mem[(32 * arg1.length) + (32 * arg2.length) + 204 len 20], mem[(32 * arg1.length) + 160], address(_82), mem[(32 * arg1.length) + 192], _118, _136, address(_155), arg4 << 248, _171, _190, _202
                else:
                    require msg.sender == 0xdead27218f7243f71bd4b7bd39c314d5cc66840e
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
                    require ext_code.size(stor4)
                    call stor4.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                         gas gas_remaining wei
                        args mem[(32 * arg1.length) + (32 * arg2.length) + 204 len 20], mem[(32 * arg1.length) + 160], address(_98), mem[(32 * arg1.length) + 192], _134, _153, address(_169), arg4 << 248, _188, _200, _213
        else:
            require msg.sender == 0xdead27218f7243f71bd4b7bd39c314d5cc66840e
            require 4 < arg2.length
            _12 = mem[(32 * arg1.length) + 288]
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
            require ext_code.size(stor4)
            call stor4.deposit() with:
               value 1003 * _12 / 1000 wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if msg.sender == 0xdead1241f2ee2a7950ad967993efb72d62bf6822:
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
                require ext_code.size(stor4)
                call stor4.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                     gas gas_remaining wei
                    args mem[(32 * arg1.length) + (32 * arg2.length) + 204 len 20], mem[(32 * arg1.length) + 160], address(_60), mem[(32 * arg1.length) + 192], _96, _114, address(_132), arg4 << 248, _151, _167, _185
            else:
                if msg.sender == 0xdead3b4bdb1c7160196c41fd1bab168f71486123:
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
                    require ext_code.size(stor4)
                    call stor4.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                         gas gas_remaining wei
                        args mem[(32 * arg1.length) + (32 * arg2.length) + 204 len 20], mem[(32 * arg1.length) + 160], address(_94), mem[(32 * arg1.length) + 192], _130, _149, address(_165), arg4 << 248, _183, _198, _210
                else:
                    require msg.sender == 0xdead27218f7243f71bd4b7bd39c314d5cc66840e
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
                    require ext_code.size(stor4)
                    call stor4.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                         gas gas_remaining wei
                        args mem[(32 * arg1.length) + (32 * arg2.length) + 204 len 20], mem[(32 * arg1.length) + 160], address(_110), mem[(32 * arg1.length) + 192], _147, _163, address(_181), arg4 << 248, _196, _208, _218
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require 1 < arg3.length
    require ext_code.size(stor4)
    call stor4.0xf7888aec with:
         gas gas_remaining wei
        args address(mem[(32 * arg1.length) + (32 * arg2.length) + 224]), this.address
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 1 < arg3.length
    require ext_code.size(stor4)
    call stor4.0x9e281a98 with:
         gas gas_remaining wei
        args address(mem[(32 * arg1.length) + (32 * arg2.length) + 224]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require 0 < arg1.length
    require ext_code.size(mem[140 len 20])
    call mem[140 len 20].approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor3, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 260] = ext_call.return_data[0]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 292] = 1
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 228] = 96
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 356 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(stor3)
    call stor3.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
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



}
