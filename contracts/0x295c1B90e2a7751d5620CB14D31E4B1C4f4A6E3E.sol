contract main {




// =====================  Runtime code  =====================


address stor0;

function kill() {
    require msg.sender == stor0
    selfdestruct(msg.sender)
}

function _fallback() payable {
  stop
}

function withdraw(uint256 arg1) {
    require msg.sender == stor0
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_e796ce65(?) {
    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
    call 0x818e6fecd516ecc3849daf6845e3ec868087b755.searchBestRate(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(arg1), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(arg1)
    call arg1.0x313ce567 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 10^(-ext_call.return_data[0] + 36)
    require ext_code.size(arg2)
    call arg2.getReturn(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg1), 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, ext_call.return_data[32] * arg3 / 10^(-ext_call.return_data[0] + 36)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x3839416bd0095d97be9b354cbfb0f6807d4d609e)
    call 0x3839416bd0095d97be9b354cbfb0f6807d4d609e.getReturn(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return address(ext_call.return_data[0]), ext_call.return_data[0]
}

function sub_4c07c446(?) {
    require ext_code.size(0x3839416bd0095d97be9b354cbfb0f6807d4d609e)
    call 0x3839416bd0095d97be9b354cbfb0f6807d4d609e.getReturn(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    call arg2.getReturn(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
    call 0x818e6fecd516ecc3849daf6845e3ec868087b755.searchBestRate(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg1), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(arg1)
    call arg1.0x313ce567 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 10^ext_call.return_data[0]
    return address(ext_call.return_data[0]), ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0]
}

function sub_5d93f7f2(?) {
    require ext_code.size(0x3839416bd0095d97be9b354cbfb0f6807d4d609e)
    call 0x3839416bd0095d97be9b354cbfb0f6807d4d609e.getReturn(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    call arg2.getReturn(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg3)
    call arg3.conversionRatesContract() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getRate(address arg1, uint256 arg2, bool arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 0, 0, block.number, 0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0x313ce567 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 10^ext_call.return_data[0]
    require ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] <= eth.balance(arg3)
    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0])
}

function sub_0366ec94(?) {
    require ext_code.size(arg3)
    call arg3.conversionRatesContract() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getRate(address arg1, uint256 arg2, bool arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 0, 0, block.number, 1, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0x313ce567 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 10^(-ext_call.return_data[0] + 36)
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= ext_call.return_data[0] * arg4 / 10^(-ext_call.return_data[0] + 36)
    require ext_code.size(arg2)
    call arg2.getReturn(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg1), 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, ext_call.return_data[0] * arg4 / 10^(-ext_call.return_data[0] + 36)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x3839416bd0095d97be9b354cbfb0f6807d4d609e)
    call 0x3839416bd0095d97be9b354cbfb0f6807d4d609e.getReturn(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_be54803c(?) {
    require 4 < ('cd', 4).length
    require ext_code.size(0x3839416bd0095d97be9b354cbfb0f6807d4d609e)
    call 0x3839416bd0095d97be9b354cbfb0f6807d4d609e.getReturn(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, cd[132]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(cd[36]))
    call address(cd[36]).getReturn(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, address(('cd', 4)[4]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(cd[68]))
    call address(cd[68]).conversionRatesContract() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getRate(address arg1, uint256 arg2, bool arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 0, 0, block.number, 0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(('cd', 4)[4]))
    call address(('cd', 4)[4]).0x313ce567 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 10^ext_call.return_data[0]
    require ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] <= eth.balance(cd[68])
    require ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0] > (cd[100] * block.gasprice) + cd[132]
    require ext_code.size(0xf20b9e713a33f61fa38792d2afaf1cd30339126a)
    call 0xf20b9e713a33f61fa38792d2afaf1cd30339126a.convert(address[] arg1, uint256 arg2, uint256 arg3) with:
       value cd[132] wei
         gas gas_remaining wei
        args 0, 96, cd[132], 1, ('cd', 4).length, call.data[cd[4] + 36 len 32 * ('cd', 4).length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 4 < ('cd', 4).length
    call address(('cd', 4)[4]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x818e6fecd516ecc3849daf6845e3ec868087b755, ext_call.return_data[0]
    require ext_call.success
    require 4 < ('cd', 4).length
    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
    call 0x818e6fecd516ecc3849daf6845e3ec868087b755.swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(('cd', 4)[4]), ext_call.return_data[0], 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require eth.balance(this.address) >= eth.balance(this.address)
    call msg.sender with:
         gas 2300 wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_f98a0dec(?) {
    if not ('cd', 4).length:
        mem[(32 * ('cd', 4).length) + 128] = ('cd', 4).length
    else:
        mem[128 len 32 * ('cd', 4).length] = code.data[5860 len 32 * ('cd', 4).length]
        mem[(32 * ('cd', 4).length) + 128] = ('cd', 4).length
        mem[(32 * ('cd', 4).length) + 160 len 32 * ('cd', 4).length] = code.data[5860 len 32 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 36).length
        require idx < ('cd', 68).length
        require ext_code.size(0x3839416bd0095d97be9b354cbfb0f6807d4d609e)
        call 0x3839416bd0095d97be9b354cbfb0f6807d4d609e.getReturn(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, cd[((32 * idx) + cd[68] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
        call address(cd[((32 * idx) + cd[36] + 36)]).getReturn(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, address(cd[((32 * idx) + cd[4] + 36)]), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(64 * ('cd', 4).length) + 196] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
        mem[(64 * ('cd', 4).length) + 228] = ext_call.return_data[0]
        require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
        call 0x818e6fecd516ecc3849daf6845e3ec868087b755.searchBestRate(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(cd[((32 * idx) + cd[4] + 36)]), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, ext_call.return_data[0]
        mem[(64 * ('cd', 4).length) + 160 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        call address(cd[((32 * idx) + cd[4] + 36)]).0x313ce567 with:
             gas gas_remaining wei
        mem[(64 * ('cd', 4).length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 10^ext_call.return_data[0]
        require idx < ('cd', 4).length
        require idx < mem[(32 * ('cd', 4).length) + 128]
        mem[(32 * ('cd', 4).length) + (32 * idx) + 160] = ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0]
        mem[(32 * idx) + 128] = address(ext_call.return_data[0])
        idx = idx + 1
        continue 
    mem[(64 * ('cd', 4).length) + 160] = 64
    mem[(64 * ('cd', 4).length) + 224] = ('cd', 4).length
    mem[(64 * ('cd', 4).length) + 256 len floor32(('cd', 4).length)] = mem[128 len floor32(('cd', 4).length)]
    mem[(64 * ('cd', 4).length) + 192] = (32 * ('cd', 4).length) + 96
    mem[(98 * ('cd', 4).length) + 256] = mem[(32 * ('cd', 4).length) + 128]
    mem[(98 * ('cd', 4).length) + 288 len floor32(mem[(32 * ('cd', 4).length) + 128])] = mem[(32 * ('cd', 4).length) + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])]
    return memory
      from (64 * ('cd', 4).length) + 160
       len (32 * mem[(32 * ('cd', 4).length) + 128]) + (32 * ('cd', 4).length) + 128
}

function sub_532219b5(?) {
    require 0 < ('cd', 4).length
    require ext_code.size(address(cd[68]))
    call address(cd[68]).conversionRatesContract() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getRate(address arg1, uint256 arg2, bool arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 0, 0, block.number, 1, cd[132]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(('cd', 4)[0]))
    call address(('cd', 4)[0]).0x313ce567 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 10^(-ext_call.return_data[0] + 36)
    require ext_code.size(address(('cd', 4)[0]))
    call address(('cd', 4)[0]).0x70a08231 with:
         gas gas_remaining wei
        args address(cd[68])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= ext_call.return_data[0] * cd[132] / 10^(-ext_call.return_data[0] + 36)
    require ext_code.size(address(cd[36]))
    call address(cd[36]).getReturn(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(('cd', 4)[0]), 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, ext_call.return_data[0] * cd[132] / 10^(-ext_call.return_data[0] + 36)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x3839416bd0095d97be9b354cbfb0f6807d4d609e)
    call 0x3839416bd0095d97be9b354cbfb0f6807d4d609e.getReturn(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > (cd[100] * block.gasprice) + cd[132]
    require 0 < ('cd', 4).length
    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
    call 0x818e6fecd516ecc3849daf6845e3ec868087b755.swapEtherToToken(address arg1, uint256 arg2) with:
       value cd[132] wei
         gas gas_remaining wei
        args address(('cd', 4)[0]), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0 < ('cd', 4).length
    call address(('cd', 4)[0]).0xa9059cbb with:
         gas gas_remaining wei
        args 0xf20b9e713a33f61fa38792d2afaf1cd30339126a, ext_call.return_data[0]
    require ext_call.success
    require ext_code.size(0xf20b9e713a33f61fa38792d2afaf1cd30339126a)
    call 0xf20b9e713a33f61fa38792d2afaf1cd30339126a.convert(address[] arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args 0, 96, ext_call.return_data[0], 1, ('cd', 4).length, call.data[cd[4] + 36 len 32 * ('cd', 4).length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require eth.balance(this.address) >= eth.balance(this.address)
    call msg.sender with:
         gas 2300 wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_003abcab(?) {
    if not ('cd', 4).length:
        mem[(32 * ('cd', 4).length) + 128] = ('cd', 4).length
    else:
        mem[128 len 32 * ('cd', 4).length] = code.data[5860 len 32 * ('cd', 4).length]
        mem[(32 * ('cd', 4).length) + 128] = ('cd', 4).length
        mem[(32 * ('cd', 4).length) + 160 len 32 * ('cd', 4).length] = code.data[5860 len 32 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 36).length
        require idx < ('cd', 68).length
        require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
        call 0x818e6fecd516ecc3849daf6845e3ec868087b755.searchBestRate(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(cd[((32 * idx) + cd[4] + 36)]), cd[((32 * idx) + cd[68] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        call address(cd[((32 * idx) + cd[4] + 36)]).0x313ce567 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 10^(-ext_call.return_data[0] + 36)
        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
        call address(cd[((32 * idx) + cd[36] + 36)]).getReturn(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(cd[((32 * idx) + cd[4] + 36)]), 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, ext_call.return_data[32] * cd[((32 * idx) + cd[68] + 36)] / 10^(-ext_call.return_data[0] + 36)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(64 * ('cd', 4).length) + 164] = 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c
        mem[(64 * ('cd', 4).length) + 196] = 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315
        mem[(64 * ('cd', 4).length) + 228] = ext_call.return_data[0]
        require ext_code.size(0x3839416bd0095d97be9b354cbfb0f6807d4d609e)
        call 0x3839416bd0095d97be9b354cbfb0f6807d4d609e.getReturn(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, ext_call.return_data[0]
        mem[(64 * ('cd', 4).length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < ('cd', 4).length
        require idx < mem[(32 * ('cd', 4).length) + 128]
        mem[(32 * ('cd', 4).length) + (32 * idx) + 160] = ext_call.return_data[0]
        mem[(32 * idx) + 128] = address(ext_call.return_data[0])
        idx = idx + 1
        continue 
    mem[(64 * ('cd', 4).length) + 160] = 64
    mem[(64 * ('cd', 4).length) + 224] = ('cd', 4).length
    mem[(64 * ('cd', 4).length) + 256 len floor32(('cd', 4).length)] = mem[128 len floor32(('cd', 4).length)]
    mem[(64 * ('cd', 4).length) + 192] = (32 * ('cd', 4).length) + 96
    mem[(98 * ('cd', 4).length) + 256] = mem[(32 * ('cd', 4).length) + 128]
    mem[(98 * ('cd', 4).length) + 288 len floor32(mem[(32 * ('cd', 4).length) + 128])] = mem[(32 * ('cd', 4).length) + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])]
    return memory
      from (64 * ('cd', 4).length) + 160
       len (32 * mem[(32 * ('cd', 4).length) + 128]) + (32 * ('cd', 4).length) + 128
}



}
