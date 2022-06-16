contract main {




// =====================  Runtime code  =====================


array of struct stor0;
uint256 defaultAmount;

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

function sub_6e69ee33(?) {
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
    require 1 < arg1.length
    require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
    call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(mem[128]), address(mem[160]), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    mem[(32 * arg1.length) + 260 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
    call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0xcf93ebe3 with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 260 len (32 * arg1.length) - floor32(arg1.length)]), address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    return (10^18 * arg3 / ext_call.return_data[0])
}

function sub_de0192db(?) {
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
    require 1 < arg1.length
    require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
    call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(mem[128]), address(mem[160]), 2 * defaultAmount
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    mem[(32 * arg1.length) + 260 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
    call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0xcf93ebe3 with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 260 len (32 * arg1.length) - floor32(arg1.length)]), address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - arg4
    return (10^18 * arg3 - arg4 / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - arg4)
}

function sub_2fa5a5bd(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require 0 < arg1.length
    require ext_code.size(mem[140 len 20])
    call mem[140 len 20].0x313ce567 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 10^(-ext_call.return_data[0] + 18)
    mem[(32 * arg1.length) + 164] = arg2
    mem[(32 * arg1.length) + 196] = arg3 / 10^(-ext_call.return_data[0] + 18)
    mem[(32 * arg1.length) + 132] = 96
    mem[(32 * arg1.length) + 228] = arg1.length
    mem[(32 * arg1.length) + 260 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
    call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0x4ed85961 with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 260 len (32 * arg1.length) - floor32(arg1.length)]), address(arg2), arg3 / 10^(-ext_call.return_data[0] + 18)
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
    require arg3
    return (10^18 * ext_call.return_data[0] / arg3)
}

function sub_7f899d0b(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require 0 < arg1.length
    require ext_code.size(mem[140 len 20])
    call mem[140 len 20].0x313ce567 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 10^(-ext_call.return_data[0] + 18)
    mem[(32 * arg1.length) + 164] = arg2
    mem[(32 * arg1.length) + 196] = 2 * defaultAmount / 10^(-ext_call.return_data[0] + 18)
    mem[(32 * arg1.length) + 132] = 96
    mem[(32 * arg1.length) + 228] = arg1.length
    mem[(32 * arg1.length) + 260 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
    call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0x4ed85961 with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 260 len (32 * arg1.length) - floor32(arg1.length)]), address(arg2), 2 * defaultAmount / 10^(-ext_call.return_data[0] + 18)
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
    require 2 * defaultAmount
    require arg4 - (10^18 * ext_call.return_data[0] / 2 * defaultAmount)
    return (10^18 * arg4 - arg3 / 2 / arg4 - (10^18 * ext_call.return_data[0] / 2 * defaultAmount))
}

function sub_132b45aa(?) {
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require 0 < arg3.length
    require ext_code.size(mem[140 len 20])
    call mem[140 len 20].0x313ce567 with:
         gas gas_remaining wei
    mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0 < arg3.length
    require ext_code.size(mem[140 len 20])
    call mem[140 len 20].0x313ce567 with:
         gas gas_remaining wei
    mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0 < arg3.length
    require 1 < arg3.length
    require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
    call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(mem[128]), address(mem[160]), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    mem[(32 * arg3.length) + 260 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
    call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0xcf93ebe3 with:
         gas gas_remaining wei
        args Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg3.length) + floor32(arg3.length) + 260 len (32 * arg3.length) - floor32(arg3.length)]), address(arg4), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if arg2 <= 10^18 * arg1 / ext_call.return_data[0]:
        return 0, 3
    require 10^18 * arg1 / ext_call.return_data[0]
    return arg1, 
           (arg2 * 10^18 * arg1 / 10^18 * arg1 / ext_call.return_data[0]) - (10^18 * arg1 / ext_call.return_data[0] * 10^18 * arg1 / 10^18 * arg1 / ext_call.return_data[0]) / 10^18
}

function sub_f75a4c2b(?) {
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require 0 < arg3.length
    require ext_code.size(mem[140 len 20])
    call mem[140 len 20].0x313ce567 with:
         gas gas_remaining wei
    mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0 < arg3.length
    require ext_code.size(mem[140 len 20])
    call mem[140 len 20].0x313ce567 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 10^(-ext_call.return_data[0] + 18)
    mem[(32 * arg3.length) + 164] = arg4
    mem[(32 * arg3.length) + 196] = arg1 / 10^(-ext_call.return_data[0] + 18)
    mem[(32 * arg3.length) + 132] = 96
    mem[(32 * arg3.length) + 228] = arg3.length
    mem[(32 * arg3.length) + 260 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
    call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0x4ed85961 with:
         gas gas_remaining wei
        args Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg3.length) + floor32(arg3.length) + 260 len (32 * arg3.length) - floor32(arg3.length)]), address(arg4), arg1 / 10^(-ext_call.return_data[0] + 18)
    mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 2 < arg3.length
    require 4 < arg3.length
    require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
    call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(mem[192]), address(mem[256]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require arg1
    if arg2 >= 10^18 * ext_call.return_data[0] / arg1:
        return 0, 3
    require arg2
    return arg1, (10^18 * ext_call.return_data[0] / arg1 * 10^18 * arg1 / arg2) - (arg2 * 10^18 * arg1 / arg2) / 10^18
}

