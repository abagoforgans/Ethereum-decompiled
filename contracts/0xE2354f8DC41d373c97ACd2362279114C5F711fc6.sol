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
                    code: code.data[3641 len 1217]
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
    _49 = mem[161]
    if mem[192 len 1] <= 35:
        if mem[192 len 1] >= 27:
            mem[ceil32(arg6.length) + 192] = mem[192 len 1]
            mem[ceil32(arg6.length) + 224] = mem[128]
            mem[ceil32(arg6.length) + 256] = mem[160]
            signer = erecover(sha3(0, arg1, arg2, arg3, arg4, arg5), _49 << 248, mem[128], mem[160]) 
        else:
            mem[ceil32(arg6.length) + 192] = uint8(mem[192 len 1] + 27)
            mem[ceil32(arg6.length) + 224] = mem[128]
            mem[ceil32(arg6.length) + 256] = mem[160]
            signer = erecover(sha3(0, arg1, arg2, arg3, arg4, arg5), uint8(_49) + 27 << 248, mem[128], mem[160]) 
    else:
        if uint8(mem[192 len 1] - 41) >= 27:
            mem[ceil32(arg6.length) + 192] = uint8(mem[192 len 1] - 41)
            mem[ceil32(arg6.length) + 224] = mem[128]
            mem[ceil32(arg6.length) + 256] = mem[160]
            signer = erecover(sha3(0, arg1, arg2, arg3, arg4, arg5), uint8(_49) - 41 << 248, mem[128], mem[160]) 
        else:
            mem[ceil32(arg6.length) + 192] = uint8(mem[192 len 1] - 14)
            mem[ceil32(arg6.length) + 224] = mem[128]
            mem[ceil32(arg6.length) + 256] = mem[160]
            signer = erecover(sha3(0, arg1, arg2, arg3, arg4, arg5), uint8(_49) - 14 << 248, mem[128], mem[160]) 
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
    t = ceil32(arg6.length) + 192
    while idx < 10:
        mem[t] = stor[s]
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    emit 0x6dc8657c: stor2.length, mem[ceil32(arg6.length) + 192 len 320]
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
            if mem[_343 + 96 len 1] <= 35:
                if mem[_343 + 96 len 1] >= 27:
                    _851 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_851 + 64] = uint8(_839)
                    mem[_851 + 96] = _837
                    mem[_851 + 128] = _838
                    signer = erecover(_512, _839 << 248, _837, _838) 
                    mem[_851] = signer
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not stor1:
                        require cd[100] >= block.timestamp
                        mem[_851 + 32] = stor2.length
                        idx = 0
                        s = 2
                        t = _851 + 64
                        while idx < 10:
                            mem[t] = stor[s]
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0x6dc8657c: mem[mem[64] len _851 + -mem[64] + 384]
                        _1011 = mem[64]
                        _1012 = mem[96]
                        s = 0
                        while 10 < _1012:
                            mem[_1011 + 10] = mem[138]
                            s = 42
                            continue 
                        if not _1012 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1012 + _1011 + -mem[64] - 4]
                        else:
                            mem[floor32(_1012) + _1011] = mem[floor32(_1012) + _1011 + -(_1012 % 32) + 32 len _1012 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1012) + _1011 + -mem[64] + 28]
                    else:
                        require 0 < signers.length
                        idx = 0
                        while signers[idx] != address(cd[4]):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require cd[100] >= block.timestamp
                        mem[_851 + 32] = stor2.length
                        idx = 0
                        s = 2
                        t = _851 + 64
                        while idx < 10:
                            mem[t] = stor[s]
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0x6dc8657c: mem[mem[64] len _851 + -mem[64] + 384]
                        _1203 = mem[64]
                        _1204 = mem[96]
                        s = 0
                        while 10 < _1204:
                            mem[_1203 + 10] = mem[138]
                            s = 42
                            continue 
                        if not _1204 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1204 + _1203 + -mem[64] - 4]
                        else:
                            mem[floor32(_1204) + _1203] = mem[floor32(_1204) + _1203 + -(_1204 % 32) + 32 len _1204 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1204) + _1203 + -mem[64] + 28]
                else:
                    _855 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_855 + 64] = uint8(uint8(_839) + 27)
                    mem[_855 + 96] = _837
                    mem[_855 + 128] = _838
                    signer = erecover(_512, uint8(_839) + 27 << 248, _837, _838) 
                    mem[_855] = signer
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not stor1:
                        require cd[100] >= block.timestamp
                        mem[_855 + 32] = stor2.length
                        idx = 0
                        s = 2
                        t = _855 + 64
                        while idx < 10:
                            mem[t] = stor[s]
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0x6dc8657c: mem[mem[64] len _855 + -mem[64] + 384]
                        _1013 = mem[64]
                        _1014 = mem[96]
                        s = 0
                        while 10 < _1014:
                            mem[_1013 + 10] = mem[138]
                            s = 42
                            continue 
                        if not _1014 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1014 + _1013 + -mem[64] - 4]
                        else:
                            mem[floor32(_1014) + _1013] = mem[floor32(_1014) + _1013 + -(_1014 % 32) + 32 len _1014 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1014) + _1013 + -mem[64] + 28]
                    else:
                        require 0 < signers.length
                        idx = 0
                        while signers[idx] != address(cd[4]):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require cd[100] >= block.timestamp
                        mem[_855 + 32] = stor2.length
                        idx = 0
                        s = 2
                        t = _855 + 64
                        while idx < 10:
                            mem[t] = stor[s]
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0x6dc8657c: mem[mem[64] len _855 + -mem[64] + 384]
                        _1205 = mem[64]
                        _1206 = mem[96]
                        s = 0
                        while 10 < _1206:
                            mem[_1205 + 10] = mem[138]
                            s = 42
                            continue 
                        if not _1206 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1206 + _1205 + -mem[64] - 4]
                        else:
                            mem[floor32(_1206) + _1205] = mem[floor32(_1206) + _1205 + -(_1206 % 32) + 32 len _1206 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1206) + _1205 + -mem[64] + 28]
            else:
                if uint8(mem[_343 + 96 len 1] - 41) >= 27:
                    _857 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_857 + 64] = uint8(uint8(_839) - 41)
                    mem[_857 + 96] = _837
                    mem[_857 + 128] = _838
                    signer = erecover(_512, uint8(_839) - 41 << 248, _837, _838) 
                    mem[_857] = signer
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not stor1:
                        require cd[100] >= block.timestamp
                        mem[_857 + 32] = stor2.length
                        idx = 0
                        s = 2
                        t = _857 + 64
                        while idx < 10:
                            mem[t] = stor[s]
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0x6dc8657c: mem[mem[64] len _857 + -mem[64] + 384]
                        _1015 = mem[64]
                        _1016 = mem[96]
                        s = 0
                        while 10 < _1016:
                            mem[_1015 + 10] = mem[138]
                            s = 42
                            continue 
                        if not _1016 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1016 + _1015 + -mem[64] - 4]
                        else:
                            mem[floor32(_1016) + _1015] = mem[floor32(_1016) + _1015 + -(_1016 % 32) + 32 len _1016 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1016) + _1015 + -mem[64] + 28]
                    else:
                        require 0 < signers.length
                        idx = 0
                        while signers[idx] != address(cd[4]):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require cd[100] >= block.timestamp
                        mem[_857 + 32] = stor2.length
                        idx = 0
                        s = 2
                        t = _857 + 64
                        while idx < 10:
                            mem[t] = stor[s]
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0x6dc8657c: mem[mem[64] len _857 + -mem[64] + 384]
                        _1207 = mem[64]
                        _1208 = mem[96]
                        s = 0
                        while 10 < _1208:
                            mem[_1207 + 10] = mem[138]
                            s = 42
                            continue 
                        if not _1208 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1208 + _1207 + -mem[64] - 4]
                        else:
                            mem[floor32(_1208) + _1207] = mem[floor32(_1208) + _1207 + -(_1208 % 32) + 32 len _1208 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1208) + _1207 + -mem[64] + 28]
                else:
                    _867 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_867 + 64] = uint8(uint8(_839) - 14)
                    mem[_867 + 96] = _837
                    mem[_867 + 128] = _838
                    signer = erecover(_512, uint8(_839) - 14 << 248, _837, _838) 
                    mem[_867] = signer
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not stor1:
                        require cd[100] >= block.timestamp
                        mem[_867 + 32] = stor2.length
                        idx = 0
                        s = 2
                        t = _867 + 64
                        while idx < 10:
                            mem[t] = stor[s]
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0x6dc8657c: mem[mem[64] len _867 + -mem[64] + 384]
                        _1017 = mem[64]
                        _1018 = mem[96]
                        s = 0
                        while 10 < _1018:
                            mem[_1017 + 10] = mem[138]
                            s = 42
                            continue 
                        if not _1018 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1018 + _1017 + -mem[64] - 4]
                        else:
                            mem[floor32(_1018) + _1017] = mem[floor32(_1018) + _1017 + -(_1018 % 32) + 32 len _1018 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1018) + _1017 + -mem[64] + 28]
                    else:
                        require 0 < signers.length
                        idx = 0
                        while signers[idx] != address(cd[4]):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require cd[100] >= block.timestamp
                        mem[_867 + 32] = stor2.length
                        idx = 0
                        s = 2
                        t = _867 + 64
                        while idx < 10:
                            mem[t] = stor[s]
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0x6dc8657c: mem[mem[64] len _867 + -mem[64] + 384]
                        _1209 = mem[64]
                        _1210 = mem[96]
                        s = 0
                        while 10 < _1210:
                            mem[_1209 + 10] = mem[138]
                            s = 42
                            continue 
                        if not _1210 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1210 + _1209 + -mem[64] - 4]
                        else:
                            mem[floor32(_1210) + _1209] = mem[floor32(_1210) + _1209 + -(_1210 % 32) + 32 len _1210 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1210) + _1209 + -mem[64] + 28]
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
                    mem[_859 + 64] = uint8(_847)
                    mem[_859 + 96] = _845
                    mem[_859 + 128] = _846
                    signer = erecover(_512, _847 << 248, _845, _846) 
                    mem[_859] = signer
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not stor1:
                        require cd[100] >= block.timestamp
                        mem[_859 + 32] = stor2.length
                        idx = 0
                        s = 2
                        t = _859 + 64
                        while idx < 10:
                            mem[t] = stor[s]
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0x6dc8657c: mem[mem[64] len _859 + -mem[64] + 384]
                        _1019 = mem[64]
                        _1020 = mem[96]
                        s = 0
                        while 10 < _1020:
                            mem[_1019 + 10] = mem[138]
                            s = 42
                            continue 
                        if not _1020 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1020 + _1019 + -mem[64] - 4]
                        else:
                            mem[floor32(_1020) + _1019] = mem[floor32(_1020) + _1019 + -(_1020 % 32) + 32 len _1020 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1020) + _1019 + -mem[64] + 28]
                    else:
                        require 0 < signers.length
                        idx = 0
                        while signers[idx] != address(cd[4]):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require cd[100] >= block.timestamp
                        mem[_859 + 32] = stor2.length
                        idx = 0
                        s = 2
                        t = _859 + 64
                        while idx < 10:
                            mem[t] = stor[s]
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0x6dc8657c: mem[mem[64] len _859 + -mem[64] + 384]
                        _1211 = mem[64]
                        _1212 = mem[96]
                        s = 0
                        while 10 < _1212:
                            mem[_1211 + 10] = mem[138]
                            s = 42
                            continue 
                        if not _1212 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1212 + _1211 + -mem[64] - 4]
                        else:
                            mem[floor32(_1212) + _1211] = mem[floor32(_1212) + _1211 + -(_1212 % 32) + 32 len _1212 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1212) + _1211 + -mem[64] + 28]
                else:
                    _869 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_869 + 64] = uint8(uint8(_847) + 27)
                    mem[_869 + 96] = _845
                    mem[_869 + 128] = _846
                    signer = erecover(_512, uint8(_847) + 27 << 248, _845, _846) 
                    mem[_869] = signer
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not stor1:
                        require cd[100] >= block.timestamp
                        mem[_869 + 32] = stor2.length
                        idx = 0
                        s = 2
                        t = _869 + 64
                        while idx < 10:
                            mem[t] = stor[s]
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0x6dc8657c: mem[mem[64] len _869 + -mem[64] + 384]
                        _1021 = mem[64]
                        _1022 = mem[96]
                        s = 0
                        while 10 < _1022:
                            mem[_1021 + 10] = mem[138]
                            s = 42
                            continue 
                        if not _1022 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1022 + _1021 + -mem[64] - 4]
                        else:
                            mem[floor32(_1022) + _1021] = mem[floor32(_1022) + _1021 + -(_1022 % 32) + 32 len _1022 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1022) + _1021 + -mem[64] + 28]
                    else:
                        require 0 < signers.length
                        idx = 0
                        while signers[idx] != address(cd[4]):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require cd[100] >= block.timestamp
                        mem[_869 + 32] = stor2.length
                        idx = 0
                        s = 2
                        t = _869 + 64
                        while idx < 10:
                            mem[t] = stor[s]
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0x6dc8657c: mem[mem[64] len _869 + -mem[64] + 384]
                        _1213 = mem[64]
                        _1214 = mem[96]
                        s = 0
                        while 10 < _1214:
                            mem[_1213 + 10] = mem[138]
                            s = 42
                            continue 
                        if not _1214 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1214 + _1213 + -mem[64] - 4]
                        else:
                            mem[floor32(_1214) + _1213] = mem[floor32(_1214) + _1213 + -(_1214 % 32) + 32 len _1214 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1214) + _1213 + -mem[64] + 28]
            else:
                if uint8(mem[_343 + 96 len 1] - 41) >= 27:
                    _871 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_871 + 64] = uint8(uint8(_847) - 41)
                    mem[_871 + 96] = _845
                    mem[_871 + 128] = _846
                    signer = erecover(_512, uint8(_847) - 41 << 248, _845, _846) 
                    mem[_871] = signer
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not stor1:
                        require cd[100] >= block.timestamp
                        mem[_871 + 32] = stor2.length
                        idx = 0
                        s = 2
                        t = _871 + 64
                        while idx < 10:
                            mem[t] = stor[s]
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0x6dc8657c: mem[mem[64] len _871 + -mem[64] + 384]
                        _1023 = mem[64]
                        _1024 = mem[96]
                        s = 0
                        while 10 < _1024:
                            mem[_1023 + 10] = mem[138]
                            s = 42
                            continue 
                        if not _1024 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1024 + _1023 + -mem[64] - 4]
                        else:
                            mem[floor32(_1024) + _1023] = mem[floor32(_1024) + _1023 + -(_1024 % 32) + 32 len _1024 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1024) + _1023 + -mem[64] + 28]
                    else:
                        require 0 < signers.length
                        idx = 0
                        while signers[idx] != address(cd[4]):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require cd[100] >= block.timestamp
                        mem[_871 + 32] = stor2.length
                        idx = 0
                        s = 2
                        t = _871 + 64
                        while idx < 10:
                            mem[t] = stor[s]
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0x6dc8657c: mem[mem[64] len _871 + -mem[64] + 384]
                        _1215 = mem[64]
                        _1216 = mem[96]
                        s = 0
                        while 10 < _1216:
                            mem[_1215 + 10] = mem[138]
                            s = 42
                            continue 
                        if not _1216 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1216 + _1215 + -mem[64] - 4]
                        else:
                            mem[floor32(_1216) + _1215] = mem[floor32(_1216) + _1215 + -(_1216 % 32) + 32 len _1216 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1216) + _1215 + -mem[64] + 28]
                else:
                    _879 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_879 + 64] = uint8(uint8(_847) - 14)
                    mem[_879 + 96] = _845
                    mem[_879 + 128] = _846
                    signer = erecover(_512, uint8(_847) - 14 << 248, _845, _846) 
                    mem[_879] = signer
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not stor1:
                        require cd[100] >= block.timestamp
                        mem[_879 + 32] = stor2.length
                        idx = 0
                        s = 2
                        t = _879 + 64
                        while idx < 10:
                            mem[t] = stor[s]
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0x6dc8657c: mem[mem[64] len _879 + -mem[64] + 384]
                        _1025 = mem[64]
                        _1026 = mem[96]
                        s = 0
                        while 10 < _1026:
                            mem[_1025 + 10] = mem[138]
                            s = 42
                            continue 
                        if not _1026 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1026 + _1025 + -mem[64] - 4]
                        else:
                            mem[floor32(_1026) + _1025] = mem[floor32(_1026) + _1025 + -(_1026 % 32) + 32 len _1026 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1026) + _1025 + -mem[64] + 28]
                    else:
                        require 0 < signers.length
                        idx = 0
                        while signers[idx] != address(cd[4]):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require cd[100] >= block.timestamp
                        mem[_879 + 32] = stor2.length
                        idx = 0
                        s = 2
                        t = _879 + 64
                        while idx < 10:
                            mem[t] = stor[s]
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0x6dc8657c: mem[mem[64] len _879 + -mem[64] + 384]
                        _1217 = mem[64]
                        _1218 = mem[96]
                        s = 0
                        while 10 < _1218:
                            mem[_1217 + 10] = mem[138]
                            s = 42
                            continue 
                        if not _1218 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1218 + _1217 + -mem[64] - 4]
                        else:
                            mem[floor32(_1218) + _1217] = mem[floor32(_1218) + _1217 + -(_1218 % 32) + 32 len _1218 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1218) + _1217 + -mem[64] + 28]
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
                    mem[_853 + 64] = uint8(_843)
                    mem[_853 + 96] = _841
                    mem[_853 + 128] = _842
                    signer = erecover(_512, _843 << 248, _841, _842) 
                    mem[_853] = signer
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not stor1:
                        require cd[100] >= block.timestamp
                        mem[_853 + 32] = stor2.length
                        idx = 0
                        s = 2
                        t = _853 + 64
                        while idx < 10:
                            mem[t] = stor[s]
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0x6dc8657c: mem[mem[64] len _853 + -mem[64] + 384]
                        _1027 = mem[64]
                        _1028 = mem[96]
                        s = 0
                        while 10 < _1028:
                            mem[_1027 + 10] = mem[138]
                            s = 42
                            continue 
                        if not _1028 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1028 + _1027 + -mem[64] - 4]
                        else:
                            mem[floor32(_1028) + _1027] = mem[floor32(_1028) + _1027 + -(_1028 % 32) + 32 len _1028 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1028) + _1027 + -mem[64] + 28]
                    else:
                        require 0 < signers.length
                        idx = 0
                        while signers[idx] != address(cd[4]):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require cd[100] >= block.timestamp
                        mem[_853 + 32] = stor2.length
                        idx = 0
                        s = 2
                        t = _853 + 64
                        while idx < 10:
                            mem[t] = stor[s]
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0x6dc8657c: mem[mem[64] len _853 + -mem[64] + 384]
                        _1219 = mem[64]
                        _1220 = mem[96]
                        s = 0
                        while 10 < _1220:
                            mem[_1219 + 10] = mem[138]
                            s = 42
                            continue 
                        if not _1220 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1220 + _1219 + -mem[64] - 4]
                        else:
                            mem[floor32(_1220) + _1219] = mem[floor32(_1220) + _1219 + -(_1220 % 32) + 32 len _1220 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1220) + _1219 + -mem[64] + 28]
                else:
                    _861 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_861 + 64] = uint8(uint8(_843) + 27)
                    mem[_861 + 96] = _841
                    mem[_861 + 128] = _842
                    signer = erecover(_512, uint8(_843) + 27 << 248, _841, _842) 
                    mem[_861] = signer
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not stor1:
                        require cd[100] >= block.timestamp
                        mem[_861 + 32] = stor2.length
                        idx = 0
                        s = 2
                        t = _861 + 64
                        while idx < 10:
                            mem[t] = stor[s]
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0x6dc8657c: mem[mem[64] len _861 + -mem[64] + 384]
                        _1029 = mem[64]
                        _1030 = mem[96]
                        s = 0
                        while 10 < _1030:
                            mem[_1029 + 10] = mem[138]
                            s = 42
                            continue 
                        if not _1030 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1030 + _1029 + -mem[64] - 4]
                        else:
                            mem[floor32(_1030) + _1029] = mem[floor32(_1030) + _1029 + -(_1030 % 32) + 32 len _1030 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1030) + _1029 + -mem[64] + 28]
                    else:
                        require 0 < signers.length
                        idx = 0
                        while signers[idx] != address(cd[4]):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require cd[100] >= block.timestamp
                        mem[_861 + 32] = stor2.length
                        idx = 0
                        s = 2
                        t = _861 + 64
                        while idx < 10:
                            mem[t] = stor[s]
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0x6dc8657c: mem[mem[64] len _861 + -mem[64] + 384]
                        _1221 = mem[64]
                        _1222 = mem[96]
                        s = 0
                        while 10 < _1222:
                            mem[_1221 + 10] = mem[138]
                            s = 42
                            continue 
                        if not _1222 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1222 + _1221 + -mem[64] - 4]
                        else:
                            mem[floor32(_1222) + _1221] = mem[floor32(_1222) + _1221 + -(_1222 % 32) + 32 len _1222 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1222) + _1221 + -mem[64] + 28]
            else:
                if uint8(mem[_343 + 96 len 1] - 41) >= 27:
                    _863 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_863 + 64] = uint8(uint8(_843) - 41)
                    mem[_863 + 96] = _841
                    mem[_863 + 128] = _842
                    signer = erecover(_512, uint8(_843) - 41 << 248, _841, _842) 
                    mem[_863] = signer
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not stor1:
                        require cd[100] >= block.timestamp
                        mem[_863 + 32] = stor2.length
                        idx = 0
                        s = 2
                        t = _863 + 64
                        while idx < 10:
                            mem[t] = stor[s]
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0x6dc8657c: mem[mem[64] len _863 + -mem[64] + 384]
                        _1031 = mem[64]
                        _1032 = mem[96]
                        s = 0
                        while 10 < _1032:
                            mem[_1031 + 10] = mem[138]
                            s = 42
                            continue 
                        if not _1032 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1032 + _1031 + -mem[64] - 4]
                        else:
                            mem[floor32(_1032) + _1031] = mem[floor32(_1032) + _1031 + -(_1032 % 32) + 32 len _1032 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1032) + _1031 + -mem[64] + 28]
                    else:
                        require 0 < signers.length
                        idx = 0
                        while signers[idx] != address(cd[4]):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require cd[100] >= block.timestamp
                        mem[_863 + 32] = stor2.length
                        idx = 0
                        s = 2
                        t = _863 + 64
                        while idx < 10:
                            mem[t] = stor[s]
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0x6dc8657c: mem[mem[64] len _863 + -mem[64] + 384]
                        _1223 = mem[64]
                        _1224 = mem[96]
                        s = 0
                        while 10 < _1224:
                            mem[_1223 + 10] = mem[138]
                            s = 42
                            continue 
                        if not _1224 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1224 + _1223 + -mem[64] - 4]
                        else:
                            mem[floor32(_1224) + _1223] = mem[floor32(_1224) + _1223 + -(_1224 % 32) + 32 len _1224 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1224) + _1223 + -mem[64] + 28]
                else:
                    _873 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_873 + 64] = uint8(uint8(_843) - 14)
                    mem[_873 + 96] = _841
                    mem[_873 + 128] = _842
                    signer = erecover(_512, uint8(_843) - 14 << 248, _841, _842) 
                    mem[_873] = signer
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not stor1:
                        require cd[100] >= block.timestamp
                        mem[_873 + 32] = stor2.length
                        idx = 0
                        s = 2
                        t = _873 + 64
                        while idx < 10:
                            mem[t] = stor[s]
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0x6dc8657c: mem[mem[64] len _873 + -mem[64] + 384]
                        _1033 = mem[64]
                        _1034 = mem[96]
                        s = 0
                        while 10 < _1034:
                            mem[_1033 + 10] = mem[138]
                            s = 42
                            continue 
                        if not _1034 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1034 + _1033 + -mem[64] - 4]
                        else:
                            mem[floor32(_1034) + _1033] = mem[floor32(_1034) + _1033 + -(_1034 % 32) + 32 len _1034 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1034) + _1033 + -mem[64] + 28]
                    else:
                        require 0 < signers.length
                        idx = 0
                        while signers[idx] != address(cd[4]):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require cd[100] >= block.timestamp
                        mem[_873 + 32] = stor2.length
                        idx = 0
                        s = 2
                        t = _873 + 64
                        while idx < 10:
                            mem[t] = stor[s]
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0x6dc8657c: mem[mem[64] len _873 + -mem[64] + 384]
                        _1225 = mem[64]
                        _1226 = mem[96]
                        s = 0
                        while 10 < _1226:
                            mem[_1225 + 10] = mem[138]
                            s = 42
                            continue 
                        if not _1226 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1226 + _1225 + -mem[64] - 4]
                        else:
                            mem[floor32(_1226) + _1225] = mem[floor32(_1226) + _1225 + -(_1226 % 32) + 32 len _1226 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1226) + _1225 + -mem[64] + 28]
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
                    mem[_865 + 64] = uint8(_850)
                    mem[_865 + 96] = _848
                    mem[_865 + 128] = _849
                    signer = erecover(_512, _850 << 248, _848, _849) 
                    mem[_865] = signer
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not stor1:
                        require cd[100] >= block.timestamp
                        mem[_865 + 32] = stor2.length
                        idx = 0
                        s = 2
                        t = _865 + 64
                        while idx < 10:
                            mem[t] = stor[s]
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0x6dc8657c: mem[mem[64] len _865 + -mem[64] + 384]
                        _1035 = mem[64]
                        _1036 = mem[96]
                        s = 0
                        while 10 < _1036:
                            mem[_1035 + 10] = mem[138]
                            s = 42
                            continue 
                        if not _1036 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1036 + _1035 + -mem[64] - 4]
                        else:
                            mem[floor32(_1036) + _1035] = mem[floor32(_1036) + _1035 + -(_1036 % 32) + 32 len _1036 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1036) + _1035 + -mem[64] + 28]
                    else:
                        require 0 < signers.length
                        idx = 0
                        while signers[idx] != address(cd[4]):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require cd[100] >= block.timestamp
                        mem[_865 + 32] = stor2.length
                        idx = 0
                        s = 2
                        t = _865 + 64
                        while idx < 10:
                            mem[t] = stor[s]
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0x6dc8657c: mem[mem[64] len _865 + -mem[64] + 384]
                        _1227 = mem[64]
                        _1228 = mem[96]
                        s = 0
                        while 10 < _1228:
                            mem[_1227 + 10] = mem[138]
                            s = 42
                            continue 
                        if not _1228 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1228 + _1227 + -mem[64] - 4]
                        else:
                            mem[floor32(_1228) + _1227] = mem[floor32(_1228) + _1227 + -(_1228 % 32) + 32 len _1228 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1228) + _1227 + -mem[64] + 28]
                else:
                    _875 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_875 + 64] = uint8(uint8(_850) + 27)
                    mem[_875 + 96] = _848
                    mem[_875 + 128] = _849
                    signer = erecover(_512, uint8(_850) + 27 << 248, _848, _849) 
                    mem[_875] = signer
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not stor1:
                        require cd[100] >= block.timestamp
                        mem[_875 + 32] = stor2.length
                        idx = 0
                        s = 2
                        t = _875 + 64
                        while idx < 10:
                            mem[t] = stor[s]
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0x6dc8657c: mem[mem[64] len _875 + -mem[64] + 384]
                        _1037 = mem[64]
                        _1038 = mem[96]
                        s = 0
                        while 10 < _1038:
                            mem[_1037 + 10] = mem[138]
                            s = 42
                            continue 
                        if not _1038 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1038 + _1037 + -mem[64] - 4]
                        else:
                            mem[floor32(_1038) + _1037] = mem[floor32(_1038) + _1037 + -(_1038 % 32) + 32 len _1038 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1038) + _1037 + -mem[64] + 28]
                    else:
                        require 0 < signers.length
                        idx = 0
                        while signers[idx] != address(cd[4]):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require cd[100] >= block.timestamp
                        mem[_875 + 32] = stor2.length
                        idx = 0
                        s = 2
                        t = _875 + 64
                        while idx < 10:
                            mem[t] = stor[s]
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0x6dc8657c: mem[mem[64] len _875 + -mem[64] + 384]
                        _1229 = mem[64]
                        _1230 = mem[96]
                        s = 0
                        while 10 < _1230:
                            mem[_1229 + 10] = mem[138]
                            s = 42
                            continue 
                        if not _1230 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1230 + _1229 + -mem[64] - 4]
                        else:
                            mem[floor32(_1230) + _1229] = mem[floor32(_1230) + _1229 + -(_1230 % 32) + 32 len _1230 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1230) + _1229 + -mem[64] + 28]
            else:
                if uint8(mem[_343 + 96 len 1] - 41) >= 27:
                    _877 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_877 + 64] = uint8(uint8(_850) - 41)
                    mem[_877 + 96] = _848
                    mem[_877 + 128] = _849
                    signer = erecover(_512, uint8(_850) - 41 << 248, _848, _849) 
                    mem[_877] = signer
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not stor1:
                        require cd[100] >= block.timestamp
                        mem[_877 + 32] = stor2.length
                        idx = 0
                        s = 2
                        t = _877 + 64
                        while idx < 10:
                            mem[t] = stor[s]
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0x6dc8657c: mem[mem[64] len _877 + -mem[64] + 384]
                        _1039 = mem[64]
                        _1040 = mem[96]
                        s = 0
                        while 10 < _1040:
                            mem[_1039 + 10] = mem[138]
                            s = 42
                            continue 
                        if not _1040 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1040 + _1039 + -mem[64] - 4]
                        else:
                            mem[floor32(_1040) + _1039] = mem[floor32(_1040) + _1039 + -(_1040 % 32) + 32 len _1040 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1040) + _1039 + -mem[64] + 28]
                    else:
                        require 0 < signers.length
                        idx = 0
                        while signers[idx] != address(cd[4]):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require cd[100] >= block.timestamp
                        mem[_877 + 32] = stor2.length
                        idx = 0
                        s = 2
                        t = _877 + 64
                        while idx < 10:
                            mem[t] = stor[s]
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0x6dc8657c: mem[mem[64] len _877 + -mem[64] + 384]
                        _1231 = mem[64]
                        _1232 = mem[96]
                        s = 0
                        while 10 < _1232:
                            mem[_1231 + 10] = mem[138]
                            s = 42
                            continue 
                        if not _1232 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1232 + _1231 + -mem[64] - 4]
                        else:
                            mem[floor32(_1232) + _1231] = mem[floor32(_1232) + _1231 + -(_1232 % 32) + 32 len _1232 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1232) + _1231 + -mem[64] + 28]
                else:
                    _881 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_881 + 64] = uint8(uint8(_850) - 14)
                    mem[_881 + 96] = _848
                    mem[_881 + 128] = _849
                    signer = erecover(_512, uint8(_850) - 14 << 248, _848, _849) 
                    mem[_881] = signer
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not stor1:
                        require cd[100] >= block.timestamp
                        mem[_881 + 32] = stor2.length
                        idx = 0
                        s = 2
                        t = _881 + 64
                        while idx < 10:
                            mem[t] = stor[s]
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0x6dc8657c: mem[mem[64] len _881 + -mem[64] + 384]
                        _1041 = mem[64]
                        _1042 = mem[96]
                        s = 0
                        while 10 < _1042:
                            mem[_1041 + 10] = mem[138]
                            s = 42
                            continue 
                        if not _1042 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1042 + _1041 + -mem[64] - 4]
                        else:
                            mem[floor32(_1042) + _1041] = mem[floor32(_1042) + _1041 + -(_1042 % 32) + 32 len _1042 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1042) + _1041 + -mem[64] + 28]
                    else:
                        require 0 < signers.length
                        idx = 0
                        while signers[idx] != address(cd[4]):
                            require idx + 1 < signers.length
                            mem[0] = 0
                            idx = idx + 1
                            continue 
                        require cd[100] >= block.timestamp
                        mem[_881 + 32] = stor2.length
                        idx = 0
                        s = 2
                        t = _881 + 64
                        while idx < 10:
                            mem[t] = stor[s]
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        emit 0x6dc8657c: mem[mem[64] len _881 + -mem[64] + 384]
                        _1233 = mem[64]
                        _1234 = mem[96]
                        s = 0
                        while 10 < _1234:
                            mem[_1233 + 10] = mem[138]
                            s = 42
                            continue 
                        if not _1234 % 32:
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1234 + _1233 + -mem[64] - 4]
                        else:
                            mem[floor32(_1234) + _1233] = mem[floor32(_1234) + _1233 + -(_1234 % 32) + 32 len _1234 % 32]
                            call address(cd[4]).mem[mem[64] len 4] with:
                               value cd[36] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1234) + _1233 + -mem[64] + 28]
    require ext_call.success
}



}
