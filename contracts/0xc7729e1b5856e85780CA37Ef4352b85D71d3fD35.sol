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
    require ext_code.size(arg2)
    call arg2.getReturn(address arg1, address arg2, uint256 arg3) with:
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
        _364 = mem[288]
        require 2 < stor0.length
        _366 = mem[352]
        require 0 < stor0.length
        require ext_code.size(mem[300 len 20])
        call mem[300 len 20].0x313ce567 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 10^(-ext_call.return_data[0] + 18)
        mem[(32 * stor0.length) + 292] = mem[300 len 20]
        mem[(32 * stor0.length) + 324] = address(_366)
        mem[(32 * stor0.length) + 356] = defaultAmount / 10^(-ext_call.return_data[0] + 18)
        require ext_code.size(arg1)
        call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(_364), address(_366), defaultAmount / 10^(-ext_call.return_data[0] + 18)
        mem[(32 * stor0.length) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 2 < stor0.length
        _378 = mem[352]
        require 4 < stor0.length
        _380 = mem[416]
        mem[(32 * stor0.length) + 324] = mem[428 len 20]
        mem[(32 * stor0.length) + 356] = ext_call.return_data[0]
        require ext_code.size(arg1)
        call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(_378), address(_380), ext_call.return_data[0]
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
            _397 = ext_call.return_data[28 len 4], mem[(32 * stor0.length) + 388 len 28]
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
                args address(ext_call.return_data[32]), address(_397), 2 * defaultAmount / 10^(-ext_call.return_data[0] + 18)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 2 < stor0.length
            _409 = ext_call.return_data[28 len 4], mem[(32 * stor0.length) + 388 len 28]
            require 4 < stor0.length
            _411 = mem[(32 * stor0.length) + 448]
            mem[(64 * stor0.length) + 356] = mem[(32 * stor0.length) + 460 len 20]
            mem[(64 * stor0.length) + 388] = ext_call.return_data[0]
            require ext_code.size(arg1)
            call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(_409), address(_411), ext_call.return_data[0]
            mem[(64 * stor0.length) + 320 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(stor2)
            call stor2.getExchange(address arg1) with:
                 gas gas_remaining wei
                args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(64 * stor0.length) + 324] = address(ext_call.return_data[0])
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x70a08231 with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not (9970000 * ext_call.return_data[0] * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0]) - (9970000 * ext_call.return_data[0] * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0]):
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
                    mem[(98 * stor0.length) + 420] = 997 * -1000 * ext_call.return_data[0] / 997 * ext_call.return_data[0] / (1000 * eth.balance(ext_call.return_data[0])) + (997 * -1000 * ext_call.return_data[0] / 997) / 10^(-ext_call.return_data[0] + 18)
                    require ext_code.size(arg1)
                    call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[36 len 28]), address(_459), 997 * -1000 * ext_call.return_data[0] / 997 * ext_call.return_data[0] / (1000 * eth.balance(ext_call.return_data[0])) + (997 * -1000 * ext_call.return_data[0] / 997) / 10^(-ext_call.return_data[0] + 18)
                    mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 2 < stor0.length
                    require 4 < stor0.length
                    require ext_code.size(arg1)
                    call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
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
                    mem[(98 * stor0.length) + 420] = 997 * -1000 * ext_call.return_data[0] / 997 * ext_call.return_data[0] / (1000 * eth.balance(ext_call.return_data[0])) + (997 * -1000 * ext_call.return_data[0] / 997) / 10^(-ext_call.return_data[0] + 18)
                    require ext_code.size(arg1)
                    call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args mem[(98 * stor0.length) + 356], address(_603), 997 * -1000 * ext_call.return_data[0] / 997 * ext_call.return_data[0] / (1000 * eth.balance(ext_call.return_data[0])) + (997 * -1000 * ext_call.return_data[0] / 997) / 10^(-ext_call.return_data[0] + 18)
                    mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 2 < stor0.length
                    require 4 < stor0.length
                    _660 = mem[(64 * stor0.length) + 480]
                    mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 428 len 20]
                    require ext_code.size(arg1)
                    call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args mem[(98 * stor0.length) + 356], address(_660), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                return -1000 * ext_call.return_data[0] / 997, 
                       ext_call.return_data[0] - (-1000 * ext_call.return_data[0] / 997),
                       address(ext_call.return_data[0])
            if (9970000 * ext_call.return_data[0] * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0]) - (9970000 * ext_call.return_data[0] * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0]) <= 3:
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
                    mem[(98 * stor0.length) + 420] = 997 * (-1000 * ext_call.return_data[0]) + 1 / 997 * ext_call.return_data[0] / (1000 * eth.balance(ext_call.return_data[0])) + (997 * (-1000 * ext_call.return_data[0]) + 1 / 997) / 10^(-ext_call.return_data[0] + 18)
                    require ext_code.size(arg1)
                    call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[36 len 28]), address(_462), 997 * (-1000 * ext_call.return_data[0]) + 1 / 997 * ext_call.return_data[0] / (1000 * eth.balance(ext_call.return_data[0])) + (997 * (-1000 * ext_call.return_data[0]) + 1 / 997) / 10^(-ext_call.return_data[0] + 18)
                    mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 2 < stor0.length
                    require 4 < stor0.length
                    require ext_code.size(arg1)
                    call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
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
                    mem[(98 * stor0.length) + 420] = 997 * (-1000 * ext_call.return_data[0]) + 1 / 997 * ext_call.return_data[0] / (1000 * eth.balance(ext_call.return_data[0])) + (997 * (-1000 * ext_call.return_data[0]) + 1 / 997) / 10^(-ext_call.return_data[0] + 18)
                    require ext_code.size(arg1)
                    call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args mem[(98 * stor0.length) + 356], address(_601), 997 * (-1000 * ext_call.return_data[0]) + 1 / 997 * ext_call.return_data[0] / (1000 * eth.balance(ext_call.return_data[0])) + (997 * (-1000 * ext_call.return_data[0]) + 1 / 997) / 10^(-ext_call.return_data[0] + 18)
                    mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 2 < stor0.length
                    require 4 < stor0.length
                    _657 = mem[(64 * stor0.length) + 480]
                    mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 428 len 20]
                    require ext_code.size(arg1)
                    call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args mem[(98 * stor0.length) + 356], address(_657), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                return (-1000 * ext_call.return_data[0]) + 1 / 997, 
                       ext_call.return_data[0] - ((-1000 * ext_call.return_data[0]) + 1 / 997),
                       address(ext_call.return_data[0])
            s = (9970000 * ext_call.return_data[0] * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0]) + (-9970000 * ext_call.return_data[0] * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0]) + 1 / 2
            t = (9970000 * ext_call.return_data[0] * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0]) - (9970000 * ext_call.return_data[0] * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0])
            while s < t:
                require s
                s = ((9970000 * ext_call.return_data[0] * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0]) - (9970000 * ext_call.return_data[0] * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0]) / s) + s / 2
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
                mem[(98 * stor0.length) + 420] = 997 * t - (1000 * ext_call.return_data[0]) / 997 * ext_call.return_data[0] / (1000 * eth.balance(ext_call.return_data[0])) + (997 * t - (1000 * ext_call.return_data[0]) / 997) / 10^(-ext_call.return_data[0] + 18)
                require ext_code.size(arg1)
                call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[36 len 28]), address(_543), 997 * t - (1000 * ext_call.return_data[0]) / 997 * ext_call.return_data[0] / (1000 * eth.balance(ext_call.return_data[0])) + (997 * t - (1000 * ext_call.return_data[0]) / 997) / 10^(-ext_call.return_data[0] + 18)
                mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 2 < stor0.length
                require 4 < stor0.length
                require ext_code.size(arg1)
                call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
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
                _953 = mem[(64 * stor0.length) + 416]
                require 0 < stor0.length
                require ext_code.size(mem[(64 * stor0.length) + 364 len 20])
                call mem[(64 * stor0.length) + 364 len 20].0x313ce567 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 10^(-ext_call.return_data[0] + 18)
                mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 364 len 20]
                mem[(98 * stor0.length) + 388] = address(_953)
                mem[(98 * stor0.length) + 420] = 997 * t - (1000 * ext_call.return_data[0]) / 997 * ext_call.return_data[0] / (1000 * eth.balance(ext_call.return_data[0])) + (997 * t - (1000 * ext_call.return_data[0]) / 997) / 10^(-ext_call.return_data[0] + 18)
                require ext_code.size(arg1)
                call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args mem[(98 * stor0.length) + 356], address(_953), 997 * t - (1000 * ext_call.return_data[0]) / 997 * ext_call.return_data[0] / (1000 * eth.balance(ext_call.return_data[0])) + (997 * t - (1000 * ext_call.return_data[0]) / 997) / 10^(-ext_call.return_data[0] + 18)
                mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 2 < stor0.length
                require 4 < stor0.length
                _1001 = mem[(64 * stor0.length) + 480]
                mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 428 len 20]
                require ext_code.size(arg1)
                call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args mem[(98 * stor0.length) + 356], address(_1001), ext_call.return_data[0]
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
            require ext_code.size(arg1)
            call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args mem[(64 * stor0.length) + 324], address(_663), ext_call.return_data[0]
            mem[(64 * stor0.length) + 320 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(stor2)
            call stor2.getExchange(address arg1) with:
                 gas gas_remaining wei
                args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(64 * stor0.length) + 324] = address(ext_call.return_data[0])
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x70a08231 with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not (9970000 * ext_call.return_data[0] * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0]) - (9970000 * ext_call.return_data[0] * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0]):
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
                    _756 = ext_call.return_data[28 len 4], mem[(64 * stor0.length) + 420 len 28]
                    require 0 < stor0.length
                    require ext_code.size(ext_call.return_data[44 len 20])
                    call ext_call.return_data[44 len 20].0x313ce567 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 10^(-ext_call.return_data[0] + 18)
                    mem[(98 * stor0.length) + 356] = ext_call.return_data[44 len 20]
                    mem[(98 * stor0.length) + 388] = address(_756)
                    mem[(98 * stor0.length) + 420] = 997 * -1000 * ext_call.return_data[0] / 997 * ext_call.return_data[0] / (1000 * eth.balance(ext_call.return_data[0])) + (997 * -1000 * ext_call.return_data[0] / 997) / 10^(-ext_call.return_data[0] + 18)
                    require ext_code.size(arg1)
                    call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args ext_call.return_data[44 len 20], address(_756), 997 * -1000 * ext_call.return_data[0] / 997 * ext_call.return_data[0] / (1000 * eth.balance(ext_call.return_data[0])) + (997 * -1000 * ext_call.return_data[0] / 997) / 10^(-ext_call.return_data[0] + 18)
                    mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 2 < stor0.length
                    require 4 < stor0.length
                    _808 = mem[(64 * stor0.length) + 480]
                    mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 428 len 20]
                    require ext_code.size(arg1)
                    call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args mem[(98 * stor0.length) + 356], address(_808), ext_call.return_data[0]
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
                    _1090 = mem[(64 * stor0.length) + 416]
                    require 0 < stor0.length
                    require ext_code.size(mem[(64 * stor0.length) + 364 len 20])
                    call mem[(64 * stor0.length) + 364 len 20].0x313ce567 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 10^(-ext_call.return_data[0] + 18)
                    mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 364 len 20]
                    mem[(98 * stor0.length) + 388] = address(_1090)
                    mem[(98 * stor0.length) + 420] = 997 * -1000 * ext_call.return_data[0] / 997 * ext_call.return_data[0] / (1000 * eth.balance(ext_call.return_data[0])) + (997 * -1000 * ext_call.return_data[0] / 997) / 10^(-ext_call.return_data[0] + 18)
                    require ext_code.size(arg1)
                    call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args mem[(98 * stor0.length) + 356], address(_1090), 997 * -1000 * ext_call.return_data[0] / 997 * ext_call.return_data[0] / (1000 * eth.balance(ext_call.return_data[0])) + (997 * -1000 * ext_call.return_data[0] / 997) / 10^(-ext_call.return_data[0] + 18)
                    mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 2 < stor0.length
                    require 4 < stor0.length
                    _1161 = mem[(64 * stor0.length) + 480]
                    mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 428 len 20]
                    require ext_code.size(arg1)
                    call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args mem[(98 * stor0.length) + 356], address(_1161), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                return -1000 * ext_call.return_data[0] / 997, 
                       ext_call.return_data[0] - (-1000 * ext_call.return_data[0] / 997),
                       address(ext_call.return_data[0])
            if (9970000 * ext_call.return_data[0] * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0]) - (9970000 * ext_call.return_data[0] * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0]) <= 3:
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
                    _761 = ext_call.return_data[28 len 4], mem[(64 * stor0.length) + 420 len 28]
                    require 0 < stor0.length
                    require ext_code.size(ext_call.return_data[44 len 20])
                    call ext_call.return_data[44 len 20].0x313ce567 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 10^(-ext_call.return_data[0] + 18)
                    mem[(98 * stor0.length) + 356] = ext_call.return_data[44 len 20]
                    mem[(98 * stor0.length) + 388] = address(_761)
                    mem[(98 * stor0.length) + 420] = 997 * (-1000 * ext_call.return_data[0]) + 1 / 997 * ext_call.return_data[0] / (1000 * eth.balance(ext_call.return_data[0])) + (997 * (-1000 * ext_call.return_data[0]) + 1 / 997) / 10^(-ext_call.return_data[0] + 18)
                    require ext_code.size(arg1)
                    call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args ext_call.return_data[44 len 20], address(_761), 997 * (-1000 * ext_call.return_data[0]) + 1 / 997 * ext_call.return_data[0] / (1000 * eth.balance(ext_call.return_data[0])) + (997 * (-1000 * ext_call.return_data[0]) + 1 / 997) / 10^(-ext_call.return_data[0] + 18)
                    mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 2 < stor0.length
                    require 4 < stor0.length
                    _812 = mem[(64 * stor0.length) + 480]
                    mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 428 len 20]
                    require ext_code.size(arg1)
                    call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args mem[(98 * stor0.length) + 356], address(_812), ext_call.return_data[0]
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
                    _1088 = mem[(64 * stor0.length) + 416]
                    require 0 < stor0.length
                    require ext_code.size(mem[(64 * stor0.length) + 364 len 20])
                    call mem[(64 * stor0.length) + 364 len 20].0x313ce567 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 10^(-ext_call.return_data[0] + 18)
                    mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 364 len 20]
                    mem[(98 * stor0.length) + 388] = address(_1088)
                    mem[(98 * stor0.length) + 420] = 997 * (-1000 * ext_call.return_data[0]) + 1 / 997 * ext_call.return_data[0] / (1000 * eth.balance(ext_call.return_data[0])) + (997 * (-1000 * ext_call.return_data[0]) + 1 / 997) / 10^(-ext_call.return_data[0] + 18)
                    require ext_code.size(arg1)
                    call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args mem[(98 * stor0.length) + 356], address(_1088), 997 * (-1000 * ext_call.return_data[0]) + 1 / 997 * ext_call.return_data[0] / (1000 * eth.balance(ext_call.return_data[0])) + (997 * (-1000 * ext_call.return_data[0]) + 1 / 997) / 10^(-ext_call.return_data[0] + 18)
                    mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 2 < stor0.length
                    require 4 < stor0.length
                    _1158 = mem[(64 * stor0.length) + 480]
                    mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 428 len 20]
                    require ext_code.size(arg1)
                    call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args mem[(98 * stor0.length) + 356], address(_1158), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                return (-1000 * ext_call.return_data[0]) + 1 / 997, 
                       ext_call.return_data[0] - ((-1000 * ext_call.return_data[0]) + 1 / 997),
                       address(ext_call.return_data[0])
            s = (9970000 * ext_call.return_data[0] * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0]) + (-9970000 * ext_call.return_data[0] * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0]) + 1 / 2
            t = (9970000 * ext_call.return_data[0] * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0]) - (9970000 * ext_call.return_data[0] * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0])
            while s < t:
                require s
                s = ((9970000 * ext_call.return_data[0] * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0]) - (9970000 * ext_call.return_data[0] * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0]) / s) + s / 2
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
                _987 = ext_call.return_data[28 len 4], mem[(64 * stor0.length) + 420 len 28]
                require 0 < stor0.length
                require ext_code.size(ext_call.return_data[44 len 20])
                call ext_call.return_data[44 len 20].0x313ce567 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 10^(-ext_call.return_data[0] + 18)
                mem[(98 * stor0.length) + 356] = ext_call.return_data[44 len 20]
                mem[(98 * stor0.length) + 388] = address(_987)
                mem[(98 * stor0.length) + 420] = 997 * t - (1000 * ext_call.return_data[0]) / 997 * ext_call.return_data[0] / (1000 * eth.balance(ext_call.return_data[0])) + (997 * t - (1000 * ext_call.return_data[0]) / 997) / 10^(-ext_call.return_data[0] + 18)
                require ext_code.size(arg1)
                call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args ext_call.return_data[44 len 20], address(_987), 997 * t - (1000 * ext_call.return_data[0]) / 997 * ext_call.return_data[0] / (1000 * eth.balance(ext_call.return_data[0])) + (997 * t - (1000 * ext_call.return_data[0]) / 997) / 10^(-ext_call.return_data[0] + 18)
                mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 2 < stor0.length
                require 4 < stor0.length
                _1027 = mem[(64 * stor0.length) + 480]
                mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 428 len 20]
                require ext_code.size(arg1)
                call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args mem[(98 * stor0.length) + 356], address(_1027), ext_call.return_data[0]
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
                _1328 = mem[(64 * stor0.length) + 416]
                require 0 < stor0.length
                require ext_code.size(mem[(64 * stor0.length) + 364 len 20])
                call mem[(64 * stor0.length) + 364 len 20].0x313ce567 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 10^(-ext_call.return_data[0] + 18)
                mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 364 len 20]
                mem[(98 * stor0.length) + 388] = address(_1328)
                mem[(98 * stor0.length) + 420] = 997 * t - (1000 * ext_call.return_data[0]) / 997 * ext_call.return_data[0] / (1000 * eth.balance(ext_call.return_data[0])) + (997 * t - (1000 * ext_call.return_data[0]) / 997) / 10^(-ext_call.return_data[0] + 18)
                require ext_code.size(arg1)
                call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args mem[(98 * stor0.length) + 356], address(_1328), 997 * t - (1000 * ext_call.return_data[0]) / 997 * ext_call.return_data[0] / (1000 * eth.balance(ext_call.return_data[0])) + (997 * t - (1000 * ext_call.return_data[0]) / 997) / 10^(-ext_call.return_data[0] + 18)
                mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 2 < stor0.length
                require 4 < stor0.length
                _1373 = mem[(64 * stor0.length) + 480]
                mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 428 len 20]
                require ext_code.size(arg1)
                call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args mem[(98 * stor0.length) + 356], address(_1373), ext_call.return_data[0]
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
        require ext_code.size(arg1)
        call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
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
            _704 = ext_call.return_data[28 len 4], mem[(32 * stor0.length) + 388 len 28]
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
                args ext_call.return_data[44 len 20], address(_704), 2 * defaultAmount / 10^(-ext_call.return_data[0] + 18)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 2 < stor0.length
            require 4 < stor0.length
            _739 = mem[(32 * stor0.length) + 448]
            mem[(64 * stor0.length) + 324] = mem[(32 * stor0.length) + 396 len 20]
            mem[(64 * stor0.length) + 356] = address(_739)
            mem[(64 * stor0.length) + 388] = ext_call.return_data[0]
            require ext_code.size(arg1)
            call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args mem[(64 * stor0.length) + 324], address(_739), ext_call.return_data[0]
            mem[(64 * stor0.length) + 320 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(stor2)
            call stor2.getExchange(address arg1) with:
                 gas gas_remaining wei
                args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(64 * stor0.length) + 324] = address(ext_call.return_data[0])
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x70a08231 with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not (9970000 * ext_call.return_data[0] * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0]) - (9970000 * ext_call.return_data[0] * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0]):
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
                    _871 = ext_call.return_data[28 len 4], mem[(64 * stor0.length) + 420 len 28]
                    require 0 < stor0.length
                    require ext_code.size(ext_call.return_data[44 len 20])
                    call ext_call.return_data[44 len 20].0x313ce567 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 10^(-ext_call.return_data[0] + 18)
                    mem[(98 * stor0.length) + 356] = ext_call.return_data[44 len 20]
                    mem[(98 * stor0.length) + 388] = address(_871)
                    mem[(98 * stor0.length) + 420] = 997 * -1000 * ext_call.return_data[0] / 997 * ext_call.return_data[0] / (1000 * eth.balance(ext_call.return_data[0])) + (997 * -1000 * ext_call.return_data[0] / 997) / 10^(-ext_call.return_data[0] + 18)
                    require ext_code.size(arg1)
                    call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args ext_call.return_data[44 len 20], address(_871), 997 * -1000 * ext_call.return_data[0] / 997 * ext_call.return_data[0] / (1000 * eth.balance(ext_call.return_data[0])) + (997 * -1000 * ext_call.return_data[0] / 997) / 10^(-ext_call.return_data[0] + 18)
                    mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 2 < stor0.length
                    require 4 < stor0.length
                    _913 = mem[(64 * stor0.length) + 480]
                    mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 428 len 20]
                    require ext_code.size(arg1)
                    call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args mem[(98 * stor0.length) + 356], address(_913), ext_call.return_data[0]
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
                    _1094 = mem[(64 * stor0.length) + 416]
                    require 0 < stor0.length
                    require ext_code.size(mem[(64 * stor0.length) + 364 len 20])
                    call mem[(64 * stor0.length) + 364 len 20].0x313ce567 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 10^(-ext_call.return_data[0] + 18)
                    mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 364 len 20]
                    mem[(98 * stor0.length) + 388] = address(_1094)
                    mem[(98 * stor0.length) + 420] = 997 * -1000 * ext_call.return_data[0] / 997 * ext_call.return_data[0] / (1000 * eth.balance(ext_call.return_data[0])) + (997 * -1000 * ext_call.return_data[0] / 997) / 10^(-ext_call.return_data[0] + 18)
                    require ext_code.size(arg1)
                    call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args mem[(98 * stor0.length) + 356], address(_1094), 997 * -1000 * ext_call.return_data[0] / 997 * ext_call.return_data[0] / (1000 * eth.balance(ext_call.return_data[0])) + (997 * -1000 * ext_call.return_data[0] / 997) / 10^(-ext_call.return_data[0] + 18)
                    mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 2 < stor0.length
                    require 4 < stor0.length
                    _1167 = mem[(64 * stor0.length) + 480]
                    mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 428 len 20]
                    require ext_code.size(arg1)
                    call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args mem[(98 * stor0.length) + 356], address(_1167), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                return -1000 * ext_call.return_data[0] / 997, 
                       ext_call.return_data[0] - (-1000 * ext_call.return_data[0] / 997),
                       address(ext_call.return_data[0])
            if (9970000 * ext_call.return_data[0] * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0]) - (9970000 * ext_call.return_data[0] * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0]) <= 3:
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
                    _874 = ext_call.return_data[28 len 4], mem[(64 * stor0.length) + 420 len 28]
                    require 0 < stor0.length
                    require ext_code.size(ext_call.return_data[44 len 20])
                    call ext_call.return_data[44 len 20].0x313ce567 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 10^(-ext_call.return_data[0] + 18)
                    mem[(98 * stor0.length) + 356] = ext_call.return_data[44 len 20]
                    mem[(98 * stor0.length) + 388] = address(_874)
                    mem[(98 * stor0.length) + 420] = 997 * (-1000 * ext_call.return_data[0]) + 1 / 997 * ext_call.return_data[0] / (1000 * eth.balance(ext_call.return_data[0])) + (997 * (-1000 * ext_call.return_data[0]) + 1 / 997) / 10^(-ext_call.return_data[0] + 18)
                    require ext_code.size(arg1)
                    call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args ext_call.return_data[44 len 20], address(_874), 997 * (-1000 * ext_call.return_data[0]) + 1 / 997 * ext_call.return_data[0] / (1000 * eth.balance(ext_call.return_data[0])) + (997 * (-1000 * ext_call.return_data[0]) + 1 / 997) / 10^(-ext_call.return_data[0] + 18)
                    mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 2 < stor0.length
                    require 4 < stor0.length
                    _917 = mem[(64 * stor0.length) + 480]
                    mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 428 len 20]
                    require ext_code.size(arg1)
                    call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args mem[(98 * stor0.length) + 356], address(_917), ext_call.return_data[0]
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
                    _1092 = mem[(64 * stor0.length) + 416]
                    require 0 < stor0.length
                    require ext_code.size(mem[(64 * stor0.length) + 364 len 20])
                    call mem[(64 * stor0.length) + 364 len 20].0x313ce567 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 10^(-ext_call.return_data[0] + 18)
                    mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 364 len 20]
                    mem[(98 * stor0.length) + 388] = address(_1092)
                    mem[(98 * stor0.length) + 420] = 997 * (-1000 * ext_call.return_data[0]) + 1 / 997 * ext_call.return_data[0] / (1000 * eth.balance(ext_call.return_data[0])) + (997 * (-1000 * ext_call.return_data[0]) + 1 / 997) / 10^(-ext_call.return_data[0] + 18)
                    require ext_code.size(arg1)
                    call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args mem[(98 * stor0.length) + 356], address(_1092), 997 * (-1000 * ext_call.return_data[0]) + 1 / 997 * ext_call.return_data[0] / (1000 * eth.balance(ext_call.return_data[0])) + (997 * (-1000 * ext_call.return_data[0]) + 1 / 997) / 10^(-ext_call.return_data[0] + 18)
                    mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 2 < stor0.length
                    require 4 < stor0.length
                    _1164 = mem[(64 * stor0.length) + 480]
                    mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 428 len 20]
                    require ext_code.size(arg1)
                    call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args mem[(98 * stor0.length) + 356], address(_1164), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                return (-1000 * ext_call.return_data[0]) + 1 / 997, 
                       ext_call.return_data[0] - ((-1000 * ext_call.return_data[0]) + 1 / 997),
                       address(ext_call.return_data[0])
            s = (9970000 * ext_call.return_data[0] * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0]) + (-9970000 * ext_call.return_data[0] * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0]) + 1 / 2
            t = (9970000 * ext_call.return_data[0] * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0]) - (9970000 * ext_call.return_data[0] * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0])
            while s < t:
                require s
                s = ((9970000 * ext_call.return_data[0] * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0]) - (9970000 * ext_call.return_data[0] * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0]) / s) + s / 2
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
                _989 = ext_call.return_data[28 len 4], mem[(64 * stor0.length) + 420 len 28]
                require 0 < stor0.length
                require ext_code.size(ext_call.return_data[44 len 20])
                call ext_call.return_data[44 len 20].0x313ce567 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 10^(-ext_call.return_data[0] + 18)
                mem[(98 * stor0.length) + 356] = ext_call.return_data[44 len 20]
                mem[(98 * stor0.length) + 388] = address(_989)
                mem[(98 * stor0.length) + 420] = 997 * t - (1000 * ext_call.return_data[0]) / 997 * ext_call.return_data[0] / (1000 * eth.balance(ext_call.return_data[0])) + (997 * t - (1000 * ext_call.return_data[0]) / 997) / 10^(-ext_call.return_data[0] + 18)
                require ext_code.size(arg1)
                call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args ext_call.return_data[44 len 20], address(_989), 997 * t - (1000 * ext_call.return_data[0]) / 997 * ext_call.return_data[0] / (1000 * eth.balance(ext_call.return_data[0])) + (997 * t - (1000 * ext_call.return_data[0]) / 997) / 10^(-ext_call.return_data[0] + 18)
                mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 2 < stor0.length
                require 4 < stor0.length
                _1030 = mem[(64 * stor0.length) + 480]
                mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 428 len 20]
                require ext_code.size(arg1)
                call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args mem[(98 * stor0.length) + 356], address(_1030), ext_call.return_data[0]
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
                _1330 = mem[(64 * stor0.length) + 416]
                require 0 < stor0.length
                require ext_code.size(mem[(64 * stor0.length) + 364 len 20])
                call mem[(64 * stor0.length) + 364 len 20].0x313ce567 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 10^(-ext_call.return_data[0] + 18)
                mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 364 len 20]
                mem[(98 * stor0.length) + 388] = address(_1330)
                mem[(98 * stor0.length) + 420] = 997 * t - (1000 * ext_call.return_data[0]) / 997 * ext_call.return_data[0] / (1000 * eth.balance(ext_call.return_data[0])) + (997 * t - (1000 * ext_call.return_data[0]) / 997) / 10^(-ext_call.return_data[0] + 18)
                require ext_code.size(arg1)
                call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args mem[(98 * stor0.length) + 356], address(_1330), 997 * t - (1000 * ext_call.return_data[0]) / 997 * ext_call.return_data[0] / (1000 * eth.balance(ext_call.return_data[0])) + (997 * t - (1000 * ext_call.return_data[0]) / 997) / 10^(-ext_call.return_data[0] + 18)
                mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 2 < stor0.length
                require 4 < stor0.length
                _1376 = mem[(64 * stor0.length) + 480]
                mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 428 len 20]
                require ext_code.size(arg1)
                call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args mem[(98 * stor0.length) + 356], address(_1376), ext_call.return_data[0]
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
            _1096 = mem[(32 * stor0.length) + 384]
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
                args mem[(64 * stor0.length) + 324], address(_1096), 2 * defaultAmount / 10^(-ext_call.return_data[0] + 18)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 2 < stor0.length
            require 4 < stor0.length
            _1170 = mem[(32 * stor0.length) + 448]
            mem[(64 * stor0.length) + 324] = mem[(32 * stor0.length) + 396 len 20]
            mem[(64 * stor0.length) + 356] = address(_1170)
            mem[(64 * stor0.length) + 388] = ext_call.return_data[0]
            require ext_code.size(arg1)
            call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args mem[(64 * stor0.length) + 324], address(_1170), ext_call.return_data[0]
            mem[(64 * stor0.length) + 320 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(stor2)
            call stor2.getExchange(address arg1) with:
                 gas gas_remaining wei
                args address(arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(64 * stor0.length) + 324] = address(ext_call.return_data[0])
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x70a08231 with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not (9970000 * ext_call.return_data[0] * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0]) - (9970000 * ext_call.return_data[0] * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0]):
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
                    _1238 = ext_call.return_data[28 len 4], mem[(64 * stor0.length) + 420 len 28]
                    require 0 < stor0.length
                    require ext_code.size(ext_call.return_data[44 len 20])
                    call ext_call.return_data[44 len 20].0x313ce567 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 10^(-ext_call.return_data[0] + 18)
                    mem[(98 * stor0.length) + 356] = ext_call.return_data[44 len 20]
                    mem[(98 * stor0.length) + 388] = address(_1238)
                    mem[(98 * stor0.length) + 420] = 997 * -1000 * ext_call.return_data[0] / 997 * ext_call.return_data[0] / (1000 * eth.balance(ext_call.return_data[0])) + (997 * -1000 * ext_call.return_data[0] / 997) / 10^(-ext_call.return_data[0] + 18)
                    require ext_code.size(arg1)
                    call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args ext_call.return_data[44 len 20], address(_1238), 997 * -1000 * ext_call.return_data[0] / 997 * ext_call.return_data[0] / (1000 * eth.balance(ext_call.return_data[0])) + (997 * -1000 * ext_call.return_data[0] / 997) / 10^(-ext_call.return_data[0] + 18)
                    mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 2 < stor0.length
                    require 4 < stor0.length
                    _1280 = mem[(64 * stor0.length) + 480]
                    mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 428 len 20]
                    require ext_code.size(arg1)
                    call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args mem[(98 * stor0.length) + 356], address(_1280), ext_call.return_data[0]
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
                    _1426 = mem[(64 * stor0.length) + 416]
                    require 0 < stor0.length
                    require ext_code.size(mem[(64 * stor0.length) + 364 len 20])
                    call mem[(64 * stor0.length) + 364 len 20].0x313ce567 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 10^(-ext_call.return_data[0] + 18)
                    mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 364 len 20]
                    mem[(98 * stor0.length) + 388] = address(_1426)
                    mem[(98 * stor0.length) + 420] = 997 * -1000 * ext_call.return_data[0] / 997 * ext_call.return_data[0] / (1000 * eth.balance(ext_call.return_data[0])) + (997 * -1000 * ext_call.return_data[0] / 997) / 10^(-ext_call.return_data[0] + 18)
                    require ext_code.size(arg1)
                    call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args mem[(98 * stor0.length) + 356], address(_1426), 997 * -1000 * ext_call.return_data[0] / 997 * ext_call.return_data[0] / (1000 * eth.balance(ext_call.return_data[0])) + (997 * -1000 * ext_call.return_data[0] / 997) / 10^(-ext_call.return_data[0] + 18)
                    mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 2 < stor0.length
                    require 4 < stor0.length
                    _1455 = mem[(64 * stor0.length) + 480]
                    mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 428 len 20]
                    require ext_code.size(arg1)
                    call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args mem[(98 * stor0.length) + 356], address(_1455), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                return -1000 * ext_call.return_data[0] / 997, 
                       ext_call.return_data[0] - (-1000 * ext_call.return_data[0] / 997),
                       address(ext_call.return_data[0])
            if (9970000 * ext_call.return_data[0] * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0]) - (9970000 * ext_call.return_data[0] * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0]) <= 3:
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
                    _1241 = ext_call.return_data[28 len 4], mem[(64 * stor0.length) + 420 len 28]
                    require 0 < stor0.length
                    require ext_code.size(ext_call.return_data[44 len 20])
                    call ext_call.return_data[44 len 20].0x313ce567 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 10^(-ext_call.return_data[0] + 18)
                    mem[(98 * stor0.length) + 356] = ext_call.return_data[44 len 20]
                    mem[(98 * stor0.length) + 388] = address(_1241)
                    mem[(98 * stor0.length) + 420] = 997 * (-1000 * ext_call.return_data[0]) + 1 / 997 * ext_call.return_data[0] / (1000 * eth.balance(ext_call.return_data[0])) + (997 * (-1000 * ext_call.return_data[0]) + 1 / 997) / 10^(-ext_call.return_data[0] + 18)
                    require ext_code.size(arg1)
                    call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args ext_call.return_data[44 len 20], address(_1241), 997 * (-1000 * ext_call.return_data[0]) + 1 / 997 * ext_call.return_data[0] / (1000 * eth.balance(ext_call.return_data[0])) + (997 * (-1000 * ext_call.return_data[0]) + 1 / 997) / 10^(-ext_call.return_data[0] + 18)
                    mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 2 < stor0.length
                    require 4 < stor0.length
                    _1284 = mem[(64 * stor0.length) + 480]
                    mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 428 len 20]
                    require ext_code.size(arg1)
                    call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args mem[(98 * stor0.length) + 356], address(_1284), ext_call.return_data[0]
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
                    _1424 = mem[(64 * stor0.length) + 416]
                    require 0 < stor0.length
                    require ext_code.size(mem[(64 * stor0.length) + 364 len 20])
                    call mem[(64 * stor0.length) + 364 len 20].0x313ce567 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 10^(-ext_call.return_data[0] + 18)
                    mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 364 len 20]
                    mem[(98 * stor0.length) + 388] = address(_1424)
                    mem[(98 * stor0.length) + 420] = 997 * (-1000 * ext_call.return_data[0]) + 1 / 997 * ext_call.return_data[0] / (1000 * eth.balance(ext_call.return_data[0])) + (997 * (-1000 * ext_call.return_data[0]) + 1 / 997) / 10^(-ext_call.return_data[0] + 18)
                    require ext_code.size(arg1)
                    call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args mem[(98 * stor0.length) + 356], address(_1424), 997 * (-1000 * ext_call.return_data[0]) + 1 / 997 * ext_call.return_data[0] / (1000 * eth.balance(ext_call.return_data[0])) + (997 * (-1000 * ext_call.return_data[0]) + 1 / 997) / 10^(-ext_call.return_data[0] + 18)
                    mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 2 < stor0.length
                    require 4 < stor0.length
                    _1452 = mem[(64 * stor0.length) + 480]
                    mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 428 len 20]
                    require ext_code.size(arg1)
                    call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args mem[(98 * stor0.length) + 356], address(_1452), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                return (-1000 * ext_call.return_data[0]) + 1 / 997, 
                       ext_call.return_data[0] - ((-1000 * ext_call.return_data[0]) + 1 / 997),
                       address(ext_call.return_data[0])
            s = (9970000 * ext_call.return_data[0] * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0]) + (-9970000 * ext_call.return_data[0] * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0]) + 1 / 2
            t = (9970000 * ext_call.return_data[0] * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0]) - (9970000 * ext_call.return_data[0] * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0])
            while s < t:
                require s
                s = ((9970000 * ext_call.return_data[0] * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0]) - (9970000 * ext_call.return_data[0] * eth.balance(ext_call.return_data[0]) * ext_call.return_data[0]) / s) + s / 2
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
                _1360 = ext_call.return_data[28 len 4], mem[(64 * stor0.length) + 420 len 28]
                require 0 < stor0.length
                require ext_code.size(ext_call.return_data[44 len 20])
                call ext_call.return_data[44 len 20].0x313ce567 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 10^(-ext_call.return_data[0] + 18)
                mem[(98 * stor0.length) + 356] = ext_call.return_data[44 len 20]
                mem[(98 * stor0.length) + 388] = address(_1360)
                mem[(98 * stor0.length) + 420] = 997 * t - (1000 * ext_call.return_data[0]) / 997 * ext_call.return_data[0] / (1000 * eth.balance(ext_call.return_data[0])) + (997 * t - (1000 * ext_call.return_data[0]) / 997) / 10^(-ext_call.return_data[0] + 18)
                require ext_code.size(arg1)
                call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args ext_call.return_data[44 len 20], address(_1360), 997 * t - (1000 * ext_call.return_data[0]) / 997 * ext_call.return_data[0] / (1000 * eth.balance(ext_call.return_data[0])) + (997 * t - (1000 * ext_call.return_data[0]) / 997) / 10^(-ext_call.return_data[0] + 18)
                mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 2 < stor0.length
                require 4 < stor0.length
                _1398 = mem[(64 * stor0.length) + 480]
                mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 428 len 20]
                require ext_code.size(arg1)
                call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args mem[(98 * stor0.length) + 356], address(_1398), ext_call.return_data[0]
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
                _1477 = mem[(64 * stor0.length) + 416]
                require 0 < stor0.length
                require ext_code.size(mem[(64 * stor0.length) + 364 len 20])
                call mem[(64 * stor0.length) + 364 len 20].0x313ce567 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 10^(-ext_call.return_data[0] + 18)
                mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 364 len 20]
                mem[(98 * stor0.length) + 388] = address(_1477)
                mem[(98 * stor0.length) + 420] = 997 * t - (1000 * ext_call.return_data[0]) / 997 * ext_call.return_data[0] / (1000 * eth.balance(ext_call.return_data[0])) + (997 * t - (1000 * ext_call.return_data[0]) / 997) / 10^(-ext_call.return_data[0] + 18)
                require ext_code.size(arg1)
                call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args mem[(98 * stor0.length) + 356], address(_1477), 997 * t - (1000 * ext_call.return_data[0]) / 997 * ext_call.return_data[0] / (1000 * eth.balance(ext_call.return_data[0])) + (997 * t - (1000 * ext_call.return_data[0]) / 997) / 10^(-ext_call.return_data[0] + 18)
                mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 2 < stor0.length
                require 4 < stor0.length
                _1491 = mem[(64 * stor0.length) + 480]
                mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 428 len 20]
                require ext_code.size(arg1)
                call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args mem[(98 * stor0.length) + 356], address(_1491), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return t - (1000 * ext_call.return_data[0]) / 997, 
           ext_call.return_data[0] - (t - (1000 * ext_call.return_data[0]) / 997),
           address(ext_call.return_data[0])
}



}
