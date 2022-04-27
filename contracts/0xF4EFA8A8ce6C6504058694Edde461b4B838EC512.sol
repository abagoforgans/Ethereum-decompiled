contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819
    return code.data[179 len 4618]
}



// =====================  Runtime code  =====================


const test = 'missle'


address stor0;
address stor1;

function kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}

function sub_1f5ffecc(?) {
    require ext_code.size(stor1)
    call stor1.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
         gas gas_remaining - 710 wei
        args 0, 0, arg1, address(arg2), arg3, arg4, arg5, address(arg6), arg7 << 248, arg8, arg9, arg10
    require ext_call.success
}

function sub_1040b5bd(?) {
    require ext_code.size(stor1)
    call stor1.testTrade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11, address rg12) with:
         gas gas_remaining - 710 wei
        args 0, 0, arg1, address(arg2), arg3, arg4, arg5, address(arg6), arg7 << 248, arg8, arg9, arg10, arg11
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function sub_1a5df8f9(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require 0 < arg1.length
    require 0 < arg2.length
    require 1 < arg1.length
    require 1 < arg2.length
    require 2 < arg2.length
    require 3 < arg2.length
    require 2 < arg1.length
    require 4 < arg2.length
    require 0 < arg3.length
    require 1 < arg3.length
    require 5 < arg2.length
    require ext_code.size(stor1)
    call stor1.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
         gas gas_remaining - 710 wei
        args mem[140 len 20], mem[(32 * arg1.length) + 160], mem[172 len 20], mem[(32 * arg1.length) + 192], mem[(32 * arg1.length) + 224], mem[(32 * arg1.length) + 256], address(mem[192]), mem[(32 * arg1.length) + 288] << 248, mem[(32 * arg1.length) + (32 * arg2.length) + 192], mem[(32 * arg1.length) + (32 * arg2.length) + 224], mem[(32 * arg1.length) + 320]
    require ext_call.success
}

function sub_5c942470(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require 0 < arg1.length
    require 0 < arg2.length
    require 1 < arg1.length
    require 1 < arg2.length
    require 2 < arg2.length
    require 3 < arg2.length
    require 2 < arg1.length
    require 4 < arg2.length
    require 0 < arg3.length
    require 1 < arg3.length
    require 5 < arg2.length
    require 3 < arg1.length
    require ext_code.size(stor1)
    call stor1.testTrade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11, address rg12) with:
         gas gas_remaining - 710 wei
        args mem[140 len 20], mem[(32 * arg1.length) + 160], mem[172 len 20], mem[(32 * arg1.length) + 192], mem[(32 * arg1.length) + 224], mem[(32 * arg1.length) + 256], address(mem[192]), mem[(32 * arg1.length) + 288] << 248, mem[(32 * arg1.length) + (32 * arg2.length) + 192], mem[(32 * arg1.length) + (32 * arg2.length) + 224], mem[(32 * arg1.length) + 320], mem[236 len 20]
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function sub_b1291b1f(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require 0 < arg1.length
    require 0 < arg2.length
    require 1 < arg1.length
    require 1 < arg2.length
    _11 = mem[(32 * arg1.length) + 192]
    require 2 < arg2.length
    _13 = mem[(32 * arg1.length) + 224]
    require 3 < arg2.length
    _15 = mem[(32 * arg1.length) + 256]
    require 2 < arg1.length
    _17 = mem[192]
    require 4 < arg2.length
    _19 = mem[(32 * arg1.length) + 288]
    require 0 < arg3.length
    _21 = mem[(32 * arg1.length) + (32 * arg2.length) + 192]
    require 1 < arg3.length
    _23 = mem[(32 * arg1.length) + (32 * arg2.length) + 224]
    require 5 < arg2.length
    _25 = mem[(32 * arg1.length) + 320]
    require 3 < arg1.length
    _27 = mem[224]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 196] = mem[140 len 20]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 228] = mem[(32 * arg1.length) + 160]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 260] = mem[172 len 20]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 292] = _11
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 324] = _13
    require ext_code.size(stor1)
    call stor1.testTrade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11, address rg12) with:
         gas gas_remaining - 710 wei
        args mem[140 len 20], mem[(32 * arg1.length) + 160], mem[172 len 20], _11, _13, _15, address(_17), _19 << 248, _21, _23, _25, address(_27)
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = ext_call.return_data[0]
    require ext_call.success
    if ext_call.return_data[0]:
        require 0 < arg1.length
        require 0 < arg2.length
        require 1 < arg1.length
        require 1 < arg2.length
        require 2 < arg2.length
        require 3 < arg2.length
        require 2 < arg1.length
        require 4 < arg2.length
        require 0 < arg3.length
        require 1 < arg3.length
        require 5 < arg2.length
        require ext_code.size(stor1)
        call stor1.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
             gas gas_remaining - 710 wei
            args mem[140 len 20], mem[(32 * arg1.length) + 160], mem[172 len 20], mem[(32 * arg1.length) + 192], mem[(32 * arg1.length) + 224], mem[(32 * arg1.length) + 256], address(mem[192]), mem[(32 * arg1.length) + 288] << 248, mem[(32 * arg1.length) + (32 * arg2.length) + 192], mem[(32 * arg1.length) + (32 * arg2.length) + 224], mem[(32 * arg1.length) + 320]
        require ext_call.success
}

