contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[60 len 2272]
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
    require 0 < arg5.length
    require 0 < arg4.length
    require 2 < arg5.length
    require 2 < arg4.length
    require 4 < arg4.length
    require 6 < arg4.length
    _15 = mem[320]
    require 4 < arg5.length
    _17 = mem[(32 * arg4.length) + 288]
    require 0 < arg6.length
    require 2 < arg6.length
    require 8 < arg4.length
    _23 = mem[384]
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288] = mem[(32 * arg4.length) + 236 len 20]
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] = mem[192]
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 352] = mem[256]
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 384] = _15
    emit 0x91b3ace0: address(arg1), mem[(32 * arg4.length) + 172 len 20], mem[128], address(mem[(32 * arg4.length) + 224]), mem[192], mem[256], _15, address(_17), arg2 << 248, mem[(32 * arg4.length) + (32 * arg5.length) + 192], mem[(32 * arg4.length) + (32 * arg5.length) + 256], _23
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 192] = 'trade(address,uint256,address,ui'
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 224] = 'nt256,uint256,uint256,address,ui'
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 256] = 'nt8,bytes32,bytes32,uint256)'
    require 0 < arg5.length
    require 0 < arg4.length
    require 2 < arg5.length
    _34 = mem[(32 * arg4.length) + 224]
    require 2 < arg4.length
    _36 = mem[192]
    require 4 < arg4.length
    _38 = mem[256]
    require 6 < arg4.length
    _40 = mem[320]
    require 4 < arg5.length
    _42 = mem[(32 * arg4.length) + 288]
    require 0 < arg6.length
    _44 = mem[(32 * arg4.length) + (32 * arg5.length) + 192]
    require 2 < arg6.length
    _46 = mem[(32 * arg4.length) + (32 * arg5.length) + 256]
    require 8 < arg4.length
    _48 = mem[384]
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 192] = Mask(32, 224, sha3('trade(address,uint256,address,ui', 'nt256,uint256,uint256,address,ui', 'nt8,bytes32,bytes32,uint256)'))
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 196] = mem[(32 * arg4.length) + 172 len 20]
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 228] = mem[128]
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 260] = address(_34)
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 292] = _36
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 324] = _38
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 356] = _40
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 388] = address(_42)
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 420] = arg2
    call arg1 with:
       funct Mask(32, 224, sha3('trade(address,uint256,address,ui', 'nt256,uint256,uint256,address,ui', 'nt8,bytes32,bytes32,uint256)')) >> 224
         gas gas_remaining - 25710 wei
        args mem[(32 * arg4.length) + 172 len 20], mem[128], address(_34), _36, _38, _40, address(_42), arg2 << 248, _44, _46, _48
    require ext_call.success
    require 1 < arg5.length
    require 1 < arg4.length
    require 3 < arg5.length
    require 3 < arg4.length
    require 5 < arg4.length
    _60 = mem[288]
    require 7 < arg4.length
    _62 = mem[352]
    require 5 < arg5.length
    _64 = mem[(32 * arg4.length) + 320]
    require 1 < arg6.length
    require 3 < arg6.length
    _68 = mem[(32 * arg4.length) + (32 * arg5.length) + 288]
    require 9 < arg4.length
    _70 = mem[416]
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288] = mem[(32 * arg4.length) + 268 len 20]
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320] = mem[224]
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 352] = _60
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 384] = _62
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 416] = address(_64)
    emit 0x91b3ace0: address(arg1), address(mem[(32 * arg4.length) + 192]), mem[160], address(mem[(32 * arg4.length) + 256]), mem[224], _60, _62, address(_64), arg3 << 248, mem[(32 * arg4.length) + (32 * arg5.length) + 224], _68, _70
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 192] = 'trade(address,uint256,address,ui'
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 224] = 'nt256,uint256,uint256,address,ui'
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 256] = 'nt8,bytes32,bytes32,uint256)'
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
    call arg1 with:
       funct Mask(32, 224, sha3('trade(address,uint256,address,ui', 'nt256,uint256,uint256,address,ui', 'nt8,bytes32,bytes32,uint256)')) >> 224
         gas gas_remaining - 25710 wei
        args address(mem[(32 * arg4.length) + 192]), mem[160], address(mem[(32 * arg4.length) + 256]), mem[224], mem[288], mem[352], address(mem[(32 * arg4.length) + 320]), arg3 << 248, mem[(32 * arg4.length) + (32 * arg5.length) + 224], mem[(32 * arg4.length) + (32 * arg5.length) + 288], mem[416]
    require ext_call.success
}



}
