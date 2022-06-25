contract main {




// =====================  Runtime code  =====================


array of struct stor0;
uint256 defaultAmount;
address stor2;
uint256 stor3;
uint256 stor4;

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

function sub_76daaaaa(?) {
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
    require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
    call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(mem[192]), address(mem[256]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0]
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
        _244 = 0, mem[292 len 28]
        require 2 < stor0.length
        _246 = mem[352]
        require 0 < stor0.length
        require ext_code.size(mem[300 len 20])
        call mem[300 len 20].0x313ce567 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 10^(-ext_call.return_data[0] + 18)
        mem[(32 * stor0.length) + 292] = mem[300 len 20]
        mem[(32 * stor0.length) + 324] = address(_246)
        mem[(32 * stor0.length) + 356] = defaultAmount / 10^(-ext_call.return_data[0] + 18)
        require ext_code.size(arg1)
        call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(_244), address(_246), defaultAmount / 10^(-ext_call.return_data[0] + 18)
        mem[(32 * stor0.length) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 2 < stor0.length
        _258 = mem[352]
        require 4 < stor0.length
        _260 = mem[416]
        mem[(32 * stor0.length) + 324] = mem[428 len 20]
        mem[(32 * stor0.length) + 356] = ext_call.return_data[0]
        require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
        call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(_258), address(_260), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        stor3 = ext_call.return_data[0]
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
            _277 = ext_call.return_data[28 len 4], mem[(32 * stor0.length) + 388 len 28]
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
                args address(ext_call.return_data[32]), address(_277), 2 * defaultAmount / 10^(-ext_call.return_data[0] + 18)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 2 < stor0.length
            _289 = ext_call.return_data[28 len 4], mem[(32 * stor0.length) + 388 len 28]
            require 4 < stor0.length
            _291 = mem[(32 * stor0.length) + 448]
            mem[(64 * stor0.length) + 356] = mem[(32 * stor0.length) + 460 len 20]
            mem[(64 * stor0.length) + 388] = ext_call.return_data[0]
            require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
            call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(_289), address(_291), ext_call.return_data[0]
            mem[(64 * stor0.length) + 320 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            stor4 = ext_call.return_data[0]
            require (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)
            require 2 * (10 * stor4) - (10 * 2 * stor3) + (2 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount))
            if (10 * stor4) - (10 * 4 * stor3) - (10 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) + (2 * 10 * 2 * 997 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) / 2 * (10 * stor4) - (10 * 2 * stor3) + (2 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) <= 0:
                return (10 * stor4) - (10 * 4 * stor3) - (10 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) + (2 * 10 * 2 * 997 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) / 2 * (10 * stor4) - (10 * 2 * stor3) + (2 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)), 
                       0,
                       address(ext_call.return_data[0])
            if not stor0.length:
                require (1000 * eth.balance(ext_call.return_data[0])) + (997 * (10 * stor4) - (10 * 4 * stor3) - (10 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) + (2 * 10 * 2 * 997 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) / 2 * (10 * stor4) - (10 * 2 * stor3) + (2 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)))
                require 0 < stor0.length
                require ext_code.size(address(ext_call.return_data[32]))
                call address(ext_call.return_data[32]).0x313ce567 with:
                     gas gas_remaining wei
                mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 0 < stor0.length
                require 2 < stor0.length
                _310 = ext_call.return_data[28 len 4], mem[(64 * stor0.length) + 420 len 28]
                require 0 < stor0.length
                require ext_code.size(address(ext_call.return_data[32]))
                call address(ext_call.return_data[32]).0x313ce567 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 10^(-ext_call.return_data[0] + 18)
                mem[(98 * stor0.length) + 356] = address(ext_call.return_data[32])
                mem[(98 * stor0.length) + 388] = address(_310)
                mem[(98 * stor0.length) + 420] = 997 * (10 * stor4) - (10 * 4 * stor3) - (10 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) + (2 * 10 * 2 * 997 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) / 2 * (10 * stor4) - (10 * 2 * stor3) + (2 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * (10 * stor4) - (10 * 4 * stor3) - (10 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) + (2 * 10 * 2 * 997 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) / 2 * (10 * stor4) - (10 * 2 * stor3) + (2 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount))) / 10^(-ext_call.return_data[0] + 18)
                require ext_code.size(arg1)
                call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[32]), address(_310), 997 * (10 * stor4) - (10 * 4 * stor3) - (10 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) + (2 * 10 * 2 * 997 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) / 2 * (10 * stor4) - (10 * 2 * stor3) + (2 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * (10 * stor4) - (10 * 4 * stor3) - (10 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) + (2 * 10 * 2 * 997 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) / 2 * (10 * stor4) - (10 * 2 * stor3) + (2 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount))) / 10^(-ext_call.return_data[0] + 18)
                mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 2 < stor0.length
                require 4 < stor0.length
                require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(mem[(64 * stor0.length) + 420 len 28]), address(mem[(64 * stor0.length) + 480]), ext_call.return_data[0]
            else:
                mem[(64 * stor0.length) + 352] = address(stor0.field_0)
                idx = (64 * stor0.length) + 352
                s = 0
                while (98 * stor0.length) + 320 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require (1000 * eth.balance(ext_call.return_data[0])) + (997 * (10 * stor4) - (10 * 4 * stor3) - (10 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) + (2 * 10 * 2 * 997 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) / 2 * (10 * stor4) - (10 * 2 * stor3) + (2 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)))
                require 0 < stor0.length
                require ext_code.size(mem[(64 * stor0.length) + 364 len 20])
                call mem[(64 * stor0.length) + 364 len 20].0x313ce567 with:
                     gas gas_remaining wei
                mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 0 < stor0.length
                require 2 < stor0.length
                _363 = mem[(64 * stor0.length) + 416]
                require 0 < stor0.length
                require ext_code.size(mem[(64 * stor0.length) + 364 len 20])
                call mem[(64 * stor0.length) + 364 len 20].0x313ce567 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 10^(-ext_call.return_data[0] + 18)
                mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 364 len 20]
                mem[(98 * stor0.length) + 388] = address(_363)
                mem[(98 * stor0.length) + 420] = 997 * (10 * stor4) - (10 * 4 * stor3) - (10 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) + (2 * 10 * 2 * 997 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) / 2 * (10 * stor4) - (10 * 2 * stor3) + (2 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * (10 * stor4) - (10 * 4 * stor3) - (10 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) + (2 * 10 * 2 * 997 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) / 2 * (10 * stor4) - (10 * 2 * stor3) + (2 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount))) / 10^(-ext_call.return_data[0] + 18)
                require ext_code.size(arg1)
                call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args mem[(98 * stor0.length) + 356], address(_363), 997 * (10 * stor4) - (10 * 4 * stor3) - (10 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) + (2 * 10 * 2 * 997 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) / 2 * (10 * stor4) - (10 * 2 * stor3) + (2 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * (10 * stor4) - (10 * 4 * stor3) - (10 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) + (2 * 10 * 2 * 997 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) / 2 * (10 * stor4) - (10 * 2 * stor3) + (2 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount))) / 10^(-ext_call.return_data[0] + 18)
                mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 2 < stor0.length
                require 4 < stor0.length
                _407 = mem[(64 * stor0.length) + 480]
                mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 428 len 20]
                require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args mem[(98 * stor0.length) + 356], address(_407), ext_call.return_data[0]
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
            _359 = mem[(32 * stor0.length) + 384]
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
                args mem[(64 * stor0.length) + 324], address(_359), 2 * defaultAmount / 10^(-ext_call.return_data[0] + 18)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 2 < stor0.length
            require 4 < stor0.length
            _401 = mem[(32 * stor0.length) + 448]
            mem[(64 * stor0.length) + 324] = mem[(32 * stor0.length) + 396 len 20]
            mem[(64 * stor0.length) + 356] = address(_401)
            mem[(64 * stor0.length) + 388] = ext_call.return_data[0]
            require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
            call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args mem[(64 * stor0.length) + 324], address(_401), ext_call.return_data[0]
            mem[(64 * stor0.length) + 320 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            stor4 = ext_call.return_data[0]
            require (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)
            require 2 * (10 * stor4) - (10 * 2 * stor3) + (2 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount))
            if (10 * stor4) - (10 * 4 * stor3) - (10 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) + (2 * 10 * 2 * 997 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) / 2 * (10 * stor4) - (10 * 2 * stor3) + (2 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) <= 0:
                return (10 * stor4) - (10 * 4 * stor3) - (10 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) + (2 * 10 * 2 * 997 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) / 2 * (10 * stor4) - (10 * 2 * stor3) + (2 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)), 
                       0,
                       address(ext_call.return_data[0])
            if not stor0.length:
                require (1000 * eth.balance(ext_call.return_data[0])) + (997 * (10 * stor4) - (10 * 4 * stor3) - (10 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) + (2 * 10 * 2 * 997 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) / 2 * (10 * stor4) - (10 * 2 * stor3) + (2 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)))
                require 0 < stor0.length
                require ext_code.size(ext_call.return_data[44 len 20])
                call ext_call.return_data[44 len 20].0x313ce567 with:
                     gas gas_remaining wei
                mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 0 < stor0.length
                require 2 < stor0.length
                _452 = ext_call.return_data[28 len 4], mem[(64 * stor0.length) + 420 len 28]
                require 0 < stor0.length
                require ext_code.size(ext_call.return_data[44 len 20])
                call ext_call.return_data[44 len 20].0x313ce567 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 10^(-ext_call.return_data[0] + 18)
                mem[(98 * stor0.length) + 356] = ext_call.return_data[44 len 20]
                mem[(98 * stor0.length) + 388] = address(_452)
                mem[(98 * stor0.length) + 420] = 997 * (10 * stor4) - (10 * 4 * stor3) - (10 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) + (2 * 10 * 2 * 997 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) / 2 * (10 * stor4) - (10 * 2 * stor3) + (2 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * (10 * stor4) - (10 * 4 * stor3) - (10 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) + (2 * 10 * 2 * 997 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) / 2 * (10 * stor4) - (10 * 2 * stor3) + (2 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount))) / 10^(-ext_call.return_data[0] + 18)
                require ext_code.size(arg1)
                call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args ext_call.return_data[44 len 20], address(_452), 997 * (10 * stor4) - (10 * 4 * stor3) - (10 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) + (2 * 10 * 2 * 997 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) / 2 * (10 * stor4) - (10 * 2 * stor3) + (2 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * (10 * stor4) - (10 * 4 * stor3) - (10 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) + (2 * 10 * 2 * 997 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) / 2 * (10 * stor4) - (10 * 2 * stor3) + (2 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount))) / 10^(-ext_call.return_data[0] + 18)
                mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 2 < stor0.length
                require 4 < stor0.length
                _479 = mem[(64 * stor0.length) + 480]
                mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 428 len 20]
                require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args mem[(98 * stor0.length) + 356], address(_479), ext_call.return_data[0]
            else:
                mem[(64 * stor0.length) + 352] = address(stor0.field_0)
                idx = (64 * stor0.length) + 352
                s = 0
                while (98 * stor0.length) + 320 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require (1000 * eth.balance(ext_call.return_data[0])) + (997 * (10 * stor4) - (10 * 4 * stor3) - (10 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) + (2 * 10 * 2 * 997 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) / 2 * (10 * stor4) - (10 * 2 * stor3) + (2 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)))
                require 0 < stor0.length
                require ext_code.size(mem[(64 * stor0.length) + 364 len 20])
                call mem[(64 * stor0.length) + 364 len 20].0x313ce567 with:
                     gas gas_remaining wei
                mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 0 < stor0.length
                require 2 < stor0.length
                _551 = mem[(64 * stor0.length) + 416]
                require 0 < stor0.length
                require ext_code.size(mem[(64 * stor0.length) + 364 len 20])
                call mem[(64 * stor0.length) + 364 len 20].0x313ce567 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 10^(-ext_call.return_data[0] + 18)
                mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 364 len 20]
                mem[(98 * stor0.length) + 388] = address(_551)
                mem[(98 * stor0.length) + 420] = 997 * (10 * stor4) - (10 * 4 * stor3) - (10 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) + (2 * 10 * 2 * 997 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) / 2 * (10 * stor4) - (10 * 2 * stor3) + (2 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * (10 * stor4) - (10 * 4 * stor3) - (10 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) + (2 * 10 * 2 * 997 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) / 2 * (10 * stor4) - (10 * 2 * stor3) + (2 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount))) / 10^(-ext_call.return_data[0] + 18)
                require ext_code.size(arg1)
                call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args mem[(98 * stor0.length) + 356], address(_551), 997 * (10 * stor4) - (10 * 4 * stor3) - (10 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) + (2 * 10 * 2 * 997 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) / 2 * (10 * stor4) - (10 * 2 * stor3) + (2 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * (10 * stor4) - (10 * 4 * stor3) - (10 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) + (2 * 10 * 2 * 997 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) / 2 * (10 * stor4) - (10 * 2 * stor3) + (2 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount))) / 10^(-ext_call.return_data[0] + 18)
                mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 2 < stor0.length
                require 4 < stor0.length
                _594 = mem[(64 * stor0.length) + 480]
                mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 428 len 20]
                require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args mem[(98 * stor0.length) + 356], address(_594), ext_call.return_data[0]
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
        _361 = mem[352]
        require 0 < stor0.length
        require ext_code.size(mem[300 len 20])
        call mem[300 len 20].0x313ce567 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 10^(-ext_call.return_data[0] + 18)
        mem[(32 * stor0.length) + 292] = mem[300 len 20]
        mem[(32 * stor0.length) + 324] = address(_361)
        mem[(32 * stor0.length) + 356] = defaultAmount / 10^(-ext_call.return_data[0] + 18)
        require ext_code.size(arg1)
        call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args mem[(32 * stor0.length) + 292], address(_361), defaultAmount / 10^(-ext_call.return_data[0] + 18)
        mem[(32 * stor0.length) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 2 < stor0.length
        require 4 < stor0.length
        _404 = mem[416]
        mem[(32 * stor0.length) + 292] = mem[364 len 20]
        mem[(32 * stor0.length) + 324] = address(_404)
        mem[(32 * stor0.length) + 356] = ext_call.return_data[0]
        require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
        call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args mem[(32 * stor0.length) + 292], address(_404), ext_call.return_data[0]
        mem[(32 * stor0.length) + 288 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        stor3 = ext_call.return_data[0]
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
            _440 = ext_call.return_data[28 len 4], mem[(32 * stor0.length) + 388 len 28]
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
                args ext_call.return_data[44 len 20], address(_440), 2 * defaultAmount / 10^(-ext_call.return_data[0] + 18)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 2 < stor0.length
            require 4 < stor0.length
            _468 = mem[(32 * stor0.length) + 448]
            mem[(64 * stor0.length) + 324] = mem[(32 * stor0.length) + 396 len 20]
            mem[(64 * stor0.length) + 356] = address(_468)
            mem[(64 * stor0.length) + 388] = ext_call.return_data[0]
            require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
            call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args mem[(64 * stor0.length) + 324], address(_468), ext_call.return_data[0]
            mem[(64 * stor0.length) + 320 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            stor4 = ext_call.return_data[0]
            require (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)
            require 2 * (10 * stor4) - (10 * 2 * stor3) + (2 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount))
            if (10 * stor4) - (10 * 4 * stor3) - (10 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) + (2 * 10 * 2 * 997 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) / 2 * (10 * stor4) - (10 * 2 * stor3) + (2 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) <= 0:
                return (10 * stor4) - (10 * 4 * stor3) - (10 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) + (2 * 10 * 2 * 997 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) / 2 * (10 * stor4) - (10 * 2 * stor3) + (2 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)), 
                       0,
                       address(ext_call.return_data[0])
            if not stor0.length:
                require (1000 * eth.balance(ext_call.return_data[0])) + (997 * (10 * stor4) - (10 * 4 * stor3) - (10 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) + (2 * 10 * 2 * 997 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) / 2 * (10 * stor4) - (10 * 2 * stor3) + (2 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)))
                require 0 < stor0.length
                require ext_code.size(ext_call.return_data[44 len 20])
                call ext_call.return_data[44 len 20].0x313ce567 with:
                     gas gas_remaining wei
                mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 0 < stor0.length
                require 2 < stor0.length
                _500 = ext_call.return_data[28 len 4], mem[(64 * stor0.length) + 420 len 28]
                require 0 < stor0.length
                require ext_code.size(ext_call.return_data[44 len 20])
                call ext_call.return_data[44 len 20].0x313ce567 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 10^(-ext_call.return_data[0] + 18)
                mem[(98 * stor0.length) + 356] = ext_call.return_data[44 len 20]
                mem[(98 * stor0.length) + 388] = address(_500)
                mem[(98 * stor0.length) + 420] = 997 * (10 * stor4) - (10 * 4 * stor3) - (10 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) + (2 * 10 * 2 * 997 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) / 2 * (10 * stor4) - (10 * 2 * stor3) + (2 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * (10 * stor4) - (10 * 4 * stor3) - (10 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) + (2 * 10 * 2 * 997 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) / 2 * (10 * stor4) - (10 * 2 * stor3) + (2 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount))) / 10^(-ext_call.return_data[0] + 18)
                require ext_code.size(arg1)
                call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args ext_call.return_data[44 len 20], address(_500), 997 * (10 * stor4) - (10 * 4 * stor3) - (10 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) + (2 * 10 * 2 * 997 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) / 2 * (10 * stor4) - (10 * 2 * stor3) + (2 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * (10 * stor4) - (10 * 4 * stor3) - (10 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) + (2 * 10 * 2 * 997 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) / 2 * (10 * stor4) - (10 * 2 * stor3) + (2 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount))) / 10^(-ext_call.return_data[0] + 18)
                mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 2 < stor0.length
                require 4 < stor0.length
                _514 = mem[(64 * stor0.length) + 480]
                mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 428 len 20]
                require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args mem[(98 * stor0.length) + 356], address(_514), ext_call.return_data[0]
            else:
                mem[(64 * stor0.length) + 352] = address(stor0.field_0)
                idx = (64 * stor0.length) + 352
                s = 0
                while (98 * stor0.length) + 320 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require (1000 * eth.balance(ext_call.return_data[0])) + (997 * (10 * stor4) - (10 * 4 * stor3) - (10 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) + (2 * 10 * 2 * 997 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) / 2 * (10 * stor4) - (10 * 2 * stor3) + (2 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)))
                require 0 < stor0.length
                require ext_code.size(mem[(64 * stor0.length) + 364 len 20])
                call mem[(64 * stor0.length) + 364 len 20].0x313ce567 with:
                     gas gas_remaining wei
                mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 0 < stor0.length
                require 2 < stor0.length
                _553 = mem[(64 * stor0.length) + 416]
                require 0 < stor0.length
                require ext_code.size(mem[(64 * stor0.length) + 364 len 20])
                call mem[(64 * stor0.length) + 364 len 20].0x313ce567 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 10^(-ext_call.return_data[0] + 18)
                mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 364 len 20]
                mem[(98 * stor0.length) + 388] = address(_553)
                mem[(98 * stor0.length) + 420] = 997 * (10 * stor4) - (10 * 4 * stor3) - (10 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) + (2 * 10 * 2 * 997 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) / 2 * (10 * stor4) - (10 * 2 * stor3) + (2 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * (10 * stor4) - (10 * 4 * stor3) - (10 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) + (2 * 10 * 2 * 997 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) / 2 * (10 * stor4) - (10 * 2 * stor3) + (2 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount))) / 10^(-ext_call.return_data[0] + 18)
                require ext_code.size(arg1)
                call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args mem[(98 * stor0.length) + 356], address(_553), 997 * (10 * stor4) - (10 * 4 * stor3) - (10 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) + (2 * 10 * 2 * 997 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) / 2 * (10 * stor4) - (10 * 2 * stor3) + (2 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * (10 * stor4) - (10 * 4 * stor3) - (10 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) + (2 * 10 * 2 * 997 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) / 2 * (10 * stor4) - (10 * 2 * stor3) + (2 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount))) / 10^(-ext_call.return_data[0] + 18)
                mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 2 < stor0.length
                require 4 < stor0.length
                _597 = mem[(64 * stor0.length) + 480]
                mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 428 len 20]
                require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args mem[(98 * stor0.length) + 356], address(_597), ext_call.return_data[0]
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
            _549 = mem[(32 * stor0.length) + 384]
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
                args mem[(64 * stor0.length) + 324], address(_549), 2 * defaultAmount / 10^(-ext_call.return_data[0] + 18)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 2 < stor0.length
            require 4 < stor0.length
            _591 = mem[(32 * stor0.length) + 448]
            mem[(64 * stor0.length) + 324] = mem[(32 * stor0.length) + 396 len 20]
            mem[(64 * stor0.length) + 356] = address(_591)
            mem[(64 * stor0.length) + 388] = ext_call.return_data[0]
            require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
            call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args mem[(64 * stor0.length) + 324], address(_591), ext_call.return_data[0]
            mem[(64 * stor0.length) + 320 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            stor4 = ext_call.return_data[0]
            require (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)
            require 2 * (10 * stor4) - (10 * 2 * stor3) + (2 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount))
            if (10 * stor4) - (10 * 4 * stor3) - (10 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) + (2 * 10 * 2 * 997 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) / 2 * (10 * stor4) - (10 * 2 * stor3) + (2 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) <= 0:
                return (10 * stor4) - (10 * 4 * stor3) - (10 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) + (2 * 10 * 2 * 997 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) / 2 * (10 * stor4) - (10 * 2 * stor3) + (2 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)), 
                       0,
                       address(ext_call.return_data[0])
            if not stor0.length:
                require (1000 * eth.balance(ext_call.return_data[0])) + (997 * (10 * stor4) - (10 * 4 * stor3) - (10 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) + (2 * 10 * 2 * 997 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) / 2 * (10 * stor4) - (10 * 2 * stor3) + (2 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)))
                require 0 < stor0.length
                require ext_code.size(ext_call.return_data[44 len 20])
                call ext_call.return_data[44 len 20].0x313ce567 with:
                     gas gas_remaining wei
                mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 0 < stor0.length
                require 2 < stor0.length
                _626 = ext_call.return_data[28 len 4], mem[(64 * stor0.length) + 420 len 28]
                require 0 < stor0.length
                require ext_code.size(ext_call.return_data[44 len 20])
                call ext_call.return_data[44 len 20].0x313ce567 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 10^(-ext_call.return_data[0] + 18)
                mem[(98 * stor0.length) + 356] = ext_call.return_data[44 len 20]
                mem[(98 * stor0.length) + 388] = address(_626)
                mem[(98 * stor0.length) + 420] = 997 * (10 * stor4) - (10 * 4 * stor3) - (10 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) + (2 * 10 * 2 * 997 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) / 2 * (10 * stor4) - (10 * 2 * stor3) + (2 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * (10 * stor4) - (10 * 4 * stor3) - (10 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) + (2 * 10 * 2 * 997 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) / 2 * (10 * stor4) - (10 * 2 * stor3) + (2 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount))) / 10^(-ext_call.return_data[0] + 18)
                require ext_code.size(arg1)
                call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args ext_call.return_data[44 len 20], address(_626), 997 * (10 * stor4) - (10 * 4 * stor3) - (10 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) + (2 * 10 * 2 * 997 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) / 2 * (10 * stor4) - (10 * 2 * stor3) + (2 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * (10 * stor4) - (10 * 4 * stor3) - (10 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) + (2 * 10 * 2 * 997 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) / 2 * (10 * stor4) - (10 * 2 * stor3) + (2 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount))) / 10^(-ext_call.return_data[0] + 18)
                mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 2 < stor0.length
                require 4 < stor0.length
                _640 = mem[(64 * stor0.length) + 480]
                mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 428 len 20]
                require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args mem[(98 * stor0.length) + 356], address(_640), ext_call.return_data[0]
            else:
                mem[(64 * stor0.length) + 352] = address(stor0.field_0)
                idx = (64 * stor0.length) + 352
                s = 0
                while (98 * stor0.length) + 320 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require (1000 * eth.balance(ext_call.return_data[0])) + (997 * (10 * stor4) - (10 * 4 * stor3) - (10 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) + (2 * 10 * 2 * 997 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) / 2 * (10 * stor4) - (10 * 2 * stor3) + (2 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)))
                require 0 < stor0.length
                require ext_code.size(mem[(64 * stor0.length) + 364 len 20])
                call mem[(64 * stor0.length) + 364 len 20].0x313ce567 with:
                     gas gas_remaining wei
                mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 0 < stor0.length
                require 2 < stor0.length
                _657 = mem[(64 * stor0.length) + 416]
                require 0 < stor0.length
                require ext_code.size(mem[(64 * stor0.length) + 364 len 20])
                call mem[(64 * stor0.length) + 364 len 20].0x313ce567 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 10^(-ext_call.return_data[0] + 18)
                mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 364 len 20]
                mem[(98 * stor0.length) + 388] = address(_657)
                mem[(98 * stor0.length) + 420] = 997 * (10 * stor4) - (10 * 4 * stor3) - (10 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) + (2 * 10 * 2 * 997 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) / 2 * (10 * stor4) - (10 * 2 * stor3) + (2 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * (10 * stor4) - (10 * 4 * stor3) - (10 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) + (2 * 10 * 2 * 997 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) / 2 * (10 * stor4) - (10 * 2 * stor3) + (2 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount))) / 10^(-ext_call.return_data[0] + 18)
                require ext_code.size(arg1)
                call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args mem[(98 * stor0.length) + 356], address(_657), 997 * (10 * stor4) - (10 * 4 * stor3) - (10 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) + (2 * 10 * 2 * 997 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) / 2 * (10 * stor4) - (10 * 2 * stor3) + (2 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * (10 * stor4) - (10 * 4 * stor3) - (10 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) + (2 * 10 * 2 * 997 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) / 2 * (10 * stor4) - (10 * 2 * stor3) + (2 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount))) / 10^(-ext_call.return_data[0] + 18)
                mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 2 < stor0.length
                require 4 < stor0.length
                _671 = mem[(64 * stor0.length) + 480]
                mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 428 len 20]
                require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args mem[(98 * stor0.length) + 356], address(_671), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return (10 * stor4) - (10 * 4 * stor3) - (10 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) + (2 * 10 * 2 * 997 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) / 2 * (10 * stor4) - (10 * 2 * stor3) + (2 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)), 
           ext_call.return_data[0] - ((10 * stor4) - (10 * 4 * stor3) - (10 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) + (2 * 10 * 2 * 997 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount)) / 2 * (10 * stor4) - (10 * 2 * stor3) + (2 * 997 * 2 * defaultAmount * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / (1000 * eth.balance(ext_call.return_data[0])) + (997 * defaultAmount))),
           address(ext_call.return_data[0])
}



}
