contract main {




// =====================  Runtime code  =====================


array of address signers;
uint8 stor1;
array of uint256 stor2;

function signers(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < signers.length
    return signers[arg1]
}

function safeMode() {
    return bool(stor1)
}

function _fallback() payable {
    if msg.value > 0:
        emit Deposited(address(msg.sender), msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]));
}

function isSigner(address arg1) {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < signers.length:
        mem[0] = 0
        if signers[idx] != arg1:
            idx = idx + 1
            continue 
        return 1
    return 0
}

function createForwarder() {
    create contract with 0 wei
                    code: code.data[3818 len 1217]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    return address(create.new_address)
}

function activateSafeMode() {
    require 0 < signers.length
    idx = 0
    while signers[idx] != msg.sender:
        require idx + 1 < signers.length
        mem[0] = 0
        idx = idx + 1
        continue 
    stor1 = 1
    emit SafeModeActivated(msg.sender);
}

function getNextSequenceId() {
    idx = 0
    s = 0
    while idx < 10:
        if stor2[idx] <= s:
            idx = idx + 1
            s = s
            continue 
        require idx < 10
        idx = idx + 1
        s = stor2[idx]
        continue 
    return (s + 1)
}

function flushForwarderTokens(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require 0 < signers.length
    idx = 0
    while signers[idx] != msg.sender:
        require idx + 1 < signers.length
        mem[0] = 0
        idx = idx + 1
        continue 
    require ext_code.size(arg1)
    call arg1.flushTokens(address arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sendMultiSigToken(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, bytes arg6) {
    require calldata.size - 4 >= 192
    require arg6 <= test266151307()
    require calldata.size > arg6 + 35
    require arg6.length <= test266151307()
    require ceil32(arg6.length) + 128 >= 96 and ceil32(arg6.length) + 128 <= test266151307()
    require arg6 + arg6.length + 36 <= calldata.size
    mem[128 len arg6.length] = arg6[all]
    mem[arg6.length + 128] = 0
    require 0 < signers.length
    idx = 0
    while signers[idx] != msg.sender:
        require idx + 1 < signers.length
        mem[0] = 0
        idx = idx + 1
        continue 
    mem[ceil32(arg6.length) + 128] = 'ERC20'
    mem[ceil32(arg6.length) + 133] = address(arg1)
    mem[ceil32(arg6.length) + 153] = arg2
    mem[ceil32(arg6.length) + 185] = address(arg3)
    require 65 == arg6.length
    _48 = mem[160]
    _49 = mem[161]
    mem[ceil32(arg6.length) + 160] = sha3(0, arg1, arg2, arg3, arg4, arg5)
    if mem[192 len 1] <= 35:
        if mem[192 len 1] >= 27:
            mem[ceil32(arg6.length) + 192] = uint8(_49)
            mem[ceil32(arg6.length) + 224] = mem[128]
            mem[ceil32(arg6.length) + 256] = _48
            signer = erecover(sha3(0, arg1, arg2, arg3, arg4, arg5), _49 << 248, mem[128], _48) 
        else:
            mem[ceil32(arg6.length) + 192] = uint8(uint8(_49) + 27)
            mem[ceil32(arg6.length) + 224] = mem[128]
            mem[ceil32(arg6.length) + 256] = _48
            signer = erecover(sha3(0, arg1, arg2, arg3, arg4, arg5), uint8(_49) + 27 << 248, mem[128], _48) 
    else:
        if uint8(mem[192 len 1] - 41) >= 27:
            mem[ceil32(arg6.length) + 192] = uint8(uint8(_49) - 41)
            mem[ceil32(arg6.length) + 224] = mem[128]
            mem[ceil32(arg6.length) + 256] = _48
            signer = erecover(sha3(0, arg1, arg2, arg3, arg4, arg5), uint8(_49) - 41 << 248, mem[128], _48) 
        else:
            mem[ceil32(arg6.length) + 192] = uint8(uint8(_49) - 14)
            mem[ceil32(arg6.length) + 224] = mem[128]
            mem[ceil32(arg6.length) + 256] = _48
            signer = erecover(sha3(0, arg1, arg2, arg3, arg4, arg5), uint8(_49) - 14 << 248, mem[128], _48) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if stor1:
        require 0 < signers.length
        idx = 0
        while signers[idx] != arg1:
            require idx + 1 < signers.length
            mem[0] = 0
            idx = idx + 1
            continue 
    require arg4 >= block.timestamp
    idx = 0
    s = 2
    t = ceil32(arg6.length) + 160
    while idx < 10:
        mem[t] = stor[s]
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    emit 0xb1cec223: mem[ceil32(arg6.length) + 160 len 320]
    require 0 < signers.length
    idx = 0
    while signers[idx] != address(signer):
        require idx + 1 < signers.length
        mem[0] = 0
        idx = idx + 1
        continue 
    require address(signer) != msg.sender
    require ext_code.size(arg3)
    call arg3.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function sub_687be797(?) {
    require calldata.size - 4 >= 192
    require cd[68] <= test266151307()
    require calldata.size > cd[68] + 35
    require ('cd', 68).length <= test266151307()
    require ceil32(('cd', 68).length) + 128 >= 96 and ceil32(('cd', 68).length) + 128 <= test266151307()
    mem[96] = ('cd', 68).length
    require cd[68] + ('cd', 68).length + 36 <= calldata.size
    mem[128 len ('cd', 68).length] = call.data[cd[68] + 36 len ('cd', 68).length]
    mem[('cd', 68).length + 128] = 0
    require cd[164] <= test266151307()
    require calldata.size > cd[164] + 35
    require ('cd', 164).length <= test266151307()
    require (32 * ('cd', 164).length) + 160 >= 128 and ceil32(('cd', 68).length) + (32 * ('cd', 164).length) + 160 <= test266151307()
    mem[64] = ceil32(('cd', 68).length) + (32 * ('cd', 164).length) + 160
    mem[ceil32(('cd', 68).length) + 128] = ('cd', 164).length
    idx = 0
    s = cd[164] + 36
    t = ceil32(('cd', 68).length) + 160
    while idx < ('cd', 164).length:
        require calldata.size > cd[164] + cd[s] + 67
        require cd[(cd[164] + cd[s] + 36)] <= test266151307()
        _172 = mem[64]
        require mem[64] + ceil32(cd[(cd[164] + cd[s] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(cd[164] + cd[s] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(cd[164] + cd[s] + 36)]) + 32
        mem[_172] = cd[(cd[164] + cd[s] + 36)]
        require cd[164] + cd[s] + cd[(cd[164] + cd[s] + 36)] + 68 <= calldata.size
        mem[_172 + 32 len cd[(cd[164] + cd[s] + 36)]] = call.data[cd[164] + cd[s] + 68 len cd[(cd[164] + cd[s] + 36)]]
        mem[cd[(cd[164] + cd[s] + 36)] + _172 + 32] = 0
        mem[t] = _172
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require 0 < signers.length
    mem[0] = 0
    idx = 0
    while signers[idx] != msg.sender:
        require idx + 1 < signers.length
        mem[0] = 0
        idx = idx + 1
        continue 
    require 0 < mem[ceil32(('cd', 68).length) + 128]
    _343 = mem[ceil32(('cd', 68).length) + 160]
    _344 = mem[64]
    mem[mem[64]] = 'ETHER'
    mem[mem[64] + 5] = address(cd[4])
    mem[mem[64] + 25] = cd[36]
    _345 = mem[96]
    mem[mem[64] + 57 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + floor32(mem[96]) + 57] = 256^(-(mem[96] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[96]) + 57] or mem[floor32(mem[96]) + 128] and !(256^(-(mem[96] % 32) + 32) - 1)
    mem[_344 + _345 + 57] = cd[100]
    mem[_344 + _345 + 89] = cd[132]
    _512 = sha3(mem[mem[64] len _344 + _345 + -mem[64] + 121])
    mem[mem[64]] = address(cd[4])
    mem[mem[64] + 32] = cd[36]
    mem[mem[64] + 64] = 160
    _514 = mem[96]
    mem[mem[64] + 160] = mem[96]
    mem[mem[64] + 192 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(mem[96]) <= mem[96]:
        mem[mem[64] + 96] = cd[100]
        mem[mem[64] + 128] = cd[132]
        emit 0x1e816970: address(cd[4]), cd[36], 160, cd[100], cd[132], mem[mem[64] + 160 len ceil32(_514) + 32]
        _674 = mem[64]
        mem[mem[64]] = 64
        _677 = mem[_343]
        mem[mem[64] + 64] = mem[_343]
        mem[mem[64] + 96 len ceil32(_677)] = mem[_343 + 32 len ceil32(_677)]
        if ceil32(_677) <= _677:
            mem[mem[64] + 32] = _512
            emit 0x7d101e99: mem[mem[64] len _674 + ceil32(_677) + -mem[64] + 96]
            require 65 == mem[_343]
            _837 = mem[_343 + 32]
            _838 = mem[_343 + 64]
            _839 = mem[_343 + 65]
            if mem[_343 + 96 len 1] <= 35:
                if mem[_343 + 96 len 1] >= 27:
                    _851 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_851 + 32] = _512
                    mem[_851 + 64] = uint8(_839)
                    mem[_851 + 96] = _837
                    mem[_851 + 128] = _838
                    signer = erecover(_512, _839 << 248, _837, _838) 
                    mem[_851] = signer
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not stor1:
                        require cd[100] >= block.timestamp
                        idx = 0
                        s = 2
                        t = _851 + 32
                        while idx < 10:
                            mem[t] = stor[s]
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0xb1cec223: mem[_851 + 32 len 320]
                        require 0 < signers.length
                        mem[0] = 0
                        idx = 0
                        while signers[idx] != address(signer):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require address(signer) != msg.sender
                        _1348 = mem[96]
                        mem[_851 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        var163001 = ceil32(_1348)
                        if not _1348 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1348 + _851 + -mem[64] + 28]
                        else:
                            mem[floor32(_1348) + _851 + 32] = mem[floor32(_1348) + _851 + -(_1348 % 32) + 64 len _1348 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1348) + _851 + -mem[64] + 60]
                    else:
                        require 0 < signers.length
                        idx = 0
                        while signers[idx] != address(cd[4]):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require cd[100] >= block.timestamp
                        idx = 0
                        s = 2
                        t = _851 + 32
                        while idx < 10:
                            mem[t] = stor[s]
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0xb1cec223: mem[_851 + 32 len 320]
                        require 0 < signers.length
                        mem[0] = 0
                        idx = 0
                        while signers[idx] != address(signer):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require address(signer) != msg.sender
                        _1972 = mem[96]
                        mem[_851 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if not _1972 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1972 + _851 + -mem[64] + 28]
                        else:
                            mem[floor32(_1972) + _851 + 32] = mem[floor32(_1972) + _851 + -(_1972 % 32) + 64 len _1972 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1972) + _851 + -mem[64] + 60]
                else:
                    _855 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_855 + 32] = _512
                    mem[_855 + 64] = uint8(uint8(_839) + 27)
                    mem[_855 + 96] = _837
                    mem[_855 + 128] = _838
                    signer = erecover(_512, uint8(_839) + 27 << 248, _837, _838) 
                    mem[_855] = signer
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not stor1:
                        require cd[100] >= block.timestamp
                        idx = 0
                        s = 2
                        t = _855 + 32
                        while idx < 10:
                            mem[t] = stor[s]
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0xb1cec223: mem[_855 + 32 len 320]
                        require 0 < signers.length
                        mem[0] = 0
                        idx = 0
                        while signers[idx] != address(signer):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require address(signer) != msg.sender
                        _1350 = mem[96]
                        mem[_855 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        var164001 = ceil32(_1350)
                        if not _1350 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1350 + _855 + -mem[64] + 28]
                        else:
                            mem[floor32(_1350) + _855 + 32] = mem[floor32(_1350) + _855 + -(_1350 % 32) + 64 len _1350 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1350) + _855 + -mem[64] + 60]
                    else:
                        require 0 < signers.length
                        idx = 0
                        while signers[idx] != address(cd[4]):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require cd[100] >= block.timestamp
                        idx = 0
                        s = 2
                        t = _855 + 32
                        while idx < 10:
                            mem[t] = stor[s]
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0xb1cec223: mem[_855 + 32 len 320]
                        require 0 < signers.length
                        mem[0] = 0
                        idx = 0
                        while signers[idx] != address(signer):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require address(signer) != msg.sender
                        _1974 = mem[96]
                        mem[_855 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if not _1974 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1974 + _855 + -mem[64] + 28]
                        else:
                            mem[floor32(_1974) + _855 + 32] = mem[floor32(_1974) + _855 + -(_1974 % 32) + 64 len _1974 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1974) + _855 + -mem[64] + 60]
            else:
                if uint8(mem[_343 + 96 len 1] - 41) >= 27:
                    _857 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_857 + 32] = _512
                    mem[_857 + 64] = uint8(uint8(_839) - 41)
                    mem[_857 + 96] = _837
                    mem[_857 + 128] = _838
                    signer = erecover(_512, uint8(_839) - 41 << 248, _837, _838) 
                    mem[_857] = signer
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not stor1:
                        require cd[100] >= block.timestamp
                        idx = 0
                        s = 2
                        t = _857 + 32
                        while idx < 10:
                            mem[t] = stor[s]
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0xb1cec223: mem[_857 + 32 len 320]
                        require 0 < signers.length
                        mem[0] = 0
                        idx = 0
                        while signers[idx] != address(signer):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require address(signer) != msg.sender
                        _1352 = mem[96]
                        mem[_857 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        var164001 = ceil32(_1352)
                        if not _1352 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1352 + _857 + -mem[64] + 28]
                        else:
                            mem[floor32(_1352) + _857 + 32] = mem[floor32(_1352) + _857 + -(_1352 % 32) + 64 len _1352 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1352) + _857 + -mem[64] + 60]
                    else:
                        require 0 < signers.length
                        idx = 0
                        while signers[idx] != address(cd[4]):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require cd[100] >= block.timestamp
                        idx = 0
                        s = 2
                        t = _857 + 32
                        while idx < 10:
                            mem[t] = stor[s]
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0xb1cec223: mem[_857 + 32 len 320]
                        require 0 < signers.length
                        mem[0] = 0
                        idx = 0
                        while signers[idx] != address(signer):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require address(signer) != msg.sender
                        _1976 = mem[96]
                        mem[_857 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if not _1976 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1976 + _857 + -mem[64] + 28]
                        else:
                            mem[floor32(_1976) + _857 + 32] = mem[floor32(_1976) + _857 + -(_1976 % 32) + 64 len _1976 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1976) + _857 + -mem[64] + 60]
                else:
                    _867 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_867 + 32] = _512
                    mem[_867 + 64] = uint8(uint8(_839) - 14)
                    mem[_867 + 96] = _837
                    mem[_867 + 128] = _838
                    signer = erecover(_512, uint8(_839) - 14 << 248, _837, _838) 
                    mem[_867] = signer
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not stor1:
                        require cd[100] >= block.timestamp
                        idx = 0
                        s = 2
                        t = _867 + 32
                        while idx < 10:
                            mem[t] = stor[s]
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0xb1cec223: mem[_867 + 32 len 320]
                        require 0 < signers.length
                        mem[0] = 0
                        idx = 0
                        while signers[idx] != address(signer):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require address(signer) != msg.sender
                        _1354 = mem[96]
                        mem[_867 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        var165001 = ceil32(_1354)
                        if not _1354 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1354 + _867 + -mem[64] + 28]
                        else:
                            mem[floor32(_1354) + _867 + 32] = mem[floor32(_1354) + _867 + -(_1354 % 32) + 64 len _1354 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1354) + _867 + -mem[64] + 60]
                    else:
                        require 0 < signers.length
                        idx = 0
                        while signers[idx] != address(cd[4]):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require cd[100] >= block.timestamp
                        idx = 0
                        s = 2
                        t = _867 + 32
                        while idx < 10:
                            mem[t] = stor[s]
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0xb1cec223: mem[_867 + 32 len 320]
                        require 0 < signers.length
                        mem[0] = 0
                        idx = 0
                        while signers[idx] != address(signer):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require address(signer) != msg.sender
                        _1978 = mem[96]
                        mem[_867 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if not _1978 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1978 + _867 + -mem[64] + 28]
                        else:
                            mem[floor32(_1978) + _867 + 32] = mem[floor32(_1978) + _867 + -(_1978 % 32) + 64 len _1978 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1978) + _867 + -mem[64] + 60]
        else:
            mem[mem[64] + _677 + 96] = 0
            mem[mem[64] + 32] = _512
            emit 0x7d101e99: mem[mem[64] len _674 + ceil32(_677) + -mem[64] + 96]
            require 65 == mem[_343]
            _845 = mem[_343 + 32]
            _846 = mem[_343 + 64]
            _847 = mem[_343 + 65]
            if mem[_343 + 96 len 1] <= 35:
                if mem[_343 + 96 len 1] >= 27:
                    _859 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_859 + 32] = _512
                    mem[_859 + 64] = uint8(_847)
                    mem[_859 + 96] = _845
                    mem[_859 + 128] = _846
                    signer = erecover(_512, _847 << 248, _845, _846) 
                    mem[_859] = signer
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not stor1:
                        require cd[100] >= block.timestamp
                        idx = 0
                        s = 2
                        t = _859 + 32
                        while idx < 10:
                            mem[t] = stor[s]
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0xb1cec223: mem[_859 + 32 len 320]
                        require 0 < signers.length
                        mem[0] = 0
                        idx = 0
                        while signers[idx] != address(signer):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require address(signer) != msg.sender
                        _1356 = mem[96]
                        mem[_859 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        var164001 = ceil32(_1356)
                        if not _1356 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1356 + _859 + -mem[64] + 28]
                        else:
                            mem[floor32(_1356) + _859 + 32] = mem[floor32(_1356) + _859 + -(_1356 % 32) + 64 len _1356 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1356) + _859 + -mem[64] + 60]
                    else:
                        require 0 < signers.length
                        idx = 0
                        while signers[idx] != address(cd[4]):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require cd[100] >= block.timestamp
                        idx = 0
                        s = 2
                        t = _859 + 32
                        while idx < 10:
                            mem[t] = stor[s]
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0xb1cec223: mem[_859 + 32 len 320]
                        require 0 < signers.length
                        mem[0] = 0
                        idx = 0
                        while signers[idx] != address(signer):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require address(signer) != msg.sender
                        _1980 = mem[96]
                        mem[_859 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if not _1980 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1980 + _859 + -mem[64] + 28]
                        else:
                            mem[floor32(_1980) + _859 + 32] = mem[floor32(_1980) + _859 + -(_1980 % 32) + 64 len _1980 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1980) + _859 + -mem[64] + 60]
                else:
                    _869 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_869 + 32] = _512
                    mem[_869 + 64] = uint8(uint8(_847) + 27)
                    mem[_869 + 96] = _845
                    mem[_869 + 128] = _846
                    signer = erecover(_512, uint8(_847) + 27 << 248, _845, _846) 
                    mem[_869] = signer
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not stor1:
                        require cd[100] >= block.timestamp
                        idx = 0
                        s = 2
                        t = _869 + 32
                        while idx < 10:
                            mem[t] = stor[s]
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0xb1cec223: mem[_869 + 32 len 320]
                        require 0 < signers.length
                        mem[0] = 0
                        idx = 0
                        while signers[idx] != address(signer):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require address(signer) != msg.sender
                        _1358 = mem[96]
                        mem[_869 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        var165001 = ceil32(_1358)
                        if not _1358 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1358 + _869 + -mem[64] + 28]
                        else:
                            mem[floor32(_1358) + _869 + 32] = mem[floor32(_1358) + _869 + -(_1358 % 32) + 64 len _1358 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1358) + _869 + -mem[64] + 60]
                    else:
                        require 0 < signers.length
                        idx = 0
                        while signers[idx] != address(cd[4]):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require cd[100] >= block.timestamp
                        idx = 0
                        s = 2
                        t = _869 + 32
                        while idx < 10:
                            mem[t] = stor[s]
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0xb1cec223: mem[_869 + 32 len 320]
                        require 0 < signers.length
                        mem[0] = 0
                        idx = 0
                        while signers[idx] != address(signer):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require address(signer) != msg.sender
                        _1982 = mem[96]
                        mem[_869 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if not _1982 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1982 + _869 + -mem[64] + 28]
                        else:
                            mem[floor32(_1982) + _869 + 32] = mem[floor32(_1982) + _869 + -(_1982 % 32) + 64 len _1982 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1982) + _869 + -mem[64] + 60]
            else:
                if uint8(mem[_343 + 96 len 1] - 41) >= 27:
                    _871 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_871 + 32] = _512
                    mem[_871 + 64] = uint8(uint8(_847) - 41)
                    mem[_871 + 96] = _845
                    mem[_871 + 128] = _846
                    signer = erecover(_512, uint8(_847) - 41 << 248, _845, _846) 
                    mem[_871] = signer
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not stor1:
                        require cd[100] >= block.timestamp
                        idx = 0
                        s = 2
                        t = _871 + 32
                        while idx < 10:
                            mem[t] = stor[s]
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0xb1cec223: mem[_871 + 32 len 320]
                        require 0 < signers.length
                        mem[0] = 0
                        idx = 0
                        while signers[idx] != address(signer):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require address(signer) != msg.sender
                        _1360 = mem[96]
                        mem[_871 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        var165001 = ceil32(_1360)
                        if not _1360 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1360 + _871 + -mem[64] + 28]
                        else:
                            mem[floor32(_1360) + _871 + 32] = mem[floor32(_1360) + _871 + -(_1360 % 32) + 64 len _1360 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1360) + _871 + -mem[64] + 60]
                    else:
                        require 0 < signers.length
                        idx = 0
                        while signers[idx] != address(cd[4]):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require cd[100] >= block.timestamp
                        idx = 0
                        s = 2
                        t = _871 + 32
                        while idx < 10:
                            mem[t] = stor[s]
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0xb1cec223: mem[_871 + 32 len 320]
                        require 0 < signers.length
                        mem[0] = 0
                        idx = 0
                        while signers[idx] != address(signer):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require address(signer) != msg.sender
                        _1984 = mem[96]
                        mem[_871 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if not _1984 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1984 + _871 + -mem[64] + 28]
                        else:
                            mem[floor32(_1984) + _871 + 32] = mem[floor32(_1984) + _871 + -(_1984 % 32) + 64 len _1984 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1984) + _871 + -mem[64] + 60]
                else:
                    _879 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_879 + 32] = _512
                    mem[_879 + 64] = uint8(uint8(_847) - 14)
                    mem[_879 + 96] = _845
                    mem[_879 + 128] = _846
                    signer = erecover(_512, uint8(_847) - 14 << 248, _845, _846) 
                    mem[_879] = signer
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not stor1:
                        require cd[100] >= block.timestamp
                        idx = 0
                        s = 2
                        t = _879 + 32
                        while idx < 10:
                            mem[t] = stor[s]
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0xb1cec223: mem[_879 + 32 len 320]
                        require 0 < signers.length
                        mem[0] = 0
                        idx = 0
                        while signers[idx] != address(signer):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require address(signer) != msg.sender
                        _1362 = mem[96]
                        mem[_879 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        var166001 = ceil32(_1362)
                        if not _1362 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1362 + _879 + -mem[64] + 28]
                        else:
                            mem[floor32(_1362) + _879 + 32] = mem[floor32(_1362) + _879 + -(_1362 % 32) + 64 len _1362 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1362) + _879 + -mem[64] + 60]
                    else:
                        require 0 < signers.length
                        idx = 0
                        while signers[idx] != address(cd[4]):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require cd[100] >= block.timestamp
                        idx = 0
                        s = 2
                        t = _879 + 32
                        while idx < 10:
                            mem[t] = stor[s]
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0xb1cec223: mem[_879 + 32 len 320]
                        require 0 < signers.length
                        mem[0] = 0
                        idx = 0
                        while signers[idx] != address(signer):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require address(signer) != msg.sender
                        _1986 = mem[96]
                        mem[_879 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if not _1986 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1986 + _879 + -mem[64] + 28]
                        else:
                            mem[floor32(_1986) + _879 + 32] = mem[floor32(_1986) + _879 + -(_1986 % 32) + 64 len _1986 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1986) + _879 + -mem[64] + 60]
    else:
        mem[mem[64] + mem[96] + 192] = 0
        mem[mem[64] + 96] = cd[100]
        mem[mem[64] + 128] = cd[132]
        emit 0x1e816970: address(cd[4]), cd[36], 160, cd[100], cd[132], mem[mem[64] + 160 len ceil32(_514) + 32]
        _676 = mem[64]
        mem[mem[64]] = 64
        _678 = mem[_343]
        mem[mem[64] + 64] = mem[_343]
        mem[mem[64] + 96 len ceil32(_678)] = mem[_343 + 32 len ceil32(_678)]
        if ceil32(_678) <= _678:
            mem[mem[64] + 32] = _512
            emit 0x7d101e99: mem[mem[64] len _676 + ceil32(_678) + -mem[64] + 96]
            require 65 == mem[_343]
            _841 = mem[_343 + 32]
            _842 = mem[_343 + 64]
            _843 = mem[_343 + 65]
            if mem[_343 + 96 len 1] <= 35:
                if mem[_343 + 96 len 1] >= 27:
                    _853 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_853 + 32] = _512
                    mem[_853 + 64] = uint8(_843)
                    mem[_853 + 96] = _841
                    mem[_853 + 128] = _842
                    signer = erecover(_512, _843 << 248, _841, _842) 
                    mem[_853] = signer
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not stor1:
                        require cd[100] >= block.timestamp
                        idx = 0
                        s = 2
                        t = _853 + 32
                        while idx < 10:
                            mem[t] = stor[s]
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0xb1cec223: mem[_853 + 32 len 320]
                        require 0 < signers.length
                        mem[0] = 0
                        idx = 0
                        while signers[idx] != address(signer):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require address(signer) != msg.sender
                        _1364 = mem[96]
                        mem[_853 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        var164001 = ceil32(_1364)
                        if not _1364 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1364 + _853 + -mem[64] + 28]
                        else:
                            mem[floor32(_1364) + _853 + 32] = mem[floor32(_1364) + _853 + -(_1364 % 32) + 64 len _1364 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1364) + _853 + -mem[64] + 60]
                    else:
                        require 0 < signers.length
                        idx = 0
                        while signers[idx] != address(cd[4]):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require cd[100] >= block.timestamp
                        idx = 0
                        s = 2
                        t = _853 + 32
                        while idx < 10:
                            mem[t] = stor[s]
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0xb1cec223: mem[_853 + 32 len 320]
                        require 0 < signers.length
                        mem[0] = 0
                        idx = 0
                        while signers[idx] != address(signer):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require address(signer) != msg.sender
                        _1988 = mem[96]
                        mem[_853 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if not _1988 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1988 + _853 + -mem[64] + 28]
                        else:
                            mem[floor32(_1988) + _853 + 32] = mem[floor32(_1988) + _853 + -(_1988 % 32) + 64 len _1988 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1988) + _853 + -mem[64] + 60]
                else:
                    _861 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_861 + 32] = _512
                    mem[_861 + 64] = uint8(uint8(_843) + 27)
                    mem[_861 + 96] = _841
                    mem[_861 + 128] = _842
                    signer = erecover(_512, uint8(_843) + 27 << 248, _841, _842) 
                    mem[_861] = signer
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not stor1:
                        require cd[100] >= block.timestamp
                        idx = 0
                        s = 2
                        t = _861 + 32
                        while idx < 10:
                            mem[t] = stor[s]
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0xb1cec223: mem[_861 + 32 len 320]
                        require 0 < signers.length
                        mem[0] = 0
                        idx = 0
                        while signers[idx] != address(signer):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require address(signer) != msg.sender
                        _1366 = mem[96]
                        mem[_861 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        var165001 = ceil32(_1366)
                        if not _1366 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1366 + _861 + -mem[64] + 28]
                        else:
                            mem[floor32(_1366) + _861 + 32] = mem[floor32(_1366) + _861 + -(_1366 % 32) + 64 len _1366 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1366) + _861 + -mem[64] + 60]
                    else:
                        require 0 < signers.length
                        idx = 0
                        while signers[idx] != address(cd[4]):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require cd[100] >= block.timestamp
                        idx = 0
                        s = 2
                        t = _861 + 32
                        while idx < 10:
                            mem[t] = stor[s]
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0xb1cec223: mem[_861 + 32 len 320]
                        require 0 < signers.length
                        mem[0] = 0
                        idx = 0
                        while signers[idx] != address(signer):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require address(signer) != msg.sender
                        _1990 = mem[96]
                        mem[_861 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if not _1990 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1990 + _861 + -mem[64] + 28]
                        else:
                            mem[floor32(_1990) + _861 + 32] = mem[floor32(_1990) + _861 + -(_1990 % 32) + 64 len _1990 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1990) + _861 + -mem[64] + 60]
            else:
                if uint8(mem[_343 + 96 len 1] - 41) >= 27:
                    _863 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_863 + 32] = _512
                    mem[_863 + 64] = uint8(uint8(_843) - 41)
                    mem[_863 + 96] = _841
                    mem[_863 + 128] = _842
                    signer = erecover(_512, uint8(_843) - 41 << 248, _841, _842) 
                    mem[_863] = signer
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not stor1:
                        require cd[100] >= block.timestamp
                        idx = 0
                        s = 2
                        t = _863 + 32
                        while idx < 10:
                            mem[t] = stor[s]
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0xb1cec223: mem[_863 + 32 len 320]
                        require 0 < signers.length
                        mem[0] = 0
                        idx = 0
                        while signers[idx] != address(signer):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require address(signer) != msg.sender
                        _1368 = mem[96]
                        mem[_863 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        var165001 = ceil32(_1368)
                        if not _1368 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1368 + _863 + -mem[64] + 28]
                        else:
                            mem[floor32(_1368) + _863 + 32] = mem[floor32(_1368) + _863 + -(_1368 % 32) + 64 len _1368 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1368) + _863 + -mem[64] + 60]
                    else:
                        require 0 < signers.length
                        idx = 0
                        while signers[idx] != address(cd[4]):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require cd[100] >= block.timestamp
                        idx = 0
                        s = 2
                        t = _863 + 32
                        while idx < 10:
                            mem[t] = stor[s]
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0xb1cec223: mem[_863 + 32 len 320]
                        require 0 < signers.length
                        mem[0] = 0
                        idx = 0
                        while signers[idx] != address(signer):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require address(signer) != msg.sender
                        _1992 = mem[96]
                        mem[_863 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if not _1992 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1992 + _863 + -mem[64] + 28]
                        else:
                            mem[floor32(_1992) + _863 + 32] = mem[floor32(_1992) + _863 + -(_1992 % 32) + 64 len _1992 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1992) + _863 + -mem[64] + 60]
                else:
                    _873 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_873 + 32] = _512
                    mem[_873 + 64] = uint8(uint8(_843) - 14)
                    mem[_873 + 96] = _841
                    mem[_873 + 128] = _842
                    signer = erecover(_512, uint8(_843) - 14 << 248, _841, _842) 
                    mem[_873] = signer
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not stor1:
                        require cd[100] >= block.timestamp
                        idx = 0
                        s = 2
                        t = _873 + 32
                        while idx < 10:
                            mem[t] = stor[s]
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0xb1cec223: mem[_873 + 32 len 320]
                        require 0 < signers.length
                        mem[0] = 0
                        idx = 0
                        while signers[idx] != address(signer):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require address(signer) != msg.sender
                        _1370 = mem[96]
                        mem[_873 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        var166001 = ceil32(_1370)
                        if not _1370 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1370 + _873 + -mem[64] + 28]
                        else:
                            mem[floor32(_1370) + _873 + 32] = mem[floor32(_1370) + _873 + -(_1370 % 32) + 64 len _1370 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1370) + _873 + -mem[64] + 60]
                    else:
                        require 0 < signers.length
                        idx = 0
                        while signers[idx] != address(cd[4]):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require cd[100] >= block.timestamp
                        idx = 0
                        s = 2
                        t = _873 + 32
                        while idx < 10:
                            mem[t] = stor[s]
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0xb1cec223: mem[_873 + 32 len 320]
                        require 0 < signers.length
                        mem[0] = 0
                        idx = 0
                        while signers[idx] != address(signer):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require address(signer) != msg.sender
                        _1994 = mem[96]
                        mem[_873 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if not _1994 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1994 + _873 + -mem[64] + 28]
                        else:
                            mem[floor32(_1994) + _873 + 32] = mem[floor32(_1994) + _873 + -(_1994 % 32) + 64 len _1994 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1994) + _873 + -mem[64] + 60]
        else:
            mem[mem[64] + _678 + 96] = 0
            mem[mem[64] + 32] = _512
            emit 0x7d101e99: mem[mem[64] len _676 + ceil32(_678) + -mem[64] + 96]
            require 65 == mem[_343]
            _848 = mem[_343 + 32]
            _849 = mem[_343 + 64]
            _850 = mem[_343 + 65]
            if mem[_343 + 96 len 1] <= 35:
                if mem[_343 + 96 len 1] >= 27:
                    _865 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_865 + 32] = _512
                    mem[_865 + 64] = uint8(_850)
                    mem[_865 + 96] = _848
                    mem[_865 + 128] = _849
                    signer = erecover(_512, _850 << 248, _848, _849) 
                    mem[_865] = signer
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not stor1:
                        require cd[100] >= block.timestamp
                        idx = 0
                        s = 2
                        t = _865 + 32
                        while idx < 10:
                            mem[t] = stor[s]
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0xb1cec223: mem[_865 + 32 len 320]
                        require 0 < signers.length
                        mem[0] = 0
                        idx = 0
                        while signers[idx] != address(signer):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require address(signer) != msg.sender
                        _1372 = mem[96]
                        mem[_865 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        var165001 = ceil32(_1372)
                        if not _1372 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1372 + _865 + -mem[64] + 28]
                        else:
                            mem[floor32(_1372) + _865 + 32] = mem[floor32(_1372) + _865 + -(_1372 % 32) + 64 len _1372 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1372) + _865 + -mem[64] + 60]
                    else:
                        require 0 < signers.length
                        idx = 0
                        while signers[idx] != address(cd[4]):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require cd[100] >= block.timestamp
                        idx = 0
                        s = 2
                        t = _865 + 32
                        while idx < 10:
                            mem[t] = stor[s]
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0xb1cec223: mem[_865 + 32 len 320]
                        require 0 < signers.length
                        mem[0] = 0
                        idx = 0
                        while signers[idx] != address(signer):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require address(signer) != msg.sender
                        _1996 = mem[96]
                        mem[_865 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if not _1996 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1996 + _865 + -mem[64] + 28]
                        else:
                            mem[floor32(_1996) + _865 + 32] = mem[floor32(_1996) + _865 + -(_1996 % 32) + 64 len _1996 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1996) + _865 + -mem[64] + 60]
                else:
                    _875 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_875 + 32] = _512
                    mem[_875 + 64] = uint8(uint8(_850) + 27)
                    mem[_875 + 96] = _848
                    mem[_875 + 128] = _849
                    signer = erecover(_512, uint8(_850) + 27 << 248, _848, _849) 
                    mem[_875] = signer
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not stor1:
                        require cd[100] >= block.timestamp
                        idx = 0
                        s = 2
                        t = _875 + 32
                        while idx < 10:
                            mem[t] = stor[s]
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0xb1cec223: mem[_875 + 32 len 320]
                        require 0 < signers.length
                        mem[0] = 0
                        idx = 0
                        while signers[idx] != address(signer):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require address(signer) != msg.sender
                        _1374 = mem[96]
                        mem[_875 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        var166001 = ceil32(_1374)
                        if not _1374 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1374 + _875 + -mem[64] + 28]
                        else:
                            mem[floor32(_1374) + _875 + 32] = mem[floor32(_1374) + _875 + -(_1374 % 32) + 64 len _1374 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1374) + _875 + -mem[64] + 60]
                    else:
                        require 0 < signers.length
                        idx = 0
                        while signers[idx] != address(cd[4]):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require cd[100] >= block.timestamp
                        idx = 0
                        s = 2
                        t = _875 + 32
                        while idx < 10:
                            mem[t] = stor[s]
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0xb1cec223: mem[_875 + 32 len 320]
                        require 0 < signers.length
                        mem[0] = 0
                        idx = 0
                        while signers[idx] != address(signer):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require address(signer) != msg.sender
                        _1998 = mem[96]
                        mem[_875 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if not _1998 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1998 + _875 + -mem[64] + 28]
                        else:
                            mem[floor32(_1998) + _875 + 32] = mem[floor32(_1998) + _875 + -(_1998 % 32) + 64 len _1998 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1998) + _875 + -mem[64] + 60]
            else:
                if uint8(mem[_343 + 96 len 1] - 41) >= 27:
                    _877 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_877 + 32] = _512
                    mem[_877 + 64] = uint8(uint8(_850) - 41)
                    mem[_877 + 96] = _848
                    mem[_877 + 128] = _849
                    signer = erecover(_512, uint8(_850) - 41 << 248, _848, _849) 
                    mem[_877] = signer
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not stor1:
                        require cd[100] >= block.timestamp
                        idx = 0
                        s = 2
                        t = _877 + 32
                        while idx < 10:
                            mem[t] = stor[s]
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0xb1cec223: mem[_877 + 32 len 320]
                        require 0 < signers.length
                        mem[0] = 0
                        idx = 0
                        while signers[idx] != address(signer):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require address(signer) != msg.sender
                        _1376 = mem[96]
                        mem[_877 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        var166001 = ceil32(_1376)
                        if not _1376 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1376 + _877 + -mem[64] + 28]
                        else:
                            mem[floor32(_1376) + _877 + 32] = mem[floor32(_1376) + _877 + -(_1376 % 32) + 64 len _1376 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1376) + _877 + -mem[64] + 60]
                    else:
                        require 0 < signers.length
                        idx = 0
                        while signers[idx] != address(cd[4]):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require cd[100] >= block.timestamp
                        idx = 0
                        s = 2
                        t = _877 + 32
                        while idx < 10:
                            mem[t] = stor[s]
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0xb1cec223: mem[_877 + 32 len 320]
                        require 0 < signers.length
                        mem[0] = 0
                        idx = 0
                        while signers[idx] != address(signer):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require address(signer) != msg.sender
                        _2000 = mem[96]
                        mem[_877 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if not _2000 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2000 + _877 + -mem[64] + 28]
                        else:
                            mem[floor32(_2000) + _877 + 32] = mem[floor32(_2000) + _877 + -(_2000 % 32) + 64 len _2000 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_2000) + _877 + -mem[64] + 60]
                else:
                    _881 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_881 + 32] = _512
                    mem[_881 + 64] = uint8(uint8(_850) - 14)
                    mem[_881 + 96] = _848
                    mem[_881 + 128] = _849
                    signer = erecover(_512, uint8(_850) - 14 << 248, _848, _849) 
                    mem[_881] = signer
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not stor1:
                        require cd[100] >= block.timestamp
                        idx = 0
                        s = 2
                        t = _881 + 32
                        while idx < 10:
                            mem[t] = stor[s]
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0xb1cec223: mem[_881 + 32 len 320]
                        require 0 < signers.length
                        mem[0] = 0
                        idx = 0
                        while signers[idx] != address(signer):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require address(signer) != msg.sender
                        _1378 = mem[96]
                        mem[_881 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        var167001 = ceil32(_1378)
                        if not _1378 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1378 + _881 + -mem[64] + 28]
                        else:
                            mem[floor32(_1378) + _881 + 32] = mem[floor32(_1378) + _881 + -(_1378 % 32) + 64 len _1378 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1378) + _881 + -mem[64] + 60]
                    else:
                        require 0 < signers.length
                        idx = 0
                        while signers[idx] != address(cd[4]):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require cd[100] >= block.timestamp
                        idx = 0
                        s = 2
                        t = _881 + 32
                        while idx < 10:
                            mem[t] = stor[s]
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0xb1cec223: mem[_881 + 32 len 320]
                        require 0 < signers.length
                        mem[0] = 0
                        idx = 0
                        while signers[idx] != address(signer):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require address(signer) != msg.sender
                        _2002 = mem[96]
                        mem[_881 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if not _2002 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2002 + _881 + -mem[64] + 28]
                        else:
                            mem[floor32(_2002) + _881 + 32] = mem[floor32(_2002) + _881 + -(_2002 % 32) + 64 len _2002 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_2002) + _881 + -mem[64] + 60]
    require ext_call.success
    mem[mem[64]] = msg.sender
    mem[mem[64] + 32] = address(signer)
    mem[mem[64] + 64] = _512
    mem[mem[64] + 96] = address(cd[4])
    mem[mem[64] + 128] = cd[36]
    mem[mem[64] + 160] = 192
    mem[mem[64] + 192] = mem[96]
    mem[mem[64] + 224 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(mem[96]) <= mem[96]:
        emit Transacted(msg.sender, address(signer), _512, address(cd[4]), cd[36], Array(len=mem[96], data=mem[mem[64] + 224 len ceil32(mem[96])]));
    else:
        mem[mem[64] + mem[96] + 224] = 0
        emit Transacted(address arg1, address arg2, bytes32 arg3, address arg4, uint256 arg5, bytes arg6):
                        msg.sender,
                        address(signer),
                        _512,
                        address(cd[4]),
                        cd[36],
                        192,
                        mem[mem[64] + 192 len ceil32(mem[96]) + 32],
}



}
