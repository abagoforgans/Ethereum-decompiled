contract main {




// =====================  Runtime code  =====================


mapping of uint256 tokens;
address stor6;
address stor7;

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

function sub_84d43a47(?) {
    require msg.sender == 0x54c676cddc496ecbd20511a5c143cac2cbca6b3f
    require ext_code.size(stor7)
    call stor7.deposit() with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        return 0
}

function withdrawDelta(uint256 arg1) {
    require msg.sender == 0x54c676cddc496ecbd20511a5c143cac2cbca6b3f
    require ext_code.size(stor7)
    call stor7.0x2e1a7d4d with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        return 0
}

function withdrawToken(address arg1, uint256 arg2) {
    require msg.sender == 0x54c676cddc496ecbd20511a5c143cac2cbca6b3f
    require ext_code.size(stor7)
    call stor7.0x9e281a98 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        return 0
}

function sub_01a34023(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg4.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require msg.sender == 0x54c676cddc496ecbd20511a5c143cac2cbca6b3f
    require 0 < arg2.length
    require 0 < arg1.length
    require 1 < arg2.length
    require 1 < arg1.length
    require 2 < arg1.length
    require 3 < arg1.length
    require 2 < arg2.length
    require 0 < arg4.length
    require 1 < arg4.length
    require 4 < arg1.length
    require ext_code.size(stor7)
    call stor7.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
         gas gas_remaining wei
        args mem[(32 * arg1.length) + 172 len 20], mem[128], address(mem[(32 * arg1.length) + 192]), mem[160], mem[192], mem[224], address(mem[(32 * arg1.length) + 224]), arg3 << 248, mem[(32 * arg1.length) + (32 * arg2.length) + 192], mem[(32 * arg1.length) + (32 * arg2.length) + 224], mem[256]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_f33b2090(?) {
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = arg5.length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    require msg.sender == 0x54c676cddc496ecbd20511a5c143cac2cbca6b3f
    require 4 < arg2.length
    _6 = mem[(32 * arg1.length) + 288]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor7)
    call stor7.deposit() with:
       value 1003 * _6 / 1000 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require msg.sender == 0x54c676cddc496ecbd20511a5c143cac2cbca6b3f
    require 0 < arg3.length
    require 0 < arg2.length
    require 1 < arg3.length
    require 1 < arg2.length
    require 2 < arg2.length
    require 3 < arg2.length
    require 2 < arg3.length
    require 0 < arg5.length
    require 1 < arg5.length
    require 4 < arg2.length
    require ext_code.size(stor7)
    call stor7.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
         gas gas_remaining wei
        args mem[(32 * arg1.length) + (32 * arg2.length) + 204 len 20], mem[(32 * arg1.length) + 160], address(mem[(32 * arg1.length) + (32 * arg2.length) + 224]), mem[(32 * arg1.length) + 192], mem[(32 * arg1.length) + 224], mem[(32 * arg1.length) + 256], address(mem[(32 * arg1.length) + (32 * arg2.length) + 256]), arg4 << 248, mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224], mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 256], mem[(32 * arg1.length) + 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        return 0
}

