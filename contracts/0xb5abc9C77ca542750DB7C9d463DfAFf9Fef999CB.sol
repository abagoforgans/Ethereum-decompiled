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
        _158 = mem[288]
        require 2 < stor0.length
        _160 = mem[352]
        require 0 < stor0.length
        require ext_code.size(mem[300 len 20])
        call mem[300 len 20].0x313ce567 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 10^(-ext_call.return_data[0] + 18)
        mem[(32 * stor0.length) + 292] = mem[300 len 20]
        mem[(32 * stor0.length) + 324] = address(_160)
        mem[(32 * stor0.length) + 356] = defaultAmount / 10^(-ext_call.return_data[0] + 18)
        require ext_code.size(arg1)
        call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(_158), address(_160), defaultAmount / 10^(-ext_call.return_data[0] + 18)
        mem[(32 * stor0.length) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 2 < stor0.length
        _172 = mem[352]
        require 4 < stor0.length
        _174 = mem[416]
        mem[(32 * stor0.length) + 324] = mem[428 len 20]
        mem[(32 * stor0.length) + 356] = ext_call.return_data[0]
        require ext_code.size(arg1)
        call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(_172), address(_174), ext_call.return_data[0]
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
            _191 = ext_call.return_data[28 len 4], mem[(32 * stor0.length) + 388 len 28]
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
                args address(ext_call.return_data[32]), address(_191), 2 * defaultAmount / 10^(-ext_call.return_data[0] + 18)
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
            require ext_code.size(mem[(32 * stor0.length) + 332 len 20])
            call mem[(32 * stor0.length) + 332 len 20].0x313ce567 with:
                 gas gas_remaining wei
            mem[(64 * stor0.length) + 320] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 0 < stor0.length
            require 2 < stor0.length
            _239 = mem[(32 * stor0.length) + 384]
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
                args mem[(64 * stor0.length) + 324], address(_239), 2 * defaultAmount / 10^(-ext_call.return_data[0] + 18)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 2 < stor0.length
            require 4 < stor0.length
            _267 = mem[(32 * stor0.length) + 448]
            mem[(64 * stor0.length) + 324] = mem[(32 * stor0.length) + 396 len 20]
            require ext_code.size(arg1)
            call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args mem[(64 * stor0.length) + 324], address(_267), ext_call.return_data[0]
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
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x70a08231 with:
             gas gas_remaining wei
            args address(ext_call.return_data[0])
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
        _241 = mem[352]
        require 0 < stor0.length
        require ext_code.size(mem[300 len 20])
        call mem[300 len 20].0x313ce567 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 10^(-ext_call.return_data[0] + 18)
        mem[(32 * stor0.length) + 292] = mem[300 len 20]
        mem[(32 * stor0.length) + 324] = address(_241)
        mem[(32 * stor0.length) + 356] = defaultAmount / 10^(-ext_call.return_data[0] + 18)
        require ext_code.size(arg1)
        call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args mem[(32 * stor0.length) + 292], address(_241), defaultAmount / 10^(-ext_call.return_data[0] + 18)
        mem[(32 * stor0.length) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 2 < stor0.length
        require 4 < stor0.length
        _270 = mem[416]
        mem[(32 * stor0.length) + 292] = mem[364 len 20]
        mem[(32 * stor0.length) + 324] = address(_270)
        mem[(32 * stor0.length) + 356] = ext_call.return_data[0]
        require ext_code.size(arg1)
        call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args mem[(32 * stor0.length) + 292], address(_270), ext_call.return_data[0]
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
            _300 = ext_call.return_data[28 len 4], mem[(32 * stor0.length) + 388 len 28]
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
                args ext_call.return_data[44 len 20], address(_300), 2 * defaultAmount / 10^(-ext_call.return_data[0] + 18)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 2 < stor0.length
            require 4 < stor0.length
            _314 = mem[(32 * stor0.length) + 448]
            mem[(64 * stor0.length) + 324] = mem[(32 * stor0.length) + 396 len 20]
            require ext_code.size(arg1)
            call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args mem[(64 * stor0.length) + 324], address(_314), ext_call.return_data[0]
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
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x70a08231 with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0])
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
            _339 = mem[(32 * stor0.length) + 384]
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
                args mem[(64 * stor0.length) + 324], address(_339), 2 * defaultAmount / 10^(-ext_call.return_data[0] + 18)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 2 < stor0.length
            require 4 < stor0.length
            _353 = mem[(32 * stor0.length) + 448]
            mem[(64 * stor0.length) + 324] = mem[(32 * stor0.length) + 396 len 20]
            require ext_code.size(arg1)
            call arg1.getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args mem[(64 * stor0.length) + 324], address(_353), ext_call.return_data[0]
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
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x70a08231 with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 0, 0, address(ext_call.return_data[0])
}



}
