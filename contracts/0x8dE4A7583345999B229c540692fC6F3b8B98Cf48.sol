contract main {




// =====================  Runtime code  =====================


const executorType = 0x2dc858a00f3e417be1394b87c07158e989ec681ce8cc68a9093680ac1a870302


uint256 initializationBlock;

function getInitializationBlock() {
    return initializationBlock
}

function _fallback() payable {
    revert
}

function isPetrified() {
    return (initializationBlock == -1)
}

function hasInitialized() {
    if not initializationBlock:
        return bool(initializationBlock)
    return block.number >= initializationBlock
}

function execScript(bytes arg1, bytes arg2, address[] arg3) {
    if not initializationBlock:
        revert with 0, 'INIT_NOT_INITIALIZED'
    mem[64] = 160
    mem[96] = 20
    mem[128] = 'INIT_NOT_INITIALIZED'
    if block.number < initializationBlock:
        revert with 0, 'INIT_NOT_INITIALIZED'
    s = 0
    s = 0
    s = 0
    s = 0
    s = 0
    idx = 4
    while idx < arg1.length:
        _68 = mem[64]
        mem[64] = mem[64] + 64
        mem[_68] = 23
        mem[_68 + 32] = 'EVMCALLS_INVALID_LENGTH'
        if arg1.length - idx < 24:
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 23
            mem[mem[64] + 68] = 'EVMCALLS_INVALID_LENGTH'
            idx = 32
            while idx < 23:
                mem[idx + mem[64] + 68] = mem[idx + _68 + 32]
                idx = idx + 32
                continue 
        else:
            _75 = mem[64]
            mem[64] = mem[64] + ceil32(arg1.length) + 32
            mem[_75] = arg1.length
            mem[_75 + 32 len arg1.length] = arg1[all]
            _85 = mem[idx + _75 + 32]
            s = 0
            while s < arg3.length:
                _131 = mem[64]
                mem[64] = mem[64] + 64
                mem[_131] = 25
                mem[_131 + 32] = 'EVMCALLS_BLACKLISTED_CALL'
                if Mask(160, 96, _85) >> 96 != address(cd[((32 * s) + arg3 + 36)]):
                    s = s + 1
                    continue 
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 25
                mem[mem[64] + 68] = 'EVMCALLS_BLACKLISTED_CALL'
                idx = 32
                while idx < 25:
                    mem[idx + mem[64] + 68] = mem[idx + _131 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'EVMCALLS_BLACKLISTED_CALL'
            emit LogScriptCall(msg.sender, this.address, Mask(160, 96, _85) >> 96);
            _127 = mem[64]
            mem[64] = mem[64] + ceil32(arg1.length) + 32
            mem[_127] = arg1.length
            mem[_127 + 32 len arg1.length] = arg1[all]
            _135 = mem[idx + _127 + 52]
            _141 = mem[64]
            mem[64] = mem[64] + ceil32(arg1.length) + 32
            mem[_141] = arg1.length
            mem[_141 + 32 len arg1.length] = arg1[all]
            _146 = mem[64]
            mem[64] = mem[64] + 64
            mem[_146] = 23
            mem[_146 + 32] = 'EVMCALLS_INVALID_LENGTH'
            if (Mask(32, 224, _135) >> 224) + idx + 24 <= arg1.length:
                call Mask(160, 96, _85) >> 96.mem[idx + _141 + 56 len 4] with:
                     gas gas_remaining - 5000 wei
                    args mem[idx + _141 + 60 len (Mask(32, 224, _135) >> 224) - 4]
                if ext_call.success:
                    s = ext_call.success
                    s = idx + _141 + 56
                    s = idx + 24
                    s = Mask(32, 224, _135) >> 224
                    s = Mask(160, 96, _85) >> 96
                    idx = (Mask(32, 224, _135) >> 224) + idx + 24
                    continue 
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with Error(string arg1), 'EVMCALLS_CALL_REVERTED'
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 23
            mem[mem[64] + 68] = 'EVMCALLS_INVALID_LENGTH'
            idx = 32
            while idx < 23:
                mem[idx + mem[64] + 68] = mem[idx + _146 + 32]
                idx = idx + 32
                continue 
        revert with 0, 'EVMCALLS_INVALID_LENGTH'
    _72 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    _74 = mem[96]
    mem[mem[64] + 64 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if not mem[96] % 32:
        return 32, mem[mem[64] + 32 len mem[96] + 32]
    mem[floor32(mem[96]) + mem[64] + 64] = mem[floor32(mem[96]) + mem[64] + -(mem[96] % 32) + 96 len mem[96] % 32]
    return memory
      from mem[64]
       len floor32(_74) + _72 + -mem[64] + 96
}



}
