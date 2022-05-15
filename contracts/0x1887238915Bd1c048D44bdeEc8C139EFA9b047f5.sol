contract main {


// =======================  Init code  ======================


array of address stor0;
uint8 stor1;
address stor12;
address stor13;
address stor14;

function _fallback() payable {
    stor1 = 0
    require not msg.value
    mem[96 len -4854] = code.data[5550 len -4854]
    mem[64] = -4758
    require mem[mem[96] + 96] == 3
    require mem[140 len 20]
    require mem[172 len 20]
    require mem[204 len 20]
    stor14 = mem[204 len 20]
    stor0.length = mem[mem[96] + 96]
    if not mem[mem[96] + 96]:
        idx = 0
        while stor0.length > idx:
            stor0[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = mem[96] + 128
        while mem[96] + (32 * mem[mem[96] + 96]) + 128 > idx:
            stor0[s] = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[mem[96] + 96]) + 31) >> 5
        while stor0.length > idx:
            stor0[idx] = 0
            idx = idx + 1
            continue 
    stor12 = mem[140 len 20]
    stor13 = mem[172 len 20]
    return code.data[696 len 4854]
}



// =====================  Runtime code  =====================


array of address signers;
uint8 stor1;
array of uint256 stor2;
address stor12;
address stor13;
address loggerAddress;

function signers(uint256 arg1) {
    require arg1 < signers.length
    return signers[arg1]
}

function safeMode() {
    return bool(stor1)
}

function logger() {
    return loggerAddress
}

function isSigner(address arg1) {
    idx = 0
    while idx < signers.length:
        mem[0] = 0
        if signers[idx] != arg1:
            idx = idx + 1
            continue 
        return 1
    return 0
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

function _fallback() payable {
    if msg.value > 0:
        require ext_code.size(loggerAddress)
        call loggerAddress.0xb582823d with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), msg.value, 96, calldata.size, call.data[0 len calldata.size]
        require ext_call.success
}

function flushForwarderTokens(address arg1, address arg2) {
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
    require ext_call.success
}

function createForwarder() {
    require ext_code.size(stor12)
    call stor12.createProxy(address arg1, bytes arg2) with:
         gas gas_remaining wei
        args stor13, 64, 0
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).initialize(address arg1) with:
         gas gas_remaining wei
        args loggerAddress
    require ext_call.success
    require ext_code.size(loggerAddress)
    call loggerAddress.authorize(address arg1) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    require ext_call.success
    emit ForwarderCreated(address(ext_call.return_data[0]));
    return address(ext_call.return_data[0])
}

function sendMultiSigToken(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, bytes arg6) {
    mem[128 len arg6.length] = arg6[all]
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
    require arg6.length == 65
    if mem[192 len 1] >= 27:
        signer = erecover(sha3('ERC20', arg1, arg2, arg3, arg4, arg5), mem[161] << 248, mem[128], mem[160]) 
    else:
        signer = erecover(sha3('ERC20', arg1, arg2, arg3, arg4, arg5), mem[192 len 1] + 27 << 248, mem[128], mem[160]) 
    require erecover.result
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
    require ext_call.success
    require ext_call.return_data[0]
}

