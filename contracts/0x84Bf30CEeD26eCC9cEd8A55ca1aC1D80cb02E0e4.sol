contract main {




// =====================  Runtime code  =====================


#
#  - sub_33b85a3b(?)
#  - sub_3eb51fe1(?)
#
address stor0;

function kill() {
    if stor0 != msg.sender:
        revert with 0, 'msg.sender is not owner'
    selfdestruct(msg.sender)
}

function _fallback() payable {
  stop
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'msg.sender is not owner'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function approve(address[] arg1, address[] arg2) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    if stor0 != msg.sender:
        revert with 0, 'msg.sender is not owner'
    if arg2.length != arg1.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0xfe546f6b656e73206c656e6774682073686f756c6420626520657175616c20746f20746f206c656e6774,
                    mem[206 len 22]
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        _19 = mem[64]
        mem[mem[64] + 36] = address(cd[((32 * idx) + arg2 + 36)])
        mem[mem[64] + 68] = -1
        _20 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_20 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_20 + 36 len 28]
        _23 = mem[_20]
        t = _20 + 32
        u = mem[64]
        s = mem[_20]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[_20])] = mem[_20 + floor32(mem[_20]) + -(mem[_20] % 32) + 64 len mem[_20] % 32] or Mask(8 * -(mem[_20] % 32) + 32, -(8 * -(mem[_20] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_20])])
        call address(cd[((32 * idx) + arg1 + 36)]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _23 + _19 + -mem[64] + 96]
        if return_data.size:
            _37 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_37] = return_data.size
            mem[_37 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'Tokens approval failed'
        idx = idx + 1
        continue 
}

