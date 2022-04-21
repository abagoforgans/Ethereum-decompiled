contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[60 len 1757]
}



// =====================  Runtime code  =====================


address owner;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) {
    emit 0x6e6e15e7: address(arg1), 1111, address(arg3), arg4, arg5, arg6, address(arg7), arg8 << 248, arg9, arg10, arg11
}

function sub_0ccf9bc1(?) {
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg3.length) + (32 * arg4.length) + 160] = arg5.length
    mem[(32 * arg3.length) + (32 * arg4.length) + 192 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    require owner == msg.sender
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192] = 'trade(address,uint256,address,ui'
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224] = 'nt256,uint256,uint256,address,ui'
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256] = 'nt8,bytes32,bytes32,uint256)'
    require 0 < arg4.length
    require 0 < arg3.length
    require 2 < arg4.length
    require 2 < arg3.length
    require 4 < arg3.length
    _16 = mem[256]
    require 6 < arg3.length
    _18 = mem[320]
    require 4 < arg4.length
    _20 = mem[(32 * arg3.length) + 288]
    require 0 < arg5.length
    require 2 < arg5.length
    _24 = mem[(32 * arg3.length) + (32 * arg4.length) + 256]
    require 8 < arg3.length
    _26 = mem[384]
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 260] = mem[(32 * arg3.length) + 236 len 20]
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 292] = mem[192]
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 324] = _16
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 356] = _18
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 388] = address(_20)
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 420] = arg1
    delegate 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819 with:
       funct (Mask(32, 224, sha3('trade(address,uint256,address,ui', 'nt256,uint256,uint256,address,ui', 'nt8,bytes32,bytes32,uint256)')) >> 224)
         gas gas_remaining - 25710 wei
        args mem[(32 * arg3.length) + 172 len 20], mem[128], address(mem[(32 * arg3.length) + 224]), mem[192], _16, _18, address(_20), arg1 << 248, mem[(32 * arg3.length) + (32 * arg4.length) + 192], _24, _26
    require delegate.return_code
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192] = 'trade(address,uint256,address,ui'
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224] = 'nt256,uint256,uint256,address,ui'
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256] = 'nt8,bytes32,bytes32,uint256)'
    require 1 < arg4.length
    require 1 < arg3.length
    require 3 < arg4.length
    require 3 < arg3.length
    require 5 < arg3.length
    require 7 < arg3.length
    require 5 < arg4.length
    require 1 < arg5.length
    require 3 < arg5.length
    require 9 < arg3.length
    delegate 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819 with:
       funct (Mask(32, 224, sha3('trade(address,uint256,address,ui', 'nt256,uint256,uint256,address,ui', 'nt8,bytes32,bytes32,uint256)')) >> 224)
         gas gas_remaining - 25710 wei
        args address(mem[(32 * arg3.length) + 192]), mem[160], address(mem[(32 * arg3.length) + 256]), mem[224], mem[288], mem[352], address(mem[(32 * arg3.length) + 320]), arg2 << 248, mem[(32 * arg3.length) + (32 * arg4.length) + 224], mem[(32 * arg3.length) + (32 * arg4.length) + 288], mem[416]
    require delegate.return_code
}



}
