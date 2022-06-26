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
    return (10^18 * arg3 / ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18))
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
    mem[96] = 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315
    mem[128] = 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c
    mem[160] = 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c
    mem[192] = 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c
    mem[224] = arg2
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
        _174 = mem[320]
        mem[(32 * stor0.length) + 324] = mem[332 len 20]
        mem[(32 * stor0.length) + 356] = defaultAmount
        require ext_code.size(stor3)
        call stor3.getReturn(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(mem[292 len 28]), address(_174), defaultAmount
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
        _187 = mem[352]
        require 4 < stor0.length
        _189 = mem[416]
        mem[(32 * stor0.length) + 324] = mem[428 len 20]
        mem[(32 * stor0.length) + 356] = ext_call.return_data[0]
        require ext_code.size(arg1)
        call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(_187), address(_189), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)
        stor4 = 10^18 * defaultAmount / ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)
        if not stor0.length:
            require 0 < stor0.length
            require 1 < stor0.length
            mem[(64 * stor0.length) + 388] = 2 * defaultAmount
            require ext_code.size(stor3)
            call stor3.getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args _189 << 160, address(ext_call.return_data[0 len 28]), 2 * defaultAmount
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
            _243 = mem[(32 * stor0.length) + 352]
            mem[(64 * stor0.length) + 324] = mem[(32 * stor0.length) + 332 len 20]
            mem[(64 * stor0.length) + 388] = 2 * defaultAmount
            require ext_code.size(stor3)
            call stor3.getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args mem[(64 * stor0.length) + 324], address(_243), 2 * defaultAmount
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
            _273 = mem[(32 * stor0.length) + 448]
            mem[(64 * stor0.length) + 324] = mem[(32 * stor0.length) + 396 len 20]
            require ext_code.size(arg1)
            call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args mem[(64 * stor0.length) + 324], address(_273), ext_call.return_data[0]
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
        _246 = mem[320]
        mem[(32 * stor0.length) + 292] = mem[300 len 20]
        mem[(32 * stor0.length) + 324] = address(_246)
        mem[(32 * stor0.length) + 356] = defaultAmount
        require ext_code.size(stor3)
        call stor3.getReturn(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args mem[(32 * stor0.length) + 292], address(_246), defaultAmount
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
        _276 = mem[416]
        mem[(32 * stor0.length) + 292] = mem[364 len 20]
        mem[(32 * stor0.length) + 324] = address(_276)
        mem[(32 * stor0.length) + 356] = ext_call.return_data[0]
        require ext_code.size(arg1)
        call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args mem[(32 * stor0.length) + 292], address(_276), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)
        stor4 = 10^18 * defaultAmount / ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)
        if not stor0.length:
            require 0 < stor0.length
            require 1 < stor0.length
            mem[(64 * stor0.length) + 388] = 2 * defaultAmount
            require ext_code.size(stor3)
            call stor3.getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args _276 << 160, address(ext_call.return_data[0 len 28]), 2 * defaultAmount
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
            _313 = mem[(32 * stor0.length) + 448]
            mem[(64 * stor0.length) + 324] = mem[(32 * stor0.length) + 396 len 20]
            require ext_code.size(arg1)
            call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args mem[(64 * stor0.length) + 324], address(_313), ext_call.return_data[0]
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
            _347 = mem[(32 * stor0.length) + 352]
            mem[(64 * stor0.length) + 324] = mem[(32 * stor0.length) + 332 len 20]
            mem[(64 * stor0.length) + 388] = 2 * defaultAmount
            require ext_code.size(stor3)
            call stor3.getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args mem[(64 * stor0.length) + 324], address(_347), 2 * defaultAmount
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
            _362 = mem[(32 * stor0.length) + 448]
            mem[(64 * stor0.length) + 324] = mem[(32 * stor0.length) + 396 len 20]
            require ext_code.size(arg1)
            call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args mem[(64 * stor0.length) + 324], address(_362), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)
    stor5 = 10^18 * 2 * defaultAmount / ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)
    if stor4 >= 9970 * defaultAmount * eth.balance(ext_call.return_data[0]) / (1000 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) + (9970 * defaultAmount):
        return stor4, 
               stor5,
               address(ext_call.return_data[0]),
               9970 * defaultAmount * eth.balance(ext_call.return_data[0]) / (1000 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) + (9970 * defaultAmount)
    require stor4
    require stor5
    if not (997000 * 10 * 10^18 * defaultAmount / stor5 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * eth.balance(ext_call.return_data[0])) - (997000 * 10 * 10^18 * defaultAmount / stor4 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * eth.balance(ext_call.return_data[0])):
        if -1000 * eth.balance(ext_call.return_data[0]) / 997 <= 0:
            return stor4, 
                   stor5,
                   address(ext_call.return_data[0]),
                   9970 * defaultAmount * eth.balance(ext_call.return_data[0]) / (1000 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) + (9970 * defaultAmount)
        return -1000 * eth.balance(ext_call.return_data[0]) / 997, 
               0,
               address(ext_call.return_data[0]),
               (9970 * defaultAmount * eth.balance(ext_call.return_data[0]) / (1000 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) + (9970 * defaultAmount)) - stor4
    if (997000 * 10 * 10^18 * defaultAmount / stor5 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * eth.balance(ext_call.return_data[0])) - (997000 * 10 * 10^18 * defaultAmount / stor4 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * eth.balance(ext_call.return_data[0])) <= 3:
        if (-1000 * eth.balance(ext_call.return_data[0])) + 1 / 997 <= 0:
            return stor4, 
                   stor5,
                   address(ext_call.return_data[0]),
                   9970 * defaultAmount * eth.balance(ext_call.return_data[0]) / (1000 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) + (9970 * defaultAmount)
        return (-1000 * eth.balance(ext_call.return_data[0])) + 1 / 997, 
               0,
               address(ext_call.return_data[0]),
               (9970 * defaultAmount * eth.balance(ext_call.return_data[0]) / (1000 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) + (9970 * defaultAmount)) - stor4
    s = (997000 * 10 * 10^18 * defaultAmount / stor5 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * eth.balance(ext_call.return_data[0])) + (-997000 * 10 * 10^18 * defaultAmount / stor4 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * eth.balance(ext_call.return_data[0])) + 1 / 2
    t = (997000 * 10 * 10^18 * defaultAmount / stor5 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * eth.balance(ext_call.return_data[0])) - (997000 * 10 * 10^18 * defaultAmount / stor4 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * eth.balance(ext_call.return_data[0]))
    while s < t:
        require s
        s = ((997000 * 10 * 10^18 * defaultAmount / stor5 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * eth.balance(ext_call.return_data[0])) - (997000 * 10 * 10^18 * defaultAmount / stor4 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) * eth.balance(ext_call.return_data[0])) / s) + s / 2
        t = s
        continue 
    if t - (1000 * eth.balance(ext_call.return_data[0])) / 997 <= 0:
        return stor4, 
               stor5,
               address(ext_call.return_data[0]),
               9970 * defaultAmount * eth.balance(ext_call.return_data[0]) / (1000 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) + (9970 * defaultAmount)
    return t - (1000 * eth.balance(ext_call.return_data[0])) / 997, 
           0,
           address(ext_call.return_data[0]),
           (9970 * defaultAmount * eth.balance(ext_call.return_data[0]) / (1000 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) + (9970 * defaultAmount)) - stor4
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
        _202 = 0, mem[292 len 28]
        require 2 < stor0.length
        _204 = mem[352]
        require 0 < stor0.length
        require ext_code.size(mem[300 len 20])
        call mem[300 len 20].0x313ce567 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 10^(-ext_call.return_data[0] + 18)
        mem[(32 * stor0.length) + 292] = mem[300 len 20]
        mem[(32 * stor0.length) + 324] = address(_204)
        mem[(32 * stor0.length) + 356] = defaultAmount / 10^(-ext_call.return_data[0] + 18)
        require ext_code.size(arg1)
        call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(_202), address(_204), defaultAmount / 10^(-ext_call.return_data[0] + 18)
        mem[(32 * stor0.length) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 2 < stor0.length
        _216 = mem[352]
        require 4 < stor0.length
        _218 = mem[416]
        mem[(32 * stor0.length) + 324] = mem[428 len 20]
        mem[(32 * stor0.length) + 356] = ext_call.return_data[0]
        require ext_code.size(stor3)
        call stor3.getReturn(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(_216), address(_218), ext_call.return_data[0]
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
            _235 = ext_call.return_data[28 len 4], mem[(32 * stor0.length) + 388 len 28]
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
                args address(ext_call.return_data[32]), address(_235), 2 * defaultAmount / 10^(-ext_call.return_data[0] + 18)
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
            _291 = mem[(32 * stor0.length) + 384]
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
                args mem[(64 * stor0.length) + 324], address(_291), 2 * defaultAmount / 10^(-ext_call.return_data[0] + 18)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 2 < stor0.length
            require 4 < stor0.length
            _319 = mem[(32 * stor0.length) + 448]
            mem[(64 * stor0.length) + 324] = mem[(32 * stor0.length) + 396 len 20]
            require ext_code.size(stor3)
            call stor3.getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args mem[(64 * stor0.length) + 324], address(_319), ext_call.return_data[0]
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
        _293 = mem[352]
        require 0 < stor0.length
        require ext_code.size(mem[300 len 20])
        call mem[300 len 20].0x313ce567 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 10^(-ext_call.return_data[0] + 18)
        mem[(32 * stor0.length) + 292] = mem[300 len 20]
        mem[(32 * stor0.length) + 324] = address(_293)
        mem[(32 * stor0.length) + 356] = defaultAmount / 10^(-ext_call.return_data[0] + 18)
        require ext_code.size(arg1)
        call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args mem[(32 * stor0.length) + 292], address(_293), defaultAmount / 10^(-ext_call.return_data[0] + 18)
        mem[(32 * stor0.length) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 2 < stor0.length
        require 4 < stor0.length
        _322 = mem[416]
        mem[(32 * stor0.length) + 292] = mem[364 len 20]
        mem[(32 * stor0.length) + 324] = address(_322)
        mem[(32 * stor0.length) + 356] = ext_call.return_data[0]
        require ext_code.size(stor3)
        call stor3.getReturn(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args mem[(32 * stor0.length) + 292], address(_322), ext_call.return_data[0]
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
            _344 = ext_call.return_data[28 len 4], mem[(32 * stor0.length) + 388 len 28]
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
                args ext_call.return_data[44 len 20], address(_344), 2 * defaultAmount / 10^(-ext_call.return_data[0] + 18)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 2 < stor0.length
            require 4 < stor0.length
            _370 = mem[(32 * stor0.length) + 448]
            mem[(64 * stor0.length) + 324] = mem[(32 * stor0.length) + 396 len 20]
            require ext_code.size(stor3)
            call stor3.getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args mem[(64 * stor0.length) + 324], address(_370), ext_call.return_data[0]
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
            _407 = mem[(32 * stor0.length) + 384]
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
                args mem[(64 * stor0.length) + 324], address(_407), 2 * defaultAmount / 10^(-ext_call.return_data[0] + 18)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 2 < stor0.length
            require 4 < stor0.length
            _421 = mem[(32 * stor0.length) + 448]
            mem[(64 * stor0.length) + 324] = mem[(32 * stor0.length) + 396 len 20]
            require ext_code.size(stor3)
            call stor3.getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args mem[(64 * stor0.length) + 324], address(_421), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require 2 * defaultAmount
    stor5 = 10^18 * ext_call.return_data[0] / 2 * defaultAmount
    if stor4 <= 10^18 * defaultAmount / 997 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount):
        return stor4, 
               stor5,
               address(ext_call.return_data[0]),
               10^18 * defaultAmount / 997 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)
    require stor5
    require stor4
    if not (997000 * 10 * 10^18 * defaultAmount / stor4 * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) - (997000 * 10 * 10^18 * defaultAmount / stor5 * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)):
        if -1000 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / 997 <= 0:
            return stor4, 
                   stor5,
                   address(ext_call.return_data[0]),
                   10^18 * defaultAmount / 997 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)
        return -1000 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / 997, 
               0,
               address(ext_call.return_data[0]),
               stor4 - (10^18 * defaultAmount / 997 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount))
    if (997000 * 10 * 10^18 * defaultAmount / stor4 * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) - (997000 * 10 * 10^18 * defaultAmount / stor5 * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) <= 3:
        if (-1000 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) + 1 / 997 <= 0:
            return stor4, 
                   stor5,
                   address(ext_call.return_data[0]),
                   10^18 * defaultAmount / 997 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)
        return (-1000 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) + 1 / 997, 
               0,
               address(ext_call.return_data[0]),
               stor4 - (10^18 * defaultAmount / 997 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount))
    s = (997000 * 10 * 10^18 * defaultAmount / stor4 * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) + (-997000 * 10 * 10^18 * defaultAmount / stor5 * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) + 1 / 2
    t = (997000 * 10 * 10^18 * defaultAmount / stor4 * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) - (997000 * 10 * 10^18 * defaultAmount / stor5 * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18))
    while s < t:
        require s
        s = ((997000 * 10 * 10^18 * defaultAmount / stor4 * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) - (997000 * 10 * 10^18 * defaultAmount / stor5 * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) / s) + s / 2
        t = s
        continue 
    if t - (1000 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) / 997 <= 0:
        return stor4, 
               stor5,
               address(ext_call.return_data[0]),
               10^18 * defaultAmount / 997 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)
    return t - (1000 * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18)) / 997, 
           0,
           address(ext_call.return_data[0]),
           stor4 - (10^18 * defaultAmount / 997 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount))
}



}
