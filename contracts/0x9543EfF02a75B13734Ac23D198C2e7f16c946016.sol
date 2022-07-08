contract main {




// =====================  Runtime code  =====================


array of address signers;
uint8 stor1;
array of uint256 stor2;

function signers(uint256 arg1) {
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
                    code: code.data[2795 len 918]
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
    require 0 < signers.length
    idx = 0
    while signers[idx] != msg.sender:
        require idx + 1 < signers.length
        mem[0] = 0
        idx = idx + 1
        continue 
    require ext_code.size(arg1)
    call arg1.0x3ef13367 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
    require 65 == arg6.length
    if mem[192 len 1] <= 35:
        if mem[192 len 1] >= 27:
            signer = erecover(sha3('ERC20', arg1, arg2, arg3, arg4, arg5), mem[161] << 248, mem[128], mem[160]) 
        else:
            signer = erecover(sha3('ERC20', arg1, arg2, arg3, arg4, arg5), mem[192 len 1] + 27 << 248, mem[128], mem[160]) 
    else:
        if uint8(mem[192 len 1] - 41) >= 27:
            signer = erecover(sha3('ERC20', arg1, arg2, arg3, arg4, arg5), mem[192 len 1] - 41 << 248, mem[128], mem[160]) 
        else:
            signer = erecover(sha3('ERC20', arg1, arg2, arg3, arg4, arg5), mem[192 len 1] - 14 << 248, mem[128], mem[160]) 
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
    mem[ceil32(arg3.length) + ceil32(arg6.length) + floor32(arg3.length) + 217] = 256^(-(arg3.length % 32) + 32) - 1 and mem[ceil32(arg3.length) + ceil32(arg6.length) + floor32(arg3.length) + 217] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], mem[arg3.length + 128 len -(arg3.length % 32) + 32] and !(256^(-(arg3.length % 32) + 32) - 1)
    mem[ceil32(arg3.length) + ceil32(arg6.length) + arg3.length + 217] = arg4
    mem[ceil32(arg3.length) + ceil32(arg6.length) + arg3.length + 249] = arg5
    _86 = sha3('ETHER', arg1, arg2, call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + ceil32(arg6.length) + floor32(arg3.length) + 217 len (arg3.length % 32) + 32], arg5, None)
    require 65 == arg6.length
    _90 = mem[ceil32(arg3.length) + 192]
    _91 = mem[ceil32(arg3.length) + 193]
    mem[ceil32(arg3.length) + ceil32(arg6.length) + 192] = sha3('ETHER', arg1, arg2, call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + ceil32(arg6.length) + floor32(arg3.length) + 217 len (arg3.length % 32) + 32], arg5, None)
    if mem[ceil32(arg3.length) + 224 len 1] <= 35:
        if mem[ceil32(arg3.length) + 224 len 1] >= 27:
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 224] = uint8(_91)
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 256] = mem[ceil32(arg3.length) + 160]
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 288] = _90
            signer = erecover(_86, _91 << 248, mem[ceil32(arg3.length) + 160], _90) 
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
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 192 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        else:
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 224] = uint8(uint8(_91) + 27)
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 256] = mem[ceil32(arg3.length) + 160]
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 288] = _90
            signer = erecover(_86, uint8(_91) + 27 << 248, mem[ceil32(arg3.length) + 160], _90) 
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
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
                var59001 = ceil32(arg3.length)
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
    else:
        if uint8(mem[ceil32(arg3.length) + 224 len 1] - 41) >= 27:
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 224] = uint8(uint8(_91) - 41)
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 256] = mem[ceil32(arg3.length) + 160]
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 288] = _90
            signer = erecover(_86, uint8(_91) - 41 << 248, mem[ceil32(arg3.length) + 160], _90) 
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
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
                var59001 = ceil32(arg3.length)
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
        else:
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 224] = uint8(uint8(_91) - 14)
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 256] = mem[ceil32(arg3.length) + 160]
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 288] = _90
            signer = erecover(_86, uint8(_91) - 14 << 248, mem[ceil32(arg3.length) + 160], _90) 
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
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
                var60001 = ceil32(arg3.length)
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
    mem[ceil32(arg3.length) + ceil32(arg6.length) + 256] = _86
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
