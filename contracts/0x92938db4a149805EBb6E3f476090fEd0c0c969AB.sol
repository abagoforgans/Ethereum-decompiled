contract main {




// =====================  Runtime code  =====================


mapping of uint256 cachedPrices;

function cachedPrices(address arg1) {
    return cachedPrices[arg1]
}

function _fallback() payable {
    revert
}

function syncPrice(address arg1) {
    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
    call 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg1), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, 10000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    cachedPrices[address(arg1)] = ext_call.return_data[0]
}

function getEtherValue(uint256 arg1, address arg2) {
    require ext_code.size(arg2)
    call arg2.0x313ce567 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not cachedPrices[address(arg2)]:
        require 10^ext_call.return_data[0] > 0
        if 10^ext_call.return_data[0]:
            return (0 / 10^ext_call.return_data[0])
    else:
        require arg1 * cachedPrices[address(arg2)] / cachedPrices[address(arg2)] == arg1
        require 10^ext_call.return_data[0] > 0
        if 10^ext_call.return_data[0]:
            return (arg1 * cachedPrices[address(arg2)] / 10^ext_call.return_data[0])
    ('iszero', ('exp', 10, ('ext_call.return_data', 0, 32)))
    revert
}

function syncPriceForTokenList(address[] arg1) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    idx = 0
    while uint16(idx) < arg1.length:
        require uint16(idx) < arg1.length
        _12 = mem[(32 * uint16(idx)) + 128]
        mem[(32 * arg1.length) + 132] = mem[(32 * uint16(idx)) + 140 len 20]
        mem[(32 * arg1.length) + 164] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
        mem[(32 * arg1.length) + 196] = 10000
        require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
        call 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args mem[(32 * arg1.length) + 132], 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, 10000
        mem[(32 * arg1.length) + 128 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        mem[0] = address(_12)
        mem[32] = 0
        cachedPrices[address(_12)] = ext_call.return_data[0]
        idx = idx + 1
        continue 
}



}
