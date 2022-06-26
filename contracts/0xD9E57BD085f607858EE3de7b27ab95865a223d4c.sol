contract main {




// =====================  Runtime code  =====================


array of struct stor0;
uint256 defaultAmount;
address stor2;
address stor3;
uint256 stor4;
uint256 stor5;

function defaultAmount() {
    return defaultAmount
}

function destroy(address arg1) {
    require msg.sender == 0x54c676cddc496ecbd20511a5c143cac2cbca6b3f
    selfdestruct(arg1)
}

function _fallback() payable {
  stop
}

function sqrt(uint256 arg1) {
    if not arg1:
        return 0
    if arg1 <= 3:
        return 1
    s = arg1 + 1 / 2
    t = arg1
    while s < t:
        require s
        s = (arg1 / s) + s / 2
        t = s
        continue 
    return t
}

function sub_0912ea92(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require 0 < arg1.length
    require 1 < arg1.length
    _5 = mem[160]
    mem[(32 * arg1.length) + 164] = mem[172 len 20]
    mem[(32 * arg1.length) + 196] = arg3
    require ext_code.size(stor3)
    call stor3.getReturn(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(mem[128]), address(_5), arg3
    mem[(32 * arg1.length) + 128 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require 4 < arg1.length
    require ext_code.size(mem[268 len 20])
    call mem[268 len 20].0x313ce567 with:
         gas gas_remaining wei
    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 2 < arg1.length
    require 4 < arg1.length
    require ext_code.size(arg2)
    call arg2.getReturn(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(mem[192]), address(mem[256]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)
    return (arg3 / ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18))
}

function sub_2c8623e7(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require 0 < arg1.length
    require ext_code.size(mem[140 len 20])
    call mem[140 len 20].0x313ce567 with:
         gas gas_remaining wei
    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0 < arg1.length
    _9 = mem[128]
    require 2 < arg1.length
    _11 = mem[192]
    require 0 < arg1.length
    require ext_code.size(mem[140 len 20])
    call mem[140 len 20].0x313ce567 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 10^(-ext_call.return_data[0] + 18)
    mem[(32 * arg1.length) + 132] = mem[140 len 20]
    mem[(32 * arg1.length) + 164] = address(_11)
    mem[(32 * arg1.length) + 196] = arg3 / 10^(-ext_call.return_data[0] + 18)
    require ext_code.size(arg2)
    call arg2.getReturn(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(_9), address(_11), arg3 / 10^(-ext_call.return_data[0] + 18)
    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 2 < arg1.length
    require 4 < arg1.length
    require ext_code.size(stor3)
    call stor3.getReturn(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(mem[192]), address(mem[256]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require arg3
    return (10^18 * ext_call.return_data[0] / arg3)
}

function sub_071c3c7a(?) {
    mem[96] = arg2
    mem[128] = 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c
    mem[160] = 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c
    mem[192] = 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c
    mem[224] = 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315
    stor0.length = 5
    s = 0
    idx = 96
    while 256 > idx:
        stor0[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 5
    while stor0.length > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    require ext_code.size(stor2)
    call stor2.getExchange(address arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    call arg2.0x313ce567 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[260] = address(ext_call.return_data[0])
    require ext_code.size(arg2)
    call arg2.0x70a08231 with:
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require (1000 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) + (9970 * defaultAmount)
    require (1000 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) + (997 * 2 * 10 * defaultAmount)
    if not stor0.length:
        require 0 < stor0.length
        require 1 < stor0.length
        _158 = mem[320]
        mem[(32 * stor0.length) + 324] = mem[332 len 20]
        mem[(32 * stor0.length) + 356] = defaultAmount
        require ext_code.size(stor3)
        call stor3.getReturn(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(mem[292 len 28]), address(_158), defaultAmount
        mem[(32 * stor0.length) + 288 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require 4 < stor0.length
        require ext_code.size(mem[428 len 20])
        call mem[428 len 20].0x313ce567 with:
             gas gas_remaining wei
        mem[(32 * stor0.length) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 2 < stor0.length
        _171 = mem[352]
        require 4 < stor0.length
        _173 = mem[416]
        mem[(32 * stor0.length) + 324] = mem[428 len 20]
        mem[(32 * stor0.length) + 356] = ext_call.return_data[0]
        require ext_code.size(arg1)
        call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(_171), address(_173), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)
        stor4 = defaultAmount / ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)
        if not stor0.length:
            require 0 < stor0.length
            require 1 < stor0.length
            mem[(64 * stor0.length) + 388] = 2 * defaultAmount
            require ext_code.size(stor3)
            call stor3.getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args _173 << 160, address(ext_call.return_data[0 len 28]), 2 * defaultAmount
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require 4 < stor0.length
            require ext_code.size(mem[(32 * stor0.length) + 460 len 20])
            call mem[(32 * stor0.length) + 460 len 20].0x313ce567 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 2 < stor0.length
            require 4 < stor0.length
            require ext_code.size(arg1)
            call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(mem[(32 * stor0.length) + 388 len 28]), address(mem[(32 * stor0.length) + 448]), ext_call.return_data[0]
        else:
            mem[(32 * stor0.length) + 320] = address(stor0.field_0)
            idx = (32 * stor0.length) + 320
            s = 0
            while (64 * stor0.length) + 288 > idx:
                mem[idx + 32] = stor0[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require 0 < stor0.length
            require 1 < stor0.length
            _215 = mem[(32 * stor0.length) + 352]
            mem[(64 * stor0.length) + 324] = mem[(32 * stor0.length) + 332 len 20]
            mem[(64 * stor0.length) + 388] = 2 * defaultAmount
            require ext_code.size(stor3)
            call stor3.getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args mem[(64 * stor0.length) + 324], address(_215), 2 * defaultAmount
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require 4 < stor0.length
            require ext_code.size(mem[(32 * stor0.length) + 460 len 20])
            call mem[(32 * stor0.length) + 460 len 20].0x313ce567 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 2 < stor0.length
            require 4 < stor0.length
            _245 = mem[(32 * stor0.length) + 448]
            mem[(64 * stor0.length) + 324] = mem[(32 * stor0.length) + 396 len 20]
            require ext_code.size(arg1)
            call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args mem[(64 * stor0.length) + 324], address(_245), ext_call.return_data[0]
    else:
        mem[288] = address(stor0.field_0)
        idx = 288
        s = 0
        while (32 * stor0.length) + 256 > idx:
            mem[idx + 32] = stor0[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require 0 < stor0.length
        require 1 < stor0.length
        _218 = mem[320]
        mem[(32 * stor0.length) + 292] = mem[300 len 20]
        mem[(32 * stor0.length) + 324] = address(_218)
        mem[(32 * stor0.length) + 356] = defaultAmount
        require ext_code.size(stor3)
        call stor3.getReturn(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args mem[(32 * stor0.length) + 292], address(_218), defaultAmount
        mem[(32 * stor0.length) + 288 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require 4 < stor0.length
        require ext_code.size(mem[428 len 20])
        call mem[428 len 20].0x313ce567 with:
             gas gas_remaining wei
        mem[(32 * stor0.length) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 2 < stor0.length
        require 4 < stor0.length
        _248 = mem[416]
        mem[(32 * stor0.length) + 292] = mem[364 len 20]
        mem[(32 * stor0.length) + 324] = address(_248)
        mem[(32 * stor0.length) + 356] = ext_call.return_data[0]
        require ext_code.size(arg1)
        call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args mem[(32 * stor0.length) + 292], address(_248), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)
        stor4 = defaultAmount / ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)
        if not stor0.length:
            require 0 < stor0.length
            require 1 < stor0.length
            mem[(64 * stor0.length) + 388] = 2 * defaultAmount
            require ext_code.size(stor3)
            call stor3.getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args _248 << 160, address(ext_call.return_data[0 len 28]), 2 * defaultAmount
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require 4 < stor0.length
            require ext_code.size(mem[(32 * stor0.length) + 460 len 20])
            call mem[(32 * stor0.length) + 460 len 20].0x313ce567 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 2 < stor0.length
            require 4 < stor0.length
            _281 = mem[(32 * stor0.length) + 448]
            mem[(64 * stor0.length) + 324] = mem[(32 * stor0.length) + 396 len 20]
            require ext_code.size(arg1)
            call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args mem[(64 * stor0.length) + 324], address(_281), ext_call.return_data[0]
        else:
            mem[(32 * stor0.length) + 320] = address(stor0.field_0)
            idx = (32 * stor0.length) + 320
            s = 0
            while (64 * stor0.length) + 288 > idx:
                mem[idx + 32] = stor0[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require 0 < stor0.length
            require 1 < stor0.length
            _295 = mem[(32 * stor0.length) + 352]
            mem[(64 * stor0.length) + 324] = mem[(32 * stor0.length) + 332 len 20]
            mem[(64 * stor0.length) + 388] = 2 * defaultAmount
            require ext_code.size(stor3)
            call stor3.getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args mem[(64 * stor0.length) + 324], address(_295), 2 * defaultAmount
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require 4 < stor0.length
            require ext_code.size(mem[(32 * stor0.length) + 460 len 20])
            call mem[(32 * stor0.length) + 460 len 20].0x313ce567 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 2 < stor0.length
            require 4 < stor0.length
            _310 = mem[(32 * stor0.length) + 448]
            mem[(64 * stor0.length) + 324] = mem[(32 * stor0.length) + 396 len 20]
            require ext_code.size(arg1)
            call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args mem[(64 * stor0.length) + 324], address(_310), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)
    stor5 = 2 * defaultAmount / ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)
    if stor4 >= 9970 * defaultAmount * eth.balance(ext_call.return_data[0]) / (1000 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) + (9970 * defaultAmount):
        return stor4, 
               stor5,
               address(ext_call.return_data[0]),
               9970 * defaultAmount * eth.balance(ext_call.return_data[0]) / (1000 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) + (9970 * defaultAmount),
               997 * 2 * 10 * defaultAmount * eth.balance(ext_call.return_data[0]) / (1000 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) + (997 * 2 * 10 * defaultAmount)
    require 2 * stor5 + (9970 * defaultAmount * eth.balance(ext_call.return_data[0]) / (1000 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) + (9970 * defaultAmount)) - stor4 - (997 * 2 * 10 * defaultAmount * eth.balance(ext_call.return_data[0]) / (1000 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) + (997 * 2 * 10 * defaultAmount))
    if (10^18 * stor5) + (10^18 * 2 * 9970 * defaultAmount * eth.balance(ext_call.return_data[0]) / (1000 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) + (9970 * defaultAmount)) - (10^18 * 2 * stor4) - (10^18 * 997 * 2 * 10 * defaultAmount * eth.balance(ext_call.return_data[0]) / (1000 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) + (997 * 2 * 10 * defaultAmount)) / 2 * stor5 + (9970 * defaultAmount * eth.balance(ext_call.return_data[0]) / (1000 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) + (9970 * defaultAmount)) - stor4 - (997 * 2 * 10 * defaultAmount * eth.balance(ext_call.return_data[0]) / (1000 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) + (997 * 2 * 10 * defaultAmount)) <= 0:
        return stor4, 
               stor5,
               address(ext_call.return_data[0]),
               9970 * defaultAmount * eth.balance(ext_call.return_data[0]) / (1000 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) + (9970 * defaultAmount),
               997 * 2 * 10 * defaultAmount * eth.balance(ext_call.return_data[0]) / (1000 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) + (997 * 2 * 10 * defaultAmount)
    return 0
}

function sub_778e4cd7(?) {
    mem[96] = arg2
    mem[128] = 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c
    mem[160] = 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c
    mem[192] = 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c
    mem[224] = 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315
    stor0.length = 5
    s = 0
    idx = 96
    while 256 > idx:
        stor0[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 5
    while stor0.length > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    require ext_code.size(stor2)
    call stor2.getExchange(address arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    call arg2.0x313ce567 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[260] = address(ext_call.return_data[0])
    require ext_code.size(arg2)
    call arg2.0x70a08231 with:
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)
    require 997 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)
    require (1000 * eth.balance(ext_call.return_data[0])) + (997 * 2 * defaultAmount)
    require 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * 2 * defaultAmount)
    if not stor0.length:
        require 0 < stor0.length
        require ext_code.size(mem[300 len 20])
        call mem[300 len 20].0x313ce567 with:
             gas gas_remaining wei
        mem[(32 * stor0.length) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0 < stor0.length
        _186 = 0, mem[292 len 28]
        require 2 < stor0.length
        _188 = mem[352]
        require 0 < stor0.length
        require ext_code.size(mem[300 len 20])
        call mem[300 len 20].0x313ce567 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 10^(-ext_call.return_data[0] + 18)
        mem[(32 * stor0.length) + 292] = mem[300 len 20]
        mem[(32 * stor0.length) + 324] = address(_188)
        mem[(32 * stor0.length) + 356] = defaultAmount / 10^(-ext_call.return_data[0] + 18)
        require ext_code.size(arg1)
        call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(_186), address(_188), defaultAmount / 10^(-ext_call.return_data[0] + 18)
        mem[(32 * stor0.length) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 2 < stor0.length
        _200 = mem[352]
        require 4 < stor0.length
        _202 = mem[416]
        mem[(32 * stor0.length) + 324] = mem[428 len 20]
        mem[(32 * stor0.length) + 356] = ext_call.return_data[0]
        require ext_code.size(stor3)
        call stor3.getReturn(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(_200), address(_202), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require defaultAmount
        stor4 = 10^18 * ext_call.return_data[0] / defaultAmount
        if not stor0.length:
            require 0 < stor0.length
            require ext_code.size(address(ext_call.return_data[32]))
            call address(ext_call.return_data[32]).0x313ce567 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 0 < stor0.length
            require 2 < stor0.length
            _219 = ext_call.return_data[28 len 4], mem[(32 * stor0.length) + 388 len 28]
            require 0 < stor0.length
            require ext_code.size(address(ext_call.return_data[32]))
            call address(ext_call.return_data[32]).0x313ce567 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 10^(-ext_call.return_data[0] + 18)
            mem[(64 * stor0.length) + 388] = 2 * defaultAmount / 10^(-ext_call.return_data[0] + 18)
            require ext_code.size(arg1)
            call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[32]), address(_219), 2 * defaultAmount / 10^(-ext_call.return_data[0] + 18)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 2 < stor0.length
            require 4 < stor0.length
            require ext_code.size(stor3)
            call stor3.getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(mem[(32 * stor0.length) + 388 len 28]), address(mem[(32 * stor0.length) + 448]), ext_call.return_data[0]
        else:
            mem[(32 * stor0.length) + 320] = address(stor0.field_0)
            idx = (32 * stor0.length) + 320
            s = 0
            while (64 * stor0.length) + 288 > idx:
                mem[idx + 32] = stor0[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require 0 < stor0.length
            require ext_code.size(mem[(32 * stor0.length) + 332 len 20])
            call mem[(32 * stor0.length) + 332 len 20].0x313ce567 with:
                 gas gas_remaining wei
            mem[(64 * stor0.length) + 320] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 0 < stor0.length
            require 2 < stor0.length
            _263 = mem[(32 * stor0.length) + 384]
            require 0 < stor0.length
            require ext_code.size(mem[(32 * stor0.length) + 332 len 20])
            call mem[(32 * stor0.length) + 332 len 20].0x313ce567 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 10^(-ext_call.return_data[0] + 18)
            mem[(64 * stor0.length) + 324] = mem[(32 * stor0.length) + 332 len 20]
            mem[(64 * stor0.length) + 388] = 2 * defaultAmount / 10^(-ext_call.return_data[0] + 18)
            require ext_code.size(arg1)
            call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args mem[(64 * stor0.length) + 324], address(_263), 2 * defaultAmount / 10^(-ext_call.return_data[0] + 18)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 2 < stor0.length
            require 4 < stor0.length
            _291 = mem[(32 * stor0.length) + 448]
            mem[(64 * stor0.length) + 324] = mem[(32 * stor0.length) + 396 len 20]
            require ext_code.size(stor3)
            call stor3.getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args mem[(64 * stor0.length) + 324], address(_291), ext_call.return_data[0]
    else:
        mem[288] = address(stor0.field_0)
        idx = 288
        s = 0
        while (32 * stor0.length) + 256 > idx:
            mem[idx + 32] = stor0[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require 0 < stor0.length
        require ext_code.size(mem[300 len 20])
        call mem[300 len 20].0x313ce567 with:
             gas gas_remaining wei
        mem[(32 * stor0.length) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0 < stor0.length
        require 2 < stor0.length
        _265 = mem[352]
        require 0 < stor0.length
        require ext_code.size(mem[300 len 20])
        call mem[300 len 20].0x313ce567 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 10^(-ext_call.return_data[0] + 18)
        mem[(32 * stor0.length) + 292] = mem[300 len 20]
        mem[(32 * stor0.length) + 324] = address(_265)
        mem[(32 * stor0.length) + 356] = defaultAmount / 10^(-ext_call.return_data[0] + 18)
        require ext_code.size(arg1)
        call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args mem[(32 * stor0.length) + 292], address(_265), defaultAmount / 10^(-ext_call.return_data[0] + 18)
        mem[(32 * stor0.length) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 2 < stor0.length
        require 4 < stor0.length
        _294 = mem[416]
        mem[(32 * stor0.length) + 292] = mem[364 len 20]
        mem[(32 * stor0.length) + 324] = address(_294)
        mem[(32 * stor0.length) + 356] = ext_call.return_data[0]
        require ext_code.size(stor3)
        call stor3.getReturn(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args mem[(32 * stor0.length) + 292], address(_294), ext_call.return_data[0]
        mem[(32 * stor0.length) + 288 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require defaultAmount
        stor4 = 10^18 * ext_call.return_data[0] / defaultAmount
        if not stor0.length:
            require 0 < stor0.length
            require ext_code.size(ext_call.return_data[44 len 20])
            call ext_call.return_data[44 len 20].0x313ce567 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 0 < stor0.length
            require 2 < stor0.length
            _320 = ext_call.return_data[28 len 4], mem[(32 * stor0.length) + 388 len 28]
            require 0 < stor0.length
            require ext_code.size(ext_call.return_data[44 len 20])
            call ext_call.return_data[44 len 20].0x313ce567 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 10^(-ext_call.return_data[0] + 18)
            mem[(64 * stor0.length) + 388] = 2 * defaultAmount / 10^(-ext_call.return_data[0] + 18)
            require ext_code.size(arg1)
            call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args ext_call.return_data[44 len 20], address(_320), 2 * defaultAmount / 10^(-ext_call.return_data[0] + 18)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 2 < stor0.length
            require 4 < stor0.length
            _334 = mem[(32 * stor0.length) + 448]
            mem[(64 * stor0.length) + 324] = mem[(32 * stor0.length) + 396 len 20]
            require ext_code.size(stor3)
            call stor3.getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args mem[(64 * stor0.length) + 324], address(_334), ext_call.return_data[0]
        else:
            mem[(32 * stor0.length) + 320] = address(stor0.field_0)
            idx = (32 * stor0.length) + 320
            s = 0
            while (64 * stor0.length) + 288 > idx:
                mem[idx + 32] = stor0[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require 0 < stor0.length
            require ext_code.size(mem[(32 * stor0.length) + 332 len 20])
            call mem[(32 * stor0.length) + 332 len 20].0x313ce567 with:
                 gas gas_remaining wei
            mem[(64 * stor0.length) + 320] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 0 < stor0.length
            require 2 < stor0.length
            _355 = mem[(32 * stor0.length) + 384]
            require 0 < stor0.length
            require ext_code.size(mem[(32 * stor0.length) + 332 len 20])
            call mem[(32 * stor0.length) + 332 len 20].0x313ce567 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 10^(-ext_call.return_data[0] + 18)
            mem[(64 * stor0.length) + 324] = mem[(32 * stor0.length) + 332 len 20]
            mem[(64 * stor0.length) + 388] = 2 * defaultAmount / 10^(-ext_call.return_data[0] + 18)
            require ext_code.size(arg1)
            call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args mem[(64 * stor0.length) + 324], address(_355), 2 * defaultAmount / 10^(-ext_call.return_data[0] + 18)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 2 < stor0.length
            require 4 < stor0.length
            _369 = mem[(32 * stor0.length) + 448]
            mem[(64 * stor0.length) + 324] = mem[(32 * stor0.length) + 396 len 20]
            require ext_code.size(stor3)
            call stor3.getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args mem[(64 * stor0.length) + 324], address(_369), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require 2 * defaultAmount
    stor5 = 10^18 * ext_call.return_data[0] / 2 * defaultAmount
    if stor4 <= 10^18 * defaultAmount / 997 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount):
        return stor4, 
               stor5,
               address(ext_call.return_data[0]),
               10^18 * defaultAmount / 997 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount),
               10^18 * 2 * defaultAmount / 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * 2 * defaultAmount)
    require 2 * stor5 + (10^18 * defaultAmount / 997 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) - stor4 - (10^18 * 2 * defaultAmount / 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * 2 * defaultAmount))
    if (10^18 * 2 * stor4) - (10^18 * 2 * 10^18 * defaultAmount / 997 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) + (10^18 * stor5) - (10^18 * 10^18 * 2 * defaultAmount / 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * 2 * defaultAmount)) / 2 * stor5 + (10^18 * defaultAmount / 997 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) - stor4 - (10^18 * 2 * defaultAmount / 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * 2 * defaultAmount)) <= 0:
        return stor4, 
               stor5,
               address(ext_call.return_data[0]),
               10^18 * defaultAmount / 997 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount),
               10^18 * 2 * defaultAmount / 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * 2 * defaultAmount)
    return 0
}



}
