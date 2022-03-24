contract main {


// =======================  Init code  ======================


array of address stor0;
uint8 stor1;

function _fallback() payable {
    mem[96 len -3336] = code.data[3614 len -3336]
    mem[64] = -3240
    require mem[mem[96] + 96] >= 2
    stor0.length = mem[mem[96] + 96]
    if not mem[mem[96] + 96]:
        idx = 0
        while stor0.length > idx:
            address(stor0[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = mem[96] + 128
        while mem[96] + (32 * mem[mem[96] + 96]) + 128 > idx:
            uint256(stor0[s]) = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[mem[96] + 96]) + 31) >> 5
        while stor0.length > idx:
            address(stor0[idx]) = 0
            idx = idx + 1
            continue 
    stor1 = 0
    return code.data[278 len 3336]
}



// =====================  Runtime code  =====================


array of address signers;
uint8 stor1;
array of uint256 stor2;

function signers(uint256 arg1) payable {
    require arg1 < signers.length
    return signers[arg1]
}

function safeMode() payable {
    return bool(stor1)
}

function _fallback() payable {
    if msg.value > 0:
        emit Deposited(address(msg.sender), msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]));
}

function isSigner(address arg1) payable {
    idx = 0
    while idx < signers.length:
        mem[0] = 0
        if signers[idx] != arg1:
            idx = idx + 1
            continue 
        return 1
    return 0
}

function recoverAddressFromSignature(bytes32 arg1, bytes arg2) payable {
    mem[128 len arg2.length] = arg2[all]
    require arg2.length == 65
    signer = erecover(arg1, mem[161] << 248, mem[128], mem[160]) 
    require erecover.result
    return address(signer)
}