function sub_12807c4b(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if uint255(('cd', 4).length):
        mem[128 len 64 * ('cd', 4).length] = code.data[12041 len 64 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 36).length
        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
        staticcall address(cd[((32 * idx) + cd[36] + 36)]).getEthToTokenInputPrice(uint256 arg1) with:
                gas gas_remaining wei
               args cd[68]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(64 * ('cd', 4).length) + 132] = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2
        mem[(64 * ('cd', 4).length) + 164] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[(64 * ('cd', 4).length) + 196] = ext_call.return_data[0]
        require ext_code.size(0x39755357759ce0d7f32dc8dc45414cca409ae24e)
        staticcall 0x39755357759ce0d7f32dc8dc45414cca409ae24e.getBuyAmount(address arg1, address arg2, uint256 arg3) with:
                gas gas_remaining wei
               args 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, address(cd[((32 * idx) + cd[4] + 36)]), ext_call.return_data[0]
        mem[(64 * ('cd', 4).length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < 2 * ('cd', 4).length
        mem[(32 * idx) + 128] = ext_call.return_data[0]
        idx = idx + 1
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 36).length
        require idx < ('cd', 4).length
        mem[(64 * ('cd', 4).length) + 164] = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2
        mem[(64 * ('cd', 4).length) + 196] = cd[68]
        require ext_code.size(0x39755357759ce0d7f32dc8dc45414cca409ae24e)
        staticcall 0x39755357759ce0d7f32dc8dc45414cca409ae24e.getBuyAmount(address arg1, address arg2, uint256 arg3) with:
                gas gas_remaining wei
               args address(cd[((32 * idx) + cd[4] + 36)]), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, cd[68]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(64 * ('cd', 4).length) + 132] = ext_call.return_data[0]
        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
        staticcall address(cd[((32 * idx) + cd[36] + 36)]).getTokenToEthInputPrice(uint256 arg1) with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        mem[(64 * ('cd', 4).length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx + ('cd', 4).length < 2 * ('cd', 4).length
        mem[(32 * idx + ('cd', 4).length) + 128] = ext_call.return_data[0]
        idx = idx + 1
        continue 
    mem[(64 * ('cd', 4).length) + 192 len 2 * Mask(251, 4, ('cd', 4).length)] = mem[128 len 2 * Mask(251, 4, ('cd', 4).length)]
    return Array(len=2 * ('cd', 4).length, data=mem[128 len 2 * Mask(251, 4, ('cd', 4).length)], mem[(64 * ('cd', 4).length) + (2 * Mask(251, 4, ('cd', 4).length)) + 192 len (64 * ('cd', 4).length) - (2 * Mask(251, 4, ('cd', 4).length))]), 
}

function sub_b694570b(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if uint255(('cd', 4).length):
        mem[128 len 64 * ('cd', 4).length] = code.data[12041 len 64 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 36).length
        require idx < ('cd', 4).length
        require ext_code.size(0x39755357759ce0d7f32dc8dc45414cca409ae24e)
        staticcall 0x39755357759ce0d7f32dc8dc45414cca409ae24e.getBuyAmount(address arg1, address arg2, uint256 arg3) with:
                gas gas_remaining wei
               args address(cd[((32 * idx) + cd[4] + 36)]), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, cd[68]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
        staticcall address(cd[((32 * idx) + cd[36] + 36)]).getReturn(address arg1, address arg2, uint256 arg3) with:
                gas gas_remaining wei
               args address(cd[((32 * idx) + cd[4] + 36)]), 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(64 * ('cd', 4).length) + 132] = 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c
        mem[(64 * ('cd', 4).length) + 164] = 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315
        mem[(64 * ('cd', 4).length) + 196] = ext_call.return_data[0]
        require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
        staticcall 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                gas gas_remaining wei
               args 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, ext_call.return_data[0]
        mem[(64 * ('cd', 4).length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < 2 * ('cd', 4).length
        mem[(32 * idx) + 128] = ext_call.return_data[0]
        idx = idx + 1
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 36).length
        require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
        staticcall 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                gas gas_remaining wei
               args 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, cd[68]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
        staticcall address(cd[((32 * idx) + cd[36] + 36)]).getReturn(address arg1, address arg2, uint256 arg3) with:
                gas gas_remaining wei
               args 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, address(cd[((32 * idx) + cd[4] + 36)]), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(64 * ('cd', 4).length) + 132] = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2
        mem[(64 * ('cd', 4).length) + 164] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[(64 * ('cd', 4).length) + 196] = ext_call.return_data[0]
        require ext_code.size(0x39755357759ce0d7f32dc8dc45414cca409ae24e)
        staticcall 0x39755357759ce0d7f32dc8dc45414cca409ae24e.getBuyAmount(address arg1, address arg2, uint256 arg3) with:
                gas gas_remaining wei
               args 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, address(cd[((32 * idx) + cd[4] + 36)]), ext_call.return_data[0]
        mem[(64 * ('cd', 4).length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx + ('cd', 4).length < 2 * ('cd', 4).length
        mem[(32 * idx + ('cd', 4).length) + 128] = ext_call.return_data[0]
        idx = idx + 1
        continue 
    mem[(64 * ('cd', 4).length) + 192 len 2 * Mask(251, 4, ('cd', 4).length)] = mem[128 len 2 * Mask(251, 4, ('cd', 4).length)]
    return Array(len=2 * ('cd', 4).length, data=mem[128 len 2 * Mask(251, 4, ('cd', 4).length)], mem[(64 * ('cd', 4).length) + (2 * Mask(251, 4, ('cd', 4).length)) + 192 len (64 * ('cd', 4).length) - (2 * Mask(251, 4, ('cd', 4).length))]), 
}

function sub_b05ce123(?) {
    require calldata.size - 4 >= 128
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if uint255(('cd', 4).length):
        mem[128 len 64 * ('cd', 4).length] = code.data[12041 len 64 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 36).length
        require idx < ('cd', 68).length
        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
        staticcall address(cd[((32 * idx) + cd[68] + 36)]).getEthToTokenInputPrice(uint256 arg1) with:
                gas gas_remaining wei
               args cd[100]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
        staticcall address(cd[((32 * idx) + cd[36] + 36)]).getReturn(address arg1, address arg2, uint256 arg3) with:
                gas gas_remaining wei
               args address(cd[((32 * idx) + cd[4] + 36)]), 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(64 * ('cd', 4).length) + 132] = 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c
        mem[(64 * ('cd', 4).length) + 164] = 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315
        mem[(64 * ('cd', 4).length) + 196] = ext_call.return_data[0]
        require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
        staticcall 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                gas gas_remaining wei
               args 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, ext_call.return_data[0]
        mem[(64 * ('cd', 4).length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < 2 * ('cd', 4).length
        mem[(32 * idx) + 128] = ext_call.return_data[0]
        idx = idx + 1
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 68).length
        require idx < ('cd', 4).length
        require idx < ('cd', 36).length
        require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
        staticcall 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                gas gas_remaining wei
               args 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, cd[100]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(64 * ('cd', 4).length) + 164] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[(64 * ('cd', 4).length) + 196] = ext_call.return_data[0]
        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
        staticcall address(cd[((32 * idx) + cd[36] + 36)]).getReturn(address arg1, address arg2, uint256 arg3) with:
                gas gas_remaining wei
               args 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, address(cd[((32 * idx) + cd[4] + 36)]), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(64 * ('cd', 4).length) + 132] = ext_call.return_data[0]
        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
        staticcall address(cd[((32 * idx) + cd[68] + 36)]).getTokenToEthInputPrice(uint256 arg1) with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        mem[(64 * ('cd', 4).length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx + ('cd', 4).length < 2 * ('cd', 4).length
        mem[(32 * idx + ('cd', 4).length) + 128] = ext_call.return_data[0]
        idx = idx + 1
        continue 
    mem[(64 * ('cd', 4).length) + 192 len 2 * Mask(251, 4, ('cd', 4).length)] = mem[128 len 2 * Mask(251, 4, ('cd', 4).length)]
    return Array(len=2 * ('cd', 4).length, data=mem[128 len 2 * Mask(251, 4, ('cd', 4).length)], mem[(64 * ('cd', 4).length) + (2 * Mask(251, 4, ('cd', 4).length)) + 192 len (64 * ('cd', 4).length) - (2 * Mask(251, 4, ('cd', 4).length))]), 
}

function sub_2e4e5281(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    mem[96] = 2 * ('cd', 4).length
    if not uint255(('cd', 4).length):
        mem[(64 * ('cd', 4).length) + 128] = 2 * ('cd', 4).length
        mem[64] = (128 * ('cd', 4).length) + 160
        mem[(128 * ('cd', 4).length) + 160] = 0x5a51eb0000000000000000000000000000000000000000000000000000000 * 3600
        require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
        staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.kyberNetworkContract() with:
                gas gas_remaining wei
               args mem[(128 * ('cd', 4).length) + 164 len 255 * ('cd', 4).length]
        mem[(128 * ('cd', 4).length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = 0
        while idx < ('cd', 4).length:
            require idx < ('cd', 36).length
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            staticcall address(cd[((32 * idx) + cd[36] + 36)]).getEthToTokenInputPrice(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[68]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(128 * ('cd', 4).length) + 196] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
            mem[(128 * ('cd', 4).length) + 228] = ext_call.return_data[0]
            mem[(128 * ('cd', 4).length) + 260] = 1
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).searchBestRate(address arg1, address arg2, uint256 arg3, bool arg4) with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[4] + 36)]), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, ext_call.return_data[0], 1
            mem[(128 * ('cd', 4).length) + 160 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x313ce567 with:
                    gas gas_remaining wei
            mem[(128 * ('cd', 4).length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 10^ext_call.return_data[0]
            require idx + ('cd', 4).length < 2 * ('cd', 4).length
            require idx + ('cd', 4).length < mem[(64 * ('cd', 4).length) + 128]
            mem[(64 * ('cd', 4).length) + (32 * idx + ('cd', 4).length) + 160] = ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0]
            mem[(32 * idx + ('cd', 4).length) + 128] = address(ext_call.return_data[0])
            idx = idx + 1
            continue 
        idx = 0
        while idx < ('cd', 4).length:
            mem[mem[64] + 36] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64] + 68] = cd[68]
            mem[mem[64] + 100] = 1
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).searchBestRate(address arg1, address arg2, uint256 arg3, bool arg4) with:
                    gas gas_remaining wei
                   args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(cd[((32 * idx) + cd[4] + 36)]), cd[68], 1
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 10^(-ext_call.return_data[0] + 36)
            require idx < mem[96]
            mem[(32 * idx) + 128] = address(ext_call.return_data[0])
            require idx < ('cd', 36).length
            mem[mem[64] + 4] = ext_call.return_data[32] * cd[68] / 10^(-ext_call.return_data[0] + 36)
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            staticcall address(cd[((32 * idx) + cd[36] + 36)]).getTokenToEthInputPrice(uint256 arg1) with:
                    gas gas_remaining wei
                   args (ext_call.return_data[32] * cd[68] / 10^(-ext_call.return_data[0] + 36))
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(64 * ('cd', 4).length) + 128]
            mem[(64 * ('cd', 4).length) + (32 * idx) + 160] = ext_call.return_data[0]
            idx = idx + 1
            continue 
        _134 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[96]
        _136 = mem[96]
        mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 32] = (32 * mem[96]) + 96
        mem[(32 * mem[96]) + _134 + 96] = mem[(64 * ('cd', 4).length) + 128]
        _181 = mem[(64 * ('cd', 4).length) + 128]
        mem[(32 * _136) + _134 + 128 len floor32(mem[(64 * ('cd', 4).length) + 128])] = mem[(64 * ('cd', 4).length) + 160 len floor32(mem[(64 * ('cd', 4).length) + 128])]
        return memory
          from mem[64]
           len (32 * _181) + (32 * _136) + _134 + -mem[64] + 128
    mem[128 len 64 * ('cd', 4).length] = code.data[12041 len 64 * ('cd', 4).length]
    mem[(64 * ('cd', 4).length) + 128] = 2 * ('cd', 4).length
    mem[64] = (128 * ('cd', 4).length) + 160
    mem[(64 * ('cd', 4).length) + 160 len 64 * ('cd', 4).length] = code.data[12041 len 64 * ('cd', 4).length]
    mem[(128 * ('cd', 4).length) + 160] = 0x5a51eb0000000000000000000000000000000000000000000000000000000 * 3600
    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
    staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.kyberNetworkContract() with:
            gas gas_remaining wei
           args mem[(128 * ('cd', 4).length) + 164 len 255 * ('cd', 4).length]
    mem[(128 * ('cd', 4).length) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 36).length
        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
        staticcall address(cd[((32 * idx) + cd[36] + 36)]).getEthToTokenInputPrice(uint256 arg1) with:
                gas gas_remaining wei
               args cd[68]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(128 * ('cd', 4).length) + 196] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
        mem[(128 * ('cd', 4).length) + 228] = ext_call.return_data[0]
        mem[(128 * ('cd', 4).length) + 260] = 1
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).searchBestRate(address arg1, address arg2, uint256 arg3, bool arg4) with:
                gas gas_remaining wei
               args address(cd[((32 * idx) + cd[4] + 36)]), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, ext_call.return_data[0], 1
        mem[(128 * ('cd', 4).length) + 160 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x313ce567 with:
                gas gas_remaining wei
        mem[(128 * ('cd', 4).length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 10^ext_call.return_data[0]
        require idx + ('cd', 4).length < 2 * ('cd', 4).length
        require idx + ('cd', 4).length < mem[(64 * ('cd', 4).length) + 128]
        mem[(64 * ('cd', 4).length) + (32 * idx + ('cd', 4).length) + 160] = ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0]
        mem[(32 * idx + ('cd', 4).length) + 128] = address(ext_call.return_data[0])
        idx = idx + 1
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 36] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] + 68] = cd[68]
        mem[mem[64] + 100] = 1
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).searchBestRate(address arg1, address arg2, uint256 arg3, bool arg4) with:
                gas gas_remaining wei
               args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(cd[((32 * idx) + cd[4] + 36)]), cd[68], 1
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 10^(-ext_call.return_data[0] + 36)
        require idx < mem[96]
        mem[(32 * idx) + 128] = address(ext_call.return_data[0])
        require idx < ('cd', 36).length
        mem[mem[64] + 4] = ext_call.return_data[32] * cd[68] / 10^(-ext_call.return_data[0] + 36)
        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
        staticcall address(cd[((32 * idx) + cd[36] + 36)]).getTokenToEthInputPrice(uint256 arg1) with:
                gas gas_remaining wei
               args (ext_call.return_data[32] * cd[68] / 10^(-ext_call.return_data[0] + 36))
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < mem[(64 * ('cd', 4).length) + 128]
        mem[(64 * ('cd', 4).length) + (32 * idx) + 160] = ext_call.return_data[0]
        idx = idx + 1
        continue 
    _137 = mem[64]
    mem[mem[64]] = 64
    mem[mem[64] + 64] = mem[96]
    _139 = mem[96]
    mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + 32] = (32 * mem[96]) + 96
    mem[(32 * mem[96]) + _137 + 96] = mem[(64 * ('cd', 4).length) + 128]
    _184 = mem[(64 * ('cd', 4).length) + 128]
    mem[(32 * _139) + _137 + 128 len floor32(mem[(64 * ('cd', 4).length) + 128])] = mem[(64 * ('cd', 4).length) + 160 len floor32(mem[(64 * ('cd', 4).length) + 128])]
    return memory
      from mem[64]
       len (32 * _184) + (32 * _139) + _137 + -mem[64] + 128
}

