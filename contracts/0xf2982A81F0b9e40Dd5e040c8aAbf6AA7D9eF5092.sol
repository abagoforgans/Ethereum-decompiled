contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;

function _fallback() payable {
    stor0 = 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819
    stor1 = 0
    require not msg.value
    stor2 = msg.sender
    return code.data[245 len 3818]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;

function destroy() {
    require msg.sender == stor2
    selfdestruct(msg.sender)
}

function put() payable {
    require msg.sender == stor2
    call stor0.0xd0e30db0 with:
       value msg.value wei
         gas gas_remaining - 34710 wei
    require ext_call.success
}

function _fallback() payable {
    if msg.value > 0:
        call stor2 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function sub_cf29e97c(?) {
    mem[128 len arg1.length] = arg1[all]
    require msg.sender == stor2
    mem[ceil32(arg1.length) + 128 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        call stor0.mem[ceil32(arg1.length) + 128 len 4] with:
             gas gas_remaining - 25710 wei
            args mem[ceil32(arg1.length) + 132 len arg1.length - 4]
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + 128] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
        call stor0.mem[ceil32(arg1.length) + 128 len 4] with:
             gas gas_remaining - 25710 wei
            args mem[ceil32(arg1.length) + 132 len floor32(arg1.length) + 28]
    require ext_call.success
}

function sub_93de377f(?) {
    mem[128 len 32 * arg6.length] = call.data[arg6 + 36 len 32 * arg6.length]
    mem[(32 * arg6.length) + 128] = arg7.length
    mem[(32 * arg6.length) + 160 len 32 * arg7.length] = call.data[arg7 + 36 len 32 * arg7.length]
    require msg.sender == stor2
    require 0 < arg6.length
    require 1 < arg6.length
    _6 = mem[160]
    require 2 < arg6.length
    _8 = mem[192]
    require 3 < arg6.length
    _10 = mem[224]
    require 0 < arg7.length
    _12 = mem[(32 * arg6.length) + 160]
    require 1 < arg7.length
    _14 = mem[(32 * arg6.length) + 192]
    mem[(32 * arg6.length) + (32 * arg7.length) + 164] = stor1
    mem[(32 * arg6.length) + (32 * arg7.length) + 196] = mem[128]
    mem[(32 * arg6.length) + (32 * arg7.length) + 228] = arg1
    mem[(32 * arg6.length) + (32 * arg7.length) + 260] = _6
    mem[(32 * arg6.length) + (32 * arg7.length) + 292] = _8
    mem[(32 * arg6.length) + (32 * arg7.length) + 324] = _10
    mem[(32 * arg6.length) + (32 * arg7.length) + 356] = arg2
    mem[(32 * arg6.length) + (32 * arg7.length) + 388] = arg4
    require ext_code.size(stor0)
    call stor0.0xfb6e155f with:
         gas gas_remaining - 710 wei
        args stor1, mem[128], address(arg1), _6, _8, _10, address(arg2), arg4 << 248, _12, _14
    mem[(32 * arg6.length) + (32 * arg7.length) + 160] = ext_call.return_data[0]
    require ext_call.success
    require 4 < arg6.length
    require ext_call.return_data[0] >= mem[256]
    require 5 < arg6.length
    _23 = mem[288]
    require 6 < arg6.length
    _25 = mem[320]
    require 7 < arg6.length
    _27 = mem[352]
    require 8 < arg6.length
    _29 = mem[384]
    require 2 < arg7.length
    _31 = mem[(32 * arg6.length) + 224]
    require 3 < arg7.length
    _33 = mem[(32 * arg6.length) + 256]
    mem[(32 * arg6.length) + (32 * arg7.length) + 164] = arg1
    mem[(32 * arg6.length) + (32 * arg7.length) + 196] = _23
    mem[(32 * arg6.length) + (32 * arg7.length) + 228] = stor1
    mem[(32 * arg6.length) + (32 * arg7.length) + 260] = _25
    mem[(32 * arg6.length) + (32 * arg7.length) + 292] = _27
    mem[(32 * arg6.length) + (32 * arg7.length) + 324] = _29
    mem[(32 * arg6.length) + (32 * arg7.length) + 356] = arg3
    mem[(32 * arg6.length) + (32 * arg7.length) + 388] = arg5
    mem[(32 * arg6.length) + (32 * arg7.length) + 420] = _31
    require ext_code.size(stor0)
    call stor0.0xfb6e155f with:
         gas gas_remaining - 710 wei
        args address(arg1), _23, stor1, _25, _27, _29, address(arg3), arg5 << 248, _31, _33
    mem[(32 * arg6.length) + (32 * arg7.length) + 160] = ext_call.return_data[0]
    require ext_call.success
    require 9 < arg6.length
    require ext_call.return_data[0] >= mem[416]
    require 0 < arg6.length
    require 1 < arg6.length
    _44 = mem[160]
    require 2 < arg6.length
    _46 = mem[192]
    require 3 < arg6.length
    _48 = mem[224]
    require 0 < arg7.length
    _50 = mem[(32 * arg6.length) + 160]
    require 1 < arg7.length
    _52 = mem[(32 * arg6.length) + 192]
    require 4 < arg6.length
    _54 = mem[256]
    mem[(32 * arg6.length) + (32 * arg7.length) + 160] = 0xa19b14a00000000000000000000000000000000000000000000000000000000
    mem[(32 * arg6.length) + (32 * arg7.length) + 164] = stor1
    mem[(32 * arg6.length) + (32 * arg7.length) + 196] = mem[128]
    mem[(32 * arg6.length) + (32 * arg7.length) + 228] = arg1
    mem[(32 * arg6.length) + (32 * arg7.length) + 260] = _44
    mem[(32 * arg6.length) + (32 * arg7.length) + 292] = _46
    mem[(32 * arg6.length) + (32 * arg7.length) + 324] = _48
    mem[(32 * arg6.length) + (32 * arg7.length) + 356] = arg2
    mem[(32 * arg6.length) + (32 * arg7.length) + 388] = arg4
    mem[(32 * arg6.length) + (32 * arg7.length) + 420] = _50
    require ext_code.size(stor0)
    call stor0.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
         gas gas_remaining - 710 wei
        args stor1, mem[128], address(arg1), _44, _46, _48, address(arg2), arg4 << 248, _50, _52, _54
    require ext_call.success
    require 5 < arg6.length
    require 6 < arg6.length
    require 7 < arg6.length
    require 8 < arg6.length
    require 2 < arg7.length
    require 3 < arg7.length
    require 9 < arg6.length
    require ext_code.size(stor0)
    call stor0.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
         gas gas_remaining - 710 wei
        args address(arg1), mem[288], stor1, mem[320], mem[352], mem[384], address(arg3), arg5 << 248, mem[(32 * arg6.length) + 224], mem[(32 * arg6.length) + 256], mem[416]
    require ext_call.success
}



}