function sub_2e8d3f07(?) {
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
    if not stor0.length:
        if 0 < stor0.length:
            require ext_code.size(mem[300 len 20])
            call mem[300 len 20].0x313ce567 with:
                 gas gas_remaining wei
            mem[(32 * stor0.length) + 288] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0 < stor0.length:
                if 1 < stor0.length:
                    require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                    call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(mem[288]), address(mem[320]), defaultAmount
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    mem[(32 * stor0.length) + 324] = arg1
                    mem[(32 * stor0.length) + 356] = ext_call.return_data[0]
                    mem[(32 * stor0.length) + 292] = 96
                    mem[(32 * stor0.length) + 388] = stor0.length
                    mem[(32 * stor0.length) + 420 len floor32(stor0.length)] = mem[288 len floor32(stor0.length)]
                    require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
                    call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0xcf93ebe3 with:
                         gas gas_remaining wei
                        args Array(len=stor0.length, data=mem[288 len floor32(stor0.length)], mem[(32 * stor0.length) + floor32(stor0.length) + 420 len (32 * stor0.length) - floor32(stor0.length)]), address(arg1), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        if arg3 <= 10^18 * defaultAmount / ext_call.return_data[0]:
                            return 0, 1
                        if not stor0.length:
                            if 0 < stor0.length:
                                require ext_code.size(address(arg1) << 64)
                                call address(arg1) << 64.0x313ce567 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 0 < stor0.length:
                                    if 1 < stor0.length:
                                        require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                                        call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args arg1 << 160, address(ext_call.return_data[0 len 28]), 2 * defaultAmount
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 64
                                        mem[(64 * stor0.length) + 320] = 0xcf93ebe300000000000000000000000000000000000000000000000000000000
                                        mem[(64 * stor0.length) + 356] = arg1
                                        mem[(64 * stor0.length) + 388] = ext_call.return_data[0]
                                        mem[(64 * stor0.length) + 324] = 96
                                        mem[(64 * stor0.length) + 420] = stor0.length
                                        mem[(64 * stor0.length) + 452 len floor32(stor0.length)] = mem[(32 * stor0.length) + 320 len floor32(stor0.length)]
                                        require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
                                        call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0xcf93ebe3 with:
                                             gas gas_remaining wei
                                            args mem[(64 * stor0.length) + 324 len (161 * stor0.length) + 128]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            if (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0]):
                                                if 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0]) <= 0:
                                                    return 0, 2
                                                if 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0]) <= arg4 * arg3 / 10^18:
                                                    if not stor0.length:
                                                        if 0 < stor0.length:
                                                            require ext_code.size(address(arg1) << 64)
                                                            call address(arg1) << 64.0x313ce567 with:
                                                                 gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if 0 < stor0.length:
                                                                require ext_code.size(address(arg1) << 64)
                                                                call address(arg1) << 64.0x313ce567 with:
                                                                     gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if 0 < stor0.length:
                                                                    if 1 < stor0.length:
                                                                        require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                                                                        call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                                                                             gas gas_remaining wei
                                                                            args arg1 << 160, address(ext_call.return_data[0 len 28]), 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0])
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 64
                                                                        mem[(98 * stor0.length) + 484 len floor32(stor0.length)] = mem[(64 * stor0.length) + 352 len floor32(stor0.length)]
                                                                        require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
                                                                        call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0xcf93ebe3 with:
                                                                             gas gas_remaining wei
                                                                            args Array(len=stor0.length, data=mem[(64 * stor0.length) + 352 len floor32(stor0.length)], mem[(98 * stor0.length) + floor32(stor0.length) + 484 len (33 * stor0.length) - floor32(stor0.length)]), address(arg1), ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        if ext_call.return_data[0]:
                                                                            if arg3 <= 10^18 * 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0]) / ext_call.return_data[0]:
                                                                                return 0, 3
                                                                            if 10^18 * 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0]) / ext_call.return_data[0]:
                                                                                return 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0]), 
                                                                                       (arg3 * 10^18 * 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0]) / 10^18 * 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0]) / ext_call.return_data[0]) - (10^18 * 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0]) / ext_call.return_data[0] * 10^18 * 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0]) / 10^18 * 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0]) / ext_call.return_data[0]) / 10^18
                                                    else:
                                                        mem[(64 * stor0.length) + 352] = address(stor0.field_0)
                                                        idx = (64 * stor0.length) + 352
                                                        s = 0
                                                        while (98 * stor0.length) + 320 > idx:
                                                            mem[idx + 32] = stor0[s].field_256
                                                            idx = idx + 32
                                                            s = s + 1
                                                            continue 
                                                        if 0 < stor0.length:
                                                            require ext_code.size(mem[(64 * stor0.length) + 364 len 20])
                                                            call mem[(64 * stor0.length) + 364 len 20].0x313ce567 with:
                                                                 gas gas_remaining wei
                                                            mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if 0 < stor0.length:
                                                                require ext_code.size(mem[(64 * stor0.length) + 364 len 20])
                                                                call mem[(64 * stor0.length) + 364 len 20].0x313ce567 with:
                                                                     gas gas_remaining wei
                                                                mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if 0 < stor0.length:
                                                                    if 1 < stor0.length:
                                                                        _903 = mem[(64 * stor0.length) + 384]
                                                                        mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 364 len 20]
                                                                        require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                                                                        call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                                                                             gas gas_remaining wei
                                                                            args mem[(98 * stor0.length) + 356], address(_903), 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0])
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 64
                                                                        mem[(98 * stor0.length) + 484 len floor32(stor0.length)] = mem[(64 * stor0.length) + 352 len floor32(stor0.length)]
                                                                        require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
                                                                        call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0xcf93ebe3 with:
                                                                             gas gas_remaining wei
                                                                            args Array(len=stor0.length, data=mem[(64 * stor0.length) + 352 len floor32(stor0.length)], mem[(98 * stor0.length) + floor32(stor0.length) + 484 len (33 * stor0.length) - floor32(stor0.length)]), address(arg1), ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        if ext_call.return_data[0]:
                                                                            if arg3 <= 10^18 * 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0]) / ext_call.return_data[0]:
                                                                                return 0, 3
                                                                            if 10^18 * 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0]) / ext_call.return_data[0]:
                                                                                return 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0]), 
                                                                                       (arg3 * 10^18 * 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0]) / 10^18 * 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0]) / ext_call.return_data[0]) - (10^18 * 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0]) / ext_call.return_data[0] * 10^18 * 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0]) / 10^18 * 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0]) / ext_call.return_data[0]) / 10^18
                                                else:
                                                    if not stor0.length:
                                                        if 0 < stor0.length:
                                                            require ext_code.size(address(arg1) << 64)
                                                            call address(arg1) << 64.0x313ce567 with:
                                                                 gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if 0 < stor0.length:
                                                                require ext_code.size(address(arg1) << 64)
                                                                call address(arg1) << 64.0x313ce567 with:
                                                                     gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if 0 < stor0.length:
                                                                    if 1 < stor0.length:
                                                                        require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                                                                        call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                                                                             gas gas_remaining wei
                                                                            args arg1 << 160, address(ext_call.return_data[0 len 28]), arg4 * arg3 / 10^18
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 64
                                                                        mem[(98 * stor0.length) + 484 len floor32(stor0.length)] = mem[(64 * stor0.length) + 352 len floor32(stor0.length)]
                                                                        require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
                                                                        call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0xcf93ebe3 with:
                                                                             gas gas_remaining wei
                                                                            args Array(len=stor0.length, data=mem[(64 * stor0.length) + 352 len floor32(stor0.length)], mem[(98 * stor0.length) + floor32(stor0.length) + 484 len (33 * stor0.length) - floor32(stor0.length)]), address(arg1), ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        if ext_call.return_data[0]:
                                                                            if arg3 <= 10^18 * arg4 * arg3 / 10^18 / ext_call.return_data[0]:
                                                                                return 0, 3
                                                                            if 10^18 * arg4 * arg3 / 10^18 / ext_call.return_data[0]:
                                                                                return arg4 * arg3 / 10^18, 
                                                                                       (arg3 * 10^18 * arg4 * arg3 / 10^18 / 10^18 * arg4 * arg3 / 10^18 / ext_call.return_data[0]) - (10^18 * arg4 * arg3 / 10^18 / ext_call.return_data[0] * 10^18 * arg4 * arg3 / 10^18 / 10^18 * arg4 * arg3 / 10^18 / ext_call.return_data[0]) / 10^18
                                                    else:
                                                        mem[(64 * stor0.length) + 352] = address(stor0.field_0)
                                                        idx = (64 * stor0.length) + 352
                                                        s = 0
                                                        while (98 * stor0.length) + 320 > idx:
                                                            mem[idx + 32] = stor0[s].field_256
                                                            idx = idx + 32
                                                            s = s + 1
                                                            continue 
                                                        if 0 < stor0.length:
                                                            require ext_code.size(mem[(64 * stor0.length) + 364 len 20])
                                                            call mem[(64 * stor0.length) + 364 len 20].0x313ce567 with:
                                                                 gas gas_remaining wei
                                                            mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if 0 < stor0.length:
                                                                require ext_code.size(mem[(64 * stor0.length) + 364 len 20])
                                                                call mem[(64 * stor0.length) + 364 len 20].0x313ce567 with:
                                                                     gas gas_remaining wei
                                                                mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if 0 < stor0.length:
                                                                    if 1 < stor0.length:
                                                                        _906 = mem[(64 * stor0.length) + 384]
                                                                        mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 364 len 20]
                                                                        require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                                                                        call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                                                                             gas gas_remaining wei
                                                                            args mem[(98 * stor0.length) + 356], address(_906), arg4 * arg3 / 10^18
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 64
                                                                        mem[(98 * stor0.length) + 484 len floor32(stor0.length)] = mem[(64 * stor0.length) + 352 len floor32(stor0.length)]
                                                                        require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
                                                                        call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0xcf93ebe3 with:
                                                                             gas gas_remaining wei
                                                                            args Array(len=stor0.length, data=mem[(64 * stor0.length) + 352 len floor32(stor0.length)], mem[(98 * stor0.length) + floor32(stor0.length) + 484 len (33 * stor0.length) - floor32(stor0.length)]), address(arg1), ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        if ext_call.return_data[0]:
                                                                            if arg3 <= 10^18 * arg4 * arg3 / 10^18 / ext_call.return_data[0]:
                                                                                return 0, 3
                                                                            if 10^18 * arg4 * arg3 / 10^18 / ext_call.return_data[0]:
                                                                                return arg4 * arg3 / 10^18, 
                                                                                       (arg3 * 10^18 * arg4 * arg3 / 10^18 / 10^18 * arg4 * arg3 / 10^18 / ext_call.return_data[0]) - (10^18 * arg4 * arg3 / 10^18 / ext_call.return_data[0] * 10^18 * arg4 * arg3 / 10^18 / 10^18 * arg4 * arg3 / 10^18 / ext_call.return_data[0]) / 10^18
                        else:
                            mem[(32 * stor0.length) + 320] = address(stor0.field_0)
                            idx = (32 * stor0.length) + 320
                            s = 0
                            while (64 * stor0.length) + 288 > idx:
                                mem[idx + 32] = stor0[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if 0 < stor0.length:
                                require ext_code.size(mem[(32 * stor0.length) + 332 len 20])
                                call mem[(32 * stor0.length) + 332 len 20].0x313ce567 with:
                                     gas gas_remaining wei
                                mem[(64 * stor0.length) + 320] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 0 < stor0.length:
                                    if 1 < stor0.length:
                                        _679 = mem[(32 * stor0.length) + 352]
                                        mem[(64 * stor0.length) + 324] = mem[(32 * stor0.length) + 332 len 20]
                                        require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                                        call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args mem[(64 * stor0.length) + 324], address(_679), 2 * defaultAmount
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 64
                                        mem[(64 * stor0.length) + 320] = 0xcf93ebe300000000000000000000000000000000000000000000000000000000
                                        mem[(64 * stor0.length) + 356] = arg1
                                        mem[(64 * stor0.length) + 388] = ext_call.return_data[0]
                                        mem[(64 * stor0.length) + 324] = 96
                                        mem[(64 * stor0.length) + 420] = stor0.length
                                        mem[(64 * stor0.length) + 452 len floor32(stor0.length)] = mem[(32 * stor0.length) + 320 len floor32(stor0.length)]
                                        require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
                                        call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0xcf93ebe3 with:
                                             gas gas_remaining wei
                                            args mem[(64 * stor0.length) + 324 len (161 * stor0.length) + 128]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            if (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0]):
                                                if 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0]) <= 0:
                                                    return 0, 2
                                                if 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0]) <= arg4 * arg3 / 10^18:
                                                    if not stor0.length:
                                                        if 0 < stor0.length:
                                                            require ext_code.size(Mask(96, 0, arg1) << 64)
                                                            call Mask(96, 0, arg1) << 64.0x313ce567 with:
                                                                 gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if 0 < stor0.length:
                                                                require ext_code.size(Mask(96, 0, arg1) << 64)
                                                                call Mask(96, 0, arg1) << 64.0x313ce567 with:
                                                                     gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if 0 < stor0.length:
                                                                    if 1 < stor0.length:
                                                                        require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                                                                        call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                                                                             gas gas_remaining wei
                                                                            args arg1 << 160, address(ext_call.return_data[0 len 28]), 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0])
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 64
                                                                        mem[(98 * stor0.length) + 484 len floor32(stor0.length)] = mem[(64 * stor0.length) + 352 len floor32(stor0.length)]
                                                                        require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
                                                                        call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0xcf93ebe3 with:
                                                                             gas gas_remaining wei
                                                                            args Array(len=stor0.length, data=mem[(64 * stor0.length) + 352 len floor32(stor0.length)], mem[(98 * stor0.length) + floor32(stor0.length) + 484 len (33 * stor0.length) - floor32(stor0.length)]), address(arg1), ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        if ext_call.return_data[0]:
                                                                            if arg3 <= 10^18 * 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0]) / ext_call.return_data[0]:
                                                                                return 0, 3
                                                                            if 10^18 * 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0]) / ext_call.return_data[0]:
                                                                                return 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0]), 
                                                                                       (arg3 * 10^18 * 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0]) / 10^18 * 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0]) / ext_call.return_data[0]) - (10^18 * 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0]) / ext_call.return_data[0] * 10^18 * 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0]) / 10^18 * 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0]) / ext_call.return_data[0]) / 10^18
                                                    else:
                                                        mem[(64 * stor0.length) + 352] = address(stor0.field_0)
                                                        idx = (64 * stor0.length) + 352
                                                        s = 0
                                                        while (98 * stor0.length) + 320 > idx:
                                                            mem[idx + 32] = stor0[s].field_256
                                                            idx = idx + 32
                                                            s = s + 1
                                                            continue 
                                                        if 0 < stor0.length:
                                                            require ext_code.size(mem[(64 * stor0.length) + 364 len 20])
                                                            call mem[(64 * stor0.length) + 364 len 20].0x313ce567 with:
                                                                 gas gas_remaining wei
                                                            mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if 0 < stor0.length:
                                                                require ext_code.size(mem[(64 * stor0.length) + 364 len 20])
                                                                call mem[(64 * stor0.length) + 364 len 20].0x313ce567 with:
                                                                     gas gas_remaining wei
                                                                mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if 0 < stor0.length:
                                                                    if 1 < stor0.length:
                                                                        _1281 = mem[(64 * stor0.length) + 384]
                                                                        mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 364 len 20]
                                                                        require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                                                                        call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                                                                             gas gas_remaining wei
                                                                            args mem[(98 * stor0.length) + 356], address(_1281), 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0])
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 64
                                                                        mem[(98 * stor0.length) + 484 len floor32(stor0.length)] = mem[(64 * stor0.length) + 352 len floor32(stor0.length)]
                                                                        require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
                                                                        call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0xcf93ebe3 with:
                                                                             gas gas_remaining wei
                                                                            args Array(len=stor0.length, data=mem[(64 * stor0.length) + 352 len floor32(stor0.length)], mem[(98 * stor0.length) + floor32(stor0.length) + 484 len (33 * stor0.length) - floor32(stor0.length)]), address(arg1), ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        if ext_call.return_data[0]:
                                                                            if arg3 <= 10^18 * 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0]) / ext_call.return_data[0]:
                                                                                return 0, 3
                                                                            if 10^18 * 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0]) / ext_call.return_data[0]:
                                                                                return 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0]), 
                                                                                       (arg3 * 10^18 * 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0]) / 10^18 * 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0]) / ext_call.return_data[0]) - (10^18 * 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0]) / ext_call.return_data[0] * 10^18 * 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0]) / 10^18 * 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0]) / ext_call.return_data[0]) / 10^18
                                                else:
                                                    if not stor0.length:
                                                        if 0 < stor0.length:
                                                            require ext_code.size(Mask(96, 0, arg1) << 64)
                                                            call Mask(96, 0, arg1) << 64.0x313ce567 with:
                                                                 gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if 0 < stor0.length:
                                                                require ext_code.size(Mask(96, 0, arg1) << 64)
                                                                call Mask(96, 0, arg1) << 64.0x313ce567 with:
                                                                     gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if 0 < stor0.length:
                                                                    if 1 < stor0.length:
                                                                        require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                                                                        call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                                                                             gas gas_remaining wei
                                                                            args arg1 << 160, address(ext_call.return_data[0 len 28]), arg4 * arg3 / 10^18
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 64
                                                                        mem[(98 * stor0.length) + 484 len floor32(stor0.length)] = mem[(64 * stor0.length) + 352 len floor32(stor0.length)]
                                                                        require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
                                                                        call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0xcf93ebe3 with:
                                                                             gas gas_remaining wei
                                                                            args Array(len=stor0.length, data=mem[(64 * stor0.length) + 352 len floor32(stor0.length)], mem[(98 * stor0.length) + floor32(stor0.length) + 484 len (33 * stor0.length) - floor32(stor0.length)]), address(arg1), ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        if ext_call.return_data[0]:
                                                                            if arg3 <= 10^18 * arg4 * arg3 / 10^18 / ext_call.return_data[0]:
                                                                                return 0, 3
                                                                            if 10^18 * arg4 * arg3 / 10^18 / ext_call.return_data[0]:
                                                                                return arg4 * arg3 / 10^18, 
                                                                                       (arg3 * 10^18 * arg4 * arg3 / 10^18 / 10^18 * arg4 * arg3 / 10^18 / ext_call.return_data[0]) - (10^18 * arg4 * arg3 / 10^18 / ext_call.return_data[0] * 10^18 * arg4 * arg3 / 10^18 / 10^18 * arg4 * arg3 / 10^18 / ext_call.return_data[0]) / 10^18
                                                    else:
                                                        mem[(64 * stor0.length) + 352] = address(stor0.field_0)
                                                        idx = (64 * stor0.length) + 352
                                                        s = 0
                                                        while (98 * stor0.length) + 320 > idx:
                                                            mem[idx + 32] = stor0[s].field_256
                                                            idx = idx + 32
                                                            s = s + 1
                                                            continue 
                                                        if 0 < stor0.length:
                                                            require ext_code.size(mem[(64 * stor0.length) + 364 len 20])
                                                            call mem[(64 * stor0.length) + 364 len 20].0x313ce567 with:
                                                                 gas gas_remaining wei
                                                            mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if 0 < stor0.length:
                                                                require ext_code.size(mem[(64 * stor0.length) + 364 len 20])
                                                                call mem[(64 * stor0.length) + 364 len 20].0x313ce567 with:
                                                                     gas gas_remaining wei
                                                                mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if 0 < stor0.length:
                                                                    if 1 < stor0.length:
                                                                        _1284 = mem[(64 * stor0.length) + 384]
                                                                        mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 364 len 20]
                                                                        require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                                                                        call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                                                                             gas gas_remaining wei
                                                                            args mem[(98 * stor0.length) + 356], address(_1284), arg4 * arg3 / 10^18
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 64
                                                                        mem[(98 * stor0.length) + 484 len floor32(stor0.length)] = mem[(64 * stor0.length) + 352 len floor32(stor0.length)]
                                                                        require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
                                                                        call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0xcf93ebe3 with:
                                                                             gas gas_remaining wei
                                                                            args Array(len=stor0.length, data=mem[(64 * stor0.length) + 352 len floor32(stor0.length)], mem[(98 * stor0.length) + floor32(stor0.length) + 484 len (33 * stor0.length) - floor32(stor0.length)]), address(arg1), ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        if ext_call.return_data[0]:
                                                                            if arg3 <= 10^18 * arg4 * arg3 / 10^18 / ext_call.return_data[0]:
                                                                                return 0, 3
                                                                            if 10^18 * arg4 * arg3 / 10^18 / ext_call.return_data[0]:
                                                                                return arg4 * arg3 / 10^18, 
                                                                                       (arg3 * 10^18 * arg4 * arg3 / 10^18 / 10^18 * arg4 * arg3 / 10^18 / ext_call.return_data[0]) - (10^18 * arg4 * arg3 / 10^18 / ext_call.return_data[0] * 10^18 * arg4 * arg3 / 10^18 / 10^18 * arg4 * arg3 / 10^18 / ext_call.return_data[0]) / 10^18
    else:
        mem[288] = address(stor0.field_0)
        idx = 288
        s = 0
        while (32 * stor0.length) + 256 > idx:
            mem[idx + 32] = stor0[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if 0 < stor0.length:
            require ext_code.size(mem[300 len 20])
            call mem[300 len 20].0x313ce567 with:
                 gas gas_remaining wei
            mem[(32 * stor0.length) + 288] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0 < stor0.length:
                if 1 < stor0.length:
                    _478 = mem[320]
                    mem[(32 * stor0.length) + 292] = mem[300 len 20]
                    require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                    call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args mem[(32 * stor0.length) + 292], address(_478), defaultAmount
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    mem[(32 * stor0.length) + 324] = arg1
                    mem[(32 * stor0.length) + 356] = ext_call.return_data[0]
                    mem[(32 * stor0.length) + 292] = 96
                    mem[(32 * stor0.length) + 388] = stor0.length
                    mem[(32 * stor0.length) + 420 len floor32(stor0.length)] = mem[288 len floor32(stor0.length)]
                    require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
                    call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0xcf93ebe3 with:
                         gas gas_remaining wei
                        args Array(len=stor0.length, data=mem[288 len floor32(stor0.length)], mem[(32 * stor0.length) + floor32(stor0.length) + 420 len (32 * stor0.length) - floor32(stor0.length)]), address(arg1), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        if arg3 <= 10^18 * defaultAmount / ext_call.return_data[0]:
                            return 0, 1
                        if not stor0.length:
                            if 0 < stor0.length:
                                require ext_code.size(Mask(96, 0, arg1) << 64)
                                call Mask(96, 0, arg1) << 64.0x313ce567 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 0 < stor0.length:
                                    if 1 < stor0.length:
                                        require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                                        call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args arg1 << 160, address(ext_call.return_data[0 len 28]), 2 * defaultAmount
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 64
                                        mem[(64 * stor0.length) + 320] = 0xcf93ebe300000000000000000000000000000000000000000000000000000000
                                        mem[(64 * stor0.length) + 356] = arg1
                                        mem[(64 * stor0.length) + 388] = ext_call.return_data[0]
                                        mem[(64 * stor0.length) + 324] = 96
                                        mem[(64 * stor0.length) + 420] = stor0.length
                                        mem[(64 * stor0.length) + 452 len floor32(stor0.length)] = mem[(32 * stor0.length) + 320 len floor32(stor0.length)]
                                        require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
                                        call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0xcf93ebe3 with:
                                             gas gas_remaining wei
                                            args mem[(64 * stor0.length) + 324 len (161 * stor0.length) + 128]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            if (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0]):
                                                if 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0]) <= 0:
                                                    return 0, 2
                                                if 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0]) <= arg4 * arg3 / 10^18:
                                                    if not stor0.length:
                                                        if 0 < stor0.length:
                                                            require ext_code.size(Mask(96, 0, arg1) << 64)
                                                            call Mask(96, 0, arg1) << 64.0x313ce567 with:
                                                                 gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if 0 < stor0.length:
                                                                require ext_code.size(Mask(96, 0, arg1) << 64)
                                                                call Mask(96, 0, arg1) << 64.0x313ce567 with:
                                                                     gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if 0 < stor0.length:
                                                                    if 1 < stor0.length:
                                                                        require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                                                                        call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                                                                             gas gas_remaining wei
                                                                            args arg1 << 160, address(ext_call.return_data[0 len 28]), 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0])
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 64
                                                                        mem[(98 * stor0.length) + 484 len floor32(stor0.length)] = mem[(64 * stor0.length) + 352 len floor32(stor0.length)]
                                                                        require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
                                                                        call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0xcf93ebe3 with:
                                                                             gas gas_remaining wei
                                                                            args Array(len=stor0.length, data=mem[(64 * stor0.length) + 352 len floor32(stor0.length)], mem[(98 * stor0.length) + floor32(stor0.length) + 484 len (33 * stor0.length) - floor32(stor0.length)]), address(arg1), ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        if ext_call.return_data[0]:
                                                                            if arg3 <= 10^18 * 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0]) / ext_call.return_data[0]:
                                                                                return 0, 3
                                                                            if 10^18 * 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0]) / ext_call.return_data[0]:
                                                                                return 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0]), 
                                                                                       (arg3 * 10^18 * 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0]) / 10^18 * 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0]) / ext_call.return_data[0]) - (10^18 * 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0]) / ext_call.return_data[0] * 10^18 * 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0]) / 10^18 * 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0]) / ext_call.return_data[0]) / 10^18
                                                    else:
                                                        mem[(64 * stor0.length) + 352] = address(stor0.field_0)
                                                        idx = (64 * stor0.length) + 352
                                                        s = 0
                                                        while (98 * stor0.length) + 320 > idx:
                                                            mem[idx + 32] = stor0[s].field_256
                                                            idx = idx + 32
                                                            s = s + 1
                                                            continue 
                                                        if 0 < stor0.length:
                                                            require ext_code.size(mem[(64 * stor0.length) + 364 len 20])
                                                            call mem[(64 * stor0.length) + 364 len 20].0x313ce567 with:
                                                                 gas gas_remaining wei
                                                            mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if 0 < stor0.length:
                                                                require ext_code.size(mem[(64 * stor0.length) + 364 len 20])
                                                                call mem[(64 * stor0.length) + 364 len 20].0x313ce567 with:
                                                                     gas gas_remaining wei
                                                                mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if 0 < stor0.length:
                                                                    if 1 < stor0.length:
                                                                        _1287 = mem[(64 * stor0.length) + 384]
                                                                        mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 364 len 20]
                                                                        require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                                                                        call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                                                                             gas gas_remaining wei
                                                                            args mem[(98 * stor0.length) + 356], address(_1287), 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0])
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 64
                                                                        mem[(98 * stor0.length) + 484 len floor32(stor0.length)] = mem[(64 * stor0.length) + 352 len floor32(stor0.length)]
                                                                        require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
                                                                        call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0xcf93ebe3 with:
                                                                             gas gas_remaining wei
                                                                            args Array(len=stor0.length, data=mem[(64 * stor0.length) + 352 len floor32(stor0.length)], mem[(98 * stor0.length) + floor32(stor0.length) + 484 len (33 * stor0.length) - floor32(stor0.length)]), address(arg1), ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        if ext_call.return_data[0]:
                                                                            if arg3 <= 10^18 * 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0]) / ext_call.return_data[0]:
                                                                                return 0, 3
                                                                            if 10^18 * 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0]) / ext_call.return_data[0]:
                                                                                return 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0]), 
                                                                                       (arg3 * 10^18 * 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0]) / 10^18 * 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0]) / ext_call.return_data[0]) - (10^18 * 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0]) / ext_call.return_data[0] * 10^18 * 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0]) / 10^18 * 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0]) / ext_call.return_data[0]) / 10^18
                                                else:
                                                    if not stor0.length:
                                                        if 0 < stor0.length:
                                                            require ext_code.size(Mask(96, 0, arg1) << 64)
                                                            call Mask(96, 0, arg1) << 64.0x313ce567 with:
                                                                 gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if 0 < stor0.length:
                                                                require ext_code.size(Mask(96, 0, arg1) << 64)
                                                                call Mask(96, 0, arg1) << 64.0x313ce567 with:
                                                                     gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if 0 < stor0.length:
                                                                    if 1 < stor0.length:
                                                                        require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                                                                        call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                                                                             gas gas_remaining wei
                                                                            args arg1 << 160, address(ext_call.return_data[0 len 28]), arg4 * arg3 / 10^18
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 64
                                                                        mem[(98 * stor0.length) + 484 len floor32(stor0.length)] = mem[(64 * stor0.length) + 352 len floor32(stor0.length)]
                                                                        require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
                                                                        call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0xcf93ebe3 with:
                                                                             gas gas_remaining wei
                                                                            args Array(len=stor0.length, data=mem[(64 * stor0.length) + 352 len floor32(stor0.length)], mem[(98 * stor0.length) + floor32(stor0.length) + 484 len (33 * stor0.length) - floor32(stor0.length)]), address(arg1), ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        if ext_call.return_data[0]:
                                                                            if arg3 <= 10^18 * arg4 * arg3 / 10^18 / ext_call.return_data[0]:
                                                                                return 0, 3
                                                                            if 10^18 * arg4 * arg3 / 10^18 / ext_call.return_data[0]:
                                                                                return arg4 * arg3 / 10^18, 
                                                                                       (arg3 * 10^18 * arg4 * arg3 / 10^18 / 10^18 * arg4 * arg3 / 10^18 / ext_call.return_data[0]) - (10^18 * arg4 * arg3 / 10^18 / ext_call.return_data[0] * 10^18 * arg4 * arg3 / 10^18 / 10^18 * arg4 * arg3 / 10^18 / ext_call.return_data[0]) / 10^18
                                                    else:
                                                        mem[(64 * stor0.length) + 352] = address(stor0.field_0)
                                                        idx = (64 * stor0.length) + 352
                                                        s = 0
                                                        while (98 * stor0.length) + 320 > idx:
                                                            mem[idx + 32] = stor0[s].field_256
                                                            idx = idx + 32
                                                            s = s + 1
                                                            continue 
                                                        if 0 < stor0.length:
                                                            require ext_code.size(mem[(64 * stor0.length) + 364 len 20])
                                                            call mem[(64 * stor0.length) + 364 len 20].0x313ce567 with:
                                                                 gas gas_remaining wei
                                                            mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if 0 < stor0.length:
                                                                require ext_code.size(mem[(64 * stor0.length) + 364 len 20])
                                                                call mem[(64 * stor0.length) + 364 len 20].0x313ce567 with:
                                                                     gas gas_remaining wei
                                                                mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if 0 < stor0.length:
                                                                    if 1 < stor0.length:
                                                                        _1290 = mem[(64 * stor0.length) + 384]
                                                                        mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 364 len 20]
                                                                        require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                                                                        call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                                                                             gas gas_remaining wei
                                                                            args mem[(98 * stor0.length) + 356], address(_1290), arg4 * arg3 / 10^18
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 64
                                                                        mem[(98 * stor0.length) + 484 len floor32(stor0.length)] = mem[(64 * stor0.length) + 352 len floor32(stor0.length)]
                                                                        require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
                                                                        call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0xcf93ebe3 with:
                                                                             gas gas_remaining wei
                                                                            args Array(len=stor0.length, data=mem[(64 * stor0.length) + 352 len floor32(stor0.length)], mem[(98 * stor0.length) + floor32(stor0.length) + 484 len (33 * stor0.length) - floor32(stor0.length)]), address(arg1), ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        if ext_call.return_data[0]:
                                                                            if arg3 <= 10^18 * arg4 * arg3 / 10^18 / ext_call.return_data[0]:
                                                                                return 0, 3
                                                                            if 10^18 * arg4 * arg3 / 10^18 / ext_call.return_data[0]:
                                                                                return arg4 * arg3 / 10^18, 
                                                                                       (arg3 * 10^18 * arg4 * arg3 / 10^18 / 10^18 * arg4 * arg3 / 10^18 / ext_call.return_data[0]) - (10^18 * arg4 * arg3 / 10^18 / ext_call.return_data[0] * 10^18 * arg4 * arg3 / 10^18 / 10^18 * arg4 * arg3 / 10^18 / ext_call.return_data[0]) / 10^18
                        else:
                            mem[(32 * stor0.length) + 320] = address(stor0.field_0)
                            idx = (32 * stor0.length) + 320
                            s = 0
                            while (64 * stor0.length) + 288 > idx:
                                mem[idx + 32] = stor0[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if 0 < stor0.length:
                                require ext_code.size(mem[(32 * stor0.length) + 332 len 20])
                                call mem[(32 * stor0.length) + 332 len 20].0x313ce567 with:
                                     gas gas_remaining wei
                                mem[(64 * stor0.length) + 320] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 0 < stor0.length:
                                    if 1 < stor0.length:
                                        _1110 = mem[(32 * stor0.length) + 352]
                                        mem[(64 * stor0.length) + 324] = mem[(32 * stor0.length) + 332 len 20]
                                        require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                                        call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args mem[(64 * stor0.length) + 324], address(_1110), 2 * defaultAmount
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 64
                                        mem[(64 * stor0.length) + 320] = 0xcf93ebe300000000000000000000000000000000000000000000000000000000
                                        mem[(64 * stor0.length) + 356] = arg1
                                        mem[(64 * stor0.length) + 388] = ext_call.return_data[0]
                                        mem[(64 * stor0.length) + 324] = 96
                                        mem[(64 * stor0.length) + 420] = stor0.length
                                        mem[(64 * stor0.length) + 452 len floor32(stor0.length)] = mem[(32 * stor0.length) + 320 len floor32(stor0.length)]
                                        require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
                                        call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0xcf93ebe3 with:
                                             gas gas_remaining wei
                                            args mem[(64 * stor0.length) + 324 len (161 * stor0.length) + 128]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            if (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0]):
                                                if 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0]) <= 0:
                                                    return 0, 2
                                                if 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0]) <= arg4 * arg3 / 10^18:
                                                    if not stor0.length:
                                                        if 0 < stor0.length:
                                                            require ext_code.size(Mask(96, 0, arg1) << 64)
                                                            call Mask(96, 0, arg1) << 64.0x313ce567 with:
                                                                 gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if 0 < stor0.length:
                                                                require ext_code.size(Mask(96, 0, arg1) << 64)
                                                                call Mask(96, 0, arg1) << 64.0x313ce567 with:
                                                                     gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if 0 < stor0.length:
                                                                    if 1 < stor0.length:
                                                                        require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                                                                        call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                                                                             gas gas_remaining wei
                                                                            args Mask(96, 0, arg1) << 64, address(ext_call.return_data[0 len 28]), 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0])
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 64
                                                                        mem[(98 * stor0.length) + 484 len floor32(stor0.length)] = mem[(64 * stor0.length) + 352 len floor32(stor0.length)]
                                                                        require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
                                                                        call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0xcf93ebe3 with:
                                                                             gas gas_remaining wei
                                                                            args Array(len=stor0.length, data=mem[(64 * stor0.length) + 352 len floor32(stor0.length)], mem[(98 * stor0.length) + floor32(stor0.length) + 484 len (33 * stor0.length) - floor32(stor0.length)]), address(arg1), ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        if ext_call.return_data[0]:
                                                                            if arg3 <= 10^18 * 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0]) / ext_call.return_data[0]:
                                                                                return 0, 3
                                                                            if 10^18 * 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0]) / ext_call.return_data[0]:
                                                                                return 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0]), 
                                                                                       (arg3 * 10^18 * 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0]) / 10^18 * 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0]) / ext_call.return_data[0]) - (10^18 * 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0]) / ext_call.return_data[0] * 10^18 * 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0]) / 10^18 * 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0]) / ext_call.return_data[0]) / 10^18
                                                    else:
                                                        mem[(64 * stor0.length) + 352] = address(stor0.field_0)
                                                        idx = (64 * stor0.length) + 352
                                                        s = 0
                                                        while (98 * stor0.length) + 320 > idx:
                                                            mem[idx + 32] = stor0[s].field_256
                                                            idx = idx + 32
                                                            s = s + 1
                                                            continue 
                                                        if 0 < stor0.length:
                                                            require ext_code.size(mem[(64 * stor0.length) + 364 len 20])
                                                            call mem[(64 * stor0.length) + 364 len 20].0x313ce567 with:
                                                                 gas gas_remaining wei
                                                            mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if 0 < stor0.length:
                                                                require ext_code.size(mem[(64 * stor0.length) + 364 len 20])
                                                                call mem[(64 * stor0.length) + 364 len 20].0x313ce567 with:
                                                                     gas gas_remaining wei
                                                                mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if 0 < stor0.length:
                                                                    if 1 < stor0.length:
                                                                        _1497 = mem[(64 * stor0.length) + 384]
                                                                        mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 364 len 20]
                                                                        require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                                                                        call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                                                                             gas gas_remaining wei
                                                                            args mem[(98 * stor0.length) + 356], address(_1497), 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0])
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 64
                                                                        mem[(98 * stor0.length) + 484 len floor32(stor0.length)] = mem[(64 * stor0.length) + 352 len floor32(stor0.length)]
                                                                        require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
                                                                        call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0xcf93ebe3 with:
                                                                             gas gas_remaining wei
                                                                            args Array(len=stor0.length, data=mem[(98 * stor0.length) + 484 len 32 * stor0.length]), address(arg1), ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        if ext_call.return_data[0]:
                                                                            if arg3 <= 10^18 * 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0]) / ext_call.return_data[0]:
                                                                                return 0, 3
                                                                            if 10^18 * 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0]) / ext_call.return_data[0]:
                                                                                return 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0]), 
                                                                                       (arg3 * 10^18 * 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0]) / 10^18 * 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0]) / ext_call.return_data[0]) - (10^18 * 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0]) / ext_call.return_data[0] * 10^18 * 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0]) / 10^18 * 10^18 * arg3 - (10^18 * defaultAmount / ext_call.return_data[0]) / 2 / (10^18 * 2 * defaultAmount / ext_call.return_data[0]) - (10^18 * defaultAmount / ext_call.return_data[0]) / ext_call.return_data[0]) / 10^18
                                                else:
                                                    if not stor0.length:
                                                        if 0 < stor0.length:
                                                            require ext_code.size(Mask(96, 0, arg1) << 64)
                                                            call Mask(96, 0, arg1) << 64.0x313ce567 with:
                                                                 gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if 0 < stor0.length:
                                                                require ext_code.size(Mask(96, 0, arg1) << 64)
                                                                call Mask(96, 0, arg1) << 64.0x313ce567 with:
                                                                     gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if 0 < stor0.length:
                                                                    if 1 < stor0.length:
                                                                        require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                                                                        call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                                                                             gas gas_remaining wei
                                                                            args Mask(96, 0, arg1) << 64, address(ext_call.return_data[0 len 28]), arg4 * arg3 / 10^18
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 64
                                                                        mem[(98 * stor0.length) + 484 len floor32(stor0.length)] = mem[(64 * stor0.length) + 352 len floor32(stor0.length)]
                                                                        require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
                                                                        call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0xcf93ebe3 with:
                                                                             gas gas_remaining wei
                                                                            args Array(len=stor0.length, data=mem[(64 * stor0.length) + 352 len floor32(stor0.length)], mem[(98 * stor0.length) + floor32(stor0.length) + 484 len (33 * stor0.length) - floor32(stor0.length)]), address(arg1), ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        if ext_call.return_data[0]:
                                                                            if arg3 <= 10^18 * arg4 * arg3 / 10^18 / ext_call.return_data[0]:
                                                                                return 0, 3
                                                                            if 10^18 * arg4 * arg3 / 10^18 / ext_call.return_data[0]:
                                                                                return arg4 * arg3 / 10^18, 
                                                                                       (arg3 * 10^18 * arg4 * arg3 / 10^18 / 10^18 * arg4 * arg3 / 10^18 / ext_call.return_data[0]) - (10^18 * arg4 * arg3 / 10^18 / ext_call.return_data[0] * 10^18 * arg4 * arg3 / 10^18 / 10^18 * arg4 * arg3 / 10^18 / ext_call.return_data[0]) / 10^18
                                                    else:
                                                        mem[(64 * stor0.length) + 352] = address(stor0.field_0)
                                                        idx = (64 * stor0.length) + 352
                                                        s = 0
                                                        while (98 * stor0.length) + 320 > idx:
                                                            mem[idx + 32] = stor0[s].field_256
                                                            idx = idx + 32
                                                            s = s + 1
                                                            continue 
                                                        if 0 < stor0.length:
                                                            require ext_code.size(mem[(64 * stor0.length) + 364 len 20])
                                                            call mem[(64 * stor0.length) + 364 len 20].0x313ce567 with:
                                                                 gas gas_remaining wei
                                                            mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if 0 < stor0.length:
                                                                require ext_code.size(mem[(64 * stor0.length) + 364 len 20])
                                                                call mem[(64 * stor0.length) + 364 len 20].0x313ce567 with:
                                                                     gas gas_remaining wei
                                                                mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if 0 < stor0.length:
                                                                    if 1 < stor0.length:
                                                                        _1500 = mem[(64 * stor0.length) + 384]
                                                                        mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 364 len 20]
                                                                        require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                                                                        call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                                                                             gas gas_remaining wei
                                                                            args mem[(98 * stor0.length) + 356], address(_1500), arg4 * arg3 / 10^18
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 64
                                                                        mem[(98 * stor0.length) + 484 len floor32(stor0.length)] = mem[(64 * stor0.length) + 352 len floor32(stor0.length)]
                                                                        require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
                                                                        call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0xcf93ebe3 with:
                                                                             gas gas_remaining wei
                                                                            args Array(len=stor0.length, data=mem[(98 * stor0.length) + 484 len 32 * stor0.length]), address(arg1), ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        if ext_call.return_data[0]:
                                                                            if arg3 <= 10^18 * arg4 * arg3 / 10^18 / ext_call.return_data[0]:
                                                                                return 0, 3
                                                                            if 10^18 * arg4 * arg3 / 10^18 / ext_call.return_data[0]:
                                                                                return arg4 * arg3 / 10^18, 
                                                                                       (arg3 * 10^18 * arg4 * arg3 / 10^18 / 10^18 * arg4 * arg3 / 10^18 / ext_call.return_data[0]) - (10^18 * arg4 * arg3 / 10^18 / ext_call.return_data[0] * 10^18 * arg4 * arg3 / 10^18 / 10^18 * arg4 * arg3 / 10^18 / ext_call.return_data[0]) / 10^18
    revert
}