function sub_2391770f(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require 0 < arg1.length
    require 0 < arg2.length
    require 1 < arg1.length
    require 1 < arg2.length
    _11 = mem[(32 * arg1.length) + 192]
    require 2 < arg2.length
    _13 = mem[(32 * arg1.length) + 224]
    require 3 < arg2.length
    _15 = mem[(32 * arg1.length) + 256]
    require 2 < arg1.length
    _17 = mem[192]
    require 4 < arg2.length
    _19 = mem[(32 * arg1.length) + 288]
    require 0 < arg3.length
    _21 = mem[(32 * arg1.length) + (32 * arg2.length) + 192]
    require 1 < arg3.length
    _23 = mem[(32 * arg1.length) + (32 * arg2.length) + 224]
    require 5 < arg2.length
    _25 = mem[(32 * arg1.length) + 320]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = 0xa19b14a00000000000000000000000000000000000000000000000000000000
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 196] = mem[140 len 20]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 228] = mem[(32 * arg1.length) + 160]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 260] = mem[172 len 20]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 292] = _11
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 324] = _13
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 356] = _15
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 388] = address(_17)
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 420] = uint8(_19)
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 452] = _21
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 484] = _23
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 516] = _25
    require ext_code.size(stor1)
    call stor1.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
         gas gas_remaining - 710 wei
        args mem[140 len 20], mem[(32 * arg1.length) + 160], mem[172 len 20], _11, _13, _15, address(_17), _19 << 248, _21, _23, _25
    require ext_call.success
    require 4 < arg1.length
    require 6 < arg2.length
    require 5 < arg1.length
    require 7 < arg2.length
    require 8 < arg2.length
    require 9 < arg2.length
    require 6 < arg1.length
    require 10 < arg2.length
    require 2 < arg3.length
    require 3 < arg3.length
    require 11 < arg2.length
    require ext_code.size(stor1)
    call stor1.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
         gas gas_remaining - 710 wei
        args address(mem[256]), mem[(32 * arg1.length) + 352], address(mem[288]), mem[(32 * arg1.length) + 384], mem[(32 * arg1.length) + 416], mem[(32 * arg1.length) + 448], address(mem[320]), mem[(32 * arg1.length) + 480] << 248, mem[(32 * arg1.length) + (32 * arg2.length) + 256], mem[(32 * arg1.length) + (32 * arg2.length) + 288], mem[(32 * arg1.length) + 512]
    require ext_call.success
}



}
