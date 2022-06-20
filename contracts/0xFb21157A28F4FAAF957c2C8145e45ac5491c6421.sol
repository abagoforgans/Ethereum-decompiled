contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function sub_a6b5292f(?) {
    require ext_code.size(stor0)
    call stor0.getUnfinished(uint256 arg1) with:
         gas gas_remaining wei
        args 0
    mem[96 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    mem[96] = 0xec284e0a00000000000000000000000000000000000000000000000000000000
    mem[100] = ext_call.return_data[0]
    mem[132] = ext_call.return_data[64]
    require ext_code.size(stor0)
    call stor0.getCylinder(uint256 arg1, int256 arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], ext_call.return_data[64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 288
    _13 = mem[192]
    require mem[224] <= 4294967296
    require mem[224] + 32 <= return_data.size
    require mem[mem[224] + 96] <= 4294967296 and mem[224] + (32 * mem[mem[224] + 96]) + 32 <= return_data.size
    _17 = mem[288]
    _19 = mem[352]
    require mem[287 len 1] < mem[mem[224] + 96]
    mem[ceil32(return_data.size) + 96] = mem[(32 * uint8(mem[256])) + mem[224] + 140 len 20]
    return mem[ceil32(return_data.size) + 96], 
           _13 << 192,
           ('signextend', 11, ('signextend', 11, ('var', '_17'))),
           _19 << 248,
           ext_call.return_data[32]
}



}
