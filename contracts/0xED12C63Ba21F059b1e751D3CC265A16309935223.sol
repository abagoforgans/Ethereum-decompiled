contract main {




// =====================  Runtime code  =====================


address stor1;
address stor2;
address stor3;
address stor4;
address stor5;

function destroy(address arg1) {
    require msg.sender == 0xdead1241f2ee2a7950ad967993efb72d62bf6822
    selfdestruct(arg1)
}

function _fallback() payable {
    require tx.origin == 0xdead1241f2ee2a7950ad967993efb72d62bf6822
}

function withdraw(uint256 arg1) {
    require msg.sender == 0xdead1241f2ee2a7950ad967993efb72d62bf6822
    call 0xdead1241f2ee2a7950ad967993efb72d62bf6822 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_84d43a47(?) {
    require msg.sender == 0xdead1241f2ee2a7950ad967993efb72d62bf6822
    require ext_code.size(stor5)
    call stor5.deposit() with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        return 0
}

function withdrawDelta(uint256 arg1) {
    require msg.sender == 0xdead1241f2ee2a7950ad967993efb72d62bf6822
    require ext_code.size(stor5)
    call stor5.0x2e1a7d4d with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        return 0
}

function withdrawToken(address arg1, uint256 arg2) {
    require msg.sender == 0xdead1241f2ee2a7950ad967993efb72d62bf6822
    require ext_code.size(stor5)
    call stor5.0x9e281a98 with:
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
    require msg.sender == 0xdead1241f2ee2a7950ad967993efb72d62bf6822
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
    require ext_code.size(stor5)
    call stor5.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
         gas gas_remaining wei
        args mem[(32 * arg1.length) + 172 len 20], mem[128], address(mem[(32 * arg1.length) + 192]), mem[160], mem[192], mem[224], address(mem[(32 * arg1.length) + 224]), arg3 << 248, mem[(32 * arg1.length) + (32 * arg2.length) + 192], mem[(32 * arg1.length) + (32 * arg2.length) + 224], mem[256]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_effc7f22(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = arg5.length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    require msg.sender == 0xdead1241f2ee2a7950ad967993efb72d62bf6822
    require 4 < arg2.length
    _6 = mem[(32 * arg1.length) + 288]
    require 4 < arg2.length
    _8 = mem[(32 * arg1.length) + 288]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 260] = mem[(32 * arg1.length) + 288]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 292] = 1
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 228] = 96
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 356 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(stor4)
    call stor4.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
       value _6 wei
         gas gas_remaining wei
        args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + floor32(arg1.length) + 356 len (32 * arg1.length) - floor32(arg1.length)]), _8, 1
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 4 < arg1.length
    _64 = mem[256]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 228] = stor5
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 260] = ext_call.return_data[0]
    require ext_code.size(address(_64))
    call address(_64).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor5, ext_call.return_data[0]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 4 < arg1.length
    _70 = mem[256]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = 0x338b5dea00000000000000000000000000000000000000000000000000000000
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 228] = address(_70)
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 260] = ext_call.return_data[0]
    require ext_code.size(stor5)
    call stor5.depositToken(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(_70), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require 4 < arg2.length
    mem[(32 * arg1.length) + 288] = 997 * ext_call.return_data[0] / 1000
    require msg.sender == 0xdead1241f2ee2a7950ad967993efb72d62bf6822
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
    require ext_code.size(stor5)
    call stor5.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
         gas gas_remaining wei
        args mem[(32 * arg1.length) + (32 * arg2.length) + 204 len 20], mem[(32 * arg1.length) + 160], address(mem[(32 * arg1.length) + (32 * arg2.length) + 224]), mem[(32 * arg1.length) + 192], mem[(32 * arg1.length) + 224], mem[(32 * arg1.length) + 256], address(mem[(32 * arg1.length) + (32 * arg2.length) + 256]), arg4 << 248, mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224], mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 256], 997 * ext_call.return_data[0] / 1000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor5)
    call stor5.balanceOf(address arg1, address arg2) with:
         gas gas_remaining wei
        args 0, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 4 < arg2.length
    require 997 * ext_call.return_data[0] / 1000 < ext_call.return_data[0]
    require ext_code.size(stor5)
    call stor5.0x2e1a7d4d with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        return 0
}