function sub_6647f343(?) {
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = arg5.length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    require msg.sender == 0x54c676cddc496ecbd20511a5c143cac2cbca6b3f
    require 4 < arg2.length
    _6 = mem[(32 * arg1.length) + 288]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor7)
    call stor7.deposit() with:
       value 1003 * _6 / 1000 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require msg.sender == 0x54c676cddc496ecbd20511a5c143cac2cbca6b3f
    require 0 < arg3.length
    require 0 < arg2.length
    require 1 < arg3.length
    _14 = mem[(32 * arg1.length) + (32 * arg2.length) + 224]
    require 1 < arg2.length
    require 2 < arg2.length
    _18 = mem[(32 * arg1.length) + 224]
    require 3 < arg2.length
    _20 = mem[(32 * arg1.length) + 256]
    require 2 < arg3.length
    _22 = mem[(32 * arg1.length) + (32 * arg2.length) + 256]
    require 0 < arg5.length
    _24 = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
    require 1 < arg5.length
    _26 = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 256]
    require 4 < arg2.length
    _28 = mem[(32 * arg1.length) + 288]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = 0xa19b14a00000000000000000000000000000000000000000000000000000000
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 228] = mem[(32 * arg1.length) + (32 * arg2.length) + 204 len 20]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 260] = mem[(32 * arg1.length) + 160]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 292] = address(_14)
    require ext_code.size(stor7)
    call stor7.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
         gas gas_remaining wei
        args mem[(32 * arg1.length) + (32 * arg2.length) + 204 len 20], mem[(32 * arg1.length) + 160], address(_14), mem[(32 * arg1.length) + 192], _18, _20, address(_22), arg4 << 248, _24, _26, _28
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require 1 < arg3.length
    require 0 < arg2.length
    require 4 < arg2.length
    require 1 < arg2.length
    require mem[(32 * arg1.length) + 160]
    require ext_code.size(stor7)
    call stor7.0x9e281a98 with:
         gas gas_remaining wei
        args address(mem[(32 * arg1.length) + (32 * arg2.length) + 224]), mem[(32 * arg1.length) + 192] * mem[(32 * arg1.length) + 288] / mem[(32 * arg1.length) + 160]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        return 0
}

function sub_a75f8dc1(?) {
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = arg5.length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    require msg.sender == 0x54c676cddc496ecbd20511a5c143cac2cbca6b3f
    require 4 < arg2.length
    _6 = mem[(32 * arg1.length) + 288]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor7)
    call stor7.deposit() with:
       value 1003 * _6 / 1000 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require msg.sender == 0x54c676cddc496ecbd20511a5c143cac2cbca6b3f
    require 0 < arg3.length
    require 0 < arg2.length
    require 1 < arg3.length
    _14 = mem[(32 * arg1.length) + (32 * arg2.length) + 224]
    require 1 < arg2.length
    require 2 < arg2.length
    _18 = mem[(32 * arg1.length) + 224]
    require 3 < arg2.length
    _20 = mem[(32 * arg1.length) + 256]
    require 2 < arg3.length
    _22 = mem[(32 * arg1.length) + (32 * arg2.length) + 256]
    require 0 < arg5.length
    _24 = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
    require 1 < arg5.length
    _26 = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 256]
    require 4 < arg2.length
    _28 = mem[(32 * arg1.length) + 288]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 224] = 0xa19b14a00000000000000000000000000000000000000000000000000000000
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 228] = mem[(32 * arg1.length) + (32 * arg2.length) + 204 len 20]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 260] = mem[(32 * arg1.length) + 160]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 292] = address(_14)
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 356] = _18
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 388] = _20
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 420] = address(_22)
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 452] = arg4
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 484] = _24
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 516] = _26
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 548] = _28
    require ext_code.size(stor7)
    call stor7.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
         gas gas_remaining wei
        args mem[(32 * arg1.length) + (32 * arg2.length) + 204 len 20], mem[(32 * arg1.length) + 160], address(_14), mem[(32 * arg1.length) + 192], _18, _20, address(_22), arg4 << 248, _24, _26, _28
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require 0 < arg2.length
    require 4 < arg2.length
    require 1 < arg2.length
    require mem[(32 * arg1.length) + 160]
    require 1 < arg3.length
    require ext_code.size(stor7)
    call stor7.0x9e281a98 with:
         gas gas_remaining wei
        args address(mem[(32 * arg1.length) + (32 * arg2.length) + 224]), mem[(32 * arg1.length) + 192] * mem[(32 * arg1.length) + 288] / mem[(32 * arg1.length) + 160]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require 0 < arg3.length
    require ext_code.size(mem[(32 * arg1.length) + (32 * arg2.length) + 204 len 20])
    call mem[(32 * arg1.length) + (32 * arg2.length) + 204 len 20].approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor6, mem[(32 * arg1.length) + 192] * mem[(32 * arg1.length) + 288] / mem[(32 * arg1.length) + 160]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + 356 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(stor6)
    call stor6.quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg5.length) + floor32(arg1.length) + 356 len (32 * arg1.length) - floor32(arg1.length)]), mem[(32 * arg1.length) + 192] * mem[(32 * arg1.length) + 288] / mem[(32 * arg1.length) + 160], 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 0
}



}
