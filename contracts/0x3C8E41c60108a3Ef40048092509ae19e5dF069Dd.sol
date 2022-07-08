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
                    code: code.data[3676 len 1217]
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
        _52 = mem[64]
        require mem[64] + ceil32(cd[(cd[164] + cd[s] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(cd[164] + cd[s] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(cd[164] + cd[s] + 36)]) + 32
        mem[_52] = cd[(cd[164] + cd[s] + 36)]
        require cd[164] + cd[s] + cd[(cd[164] + cd[s] + 36)] + 68 <= calldata.size
        mem[_52 + 32 len cd[(cd[164] + cd[s] + 36)]] = call.data[cd[164] + cd[s] + 68 len cd[(cd[164] + cd[s] + 36)]]
        mem[cd[(cd[164] + cd[s] + 36)] + _52 + 32] = 0
        mem[t] = _52
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
    _103 = mem[ceil32(('cd', 68).length) + 160]
    _104 = mem[64]
    mem[mem[64]] = 'ETHER'
    mem[mem[64] + 5] = address(cd[4])
    mem[mem[64] + 25] = cd[36]
    _105 = mem[96]
    mem[mem[64] + 57 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + floor32(mem[96]) + 57] = 256^(-(mem[96] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[96]) + 57] or mem[floor32(mem[96]) + 128] and !(256^(-(mem[96] % 32) + 32) - 1)
    mem[_104 + _105 + 57] = cd[100]
    mem[_104 + _105 + 89] = cd[132]
    _152 = sha3(mem[mem[64] len _104 + _105 + -mem[64] + 121])
    mem[mem[64]] = address(cd[4])
    mem[mem[64] + 32] = cd[36]
    mem[mem[64] + 64] = 160
    _154 = mem[96]
    mem[mem[64] + 160] = mem[96]
    mem[mem[64] + 192 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(mem[96]) <= mem[96]:
        mem[mem[64] + 96] = cd[100]
        mem[mem[64] + 128] = cd[132]
        emit 0x1e816970: address(cd[4]), cd[36], 160, cd[100], cd[132], mem[mem[64] + 160 len ceil32(_154) + 32]
        _194 = mem[64]
        mem[mem[64]] = 64
        _197 = mem[_103]
        mem[mem[64] + 64] = mem[_103]
        mem[mem[64] + 96 len ceil32(_197)] = mem[_103 + 32 len ceil32(_197)]
        if ceil32(_197) <= _197:
            mem[mem[64] + 32] = _152
            emit 0x7d101e99: mem[mem[64] len _194 + ceil32(_197) + -mem[64] + 96]
            _232 = mem[64]
            _233 = mem[96]
            mem[mem[64] len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if not _233 % 32:
                call address(cd[4]).mem[mem[64] len 4] with:
                   value cd[36] wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _233 - 4]
            else:
                mem[floor32(_233) + mem[64]] = mem[floor32(_233) + mem[64] + -(_233 % 32) + 32 len _233 % 32]
                call address(cd[4]).mem[mem[64] len 4] with:
                   value cd[36] wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len floor32(_233) + _232 + -mem[64] + 28]
        else:
            mem[mem[64] + _197 + 96] = 0
            mem[mem[64] + 32] = _152
            emit 0x7d101e99: mem[mem[64] len _194 + ceil32(_197) + -mem[64] + 96]
            _238 = mem[64]
            _239 = mem[96]
            mem[mem[64] len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if not _239 % 32:
                call address(cd[4]).mem[mem[64] len 4] with:
                   value cd[36] wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _239 - 4]
            else:
                mem[floor32(_239) + mem[64]] = mem[floor32(_239) + mem[64] + -(_239 % 32) + 32 len _239 % 32]
                call address(cd[4]).mem[mem[64] len 4] with:
                   value cd[36] wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len floor32(_239) + _238 + -mem[64] + 28]
    else:
        mem[mem[64] + mem[96] + 192] = 0
        mem[mem[64] + 96] = cd[100]
        mem[mem[64] + 128] = cd[132]
        emit 0x1e816970: address(cd[4]), cd[36], 160, cd[100], cd[132], mem[mem[64] + 160 len ceil32(_154) + 32]
        _196 = mem[64]
        mem[mem[64]] = 64
        _198 = mem[_103]
        mem[mem[64] + 64] = mem[_103]
        mem[mem[64] + 96 len ceil32(_198)] = mem[_103 + 32 len ceil32(_198)]
        if ceil32(_198) <= _198:
            mem[mem[64] + 32] = _152
            emit 0x7d101e99: mem[mem[64] len _196 + ceil32(_198) + -mem[64] + 96]
            _235 = mem[64]
            _236 = mem[96]
            mem[mem[64] len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if not _236 % 32:
                call address(cd[4]).mem[mem[64] len 4] with:
                   value cd[36] wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _236 - 4]
            else:
                mem[floor32(_236) + mem[64]] = mem[floor32(_236) + mem[64] + -(_236 % 32) + 32 len _236 % 32]
                call address(cd[4]).mem[mem[64] len 4] with:
                   value cd[36] wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len floor32(_236) + _235 + -mem[64] + 28]
        else:
            mem[mem[64] + _198 + 96] = 0
            mem[mem[64] + 32] = _152
            emit 0x7d101e99: mem[mem[64] len _196 + ceil32(_198) + -mem[64] + 96]
            _241 = mem[64]
            _242 = mem[96]
            mem[mem[64] len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if not _242 % 32:
                call address(cd[4]).mem[mem[64] len 4] with:
                   value cd[36] wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _242 - 4]
            else:
                mem[floor32(_242) + mem[64]] = mem[floor32(_242) + mem[64] + -(_242 % 32) + 32 len _242 % 32]
                call address(cd[4]).mem[mem[64] len 4] with:
                   value cd[36] wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len floor32(_242) + _241 + -mem[64] + 28]
    require ext_call.success
}



}
