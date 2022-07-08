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
                    code: code.data[3644 len 1217]
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
    if mem[192 len 1] <= 35:
        if mem[192 len 1] >= 27:
            signer = erecover(sha3(0, arg1, arg2, arg3, arg4, arg5), mem[161] << 248, mem[128], mem[160]) 
        else:
            signer = erecover(sha3(0, arg1, arg2, arg3, arg4, arg5), mem[192 len 1] + 27 << 248, mem[128], mem[160]) 
    else:
        if uint8(mem[192 len 1] - 41) >= 27:
            signer = erecover(sha3(0, arg1, arg2, arg3, arg4, arg5), mem[192 len 1] - 41 << 248, mem[128], mem[160]) 
        else:
            signer = erecover(sha3(0, arg1, arg2, arg3, arg4, arg5), mem[192 len 1] - 14 << 248, mem[128], mem[160]) 
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
        _50 = mem[64]
        require mem[64] + ceil32(cd[(cd[164] + cd[s] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(cd[164] + cd[s] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(cd[164] + cd[s] + 36)]) + 32
        mem[_50] = cd[(cd[164] + cd[s] + 36)]
        require cd[164] + cd[s] + cd[(cd[164] + cd[s] + 36)] + 68 <= calldata.size
        mem[_50 + 32 len cd[(cd[164] + cd[s] + 36)]] = call.data[cd[164] + cd[s] + 68 len cd[(cd[164] + cd[s] + 36)]]
        mem[cd[(cd[164] + cd[s] + 36)] + _50 + 32] = 0
        mem[t] = _50
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
    _99 = mem[ceil32(('cd', 68).length) + 160]
    mem[mem[64]] = 'ETHER'
    mem[mem[64] + 5] = address(cd[4])
    mem[mem[64] + 25] = cd[36]
    mem[mem[64] + 57 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + floor32(mem[96]) + 57] = 256^(-(mem[96] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[96]) + 57] or mem[floor32(mem[96]) + 128] and !(256^(-(mem[96] % 32) + 32) - 1)
    mem[mem[64] + mem[96] + 57] = cd[100]
    mem[mem[64] + mem[96] + 89] = cd[132]
    _146 = sha3('ETHER', address(cd[4]), cd[36], mem[mem[64] + 57 len mem[96] + 32], cd[132])
    require 65 == mem[_99]
    _149 = mem[_99 + 32]
    _150 = mem[_99 + 64]
    _151 = mem[_99 + 65]
    if mem[_99 + 96 len 1] <= 35:
        if mem[_99 + 96 len 1] >= 27:
            _152 = mem[64]
            mem[64] = mem[64] + 32
            mem[_152 + 32] = _146
            mem[_152 + 64] = uint8(_151)
            mem[_152 + 96] = _149
            mem[_152 + 128] = _150
            signer = erecover(_146, _151 << 248, _149, _150) 
            mem[_152] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            if not stor1:
                require cd[100] >= block.timestamp
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
                while signers[idx] != mem[_152 + 12 len 20]:
                    require idx + 1 < signers.length
                    mem[0] = 0
                    idx = idx + 1
                    continue 
                require mem[_152 + 12 len 20] != msg.sender
                _273 = mem[96]
                mem[_152 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if not _273 % 32:
                    call address(cd[4]) with:
                       funct Mask(32, 224, 'ETHER') >> 224
                       value cd[36] wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _273 + _152 + -mem[64] + 28]
                else:
                    mem[floor32(_273) + _152 + 32] = mem[floor32(_273) + _152 + -(_273 % 32) + 64 len _273 % 32]
                    call address(cd[4]) with:
                       funct Mask(32, 224, 'ETHER') >> 224
                       value cd[36] wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len floor32(_273) + _152 + -mem[64] + 60]
            else:
                require 0 < signers.length
                idx = 0
                while signers[idx] != address(cd[4]):
                    require idx + 1 < signers.length
                    mem[0] = 0
                    idx = idx + 1
                    continue 
                require cd[100] >= block.timestamp
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
                while signers[idx] != mem[_152 + 12 len 20]:
                    require idx + 1 < signers.length
                    mem[0] = 0
                    idx = idx + 1
                    continue 
                require mem[_152 + 12 len 20] != msg.sender
                _433 = mem[96]
                mem[_152 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if not _433 % 32:
                    call address(cd[4]) with:
                       funct Mask(32, 224, 'ETHER') >> 224
                       value cd[36] wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _433 + _152 + -mem[64] + 28]
                else:
                    mem[floor32(_433) + _152 + 32] = mem[floor32(_433) + _152 + -(_433 % 32) + 64 len _433 % 32]
                    call address(cd[4]) with:
                       funct Mask(32, 224, 'ETHER') >> 224
                       value cd[36] wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len floor32(_433) + _152 + -mem[64] + 60]
        else:
            _154 = mem[64]
            mem[64] = mem[64] + 32
            mem[_154 + 32] = _146
            mem[_154 + 64] = uint8(uint8(_151) + 27)
            mem[_154 + 96] = _149
            mem[_154 + 128] = _150
            signer = erecover(_146, uint8(_151) + 27 << 248, _149, _150) 
            mem[_154] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            if not stor1:
                require cd[100] >= block.timestamp
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
                while signers[idx] != mem[_154 + 12 len 20]:
                    require idx + 1 < signers.length
                    mem[0] = 0
                    idx = idx + 1
                    continue 
                require mem[_154 + 12 len 20] != msg.sender
                _275 = mem[96]
                mem[_154 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                var124001 = ceil32(_275)
                if not _275 % 32:
                    call address(cd[4]) with:
                       funct Mask(32, 224, 'ETHER') >> 224
                       value cd[36] wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _275 + _154 + -mem[64] + 28]
                else:
                    mem[floor32(_275) + _154 + 32] = mem[floor32(_275) + _154 + -(_275 % 32) + 64 len _275 % 32]
                    call address(cd[4]) with:
                       funct Mask(32, 224, 'ETHER') >> 224
                       value cd[36] wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len floor32(_275) + _154 + -mem[64] + 60]
            else:
                require 0 < signers.length
                idx = 0
                while signers[idx] != address(cd[4]):
                    require idx + 1 < signers.length
                    mem[0] = 0
                    idx = idx + 1
                    continue 
                require cd[100] >= block.timestamp
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
                while signers[idx] != mem[_154 + 12 len 20]:
                    require idx + 1 < signers.length
                    mem[0] = 0
                    idx = idx + 1
                    continue 
                require mem[_154 + 12 len 20] != msg.sender
                _435 = mem[96]
                mem[_154 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if not _435 % 32:
                    call address(cd[4]) with:
                       funct Mask(32, 224, 'ETHER') >> 224
                       value cd[36] wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _435 + _154 + -mem[64] + 28]
                else:
                    mem[floor32(_435) + _154 + 32] = mem[floor32(_435) + _154 + -(_435 % 32) + 64 len _435 % 32]
                    call address(cd[4]) with:
                       funct Mask(32, 224, 'ETHER') >> 224
                       value cd[36] wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len floor32(_435) + _154 + -mem[64] + 60]
    else:
        if uint8(mem[_99 + 96 len 1] - 41) >= 27:
            _156 = mem[64]
            mem[64] = mem[64] + 32
            mem[_156 + 32] = _146
            mem[_156 + 64] = uint8(uint8(_151) - 41)
            mem[_156 + 96] = _149
            mem[_156 + 128] = _150
            signer = erecover(_146, uint8(_151) - 41 << 248, _149, _150) 
            mem[_156] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            if not stor1:
                require cd[100] >= block.timestamp
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
                while signers[idx] != mem[_156 + 12 len 20]:
                    require idx + 1 < signers.length
                    mem[0] = 0
                    idx = idx + 1
                    continue 
                require mem[_156 + 12 len 20] != msg.sender
                _277 = mem[96]
                mem[_156 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                var124001 = ceil32(_277)
                if not _277 % 32:
                    call address(cd[4]) with:
                       funct Mask(32, 224, 'ETHER') >> 224
                       value cd[36] wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _277 + _156 + -mem[64] + 28]
                else:
                    mem[floor32(_277) + _156 + 32] = mem[floor32(_277) + _156 + -(_277 % 32) + 64 len _277 % 32]
                    call address(cd[4]) with:
                       funct Mask(32, 224, 'ETHER') >> 224
                       value cd[36] wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len floor32(_277) + _156 + -mem[64] + 60]
            else:
                require 0 < signers.length
                idx = 0
                while signers[idx] != address(cd[4]):
                    require idx + 1 < signers.length
                    mem[0] = 0
                    idx = idx + 1
                    continue 
                require cd[100] >= block.timestamp
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
                while signers[idx] != mem[_156 + 12 len 20]:
                    require idx + 1 < signers.length
                    mem[0] = 0
                    idx = idx + 1
                    continue 
                require mem[_156 + 12 len 20] != msg.sender
                _437 = mem[96]
                mem[_156 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if not _437 % 32:
                    call address(cd[4]) with:
                       funct Mask(32, 224, 'ETHER') >> 224
                       value cd[36] wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _437 + _156 + -mem[64] + 28]
                else:
                    mem[floor32(_437) + _156 + 32] = mem[floor32(_437) + _156 + -(_437 % 32) + 64 len _437 % 32]
                    call address(cd[4]) with:
                       funct Mask(32, 224, 'ETHER') >> 224
                       value cd[36] wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len floor32(_437) + _156 + -mem[64] + 60]
        else:
            _158 = mem[64]
            mem[64] = mem[64] + 32
            mem[_158 + 32] = _146
            mem[_158 + 64] = uint8(uint8(_151) - 14)
            mem[_158 + 96] = _149
            mem[_158 + 128] = _150
            signer = erecover(_146, uint8(_151) - 14 << 248, _149, _150) 
            mem[_158] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            if not stor1:
                require cd[100] >= block.timestamp
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
                while signers[idx] != mem[_158 + 12 len 20]:
                    require idx + 1 < signers.length
                    mem[0] = 0
                    idx = idx + 1
                    continue 
                require mem[_158 + 12 len 20] != msg.sender
                _279 = mem[96]
                mem[_158 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                var125001 = ceil32(_279)
                if not _279 % 32:
                    call address(cd[4]) with:
                       funct Mask(32, 224, 'ETHER') >> 224
                       value cd[36] wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _279 + _158 + -mem[64] + 28]
                else:
                    mem[floor32(_279) + _158 + 32] = mem[floor32(_279) + _158 + -(_279 % 32) + 64 len _279 % 32]
                    call address(cd[4]) with:
                       funct Mask(32, 224, 'ETHER') >> 224
                       value cd[36] wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len floor32(_279) + _158 + -mem[64] + 60]
            else:
                require 0 < signers.length
                idx = 0
                while signers[idx] != address(cd[4]):
                    require idx + 1 < signers.length
                    mem[0] = 0
                    idx = idx + 1
                    continue 
                require cd[100] >= block.timestamp
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
                while signers[idx] != mem[_158 + 12 len 20]:
                    require idx + 1 < signers.length
                    mem[0] = 0
                    idx = idx + 1
                    continue 
                require mem[_158 + 12 len 20] != msg.sender
                _439 = mem[96]
                mem[_158 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if not _439 % 32:
                    call address(cd[4]) with:
                       funct Mask(32, 224, 'ETHER') >> 224
                       value cd[36] wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _439 + _158 + -mem[64] + 28]
                else:
                    mem[floor32(_439) + _158 + 32] = mem[floor32(_439) + _158 + -(_439 % 32) + 64 len _439 % 32]
                    call address(cd[4]) with:
                       funct Mask(32, 224, 'ETHER') >> 224
                       value cd[36] wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len floor32(_439) + _158 + -mem[64] + 60]
    require ext_call.success
    mem[mem[64]] = msg.sender
    mem[mem[64] + 32] = address(signer)
    mem[mem[64] + 64] = _146
    mem[mem[64] + 96] = address(cd[4])
    mem[mem[64] + 128] = cd[36]
    mem[mem[64] + 160] = 192
    mem[mem[64] + 192] = mem[96]
    mem[mem[64] + 224 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(mem[96]) > mem[96]:
        mem[mem[64] + mem[96] + 224] = 0
    emit Transacted(msg.sender, address(signer), _146, address(cd[4]), cd[36], Array(len=mem[96], data=mem[mem[64] + 224 len ceil32(mem[96])]));
}



}
