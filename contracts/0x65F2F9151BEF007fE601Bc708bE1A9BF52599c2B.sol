contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    require calldata.size >= 64
    require cd[32] <= 4294967296
    require cd[32] + 32 <= calldata.size
    require cd[cd[32]] <= 4294967296 and cd[32] + cd[cd[32]] + 32 <= calldata.size
    mem[64] = ceil32(cd[cd[32]]) + 160
    mem[128] = cd[cd[32]]
    mem[160 len cd[cd[32]]] = call.data[cd[32] + 32 len cd[cd[32]]]
    mem[cd[cd[32]] + 160] = 0
    require cd[cd[32]] >= 224
    require mem[160] <= 4294967296
    require mem[160] + 64 <= cd[cd[32]] + 32
    require cd[cd[32]] + 32 >= mem[mem[160] + 160] + mem[160] + 64 and mem[mem[160] + 160] <= 4294967296
    _5 = mem[192]
    _6 = mem[224]
    require mem[256] <= 4294967296
    require mem[256] + 64 <= cd[cd[32]] + 32
    require cd[cd[32]] + 32 >= mem[mem[256] + 160] + mem[256] + 64 and mem[mem[256] + 160] <= 4294967296
    _9 = mem[288]
    if mem[352] <= block.timestamp:
        revert with 0, 'Meta-tx is expired'
    if block.gasprice >= mem[320]:
        revert with 0, 'Gas price too high'
    if block.gas_limit - 21000 < mem[288]:
        _17 = mem[mem[256] + 160]
        mem[ceil32(cd[cd[32]]) + 160 len floor32(mem[mem[256] + 160])] = mem[mem[256] + 192 len floor32(mem[mem[256] + 160])]
        mem[ceil32(cd[cd[32]]) + floor32(mem[mem[256] + 160]) + -(mem[mem[256] + 160] % 32) + 192 len mem[mem[256] + 160] % 32] = mem[mem[256] + -(mem[mem[256] + 160] % 32) + floor32(mem[mem[256] + 160]) + 224 len mem[mem[256] + 160] % 32]
        call address(_5) with:
           funct Mask(32, -(8 * ceil32(cd[cd[32]]) + -cd[cd[32]] + 4) + 256, 0) >> -(8 * ceil32(cd[cd[32]]) + -cd[cd[32]] + 4) + 256
           value _6 wei
             gas block.gas_limit - 21000 wei
            args mem[ceil32(cd[cd[32]]) + 164 len _17 - 4]
    else:
        _19 = mem[mem[256] + 160]
        mem[ceil32(cd[cd[32]]) + 160 len floor32(mem[mem[256] + 160])] = mem[mem[256] + 192 len floor32(mem[mem[256] + 160])]
        mem[ceil32(cd[cd[32]]) + floor32(mem[mem[256] + 160]) + -(mem[mem[256] + 160] % 32) + 192 len mem[mem[256] + 160] % 32] = mem[mem[256] + -(mem[mem[256] + 160] % 32) + floor32(mem[mem[256] + 160]) + 224 len mem[mem[256] + 160] % 32]
        call address(_5) with:
           funct Mask(32, -(8 * ceil32(cd[cd[32]]) + -cd[cd[32]] + 4) + 256, 0) >> -(8 * ceil32(cd[cd[32]]) + -cd[cd[32]] + 4) + 256
           value _6 wei
             gas _9 wei
            args mem[ceil32(cd[cd[32]]) + 164 len _19 - 4]
    if return_data.size:
        emit 0xabdbfcc7: bool(ext_call.success), Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size]), call.func_hash
    else:
        mem[ceil32(cd[cd[32]]) + 160] = bool(ext_call.success)
        mem[ceil32(cd[cd[32]]) + 192] = 64
        mem[ceil32(cd[cd[32]]) + 224] = mem[96]
        mem[ceil32(cd[cd[32]]) + 256 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if not mem[96] % 32:
            emit 0xabdbfcc7: Mask(8 * -ceil32(cd[cd[32]]) + cd[cd[32]] + 32, 0, 0), mem[cd[cd[32]] + 192 len mem[96] + -cd[cd[32]] + ceil32(cd[cd[32]]) + 64], call.func_hash
        else:
            mem[floor32(mem[96]) + ceil32(cd[cd[32]]) + 256] = mem[floor32(mem[96]) + ceil32(cd[cd[32]]) + -(mem[96] % 32) + 288 len mem[96] % 32]
            emit 0xabdbfcc7: Mask(8 * -ceil32(cd[cd[32]]) + cd[cd[32]] + 32, 0, 0), mem[cd[cd[32]] + 192 len ceil32(cd[cd[32]]) + -cd[cd[32]] + 32], mem[96], mem[ceil32(cd[cd[32]]) + 256 len floor32(mem[96]) + 32], call.func_hash
}



}
