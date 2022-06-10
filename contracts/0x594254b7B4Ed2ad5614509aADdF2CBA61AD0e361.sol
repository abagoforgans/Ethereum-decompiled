contract main {




// =====================  Runtime code  =====================


mapping of uint256 tokens;

function tokens(address arg1, address arg2) {
    return tokens[arg1][arg2]
}

function _fallback() payable {
  stop
}

function sub_2a1fa30d(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require 0 < arg1.length
    require 1 < arg1.length
    require ext_code.size(0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee)
    call 0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee.getReturn(address arg1, address arg2, uint256 arg3) with:
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
    return ext_call.return_data[0]
}

function sub_ef50f76a(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require 0 < arg1.length
    require 1 < arg1.length
    require ext_code.size(0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee)
    call 0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee.getReturn(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(mem[128]), address(mem[160]), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    mem[(32 * arg1.length) + 164] = arg2
    mem[(32 * arg1.length) + 196] = ext_call.return_data[0]
    mem[(32 * arg1.length) + 132] = 96
    mem[(32 * arg1.length) + 228] = arg1.length
    mem[(32 * arg1.length) + 260 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
    call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0xcf93ebe3 with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 260 len (32 * arg1.length) - floor32(arg1.length)]), address(arg2), ext_call.return_data[0]
    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 4 < arg1.length
    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
    call 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(mem[256]), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0], ext_call.return_data[32], arg3
}

function sub_7f520499(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require 0 < arg1.length
    require 1 < arg1.length
    require ext_code.size(0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee)
    call 0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee.getReturn(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(mem[128]), address(mem[160]), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    mem[(32 * arg1.length) + 164] = arg2
    mem[(32 * arg1.length) + 196] = ext_call.return_data[0]
    mem[(32 * arg1.length) + 132] = 96
    mem[(32 * arg1.length) + 228] = arg1.length
    mem[(32 * arg1.length) + 260 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
    call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0xcf93ebe3 with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 260 len (32 * arg1.length) - floor32(arg1.length)]), address(arg2), ext_call.return_data[0]
    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 4 < arg1.length
    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
    call 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(mem[256]), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[32]
    return ext_call.return_data[0], arg3 / ext_call.return_data[32]
}

function sub_7f899d0b(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require 0 < arg1.length
    require 1 < arg1.length
    require ext_code.size(0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee)
    call 0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee.getReturn(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(mem[128]), address(mem[160]), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    mem[(32 * arg1.length) + 164] = arg2
    mem[(32 * arg1.length) + 196] = ext_call.return_data[0]
    mem[(32 * arg1.length) + 132] = 96
    mem[(32 * arg1.length) + 228] = arg1.length
    mem[(32 * arg1.length) + 260 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
    call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0xcf93ebe3 with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 260 len (32 * arg1.length) - floor32(arg1.length)]), address(arg2), ext_call.return_data[0]
    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 4 < arg1.length
    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
    call 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(mem[256]), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, ext_call.return_data[0]
    mem[(32 * arg1.length) + 128 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[32]
    require 0 < arg1.length
    require 1 < arg1.length
    require ext_code.size(0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee)
    call 0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee.getReturn(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(mem[128]), address(mem[160]), 2 * arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    mem[(32 * arg1.length) + 164] = arg2
    mem[(32 * arg1.length) + 196] = ext_call.return_data[0]
    mem[(32 * arg1.length) + 132] = 96
    mem[(32 * arg1.length) + 228] = arg1.length
    mem[(32 * arg1.length) + 260 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
    call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0xcf93ebe3 with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 260 len (32 * arg1.length) - floor32(arg1.length)]), address(arg2), ext_call.return_data[0]
    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 4 < arg1.length
    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
    call 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(mem[256]), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[32]
    require (4 * ext_call.return_data[0] * arg3 / ext_call.return_data[32]) - (2 * ext_call.return_data[0] * arg3 / ext_call.return_data[32])
    return arg3 / ext_call.return_data[32], 
           ext_call.return_data[0],
           (ext_call.return_data[0] * ext_call.return_data[0]) - (arg3 / ext_call.return_data[32] * ext_call.return_data[0]) / (4 * ext_call.return_data[0] * arg3 / ext_call.return_data[32]) - (2 * ext_call.return_data[0] * arg3 / ext_call.return_data[32]),
           '3 step'
}

function sub_7bab93b7(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require 0 < arg1.length
    require 1 < arg1.length
    require ext_code.size(0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee)
    call 0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee.getReturn(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(mem[128]), address(mem[160]), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    mem[(32 * arg1.length) + 164] = arg2
    mem[(32 * arg1.length) + 196] = ext_call.return_data[0]
    mem[(32 * arg1.length) + 132] = 96
    mem[(32 * arg1.length) + 228] = arg1.length
    mem[(32 * arg1.length) + 260 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
    call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0xcf93ebe3 with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 260 len (32 * arg1.length) - floor32(arg1.length)]), address(arg2), ext_call.return_data[0]
    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 4 < arg1.length
    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
    call 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(mem[256]), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, ext_call.return_data[0]
    mem[(32 * arg1.length) + 128 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[32]
    if (arg3 / ext_call.return_data[32]) - ext_call.return_data[0] <= 0:
        return arg3 / ext_call.return_data[32], ext_call.return_data[0], 0, 128, 6, '1 step' % 281474976710656
    require 0 < arg1.length
    require 1 < arg1.length
    require ext_code.size(0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee)
    call 0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee.getReturn(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(mem[128]), address(mem[160]), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    mem[(32 * arg1.length) + 164] = arg2
    mem[(32 * arg1.length) + 196] = ext_call.return_data[0]
    mem[(32 * arg1.length) + 132] = 96
    mem[(32 * arg1.length) + 228] = arg1.length
    mem[(32 * arg1.length) + 260 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
    call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0xcf93ebe3 with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 260 len (32 * arg1.length) - floor32(arg1.length)]), address(arg2), ext_call.return_data[0]
    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 4 < arg1.length
    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
    call 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(mem[256]), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, ext_call.return_data[0]
    mem[(32 * arg1.length) + 128 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[32]
    require 0 < arg1.length
    require 1 < arg1.length
    require ext_code.size(0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee)
    call 0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee.getReturn(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(mem[128]), address(mem[160]), 2 * arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    mem[(32 * arg1.length) + 164] = arg2
    mem[(32 * arg1.length) + 196] = ext_call.return_data[0]
    mem[(32 * arg1.length) + 132] = 96
    mem[(32 * arg1.length) + 228] = arg1.length
    mem[(32 * arg1.length) + 260 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(0x24fd088e2f6d6b421f8ab213922e517c66d326)
    call 0x0024fd088e2f6d6b421f8ab213922e517c66d326.0xcf93ebe3 with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 260 len (32 * arg1.length) - floor32(arg1.length)]), address(arg2), ext_call.return_data[0]
    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 4 < arg1.length
    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
    call 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(mem[256]), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[32]
    require (4 * ext_call.return_data[0] * arg3 / ext_call.return_data[32]) - (2 * ext_call.return_data[0] * arg3 / ext_call.return_data[32])
    return arg3 / ext_call.return_data[32], 
           ext_call.return_data[0],
           (ext_call.return_data[0] * ext_call.return_data[0]) - (arg3 / ext_call.return_data[32] * ext_call.return_data[0]) / (4 * ext_call.return_data[0] * arg3 / ext_call.return_data[32]) - (2 * ext_call.return_data[0] * arg3 / ext_call.return_data[32]),
           '3 step'
}



}