function sub_1714a49c(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    mem[96] = 2 * ('cd', 4).length
    if not uint255(('cd', 4).length):
        mem[(64 * ('cd', 4).length) + 128] = 2 * ('cd', 4).length
        mem[64] = (128 * ('cd', 4).length) + 160
        mem[(128 * ('cd', 4).length) + 160] = 0x5a51eb0000000000000000000000000000000000000000000000000000000 * 3600
        require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
        staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.kyberNetworkContract() with:
                gas gas_remaining wei
               args mem[(128 * ('cd', 4).length) + 164 len 255 * ('cd', 4).length]
        mem[(128 * ('cd', 4).length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = 0
        while idx < ('cd', 4).length:
            mem[mem[64] + 100] = 1
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).searchBestRate(address arg1, address arg2, uint256 arg3, bool arg4) with:
                    gas gas_remaining wei
                   args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(cd[((32 * idx) + cd[4] + 36)]), cd[68], 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 10^(-ext_call.return_data[0] + 36)
            require idx < mem[96]
            mem[(32 * idx) + 128] = address(ext_call.return_data[0])
            require idx < ('cd', 4).length
            require idx < ('cd', 36).length
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            staticcall address(cd[((32 * idx) + cd[36] + 36)]).getReturn(address arg1, address arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[4] + 36)]), 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, ext_call.return_data[32] * cd[68] / 10^(-ext_call.return_data[0] + 36)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64] + 4] = 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c
            mem[mem[64] + 36] = 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315
            mem[mem[64] + 68] = ext_call.return_data[0]
            require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
            staticcall 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, ext_call.return_data[0]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(64 * ('cd', 4).length) + 128]
            mem[(64 * ('cd', 4).length) + (32 * idx) + 160] = ext_call.return_data[0]
            idx = idx + 1
            continue 
        idx = 0
        while idx < ('cd', 4).length:
            require idx < ('cd', 36).length
            require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
            staticcall 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, cd[68]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            staticcall address(cd[((32 * idx) + cd[36] + 36)]).getReturn(address arg1, address arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, address(cd[((32 * idx) + cd[4] + 36)]), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64] + 36] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
            mem[mem[64] + 68] = ext_call.return_data[0]
            mem[mem[64] + 100] = 1
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).searchBestRate(address arg1, address arg2, uint256 arg3, bool arg4) with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[4] + 36)]), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, ext_call.return_data[0], 1
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 10^ext_call.return_data[0]
            require idx + ('cd', 4).length < mem[96]
            require idx + ('cd', 4).length < mem[(64 * ('cd', 4).length) + 128]
            mem[(64 * ('cd', 4).length) + (32 * idx + ('cd', 4).length) + 160] = ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0]
            mem[(32 * idx + ('cd', 4).length) + 128] = address(ext_call.return_data[0])
            idx = idx + 1
            continue 
        _158 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[96]
        _160 = mem[96]
        mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 32] = (32 * mem[96]) + 96
        mem[(32 * mem[96]) + _158 + 96] = mem[(64 * ('cd', 4).length) + 128]
        _213 = mem[(64 * ('cd', 4).length) + 128]
        mem[(32 * _160) + _158 + 128 len floor32(mem[(64 * ('cd', 4).length) + 128])] = mem[(64 * ('cd', 4).length) + 160 len floor32(mem[(64 * ('cd', 4).length) + 128])]
        return memory
          from mem[64]
           len (32 * _213) + (32 * _160) + _158 + -mem[64] + 128
    mem[128 len 64 * ('cd', 4).length] = code.data[12041 len 64 * ('cd', 4).length]
    mem[(64 * ('cd', 4).length) + 128] = 2 * ('cd', 4).length
    mem[64] = (128 * ('cd', 4).length) + 160
    mem[(64 * ('cd', 4).length) + 160 len 64 * ('cd', 4).length] = code.data[12041 len 64 * ('cd', 4).length]
    mem[(128 * ('cd', 4).length) + 160] = 0x5a51eb0000000000000000000000000000000000000000000000000000000 * 3600
    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
    staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.kyberNetworkContract() with:
            gas gas_remaining wei
           args mem[(128 * ('cd', 4).length) + 164 len 255 * ('cd', 4).length]
    mem[(128 * ('cd', 4).length) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 100] = 1
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).searchBestRate(address arg1, address arg2, uint256 arg3, bool arg4) with:
                gas gas_remaining wei
               args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(cd[((32 * idx) + cd[4] + 36)]), cd[68], 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 10^(-ext_call.return_data[0] + 36)
        require idx < mem[96]
        mem[(32 * idx) + 128] = address(ext_call.return_data[0])
        require idx < ('cd', 4).length
        require idx < ('cd', 36).length
        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
        staticcall address(cd[((32 * idx) + cd[36] + 36)]).getReturn(address arg1, address arg2, uint256 arg3) with:
                gas gas_remaining wei
               args address(cd[((32 * idx) + cd[4] + 36)]), 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, ext_call.return_data[32] * cd[68] / 10^(-ext_call.return_data[0] + 36)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[mem[64] + 4] = 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c
        mem[mem[64] + 36] = 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315
        mem[mem[64] + 68] = ext_call.return_data[0]
        require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
        staticcall 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                gas gas_remaining wei
               args 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, ext_call.return_data[0]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < mem[(64 * ('cd', 4).length) + 128]
        mem[(64 * ('cd', 4).length) + (32 * idx) + 160] = ext_call.return_data[0]
        idx = idx + 1
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 36).length
        require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
        staticcall 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address arg1, address arg2, uint256 arg3) with:
                gas gas_remaining wei
               args 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, cd[68]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
        staticcall address(cd[((32 * idx) + cd[36] + 36)]).getReturn(address arg1, address arg2, uint256 arg3) with:
                gas gas_remaining wei
               args 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, address(cd[((32 * idx) + cd[4] + 36)]), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[mem[64] + 36] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
        mem[mem[64] + 68] = ext_call.return_data[0]
        mem[mem[64] + 100] = 1
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).searchBestRate(address arg1, address arg2, uint256 arg3, bool arg4) with:
                gas gas_remaining wei
               args address(cd[((32 * idx) + cd[4] + 36)]), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, ext_call.return_data[0], 1
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 10^ext_call.return_data[0]
        require idx + ('cd', 4).length < mem[96]
        require idx + ('cd', 4).length < mem[(64 * ('cd', 4).length) + 128]
        mem[(64 * ('cd', 4).length) + (32 * idx + ('cd', 4).length) + 160] = ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[0]
        mem[(32 * idx + ('cd', 4).length) + 128] = address(ext_call.return_data[0])
        idx = idx + 1
        continue 
    _161 = mem[64]
    mem[mem[64]] = 64
    mem[mem[64] + 64] = mem[96]
    _163 = mem[96]
    mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + 32] = (32 * mem[96]) + 96
    mem[(32 * mem[96]) + _161 + 96] = mem[(64 * ('cd', 4).length) + 128]
    _216 = mem[(64 * ('cd', 4).length) + 128]
    mem[(32 * _163) + _161 + 128 len floor32(mem[(64 * ('cd', 4).length) + 128])] = mem[(64 * ('cd', 4).length) + 160 len floor32(mem[(64 * ('cd', 4).length) + 128])]
    return memory
      from mem[64]
       len (32 * _216) + (32 * _163) + _161 + -mem[64] + 128
}



}
