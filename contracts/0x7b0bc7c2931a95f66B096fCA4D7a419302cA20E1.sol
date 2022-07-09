contract main {




// =====================  Runtime code  =====================


#
#  - sub_a75f8dc1(?)
#
address stor0;
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

function sub_2882152f(?) {
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
    require ext_code.size(stor2)
    call stor2.availableVolume(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10) with:
         gas gas_remaining wei
        args mem[(32 * arg1.length) + 172 len 20], mem[128], address(mem[(32 * arg1.length) + 192]), mem[160], mem[192], mem[224], address(mem[(32 * arg1.length) + 224]), arg3 << 248, mem[(32 * arg1.length) + (32 * arg2.length) + 192], mem[(32 * arg1.length) + (32 * arg2.length) + 224]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_0f7e985c(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if stor3 != msg.sender:
        if stor4 != msg.sender:
            require msg.sender == stor5
    require ext_code.size(arg3)
    if eth.balance(this.address) >= arg2:
        call arg3.ethToTokenSwapInput(uint256 arg1, uint256 arg2) with:
           value arg2 wei
             gas gas_remaining wei
            args 1, 100000000 * 10^18
    else:
        call arg3.ethToTokenSwapInput(uint256 arg1, uint256 arg2) with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
            args 1, 100000000 * 10^18
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
}

function sub_6aac3979(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if stor3 != msg.sender:
        if stor4 != msg.sender:
            require msg.sender == stor5
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
        args ext_call.return_data[0], 1, 100000000 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
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
            args 1, 100000000 * 10^18
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
            args 1, 100000000 * 10^18
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

function sub_86f11a4a(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if stor3 != msg.sender:
        if stor4 != msg.sender:
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
            args ext_call.return_data[0], 1, 100000000 * 10^18
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
            args ext_call.return_data[0], 1, 100000000 * 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] > eth.balance(this.address)
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
        require ext_code.size(mem[268 len 20])
        call mem[268 len 20].0x70a08231 with:
             gas gas_remaining wei
            args 0x63825c174ab367968ec60f061753d3bbd36a0d8f
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= arg4
        require ext_call.return_data[0] <= arg5
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
            _206 = mem[256]
            mem[(32 * arg1.length) + 132] = stor0
            mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
            require ext_code.size(address(_206))
            call address(_206).approve(address arg1, uint256 arg2) with:
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
            _209 = mem[256]
            mem[(32 * arg1.length) + 132] = stor0
            mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
            require ext_code.size(address(_209))
            call address(_209).approve(address arg1, uint256 arg2) with:
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
            require ext_code.size(mem[268 len 20])
            call mem[268 len 20].0x70a08231 with:
                 gas gas_remaining wei
                args 0x63825c174ab367968ec60f061753d3bbd36a0d8f
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] >= arg4
            require ext_call.return_data[0] <= arg5
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
                _200 = mem[256]
                mem[(32 * arg1.length) + 132] = stor0
                mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
                require ext_code.size(address(_200))
                call address(_200).approve(address arg1, uint256 arg2) with:
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
                _203 = mem[256]
                mem[(32 * arg1.length) + 132] = stor0
                mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
                require ext_code.size(address(_203))
                call address(_203).approve(address arg1, uint256 arg2) with:
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
            require ext_code.size(mem[268 len 20])
            call mem[268 len 20].0x70a08231 with:
                 gas gas_remaining wei
                args 0x63825c174ab367968ec60f061753d3bbd36a0d8f
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] >= arg4
            require ext_call.return_data[0] <= arg5
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
                _194 = mem[256]
                mem[(32 * arg1.length) + 132] = stor0
                mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
                require ext_code.size(address(_194))
                call address(_194).approve(address arg1, uint256 arg2) with:
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
                _197 = mem[256]
                mem[(32 * arg1.length) + 132] = stor0
                mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
                require ext_code.size(address(_197))
                call address(_197).approve(address arg1, uint256 arg2) with:
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
        if msg.sender == stor3:
            require 0 < arg3.length
            require 0 < arg2.length
            require 1 < arg3.length
            _1242 = mem[(32 * arg1.length) + (32 * arg2.length) + 224]
            require 1 < arg2.length
            require 2 < arg2.length
            _1278 = mem[(32 * arg1.length) + 224]
            require 3 < arg2.length
            _1296 = mem[(32 * arg1.length) + 256]
            require 2 < arg3.length
            _1314 = mem[(32 * arg1.length) + (32 * arg2.length) + 256]
            require 0 < arg5.length
            _1332 = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
            require 1 < arg5.length
            _1352 = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 256]
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 228] = mem[(32 * arg1.length) + (32 * arg2.length) + 204 len 20]
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 260] = mem[(32 * arg1.length) + 160]
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 292] = address(_1242)
            require ext_code.size(stor2)
            call stor2.availableVolume(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10) with:
                 gas gas_remaining wei
                args mem[(32 * arg1.length) + (32 * arg2.length) + 204 len 20], mem[(32 * arg1.length) + 160], address(_1242), mem[(32 * arg1.length) + 192], _1278, _1296, address(_1314), arg4 << 248, _1332, _1352
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] >= 997 * ext_call.return_data[0] / 1000
            require 4 < arg1.length
            _1418 = mem[256]
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 228] = stor2
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 260] = ext_call.return_data[0]
            require ext_code.size(address(_1418))
            call address(_1418).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor2, ext_call.return_data[0]
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 4 < arg1.length
            _1463 = mem[256]
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = 0x338b5dea00000000000000000000000000000000000000000000000000000000
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 228] = address(_1463)
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 260] = ext_call.return_data[0]
            require ext_code.size(stor2)
            call stor2.depositToken(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(_1463), ext_call.return_data[0]
        else:
            if msg.sender == stor4:
                require 0 < arg3.length
                require 0 < arg2.length
                require 1 < arg3.length
                _1276 = mem[(32 * arg1.length) + (32 * arg2.length) + 224]
                require 1 < arg2.length
                require 2 < arg2.length
                _1312 = mem[(32 * arg1.length) + 224]
                require 3 < arg2.length
                _1330 = mem[(32 * arg1.length) + 256]
                require 2 < arg3.length
                _1350 = mem[(32 * arg1.length) + (32 * arg2.length) + 256]
                require 0 < arg5.length
                _1365 = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                require 1 < arg5.length
                _1381 = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 256]
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 228] = mem[(32 * arg1.length) + (32 * arg2.length) + 204 len 20]
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 260] = mem[(32 * arg1.length) + 160]
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 292] = address(_1276)
                require ext_code.size(stor2)
                call stor2.availableVolume(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10) with:
                     gas gas_remaining wei
                    args mem[(32 * arg1.length) + (32 * arg2.length) + 204 len 20], mem[(32 * arg1.length) + 160], address(_1276), mem[(32 * arg1.length) + 192], _1312, _1330, address(_1350), arg4 << 248, _1365, _1381
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] >= 997 * ext_call.return_data[0] / 1000
                require 4 < arg1.length
                _1435 = mem[256]
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 228] = stor2
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 260] = ext_call.return_data[0]
                require ext_code.size(address(_1435))
                call address(_1435).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor2, ext_call.return_data[0]
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 4 < arg1.length
                _1487 = mem[256]
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = 0x338b5dea00000000000000000000000000000000000000000000000000000000
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 228] = address(_1487)
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 260] = ext_call.return_data[0]
                require ext_code.size(stor2)
                call stor2.depositToken(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(_1487), ext_call.return_data[0]
            else:
                require msg.sender == stor5
                require 0 < arg3.length
                require 0 < arg2.length
                require 1 < arg3.length
                _1292 = mem[(32 * arg1.length) + (32 * arg2.length) + 224]
                require 1 < arg2.length
                require 2 < arg2.length
                _1328 = mem[(32 * arg1.length) + 224]
                require 3 < arg2.length
                _1348 = mem[(32 * arg1.length) + 256]
                require 2 < arg3.length
                _1363 = mem[(32 * arg1.length) + (32 * arg2.length) + 256]
                require 0 < arg5.length
                _1379 = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                require 1 < arg5.length
                _1393 = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 256]
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 228] = mem[(32 * arg1.length) + (32 * arg2.length) + 204 len 20]
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 260] = mem[(32 * arg1.length) + 160]
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 292] = address(_1292)
                require ext_code.size(stor2)
                call stor2.availableVolume(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10) with:
                     gas gas_remaining wei
                    args mem[(32 * arg1.length) + (32 * arg2.length) + 204 len 20], mem[(32 * arg1.length) + 160], address(_1292), mem[(32 * arg1.length) + 192], _1328, _1348, address(_1363), arg4 << 248, _1379, _1393
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] >= 997 * ext_call.return_data[0] / 1000
                require 4 < arg1.length
                _1449 = mem[256]
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 228] = stor2
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 260] = ext_call.return_data[0]
                require ext_code.size(address(_1449))
                call address(_1449).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor2, ext_call.return_data[0]
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 4 < arg1.length
                _1498 = mem[256]
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = 0x338b5dea00000000000000000000000000000000000000000000000000000000
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 228] = address(_1498)
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 260] = ext_call.return_data[0]
                require ext_code.size(stor2)
                call stor2.depositToken(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(_1498), ext_call.return_data[0]
    else:
        if msg.sender == stor4:
            require 4 < arg2.length
            _14 = mem[(32 * arg1.length) + 288]
            require 4 < arg2.length
            _18 = mem[(32 * arg1.length) + 288]
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 260] = mem[(32 * arg1.length) + 288]
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
            if msg.sender == stor3:
                require 0 < arg3.length
                require 0 < arg2.length
                require 1 < arg3.length
                _1237 = mem[(32 * arg1.length) + (32 * arg2.length) + 224]
                require 1 < arg2.length
                require 2 < arg2.length
                _1272 = mem[(32 * arg1.length) + 224]
                require 3 < arg2.length
                _1290 = mem[(32 * arg1.length) + 256]
                require 2 < arg3.length
                _1308 = mem[(32 * arg1.length) + (32 * arg2.length) + 256]
                require 0 < arg5.length
                _1326 = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                require 1 < arg5.length
                _1345 = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 256]
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 228] = mem[(32 * arg1.length) + (32 * arg2.length) + 204 len 20]
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 260] = mem[(32 * arg1.length) + 160]
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 292] = address(_1237)
                require ext_code.size(stor2)
                call stor2.availableVolume(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10) with:
                     gas gas_remaining wei
                    args mem[(32 * arg1.length) + (32 * arg2.length) + 204 len 20], mem[(32 * arg1.length) + 160], address(_1237), mem[(32 * arg1.length) + 192], _1272, _1290, address(_1308), arg4 << 248, _1326, _1345
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] >= 997 * ext_call.return_data[0] / 1000
                require 4 < arg1.length
                _1414 = mem[256]
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 228] = stor2
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 260] = ext_call.return_data[0]
                require ext_code.size(address(_1414))
                call address(_1414).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor2, ext_call.return_data[0]
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 4 < arg1.length
                _1459 = mem[256]
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = 0x338b5dea00000000000000000000000000000000000000000000000000000000
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 228] = address(_1459)
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 260] = ext_call.return_data[0]
                require ext_code.size(stor2)
                call stor2.depositToken(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(_1459), ext_call.return_data[0]
            else:
                if msg.sender == stor4:
                    require 0 < arg3.length
                    require 0 < arg2.length
                    require 1 < arg3.length
                    _1270 = mem[(32 * arg1.length) + (32 * arg2.length) + 224]
                    require 1 < arg2.length
                    require 2 < arg2.length
                    _1306 = mem[(32 * arg1.length) + 224]
                    require 3 < arg2.length
                    _1324 = mem[(32 * arg1.length) + 256]
                    require 2 < arg3.length
                    _1343 = mem[(32 * arg1.length) + (32 * arg2.length) + 256]
                    require 0 < arg5.length
                    _1361 = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                    require 1 < arg5.length
                    _1375 = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 256]
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 228] = mem[(32 * arg1.length) + (32 * arg2.length) + 204 len 20]
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 260] = mem[(32 * arg1.length) + 160]
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 292] = address(_1270)
                    require ext_code.size(stor2)
                    call stor2.availableVolume(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10) with:
                         gas gas_remaining wei
                        args mem[(32 * arg1.length) + (32 * arg2.length) + 204 len 20], mem[(32 * arg1.length) + 160], address(_1270), mem[(32 * arg1.length) + 192], _1306, _1324, address(_1343), arg4 << 248, _1361, _1375
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] >= 997 * ext_call.return_data[0] / 1000
                    require 4 < arg1.length
                    _1430 = mem[256]
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 228] = stor2
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 260] = ext_call.return_data[0]
                    require ext_code.size(address(_1430))
                    call address(_1430).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor2, ext_call.return_data[0]
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 4 < arg1.length
                    _1482 = mem[256]
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = 0x338b5dea00000000000000000000000000000000000000000000000000000000
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 228] = address(_1482)
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 260] = ext_call.return_data[0]
                    require ext_code.size(stor2)
                    call stor2.depositToken(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_1482), ext_call.return_data[0]
                else:
                    require msg.sender == stor5
                    require 0 < arg3.length
                    require 0 < arg2.length
                    require 1 < arg3.length
                    _1286 = mem[(32 * arg1.length) + (32 * arg2.length) + 224]
                    require 1 < arg2.length
                    require 2 < arg2.length
                    _1322 = mem[(32 * arg1.length) + 224]
                    require 3 < arg2.length
                    _1341 = mem[(32 * arg1.length) + 256]
                    require 2 < arg3.length
                    _1359 = mem[(32 * arg1.length) + (32 * arg2.length) + 256]
                    require 0 < arg5.length
                    _1373 = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                    require 1 < arg5.length
                    _1389 = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 256]
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 228] = mem[(32 * arg1.length) + (32 * arg2.length) + 204 len 20]
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 260] = mem[(32 * arg1.length) + 160]
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 292] = address(_1286)
                    require ext_code.size(stor2)
                    call stor2.availableVolume(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10) with:
                         gas gas_remaining wei
                        args mem[(32 * arg1.length) + (32 * arg2.length) + 204 len 20], mem[(32 * arg1.length) + 160], address(_1286), mem[(32 * arg1.length) + 192], _1322, _1341, address(_1359), arg4 << 248, _1373, _1389
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] >= 997 * ext_call.return_data[0] / 1000
                    require 4 < arg1.length
                    _1444 = mem[256]
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 228] = stor2
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 260] = ext_call.return_data[0]
                    require ext_code.size(address(_1444))
                    call address(_1444).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor2, ext_call.return_data[0]
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 4 < arg1.length
                    _1494 = mem[256]
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = 0x338b5dea00000000000000000000000000000000000000000000000000000000
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 228] = address(_1494)
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 260] = ext_call.return_data[0]
                    require ext_code.size(stor2)
                    call stor2.depositToken(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_1494), ext_call.return_data[0]
        else:
            require msg.sender == stor5
            require 4 < arg2.length
            _16 = mem[(32 * arg1.length) + 288]
            require 4 < arg2.length
            _24 = mem[(32 * arg1.length) + 288]
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 260] = mem[(32 * arg1.length) + 288]
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
            if msg.sender == stor3:
                require 0 < arg3.length
                require 0 < arg2.length
                require 1 < arg3.length
                _1232 = mem[(32 * arg1.length) + (32 * arg2.length) + 224]
                require 1 < arg2.length
                require 2 < arg2.length
                _1266 = mem[(32 * arg1.length) + 224]
                require 3 < arg2.length
                _1284 = mem[(32 * arg1.length) + 256]
                require 2 < arg3.length
                _1302 = mem[(32 * arg1.length) + (32 * arg2.length) + 256]
                require 0 < arg5.length
                _1320 = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                require 1 < arg5.length
                _1338 = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 256]
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 228] = mem[(32 * arg1.length) + (32 * arg2.length) + 204 len 20]
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 260] = mem[(32 * arg1.length) + 160]
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 292] = address(_1232)
                require ext_code.size(stor2)
                call stor2.availableVolume(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10) with:
                     gas gas_remaining wei
                    args mem[(32 * arg1.length) + (32 * arg2.length) + 204 len 20], mem[(32 * arg1.length) + 160], address(_1232), mem[(32 * arg1.length) + 192], _1266, _1284, address(_1302), arg4 << 248, _1320, _1338
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] >= 997 * ext_call.return_data[0] / 1000
                require 4 < arg1.length
                _1410 = mem[256]
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 228] = stor2
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 260] = ext_call.return_data[0]
                require ext_code.size(address(_1410))
                call address(_1410).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor2, ext_call.return_data[0]
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 4 < arg1.length
                _1455 = mem[256]
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = 0x338b5dea00000000000000000000000000000000000000000000000000000000
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 228] = address(_1455)
                mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 260] = ext_call.return_data[0]
                require ext_code.size(stor2)
                call stor2.depositToken(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(_1455), ext_call.return_data[0]
            else:
                if msg.sender == stor4:
                    require 0 < arg3.length
                    require 0 < arg2.length
                    require 1 < arg3.length
                    _1264 = mem[(32 * arg1.length) + (32 * arg2.length) + 224]
                    require 1 < arg2.length
                    require 2 < arg2.length
                    _1300 = mem[(32 * arg1.length) + 224]
                    require 3 < arg2.length
                    _1318 = mem[(32 * arg1.length) + 256]
                    require 2 < arg3.length
                    _1336 = mem[(32 * arg1.length) + (32 * arg2.length) + 256]
                    require 0 < arg5.length
                    _1357 = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                    require 1 < arg5.length
                    _1369 = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 256]
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 228] = mem[(32 * arg1.length) + (32 * arg2.length) + 204 len 20]
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 260] = mem[(32 * arg1.length) + 160]
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 292] = address(_1264)
                    require ext_code.size(stor2)
                    call stor2.availableVolume(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10) with:
                         gas gas_remaining wei
                        args mem[(32 * arg1.length) + (32 * arg2.length) + 204 len 20], mem[(32 * arg1.length) + 160], address(_1264), mem[(32 * arg1.length) + 192], _1300, _1318, address(_1336), arg4 << 248, _1357, _1369
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] >= 997 * ext_call.return_data[0] / 1000
                    require 4 < arg1.length
                    _1425 = mem[256]
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 228] = stor2
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 260] = ext_call.return_data[0]
                    require ext_code.size(address(_1425))
                    call address(_1425).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor2, ext_call.return_data[0]
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 4 < arg1.length
                    _1477 = mem[256]
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = 0x338b5dea00000000000000000000000000000000000000000000000000000000
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 228] = address(_1477)
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 260] = ext_call.return_data[0]
                    require ext_code.size(stor2)
                    call stor2.depositToken(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_1477), ext_call.return_data[0]
                else:
                    require msg.sender == stor5
                    require 0 < arg3.length
                    require 0 < arg2.length
                    require 1 < arg3.length
                    _1280 = mem[(32 * arg1.length) + (32 * arg2.length) + 224]
                    require 1 < arg2.length
                    require 2 < arg2.length
                    _1316 = mem[(32 * arg1.length) + 224]
                    require 3 < arg2.length
                    _1334 = mem[(32 * arg1.length) + 256]
                    require 2 < arg3.length
                    _1355 = mem[(32 * arg1.length) + (32 * arg2.length) + 256]
                    require 0 < arg5.length
                    _1367 = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                    require 1 < arg5.length
                    _1385 = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 256]
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 228] = mem[(32 * arg1.length) + (32 * arg2.length) + 204 len 20]
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 260] = mem[(32 * arg1.length) + 160]
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 292] = address(_1280)
                    require ext_code.size(stor2)
                    call stor2.availableVolume(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10) with:
                         gas gas_remaining wei
                        args mem[(32 * arg1.length) + (32 * arg2.length) + 204 len 20], mem[(32 * arg1.length) + 160], address(_1280), mem[(32 * arg1.length) + 192], _1316, _1334, address(_1355), arg4 << 248, _1367, _1385
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] >= 997 * ext_call.return_data[0] / 1000
                    require 4 < arg1.length
                    _1439 = mem[256]
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 228] = stor2
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 260] = ext_call.return_data[0]
                    require ext_code.size(address(_1439))
                    call address(_1439).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor2, ext_call.return_data[0]
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 4 < arg1.length
                    _1490 = mem[256]
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = 0x338b5dea00000000000000000000000000000000000000000000000000000000
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 228] = address(_1490)
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 260] = ext_call.return_data[0]
                    require ext_code.size(stor2)
                    call stor2.depositToken(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_1490), ext_call.return_data[0]
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



}