function sendMultiSig(address arg1, uint256 arg2, bytes arg3, uint256 arg4, uint256 arg5, bytes arg6) {
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128] = arg6.length
    mem[ceil32(arg3.length) + 160 len arg6.length] = arg6[all]
    require 0 < signers.length
    idx = 0
    while signers[idx] != msg.sender:
        require idx + 1 < signers.length
        mem[0] = 0
        idx = idx + 1
        continue 
    mem[ceil32(arg3.length) + ceil32(arg6.length) + 160] = 'ETHER'
    mem[ceil32(arg3.length) + ceil32(arg6.length) + 165] = address(arg1)
    mem[ceil32(arg3.length) + ceil32(arg6.length) + 185] = arg2
    mem[ceil32(arg3.length) + ceil32(arg6.length) + 217 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + ceil32(arg6.length) + floor32(arg3.length) + -(arg3.length % 32) + 249 len arg3.length % 32] = mem[floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
    mem[arg3.length + ceil32(arg3.length) + ceil32(arg6.length) + 217] = arg4
    mem[arg3.length + ceil32(arg3.length) + ceil32(arg6.length) + 249] = arg5
    _62 = sha3('ETHER', arg1, arg2, call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + ceil32(arg6.length) + floor32(arg3.length) + 217 len (arg3.length % 32) + 32], arg5, None)
    require arg6.length == 65
    _66 = mem[ceil32(arg3.length) + 192]
    _67 = mem[ceil32(arg3.length) + 193]
    mem[ceil32(arg3.length) + ceil32(arg6.length) + 192] = sha3('ETHER', arg1, arg2, call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + ceil32(arg6.length) + floor32(arg3.length) + 217 len (arg3.length % 32) + 32], arg5, None)
    if mem[ceil32(arg3.length) + 224 len 1] >= 27:
        mem[ceil32(arg3.length) + ceil32(arg6.length) + 224] = uint8(_67)
        mem[ceil32(arg3.length) + ceil32(arg6.length) + 256] = mem[ceil32(arg3.length) + 160]
        mem[ceil32(arg3.length) + ceil32(arg6.length) + 288] = _66
        signer = erecover(_62, _67 << 248, mem[ceil32(arg3.length) + 160], _66) 
        require erecover.result
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
        mem[ceil32(arg3.length) + ceil32(arg6.length) + 192 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    else:
        mem[ceil32(arg3.length) + ceil32(arg6.length) + 224] = uint8(uint8(_67) + 27)
        mem[ceil32(arg3.length) + ceil32(arg6.length) + 256] = mem[ceil32(arg3.length) + 160]
        mem[ceil32(arg3.length) + ceil32(arg6.length) + 288] = _66
        signer = erecover(_62, uint8(_67) + 27 << 248, mem[ceil32(arg3.length) + 160], _66) 
        require erecover.result
        if not stor1:
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
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 192 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
            var58001 = ceil32(arg3.length)
        else:
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
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 192 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        call arg1.mem[ceil32(arg3.length) + ceil32(arg6.length) + 192 len 4] with:
           value arg2 wei
             gas gas_remaining wei
            args mem[ceil32(arg3.length) + ceil32(arg6.length) + 196 len arg3.length - 4]
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg6.length) + 192] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg6.length) + -(arg3.length % 32) + 224 len arg3.length % 32]
        call arg1.mem[ceil32(arg3.length) + ceil32(arg6.length) + 192 len 4] with:
           value arg2 wei
             gas gas_remaining wei
            args mem[ceil32(arg3.length) + ceil32(arg6.length) + 196 len floor32(arg3.length) + 28]
    require ext_call.success
    mem[ceil32(arg3.length) + ceil32(arg6.length) + 192] = msg.sender
    mem[ceil32(arg3.length) + ceil32(arg6.length) + 224] = address(signer)
    mem[ceil32(arg3.length) + ceil32(arg6.length) + 256] = _62
    mem[ceil32(arg3.length) + ceil32(arg6.length) + 288] = arg1
    mem[ceil32(arg3.length) + ceil32(arg6.length) + 320] = arg2
    mem[ceil32(arg3.length) + ceil32(arg6.length) + 352] = 192
    mem[ceil32(arg3.length) + ceil32(arg6.length) + 384] = arg3.length
    mem[ceil32(arg3.length) + ceil32(arg6.length) + 416 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        emit Transacted(address arg1, address arg2, bytes32 arg3, address arg4, uint256 arg5, bytes arg6):
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + 192 len arg3.length + 25],
                        arg4,
                        arg5,
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + arg3.length + 281 len 135],
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg6.length) + 416] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg6.length) + -(arg3.length % 32) + 448 len arg3.length % 32]
        emit Transacted(address arg1, address arg2, bytes32 arg3, address arg4, uint256 arg5, bytes arg6):
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + 192 len arg3.length + 25],
                        arg4,
                        arg5,
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + arg3.length + 281 len -(arg3.length % 32) + 167],
}



}