function sub_3d2e9dcb(?) {
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
        if 0 < stor0.length:
            require ext_code.size(mem[300 len 20])
            call mem[300 len 20].0x313ce567 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 10^(-ext_call.return_data[0] + 18):
                mem[(32 * stor0.length) + 324] = arg1
                mem[(32 * stor0.length) + 356] = defaultAmount / 10^(-ext_call.return_data[0] + 18)
                mem[(32 * stor0.length) + 292] = 96
                mem[(32 * stor0.length) + 388] = stor0.length
                mem[(32 * stor0.length) + 420 len floor32(stor0.length)] = mem[288 len floor32(stor0.length)]
                require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
                call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0x4ed85961 with:
                     gas gas_remaining wei
                    args Array(len=stor0.length, data=mem[288 len floor32(stor0.length)], mem[(32 * stor0.length) + floor32(stor0.length) + 420 len (32 * stor0.length) - floor32(stor0.length)]), address(arg1), defaultAmount / 10^(-ext_call.return_data[0] + 18)
                mem[(32 * stor0.length) + 288] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 < stor0.length:
                    _370 = mem[352]
                    if 4 < stor0.length:
                        _372 = mem[416]
                        mem[(32 * stor0.length) + 324] = mem[428 len 20]
                        mem[(32 * stor0.length) + 356] = ext_call.return_data[0]
                        require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                        call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(_370), address(_372), ext_call.return_data[0]
                        mem[(32 * stor0.length) + 288 len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if defaultAmount:
                            if arg3 >= 10^18 * ext_call.return_data[0] / defaultAmount:
                                return 0, 1
                            if not stor0.length:
                                if 0 < stor0.length:
                                    require ext_code.size(address(ext_call.return_data[32]))
                                    call address(ext_call.return_data[32]).0x313ce567 with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 10^(-ext_call.return_data[0] + 18):
                                        mem[(64 * stor0.length) + 320] = 0x4ed8596100000000000000000000000000000000000000000000000000000000
                                        mem[(64 * stor0.length) + 356] = arg1
                                        mem[(64 * stor0.length) + 388] = 2 * defaultAmount / 10^(-ext_call.return_data[0] + 18)
                                        mem[(64 * stor0.length) + 324] = 96
                                        mem[(64 * stor0.length) + 420] = stor0.length
                                        mem[(64 * stor0.length) + 452 len floor32(stor0.length)] = mem[(32 * stor0.length) + 320 len floor32(stor0.length)]
                                        require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
                                        call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0x4ed85961 with:
                                             gas gas_remaining wei
                                            args mem[(64 * stor0.length) + 324 len (161 * stor0.length) + 128]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if 2 < stor0.length:
                                            if 4 < stor0.length:
                                                _487 = mem[(32 * stor0.length) + 448]
                                                mem[(64 * stor0.length) + 356] = mem[(32 * stor0.length) + 460 len 20]
                                                mem[(64 * stor0.length) + 388] = ext_call.return_data[0]
                                                require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                                                call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                                                     gas gas_remaining wei
                                                    args address(stor0.length.field_32), address(_487), ext_call.return_data[0]
                                                mem[(64 * stor0.length) + 320 len 64] = ext_call.return_data[0 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 64
                                                if 2 * defaultAmount:
                                                    if (10^18 * ext_call.return_data[0] / defaultAmount) - (10^18 * ext_call.return_data[0] / 2 * defaultAmount):
                                                        if 10^18 * (10^18 * ext_call.return_data[0] / defaultAmount) - arg3 / 2 / (10^18 * ext_call.return_data[0] / defaultAmount) - (10^18 * ext_call.return_data[0] / 2 * defaultAmount) <= 0:
                                                            return 0, 2
                                                        if 10^18 * (10^18 * ext_call.return_data[0] / defaultAmount) - arg3 / 2 / (10^18 * ext_call.return_data[0] / defaultAmount) - (10^18 * ext_call.return_data[0] / 2 * defaultAmount) <= arg4 * arg3 / 10^18:
                                                            if not stor0.length:
                                                                if 0 < stor0.length:
                                                                    require ext_code.size(address(ext_call.return_data[32]))
                                                                    call address(ext_call.return_data[32]).0x313ce567 with:
                                                                         gas gas_remaining wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 32
                                                                    if 0 < stor0.length:
                                                                        require ext_code.size(address(ext_call.return_data[32]))
                                                                        call address(ext_call.return_data[32]).0x313ce567 with:
                                                                             gas gas_remaining wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        if 10^(-ext_call.return_data[0] + 18):
                                                                            mem[(98 * stor0.length) + 388] = arg1
                                                                            mem[(98 * stor0.length) + 420] = 10^18 * (10^18 * ext_call.return_data[0] / defaultAmount) - arg3 / 2 / (10^18 * ext_call.return_data[0] / defaultAmount) - (10^18 * ext_call.return_data[0] / 2 * defaultAmount) / 10^(-ext_call.return_data[0] + 18)
                                                                            mem[(98 * stor0.length) + 356] = 96
                                                                            mem[(98 * stor0.length) + 452] = stor0.length
                                                                            mem[(98 * stor0.length) + 484 len floor32(stor0.length)] = mem[(64 * stor0.length) + 352 len floor32(stor0.length)]
                                                                            require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
                                                                            call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0x4ed85961 with:
                                                                                 gas gas_remaining wei
                                                                                args Array(len=stor0.length, data=mem[(64 * stor0.length) + 352 len floor32(stor0.length)], mem[(98 * stor0.length) + floor32(stor0.length) + 484 len (33 * stor0.length) - floor32(stor0.length)]), address(arg1), 10^18 * (10^18 * ext_call.return_data[0] / defaultAmount) - arg3 / 2 / (10^18 * ext_call.return_data[0] / defaultAmount) - (10^18 * ext_call.return_data[0] / 2 * defaultAmount) / 10^(-ext_call.return_data[0] + 18)
                                                                            mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            require return_data.size >= 32
                                                                            if 2 < stor0.length:
                                                                                if 4 < stor0.length:
                                                                                    require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                                                                                    call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                                                                                         gas gas_remaining wei
                                                                                        args address(stor0.length.field_32), address(mem[(64 * stor0.length) + 480]), ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    require return_data.size >= 64
                                                                                    if 10^18 * (10^18 * ext_call.return_data[0] / defaultAmount) - arg3 / 2 / (10^18 * ext_call.return_data[0] / defaultAmount) - (10^18 * ext_call.return_data[0] / 2 * defaultAmount):
                                                                                        if arg3 >= 10^18 * ext_call.return_data[0] / 10^18 * (10^18 * ext_call.return_data[0] / defaultAmount) - arg3 / 2 / (10^18 * ext_call.return_data[0] / defaultAmount) - (10^18 * ext_call.return_data[0] / 2 * defaultAmount):
                                                                                            return 0, 3
                                                                                        if arg3:
                                                                                            return 10^18 * (10^18 * ext_call.return_data[0] / defaultAmount) - arg3 / 2 / (10^18 * ext_call.return_data[0] / defaultAmount) - (10^18 * ext_call.return_data[0] / 2 * defaultAmount), 
                                                                                                   (10^18 * ext_call.return_data[0] / 10^18 * (10^18 * ext_call.return_data[0] / defaultAmount) - arg3 / 2 / (10^18 * ext_call.return_data[0] / defaultAmount) - (10^18 * ext_call.return_data[0] / 2 * defaultAmount) * 10^18 * 10^18 * (10^18 * ext_call.return_data[0] / defaultAmount) - arg3 / 2 / (10^18 * ext_call.return_data[0] / defaultAmount) - (10^18 * ext_call.return_data[0] / 2 * defaultAmount) / arg3) - (arg3 * 10^18 * 10^18 * (10^18 * ext_call.return_data[0] / defaultAmount) - arg3 / 2 / (10^18 * ext_call.return_data[0] / defaultAmount) - (10^18 * ext_call.return_data[0] / 2 * defaultAmount) / arg3) / 10^18
                                                            else:
                                                                mem[(64 * stor0.length) + 352] = address(stor0.field_0)
                                                                idx = (64 * stor0.length) + 352
                                                                s = 0
                                                                while (98 * stor0.length) + 320 > idx:
                                                                    mem[idx + 32] = stor0[s].field_256
                                                                    idx = idx + 32
                                                                    s = s + 1
                                                                    continue 
                                                                if 0 < stor0.length:
                                                                    require ext_code.size(mem[(64 * stor0.length) + 364 len 20])
                                                                    call mem[(64 * stor0.length) + 364 len 20].0x313ce567 with:
                                                                         gas gas_remaining wei
                                                                    mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 32
                                                                    if 0 < stor0.length:
                                                                        require ext_code.size(mem[(64 * stor0.length) + 364 len 20])
                                                                        call mem[(64 * stor0.length) + 364 len 20].0x313ce567 with:
                                                                             gas gas_remaining wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        if 10^(-ext_call.return_data[0] + 18):
                                                                            mem[(98 * stor0.length) + 388] = arg1
                                                                            mem[(98 * stor0.length) + 420] = 10^18 * (10^18 * ext_call.return_data[0] / defaultAmount) - arg3 / 2 / (10^18 * ext_call.return_data[0] / defaultAmount) - (10^18 * ext_call.return_data[0] / 2 * defaultAmount) / 10^(-ext_call.return_data[0] + 18)
                                                                            mem[(98 * stor0.length) + 356] = 96
                                                                            mem[(98 * stor0.length) + 452] = stor0.length
                                                                            mem[(98 * stor0.length) + 484 len floor32(stor0.length)] = mem[(64 * stor0.length) + 352 len floor32(stor0.length)]
                                                                            require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
                                                                            call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0x4ed85961 with:
                                                                                 gas gas_remaining wei
                                                                                args Array(len=stor0.length, data=mem[(64 * stor0.length) + 352 len floor32(stor0.length)], mem[(98 * stor0.length) + floor32(stor0.length) + 484 len (33 * stor0.length) - floor32(stor0.length)]), address(arg1), 10^18 * (10^18 * ext_call.return_data[0] / defaultAmount) - arg3 / 2 / (10^18 * ext_call.return_data[0] / defaultAmount) - (10^18 * ext_call.return_data[0] / 2 * defaultAmount) / 10^(-ext_call.return_data[0] + 18)
                                                                            mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            require return_data.size >= 32
                                                                            if 2 < stor0.length:
                                                                                if 4 < stor0.length:
                                                                                    _1187 = mem[(64 * stor0.length) + 480]
                                                                                    mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 428 len 20]
                                                                                    require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                                                                                    call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                                                                                         gas gas_remaining wei
                                                                                        args mem[(98 * stor0.length) + 356], address(_1187), ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    require return_data.size >= 64
                                                                                    if 10^18 * (10^18 * ext_call.return_data[0] / defaultAmount) - arg3 / 2 / (10^18 * ext_call.return_data[0] / defaultAmount) - (10^18 * ext_call.return_data[0] / 2 * defaultAmount):
                                                                                        if arg3 >= 10^18 * ext_call.return_data[0] / 10^18 * (10^18 * ext_call.return_data[0] / defaultAmount) - arg3 / 2 / (10^18 * ext_call.return_data[0] / defaultAmount) - (10^18 * ext_call.return_data[0] / 2 * defaultAmount):
                                                                                            return 0, 3
                                                                                        if arg3:
                                                                                            return 10^18 * (10^18 * ext_call.return_data[0] / defaultAmount) - arg3 / 2 / (10^18 * ext_call.return_data[0] / defaultAmount) - (10^18 * ext_call.return_data[0] / 2 * defaultAmount), 
                                                                                                   (10^18 * ext_call.return_data[0] / 10^18 * (10^18 * ext_call.return_data[0] / defaultAmount) - arg3 / 2 / (10^18 * ext_call.return_data[0] / defaultAmount) - (10^18 * ext_call.return_data[0] / 2 * defaultAmount) * 10^18 * 10^18 * (10^18 * ext_call.return_data[0] / defaultAmount) - arg3 / 2 / (10^18 * ext_call.return_data[0] / defaultAmount) - (10^18 * ext_call.return_data[0] / 2 * defaultAmount) / arg3) - (arg3 * 10^18 * 10^18 * (10^18 * ext_call.return_data[0] / defaultAmount) - arg3 / 2 / (10^18 * ext_call.return_data[0] / defaultAmount) - (10^18 * ext_call.return_data[0] / 2 * defaultAmount) / arg3) / 10^18
                                                        else:
                                                            if not stor0.length:
                                                                if 0 < stor0.length:
                                                                    require ext_code.size(address(ext_call.return_data[32]))
                                                                    call address(ext_call.return_data[32]).0x313ce567 with:
                                                                         gas gas_remaining wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 32
                                                                    if 0 < stor0.length:
                                                                        require ext_code.size(address(ext_call.return_data[32]))
                                                                        call address(ext_call.return_data[32]).0x313ce567 with:
                                                                             gas gas_remaining wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        if 10^(-ext_call.return_data[0] + 18):
                                                                            mem[(98 * stor0.length) + 388] = arg1
                                                                            mem[(98 * stor0.length) + 420] = arg4 * arg3 / 10^18 / 10^(-ext_call.return_data[0] + 18)
                                                                            mem[(98 * stor0.length) + 356] = 96
                                                                            mem[(98 * stor0.length) + 452] = stor0.length
                                                                            mem[(98 * stor0.length) + 484 len floor32(stor0.length)] = mem[(64 * stor0.length) + 352 len floor32(stor0.length)]
                                                                            require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
                                                                            call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0x4ed85961 with:
                                                                                 gas gas_remaining wei
                                                                                args Array(len=stor0.length, data=mem[(64 * stor0.length) + 352 len floor32(stor0.length)], mem[(98 * stor0.length) + floor32(stor0.length) + 484 len (33 * stor0.length) - floor32(stor0.length)]), address(arg1), arg4 * arg3 / 10^18 / 10^(-ext_call.return_data[0] + 18)
                                                                            mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            require return_data.size >= 32
                                                                            if 2 < stor0.length:
                                                                                if 4 < stor0.length:
                                                                                    require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                                                                                    call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                                                                                         gas gas_remaining wei
                                                                                        args address(stor0.length.field_32), address(mem[(64 * stor0.length) + 480]), ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    require return_data.size >= 64
                                                                                    if arg4 * arg3 / 10^18:
                                                                                        if arg3 >= 10^18 * ext_call.return_data[0] / arg4 * arg3 / 10^18:
                                                                                            return 0, 3
                                                                                        if arg3:
                                                                                            return arg4 * arg3 / 10^18, 
                                                                                                   (10^18 * ext_call.return_data[0] / arg4 * arg3 / 10^18 * 10^18 * arg4 * arg3 / 10^18 / arg3) - (arg3 * 10^18 * arg4 * arg3 / 10^18 / arg3) / 10^18
                                                            else:
                                                                mem[(64 * stor0.length) + 352] = address(stor0.field_0)
                                                                idx = (64 * stor0.length) + 352
                                                                s = 0
                                                                while (98 * stor0.length) + 320 > idx:
                                                                    mem[idx + 32] = stor0[s].field_256
                                                                    idx = idx + 32
                                                                    s = s + 1
                                                                    continue 
                                                                if 0 < stor0.length:
                                                                    require ext_code.size(mem[(64 * stor0.length) + 364 len 20])
                                                                    call mem[(64 * stor0.length) + 364 len 20].0x313ce567 with:
                                                                         gas gas_remaining wei
                                                                    mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 32
                                                                    if 0 < stor0.length:
                                                                        require ext_code.size(mem[(64 * stor0.length) + 364 len 20])
                                                                        call mem[(64 * stor0.length) + 364 len 20].0x313ce567 with:
                                                                             gas gas_remaining wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        if 10^(-ext_call.return_data[0] + 18):
                                                                            mem[(98 * stor0.length) + 388] = arg1
                                                                            mem[(98 * stor0.length) + 420] = arg4 * arg3 / 10^18 / 10^(-ext_call.return_data[0] + 18)
                                                                            mem[(98 * stor0.length) + 356] = 96
                                                                            mem[(98 * stor0.length) + 452] = stor0.length
                                                                            mem[(98 * stor0.length) + 484 len floor32(stor0.length)] = mem[(64 * stor0.length) + 352 len floor32(stor0.length)]
                                                                            require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
                                                                            call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0x4ed85961 with:
                                                                                 gas gas_remaining wei
                                                                                args Array(len=stor0.length, data=mem[(64 * stor0.length) + 352 len floor32(stor0.length)], mem[(98 * stor0.length) + floor32(stor0.length) + 484 len (33 * stor0.length) - floor32(stor0.length)]), address(arg1), arg4 * arg3 / 10^18 / 10^(-ext_call.return_data[0] + 18)
                                                                            mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            require return_data.size >= 32
                                                                            if 2 < stor0.length:
                                                                                if 4 < stor0.length:
                                                                                    _1190 = mem[(64 * stor0.length) + 480]
                                                                                    mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 428 len 20]
                                                                                    require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                                                                                    call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                                                                                         gas gas_remaining wei
                                                                                        args mem[(98 * stor0.length) + 356], address(_1190), ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    require return_data.size >= 64
                                                                                    if arg4 * arg3 / 10^18:
                                                                                        if arg3 >= 10^18 * ext_call.return_data[0] / arg4 * arg3 / 10^18:
                                                                                            return 0, 3
                                                                                        if arg3:
                                                                                            return arg4 * arg3 / 10^18, 
                                                                                                   (10^18 * ext_call.return_data[0] / arg4 * arg3 / 10^18 * 10^18 * arg4 * arg3 / 10^18 / arg3) - (arg3 * 10^18 * arg4 * arg3 / 10^18 / arg3) / 10^18
                            else:
                                mem[(32 * stor0.length) + 320] = address(stor0.field_0)
                                idx = (32 * stor0.length) + 320
                                s = 0
                                while (64 * stor0.length) + 288 > idx:
                                    mem[idx + 32] = stor0[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if 0 < stor0.length:
                                    require ext_code.size(mem[(32 * stor0.length) + 332 len 20])
                                    call mem[(32 * stor0.length) + 332 len 20].0x313ce567 with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 10^(-ext_call.return_data[0] + 18):
                                        mem[(64 * stor0.length) + 320] = 0x4ed8596100000000000000000000000000000000000000000000000000000000
                                        mem[(64 * stor0.length) + 356] = arg1
                                        mem[(64 * stor0.length) + 388] = 2 * defaultAmount / 10^(-ext_call.return_data[0] + 18)
                                        mem[(64 * stor0.length) + 324] = 96
                                        mem[(64 * stor0.length) + 420] = stor0.length
                                        mem[(64 * stor0.length) + 452 len floor32(stor0.length)] = mem[(32 * stor0.length) + 320 len floor32(stor0.length)]
                                        require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
                                        call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0x4ed85961 with:
                                             gas gas_remaining wei
                                            args mem[(64 * stor0.length) + 324 len (161 * stor0.length) + 128]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if 2 < stor0.length:
                                            if 4 < stor0.length:
                                                _938 = mem[(32 * stor0.length) + 448]
                                                mem[(64 * stor0.length) + 324] = mem[(32 * stor0.length) + 396 len 20]
                                                mem[(64 * stor0.length) + 356] = address(_938)
                                                mem[(64 * stor0.length) + 388] = ext_call.return_data[0]
                                                require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                                                call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                                                     gas gas_remaining wei
                                                    args mem[(64 * stor0.length) + 324], address(_938), ext_call.return_data[0]
                                                mem[(64 * stor0.length) + 320 len 64] = ext_call.return_data[0 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 64
                                                if 2 * defaultAmount:
                                                    if (10^18 * ext_call.return_data[0] / defaultAmount) - (10^18 * ext_call.return_data[0] / 2 * defaultAmount):
                                                        if 10^18 * (10^18 * ext_call.return_data[0] / defaultAmount) - arg3 / 2 / (10^18 * ext_call.return_data[0] / defaultAmount) - (10^18 * ext_call.return_data[0] / 2 * defaultAmount) <= 0:
                                                            return 0, 2
                                                        if 10^18 * (10^18 * ext_call.return_data[0] / defaultAmount) - arg3 / 2 / (10^18 * ext_call.return_data[0] / defaultAmount) - (10^18 * ext_call.return_data[0] / 2 * defaultAmount) <= arg4 * arg3 / 10^18:
                                                            if not stor0.length:
                                                                if 0 < stor0.length:
                                                                    require ext_code.size(ext_call.return_data[44 len 20])
                                                                    call ext_call.return_data[44 len 20].0x313ce567 with:
                                                                         gas gas_remaining wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 32
                                                                    if 0 < stor0.length:
                                                                        require ext_code.size(ext_call.return_data[44 len 20])
                                                                        call ext_call.return_data[44 len 20].0x313ce567 with:
                                                                             gas gas_remaining wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        if 10^(-ext_call.return_data[0] + 18):
                                                                            mem[(98 * stor0.length) + 388] = arg1
                                                                            mem[(98 * stor0.length) + 420] = 10^18 * (10^18 * ext_call.return_data[0] / defaultAmount) - arg3 / 2 / (10^18 * ext_call.return_data[0] / defaultAmount) - (10^18 * ext_call.return_data[0] / 2 * defaultAmount) / 10^(-ext_call.return_data[0] + 18)
                                                                            mem[(98 * stor0.length) + 356] = 96
                                                                            mem[(98 * stor0.length) + 452] = stor0.length
                                                                            mem[(98 * stor0.length) + 484 len floor32(stor0.length)] = mem[(64 * stor0.length) + 352 len floor32(stor0.length)]
                                                                            require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
                                                                            call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0x4ed85961 with:
                                                                                 gas gas_remaining wei
                                                                                args Array(len=stor0.length, data=mem[(64 * stor0.length) + 352 len floor32(stor0.length)], mem[(98 * stor0.length) + floor32(stor0.length) + 484 len (33 * stor0.length) - floor32(stor0.length)]), address(arg1), 10^18 * (10^18 * ext_call.return_data[0] / defaultAmount) - arg3 / 2 / (10^18 * ext_call.return_data[0] / defaultAmount) - (10^18 * ext_call.return_data[0] / 2 * defaultAmount) / 10^(-ext_call.return_data[0] + 18)
                                                                            mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            require return_data.size >= 32
                                                                            if 2 < stor0.length:
                                                                                if 4 < stor0.length:
                                                                                    require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                                                                                    call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                                                                                         gas gas_remaining wei
                                                                                        args address(stor0.length), address(mem[(64 * stor0.length) + 480]), ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    require return_data.size >= 64
                                                                                    if 10^18 * (10^18 * ext_call.return_data[0] / defaultAmount) - arg3 / 2 / (10^18 * ext_call.return_data[0] / defaultAmount) - (10^18 * ext_call.return_data[0] / 2 * defaultAmount):
                                                                                        if arg3 >= 10^18 * ext_call.return_data[0] / 10^18 * (10^18 * ext_call.return_data[0] / defaultAmount) - arg3 / 2 / (10^18 * ext_call.return_data[0] / defaultAmount) - (10^18 * ext_call.return_data[0] / 2 * defaultAmount):
                                                                                            return 0, 3
                                                                                        if arg3:
                                                                                            return 10^18 * (10^18 * ext_call.return_data[0] / defaultAmount) - arg3 / 2 / (10^18 * ext_call.return_data[0] / defaultAmount) - (10^18 * ext_call.return_data[0] / 2 * defaultAmount), 
                                                                                                   (10^18 * ext_call.return_data[0] / 10^18 * (10^18 * ext_call.return_data[0] / defaultAmount) - arg3 / 2 / (10^18 * ext_call.return_data[0] / defaultAmount) - (10^18 * ext_call.return_data[0] / 2 * defaultAmount) * 10^18 * 10^18 * (10^18 * ext_call.return_data[0] / defaultAmount) - arg3 / 2 / (10^18 * ext_call.return_data[0] / defaultAmount) - (10^18 * ext_call.return_data[0] / 2 * defaultAmount) / arg3) - (arg3 * 10^18 * 10^18 * (10^18 * ext_call.return_data[0] / defaultAmount) - arg3 / 2 / (10^18 * ext_call.return_data[0] / defaultAmount) - (10^18 * ext_call.return_data[0] / 2 * defaultAmount) / arg3) / 10^18
                                                            else:
                                                                mem[(64 * stor0.length) + 352] = address(stor0.field_0)
                                                                idx = (64 * stor0.length) + 352
                                                                s = 0
                                                                while (98 * stor0.length) + 320 > idx:
                                                                    mem[idx + 32] = stor0[s].field_256
                                                                    idx = idx + 32
                                                                    s = s + 1
                                                                    continue 
                                                                if 0 < stor0.length:
                                                                    require ext_code.size(mem[(64 * stor0.length) + 364 len 20])
                                                                    call mem[(64 * stor0.length) + 364 len 20].0x313ce567 with:
                                                                         gas gas_remaining wei
                                                                    mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 32
                                                                    if 0 < stor0.length:
                                                                        require ext_code.size(mem[(64 * stor0.length) + 364 len 20])
                                                                        call mem[(64 * stor0.length) + 364 len 20].0x313ce567 with:
                                                                             gas gas_remaining wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        if 10^(-ext_call.return_data[0] + 18):
                                                                            mem[(98 * stor0.length) + 388] = arg1
                                                                            mem[(98 * stor0.length) + 420] = 10^18 * (10^18 * ext_call.return_data[0] / defaultAmount) - arg3 / 2 / (10^18 * ext_call.return_data[0] / defaultAmount) - (10^18 * ext_call.return_data[0] / 2 * defaultAmount) / 10^(-ext_call.return_data[0] + 18)
                                                                            mem[(98 * stor0.length) + 356] = 96
                                                                            mem[(98 * stor0.length) + 452] = stor0.length
                                                                            mem[(98 * stor0.length) + 484 len floor32(stor0.length)] = mem[(64 * stor0.length) + 352 len floor32(stor0.length)]
                                                                            require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
                                                                            call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0x4ed85961 with:
                                                                                 gas gas_remaining wei
                                                                                args Array(len=stor0.length, data=mem[(64 * stor0.length) + 352 len floor32(stor0.length)], mem[(98 * stor0.length) + floor32(stor0.length) + 484 len (33 * stor0.length) - floor32(stor0.length)]), address(arg1), 10^18 * (10^18 * ext_call.return_data[0] / defaultAmount) - arg3 / 2 / (10^18 * ext_call.return_data[0] / defaultAmount) - (10^18 * ext_call.return_data[0] / 2 * defaultAmount) / 10^(-ext_call.return_data[0] + 18)
                                                                            mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            require return_data.size >= 32
                                                                            if 2 < stor0.length:
                                                                                if 4 < stor0.length:
                                                                                    _1587 = mem[(64 * stor0.length) + 480]
                                                                                    mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 428 len 20]
                                                                                    require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                                                                                    call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                                                                                         gas gas_remaining wei
                                                                                        args mem[(98 * stor0.length) + 356], address(_1587), ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    require return_data.size >= 64
                                                                                    if 10^18 * (10^18 * ext_call.return_data[0] / defaultAmount) - arg3 / 2 / (10^18 * ext_call.return_data[0] / defaultAmount) - (10^18 * ext_call.return_data[0] / 2 * defaultAmount):
                                                                                        if arg3 >= 10^18 * ext_call.return_data[0] / 10^18 * (10^18 * ext_call.return_data[0] / defaultAmount) - arg3 / 2 / (10^18 * ext_call.return_data[0] / defaultAmount) - (10^18 * ext_call.return_data[0] / 2 * defaultAmount):
                                                                                            return 0, 3
                                                                                        if arg3:
                                                                                            return 10^18 * (10^18 * ext_call.return_data[0] / defaultAmount) - arg3 / 2 / (10^18 * ext_call.return_data[0] / defaultAmount) - (10^18 * ext_call.return_data[0] / 2 * defaultAmount), 
                                                                                                   (10^18 * ext_call.return_data[0] / 10^18 * (10^18 * ext_call.return_data[0] / defaultAmount) - arg3 / 2 / (10^18 * ext_call.return_data[0] / defaultAmount) - (10^18 * ext_call.return_data[0] / 2 * defaultAmount) * 10^18 * 10^18 * (10^18 * ext_call.return_data[0] / defaultAmount) - arg3 / 2 / (10^18 * ext_call.return_data[0] / defaultAmount) - (10^18 * ext_call.return_data[0] / 2 * defaultAmount) / arg3) - (arg3 * 10^18 * 10^18 * (10^18 * ext_call.return_data[0] / defaultAmount) - arg3 / 2 / (10^18 * ext_call.return_data[0] / defaultAmount) - (10^18 * ext_call.return_data[0] / 2 * defaultAmount) / arg3) / 10^18
                                                        else:
                                                            if not stor0.length:
                                                                if 0 < stor0.length:
                                                                    require ext_code.size(ext_call.return_data[44 len 20])
                                                                    call ext_call.return_data[44 len 20].0x313ce567 with:
                                                                         gas gas_remaining wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 32
                                                                    if 0 < stor0.length:
                                                                        require ext_code.size(ext_call.return_data[44 len 20])
                                                                        call ext_call.return_data[44 len 20].0x313ce567 with:
                                                                             gas gas_remaining wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        if 10^(-ext_call.return_data[0] + 18):
                                                                            mem[(98 * stor0.length) + 388] = arg1
                                                                            mem[(98 * stor0.length) + 420] = arg4 * arg3 / 10^18 / 10^(-ext_call.return_data[0] + 18)
                                                                            mem[(98 * stor0.length) + 356] = 96
                                                                            mem[(98 * stor0.length) + 452] = stor0.length
                                                                            mem[(98 * stor0.length) + 484 len floor32(stor0.length)] = mem[(64 * stor0.length) + 352 len floor32(stor0.length)]
                                                                            require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
                                                                            call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0x4ed85961 with:
                                                                                 gas gas_remaining wei
                                                                                args Array(len=stor0.length, data=mem[(64 * stor0.length) + 352 len floor32(stor0.length)], mem[(98 * stor0.length) + floor32(stor0.length) + 484 len (33 * stor0.length) - floor32(stor0.length)]), address(arg1), arg4 * arg3 / 10^18 / 10^(-ext_call.return_data[0] + 18)
                                                                            mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            require return_data.size >= 32
                                                                            if 2 < stor0.length:
                                                                                if 4 < stor0.length:
                                                                                    require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                                                                                    call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                                                                                         gas gas_remaining wei
                                                                                        args address(stor0.length), address(mem[(64 * stor0.length) + 480]), ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    require return_data.size >= 64
                                                                                    if arg4 * arg3 / 10^18:
                                                                                        if arg3 >= 10^18 * ext_call.return_data[0] / arg4 * arg3 / 10^18:
                                                                                            return 0, 3
                                                                                        if arg3:
                                                                                            return arg4 * arg3 / 10^18, 
                                                                                                   (10^18 * ext_call.return_data[0] / arg4 * arg3 / 10^18 * 10^18 * arg4 * arg3 / 10^18 / arg3) - (arg3 * 10^18 * arg4 * arg3 / 10^18 / arg3) / 10^18
                                                            else:
                                                                mem[(64 * stor0.length) + 352] = address(stor0.field_0)
                                                                idx = (64 * stor0.length) + 352
                                                                s = 0
                                                                while (98 * stor0.length) + 320 > idx:
                                                                    mem[idx + 32] = stor0[s].field_256
                                                                    idx = idx + 32
                                                                    s = s + 1
                                                                    continue 
                                                                if 0 < stor0.length:
                                                                    require ext_code.size(mem[(64 * stor0.length) + 364 len 20])
                                                                    call mem[(64 * stor0.length) + 364 len 20].0x313ce567 with:
                                                                         gas gas_remaining wei
                                                                    mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 32
                                                                    if 0 < stor0.length:
                                                                        require ext_code.size(mem[(64 * stor0.length) + 364 len 20])
                                                                        call mem[(64 * stor0.length) + 364 len 20].0x313ce567 with:
                                                                             gas gas_remaining wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        if 10^(-ext_call.return_data[0] + 18):
                                                                            mem[(98 * stor0.length) + 388] = arg1
                                                                            mem[(98 * stor0.length) + 420] = arg4 * arg3 / 10^18 / 10^(-ext_call.return_data[0] + 18)
                                                                            mem[(98 * stor0.length) + 356] = 96
                                                                            mem[(98 * stor0.length) + 452] = stor0.length
                                                                            mem[(98 * stor0.length) + 484 len floor32(stor0.length)] = mem[(64 * stor0.length) + 352 len floor32(stor0.length)]
                                                                            require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
                                                                            call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0x4ed85961 with:
                                                                                 gas gas_remaining wei
                                                                                args Array(len=stor0.length, data=mem[(64 * stor0.length) + 352 len floor32(stor0.length)], mem[(98 * stor0.length) + floor32(stor0.length) + 484 len (33 * stor0.length) - floor32(stor0.length)]), address(arg1), arg4 * arg3 / 10^18 / 10^(-ext_call.return_data[0] + 18)
                                                                            mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            require return_data.size >= 32
                                                                            if 2 < stor0.length:
                                                                                if 4 < stor0.length:
                                                                                    _1590 = mem[(64 * stor0.length) + 480]
                                                                                    mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 428 len 20]
                                                                                    require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                                                                                    call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                                                                                         gas gas_remaining wei
                                                                                        args mem[(98 * stor0.length) + 356], address(_1590), ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    require return_data.size >= 64
                                                                                    if arg4 * arg3 / 10^18:
                                                                                        if arg3 >= 10^18 * ext_call.return_data[0] / arg4 * arg3 / 10^18:
                                                                                            return 0, 3
                                                                                        if arg3:
                                                                                            return arg4 * arg3 / 10^18, 
                                                                                                   (10^18 * ext_call.return_data[0] / arg4 * arg3 / 10^18 * 10^18 * arg4 * arg3 / 10^18 / arg3) - (arg3 * 10^18 * arg4 * arg3 / 10^18 / arg3) / 10^18
    else:
        mem[288] = address(stor0.field_0)
        idx = 288
        s = 0
        while (32 * stor0.length) + 256 > idx:
            mem[idx + 32] = stor0[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if 0 < stor0.length:
            require ext_code.size(mem[300 len 20])
            call mem[300 len 20].0x313ce567 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 10^(-ext_call.return_data[0] + 18):
                mem[(32 * stor0.length) + 324] = arg1
                mem[(32 * stor0.length) + 356] = defaultAmount / 10^(-ext_call.return_data[0] + 18)
                mem[(32 * stor0.length) + 292] = 96
                mem[(32 * stor0.length) + 388] = stor0.length
                mem[(32 * stor0.length) + 420 len floor32(stor0.length)] = mem[288 len floor32(stor0.length)]
                require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
                call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0x4ed85961 with:
                     gas gas_remaining wei
                    args Array(len=stor0.length, data=mem[288 len floor32(stor0.length)], mem[(32 * stor0.length) + floor32(stor0.length) + 420 len (32 * stor0.length) - floor32(stor0.length)]), address(arg1), defaultAmount / 10^(-ext_call.return_data[0] + 18)
                mem[(32 * stor0.length) + 288] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 < stor0.length:
                    if 4 < stor0.length:
                        _708 = mem[416]
                        mem[(32 * stor0.length) + 292] = mem[364 len 20]
                        mem[(32 * stor0.length) + 324] = address(_708)
                        mem[(32 * stor0.length) + 356] = ext_call.return_data[0]
                        require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                        call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args mem[(32 * stor0.length) + 292], address(_708), ext_call.return_data[0]
                        mem[(32 * stor0.length) + 288 len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if defaultAmount:
                            if arg3 >= 10^18 * ext_call.return_data[0] / defaultAmount:
                                return 0, 1
                            if not stor0.length:
                                if 0 < stor0.length:
                                    require ext_code.size(ext_call.return_data[44 len 20])
                                    call ext_call.return_data[44 len 20].0x313ce567 with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 10^(-ext_call.return_data[0] + 18):
                                        mem[(64 * stor0.length) + 320] = 0x4ed8596100000000000000000000000000000000000000000000000000000000
                                        mem[(64 * stor0.length) + 356] = arg1
                                        mem[(64 * stor0.length) + 388] = 2 * defaultAmount / 10^(-ext_call.return_data[0] + 18)
                                        mem[(64 * stor0.length) + 324] = 96
                                        mem[(64 * stor0.length) + 420] = stor0.length
                                        mem[(64 * stor0.length) + 452 len floor32(stor0.length)] = mem[(32 * stor0.length) + 320 len floor32(stor0.length)]
                                        require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
                                        call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0x4ed85961 with:
                                             gas gas_remaining wei
                                            args mem[(64 * stor0.length) + 324 len (161 * stor0.length) + 128]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if 2 < stor0.length:
                                            if 4 < stor0.length:
                                                _941 = mem[(32 * stor0.length) + 448]
                                                mem[(64 * stor0.length) + 356] = mem[(32 * stor0.length) + 460 len 20]
                                                mem[(64 * stor0.length) + 388] = ext_call.return_data[0]
                                                require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                                                call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                                                     gas gas_remaining wei
                                                    args address(stor0.length), address(_941), ext_call.return_data[0]
                                                mem[(64 * stor0.length) + 320 len 64] = ext_call.return_data[0 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 64
                                                if 2 * defaultAmount:
                                                    if (10^18 * ext_call.return_data[0] / defaultAmount) - (10^18 * ext_call.return_data[0] / 2 * defaultAmount):
                                                        if 10^18 * (10^18 * ext_call.return_data[0] / defaultAmount) - arg3 / 2 / (10^18 * ext_call.return_data[0] / defaultAmount) - (10^18 * ext_call.return_data[0] / 2 * defaultAmount) <= 0:
                                                            return 0, 2
                                                        if 10^18 * (10^18 * ext_call.return_data[0] / defaultAmount) - arg3 / 2 / (10^18 * ext_call.return_data[0] / defaultAmount) - (10^18 * ext_call.return_data[0] / 2 * defaultAmount) <= arg4 * arg3 / 10^18:
                                                            if not stor0.length:
                                                                if 0 < stor0.length:
                                                                    require ext_code.size(ext_call.return_data[44 len 20])
                                                                    call ext_call.return_data[44 len 20].0x313ce567 with:
                                                                         gas gas_remaining wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 32
                                                                    if 0 < stor0.length:
                                                                        require ext_code.size(ext_call.return_data[44 len 20])
                                                                        call ext_call.return_data[44 len 20].0x313ce567 with:
                                                                             gas gas_remaining wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        if 10^(-ext_call.return_data[0] + 18):
                                                                            mem[(98 * stor0.length) + 388] = arg1
                                                                            mem[(98 * stor0.length) + 420] = 10^18 * (10^18 * ext_call.return_data[0] / defaultAmount) - arg3 / 2 / (10^18 * ext_call.return_data[0] / defaultAmount) - (10^18 * ext_call.return_data[0] / 2 * defaultAmount) / 10^(-ext_call.return_data[0] + 18)
                                                                            mem[(98 * stor0.length) + 356] = 96
                                                                            mem[(98 * stor0.length) + 452] = stor0.length
                                                                            mem[(98 * stor0.length) + 484 len floor32(stor0.length)] = mem[(64 * stor0.length) + 352 len floor32(stor0.length)]
                                                                            require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
                                                                            call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0x4ed85961 with:
                                                                                 gas gas_remaining wei
                                                                                args Array(len=stor0.length, data=mem[(64 * stor0.length) + 352 len floor32(stor0.length)], mem[(98 * stor0.length) + floor32(stor0.length) + 484 len (33 * stor0.length) - floor32(stor0.length)]), address(arg1), 10^18 * (10^18 * ext_call.return_data[0] / defaultAmount) - arg3 / 2 / (10^18 * ext_call.return_data[0] / defaultAmount) - (10^18 * ext_call.return_data[0] / 2 * defaultAmount) / 10^(-ext_call.return_data[0] + 18)
                                                                            mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            require return_data.size >= 32
                                                                            if 2 < stor0.length:
                                                                                if 4 < stor0.length:
                                                                                    require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                                                                                    call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                                                                                         gas gas_remaining wei
                                                                                        args address(stor0.length), address(mem[(64 * stor0.length) + 480]), ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    require return_data.size >= 64
                                                                                    if 10^18 * (10^18 * ext_call.return_data[0] / defaultAmount) - arg3 / 2 / (10^18 * ext_call.return_data[0] / defaultAmount) - (10^18 * ext_call.return_data[0] / 2 * defaultAmount):
                                                                                        if arg3 >= 10^18 * ext_call.return_data[0] / 10^18 * (10^18 * ext_call.return_data[0] / defaultAmount) - arg3 / 2 / (10^18 * ext_call.return_data[0] / defaultAmount) - (10^18 * ext_call.return_data[0] / 2 * defaultAmount):
                                                                                            return 0, 3
                                                                                        if arg3:
                                                                                            return 10^18 * (10^18 * ext_call.return_data[0] / defaultAmount) - arg3 / 2 / (10^18 * ext_call.return_data[0] / defaultAmount) - (10^18 * ext_call.return_data[0] / 2 * defaultAmount), 
                                                                                                   (10^18 * ext_call.return_data[0] / 10^18 * (10^18 * ext_call.return_data[0] / defaultAmount) - arg3 / 2 / (10^18 * ext_call.return_data[0] / defaultAmount) - (10^18 * ext_call.return_data[0] / 2 * defaultAmount) * 10^18 * 10^18 * (10^18 * ext_call.return_data[0] / defaultAmount) - arg3 / 2 / (10^18 * ext_call.return_data[0] / defaultAmount) - (10^18 * ext_call.return_data[0] / 2 * defaultAmount) / arg3) - (arg3 * 10^18 * 10^18 * (10^18 * ext_call.return_data[0] / defaultAmount) - arg3 / 2 / (10^18 * ext_call.return_data[0] / defaultAmount) - (10^18 * ext_call.return_data[0] / 2 * defaultAmount) / arg3) / 10^18
                                                            else:
                                                                mem[(64 * stor0.length) + 352] = address(stor0.field_0)
                                                                idx = (64 * stor0.length) + 352
                                                                s = 0
                                                                while (98 * stor0.length) + 320 > idx:
                                                                    mem[idx + 32] = stor0[s].field_256
                                                                    idx = idx + 32
                                                                    s = s + 1
                                                                    continue 
                                                                if 0 < stor0.length:
                                                                    require ext_code.size(mem[(64 * stor0.length) + 364 len 20])
                                                                    call mem[(64 * stor0.length) + 364 len 20].0x313ce567 with:
                                                                         gas gas_remaining wei
                                                                    mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 32
                                                                    if 0 < stor0.length:
                                                                        require ext_code.size(mem[(64 * stor0.length) + 364 len 20])
                                                                        call mem[(64 * stor0.length) + 364 len 20].0x313ce567 with:
                                                                             gas gas_remaining wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        if 10^(-ext_call.return_data[0] + 18):
                                                                            mem[(98 * stor0.length) + 388] = arg1
                                                                            mem[(98 * stor0.length) + 420] = 10^18 * (10^18 * ext_call.return_data[0] / defaultAmount) - arg3 / 2 / (10^18 * ext_call.return_data[0] / defaultAmount) - (10^18 * ext_call.return_data[0] / 2 * defaultAmount) / 10^(-ext_call.return_data[0] + 18)
                                                                            mem[(98 * stor0.length) + 356] = 96
                                                                            mem[(98 * stor0.length) + 452] = stor0.length
                                                                            mem[(98 * stor0.length) + 484 len floor32(stor0.length)] = mem[(64 * stor0.length) + 352 len floor32(stor0.length)]
                                                                            require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
                                                                            call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0x4ed85961 with:
                                                                                 gas gas_remaining wei
                                                                                args Array(len=stor0.length, data=mem[(64 * stor0.length) + 352 len floor32(stor0.length)], mem[(98 * stor0.length) + floor32(stor0.length) + 484 len (33 * stor0.length) - floor32(stor0.length)]), address(arg1), 10^18 * (10^18 * ext_call.return_data[0] / defaultAmount) - arg3 / 2 / (10^18 * ext_call.return_data[0] / defaultAmount) - (10^18 * ext_call.return_data[0] / 2 * defaultAmount) / 10^(-ext_call.return_data[0] + 18)
                                                                            mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            require return_data.size >= 32
                                                                            if 2 < stor0.length:
                                                                                if 4 < stor0.length:
                                                                                    _1593 = mem[(64 * stor0.length) + 480]
                                                                                    mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 428 len 20]
                                                                                    require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                                                                                    call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                                                                                         gas gas_remaining wei
                                                                                        args mem[(98 * stor0.length) + 356], address(_1593), ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    require return_data.size >= 64
                                                                                    if 10^18 * (10^18 * ext_call.return_data[0] / defaultAmount) - arg3 / 2 / (10^18 * ext_call.return_data[0] / defaultAmount) - (10^18 * ext_call.return_data[0] / 2 * defaultAmount):
                                                                                        if arg3 >= 10^18 * ext_call.return_data[0] / 10^18 * (10^18 * ext_call.return_data[0] / defaultAmount) - arg3 / 2 / (10^18 * ext_call.return_data[0] / defaultAmount) - (10^18 * ext_call.return_data[0] / 2 * defaultAmount):
                                                                                            return 0, 3
                                                                                        if arg3:
                                                                                            return 10^18 * (10^18 * ext_call.return_data[0] / defaultAmount) - arg3 / 2 / (10^18 * ext_call.return_data[0] / defaultAmount) - (10^18 * ext_call.return_data[0] / 2 * defaultAmount), 
                                                                                                   (10^18 * ext_call.return_data[0] / 10^18 * (10^18 * ext_call.return_data[0] / defaultAmount) - arg3 / 2 / (10^18 * ext_call.return_data[0] / defaultAmount) - (10^18 * ext_call.return_data[0] / 2 * defaultAmount) * 10^18 * 10^18 * (10^18 * ext_call.return_data[0] / defaultAmount) - arg3 / 2 / (10^18 * ext_call.return_data[0] / defaultAmount) - (10^18 * ext_call.return_data[0] / 2 * defaultAmount) / arg3) - (arg3 * 10^18 * 10^18 * (10^18 * ext_call.return_data[0] / defaultAmount) - arg3 / 2 / (10^18 * ext_call.return_data[0] / defaultAmount) - (10^18 * ext_call.return_data[0] / 2 * defaultAmount) / arg3) / 10^18
                                                        else:
                                                            if not stor0.length:
                                                                if 0 < stor0.length:
                                                                    require ext_code.size(ext_call.return_data[44 len 20])
                                                                    call ext_call.return_data[44 len 20].0x313ce567 with:
                                                                         gas gas_remaining wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 32
                                                                    if 0 < stor0.length:
                                                                        require ext_code.size(ext_call.return_data[44 len 20])
                                                                        call ext_call.return_data[44 len 20].0x313ce567 with:
                                                                             gas gas_remaining wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        if 10^(-ext_call.return_data[0] + 18):
                                                                            mem[(98 * stor0.length) + 388] = arg1
                                                                            mem[(98 * stor0.length) + 420] = arg4 * arg3 / 10^18 / 10^(-ext_call.return_data[0] + 18)
                                                                            mem[(98 * stor0.length) + 356] = 96
                                                                            mem[(98 * stor0.length) + 452] = stor0.length
                                                                            mem[(98 * stor0.length) + 484 len floor32(stor0.length)] = mem[(64 * stor0.length) + 352 len floor32(stor0.length)]
                                                                            require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
                                                                            call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0x4ed85961 with:
                                                                                 gas gas_remaining wei
                                                                                args Array(len=stor0.length, data=mem[(64 * stor0.length) + 352 len floor32(stor0.length)], mem[(98 * stor0.length) + floor32(stor0.length) + 484 len (33 * stor0.length) - floor32(stor0.length)]), address(arg1), arg4 * arg3 / 10^18 / 10^(-ext_call.return_data[0] + 18)
                                                                            mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            require return_data.size >= 32
                                                                            if 2 < stor0.length:
                                                                                if 4 < stor0.length:
                                                                                    require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                                                                                    call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                                                                                         gas gas_remaining wei
                                                                                        args address(stor0.length), address(mem[(64 * stor0.length) + 480]), ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    require return_data.size >= 64
                                                                                    if arg4 * arg3 / 10^18:
                                                                                        if arg3 >= 10^18 * ext_call.return_data[0] / arg4 * arg3 / 10^18:
                                                                                            return 0, 3
                                                                                        if arg3:
                                                                                            return arg4 * arg3 / 10^18, 
                                                                                                   (10^18 * ext_call.return_data[0] / arg4 * arg3 / 10^18 * 10^18 * arg4 * arg3 / 10^18 / arg3) - (arg3 * 10^18 * arg4 * arg3 / 10^18 / arg3) / 10^18
                                                            else:
                                                                mem[(64 * stor0.length) + 352] = address(stor0.field_0)
                                                                idx = (64 * stor0.length) + 352
                                                                s = 0
                                                                while (98 * stor0.length) + 320 > idx:
                                                                    mem[idx + 32] = stor0[s].field_256
                                                                    idx = idx + 32
                                                                    s = s + 1
                                                                    continue 
                                                                if 0 < stor0.length:
                                                                    require ext_code.size(mem[(64 * stor0.length) + 364 len 20])
                                                                    call mem[(64 * stor0.length) + 364 len 20].0x313ce567 with:
                                                                         gas gas_remaining wei
                                                                    mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 32
                                                                    if 0 < stor0.length:
                                                                        require ext_code.size(mem[(64 * stor0.length) + 364 len 20])
                                                                        call mem[(64 * stor0.length) + 364 len 20].0x313ce567 with:
                                                                             gas gas_remaining wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        if 10^(-ext_call.return_data[0] + 18):
                                                                            mem[(98 * stor0.length) + 388] = arg1
                                                                            mem[(98 * stor0.length) + 420] = arg4 * arg3 / 10^18 / 10^(-ext_call.return_data[0] + 18)
                                                                            mem[(98 * stor0.length) + 356] = 96
                                                                            mem[(98 * stor0.length) + 452] = stor0.length
                                                                            mem[(98 * stor0.length) + 484 len floor32(stor0.length)] = mem[(64 * stor0.length) + 352 len floor32(stor0.length)]
                                                                            require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
                                                                            call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0x4ed85961 with:
                                                                                 gas gas_remaining wei
                                                                                args Array(len=stor0.length, data=mem[(64 * stor0.length) + 352 len floor32(stor0.length)], mem[(98 * stor0.length) + floor32(stor0.length) + 484 len (33 * stor0.length) - floor32(stor0.length)]), address(arg1), arg4 * arg3 / 10^18 / 10^(-ext_call.return_data[0] + 18)
                                                                            mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            require return_data.size >= 32
                                                                            if 2 < stor0.length:
                                                                                if 4 < stor0.length:
                                                                                    _1596 = mem[(64 * stor0.length) + 480]
                                                                                    mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 428 len 20]
                                                                                    require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                                                                                    call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                                                                                         gas gas_remaining wei
                                                                                        args mem[(98 * stor0.length) + 356], address(_1596), ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    require return_data.size >= 64
                                                                                    if arg4 * arg3 / 10^18:
                                                                                        if arg3 >= 10^18 * ext_call.return_data[0] / arg4 * arg3 / 10^18:
                                                                                            return 0, 3
                                                                                        if arg3:
                                                                                            return arg4 * arg3 / 10^18, 
                                                                                                   (10^18 * ext_call.return_data[0] / arg4 * arg3 / 10^18 * 10^18 * arg4 * arg3 / 10^18 / arg3) - (arg3 * 10^18 * arg4 * arg3 / 10^18 / arg3) / 10^18
                            else:
                                mem[(32 * stor0.length) + 320] = address(stor0.field_0)
                                idx = (32 * stor0.length) + 320
                                s = 0
                                while (64 * stor0.length) + 288 > idx:
                                    mem[idx + 32] = stor0[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if 0 < stor0.length:
                                    require ext_code.size(mem[(32 * stor0.length) + 332 len 20])
                                    call mem[(32 * stor0.length) + 332 len 20].0x313ce567 with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 10^(-ext_call.return_data[0] + 18):
                                        mem[(64 * stor0.length) + 320] = 0x4ed8596100000000000000000000000000000000000000000000000000000000
                                        mem[(64 * stor0.length) + 356] = arg1
                                        mem[(64 * stor0.length) + 388] = 2 * defaultAmount / 10^(-ext_call.return_data[0] + 18)
                                        mem[(64 * stor0.length) + 324] = 96
                                        mem[(64 * stor0.length) + 420] = stor0.length
                                        mem[(64 * stor0.length) + 452 len floor32(stor0.length)] = mem[(32 * stor0.length) + 320 len floor32(stor0.length)]
                                        require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
                                        call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0x4ed85961 with:
                                             gas gas_remaining wei
                                            args mem[(64 * stor0.length) + 324 len (161 * stor0.length) + 128]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if 2 < stor0.length:
                                            if 4 < stor0.length:
                                                _1369 = mem[(32 * stor0.length) + 448]
                                                mem[(64 * stor0.length) + 324] = mem[(32 * stor0.length) + 396 len 20]
                                                mem[(64 * stor0.length) + 356] = address(_1369)
                                                mem[(64 * stor0.length) + 388] = ext_call.return_data[0]
                                                require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                                                call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                                                     gas gas_remaining wei
                                                    args mem[(64 * stor0.length) + 324], address(_1369), ext_call.return_data[0]
                                                mem[(64 * stor0.length) + 320 len 64] = ext_call.return_data[0 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 64
                                                if 2 * defaultAmount:
                                                    if (10^18 * ext_call.return_data[0] / defaultAmount) - (10^18 * ext_call.return_data[0] / 2 * defaultAmount):
                                                        if 10^18 * (10^18 * ext_call.return_data[0] / defaultAmount) - arg3 / 2 / (10^18 * ext_call.return_data[0] / defaultAmount) - (10^18 * ext_call.return_data[0] / 2 * defaultAmount) <= 0:
                                                            return 0, 2
                                                        if 10^18 * (10^18 * ext_call.return_data[0] / defaultAmount) - arg3 / 2 / (10^18 * ext_call.return_data[0] / defaultAmount) - (10^18 * ext_call.return_data[0] / 2 * defaultAmount) <= arg4 * arg3 / 10^18:
                                                            if not stor0.length:
                                                                if 0 < stor0.length:
                                                                    require ext_code.size(ext_call.return_data[44 len 20])
                                                                    call ext_call.return_data[44 len 20].0x313ce567 with:
                                                                         gas gas_remaining wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 32
                                                                    if 0 < stor0.length:
                                                                        require ext_code.size(ext_call.return_data[44 len 20])
                                                                        call ext_call.return_data[44 len 20].0x313ce567 with:
                                                                             gas gas_remaining wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        if 10^(-ext_call.return_data[0] + 18):
                                                                            mem[(98 * stor0.length) + 388] = arg1
                                                                            mem[(98 * stor0.length) + 420] = 10^18 * (10^18 * ext_call.return_data[0] / defaultAmount) - arg3 / 2 / (10^18 * ext_call.return_data[0] / defaultAmount) - (10^18 * ext_call.return_data[0] / 2 * defaultAmount) / 10^(-ext_call.return_data[0] + 18)
                                                                            mem[(98 * stor0.length) + 356] = 96
                                                                            mem[(98 * stor0.length) + 452] = stor0.length
                                                                            mem[(98 * stor0.length) + 484 len floor32(stor0.length)] = mem[(64 * stor0.length) + 352 len floor32(stor0.length)]
                                                                            require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
                                                                            call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0x4ed85961 with:
                                                                                 gas gas_remaining wei
                                                                                args Array(len=stor0.length, data=mem[(64 * stor0.length) + 352 len floor32(stor0.length)], mem[(98 * stor0.length) + floor32(stor0.length) + 484 len (33 * stor0.length) - floor32(stor0.length)]), address(arg1), 10^18 * (10^18 * ext_call.return_data[0] / defaultAmount) - arg3 / 2 / (10^18 * ext_call.return_data[0] / defaultAmount) - (10^18 * ext_call.return_data[0] / 2 * defaultAmount) / 10^(-ext_call.return_data[0] + 18)
                                                                            mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            require return_data.size >= 32
                                                                            if 2 < stor0.length:
                                                                                if 4 < stor0.length:
                                                                                    require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                                                                                    call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                                                                                         gas gas_remaining wei
                                                                                        args stor0.length.field_32, address(mem[(64 * stor0.length) + 480]), ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    require return_data.size >= 64
                                                                                    if 10^18 * (10^18 * ext_call.return_data[0] / defaultAmount) - arg3 / 2 / (10^18 * ext_call.return_data[0] / defaultAmount) - (10^18 * ext_call.return_data[0] / 2 * defaultAmount):
                                                                                        if arg3 >= 10^18 * ext_call.return_data[0] / 10^18 * (10^18 * ext_call.return_data[0] / defaultAmount) - arg3 / 2 / (10^18 * ext_call.return_data[0] / defaultAmount) - (10^18 * ext_call.return_data[0] / 2 * defaultAmount):
                                                                                            return 0, 3
                                                                                        if arg3:
                                                                                            return 10^18 * (10^18 * ext_call.return_data[0] / defaultAmount) - arg3 / 2 / (10^18 * ext_call.return_data[0] / defaultAmount) - (10^18 * ext_call.return_data[0] / 2 * defaultAmount), 
                                                                                                   (10^18 * ext_call.return_data[0] / 10^18 * (10^18 * ext_call.return_data[0] / defaultAmount) - arg3 / 2 / (10^18 * ext_call.return_data[0] / defaultAmount) - (10^18 * ext_call.return_data[0] / 2 * defaultAmount) * 10^18 * 10^18 * (10^18 * ext_call.return_data[0] / defaultAmount) - arg3 / 2 / (10^18 * ext_call.return_data[0] / defaultAmount) - (10^18 * ext_call.return_data[0] / 2 * defaultAmount) / arg3) - (arg3 * 10^18 * 10^18 * (10^18 * ext_call.return_data[0] / defaultAmount) - arg3 / 2 / (10^18 * ext_call.return_data[0] / defaultAmount) - (10^18 * ext_call.return_data[0] / 2 * defaultAmount) / arg3) / 10^18
                                                            else:
                                                                mem[(64 * stor0.length) + 352] = address(stor0.field_0)
                                                                idx = (64 * stor0.length) + 352
                                                                s = 0
                                                                while (98 * stor0.length) + 320 > idx:
                                                                    mem[idx + 32] = stor0[s].field_256
                                                                    idx = idx + 32
                                                                    s = s + 1
                                                                    continue 
                                                                if 0 < stor0.length:
                                                                    require ext_code.size(mem[(64 * stor0.length) + 364 len 20])
                                                                    call mem[(64 * stor0.length) + 364 len 20].0x313ce567 with:
                                                                         gas gas_remaining wei
                                                                    mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 32
                                                                    if 0 < stor0.length:
                                                                        require ext_code.size(mem[(64 * stor0.length) + 364 len 20])
                                                                        call mem[(64 * stor0.length) + 364 len 20].0x313ce567 with:
                                                                             gas gas_remaining wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        if 10^(-ext_call.return_data[0] + 18):
                                                                            mem[(98 * stor0.length) + 388] = arg1
                                                                            mem[(98 * stor0.length) + 420] = 10^18 * (10^18 * ext_call.return_data[0] / defaultAmount) - arg3 / 2 / (10^18 * ext_call.return_data[0] / defaultAmount) - (10^18 * ext_call.return_data[0] / 2 * defaultAmount) / 10^(-ext_call.return_data[0] + 18)
                                                                            mem[(98 * stor0.length) + 356] = 96
                                                                            mem[(98 * stor0.length) + 452] = stor0.length
                                                                            mem[(98 * stor0.length) + 484 len floor32(stor0.length)] = mem[(64 * stor0.length) + 352 len floor32(stor0.length)]
                                                                            require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
                                                                            call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0x4ed85961 with:
                                                                                 gas gas_remaining wei
                                                                                args Array(len=stor0.length, data=mem[(98 * stor0.length) + 484 len 32 * stor0.length]), address(arg1), 10^18 * (10^18 * ext_call.return_data[0] / defaultAmount) - arg3 / 2 / (10^18 * ext_call.return_data[0] / defaultAmount) - (10^18 * ext_call.return_data[0] / 2 * defaultAmount) / 10^(-ext_call.return_data[0] + 18)
                                                                            mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            require return_data.size >= 32
                                                                            if 2 < stor0.length:
                                                                                if 4 < stor0.length:
                                                                                    _1725 = mem[(64 * stor0.length) + 480]
                                                                                    mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 428 len 20]
                                                                                    require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                                                                                    call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                                                                                         gas gas_remaining wei
                                                                                        args mem[(98 * stor0.length) + 356], address(_1725), ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    require return_data.size >= 64
                                                                                    if 10^18 * (10^18 * ext_call.return_data[0] / defaultAmount) - arg3 / 2 / (10^18 * ext_call.return_data[0] / defaultAmount) - (10^18 * ext_call.return_data[0] / 2 * defaultAmount):
                                                                                        if arg3 >= 10^18 * ext_call.return_data[0] / 10^18 * (10^18 * ext_call.return_data[0] / defaultAmount) - arg3 / 2 / (10^18 * ext_call.return_data[0] / defaultAmount) - (10^18 * ext_call.return_data[0] / 2 * defaultAmount):
                                                                                            return 0, 3
                                                                                        if arg3:
                                                                                            return 10^18 * (10^18 * ext_call.return_data[0] / defaultAmount) - arg3 / 2 / (10^18 * ext_call.return_data[0] / defaultAmount) - (10^18 * ext_call.return_data[0] / 2 * defaultAmount), 
                                                                                                   (10^18 * ext_call.return_data[0] / 10^18 * (10^18 * ext_call.return_data[0] / defaultAmount) - arg3 / 2 / (10^18 * ext_call.return_data[0] / defaultAmount) - (10^18 * ext_call.return_data[0] / 2 * defaultAmount) * 10^18 * 10^18 * (10^18 * ext_call.return_data[0] / defaultAmount) - arg3 / 2 / (10^18 * ext_call.return_data[0] / defaultAmount) - (10^18 * ext_call.return_data[0] / 2 * defaultAmount) / arg3) - (arg3 * 10^18 * 10^18 * (10^18 * ext_call.return_data[0] / defaultAmount) - arg3 / 2 / (10^18 * ext_call.return_data[0] / defaultAmount) - (10^18 * ext_call.return_data[0] / 2 * defaultAmount) / arg3) / 10^18
                                                        else:
                                                            if not stor0.length:
                                                                if 0 < stor0.length:
                                                                    require ext_code.size(ext_call.return_data[44 len 20])
                                                                    call ext_call.return_data[44 len 20].0x313ce567 with:
                                                                         gas gas_remaining wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 32
                                                                    if 0 < stor0.length:
                                                                        require ext_code.size(ext_call.return_data[44 len 20])
                                                                        call ext_call.return_data[44 len 20].0x313ce567 with:
                                                                             gas gas_remaining wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        if 10^(-ext_call.return_data[0] + 18):
                                                                            mem[(98 * stor0.length) + 388] = arg1
                                                                            mem[(98 * stor0.length) + 420] = arg4 * arg3 / 10^18 / 10^(-ext_call.return_data[0] + 18)
                                                                            mem[(98 * stor0.length) + 356] = 96
                                                                            mem[(98 * stor0.length) + 452] = stor0.length
                                                                            mem[(98 * stor0.length) + 484 len floor32(stor0.length)] = mem[(64 * stor0.length) + 352 len floor32(stor0.length)]
                                                                            require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
                                                                            call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0x4ed85961 with:
                                                                                 gas gas_remaining wei
                                                                                args Array(len=stor0.length, data=mem[(64 * stor0.length) + 352 len floor32(stor0.length)], mem[(98 * stor0.length) + floor32(stor0.length) + 484 len (33 * stor0.length) - floor32(stor0.length)]), address(arg1), arg4 * arg3 / 10^18 / 10^(-ext_call.return_data[0] + 18)
                                                                            mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            require return_data.size >= 32
                                                                            if 2 < stor0.length:
                                                                                if 4 < stor0.length:
                                                                                    require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                                                                                    call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                                                                                         gas gas_remaining wei
                                                                                        args stor0.length.field_32, address(mem[(64 * stor0.length) + 480]), ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    require return_data.size >= 64
                                                                                    if arg4 * arg3 / 10^18:
                                                                                        if arg3 >= 10^18 * ext_call.return_data[0] / arg4 * arg3 / 10^18:
                                                                                            return 0, 3
                                                                                        if arg3:
                                                                                            return arg4 * arg3 / 10^18, 
                                                                                                   (10^18 * ext_call.return_data[0] / arg4 * arg3 / 10^18 * 10^18 * arg4 * arg3 / 10^18 / arg3) - (arg3 * 10^18 * arg4 * arg3 / 10^18 / arg3) / 10^18
                                                            else:
                                                                mem[(64 * stor0.length) + 352] = address(stor0.field_0)
                                                                idx = (64 * stor0.length) + 352
                                                                s = 0
                                                                while (98 * stor0.length) + 320 > idx:
                                                                    mem[idx + 32] = stor0[s].field_256
                                                                    idx = idx + 32
                                                                    s = s + 1
                                                                    continue 
                                                                if 0 < stor0.length:
                                                                    require ext_code.size(mem[(64 * stor0.length) + 364 len 20])
                                                                    call mem[(64 * stor0.length) + 364 len 20].0x313ce567 with:
                                                                         gas gas_remaining wei
                                                                    mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 32
                                                                    if 0 < stor0.length:
                                                                        require ext_code.size(mem[(64 * stor0.length) + 364 len 20])
                                                                        call mem[(64 * stor0.length) + 364 len 20].0x313ce567 with:
                                                                             gas gas_remaining wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        if 10^(-ext_call.return_data[0] + 18):
                                                                            mem[(98 * stor0.length) + 388] = arg1
                                                                            mem[(98 * stor0.length) + 420] = arg4 * arg3 / 10^18 / 10^(-ext_call.return_data[0] + 18)
                                                                            mem[(98 * stor0.length) + 356] = 96
                                                                            mem[(98 * stor0.length) + 452] = stor0.length
                                                                            mem[(98 * stor0.length) + 484 len floor32(stor0.length)] = mem[(64 * stor0.length) + 352 len floor32(stor0.length)]
                                                                            require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
                                                                            call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0x4ed85961 with:
                                                                                 gas gas_remaining wei
                                                                                args Array(len=stor0.length, data=mem[(98 * stor0.length) + 484 len 32 * stor0.length]), address(arg1), arg4 * arg3 / 10^18 / 10^(-ext_call.return_data[0] + 18)
                                                                            mem[(98 * stor0.length) + 352] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            require return_data.size >= 32
                                                                            if 2 < stor0.length:
                                                                                if 4 < stor0.length:
                                                                                    _1728 = mem[(64 * stor0.length) + 480]
                                                                                    mem[(98 * stor0.length) + 356] = mem[(64 * stor0.length) + 428 len 20]
                                                                                    require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                                                                                    call 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                                                                                         gas gas_remaining wei
                                                                                        args mem[(98 * stor0.length) + 356], address(_1728), ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    require return_data.size >= 64
                                                                                    if arg4 * arg3 / 10^18:
                                                                                        if arg3 >= 10^18 * ext_call.return_data[0] / arg4 * arg3 / 10^18:
                                                                                            return 0, 3
                                                                                        if arg3:
                                                                                            return arg4 * arg3 / 10^18, 
                                                                                                   (10^18 * ext_call.return_data[0] / arg4 * arg3 / 10^18 * 10^18 * arg4 * arg3 / 10^18 / arg3) - (arg3 * 10^18 * arg4 * arg3 / 10^18 / arg3) / 10^18
    revert
}



}