function sub_a75f8dc1(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = arg5.length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    require msg.sender == 0xdead1241f2ee2a7950ad967993efb72d62bf6822
    require 4 < arg2.length
    _6 = mem[(32 * arg1.length) + 288]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor5)
    call stor5.deposit() with:
       value 1003 * _6 / 1000 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require msg.sender == 0xdead1241f2ee2a7950ad967993efb72d62bf6822
    require 0 < arg3.length
    require 0 < arg2.length
    require 1 < arg3.length
    _14 = mem[(32 * arg1.length) + (32 * arg2.length) + 224]
    require 1 < arg2.length
    require 2 < arg2.length
    _18 = mem[(32 * arg1.length) + 224]
    require 3 < arg2.length
    _20 = mem[(32 * arg1.length) + 256]
    require 2 < arg3.length
    _22 = mem[(32 * arg1.length) + (32 * arg2.length) + 256]
    require 0 < arg5.length
    _24 = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
    require 1 < arg5.length
    _26 = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 256]
    require 4 < arg2.length
    _28 = mem[(32 * arg1.length) + 288]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = 0xa19b14a00000000000000000000000000000000000000000000000000000000
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 228] = mem[(32 * arg1.length) + (32 * arg2.length) + 204 len 20]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 356] = _18
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 388] = _20
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 420] = address(_22)
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 452] = arg4
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 484] = _24
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 516] = _26
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 548] = _28
    require ext_code.size(stor5)
    call stor5.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
         gas gas_remaining wei
        args mem[(32 * arg1.length) + (32 * arg2.length) + 204 len 20], mem[(32 * arg1.length) + 160], address(_14), mem[(32 * arg1.length) + 192], _18, _20, address(_22), arg4 << 248, _24, _26, _28
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require 1 < arg3.length
    require ext_code.size(stor5)
    call stor5.balanceOf(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(mem[(32 * arg1.length) + (32 * arg2.length) + 224]), this.address
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 1 < arg3.length
    require ext_code.size(stor5)
    call stor5.0x9e281a98 with:
         gas gas_remaining wei
        args address(mem[(32 * arg1.length) + (32 * arg2.length) + 224]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require 0 < arg1.length
    require ext_code.size(mem[140 len 20])
    call mem[140 len 20].approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor4, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 260] = ext_call.return_data[0]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 292] = 1
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 228] = 96
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 356 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(stor4)
    call stor4.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
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

