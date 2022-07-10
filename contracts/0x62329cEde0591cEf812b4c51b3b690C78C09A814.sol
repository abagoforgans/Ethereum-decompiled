contract main {




// =====================  Runtime code  =====================


array of address signers;
uint8 safeMode;
array of uint256 stor2;

function signers(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < signers.length
    return signers[arg1]
}

function safeMode() {
    return bool(safeMode)
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
                    code: code.data[4196 len 1217]
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
    safeMode = 1
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
        if uint8(mem[192 len 1] - 37) >= 27:
            mem[ceil32(arg6.length) + 192] = uint8(uint8(_49) - 37)
            mem[ceil32(arg6.length) + 224] = mem[128]
            mem[ceil32(arg6.length) + 256] = _48
            signer = erecover(sha3(0, arg1, arg2, arg3, arg4, arg5), uint8(_49) - 37 << 248, mem[128], _48) 
        else:
            mem[ceil32(arg6.length) + 192] = uint8(uint8(_49) - 10)
            mem[ceil32(arg6.length) + 224] = mem[128]
            mem[ceil32(arg6.length) + 256] = _48
            signer = erecover(sha3(0, arg1, arg2, arg3, arg4, arg5), uint8(_49) - 10 << 248, mem[128], _48) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if safeMode:
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
        mem[t] = uint256(stor[s])
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    emit 0xb1cec223: mem[ceil32(arg6.length) + 160 len 320]
    idx = 0
    s = 0
    t = ceil32(arg6.length) + 224
    while idx < signers.length:
        mem[t] = signers[s]
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    emit 0x3b563b7e: Array(len=signers.length, data=mem[ceil32(arg6.length) + 224 len 32 * signers.length])
    require 0 < signers.length
    idx = 0
    while signers[idx] != msg.sender:
        require idx + 1 < signers.length
        mem[0] = 0
        idx = idx + 1
        continue 
    idx = 0
    while idx < 10:
        require stor2[idx] != arg5
        require idx < 10
        idx = idx + 1
        continue 
    require arg5 >= stor2.length
    require arg5 <= stor2.length + 10000
    stor2.length = arg5
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
    mem[mem[64]] = 'ETHER'
    mem[mem[64] + 5] = address(cd[4])
    mem[mem[64] + 25] = cd[36]
    mem[mem[64] + 57 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + floor32(mem[96]) + 57] = 256^(-(mem[96] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[96]) + 57] or mem[floor32(mem[96]) + 128] and !(256^(-(mem[96] % 32) + 32) - 1)
    mem[mem[64] + mem[96] + 57] = cd[100]
    mem[mem[64] + mem[96] + 89] = cd[132]
    _512 = sha3('ETHER', address(cd[4]), cd[36], mem[mem[64] + 57 len mem[96] + 32], cd[132])
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
            if mem[_343 + 96 len 1] > 35:
                if uint8(mem[_343 + 96 len 1] - 37) >= 27:
                    _857 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_857 + 32] = _512
                    mem[_857 + 64] = uint8(uint8(_839) - 37)
                    mem[_857 + 96] = _837
                    mem[_857 + 128] = _838
                    signer = erecover(_512, uint8(_839) - 37 << 248, _837, _838) 
                    mem[_857] = signer
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not safeMode:
                        require cd[100] >= block.timestamp
                        idx = 0
                        s = 2
                        t = _857 + 32
                        while idx < 10:
                            mem[t] = uint256(stor[s])
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0xb1cec223: mem[_857 + 32 len 320]
                        mem[_857 + 32] = 32
                        mem[_857 + 64] = signers.length
                        mem[0] = 0
                        idx = 0
                        s = 0
                        t = _857 + 96
                        while idx < signers.length:
                            mem[t] = address(stor[s + sha3(mem[0])])
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0x3b563b7e: mem[mem[64] len _857 + (32 * signers.length) + -mem[64] + 96]
                        require 0 < signers.length
                        idx = 0
                        while signers[idx] != msg.sender:
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        idx = 0
                        while idx < 10:
                            require stor2[idx] != cd[132]
                            require idx < 10
                            idx = idx + 1
                            continue 
                        require cd[132] >= stor2.length
                        require cd[132] <= stor2.length + 10000
                        stor2.length = cd[132]
                        require 0 < signers.length
                        mem[0] = 0
                        idx = 0
                        while signers[idx] != address(signer):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require address(signer) != msg.sender
                        _1528 = mem[96]
                        mem[mem[64] len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        var194001 = ceil32(_1528)
                        if not _1528 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1528 - 4]
                        else:
                            mem[floor32(_1528) + mem[64]] = mem[floor32(_1528) + mem[64] + -(_1528 % 32) + 32 len _1528 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1528) + 28]
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
                            mem[t] = uint256(stor[s])
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0xb1cec223: mem[_857 + 32 len 320]
                        mem[_857 + 32] = 32
                        mem[_857 + 64] = signers.length
                        mem[0] = 0
                        idx = 0
                        s = 0
                        t = _857 + 96
                        while idx < signers.length:
                            mem[t] = address(stor[s + sha3(mem[0])])
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0x3b563b7e: mem[mem[64] len _857 + (32 * signers.length) + -mem[64] + 96]
                        require 0 < signers.length
                        idx = 0
                        while signers[idx] != msg.sender:
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        idx = 0
                        while idx < 10:
                            require stor2[idx] != cd[132]
                            require idx < 10
                            idx = idx + 1
                            continue 
                        require cd[132] >= stor2.length
                        require cd[132] <= stor2.length + 10000
                        stor2.length = cd[132]
                        require 0 < signers.length
                        mem[0] = 0
                        idx = 0
                        while signers[idx] != address(signer):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require address(signer) != msg.sender
                        _2168 = mem[96]
                        mem[mem[64] len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if not _2168 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2168 - 4]
                        else:
                            mem[floor32(_2168) + mem[64]] = mem[floor32(_2168) + mem[64] + -(_2168 % 32) + 32 len _2168 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_2168) + 28]
                else:
                    _867 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_867 + 32] = _512
                    mem[_867 + 64] = uint8(uint8(_839) - 10)
                    mem[_867 + 96] = _837
                    mem[_867 + 128] = _838
                    signer = erecover(_512, uint8(_839) - 10 << 248, _837, _838) 
                    mem[_867] = signer
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not safeMode:
                        require cd[100] >= block.timestamp
                        idx = 0
                        s = 2
                        t = _867 + 32
                        while idx < 10:
                            mem[t] = uint256(stor[s])
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0xb1cec223: mem[_867 + 32 len 320]
                        mem[_867 + 32] = 32
                        mem[_867 + 64] = signers.length
                        mem[0] = 0
                        idx = 0
                        s = 0
                        t = _867 + 96
                        while idx < signers.length:
                            mem[t] = address(stor[s + sha3(mem[0])])
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0x3b563b7e: mem[mem[64] len _867 + (32 * signers.length) + -mem[64] + 96]
                        require 0 < signers.length
                        idx = 0
                        while signers[idx] != msg.sender:
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        idx = 0
                        while idx < 10:
                            require stor2[idx] != cd[132]
                            require idx < 10
                            idx = idx + 1
                            continue 
                        require cd[132] >= stor2.length
                        require cd[132] <= stor2.length + 10000
                        stor2.length = cd[132]
                        require 0 < signers.length
                        mem[0] = 0
                        idx = 0
                        while signers[idx] != address(signer):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require address(signer) != msg.sender
                        _1530 = mem[96]
                        mem[mem[64] len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        var195001 = ceil32(_1530)
                        if not _1530 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1530 - 4]
                        else:
                            mem[floor32(_1530) + mem[64]] = mem[floor32(_1530) + mem[64] + -(_1530 % 32) + 32 len _1530 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1530) + 28]
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
                            mem[t] = uint256(stor[s])
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0xb1cec223: mem[_867 + 32 len 320]
                        mem[_867 + 32] = 32
                        mem[_867 + 64] = signers.length
                        mem[0] = 0
                        idx = 0
                        s = 0
                        t = _867 + 96
                        while idx < signers.length:
                            mem[t] = address(stor[s + sha3(mem[0])])
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0x3b563b7e: mem[mem[64] len _867 + (32 * signers.length) + -mem[64] + 96]
                        require 0 < signers.length
                        idx = 0
                        while signers[idx] != msg.sender:
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        idx = 0
                        while idx < 10:
                            require stor2[idx] != cd[132]
                            require idx < 10
                            idx = idx + 1
                            continue 
                        require cd[132] >= stor2.length
                        require cd[132] <= stor2.length + 10000
                        stor2.length = cd[132]
                        require 0 < signers.length
                        mem[0] = 0
                        idx = 0
                        while signers[idx] != address(signer):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require address(signer) != msg.sender
                        _2170 = mem[96]
                        mem[mem[64] len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if not _2170 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2170 - 4]
                        else:
                            mem[floor32(_2170) + mem[64]] = mem[floor32(_2170) + mem[64] + -(_2170 % 32) + 32 len _2170 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_2170) + 28]
            else:
                if mem[_343 + 96 len 1] < 27:
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
                    if not safeMode:
                        require cd[100] >= block.timestamp
                        idx = 0
                        s = 2
                        t = _855 + 32
                        while idx < 10:
                            mem[t] = uint256(stor[s])
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0xb1cec223: mem[_855 + 32 len 320]
                        mem[_855 + 32] = 32
                        mem[_855 + 64] = signers.length
                        mem[0] = 0
                        idx = 0
                        s = 0
                        t = _855 + 96
                        while idx < signers.length:
                            mem[t] = address(stor[s + sha3(mem[0])])
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0x3b563b7e: mem[mem[64] len _855 + (32 * signers.length) + -mem[64] + 96]
                        require 0 < signers.length
                        idx = 0
                        while signers[idx] != msg.sender:
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        idx = 0
                        while idx < 10:
                            require stor2[idx] != cd[132]
                            require idx < 10
                            idx = idx + 1
                            continue 
                        require cd[132] >= stor2.length
                        require cd[132] <= stor2.length + 10000
                        stor2.length = cd[132]
                        require 0 < signers.length
                        mem[0] = 0
                        idx = 0
                        while signers[idx] != address(signer):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require address(signer) != msg.sender
                        _1526 = mem[96]
                        mem[mem[64] len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        var194001 = ceil32(_1526)
                        if not _1526 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1526 - 4]
                        else:
                            mem[floor32(_1526) + mem[64]] = mem[floor32(_1526) + mem[64] + -(_1526 % 32) + 32 len _1526 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1526) + 28]
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
                            mem[t] = uint256(stor[s])
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0xb1cec223: mem[_855 + 32 len 320]
                        mem[_855 + 32] = 32
                        mem[_855 + 64] = signers.length
                        mem[0] = 0
                        idx = 0
                        s = 0
                        t = _855 + 96
                        while idx < signers.length:
                            mem[t] = address(stor[s + sha3(mem[0])])
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0x3b563b7e: mem[mem[64] len _855 + (32 * signers.length) + -mem[64] + 96]
                        require 0 < signers.length
                        idx = 0
                        while signers[idx] != msg.sender:
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        idx = 0
                        while idx < 10:
                            require stor2[idx] != cd[132]
                            require idx < 10
                            idx = idx + 1
                            continue 
                        require cd[132] >= stor2.length
                        require cd[132] <= stor2.length + 10000
                        stor2.length = cd[132]
                        require 0 < signers.length
                        mem[0] = 0
                        idx = 0
                        while signers[idx] != address(signer):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require address(signer) != msg.sender
                        _2166 = mem[96]
                        mem[mem[64] len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if not _2166 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2166 - 4]
                        else:
                            mem[floor32(_2166) + mem[64]] = mem[floor32(_2166) + mem[64] + -(_2166 % 32) + 32 len _2166 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_2166) + 28]
                else:
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
                    if not safeMode:
                        require cd[100] >= block.timestamp
                        idx = 0
                        s = 2
                        t = _851 + 32
                        while idx < 10:
                            mem[t] = uint256(stor[s])
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0xb1cec223: mem[_851 + 32 len 320]
                        mem[_851 + 32] = 32
                        mem[_851 + 64] = signers.length
                        mem[0] = 0
                        idx = 0
                        s = 0
                        t = _851 + 96
                        while idx < signers.length:
                            mem[t] = address(stor[s + sha3(mem[0])])
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0x3b563b7e: mem[mem[64] len _851 + (32 * signers.length) + -mem[64] + 96]
                        require 0 < signers.length
                        idx = 0
                        while signers[idx] != msg.sender:
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        idx = 0
                        while idx < 10:
                            require stor2[idx] != cd[132]
                            require idx < 10
                            idx = idx + 1
                            continue 
                        require cd[132] >= stor2.length
                        require cd[132] <= stor2.length + 10000
                        stor2.length = cd[132]
                        require 0 < signers.length
                        mem[0] = 0
                        idx = 0
                        while signers[idx] != address(signer):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require address(signer) != msg.sender
                        _1524 = mem[96]
                        mem[mem[64] len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if not _1524 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1524 - 4]
                        else:
                            mem[floor32(_1524) + mem[64]] = mem[floor32(_1524) + mem[64] + -(_1524 % 32) + 32 len _1524 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1524) + 28]
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
                            mem[t] = uint256(stor[s])
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0xb1cec223: mem[_851 + 32 len 320]
                        mem[_851 + 32] = 32
                        mem[_851 + 64] = signers.length
                        mem[0] = 0
                        idx = 0
                        s = 0
                        t = _851 + 96
                        while idx < signers.length:
                            mem[t] = address(stor[s + sha3(mem[0])])
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0x3b563b7e: mem[mem[64] len _851 + (32 * signers.length) + -mem[64] + 96]
                        require 0 < signers.length
                        idx = 0
                        while signers[idx] != msg.sender:
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        idx = 0
                        while idx < 10:
                            require stor2[idx] != cd[132]
                            require idx < 10
                            idx = idx + 1
                            continue 
                        require cd[132] >= stor2.length
                        require cd[132] <= stor2.length + 10000
                        stor2.length = cd[132]
                        require 0 < signers.length
                        mem[0] = 0
                        idx = 0
                        while signers[idx] != address(signer):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require address(signer) != msg.sender
                        _2163 = mem[64]
                        _2164 = mem[96]
                        mem[mem[64] len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if not _2164 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2164 - 4]
                        else:
                            mem[floor32(_2164) + mem[64]] = mem[floor32(_2164) + mem[64] + -(_2164 % 32) + 32 len _2164 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_2164) + _2163 + -mem[64] + 28]
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
                    if not safeMode:
                        require cd[100] >= block.timestamp
                        idx = 0
                        s = 2
                        t = _859 + 32
                        while idx < 10:
                            mem[t] = uint256(stor[s])
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0xb1cec223: mem[_859 + 32 len 320]
                        mem[_859 + 32] = 32
                        mem[_859 + 64] = signers.length
                        mem[0] = 0
                        idx = 0
                        s = 0
                        t = _859 + 96
                        while idx < signers.length:
                            mem[t] = address(stor[s + sha3(mem[0])])
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0x3b563b7e: mem[mem[64] len _859 + (32 * signers.length) + -mem[64] + 96]
                        require 0 < signers.length
                        idx = 0
                        while signers[idx] != msg.sender:
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        idx = 0
                        while idx < 10:
                            require stor2[idx] != cd[132]
                            require idx < 10
                            idx = idx + 1
                            continue 
                        require cd[132] >= stor2.length
                        require cd[132] <= stor2.length + 10000
                        stor2.length = cd[132]
                        require 0 < signers.length
                        mem[0] = 0
                        idx = 0
                        while signers[idx] != address(signer):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require address(signer) != msg.sender
                        _1532 = mem[96]
                        mem[mem[64] len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        var194001 = ceil32(_1532)
                        if not _1532 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1532 - 4]
                        else:
                            mem[floor32(_1532) + mem[64]] = mem[floor32(_1532) + mem[64] + -(_1532 % 32) + 32 len _1532 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1532) + 28]
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
                            mem[t] = uint256(stor[s])
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0xb1cec223: mem[_859 + 32 len 320]
                        mem[_859 + 32] = 32
                        mem[_859 + 64] = signers.length
                        mem[0] = 0
                        idx = 0
                        s = 0
                        t = _859 + 96
                        while idx < signers.length:
                            mem[t] = address(stor[s + sha3(mem[0])])
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0x3b563b7e: mem[mem[64] len _859 + (32 * signers.length) + -mem[64] + 96]
                        require 0 < signers.length
                        idx = 0
                        while signers[idx] != msg.sender:
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        idx = 0
                        while idx < 10:
                            require stor2[idx] != cd[132]
                            require idx < 10
                            idx = idx + 1
                            continue 
                        require cd[132] >= stor2.length
                        require cd[132] <= stor2.length + 10000
                        stor2.length = cd[132]
                        require 0 < signers.length
                        mem[0] = 0
                        idx = 0
                        while signers[idx] != address(signer):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require address(signer) != msg.sender
                        _2172 = mem[96]
                        mem[mem[64] len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if not _2172 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2172 - 4]
                        else:
                            mem[floor32(_2172) + mem[64]] = mem[floor32(_2172) + mem[64] + -(_2172 % 32) + 32 len _2172 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_2172) + 28]
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
                    if not safeMode:
                        require cd[100] >= block.timestamp
                        idx = 0
                        s = 2
                        t = _869 + 32
                        while idx < 10:
                            mem[t] = uint256(stor[s])
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0xb1cec223: mem[_869 + 32 len 320]
                        mem[_869 + 32] = 32
                        mem[_869 + 64] = signers.length
                        mem[0] = 0
                        idx = 0
                        s = 0
                        t = _869 + 96
                        while idx < signers.length:
                            mem[t] = address(stor[s + sha3(mem[0])])
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0x3b563b7e: mem[mem[64] len _869 + (32 * signers.length) + -mem[64] + 96]
                        require 0 < signers.length
                        idx = 0
                        while signers[idx] != msg.sender:
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        idx = 0
                        while idx < 10:
                            require stor2[idx] != cd[132]
                            require idx < 10
                            idx = idx + 1
                            continue 
                        require cd[132] >= stor2.length
                        require cd[132] <= stor2.length + 10000
                        stor2.length = cd[132]
                        require 0 < signers.length
                        mem[0] = 0
                        idx = 0
                        while signers[idx] != address(signer):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require address(signer) != msg.sender
                        _1534 = mem[96]
                        mem[mem[64] len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        var195001 = ceil32(_1534)
                        if not _1534 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1534 - 4]
                        else:
                            mem[floor32(_1534) + mem[64]] = mem[floor32(_1534) + mem[64] + -(_1534 % 32) + 32 len _1534 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1534) + 28]
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
                            mem[t] = uint256(stor[s])
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0xb1cec223: mem[_869 + 32 len 320]
                        mem[_869 + 32] = 32
                        mem[_869 + 64] = signers.length
                        mem[0] = 0
                        idx = 0
                        s = 0
                        t = _869 + 96
                        while idx < signers.length:
                            mem[t] = address(stor[s + sha3(mem[0])])
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0x3b563b7e: mem[mem[64] len _869 + (32 * signers.length) + -mem[64] + 96]
                        require 0 < signers.length
                        idx = 0
                        while signers[idx] != msg.sender:
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        idx = 0
                        while idx < 10:
                            require stor2[idx] != cd[132]
                            require idx < 10
                            idx = idx + 1
                            continue 
                        require cd[132] >= stor2.length
                        require cd[132] <= stor2.length + 10000
                        stor2.length = cd[132]
                        require 0 < signers.length
                        mem[0] = 0
                        idx = 0
                        while signers[idx] != address(signer):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require address(signer) != msg.sender
                        _2174 = mem[96]
                        mem[mem[64] len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if not _2174 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2174 - 4]
                        else:
                            mem[floor32(_2174) + mem[64]] = mem[floor32(_2174) + mem[64] + -(_2174 % 32) + 32 len _2174 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_2174) + 28]
            else:
                if uint8(mem[_343 + 96 len 1] - 37) >= 27:
                    _871 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_871 + 32] = _512
                    mem[_871 + 64] = uint8(uint8(_847) - 37)
                    mem[_871 + 96] = _845
                    mem[_871 + 128] = _846
                    signer = erecover(_512, uint8(_847) - 37 << 248, _845, _846) 
                    mem[_871] = signer
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not safeMode:
                        require cd[100] >= block.timestamp
                        idx = 0
                        s = 2
                        t = _871 + 32
                        while idx < 10:
                            mem[t] = uint256(stor[s])
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0xb1cec223: mem[_871 + 32 len 320]
                        mem[_871 + 32] = 32
                        mem[_871 + 64] = signers.length
                        mem[0] = 0
                        idx = 0
                        s = 0
                        t = _871 + 96
                        while idx < signers.length:
                            mem[t] = address(stor[s + sha3(mem[0])])
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0x3b563b7e: mem[mem[64] len _871 + (32 * signers.length) + -mem[64] + 96]
                        require 0 < signers.length
                        idx = 0
                        while signers[idx] != msg.sender:
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        idx = 0
                        while idx < 10:
                            require stor2[idx] != cd[132]
                            require idx < 10
                            idx = idx + 1
                            continue 
                        require cd[132] >= stor2.length
                        require cd[132] <= stor2.length + 10000
                        stor2.length = cd[132]
                        require 0 < signers.length
                        mem[0] = 0
                        idx = 0
                        while signers[idx] != address(signer):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require address(signer) != msg.sender
                        _1536 = mem[96]
                        mem[mem[64] len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        var195001 = ceil32(_1536)
                        if not _1536 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1536 - 4]
                        else:
                            mem[floor32(_1536) + mem[64]] = mem[floor32(_1536) + mem[64] + -(_1536 % 32) + 32 len _1536 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1536) + 28]
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
                            mem[t] = uint256(stor[s])
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0xb1cec223: mem[_871 + 32 len 320]
                        mem[_871 + 32] = 32
                        mem[_871 + 64] = signers.length
                        mem[0] = 0
                        idx = 0
                        s = 0
                        t = _871 + 96
                        while idx < signers.length:
                            mem[t] = address(stor[s + sha3(mem[0])])
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0x3b563b7e: mem[mem[64] len _871 + (32 * signers.length) + -mem[64] + 96]
                        require 0 < signers.length
                        idx = 0
                        while signers[idx] != msg.sender:
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        idx = 0
                        while idx < 10:
                            require stor2[idx] != cd[132]
                            require idx < 10
                            idx = idx + 1
                            continue 
                        require cd[132] >= stor2.length
                        require cd[132] <= stor2.length + 10000
                        stor2.length = cd[132]
                        require 0 < signers.length
                        mem[0] = 0
                        idx = 0
                        while signers[idx] != address(signer):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require address(signer) != msg.sender
                        _2176 = mem[96]
                        mem[mem[64] len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if not _2176 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2176 - 4]
                        else:
                            mem[floor32(_2176) + mem[64]] = mem[floor32(_2176) + mem[64] + -(_2176 % 32) + 32 len _2176 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_2176) + 28]
                else:
                    _879 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_879 + 32] = _512
                    mem[_879 + 64] = uint8(uint8(_847) - 10)
                    mem[_879 + 96] = _845
                    mem[_879 + 128] = _846
                    signer = erecover(_512, uint8(_847) - 10 << 248, _845, _846) 
                    mem[_879] = signer
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not safeMode:
                        require cd[100] >= block.timestamp
                        idx = 0
                        s = 2
                        t = _879 + 32
                        while idx < 10:
                            mem[t] = uint256(stor[s])
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0xb1cec223: mem[_879 + 32 len 320]
                        mem[_879 + 32] = 32
                        mem[_879 + 64] = signers.length
                        mem[0] = 0
                        idx = 0
                        s = 0
                        t = _879 + 96
                        while idx < signers.length:
                            mem[t] = address(stor[s + sha3(mem[0])])
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0x3b563b7e: mem[mem[64] len _879 + (32 * signers.length) + -mem[64] + 96]
                        require 0 < signers.length
                        idx = 0
                        while signers[idx] != msg.sender:
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        idx = 0
                        while idx < 10:
                            require stor2[idx] != cd[132]
                            require idx < 10
                            idx = idx + 1
                            continue 
                        require cd[132] >= stor2.length
                        require cd[132] <= stor2.length + 10000
                        stor2.length = cd[132]
                        require 0 < signers.length
                        mem[0] = 0
                        idx = 0
                        while signers[idx] != address(signer):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require address(signer) != msg.sender
                        _1538 = mem[96]
                        mem[mem[64] len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        var196001 = ceil32(_1538)
                        if not _1538 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1538 - 4]
                        else:
                            mem[floor32(_1538) + mem[64]] = mem[floor32(_1538) + mem[64] + -(_1538 % 32) + 32 len _1538 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1538) + 28]
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
                            mem[t] = uint256(stor[s])
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0xb1cec223: mem[_879 + 32 len 320]
                        mem[_879 + 32] = 32
                        mem[_879 + 64] = signers.length
                        mem[0] = 0
                        idx = 0
                        s = 0
                        t = _879 + 96
                        while idx < signers.length:
                            mem[t] = address(stor[s + sha3(mem[0])])
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0x3b563b7e: mem[mem[64] len _879 + (32 * signers.length) + -mem[64] + 96]
                        require 0 < signers.length
                        idx = 0
                        while signers[idx] != msg.sender:
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        idx = 0
                        while idx < 10:
                            require stor2[idx] != cd[132]
                            require idx < 10
                            idx = idx + 1
                            continue 
                        require cd[132] >= stor2.length
                        require cd[132] <= stor2.length + 10000
                        stor2.length = cd[132]
                        require 0 < signers.length
                        mem[0] = 0
                        idx = 0
                        while signers[idx] != address(signer):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require address(signer) != msg.sender
                        _2178 = mem[96]
                        mem[mem[64] len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if not _2178 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2178 - 4]
                        else:
                            mem[floor32(_2178) + mem[64]] = mem[floor32(_2178) + mem[64] + -(_2178 % 32) + 32 len _2178 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_2178) + 28]
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
                    if not safeMode:
                        require cd[100] >= block.timestamp
                        idx = 0
                        s = 2
                        t = _853 + 32
                        while idx < 10:
                            mem[t] = uint256(stor[s])
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0xb1cec223: mem[_853 + 32 len 320]
                        mem[_853 + 32] = 32
                        mem[_853 + 64] = signers.length
                        mem[0] = 0
                        idx = 0
                        s = 0
                        t = _853 + 96
                        while idx < signers.length:
                            mem[t] = address(stor[s + sha3(mem[0])])
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0x3b563b7e: mem[mem[64] len _853 + (32 * signers.length) + -mem[64] + 96]
                        require 0 < signers.length
                        idx = 0
                        while signers[idx] != msg.sender:
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        idx = 0
                        while idx < 10:
                            require stor2[idx] != cd[132]
                            require idx < 10
                            idx = idx + 1
                            continue 
                        require cd[132] >= stor2.length
                        require cd[132] <= stor2.length + 10000
                        stor2.length = cd[132]
                        require 0 < signers.length
                        mem[0] = 0
                        idx = 0
                        while signers[idx] != address(signer):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require address(signer) != msg.sender
                        _1539 = mem[64]
                        _1540 = mem[96]
                        mem[mem[64] len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        var194001 = ceil32(_1540)
                        if not _1540 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1540 - 4]
                        else:
                            mem[floor32(_1540) + mem[64]] = mem[floor32(_1540) + mem[64] + -(_1540 % 32) + 32 len _1540 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1540) + _1539 + -mem[64] + 28]
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
                            mem[t] = uint256(stor[s])
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0xb1cec223: mem[_853 + 32 len 320]
                        mem[_853 + 32] = 32
                        mem[_853 + 64] = signers.length
                        mem[0] = 0
                        idx = 0
                        s = 0
                        t = _853 + 96
                        while idx < signers.length:
                            mem[t] = address(stor[s + sha3(mem[0])])
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0x3b563b7e: mem[mem[64] len _853 + (32 * signers.length) + -mem[64] + 96]
                        require 0 < signers.length
                        idx = 0
                        while signers[idx] != msg.sender:
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        idx = 0
                        while idx < 10:
                            require stor2[idx] != cd[132]
                            require idx < 10
                            idx = idx + 1
                            continue 
                        require cd[132] >= stor2.length
                        require cd[132] <= stor2.length + 10000
                        stor2.length = cd[132]
                        require 0 < signers.length
                        mem[0] = 0
                        idx = 0
                        while signers[idx] != address(signer):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require address(signer) != msg.sender
                        _2180 = mem[96]
                        mem[mem[64] len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if not _2180 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2180 - 4]
                        else:
                            mem[floor32(_2180) + mem[64]] = mem[floor32(_2180) + mem[64] + -(_2180 % 32) + 32 len _2180 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_2180) + 28]
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
                    if not safeMode:
                        require cd[100] >= block.timestamp
                        idx = 0
                        s = 2
                        t = _861 + 32
                        while idx < 10:
                            mem[t] = uint256(stor[s])
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0xb1cec223: mem[_861 + 32 len 320]
                        mem[_861 + 32] = 32
                        mem[_861 + 64] = signers.length
                        mem[0] = 0
                        idx = 0
                        s = 0
                        t = _861 + 96
                        while idx < signers.length:
                            mem[t] = address(stor[s + sha3(mem[0])])
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0x3b563b7e: mem[mem[64] len _861 + (32 * signers.length) + -mem[64] + 96]
                        require 0 < signers.length
                        idx = 0
                        while signers[idx] != msg.sender:
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        idx = 0
                        while idx < 10:
                            require stor2[idx] != cd[132]
                            require idx < 10
                            idx = idx + 1
                            continue 
                        require cd[132] >= stor2.length
                        require cd[132] <= stor2.length + 10000
                        stor2.length = cd[132]
                        require 0 < signers.length
                        mem[0] = 0
                        idx = 0
                        while signers[idx] != address(signer):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require address(signer) != msg.sender
                        _1542 = mem[96]
                        mem[mem[64] len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        var195001 = ceil32(_1542)
                        if not _1542 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1542 - 4]
                        else:
                            mem[floor32(_1542) + mem[64]] = mem[floor32(_1542) + mem[64] + -(_1542 % 32) + 32 len _1542 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1542) + 28]
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
                            mem[t] = uint256(stor[s])
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0xb1cec223: mem[_861 + 32 len 320]
                        mem[_861 + 32] = 32
                        mem[_861 + 64] = signers.length
                        mem[0] = 0
                        idx = 0
                        s = 0
                        t = _861 + 96
                        while idx < signers.length:
                            mem[t] = address(stor[s + sha3(mem[0])])
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0x3b563b7e: mem[mem[64] len _861 + (32 * signers.length) + -mem[64] + 96]
                        require 0 < signers.length
                        idx = 0
                        while signers[idx] != msg.sender:
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        idx = 0
                        while idx < 10:
                            require stor2[idx] != cd[132]
                            require idx < 10
                            idx = idx + 1
                            continue 
                        require cd[132] >= stor2.length
                        require cd[132] <= stor2.length + 10000
                        stor2.length = cd[132]
                        require 0 < signers.length
                        mem[0] = 0
                        idx = 0
                        while signers[idx] != address(signer):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require address(signer) != msg.sender
                        _2182 = mem[96]
                        mem[mem[64] len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if not _2182 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2182 - 4]
                        else:
                            mem[floor32(_2182) + mem[64]] = mem[floor32(_2182) + mem[64] + -(_2182 % 32) + 32 len _2182 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_2182) + 28]
            else:
                if uint8(mem[_343 + 96 len 1] - 37) >= 27:
                    _863 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_863 + 32] = _512
                    mem[_863 + 64] = uint8(uint8(_843) - 37)
                    mem[_863 + 96] = _841
                    mem[_863 + 128] = _842
                    signer = erecover(_512, uint8(_843) - 37 << 248, _841, _842) 
                    mem[_863] = signer
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not safeMode:
                        require cd[100] >= block.timestamp
                        idx = 0
                        s = 2
                        t = _863 + 32
                        while idx < 10:
                            mem[t] = uint256(stor[s])
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0xb1cec223: mem[_863 + 32 len 320]
                        mem[_863 + 32] = 32
                        mem[_863 + 64] = signers.length
                        mem[0] = 0
                        idx = 0
                        s = 0
                        t = _863 + 96
                        while idx < signers.length:
                            mem[t] = address(stor[s + sha3(mem[0])])
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0x3b563b7e: mem[mem[64] len _863 + (32 * signers.length) + -mem[64] + 96]
                        require 0 < signers.length
                        idx = 0
                        while signers[idx] != msg.sender:
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        idx = 0
                        while idx < 10:
                            require stor2[idx] != cd[132]
                            require idx < 10
                            idx = idx + 1
                            continue 
                        require cd[132] >= stor2.length
                        require cd[132] <= stor2.length + 10000
                        stor2.length = cd[132]
                        require 0 < signers.length
                        mem[0] = 0
                        idx = 0
                        while signers[idx] != address(signer):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require address(signer) != msg.sender
                        _1544 = mem[96]
                        mem[mem[64] len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        var195001 = ceil32(_1544)
                        if not _1544 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1544 - 4]
                        else:
                            mem[floor32(_1544) + mem[64]] = mem[floor32(_1544) + mem[64] + -(_1544 % 32) + 32 len _1544 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1544) + 28]
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
                            mem[t] = uint256(stor[s])
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0xb1cec223: mem[_863 + 32 len 320]
                        mem[_863 + 32] = 32
                        mem[_863 + 64] = signers.length
                        mem[0] = 0
                        idx = 0
                        s = 0
                        t = _863 + 96
                        while idx < signers.length:
                            mem[t] = address(stor[s + sha3(mem[0])])
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0x3b563b7e: mem[mem[64] len _863 + (32 * signers.length) + -mem[64] + 96]
                        require 0 < signers.length
                        idx = 0
                        while signers[idx] != msg.sender:
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        idx = 0
                        while idx < 10:
                            require stor2[idx] != cd[132]
                            require idx < 10
                            idx = idx + 1
                            continue 
                        require cd[132] >= stor2.length
                        require cd[132] <= stor2.length + 10000
                        stor2.length = cd[132]
                        require 0 < signers.length
                        mem[0] = 0
                        idx = 0
                        while signers[idx] != address(signer):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require address(signer) != msg.sender
                        _2184 = mem[96]
                        mem[mem[64] len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if not _2184 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2184 - 4]
                        else:
                            mem[floor32(_2184) + mem[64]] = mem[floor32(_2184) + mem[64] + -(_2184 % 32) + 32 len _2184 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_2184) + 28]
                else:
                    _873 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_873 + 32] = _512
                    mem[_873 + 64] = uint8(uint8(_843) - 10)
                    mem[_873 + 96] = _841
                    mem[_873 + 128] = _842
                    signer = erecover(_512, uint8(_843) - 10 << 248, _841, _842) 
                    mem[_873] = signer
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not safeMode:
                        require cd[100] >= block.timestamp
                        idx = 0
                        s = 2
                        t = _873 + 32
                        while idx < 10:
                            mem[t] = uint256(stor[s])
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0xb1cec223: mem[_873 + 32 len 320]
                        mem[_873 + 32] = 32
                        mem[_873 + 64] = signers.length
                        mem[0] = 0
                        idx = 0
                        s = 0
                        t = _873 + 96
                        while idx < signers.length:
                            mem[t] = address(stor[s + sha3(mem[0])])
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0x3b563b7e: mem[mem[64] len _873 + (32 * signers.length) + -mem[64] + 96]
                        require 0 < signers.length
                        idx = 0
                        while signers[idx] != msg.sender:
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        idx = 0
                        while idx < 10:
                            require stor2[idx] != cd[132]
                            require idx < 10
                            idx = idx + 1
                            continue 
                        require cd[132] >= stor2.length
                        require cd[132] <= stor2.length + 10000
                        stor2.length = cd[132]
                        require 0 < signers.length
                        mem[0] = 0
                        idx = 0
                        while signers[idx] != address(signer):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require address(signer) != msg.sender
                        _1546 = mem[96]
                        mem[mem[64] len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        var196001 = ceil32(_1546)
                        if not _1546 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1546 - 4]
                        else:
                            mem[floor32(_1546) + mem[64]] = mem[floor32(_1546) + mem[64] + -(_1546 % 32) + 32 len _1546 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1546) + 28]
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
                            mem[t] = uint256(stor[s])
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0xb1cec223: mem[_873 + 32 len 320]
                        mem[_873 + 32] = 32
                        mem[_873 + 64] = signers.length
                        mem[0] = 0
                        idx = 0
                        s = 0
                        t = _873 + 96
                        while idx < signers.length:
                            mem[t] = address(stor[s + sha3(mem[0])])
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0x3b563b7e: mem[mem[64] len _873 + (32 * signers.length) + -mem[64] + 96]
                        require 0 < signers.length
                        idx = 0
                        while signers[idx] != msg.sender:
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        idx = 0
                        while idx < 10:
                            require stor2[idx] != cd[132]
                            require idx < 10
                            idx = idx + 1
                            continue 
                        require cd[132] >= stor2.length
                        require cd[132] <= stor2.length + 10000
                        stor2.length = cd[132]
                        require 0 < signers.length
                        mem[0] = 0
                        idx = 0
                        while signers[idx] != address(signer):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require address(signer) != msg.sender
                        _2186 = mem[96]
                        mem[mem[64] len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if not _2186 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2186 - 4]
                        else:
                            mem[floor32(_2186) + mem[64]] = mem[floor32(_2186) + mem[64] + -(_2186 % 32) + 32 len _2186 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_2186) + 28]
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
                    if not safeMode:
                        require cd[100] >= block.timestamp
                        idx = 0
                        s = 2
                        t = _865 + 32
                        while idx < 10:
                            mem[t] = uint256(stor[s])
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0xb1cec223: mem[_865 + 32 len 320]
                        mem[_865 + 32] = 32
                        mem[_865 + 64] = signers.length
                        mem[0] = 0
                        idx = 0
                        s = 0
                        t = _865 + 96
                        while idx < signers.length:
                            mem[t] = address(stor[s + sha3(mem[0])])
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0x3b563b7e: mem[mem[64] len _865 + (32 * signers.length) + -mem[64] + 96]
                        require 0 < signers.length
                        idx = 0
                        while signers[idx] != msg.sender:
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        idx = 0
                        while idx < 10:
                            require stor2[idx] != cd[132]
                            require idx < 10
                            idx = idx + 1
                            continue 
                        require cd[132] >= stor2.length
                        require cd[132] <= stor2.length + 10000
                        stor2.length = cd[132]
                        require 0 < signers.length
                        mem[0] = 0
                        idx = 0
                        while signers[idx] != address(signer):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require address(signer) != msg.sender
                        _1548 = mem[96]
                        mem[mem[64] len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        var195001 = ceil32(_1548)
                        if not _1548 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1548 - 4]
                        else:
                            mem[floor32(_1548) + mem[64]] = mem[floor32(_1548) + mem[64] + -(_1548 % 32) + 32 len _1548 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1548) + 28]
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
                            mem[t] = uint256(stor[s])
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0xb1cec223: mem[_865 + 32 len 320]
                        mem[_865 + 32] = 32
                        mem[_865 + 64] = signers.length
                        mem[0] = 0
                        idx = 0
                        s = 0
                        t = _865 + 96
                        while idx < signers.length:
                            mem[t] = address(stor[s + sha3(mem[0])])
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0x3b563b7e: mem[mem[64] len _865 + (32 * signers.length) + -mem[64] + 96]
                        require 0 < signers.length
                        idx = 0
                        while signers[idx] != msg.sender:
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        idx = 0
                        while idx < 10:
                            require stor2[idx] != cd[132]
                            require idx < 10
                            idx = idx + 1
                            continue 
                        require cd[132] >= stor2.length
                        require cd[132] <= stor2.length + 10000
                        stor2.length = cd[132]
                        require 0 < signers.length
                        mem[0] = 0
                        idx = 0
                        while signers[idx] != address(signer):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require address(signer) != msg.sender
                        _2188 = mem[96]
                        mem[mem[64] len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if not _2188 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2188 - 4]
                        else:
                            mem[floor32(_2188) + mem[64]] = mem[floor32(_2188) + mem[64] + -(_2188 % 32) + 32 len _2188 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_2188) + 28]
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
                    if not safeMode:
                        require cd[100] >= block.timestamp
                        idx = 0
                        s = 2
                        t = _875 + 32
                        while idx < 10:
                            mem[t] = uint256(stor[s])
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0xb1cec223: mem[_875 + 32 len 320]
                        mem[_875 + 32] = 32
                        mem[_875 + 64] = signers.length
                        mem[0] = 0
                        idx = 0
                        s = 0
                        t = _875 + 96
                        while idx < signers.length:
                            mem[t] = address(stor[s + sha3(mem[0])])
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0x3b563b7e: mem[mem[64] len _875 + (32 * signers.length) + -mem[64] + 96]
                        require 0 < signers.length
                        idx = 0
                        while signers[idx] != msg.sender:
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        idx = 0
                        while idx < 10:
                            require stor2[idx] != cd[132]
                            require idx < 10
                            idx = idx + 1
                            continue 
                        require cd[132] >= stor2.length
                        require cd[132] <= stor2.length + 10000
                        stor2.length = cd[132]
                        require 0 < signers.length
                        mem[0] = 0
                        idx = 0
                        while signers[idx] != address(signer):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require address(signer) != msg.sender
                        _1550 = mem[96]
                        mem[mem[64] len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        var196001 = ceil32(_1550)
                        if not _1550 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1550 - 4]
                        else:
                            mem[floor32(_1550) + mem[64]] = mem[floor32(_1550) + mem[64] + -(_1550 % 32) + 32 len _1550 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1550) + 28]
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
                            mem[t] = uint256(stor[s])
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0xb1cec223: mem[_875 + 32 len 320]
                        mem[_875 + 32] = 32
                        mem[_875 + 64] = signers.length
                        mem[0] = 0
                        idx = 0
                        s = 0
                        t = _875 + 96
                        while idx < signers.length:
                            mem[t] = address(stor[s + sha3(mem[0])])
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0x3b563b7e: mem[mem[64] len _875 + (32 * signers.length) + -mem[64] + 96]
                        require 0 < signers.length
                        idx = 0
                        while signers[idx] != msg.sender:
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        idx = 0
                        while idx < 10:
                            require stor2[idx] != cd[132]
                            require idx < 10
                            idx = idx + 1
                            continue 
                        require cd[132] >= stor2.length
                        require cd[132] <= stor2.length + 10000
                        stor2.length = cd[132]
                        require 0 < signers.length
                        mem[0] = 0
                        idx = 0
                        while signers[idx] != address(signer):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require address(signer) != msg.sender
                        _2190 = mem[96]
                        mem[mem[64] len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if not _2190 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2190 - 4]
                        else:
                            mem[floor32(_2190) + mem[64]] = mem[floor32(_2190) + mem[64] + -(_2190 % 32) + 32 len _2190 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_2190) + 28]
            else:
                if uint8(mem[_343 + 96 len 1] - 37) >= 27:
                    _877 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_877 + 32] = _512
                    mem[_877 + 64] = uint8(uint8(_850) - 37)
                    mem[_877 + 96] = _848
                    mem[_877 + 128] = _849
                    signer = erecover(_512, uint8(_850) - 37 << 248, _848, _849) 
                    mem[_877] = signer
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not safeMode:
                        require cd[100] >= block.timestamp
                        idx = 0
                        s = 2
                        t = _877 + 32
                        while idx < 10:
                            mem[t] = uint256(stor[s])
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0xb1cec223: mem[_877 + 32 len 320]
                        mem[_877 + 32] = 32
                        mem[_877 + 64] = signers.length
                        mem[0] = 0
                        idx = 0
                        s = 0
                        t = _877 + 96
                        while idx < signers.length:
                            mem[t] = address(stor[s + sha3(mem[0])])
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0x3b563b7e: mem[mem[64] len _877 + (32 * signers.length) + -mem[64] + 96]
                        require 0 < signers.length
                        idx = 0
                        while signers[idx] != msg.sender:
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        idx = 0
                        while idx < 10:
                            require stor2[idx] != cd[132]
                            require idx < 10
                            idx = idx + 1
                            continue 
                        require cd[132] >= stor2.length
                        require cd[132] <= stor2.length + 10000
                        stor2.length = cd[132]
                        require 0 < signers.length
                        mem[0] = 0
                        idx = 0
                        while signers[idx] != address(signer):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require address(signer) != msg.sender
                        _1552 = mem[96]
                        mem[mem[64] len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        var196001 = ceil32(_1552)
                        if not _1552 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1552 - 4]
                        else:
                            mem[floor32(_1552) + mem[64]] = mem[floor32(_1552) + mem[64] + -(_1552 % 32) + 32 len _1552 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1552) + 28]
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
                            mem[t] = uint256(stor[s])
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0xb1cec223: mem[_877 + 32 len 320]
                        mem[_877 + 32] = 32
                        mem[_877 + 64] = signers.length
                        mem[0] = 0
                        idx = 0
                        s = 0
                        t = _877 + 96
                        while idx < signers.length:
                            mem[t] = address(stor[s + sha3(mem[0])])
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0x3b563b7e: mem[mem[64] len _877 + (32 * signers.length) + -mem[64] + 96]
                        require 0 < signers.length
                        idx = 0
                        while signers[idx] != msg.sender:
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        idx = 0
                        while idx < 10:
                            require stor2[idx] != cd[132]
                            require idx < 10
                            idx = idx + 1
                            continue 
                        require cd[132] >= stor2.length
                        require cd[132] <= stor2.length + 10000
                        stor2.length = cd[132]
                        require 0 < signers.length
                        mem[0] = 0
                        idx = 0
                        while signers[idx] != address(signer):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require address(signer) != msg.sender
                        _2192 = mem[96]
                        mem[mem[64] len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if not _2192 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2192 - 4]
                        else:
                            mem[floor32(_2192) + mem[64]] = mem[floor32(_2192) + mem[64] + -(_2192 % 32) + 32 len _2192 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_2192) + 28]
                else:
                    _881 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_881 + 32] = _512
                    mem[_881 + 64] = uint8(uint8(_850) - 10)
                    mem[_881 + 96] = _848
                    mem[_881 + 128] = _849
                    signer = erecover(_512, uint8(_850) - 10 << 248, _848, _849) 
                    mem[_881] = signer
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not safeMode:
                        require cd[100] >= block.timestamp
                        idx = 0
                        s = 2
                        t = _881 + 32
                        while idx < 10:
                            mem[t] = uint256(stor[s])
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0xb1cec223: mem[_881 + 32 len 320]
                        mem[_881 + 32] = 32
                        mem[_881 + 64] = signers.length
                        mem[0] = 0
                        idx = 0
                        s = 0
                        t = _881 + 96
                        while idx < signers.length:
                            mem[t] = address(stor[s + sha3(mem[0])])
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0x3b563b7e: mem[mem[64] len _881 + (32 * signers.length) + -mem[64] + 96]
                        require 0 < signers.length
                        idx = 0
                        while signers[idx] != msg.sender:
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        idx = 0
                        while idx < 10:
                            require stor2[idx] != cd[132]
                            require idx < 10
                            idx = idx + 1
                            continue 
                        require cd[132] >= stor2.length
                        require cd[132] <= stor2.length + 10000
                        stor2.length = cd[132]
                        require 0 < signers.length
                        mem[0] = 0
                        idx = 0
                        while signers[idx] != address(signer):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require address(signer) != msg.sender
                        _1554 = mem[96]
                        mem[mem[64] len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        var197001 = ceil32(_1554)
                        if not _1554 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1554 - 4]
                        else:
                            mem[floor32(_1554) + mem[64]] = mem[floor32(_1554) + mem[64] + -(_1554 % 32) + 32 len _1554 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1554) + 28]
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
                            mem[t] = uint256(stor[s])
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0xb1cec223: mem[_881 + 32 len 320]
                        mem[_881 + 32] = 32
                        mem[_881 + 64] = signers.length
                        mem[0] = 0
                        idx = 0
                        s = 0
                        t = _881 + 96
                        while idx < signers.length:
                            mem[t] = address(stor[s + sha3(mem[0])])
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0x3b563b7e: mem[mem[64] len _881 + (32 * signers.length) + -mem[64] + 96]
                        require 0 < signers.length
                        idx = 0
                        while signers[idx] != msg.sender:
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        idx = 0
                        while idx < 10:
                            require stor2[idx] != cd[132]
                            require idx < 10
                            idx = idx + 1
                            continue 
                        require cd[132] >= stor2.length
                        require cd[132] <= stor2.length + 10000
                        stor2.length = cd[132]
                        require 0 < signers.length
                        mem[0] = 0
                        idx = 0
                        while signers[idx] != address(signer):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require address(signer) != msg.sender
                        _2194 = mem[96]
                        mem[mem[64] len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if not _2194 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2194 - 4]
                        else:
                            mem[floor32(_2194) + mem[64]] = mem[floor32(_2194) + mem[64] + -(_2194 % 32) + 32 len _2194 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_2194) + 28]
    require ext_call.success
    mem[mem[64]] = msg.sender
    mem[mem[64] + 32] = address(signer)
    mem[mem[64] + 64] = _512
    mem[mem[64] + 96] = address(cd[4])
    mem[mem[64] + 128] = cd[36]
    mem[mem[64] + 160] = 192
    mem[mem[64] + 192] = mem[96]
    mem[mem[64] + 224 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(mem[96]) > mem[96]:
        mem[mem[64] + mem[96] + 224] = 0
    emit Transacted(msg.sender, address(signer), _512, address(cd[4]), cd[36], Array(len=mem[96], data=mem[mem[64] + 224 len ceil32(mem[96])]));
}



}
