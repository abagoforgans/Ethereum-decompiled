contract main {


// =======================  Init code  ======================


const _fallback = code.data[33 len 1663]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function testcall(address arg1) {
    delegate arg1 with:
       funct (Mask(32, 224, sha3('x(address,uint256,address,uint25', '6,bytes32,bytes32)')) >> 224)
         gas gas_remaining - 25710 wei
        args 0xdc04977a2078c8ffdf086d618d1f961b6c54111, 1, 0xdc04977a2078c8ffdf086d618d1f961b6c54333, 3, 0, 0
    if delegate.return_code:
        delegate arg1 with:
           funct (Mask(32, 224, sha3('x(address,uint256,address,uint25', '6,bytes32,bytes32)')) >> 224)
             gas gas_remaining - 25710 wei
            args 0xdc04977a2078c8ffdf086d618d1f961b6c54222, 2, 0xdc04977a2078c8ffdf086d618d1f961b6c54444, 4, 0, 0
}

function delegate_2x(address arg1, uint256[] arg2, address[] arg3, bytes32[] arg4) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = arg4.length
    mem[(32 * arg2.length) + (32 * arg3.length) + 192 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192] = 'x(address,uint256,address,uint25'
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = '6,bytes32,bytes32)'
    require 0 < arg3.length
    require 0 < arg2.length
    require 2 < arg3.length
    _12 = mem[(32 * arg2.length) + 224]
    require 2 < arg2.length
    require 0 < arg4.length
    require 2 < arg4.length
    _18 = mem[(32 * arg2.length) + (32 * arg3.length) + 256]
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 228] = mem[128]
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 260] = address(_12)
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 292] = mem[192]
    delegate arg1 with:
       funct (Mask(32, 224, sha3('x(address,uint256,address,uint25', '6,bytes32,bytes32)')) >> 224)
         gas gas_remaining - 25710 wei
        args mem[(32 * arg2.length) + 172 len 20], mem[128], address(_12), mem[192], mem[(32 * arg2.length) + (32 * arg3.length) + 192], _18
    if delegate.return_code:
        mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192] = 'x(address,uint256,address,uint25'
        mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = '6,bytes32,bytes32)'
        require 1 < arg3.length
        require 1 < arg2.length
        require 3 < arg3.length
        require 3 < arg2.length
        require 1 < arg4.length
        require 3 < arg4.length
        delegate arg1 with:
           funct (Mask(32, 224, sha3('x(address,uint256,address,uint25', '6,bytes32,bytes32)')) >> 224)
             gas gas_remaining - 25710 wei
            args address(mem[(32 * arg2.length) + 192]), mem[160], address(mem[(32 * arg2.length) + 256]), mem[224], mem[(32 * arg2.length) + (32 * arg3.length) + 224], mem[(32 * arg2.length) + (32 * arg3.length) + 288]
}



}
