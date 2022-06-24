contract main {




// =====================  Runtime code  =====================


array of struct stor0;
uint256 defaultAmount;
address stor2;

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
    mem[260] = arg2
    require ext_code.size(stor2)
    call stor2.getExchange(address arg1) with:
         gas gas_remaining wei
        args arg2
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
        _368 = 0, mem[292 len 28]
        require 2 < stor0.length
        _370 = mem[352]
        require 0 < stor0.length
        require ext_code.size(mem[300 len 20])
        call mem[300 len 20].0x313ce567 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 10^(-ext_call.return_data[0] + 18)
        mem[(32 * stor0.length) + 292] = mem[300 len 20]
        mem[(32 * stor0.length) + 324] = address(_370)
        mem[(32 * stor0.length) + 356] = defaultAmount / 10^(-ext_call.return_data[0] + 18)
        require ext_code.size(arg1)
        call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(_368), address(_370), defaultAmount / 10^(-ext_call.return_data[0] + 18)
        mem[(32 * stor0.length) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 2 < stor0.length
        _382 = mem[352]
        require 4 < stor0.length
        _384 = mem[416]
        mem[(32 * stor0.length) + 324] = mem[428 len 20]
        mem[(32 * stor0.length) + 356] = ext_call.return_data[0]
        require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
        call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(_382), address(_384), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
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
            _401 = ext_call.return_data[28 len 4], mem[(32 * stor0.length) + 388 len 28]
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
                args address(ext_call.return_data[32]), address(_401), 2 * defaultAmount / 10^(-ext_call.return_data[0] + 18)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 2 < stor0.length
            _413 = ext_call.return_data[28 len 4], mem[(32 * stor0.length) + 388 len 28]
            require 4 < stor0.length
            _415 = mem[(32 * stor0.length) + 448]
            mem[(64 * stor0.length) + 356] = mem[(32 * stor0.length) + 460 len 20]
            mem[(64 * stor0.length) + 388] = ext_call.return_data[0]
            require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
            call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(_413), address(_415), ext_call.return_data[0]
            mem[(64 * stor0.length) + 320 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            mem[(64 * stor0.length) + 324] = address(ext_call.return_data[0])
            require ext_code.size(arg2)
            call arg2.0x70a08231 with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not (10 * ext_call.return_data[0] * 997000 * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0] / 10^18) - (10 * ext_call.return_data[0] * 997000 * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0] / 10^18) / 10^18:
                if -1000 * ext_call.return_data[0] / 997 <= 0:
                    return -1000 * ext_call.return_data[0] / 997, 0, address(ext_call.return_data[0])
                require (1000 * eth.balance(ext_call.return_data[0])) + (997 * -1000 * ext_call.return_data[0] / 997)
                if not stor0.length:
                    require 0 < stor0.length
                    require ext_code.size(address(ext_call.return_data[36 len 28]))
                    call address(ext_call.return_data[36 len 28]).0x313ce567 with:
                         gas gas_remaining wei
                    mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 0 < stor0.length
                    require 2 < stor0.length
                    _459 = ext_call.return_data[28 len 4], mem[(64 * stor0.length) + 420 len 28]
                    require 0 < stor0.length
                    require ext_code.size(address(ext_call.return_data[36 len 28]))
                    call address(ext_call.return_data[36 len 28]).0x313ce567 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 10^(-ext_call.return_data[0] + 18)
                    mem[(98 * stor0.length) + 356] = address(ext_call.return_data[36 len 28])
                    mem[(98 * stor0.length) + 388] = address(_459)
                    mem[(98 * stor0.length) + 420] = 997 * 10^18 * -1000 * ext_call.return_data[0] / 997 * ext_call.return_data[0] / 10^18 / (1000 * eth.balance(ext_call.return_data[0])) + (997 * -1000 * ext_call.return_data[0] / 997) / 10^(-ext_call.return_data[0] + 18)
                    require ext_code.size(arg1)
                    call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[36 len 28]), address(_459), 997 * 10^18 * -1000 * ext_call.return_data[0] / 997 * ext_call.return_data[0] / 10^18 / (1000 * eth.balance(ext_call.return_data[0])) + (997 * -1000 * ext_call.return_data[0] / 997) / 10^(-ext_call.return_data[0] + 18)
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
                    _603 = mem[(64 * stor0.length) + 416]
                    require 0 < stor0.length
                    require ext_code.size(mem[(64 * stor0.length) + 364 len 20])
                    call mem[(64 * stor0.length) + 364 len 20].0x313ce567 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 10^(-ext_call.return_data[0] + 18)
                    mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 364 len 20]
                    mem[(98 * stor0.length) + 388] = address(_603)
                    mem[(98 * stor0.length) + 420] = 997 * 10^18 * -1000 * ext_call.return_data[0] / 997 * ext_call.return_data[0] / 10^18 / (1000 * eth.balance(ext_call.return_data[0])) + (997 * -1000 * ext_call.return_data[0] / 997) / 10^(-ext_call.return_data[0] + 18)
                    require ext_code.size(arg1)
                    call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args mem[(98 * stor0.length) + 356], address(_603), 997 * 10^18 * -1000 * ext_call.return_data[0] / 997 * ext_call.return_data[0] / 10^18 / (1000 * eth.balance(ext_call.return_data[0])) + (997 * -1000 * ext_call.return_data[0] / 997) / 10^(-ext_call.return_data[0] + 18)
                    mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 2 < stor0.length
                    require 4 < stor0.length
                    _660 = mem[(64 * stor0.length) + 480]
                    mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 428 len 20]
                    require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                    call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args mem[(98 * stor0.length) + 356], address(_660), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                return -1000 * ext_call.return_data[0] / 997, 
                       ext_call.return_data[0] - (-1000 * ext_call.return_data[0] / 997),
                       address(ext_call.return_data[0])
            if (10 * ext_call.return_data[0] * 997000 * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0] / 10^18) - (10 * ext_call.return_data[0] * 997000 * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0] / 10^18) / 10^18 <= 3:
                if (-1000 * ext_call.return_data[0]) + 1 / 997 <= 0:
                    return (-1000 * ext_call.return_data[0]) + 1 / 997, 0, address(ext_call.return_data[0])
                require (1000 * eth.balance(ext_call.return_data[0])) + (997 * (-1000 * ext_call.return_data[0]) + 1 / 997)
                if not stor0.length:
                    require 0 < stor0.length
                    require ext_code.size(address(ext_call.return_data[36 len 28]))
                    call address(ext_call.return_data[36 len 28]).0x313ce567 with:
                         gas gas_remaining wei
                    mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 0 < stor0.length
                    require 2 < stor0.length
                    _462 = ext_call.return_data[28 len 4], mem[(64 * stor0.length) + 420 len 28]
                    require 0 < stor0.length
                    require ext_code.size(address(ext_call.return_data[36 len 28]))
                    call address(ext_call.return_data[36 len 28]).0x313ce567 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 10^(-ext_call.return_data[0] + 18)
                    mem[(98 * stor0.length) + 356] = address(ext_call.return_data[36 len 28])
                    mem[(98 * stor0.length) + 388] = address(_462)
                    mem[(98 * stor0.length) + 420] = 997 * 10^18 * (-1000 * ext_call.return_data[0]) + 1 / 997 * ext_call.return_data[0] / 10^18 / (1000 * eth.balance(ext_call.return_data[0])) + (997 * (-1000 * ext_call.return_data[0]) + 1 / 997) / 10^(-ext_call.return_data[0] + 18)
                    require ext_code.size(arg1)
                    call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[36 len 28]), address(_462), 997 * 10^18 * (-1000 * ext_call.return_data[0]) + 1 / 997 * ext_call.return_data[0] / 10^18 / (1000 * eth.balance(ext_call.return_data[0])) + (997 * (-1000 * ext_call.return_data[0]) + 1 / 997) / 10^(-ext_call.return_data[0] + 18)
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
                    _601 = mem[(64 * stor0.length) + 416]
                    require 0 < stor0.length
                    require ext_code.size(mem[(64 * stor0.length) + 364 len 20])
                    call mem[(64 * stor0.length) + 364 len 20].0x313ce567 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 10^(-ext_call.return_data[0] + 18)
                    mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 364 len 20]
                    mem[(98 * stor0.length) + 388] = address(_601)
                    mem[(98 * stor0.length) + 420] = 997 * 10^18 * (-1000 * ext_call.return_data[0]) + 1 / 997 * ext_call.return_data[0] / 10^18 / (1000 * eth.balance(ext_call.return_data[0])) + (997 * (-1000 * ext_call.return_data[0]) + 1 / 997) / 10^(-ext_call.return_data[0] + 18)
                    require ext_code.size(arg1)
                    call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args mem[(98 * stor0.length) + 356], address(_601), 997 * 10^18 * (-1000 * ext_call.return_data[0]) + 1 / 997 * ext_call.return_data[0] / 10^18 / (1000 * eth.balance(ext_call.return_data[0])) + (997 * (-1000 * ext_call.return_data[0]) + 1 / 997) / 10^(-ext_call.return_data[0] + 18)
                    mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 2 < stor0.length
                    require 4 < stor0.length
                    _657 = mem[(64 * stor0.length) + 480]
                    mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 428 len 20]
                    require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                    call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args mem[(98 * stor0.length) + 356], address(_657), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                return (-1000 * ext_call.return_data[0]) + 1 / 997, 
                       ext_call.return_data[0] - ((-1000 * ext_call.return_data[0]) + 1 / 997),
                       address(ext_call.return_data[0])
            s = ((10 * ext_call.return_data[0] * 997000 * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0] / 10^18) - (10 * ext_call.return_data[0] * 997000 * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0] / 10^18) / 10^18) + 1 / 2
            t = (10 * ext_call.return_data[0] * 997000 * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0] / 10^18) - (10 * ext_call.return_data[0] * 997000 * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0] / 10^18) / 10^18
            while s < t:
                require s
                s = ((10 * ext_call.return_data[0] * 997000 * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0] / 10^18) - (10 * ext_call.return_data[0] * 997000 * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0] / 10^18) / 10^18 / s) + s / 2
                t = s
                continue 
            if t - (1000 * ext_call.return_data[0]) / 997 <= 0:
                return t - (1000 * ext_call.return_data[0]) / 997, 0, address(ext_call.return_data[0])
            require (1000 * eth.balance(ext_call.return_data[0])) + (997 * t - (1000 * ext_call.return_data[0]) / 997)
            if not stor0.length:
                require 0 < stor0.length
                require ext_code.size(address(ext_call.return_data[36 len 28]))
                call address(ext_call.return_data[36 len 28]).0x313ce567 with:
                     gas gas_remaining wei
                mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 0 < stor0.length
                require 2 < stor0.length
                _543 = ext_call.return_data[28 len 4], mem[(64 * stor0.length) + 420 len 28]
                require 0 < stor0.length
                require ext_code.size(address(ext_call.return_data[36 len 28]))
                call address(ext_call.return_data[36 len 28]).0x313ce567 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 10^(-ext_call.return_data[0] + 18)
                mem[(98 * stor0.length) + 356] = address(ext_call.return_data[36 len 28])
                mem[(98 * stor0.length) + 388] = address(_543)
                mem[(98 * stor0.length) + 420] = 997 * 10^18 * t - (1000 * ext_call.return_data[0]) / 997 * ext_call.return_data[0] / 10^18 / (1000 * eth.balance(ext_call.return_data[0])) + (997 * t - (1000 * ext_call.return_data[0]) / 997) / 10^(-ext_call.return_data[0] + 18)
                require ext_code.size(arg1)
                call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[36 len 28]), address(_543), 997 * 10^18 * t - (1000 * ext_call.return_data[0]) / 997 * ext_call.return_data[0] / 10^18 / (1000 * eth.balance(ext_call.return_data[0])) + (997 * t - (1000 * ext_call.return_data[0]) / 997) / 10^(-ext_call.return_data[0] + 18)
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
                _943 = mem[(64 * stor0.length) + 416]
                require 0 < stor0.length
                require ext_code.size(mem[(64 * stor0.length) + 364 len 20])
                call mem[(64 * stor0.length) + 364 len 20].0x313ce567 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 10^(-ext_call.return_data[0] + 18)
                mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 364 len 20]
                mem[(98 * stor0.length) + 388] = address(_943)
                mem[(98 * stor0.length) + 420] = 997 * 10^18 * t - (1000 * ext_call.return_data[0]) / 997 * ext_call.return_data[0] / 10^18 / (1000 * eth.balance(ext_call.return_data[0])) + (997 * t - (1000 * ext_call.return_data[0]) / 997) / 10^(-ext_call.return_data[0] + 18)
                require ext_code.size(arg1)
                call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args mem[(98 * stor0.length) + 356], address(_943), 997 * 10^18 * t - (1000 * ext_call.return_data[0]) / 997 * ext_call.return_data[0] / 10^18 / (1000 * eth.balance(ext_call.return_data[0])) + (997 * t - (1000 * ext_call.return_data[0]) / 997) / 10^(-ext_call.return_data[0] + 18)
                mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 2 < stor0.length
                require 4 < stor0.length
                _993 = mem[(64 * stor0.length) + 480]
                mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 428 len 20]
                require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args mem[(98 * stor0.length) + 356], address(_993), ext_call.return_data[0]
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
            _605 = mem[(32 * stor0.length) + 384]
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
                args mem[(64 * stor0.length) + 324], address(_605), 2 * defaultAmount / 10^(-ext_call.return_data[0] + 18)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 2 < stor0.length
            require 4 < stor0.length
            _663 = mem[(32 * stor0.length) + 448]
            mem[(64 * stor0.length) + 324] = mem[(32 * stor0.length) + 396 len 20]
            mem[(64 * stor0.length) + 356] = address(_663)
            mem[(64 * stor0.length) + 388] = ext_call.return_data[0]
            require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
            call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args mem[(64 * stor0.length) + 324], address(_663), ext_call.return_data[0]
            mem[(64 * stor0.length) + 320 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            mem[(64 * stor0.length) + 324] = address(ext_call.return_data[0])
            require ext_code.size(arg2)
            call arg2.0x70a08231 with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not (10 * ext_call.return_data[0] * 997000 * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0] / 10^18) - (10 * ext_call.return_data[0] * 997000 * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0] / 10^18) / 10^18:
                if -1000 * ext_call.return_data[0] / 997 <= 0:
                    return -1000 * ext_call.return_data[0] / 997, 0, address(ext_call.return_data[0])
                require (1000 * eth.balance(ext_call.return_data[0])) + (997 * -1000 * ext_call.return_data[0] / 997)
                if not stor0.length:
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
                    _752 = ext_call.return_data[28 len 4], mem[(64 * stor0.length) + 420 len 28]
                    require 0 < stor0.length
                    require ext_code.size(ext_call.return_data[44 len 20])
                    call ext_call.return_data[44 len 20].0x313ce567 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 10^(-ext_call.return_data[0] + 18)
                    mem[(98 * stor0.length) + 356] = ext_call.return_data[44 len 20]
                    mem[(98 * stor0.length) + 388] = address(_752)
                    mem[(98 * stor0.length) + 420] = 997 * 10^18 * -1000 * ext_call.return_data[0] / 997 * ext_call.return_data[0] / 10^18 / (1000 * eth.balance(ext_call.return_data[0])) + (997 * -1000 * ext_call.return_data[0] / 997) / 10^(-ext_call.return_data[0] + 18)
                    require ext_code.size(arg1)
                    call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args ext_call.return_data[44 len 20], address(_752), 997 * 10^18 * -1000 * ext_call.return_data[0] / 997 * ext_call.return_data[0] / 10^18 / (1000 * eth.balance(ext_call.return_data[0])) + (997 * -1000 * ext_call.return_data[0] / 997) / 10^(-ext_call.return_data[0] + 18)
                    mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 2 < stor0.length
                    require 4 < stor0.length
                    _800 = mem[(64 * stor0.length) + 480]
                    mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 428 len 20]
                    require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                    call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args mem[(98 * stor0.length) + 356], address(_800), ext_call.return_data[0]
                else:
                    mem[(64 * stor0.length) + 352] = address(stor0.field_0)
                    idx = (64 * stor0.length) + 352
                    s = 0
                    while (98 * stor0.length) + 320 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
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
                    _1082 = mem[(64 * stor0.length) + 416]
                    require 0 < stor0.length
                    require ext_code.size(mem[(64 * stor0.length) + 364 len 20])
                    call mem[(64 * stor0.length) + 364 len 20].0x313ce567 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 10^(-ext_call.return_data[0] + 18)
                    mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 364 len 20]
                    mem[(98 * stor0.length) + 388] = address(_1082)
                    mem[(98 * stor0.length) + 420] = 997 * 10^18 * -1000 * ext_call.return_data[0] / 997 * ext_call.return_data[0] / 10^18 / (1000 * eth.balance(ext_call.return_data[0])) + (997 * -1000 * ext_call.return_data[0] / 997) / 10^(-ext_call.return_data[0] + 18)
                    require ext_code.size(arg1)
                    call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args mem[(98 * stor0.length) + 356], address(_1082), 997 * 10^18 * -1000 * ext_call.return_data[0] / 997 * ext_call.return_data[0] / 10^18 / (1000 * eth.balance(ext_call.return_data[0])) + (997 * -1000 * ext_call.return_data[0] / 997) / 10^(-ext_call.return_data[0] + 18)
                    mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 2 < stor0.length
                    require 4 < stor0.length
                    _1153 = mem[(64 * stor0.length) + 480]
                    mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 428 len 20]
                    require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                    call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args mem[(98 * stor0.length) + 356], address(_1153), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                return -1000 * ext_call.return_data[0] / 997, 
                       ext_call.return_data[0] - (-1000 * ext_call.return_data[0] / 997),
                       address(ext_call.return_data[0])
            if (10 * ext_call.return_data[0] * 997000 * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0] / 10^18) - (10 * ext_call.return_data[0] * 997000 * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0] / 10^18) / 10^18 <= 3:
                if (-1000 * ext_call.return_data[0]) + 1 / 997 <= 0:
                    return (-1000 * ext_call.return_data[0]) + 1 / 997, 0, address(ext_call.return_data[0])
                require (1000 * eth.balance(ext_call.return_data[0])) + (997 * (-1000 * ext_call.return_data[0]) + 1 / 997)
                if not stor0.length:
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
                    _757 = ext_call.return_data[28 len 4], mem[(64 * stor0.length) + 420 len 28]
                    require 0 < stor0.length
                    require ext_code.size(ext_call.return_data[44 len 20])
                    call ext_call.return_data[44 len 20].0x313ce567 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 10^(-ext_call.return_data[0] + 18)
                    mem[(98 * stor0.length) + 356] = ext_call.return_data[44 len 20]
                    mem[(98 * stor0.length) + 388] = address(_757)
                    mem[(98 * stor0.length) + 420] = 997 * 10^18 * (-1000 * ext_call.return_data[0]) + 1 / 997 * ext_call.return_data[0] / 10^18 / (1000 * eth.balance(ext_call.return_data[0])) + (997 * (-1000 * ext_call.return_data[0]) + 1 / 997) / 10^(-ext_call.return_data[0] + 18)
                    require ext_code.size(arg1)
                    call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args ext_call.return_data[44 len 20], address(_757), 997 * 10^18 * (-1000 * ext_call.return_data[0]) + 1 / 997 * ext_call.return_data[0] / 10^18 / (1000 * eth.balance(ext_call.return_data[0])) + (997 * (-1000 * ext_call.return_data[0]) + 1 / 997) / 10^(-ext_call.return_data[0] + 18)
                    mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 2 < stor0.length
                    require 4 < stor0.length
                    _804 = mem[(64 * stor0.length) + 480]
                    mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 428 len 20]
                    require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                    call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args mem[(98 * stor0.length) + 356], address(_804), ext_call.return_data[0]
                else:
                    mem[(64 * stor0.length) + 352] = address(stor0.field_0)
                    idx = (64 * stor0.length) + 352
                    s = 0
                    while (98 * stor0.length) + 320 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
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
                    _1080 = mem[(64 * stor0.length) + 416]
                    require 0 < stor0.length
                    require ext_code.size(mem[(64 * stor0.length) + 364 len 20])
                    call mem[(64 * stor0.length) + 364 len 20].0x313ce567 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 10^(-ext_call.return_data[0] + 18)
                    mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 364 len 20]
                    mem[(98 * stor0.length) + 388] = address(_1080)
                    mem[(98 * stor0.length) + 420] = 997 * 10^18 * (-1000 * ext_call.return_data[0]) + 1 / 997 * ext_call.return_data[0] / 10^18 / (1000 * eth.balance(ext_call.return_data[0])) + (997 * (-1000 * ext_call.return_data[0]) + 1 / 997) / 10^(-ext_call.return_data[0] + 18)
                    require ext_code.size(arg1)
                    call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args mem[(98 * stor0.length) + 356], address(_1080), 997 * 10^18 * (-1000 * ext_call.return_data[0]) + 1 / 997 * ext_call.return_data[0] / 10^18 / (1000 * eth.balance(ext_call.return_data[0])) + (997 * (-1000 * ext_call.return_data[0]) + 1 / 997) / 10^(-ext_call.return_data[0] + 18)
                    mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 2 < stor0.length
                    require 4 < stor0.length
                    _1150 = mem[(64 * stor0.length) + 480]
                    mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 428 len 20]
                    require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                    call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args mem[(98 * stor0.length) + 356], address(_1150), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                return (-1000 * ext_call.return_data[0]) + 1 / 997, 
                       ext_call.return_data[0] - ((-1000 * ext_call.return_data[0]) + 1 / 997),
                       address(ext_call.return_data[0])
            s = ((10 * ext_call.return_data[0] * 997000 * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0] / 10^18) - (10 * ext_call.return_data[0] * 997000 * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0] / 10^18) / 10^18) + 1 / 2
            t = (10 * ext_call.return_data[0] * 997000 * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0] / 10^18) - (10 * ext_call.return_data[0] * 997000 * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0] / 10^18) / 10^18
            while s < t:
                require s
                s = ((10 * ext_call.return_data[0] * 997000 * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0] / 10^18) - (10 * ext_call.return_data[0] * 997000 * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0] / 10^18) / 10^18 / s) + s / 2
                t = s
                continue 
            if t - (1000 * ext_call.return_data[0]) / 997 <= 0:
                return t - (1000 * ext_call.return_data[0]) / 997, 0, address(ext_call.return_data[0])
            require (1000 * eth.balance(ext_call.return_data[0])) + (997 * t - (1000 * ext_call.return_data[0]) / 997)
            if not stor0.length:
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
                _981 = ext_call.return_data[28 len 4], mem[(64 * stor0.length) + 420 len 28]
                require 0 < stor0.length
                require ext_code.size(ext_call.return_data[44 len 20])
                call ext_call.return_data[44 len 20].0x313ce567 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 10^(-ext_call.return_data[0] + 18)
                mem[(98 * stor0.length) + 356] = ext_call.return_data[44 len 20]
                mem[(98 * stor0.length) + 388] = address(_981)
                mem[(98 * stor0.length) + 420] = 997 * 10^18 * t - (1000 * ext_call.return_data[0]) / 997 * ext_call.return_data[0] / 10^18 / (1000 * eth.balance(ext_call.return_data[0])) + (997 * t - (1000 * ext_call.return_data[0]) / 997) / 10^(-ext_call.return_data[0] + 18)
                require ext_code.size(arg1)
                call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args ext_call.return_data[44 len 20], address(_981), 997 * 10^18 * t - (1000 * ext_call.return_data[0]) / 997 * ext_call.return_data[0] / 10^18 / (1000 * eth.balance(ext_call.return_data[0])) + (997 * t - (1000 * ext_call.return_data[0]) / 997) / 10^(-ext_call.return_data[0] + 18)
                mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 2 < stor0.length
                require 4 < stor0.length
                _1019 = mem[(64 * stor0.length) + 480]
                mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 428 len 20]
                require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args mem[(98 * stor0.length) + 356], address(_1019), ext_call.return_data[0]
            else:
                mem[(64 * stor0.length) + 352] = address(stor0.field_0)
                idx = (64 * stor0.length) + 352
                s = 0
                while (98 * stor0.length) + 320 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
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
                _1315 = mem[(64 * stor0.length) + 416]
                require 0 < stor0.length
                require ext_code.size(mem[(64 * stor0.length) + 364 len 20])
                call mem[(64 * stor0.length) + 364 len 20].0x313ce567 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 10^(-ext_call.return_data[0] + 18)
                mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 364 len 20]
                mem[(98 * stor0.length) + 388] = address(_1315)
                mem[(98 * stor0.length) + 420] = 997 * 10^18 * t - (1000 * ext_call.return_data[0]) / 997 * ext_call.return_data[0] / 10^18 / (1000 * eth.balance(ext_call.return_data[0])) + (997 * t - (1000 * ext_call.return_data[0]) / 997) / 10^(-ext_call.return_data[0] + 18)
                require ext_code.size(arg1)
                call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args mem[(98 * stor0.length) + 356], address(_1315), 997 * 10^18 * t - (1000 * ext_call.return_data[0]) / 997 * ext_call.return_data[0] / 10^18 / (1000 * eth.balance(ext_call.return_data[0])) + (997 * t - (1000 * ext_call.return_data[0]) / 997) / 10^(-ext_call.return_data[0] + 18)
                mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 2 < stor0.length
                require 4 < stor0.length
                _1361 = mem[(64 * stor0.length) + 480]
                mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 428 len 20]
                require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args mem[(98 * stor0.length) + 356], address(_1361), ext_call.return_data[0]
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
        _607 = mem[352]
        require 0 < stor0.length
        require ext_code.size(mem[300 len 20])
        call mem[300 len 20].0x313ce567 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 10^(-ext_call.return_data[0] + 18)
        mem[(32 * stor0.length) + 292] = mem[300 len 20]
        mem[(32 * stor0.length) + 324] = address(_607)
        mem[(32 * stor0.length) + 356] = defaultAmount / 10^(-ext_call.return_data[0] + 18)
        require ext_code.size(arg1)
        call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args mem[(32 * stor0.length) + 292], address(_607), defaultAmount / 10^(-ext_call.return_data[0] + 18)
        mem[(32 * stor0.length) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 2 < stor0.length
        require 4 < stor0.length
        _666 = mem[416]
        mem[(32 * stor0.length) + 292] = mem[364 len 20]
        mem[(32 * stor0.length) + 324] = address(_666)
        mem[(32 * stor0.length) + 356] = ext_call.return_data[0]
        require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
        call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args mem[(32 * stor0.length) + 292], address(_666), ext_call.return_data[0]
        mem[(32 * stor0.length) + 288 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
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
            _700 = ext_call.return_data[28 len 4], mem[(32 * stor0.length) + 388 len 28]
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
                args ext_call.return_data[44 len 20], address(_700), 2 * defaultAmount / 10^(-ext_call.return_data[0] + 18)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 2 < stor0.length
            require 4 < stor0.length
            _735 = mem[(32 * stor0.length) + 448]
            mem[(64 * stor0.length) + 324] = mem[(32 * stor0.length) + 396 len 20]
            mem[(64 * stor0.length) + 356] = address(_735)
            mem[(64 * stor0.length) + 388] = ext_call.return_data[0]
            require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
            call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args mem[(64 * stor0.length) + 324], address(_735), ext_call.return_data[0]
            mem[(64 * stor0.length) + 320 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            mem[(64 * stor0.length) + 324] = address(ext_call.return_data[0])
            require ext_code.size(arg2)
            call arg2.0x70a08231 with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not (10 * ext_call.return_data[0] * 997000 * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0] / 10^18) - (10 * ext_call.return_data[0] * 997000 * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0] / 10^18) / 10^18:
                if -1000 * ext_call.return_data[0] / 997 <= 0:
                    return -1000 * ext_call.return_data[0] / 997, 0, address(ext_call.return_data[0])
                require (1000 * eth.balance(ext_call.return_data[0])) + (997 * -1000 * ext_call.return_data[0] / 997)
                if not stor0.length:
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
                    _863 = ext_call.return_data[28 len 4], mem[(64 * stor0.length) + 420 len 28]
                    require 0 < stor0.length
                    require ext_code.size(ext_call.return_data[44 len 20])
                    call ext_call.return_data[44 len 20].0x313ce567 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 10^(-ext_call.return_data[0] + 18)
                    mem[(98 * stor0.length) + 356] = ext_call.return_data[44 len 20]
                    mem[(98 * stor0.length) + 388] = address(_863)
                    mem[(98 * stor0.length) + 420] = 997 * 10^18 * -1000 * ext_call.return_data[0] / 997 * ext_call.return_data[0] / 10^18 / (1000 * eth.balance(ext_call.return_data[0])) + (997 * -1000 * ext_call.return_data[0] / 997) / 10^(-ext_call.return_data[0] + 18)
                    require ext_code.size(arg1)
                    call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args ext_call.return_data[44 len 20], address(_863), 997 * 10^18 * -1000 * ext_call.return_data[0] / 997 * ext_call.return_data[0] / 10^18 / (1000 * eth.balance(ext_call.return_data[0])) + (997 * -1000 * ext_call.return_data[0] / 997) / 10^(-ext_call.return_data[0] + 18)
                    mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 2 < stor0.length
                    require 4 < stor0.length
                    _905 = mem[(64 * stor0.length) + 480]
                    mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 428 len 20]
                    require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                    call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args mem[(98 * stor0.length) + 356], address(_905), ext_call.return_data[0]
                else:
                    mem[(64 * stor0.length) + 352] = address(stor0.field_0)
                    idx = (64 * stor0.length) + 352
                    s = 0
                    while (98 * stor0.length) + 320 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
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
                    _1086 = mem[(64 * stor0.length) + 416]
                    require 0 < stor0.length
                    require ext_code.size(mem[(64 * stor0.length) + 364 len 20])
                    call mem[(64 * stor0.length) + 364 len 20].0x313ce567 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 10^(-ext_call.return_data[0] + 18)
                    mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 364 len 20]
                    mem[(98 * stor0.length) + 388] = address(_1086)
                    mem[(98 * stor0.length) + 420] = 997 * 10^18 * -1000 * ext_call.return_data[0] / 997 * ext_call.return_data[0] / 10^18 / (1000 * eth.balance(ext_call.return_data[0])) + (997 * -1000 * ext_call.return_data[0] / 997) / 10^(-ext_call.return_data[0] + 18)
                    require ext_code.size(arg1)
                    call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args mem[(98 * stor0.length) + 356], address(_1086), 997 * 10^18 * -1000 * ext_call.return_data[0] / 997 * ext_call.return_data[0] / 10^18 / (1000 * eth.balance(ext_call.return_data[0])) + (997 * -1000 * ext_call.return_data[0] / 997) / 10^(-ext_call.return_data[0] + 18)
                    mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 2 < stor0.length
                    require 4 < stor0.length
                    _1159 = mem[(64 * stor0.length) + 480]
                    mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 428 len 20]
                    require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                    call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args mem[(98 * stor0.length) + 356], address(_1159), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                return -1000 * ext_call.return_data[0] / 997, 
                       ext_call.return_data[0] - (-1000 * ext_call.return_data[0] / 997),
                       address(ext_call.return_data[0])
            if (10 * ext_call.return_data[0] * 997000 * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0] / 10^18) - (10 * ext_call.return_data[0] * 997000 * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0] / 10^18) / 10^18 <= 3:
                if (-1000 * ext_call.return_data[0]) + 1 / 997 <= 0:
                    return (-1000 * ext_call.return_data[0]) + 1 / 997, 0, address(ext_call.return_data[0])
                require (1000 * eth.balance(ext_call.return_data[0])) + (997 * (-1000 * ext_call.return_data[0]) + 1 / 997)
                if not stor0.length:
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
                    _866 = ext_call.return_data[28 len 4], mem[(64 * stor0.length) + 420 len 28]
                    require 0 < stor0.length
                    require ext_code.size(ext_call.return_data[44 len 20])
                    call ext_call.return_data[44 len 20].0x313ce567 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 10^(-ext_call.return_data[0] + 18)
                    mem[(98 * stor0.length) + 356] = ext_call.return_data[44 len 20]
                    mem[(98 * stor0.length) + 388] = address(_866)
                    mem[(98 * stor0.length) + 420] = 997 * 10^18 * (-1000 * ext_call.return_data[0]) + 1 / 997 * ext_call.return_data[0] / 10^18 / (1000 * eth.balance(ext_call.return_data[0])) + (997 * (-1000 * ext_call.return_data[0]) + 1 / 997) / 10^(-ext_call.return_data[0] + 18)
                    require ext_code.size(arg1)
                    call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args ext_call.return_data[44 len 20], address(_866), 997 * 10^18 * (-1000 * ext_call.return_data[0]) + 1 / 997 * ext_call.return_data[0] / 10^18 / (1000 * eth.balance(ext_call.return_data[0])) + (997 * (-1000 * ext_call.return_data[0]) + 1 / 997) / 10^(-ext_call.return_data[0] + 18)
                    mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 2 < stor0.length
                    require 4 < stor0.length
                    _909 = mem[(64 * stor0.length) + 480]
                    mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 428 len 20]
                    require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                    call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args mem[(98 * stor0.length) + 356], address(_909), ext_call.return_data[0]
                else:
                    mem[(64 * stor0.length) + 352] = address(stor0.field_0)
                    idx = (64 * stor0.length) + 352
                    s = 0
                    while (98 * stor0.length) + 320 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
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
                    _1084 = mem[(64 * stor0.length) + 416]
                    require 0 < stor0.length
                    require ext_code.size(mem[(64 * stor0.length) + 364 len 20])
                    call mem[(64 * stor0.length) + 364 len 20].0x313ce567 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 10^(-ext_call.return_data[0] + 18)
                    mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 364 len 20]
                    mem[(98 * stor0.length) + 388] = address(_1084)
                    mem[(98 * stor0.length) + 420] = 997 * 10^18 * (-1000 * ext_call.return_data[0]) + 1 / 997 * ext_call.return_data[0] / 10^18 / (1000 * eth.balance(ext_call.return_data[0])) + (997 * (-1000 * ext_call.return_data[0]) + 1 / 997) / 10^(-ext_call.return_data[0] + 18)
                    require ext_code.size(arg1)
                    call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args mem[(98 * stor0.length) + 356], address(_1084), 997 * 10^18 * (-1000 * ext_call.return_data[0]) + 1 / 997 * ext_call.return_data[0] / 10^18 / (1000 * eth.balance(ext_call.return_data[0])) + (997 * (-1000 * ext_call.return_data[0]) + 1 / 997) / 10^(-ext_call.return_data[0] + 18)
                    mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 2 < stor0.length
                    require 4 < stor0.length
                    _1156 = mem[(64 * stor0.length) + 480]
                    mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 428 len 20]
                    require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                    call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args mem[(98 * stor0.length) + 356], address(_1156), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                return (-1000 * ext_call.return_data[0]) + 1 / 997, 
                       ext_call.return_data[0] - ((-1000 * ext_call.return_data[0]) + 1 / 997),
                       address(ext_call.return_data[0])
            s = ((10 * ext_call.return_data[0] * 997000 * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0] / 10^18) - (10 * ext_call.return_data[0] * 997000 * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0] / 10^18) / 10^18) + 1 / 2
            t = (10 * ext_call.return_data[0] * 997000 * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0] / 10^18) - (10 * ext_call.return_data[0] * 997000 * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0] / 10^18) / 10^18
            while s < t:
                require s
                s = ((10 * ext_call.return_data[0] * 997000 * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0] / 10^18) - (10 * ext_call.return_data[0] * 997000 * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0] / 10^18) / 10^18 / s) + s / 2
                t = s
                continue 
            if t - (1000 * ext_call.return_data[0]) / 997 <= 0:
                return t - (1000 * ext_call.return_data[0]) / 997, 0, address(ext_call.return_data[0])
            require (1000 * eth.balance(ext_call.return_data[0])) + (997 * t - (1000 * ext_call.return_data[0]) / 997)
            if not stor0.length:
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
                _983 = ext_call.return_data[28 len 4], mem[(64 * stor0.length) + 420 len 28]
                require 0 < stor0.length
                require ext_code.size(ext_call.return_data[44 len 20])
                call ext_call.return_data[44 len 20].0x313ce567 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 10^(-ext_call.return_data[0] + 18)
                mem[(98 * stor0.length) + 356] = ext_call.return_data[44 len 20]
                mem[(98 * stor0.length) + 388] = address(_983)
                mem[(98 * stor0.length) + 420] = 997 * 10^18 * t - (1000 * ext_call.return_data[0]) / 997 * ext_call.return_data[0] / 10^18 / (1000 * eth.balance(ext_call.return_data[0])) + (997 * t - (1000 * ext_call.return_data[0]) / 997) / 10^(-ext_call.return_data[0] + 18)
                require ext_code.size(arg1)
                call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args ext_call.return_data[44 len 20], address(_983), 997 * 10^18 * t - (1000 * ext_call.return_data[0]) / 997 * ext_call.return_data[0] / 10^18 / (1000 * eth.balance(ext_call.return_data[0])) + (997 * t - (1000 * ext_call.return_data[0]) / 997) / 10^(-ext_call.return_data[0] + 18)
                mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 2 < stor0.length
                require 4 < stor0.length
                _1022 = mem[(64 * stor0.length) + 480]
                mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 428 len 20]
                require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args mem[(98 * stor0.length) + 356], address(_1022), ext_call.return_data[0]
            else:
                mem[(64 * stor0.length) + 352] = address(stor0.field_0)
                idx = (64 * stor0.length) + 352
                s = 0
                while (98 * stor0.length) + 320 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
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
                _1317 = mem[(64 * stor0.length) + 416]
                require 0 < stor0.length
                require ext_code.size(mem[(64 * stor0.length) + 364 len 20])
                call mem[(64 * stor0.length) + 364 len 20].0x313ce567 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 10^(-ext_call.return_data[0] + 18)
                mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 364 len 20]
                mem[(98 * stor0.length) + 388] = address(_1317)
                mem[(98 * stor0.length) + 420] = 997 * 10^18 * t - (1000 * ext_call.return_data[0]) / 997 * ext_call.return_data[0] / 10^18 / (1000 * eth.balance(ext_call.return_data[0])) + (997 * t - (1000 * ext_call.return_data[0]) / 997) / 10^(-ext_call.return_data[0] + 18)
                require ext_code.size(arg1)
                call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args mem[(98 * stor0.length) + 356], address(_1317), 997 * 10^18 * t - (1000 * ext_call.return_data[0]) / 997 * ext_call.return_data[0] / 10^18 / (1000 * eth.balance(ext_call.return_data[0])) + (997 * t - (1000 * ext_call.return_data[0]) / 997) / 10^(-ext_call.return_data[0] + 18)
                mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 2 < stor0.length
                require 4 < stor0.length
                _1364 = mem[(64 * stor0.length) + 480]
                mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 428 len 20]
                require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args mem[(98 * stor0.length) + 356], address(_1364), ext_call.return_data[0]
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
            _1088 = mem[(32 * stor0.length) + 384]
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
                args mem[(64 * stor0.length) + 324], address(_1088), 2 * defaultAmount / 10^(-ext_call.return_data[0] + 18)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 2 < stor0.length
            require 4 < stor0.length
            _1162 = mem[(32 * stor0.length) + 448]
            mem[(64 * stor0.length) + 324] = mem[(32 * stor0.length) + 396 len 20]
            mem[(64 * stor0.length) + 356] = address(_1162)
            mem[(64 * stor0.length) + 388] = ext_call.return_data[0]
            require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
            call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args mem[(64 * stor0.length) + 324], address(_1162), ext_call.return_data[0]
            mem[(64 * stor0.length) + 320 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            mem[(64 * stor0.length) + 324] = address(ext_call.return_data[0])
            require ext_code.size(arg2)
            call arg2.0x70a08231 with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not (10 * ext_call.return_data[0] * 997000 * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0] / 10^18) - (10 * ext_call.return_data[0] * 997000 * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0] / 10^18) / 10^18:
                if -1000 * ext_call.return_data[0] / 997 <= 0:
                    return -1000 * ext_call.return_data[0] / 997, 0, address(ext_call.return_data[0])
                require (1000 * eth.balance(ext_call.return_data[0])) + (997 * -1000 * ext_call.return_data[0] / 997)
                if not stor0.length:
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
                    _1226 = ext_call.return_data[28 len 4], mem[(64 * stor0.length) + 420 len 28]
                    require 0 < stor0.length
                    require ext_code.size(ext_call.return_data[44 len 20])
                    call ext_call.return_data[44 len 20].0x313ce567 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 10^(-ext_call.return_data[0] + 18)
                    mem[(98 * stor0.length) + 356] = ext_call.return_data[44 len 20]
                    mem[(98 * stor0.length) + 388] = address(_1226)
                    mem[(98 * stor0.length) + 420] = 997 * 10^18 * -1000 * ext_call.return_data[0] / 997 * ext_call.return_data[0] / 10^18 / (1000 * eth.balance(ext_call.return_data[0])) + (997 * -1000 * ext_call.return_data[0] / 997) / 10^(-ext_call.return_data[0] + 18)
                    require ext_code.size(arg1)
                    call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args ext_call.return_data[44 len 20], address(_1226), 997 * 10^18 * -1000 * ext_call.return_data[0] / 997 * ext_call.return_data[0] / 10^18 / (1000 * eth.balance(ext_call.return_data[0])) + (997 * -1000 * ext_call.return_data[0] / 997) / 10^(-ext_call.return_data[0] + 18)
                    mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 2 < stor0.length
                    require 4 < stor0.length
                    _1268 = mem[(64 * stor0.length) + 480]
                    mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 428 len 20]
                    require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                    call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args mem[(98 * stor0.length) + 356], address(_1268), ext_call.return_data[0]
                else:
                    mem[(64 * stor0.length) + 352] = address(stor0.field_0)
                    idx = (64 * stor0.length) + 352
                    s = 0
                    while (98 * stor0.length) + 320 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
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
                    _1414 = mem[(64 * stor0.length) + 416]
                    require 0 < stor0.length
                    require ext_code.size(mem[(64 * stor0.length) + 364 len 20])
                    call mem[(64 * stor0.length) + 364 len 20].0x313ce567 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 10^(-ext_call.return_data[0] + 18)
                    mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 364 len 20]
                    mem[(98 * stor0.length) + 388] = address(_1414)
                    mem[(98 * stor0.length) + 420] = 997 * 10^18 * -1000 * ext_call.return_data[0] / 997 * ext_call.return_data[0] / 10^18 / (1000 * eth.balance(ext_call.return_data[0])) + (997 * -1000 * ext_call.return_data[0] / 997) / 10^(-ext_call.return_data[0] + 18)
                    require ext_code.size(arg1)
                    call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args mem[(98 * stor0.length) + 356], address(_1414), 997 * 10^18 * -1000 * ext_call.return_data[0] / 997 * ext_call.return_data[0] / 10^18 / (1000 * eth.balance(ext_call.return_data[0])) + (997 * -1000 * ext_call.return_data[0] / 997) / 10^(-ext_call.return_data[0] + 18)
                    mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 2 < stor0.length
                    require 4 < stor0.length
                    _1443 = mem[(64 * stor0.length) + 480]
                    mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 428 len 20]
                    require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                    call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args mem[(98 * stor0.length) + 356], address(_1443), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                return -1000 * ext_call.return_data[0] / 997, 
                       ext_call.return_data[0] - (-1000 * ext_call.return_data[0] / 997),
                       address(ext_call.return_data[0])
            if (10 * ext_call.return_data[0] * 997000 * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0] / 10^18) - (10 * ext_call.return_data[0] * 997000 * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0] / 10^18) / 10^18 <= 3:
                if (-1000 * ext_call.return_data[0]) + 1 / 997 <= 0:
                    return (-1000 * ext_call.return_data[0]) + 1 / 997, 0, address(ext_call.return_data[0])
                require (1000 * eth.balance(ext_call.return_data[0])) + (997 * (-1000 * ext_call.return_data[0]) + 1 / 997)
                if not stor0.length:
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
                    _1229 = ext_call.return_data[28 len 4], mem[(64 * stor0.length) + 420 len 28]
                    require 0 < stor0.length
                    require ext_code.size(ext_call.return_data[44 len 20])
                    call ext_call.return_data[44 len 20].0x313ce567 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 10^(-ext_call.return_data[0] + 18)
                    mem[(98 * stor0.length) + 356] = ext_call.return_data[44 len 20]
                    mem[(98 * stor0.length) + 388] = address(_1229)
                    mem[(98 * stor0.length) + 420] = 997 * 10^18 * (-1000 * ext_call.return_data[0]) + 1 / 997 * ext_call.return_data[0] / 10^18 / (1000 * eth.balance(ext_call.return_data[0])) + (997 * (-1000 * ext_call.return_data[0]) + 1 / 997) / 10^(-ext_call.return_data[0] + 18)
                    require ext_code.size(arg1)
                    call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args ext_call.return_data[44 len 20], address(_1229), 997 * 10^18 * (-1000 * ext_call.return_data[0]) + 1 / 997 * ext_call.return_data[0] / 10^18 / (1000 * eth.balance(ext_call.return_data[0])) + (997 * (-1000 * ext_call.return_data[0]) + 1 / 997) / 10^(-ext_call.return_data[0] + 18)
                    mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 2 < stor0.length
                    require 4 < stor0.length
                    _1272 = mem[(64 * stor0.length) + 480]
                    mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 428 len 20]
                    require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                    call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args mem[(98 * stor0.length) + 356], address(_1272), ext_call.return_data[0]
                else:
                    mem[(64 * stor0.length) + 352] = address(stor0.field_0)
                    idx = (64 * stor0.length) + 352
                    s = 0
                    while (98 * stor0.length) + 320 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
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
                    _1412 = mem[(64 * stor0.length) + 416]
                    require 0 < stor0.length
                    require ext_code.size(mem[(64 * stor0.length) + 364 len 20])
                    call mem[(64 * stor0.length) + 364 len 20].0x313ce567 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 10^(-ext_call.return_data[0] + 18)
                    mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 364 len 20]
                    mem[(98 * stor0.length) + 388] = address(_1412)
                    mem[(98 * stor0.length) + 420] = 997 * 10^18 * (-1000 * ext_call.return_data[0]) + 1 / 997 * ext_call.return_data[0] / 10^18 / (1000 * eth.balance(ext_call.return_data[0])) + (997 * (-1000 * ext_call.return_data[0]) + 1 / 997) / 10^(-ext_call.return_data[0] + 18)
                    require ext_code.size(arg1)
                    call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args mem[(98 * stor0.length) + 356], address(_1412), 997 * 10^18 * (-1000 * ext_call.return_data[0]) + 1 / 997 * ext_call.return_data[0] / 10^18 / (1000 * eth.balance(ext_call.return_data[0])) + (997 * (-1000 * ext_call.return_data[0]) + 1 / 997) / 10^(-ext_call.return_data[0] + 18)
                    mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 2 < stor0.length
                    require 4 < stor0.length
                    _1440 = mem[(64 * stor0.length) + 480]
                    mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 428 len 20]
                    require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                    call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args mem[(98 * stor0.length) + 356], address(_1440), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                return (-1000 * ext_call.return_data[0]) + 1 / 997, 
                       ext_call.return_data[0] - ((-1000 * ext_call.return_data[0]) + 1 / 997),
                       address(ext_call.return_data[0])
            s = ((10 * ext_call.return_data[0] * 997000 * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0] / 10^18) - (10 * ext_call.return_data[0] * 997000 * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0] / 10^18) / 10^18) + 1 / 2
            t = (10 * ext_call.return_data[0] * 997000 * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0] / 10^18) - (10 * ext_call.return_data[0] * 997000 * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0] / 10^18) / 10^18
            while s < t:
                require s
                s = ((10 * ext_call.return_data[0] * 997000 * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0] / 10^18) - (10 * ext_call.return_data[0] * 997000 * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0] / 10^18) / 10^18 / s) + s / 2
                t = s
                continue 
            if t - (1000 * ext_call.return_data[0]) / 997 <= 0:
                return t - (1000 * ext_call.return_data[0]) / 997, 0, address(ext_call.return_data[0])
            require (1000 * eth.balance(ext_call.return_data[0])) + (997 * t - (1000 * ext_call.return_data[0]) / 997)
            if not stor0.length:
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
                _1352 = ext_call.return_data[28 len 4], mem[(64 * stor0.length) + 420 len 28]
                require 0 < stor0.length
                require ext_code.size(ext_call.return_data[44 len 20])
                call ext_call.return_data[44 len 20].0x313ce567 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 10^(-ext_call.return_data[0] + 18)
                mem[(98 * stor0.length) + 356] = ext_call.return_data[44 len 20]
                mem[(98 * stor0.length) + 388] = address(_1352)
                mem[(98 * stor0.length) + 420] = 997 * 10^18 * t - (1000 * ext_call.return_data[0]) / 997 * ext_call.return_data[0] / 10^18 / (1000 * eth.balance(ext_call.return_data[0])) + (997 * t - (1000 * ext_call.return_data[0]) / 997) / 10^(-ext_call.return_data[0] + 18)
                require ext_code.size(arg1)
                call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args ext_call.return_data[44 len 20], address(_1352), 997 * 10^18 * t - (1000 * ext_call.return_data[0]) / 997 * ext_call.return_data[0] / 10^18 / (1000 * eth.balance(ext_call.return_data[0])) + (997 * t - (1000 * ext_call.return_data[0]) / 997) / 10^(-ext_call.return_data[0] + 18)
                mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 2 < stor0.length
                require 4 < stor0.length
                _1386 = mem[(64 * stor0.length) + 480]
                mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 428 len 20]
                require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args mem[(98 * stor0.length) + 356], address(_1386), ext_call.return_data[0]
            else:
                mem[(64 * stor0.length) + 352] = address(stor0.field_0)
                idx = (64 * stor0.length) + 352
                s = 0
                while (98 * stor0.length) + 320 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
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
                _1465 = mem[(64 * stor0.length) + 416]
                require 0 < stor0.length
                require ext_code.size(mem[(64 * stor0.length) + 364 len 20])
                call mem[(64 * stor0.length) + 364 len 20].0x313ce567 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 10^(-ext_call.return_data[0] + 18)
                mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 364 len 20]
                mem[(98 * stor0.length) + 388] = address(_1465)
                mem[(98 * stor0.length) + 420] = 997 * 10^18 * t - (1000 * ext_call.return_data[0]) / 997 * ext_call.return_data[0] / 10^18 / (1000 * eth.balance(ext_call.return_data[0])) + (997 * t - (1000 * ext_call.return_data[0]) / 997) / 10^(-ext_call.return_data[0] + 18)
                require ext_code.size(arg1)
                call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args mem[(98 * stor0.length) + 356], address(_1465), 997 * 10^18 * t - (1000 * ext_call.return_data[0]) / 997 * ext_call.return_data[0] / 10^18 / (1000 * eth.balance(ext_call.return_data[0])) + (997 * t - (1000 * ext_call.return_data[0]) / 997) / 10^(-ext_call.return_data[0] + 18)
                mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 2 < stor0.length
                require 4 < stor0.length
                _1479 = mem[(64 * stor0.length) + 480]
                mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 428 len 20]
                require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args mem[(98 * stor0.length) + 356], address(_1479), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return t - (1000 * ext_call.return_data[0]) / 997, 
           ext_call.return_data[0] - (t - (1000 * ext_call.return_data[0]) / 997),
           address(ext_call.return_data[0])
}



}