function sub_6f43d4cf(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == 0xdead1241f2ee2a7950ad967993efb72d62bf6822
    require 0 < arg1.length
    require ext_code.size(stor1)
    if eth.balance(this.address) >= arg2:
        call stor1.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(mem[128]), arg2
        mem[(32 * arg1.length) + 128 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require 0 < arg1.length
        require ext_code.size(mem[140 len 20])
        call mem[140 len 20].0x313ce567 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 10^(-ext_call.return_data[0] + 18)
        mem[(32 * arg1.length) + 164] = arg3
        mem[(32 * arg1.length) + 196] = ext_call.return_data[0] * arg2 / 10^18 / 10^(-ext_call.return_data[0] + 18)
        mem[(32 * arg1.length) + 132] = 96
        mem[(32 * arg1.length) + 228] = arg1.length
        mem[(32 * arg1.length) + 260 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        require ext_code.size(stor3)
        call stor3.0x4ed85961 with:
             gas gas_remaining wei
            args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 260 len (32 * arg1.length) - floor32(arg1.length)]), address(arg3), ext_call.return_data[0] * arg2 / 10^18 / 10^(-ext_call.return_data[0] + 18)
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 2 < arg1.length
        require 4 < arg1.length
        require ext_code.size(stor2)
        call stor2.getReturn(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(mem[192]), address(mem[256]), ext_call.return_data[0]
        mem[(32 * arg1.length) + 128 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_call.return_data[0] >= arg2
        require 0 < arg1.length
        require ext_code.size(stor1)
        call stor1.swapEtherToToken(address arg1, uint256 arg2) with:
           value arg2 wei
             gas gas_remaining wei
            args address(mem[128]), ext_call.return_data[0]
    else:
        call stor1.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(mem[128]), eth.balance(this.address)
        mem[(32 * arg1.length) + 128 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require 0 < arg1.length
        require ext_code.size(mem[140 len 20])
        call mem[140 len 20].0x313ce567 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 10^(-ext_call.return_data[0] + 18)
        mem[(32 * arg1.length) + 164] = arg3
        mem[(32 * arg1.length) + 196] = ext_call.return_data[0] * eth.balance(this.address) / 10^18 / 10^(-ext_call.return_data[0] + 18)
        mem[(32 * arg1.length) + 132] = 96
        mem[(32 * arg1.length) + 228] = arg1.length
        mem[(32 * arg1.length) + 260 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        require ext_code.size(stor3)
        call stor3.0x4ed85961 with:
             gas gas_remaining wei
            args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 260 len (32 * arg1.length) - floor32(arg1.length)]), address(arg3), ext_call.return_data[0] * eth.balance(this.address) / 10^18 / 10^(-ext_call.return_data[0] + 18)
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 2 < arg1.length
        require 4 < arg1.length
        require ext_code.size(stor2)
        call stor2.getReturn(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(mem[192]), address(mem[256]), ext_call.return_data[0]
        mem[(32 * arg1.length) + 128 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_call.return_data[0] >= eth.balance(this.address)
        require 0 < arg1.length
        require ext_code.size(stor1)
        call stor1.swapEtherToToken(address arg1, uint256 arg2) with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
            args address(mem[128]), ext_call.return_data[0]
    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0 < arg1.length
    require ext_code.size(mem[140 len 20])
    call mem[140 len 20].approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor4, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg1.length) + 260 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(stor4)
    call stor4.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 260 len (32 * arg1.length) - floor32(arg1.length)]), ext_call.return_data[0], 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_768d5a59(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == 0xdead1241f2ee2a7950ad967993efb72d62bf6822
    require 0 < arg1.length
    require 1 < arg1.length
    require ext_code.size(stor2)
    if eth.balance(this.address) >= arg2:
        call stor2.getReturn(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(mem[128]), address(mem[160]), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        mem[(32 * arg1.length) + 164] = arg3
        mem[(32 * arg1.length) + 196] = ext_call.return_data[0]
        mem[(32 * arg1.length) + 132] = 96
        mem[(32 * arg1.length) + 228] = arg1.length
        mem[(32 * arg1.length) + 260 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        require ext_code.size(stor3)
        call stor3.0xcf93ebe3 with:
             gas gas_remaining wei
            args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 260 len (32 * arg1.length) - floor32(arg1.length)]), address(arg3), ext_call.return_data[0]
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 4 < arg1.length
        _112 = mem[256]
        mem[(32 * arg1.length) + 164] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
        mem[(32 * arg1.length) + 196] = ext_call.return_data[0]
        require ext_code.size(stor1)
        call stor1.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(_112), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, ext_call.return_data[0]
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
        mem[(32 * arg1.length) + 164] = arg2
        mem[(32 * arg1.length) + 196] = 1
        mem[(32 * arg1.length) + 132] = 96
        mem[(32 * arg1.length) + 228] = arg1.length
        mem[(32 * arg1.length) + 260 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        require ext_code.size(stor4)
        call stor4.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
           value arg2 wei
             gas gas_remaining wei
            args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 260 len (32 * arg1.length) - floor32(arg1.length)]), arg2, 1
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 4 < arg1.length
        _188 = mem[256]
        mem[(32 * arg1.length) + 132] = stor1
        mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
        require ext_code.size(address(_188))
        call address(_188).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor1, ext_call.return_data[0]
    else:
        call stor2.getReturn(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(mem[128]), address(mem[160]), eth.balance(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        mem[(32 * arg1.length) + 164] = arg3
        mem[(32 * arg1.length) + 196] = ext_call.return_data[0]
        mem[(32 * arg1.length) + 132] = 96
        mem[(32 * arg1.length) + 228] = arg1.length
        mem[(32 * arg1.length) + 260 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        require ext_code.size(stor3)
        call stor3.0xcf93ebe3 with:
             gas gas_remaining wei
            args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 260 len (32 * arg1.length) - floor32(arg1.length)]), address(arg3), ext_call.return_data[0]
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 4 < arg1.length
        _115 = mem[256]
        mem[(32 * arg1.length) + 164] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
        mem[(32 * arg1.length) + 196] = ext_call.return_data[0]
        require ext_code.size(stor1)
        call stor1.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(_115), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, ext_call.return_data[0]
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
        require ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * ext_call.return_data[0] / 10^18 >= eth.balance(this.address)
        mem[(32 * arg1.length) + 164] = eth.balance(this.address)
        mem[(32 * arg1.length) + 196] = 1
        mem[(32 * arg1.length) + 132] = 96
        mem[(32 * arg1.length) + 228] = arg1.length
        mem[(32 * arg1.length) + 260 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        require ext_code.size(stor4)
        call stor4.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
            args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 260 len (32 * arg1.length) - floor32(arg1.length)]), eth.balance(this.address), 1
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 4 < arg1.length
        _191 = mem[256]
        mem[(32 * arg1.length) + 132] = stor1
        mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
        require ext_code.size(address(_191))
        call address(_191).approve(address arg1, uint256 arg2) with:
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
        args address(mem[256]), ext_call.return_data[0], ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}



}
