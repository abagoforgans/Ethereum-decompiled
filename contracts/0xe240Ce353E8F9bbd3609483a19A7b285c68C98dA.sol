contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[60 len 1494]
}



// =====================  Runtime code  =====================


address owner;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function sub_705cbf7c(?) {
    mem[128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + 128] = arg5.length
    mem[(32 * arg4.length) + 160 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    mem[(32 * arg4.length) + (32 * arg5.length) + 160] = arg6.length
    mem[(32 * arg4.length) + (32 * arg5.length) + 192 len 32 * arg6.length] = call.data[arg6 + 36 len 32 * arg6.length]
    require owner == msg.sender
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 192] = 'trade2(address,uint256,address,u'
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 224] = 'int256,uint256,uint256,address,u'
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 256] = 'int8,bytes32,bytes32,uint256)'
    require 0 < arg5.length
    require 0 < arg4.length
    require 2 < arg5.length
    require 2 < arg4.length
    require 4 < arg4.length
    _16 = mem[256]
    require 6 < arg4.length
    _18 = mem[320]
    require 4 < arg5.length
    _20 = mem[(32 * arg4.length) + 288]
    require 0 < arg6.length
    require 2 < arg6.length
    _24 = mem[(32 * arg4.length) + (32 * arg5.length) + 256]
    require 8 < arg4.length
    _26 = mem[384]
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 260] = mem[(32 * arg4.length) + 236 len 20]
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 292] = mem[192]
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 324] = _16
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 356] = _18
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 388] = address(_20)
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 420] = arg2
    delegate arg1 with:
       funct (Mask(32, 224, sha3('trade2(address,uint256,address,u', 'int256,uint256,uint256,address,u', 'int8,bytes32,bytes32,uint256)')) >> 224)
         gas gas_remaining - 25710 wei
        args mem[(32 * arg4.length) + 172 len 20], mem[128], address(mem[(32 * arg4.length) + 224]), mem[192], _16, _18, address(_20), arg2 << 248, mem[(32 * arg4.length) + (32 * arg5.length) + 192], _24, _26
    require delegate.return_code
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 192] = 'trade2(address,uint256,address,u'
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 224] = 'int256,uint256,uint256,address,u'
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 256] = 'int8,bytes32,bytes32,uint256)'
    require 1 < arg5.length
    require 1 < arg4.length
    require 3 < arg5.length
    require 3 < arg4.length
    require 5 < arg4.length
    require 7 < arg4.length
    require 5 < arg5.length
    require 1 < arg6.length
    require 3 < arg6.length
    require 9 < arg4.length
    delegate arg1 with:
       funct (Mask(32, 224, sha3('trade2(address,uint256,address,u', 'int256,uint256,uint256,address,u', 'int8,bytes32,bytes32,uint256)')) >> 224)
         gas gas_remaining - 25710 wei
        args address(mem[(32 * arg4.length) + 192]), mem[160], address(mem[(32 * arg4.length) + 256]), mem[224], mem[288], mem[352], address(mem[(32 * arg4.length) + 320]), arg3 << 248, mem[(32 * arg4.length) + (32 * arg5.length) + 224], mem[(32 * arg4.length) + (32 * arg5.length) + 288], mem[416]
    require delegate.return_code
}



}