function activateSafeMode() payable {
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

function getNextSequenceId() payable {
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

function createForwarder() payable {
    require 0 < signers.length
    idx = 0
    while signers[idx] != msg.sender:
        require idx + 1 < signers.length
        mem[0] = 0
        idx = idx + 1
        continue 
    create contract with 0 wei
                    code: code.data[2886 len 450]
    return address(create.new_address)
}

function tryInsertSequenceId(uint256 arg1) payable {
    require 0 < signers.length
    idx = 0
    while signers[idx] != msg.sender:
        require idx + 1 < signers.length
        mem[0] = 0
        idx = idx + 1
        continue 
    idx = 0
    while uint8(idx) < 10:
        require stor2[uint8(idx)] != arg1
        require uint8(idx) < 10
        idx = idx + 1
        continue 
    require arg1 >= stor2.length
    stor2.length = arg1
    return 0
}

function sendMultiSig(address arg1, uint256 arg2, bytes arg3, uint256 arg4, uint256 arg5, bytes arg6) payable {
    mem[ceil32(arg3.length) + 160 len arg6.length] = arg6[all]
    require 0 < signers.length
    idx = 0
    while signers[idx] != msg.sender:
        require idx + 1 < signers.length
        mem[0] = 0
        idx = idx + 1
        continue 
    mem[ceil32(arg3.length) + ceil32(arg6.length) + 192] = arg1
    mem[ceil32(arg3.length) + ceil32(arg6.length) + 224] = arg2
    mem[ceil32(arg3.length) + ceil32(arg6.length) + 288] = arg4
    mem[ceil32(arg3.length) + ceil32(arg6.length) + 320] = arg5
    mem[ceil32(arg3.length) + ceil32(arg6.length) + 256] = 224
    mem[ceil32(arg3.length) + ceil32(arg6.length) + 384] = arg3.length
    mem[ceil32(arg3.length) + ceil32(arg6.length) + 416 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + ceil32(arg6.length) + 352] = arg3.length + 256
    mem[arg3.length + ceil32(arg3.length) + ceil32(arg6.length) + 416] = arg6.length
    emit 0x8de6455d: msg.sender, address(arg1), arg2, Array(len=arg3.length, data=arg3[all]), arg4, arg5, arg3.length + 256
    if not arg6.length % 32:
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
            while uint8(idx) < 10:
                require stor2[uint8(idx)] != arg5
                require uint8(idx) < 10
                idx = idx + 1
                continue 
            require arg5 >= stor2.length
            stor2.length = arg5
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 160] = address(arg1)
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 180] = arg2
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 212 len arg3.length] = arg3[all]
            mem[arg3.length + ceil32(arg3.length) + ceil32(arg6.length) + 212] = arg4
            mem[arg3.length + ceil32(arg3.length) + ceil32(arg6.length) + 244] = arg5
            _76 = sha3(arg1, arg2, mem[ceil32(arg3.length) + ceil32(arg6.length) + 212 len 12], arg2, mem[ceil32(arg3.length) + ceil32(arg6.length) + 256 len arg3.length + 20])
            require arg6.length == 65
            _93 = mem[ceil32(arg3.length) + 160]
            _94 = mem[ceil32(arg3.length) + 192]
            _95 = mem[ceil32(arg3.length) + 193]
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 160] = sha3(arg1, arg2, mem[ceil32(arg3.length) + ceil32(arg6.length) + 212 len 12], arg2, mem[ceil32(arg3.length) + ceil32(arg6.length) + 256 len arg3.length + 20])
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 192] = uint8(_95)
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 224] = _93
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 256] = _94
            signer = erecover(mem[ceil32(arg3.length) + ceil32(arg6.length) + 160], _95 << 248, _93, _94) 
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 160] = signer
            require erecover.result
            require 0 < signers.length
            idx = 0
            while signers[idx] != address(signer):
                require idx + 1 < signers.length
                mem[0] = 0
                idx = idx + 1
                continue 
            require address(signer) != msg.sender
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 160 len arg3.length] = arg3[all]
            call arg1 with:
               funct Mask(32, 224, signer) >> 224
               value arg2 wei
                 gas gas_remaining - 34050 wei
                args mem[ceil32(arg3.length) + ceil32(arg6.length) + 164 len arg3.length - 4]
            require ext_call.success
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 192] = address(signer)
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 224] = _76
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 256] = arg1
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 288] = arg2
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 320] = 192
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 352] = arg3.length
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 384 len arg3.length] = arg3[all]
            if not arg3.length % 32:
                emit Transacted(address rg1, address rg2, bytes32 rg3, address rg4, uint256 rg5, bytes rg6):
                                msg.sender,
                                mem[ceil32(arg3.length) + ceil32(arg6.length) + 192 len arg3.length + 20],
                                arg4,
                                arg5,
                                mem[ceil32(arg3.length) + ceil32(arg6.length) + arg3.length + 276 len 108],
            else:
                mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg6.length) + 384] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg6.length) + -(arg3.length % 32) + 416 len arg3.length % 32]
                emit Transacted(msg.sender, address(signer), _76, address(arg1), arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + ceil32(arg6.length) + 384], call.data[arg3 + 36 len floor32(arg3.length)]));
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
            while uint8(idx) < 10:
                require stor2[uint8(idx)] != arg5
                require uint8(idx) < 10
                idx = idx + 1
                continue 
            require arg5 >= stor2.length
            stor2.length = arg5
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 160] = address(arg1)
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 180] = arg2
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 212 len arg3.length] = arg3[all]
            mem[arg3.length + ceil32(arg3.length) + ceil32(arg6.length) + 212] = arg4
            mem[arg3.length + ceil32(arg3.length) + ceil32(arg6.length) + 244] = arg5
            _202 = sha3(arg1, arg2, mem[ceil32(arg3.length) + ceil32(arg6.length) + 212 len 12], arg2, mem[ceil32(arg3.length) + ceil32(arg6.length) + 256 len arg3.length + 20])
            require arg6.length == 65
            _237 = mem[ceil32(arg3.length) + 160]
            _238 = mem[ceil32(arg3.length) + 192]
            _239 = mem[ceil32(arg3.length) + 193]
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 160] = sha3(arg1, arg2, mem[ceil32(arg3.length) + ceil32(arg6.length) + 212 len 12], arg2, mem[ceil32(arg3.length) + ceil32(arg6.length) + 256 len arg3.length + 20])
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 192] = uint8(_239)
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 224] = _237
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 256] = _238
            signer = erecover(mem[ceil32(arg3.length) + ceil32(arg6.length) + 160], _239 << 248, _237, _238) 
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 160] = signer
            require erecover.result
            require 0 < signers.length
            idx = 0
            while signers[idx] != address(signer):
                require idx + 1 < signers.length
                mem[0] = 0
                idx = idx + 1
                continue 
            require address(signer) != msg.sender
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 160 len arg3.length] = arg3[all]
            call arg1 with:
               funct Mask(32, 224, signer) >> 224
               value arg2 wei
                 gas gas_remaining - 34050 wei
                args mem[ceil32(arg3.length) + ceil32(arg6.length) + 164 len arg3.length - 4]
            require ext_call.success
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 192] = address(signer)
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 224] = _202
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 256] = arg1
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 288] = arg2
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 320] = 192
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 352] = arg3.length
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 384 len arg3.length] = arg3[all]
            if not arg3.length % 32:
                emit Transacted(address rg1, address rg2, bytes32 rg3, address rg4, uint256 rg5, bytes rg6):
                                msg.sender,
                                mem[ceil32(arg3.length) + ceil32(arg6.length) + 192 len arg3.length + 20],
                                arg4,
                                arg5,
                                mem[ceil32(arg3.length) + ceil32(arg6.length) + arg3.length + 276 len 108],
            else:
                mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg6.length) + 384] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg6.length) + -(arg3.length % 32) + 416 len arg3.length % 32]
                emit Transacted(msg.sender, address(signer), _202, address(arg1), arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + ceil32(arg6.length) + 384], call.data[arg3 + 36 len floor32(arg3.length)]));
    else:
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
            while uint8(idx) < 10:
                require stor2[uint8(idx)] != arg5
                require uint8(idx) < 10
                idx = idx + 1
                continue 
            require arg5 >= stor2.length
            stor2.length = arg5
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 160] = address(arg1)
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 180] = arg2
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 212 len arg3.length] = arg3[all]
            mem[arg3.length + ceil32(arg3.length) + ceil32(arg6.length) + 212] = arg4
            mem[arg3.length + ceil32(arg3.length) + ceil32(arg6.length) + 244] = arg5
            _80 = sha3(arg1, arg2, mem[ceil32(arg3.length) + ceil32(arg6.length) + 212 len 12], arg2, mem[ceil32(arg3.length) + ceil32(arg6.length) + 256 len arg3.length + 20])
            require arg6.length == 65
            _98 = mem[ceil32(arg3.length) + 160]
            _99 = mem[ceil32(arg3.length) + 192]
            _100 = mem[ceil32(arg3.length) + 193]
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 160] = sha3(arg1, arg2, mem[ceil32(arg3.length) + ceil32(arg6.length) + 212 len 12], arg2, mem[ceil32(arg3.length) + ceil32(arg6.length) + 256 len arg3.length + 20])
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 192] = uint8(_100)
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 224] = _98
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 256] = _99
            signer = erecover(mem[ceil32(arg3.length) + ceil32(arg6.length) + 160], _100 << 248, _98, _99) 
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 160] = signer
            require erecover.result
            require 0 < signers.length
            idx = 0
            while signers[idx] != address(signer):
                require idx + 1 < signers.length
                mem[0] = 0
                idx = idx + 1
                continue 
            require address(signer) != msg.sender
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 160 len arg3.length] = arg3[all]
            call arg1 with:
               funct Mask(32, 224, signer) >> 224
               value arg2 wei
                 gas gas_remaining - 34050 wei
                args mem[ceil32(arg3.length) + ceil32(arg6.length) + 164 len arg3.length - 4]
            require ext_call.success
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 192] = address(signer)
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 224] = _80
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 256] = arg1
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 288] = arg2
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 320] = 192
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 352] = arg3.length
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 384 len arg3.length] = arg3[all]
            if not arg3.length % 32:
                emit Transacted(address rg1, address rg2, bytes32 rg3, address rg4, uint256 rg5, bytes rg6):
                                msg.sender,
                                mem[ceil32(arg3.length) + ceil32(arg6.length) + 192 len arg3.length + 20],
                                arg4,
                                arg5,
                                mem[ceil32(arg3.length) + ceil32(arg6.length) + arg3.length + 276 len 108],
            else:
                mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg6.length) + 384] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg6.length) + -(arg3.length % 32) + 416 len arg3.length % 32]
                emit Transacted(msg.sender, address(signer), _80, address(arg1), arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + ceil32(arg6.length) + 384], call.data[arg3 + 36 len floor32(arg3.length)]));
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
            while uint8(idx) < 10:
                require stor2[uint8(idx)] != arg5
                require uint8(idx) < 10
                idx = idx + 1
                continue 
            require arg5 >= stor2.length
            stor2.length = arg5
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 160] = address(arg1)
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 180] = arg2
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 212 len arg3.length] = arg3[all]
            mem[arg3.length + ceil32(arg3.length) + ceil32(arg6.length) + 212] = arg4
            mem[arg3.length + ceil32(arg3.length) + ceil32(arg6.length) + 244] = arg5
            _208 = sha3(arg1, arg2, mem[ceil32(arg3.length) + ceil32(arg6.length) + 212 len 12], arg2, mem[ceil32(arg3.length) + ceil32(arg6.length) + 256 len arg3.length + 20])
            require arg6.length == 65
            _246 = mem[ceil32(arg3.length) + 160]
            _247 = mem[ceil32(arg3.length) + 192]
            _248 = mem[ceil32(arg3.length) + 193]
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 160] = sha3(arg1, arg2, mem[ceil32(arg3.length) + ceil32(arg6.length) + 212 len 12], arg2, mem[ceil32(arg3.length) + ceil32(arg6.length) + 256 len arg3.length + 20])
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 192] = uint8(_248)
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 224] = _246
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 256] = _247
            signer = erecover(mem[ceil32(arg3.length) + ceil32(arg6.length) + 160], _248 << 248, _246, _247) 
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 160] = signer
            require erecover.result
            require 0 < signers.length
            idx = 0
            while signers[idx] != address(signer):
                require idx + 1 < signers.length
                mem[0] = 0
                idx = idx + 1
                continue 
            require address(signer) != msg.sender
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 160 len arg3.length] = arg3[all]
            call arg1 with:
               funct Mask(32, 224, signer) >> 224
               value arg2 wei
                 gas gas_remaining - 34050 wei
                args mem[ceil32(arg3.length) + ceil32(arg6.length) + 164 len arg3.length - 4]
            require ext_call.success
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 192] = address(signer)
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 224] = _208
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 256] = arg1
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 288] = arg2
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 320] = 192
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 352] = arg3.length
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 384 len arg3.length] = arg3[all]
            if not arg3.length % 32:
                emit Transacted(address rg1, address rg2, bytes32 rg3, address rg4, uint256 rg5, bytes rg6):
                                msg.sender,
                                mem[ceil32(arg3.length) + ceil32(arg6.length) + 192 len arg3.length + 20],
                                arg4,
                                arg5,
                                mem[ceil32(arg3.length) + ceil32(arg6.length) + arg3.length + 276 len 108],
            else:
                mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg6.length) + 384] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg6.length) + -(arg3.length % 32) + 416 len arg3.length % 32]
                emit Transacted(msg.sender, address(signer), _208, address(arg1), arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + ceil32(arg6.length) + 384], call.data[arg3 + 36 len floor32(arg3.length)]));
}



}
