contract main {




// =====================  Runtime code  =====================


mapping of uint256 tokens;

function tokens(address arg1, address arg2) {
    return tokens[arg1][arg2]
}

function _fallback() payable {
    require 0x54c676cddc496ecbd20511a5c143cac2cbca6b3f == msg.sender
}

function withdraw(uint256 arg1) {
    call 0x54c676cddc496ecbd20511a5c143cac2cbca6b3f with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_5f59a056(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require 0x54c676cddc496ecbd20511a5c143cac2cbca6b3f == msg.sender
    require 0 < arg1.length
    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
    call 0x818e6fecd516ecc3849daf6845e3ec868087b755.0x809a9e55 with:
         gas gas_remaining wei
        args address(mem[128]), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, arg2
    mem[(32 * arg1.length) + 128 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require 0 < arg1.length
    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
    call 0x818e6fecd516ecc3849daf6845e3ec868087b755.swapEtherToToken(address arg1, uint256 arg2) with:
       value arg2 wei
         gas gas_remaining wei
        args address(mem[128]), ext_call.return_data[32]
    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0 < arg1.length
    require ext_code.size(mem[140 len 20])
    call mem[140 len 20].approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg1.length) + 260 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee)
    call 0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 260 len (32 * arg1.length) - floor32(arg1.length)]), ext_call.return_data[0], arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg2 <= ext_call.return_data[0] - arg4
    return ext_call.return_data[0]
}

function sub_5f23514e(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require 0x54c676cddc496ecbd20511a5c143cac2cbca6b3f == msg.sender
    mem[(32 * arg1.length) + 164] = arg2
    mem[(32 * arg1.length) + 196] = arg3
    mem[(32 * arg1.length) + 132] = 96
    mem[(32 * arg1.length) + 228] = arg1.length
    mem[(32 * arg1.length) + 260 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee)
    call 0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
       value arg2 wei
         gas gas_remaining wei
        args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 260 len (32 * arg1.length) - floor32(arg1.length)]), arg2, arg3
    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 4 < arg1.length
    _33 = mem[256]
    mem[(32 * arg1.length) + 164] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
    mem[(32 * arg1.length) + 196] = ext_call.return_data[0]
    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
    call 0x818e6fecd516ecc3849daf6845e3ec868087b755.0x809a9e55 with:
         gas gas_remaining wei
        args address(_33), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, ext_call.return_data[0]
    mem[(32 * arg1.length) + 128 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require 4 < arg1.length
    _39 = mem[256]
    mem[(32 * arg1.length) + 132] = 0x818e6fecd516ecc3849daf6845e3ec868087b755
    mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
    require ext_code.size(address(_39))
    call address(_39).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x818e6fecd516ecc3849daf6845e3ec868087b755, ext_call.return_data[0]
    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 4 < arg1.length
    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
    call 0x818e6fecd516ecc3849daf6845e3ec868087b755.swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(mem[256]), ext_call.return_data[0], ext_call.return_data[32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg2 <= ext_call.return_data[0] - arg4
    return ext_call.return_data[0]
}



}
