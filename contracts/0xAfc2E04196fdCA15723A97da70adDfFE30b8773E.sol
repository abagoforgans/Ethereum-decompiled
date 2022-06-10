contract main {




// =====================  Runtime code  =====================


mapping of uint256 tokens;

function tokens(address arg1, address arg2) {
    return tokens[arg1][arg2]
}

function _fallback() payable {
  stop
}

function withdraw(uint256 arg1) {
    call 0x54c676cddc496ecbd20511a5c143cac2cbca6b3f with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_bc80dd82(?) payable {
    require msg.value + tokens[0][msg.sender] >= tokens[0][msg.sender]
    require msg.value + tokens[0][msg.sender] >= msg.value
    tokens[0][msg.sender] += msg.value
    emit Deposit(0, msg.sender, msg.value, msg.value + tokens[0][msg.sender]);
    require ext_code.size(arg1)
    call arg1.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(arg2), msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(arg1)
    call arg1.swapEtherToToken(address arg1, uint256 arg2) with:
       value msg.value wei
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    call arg2.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg3), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function sub_00bad67d(?) {
    require ext_code.size(arg1)
    call arg1.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg2), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(arg2)
    call arg2.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(arg2)
    call arg2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg2), arg3, ext_call.return_data[32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_5f59a056(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require 0 < arg1.length
    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
    call 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
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

function sub_9b54deca(?) {
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require 3 < arg2.length
    _4 = mem[(32 * arg1.length) + 256]
    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
    require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
    call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.0xd0e30db0 with:
       value address(_4) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require 0 < arg2.length
    _8 = mem[(32 * arg1.length) + 160]
    require 1 < arg2.length
    _10 = mem[(32 * arg1.length) + 192]
    require 2 < arg2.length
    _12 = mem[(32 * arg1.length) + 224]
    require 3 < arg2.length
    _14 = mem[(32 * arg1.length) + 256]
    require 4 < arg2.length
    _16 = mem[(32 * arg1.length) + 288]
    require 5 < arg2.length
    _18 = mem[(32 * arg1.length) + 320]
    require 1 < arg2.length
    _20 = mem[(32 * arg1.length) + 192]
    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = 0xa19b14a00000000000000000000000000000000000000000000000000000000
    mem[(32 * arg2.length) + (32 * arg1.length) + 164] = address(_8)
    mem[(32 * arg2.length) + (32 * arg1.length) + 196] = address(_10)
    require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
    call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
         gas gas_remaining wei
        args address(_8), address(_10), address(_12), address(_14), address(_16), address(_18), address(this.address), 0, 0, 0, address(_20)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require 0 < arg2.length
    require 1 < arg2.length
    require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
    call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.withdrawToken(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(mem[(32 * arg1.length) + 160]), mem[(32 * arg1.length) + 204 len 20]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_5f23514e(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
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
    call 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
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

function sub_d55bb45d(?) {
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require 3 < arg2.length
    _4 = mem[(32 * arg1.length) + 256]
    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
    require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
    call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.0xd0e30db0 with:
       value address(_4) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require 0 < arg2.length
    _8 = mem[(32 * arg1.length) + 160]
    require 1 < arg2.length
    _10 = mem[(32 * arg1.length) + 192]
    require 2 < arg2.length
    _12 = mem[(32 * arg1.length) + 224]
    require 3 < arg2.length
    _14 = mem[(32 * arg1.length) + 256]
    require 4 < arg2.length
    _16 = mem[(32 * arg1.length) + 288]
    require 5 < arg2.length
    _18 = mem[(32 * arg1.length) + 320]
    require 1 < arg2.length
    _20 = mem[(32 * arg1.length) + 192]
    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = 0xa19b14a00000000000000000000000000000000000000000000000000000000
    mem[(32 * arg2.length) + (32 * arg1.length) + 164] = address(_8)
    mem[(32 * arg2.length) + (32 * arg1.length) + 196] = address(_10)
    mem[(32 * arg2.length) + (32 * arg1.length) + 292] = address(_16)
    mem[(32 * arg2.length) + (32 * arg1.length) + 324] = address(_18)
    mem[(32 * arg2.length) + (32 * arg1.length) + 356] = this.address
    mem[(32 * arg2.length) + (32 * arg1.length) + 388] = 0
    mem[(32 * arg2.length) + (32 * arg1.length) + 420] = 0
    mem[(32 * arg2.length) + (32 * arg1.length) + 452] = 0
    mem[(32 * arg2.length) + (32 * arg1.length) + 484] = address(_20)
    require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
    call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
         gas gas_remaining wei
        args address(_8), address(_10), address(_12), address(_14), address(_16), address(_18), address(this.address), 0, 0, 0, address(_20)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require 0 < arg2.length
    _24 = mem[(32 * arg1.length) + 160]
    require 1 < arg2.length
    _26 = mem[(32 * arg1.length) + 192]
    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = 0x9e281a9800000000000000000000000000000000000000000000000000000000
    mem[(32 * arg2.length) + (32 * arg1.length) + 164] = address(_24)
    mem[(32 * arg2.length) + (32 * arg1.length) + 196] = address(_26)
    require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
    call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.withdrawToken(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(_24), address(_26)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require 0 < arg2.length
    _30 = mem[(32 * arg1.length) + 160]
    require 1 < arg2.length
    _32 = mem[(32 * arg1.length) + 192]
    mem[(32 * arg2.length) + (32 * arg1.length) + 164] = 0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee
    mem[(32 * arg2.length) + (32 * arg1.length) + 196] = address(_32)
    require ext_code.size(address(_30))
    call address(_30).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee, address(_32)
    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 1 < arg2.length
    mem[(32 * arg2.length) + (32 * arg1.length) + 292 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee)
    call 0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg2.length) + (32 * arg1.length) + floor32(arg1.length) + 292 len (32 * arg1.length) - floor32(arg1.length)]), address(mem[(32 * arg1.length) + 192]), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
