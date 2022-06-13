contract main {




// =====================  Runtime code  =====================


mapping of uint256 tokens;
address stor2;
address stor3;

function tokens(address arg1, address arg2) {
    return tokens[arg1][arg2]
}

function _fallback() payable {
    require tx.origin == 0x54c676cddc496ecbd20511a5c143cac2cbca6b3f
}

function withdraw(uint256 arg1) {
    require msg.sender == 0x54c676cddc496ecbd20511a5c143cac2cbca6b3f
    call 0x54c676cddc496ecbd20511a5c143cac2cbca6b3f with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_4145bfe4(?) {
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require msg.sender == 0x54c676cddc496ecbd20511a5c143cac2cbca6b3f
    require 0 < arg3.length
    require 0 < arg2.length
    require 1 < arg3.length
    require 1 < arg2.length
    require 2 < arg2.length
    require 3 < arg2.length
    require 4 < arg2.length
    require ext_code.size(stor3)
    call stor3.testTrade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11, address arg12) with:
         gas gas_remaining wei
        args address(mem[(32 * arg1.length) + (32 * arg2.length) + 192]), mem[(32 * arg1.length) + 160], address(mem[(32 * arg1.length) + (32 * arg2.length) + 224]), mem[(32 * arg1.length) + 192], mem[(32 * arg1.length) + 224], mem[(32 * arg1.length) + 256], address(this.address), 0, 0, 0, mem[(32 * arg1.length) + 288], this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}

function sub_8ebfd29f(?) {
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require msg.sender == 0x54c676cddc496ecbd20511a5c143cac2cbca6b3f
    require 5 < arg2.length
    _5 = mem[(32 * arg1.length) + 320]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor3)
    call stor3.deposit() with:
       value _5 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require 0 < arg3.length
    _9 = mem[(32 * arg1.length) + (32 * arg2.length) + 192]
    require 0 < arg2.length
    require 1 < arg3.length
    _13 = mem[(32 * arg1.length) + (32 * arg2.length) + 224]
    require 1 < arg2.length
    _15 = mem[(32 * arg1.length) + 192]
    require 2 < arg2.length
    _17 = mem[(32 * arg1.length) + 224]
    require 3 < arg2.length
    _19 = mem[(32 * arg1.length) + 256]
    require 4 < arg2.length
    _21 = mem[(32 * arg1.length) + 288]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = 0xa19b14a00000000000000000000000000000000000000000000000000000000
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 196] = address(_9)
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 228] = mem[(32 * arg1.length) + 160]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 324] = _17
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 356] = _19
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 388] = this.address
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 420] = 0
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 452] = 0
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 484] = 0
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 516] = _21
    require ext_code.size(stor3)
    call stor3.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
         gas gas_remaining wei
        args address(_9), mem[(32 * arg1.length) + 160], address(_13), _15, _17, _19, address(this.address), 0, 0, 0, _21
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require 1 < arg3.length
    require ext_code.size(stor3)
    call stor3.balanceOf(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(mem[(32 * arg1.length) + (32 * arg2.length) + 224]), this.address
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0 < arg3.length
    _31 = mem[(32 * arg1.length) + (32 * arg2.length) + 192]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = 0x9e281a9800000000000000000000000000000000000000000000000000000000
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 196] = address(_31)
    require ext_code.size(stor3)
    call stor3.0x9e281a98 with:
         gas gas_remaining wei
        args address(_31), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require 0 < arg3.length
    require ext_code.size(mem[(32 * arg1.length) + (32 * arg2.length) + 204 len 20])
    call mem[(32 * arg1.length) + (32 * arg2.length) + 204 len 20].approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xb89570f6ad742cb1fd440a930d6c2a2ea29c51ee, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 324 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(stor2)
    call stor2.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + floor32(arg1.length) + 324 len (32 * arg1.length) - floor32(arg1.length)]), ext_call.return_data[0], 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 0
}



}
