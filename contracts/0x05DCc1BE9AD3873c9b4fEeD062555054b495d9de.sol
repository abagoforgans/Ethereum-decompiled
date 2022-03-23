contract main {


// =======================  Init code  ======================


uint256 stor0;
uint8 stor1;

function _fallback() payable {
    mem[96 len -2878] = code.data[3209 len -2878]
    mem[64] = -2782
    if mem[mem[96] + 96] < 2:
        emit Error(Array(len=18, data='Not enough signers'));
        revert 
    stor0 = mem[mem[96] + 96]
    if not mem[mem[96] + 96]:
        idx = 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563
        while stor0 + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563 > idx:
            address(stor[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563
        idx = mem[96] + 128
        while mem[96] + (32 * mem[mem[96] + 96]) + 128 > idx:
            uint256(stor[s]) = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = (Mask(251, 0, (32 * mem[mem[96] + 96]) + 31) >> 5) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563
        while stor0 + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563 > idx:
            address(stor[idx]) = 0
            idx = idx + 1
            continue 
    stor1 = 0
    return code.data[331 len 2878]
}



// =====================  Runtime code  =====================


array of struct signers;
uint8 stor1;
array of uint256 stor2;

function signers(uint256 arg1) payable {
    require arg1 < signers.length
    return signers[arg1].field_0
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
    while uint8(idx) < signers.length:
        mem[0] = 0
        if signers[uint8(idx)].field_0 != arg1:
            idx = idx + 1
            continue 
        return 1
    return 0
}

function activateSafeMode() payable {
    idx = 0
    while uint8(idx) < signers.length:
        mem[0] = 0
        if signers[uint8(idx)].field_0 != msg.sender:
            idx = idx + 1
            continue 
        stor1 = 1
        emit 0x8c971daf 
    emit code.data[2846 len 32]: 'Not a signer'
    revert 
}

function getSigners() payable {
    if signers.length:
        mem[160] = address(signers.field_0)
        idx = 160
        s = 0
        while (32 * signers.length) + 128 > idx:
            mem[idx + 32] = signers[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=signers.length, data=mem[160 len 32 * signers.length])
}

function createForwarder() payable {
    idx = 0
    while uint8(idx) < signers.length:
        mem[0] = 0
        if signers[uint8(idx)].field_0 != msg.sender:
            idx = idx + 1
            continue 
        create contract with 0 wei
                        code: code.data[2671 len 175]
        return address(create.new_address)
    emit code.data[2846 len 32]: 'Not a signer'
    revert 
}

function tryInsertSequenceId(uint256 arg1) payable {
    idx = 0
    while uint8(idx) < 10:
        if stor2[uint8(idx)] == arg1:
            emit code.data[2846 len 32]: Array(len=21, data='Duplicate sequence id')
            revert 
        require uint8(idx) < 10
        idx = idx + 1
        continue 
    if arg1 >= stor2.length:
        stor2.length = arg1
        return 0
    emit code.data[2846 len 32]: Array(len=19, data='Sequence id too low')
    revert 
}

function sub_b945d1f6(?) payable {
    mem[ceil32(arg3.length) + 160 len arg6.length] = arg6[all]
    idx = 0
    while uint8(idx) < signers.length:
        mem[0] = 0
        if signers[uint8(idx)].field_0 != msg.sender:
            idx = idx + 1
            continue 
        if stor1:
            idx = 0
            while uint8(idx) < signers.length:
                mem[0] = 0
                if signers[uint8(idx)].field_0 != arg1:
                    idx = idx + 1
                    continue 
                if arg4 < block.timestamp:
                    emit code.data[2846 len 32]: Array(len=19, data='Transaction expired')
                else:
                    idx = 0
                    while uint8(idx) < 10:
                        if stor2[uint8(idx)] == arg5:
                            emit code.data[2846 len 32]: Array(len=21, data='Duplicate sequence id')
                            revert 
                        require uint8(idx) < 10
                        idx = idx + 1
                        continue 
                    if arg5 < stor2.length:
                        emit code.data[2846 len 32]: Array(len=19, data='Sequence id too low')
                    else:
                        stor2.length = arg5
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + 160] = address(arg1)
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + 180] = arg2
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + 212 len arg3.length] = arg3[all]
                        mem[arg3.length + ceil32(arg3.length) + ceil32(arg6.length) + 212] = arg4
                        mem[arg3.length + ceil32(arg3.length) + ceil32(arg6.length) + 244] = arg5
                        if arg6.length != 65:
                            emit code.data[2846 len 32]: Array(len=24, data='Invalid signature length')
                        else:
                            _138 = mem[ceil32(arg3.length) + 192]
                            _139 = mem[ceil32(arg3.length) + 193]
                            mem[ceil32(arg3.length) + ceil32(arg6.length) + 192] = mem[ceil32(arg3.length) + 224 len 1]
                            mem[ceil32(arg3.length) + ceil32(arg6.length) + 224] = mem[ceil32(arg3.length) + 160]
                            mem[ceil32(arg3.length) + ceil32(arg6.length) + 256] = _138
                            signer = erecover(sha3(arg1, arg2, arg3[all], arg4, arg5), _139 << 248, mem[ceil32(arg3.length) + 160], _138) 
                            mem[ceil32(arg3.length) + ceil32(arg6.length) + 160] = signer
                            if erecover.result:
                                idx = 0
                                while uint8(idx) < signers.length:
                                    mem[0] = 0
                                    if signers[uint8(idx)].field_0 != address(signer):
                                        idx = idx + 1
                                        continue 
                                    if address(signer) == msg.sender:
                                        emit code.data[2846 len 32]: Array(len=30, data='Cannot approve own transaction')
                                        revert 
                                    mem[ceil32(arg3.length) + ceil32(arg6.length) + 160 len arg3.length] = arg3[all]
                                    if not arg3.length % 32:
                                        call arg1 with:
                                           funct Mask(32, 224, signer) >> 224
                                           value arg2 wei
                                             gas gas_remaining - 34050 wei
                                            args mem[ceil32(arg3.length) + ceil32(arg6.length) + 164 len arg3.length - 4]
                                    else:
                                        mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg6.length) + 160] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg6.length) + -(arg3.length % 32) + 192 len arg3.length % 32]
                                        call arg1 with:
                                           funct Mask(32, 224, signer) >> 224
                                           value arg2 wei
                                             gas gas_remaining - 34050 wei
                                            args mem[ceil32(arg3.length) + ceil32(arg6.length) + 164 len floor32(arg3.length) + 28]
                                    if not ext_call.success:
                                        emit code.data[2846 len 32]: Array(len=28, data='Failed executing transaction')
                                        revert 
                                    mem[ceil32(arg3.length) + ceil32(arg6.length) + 192] = address(signer)
                                    mem[ceil32(arg3.length) + ceil32(arg6.length) + 224] = sha3(arg1, arg2, arg3[all], arg4, arg5)
                                    mem[ceil32(arg3.length) + ceil32(arg6.length) + 256] = arg2
                                    mem[ceil32(arg3.length) + ceil32(arg6.length) + 288] = arg1
                                    mem[ceil32(arg3.length) + ceil32(arg6.length) + 320] = 192
                                    mem[ceil32(arg3.length) + ceil32(arg6.length) + 352] = arg3.length
                                    mem[ceil32(arg3.length) + ceil32(arg6.length) + 384 len arg3.length] = arg3[all]
                                    if not arg3.length % 32:
                                        emit 0x5ca7c192: msg.sender, mem[ceil32(arg3.length) + ceil32(arg6.length) + 192 len arg3.length + 20], arg4, arg5, mem[ceil32(arg3.length) + ceil32(arg6.length) + arg3.length + 276 len 108]
                                    else:
                                        mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg6.length) + 384] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg6.length) + -(arg3.length % 32) + 416 len arg3.length % 32]
                                        emit 0x5ca7c192: msg.sender, mem[ceil32(arg3.length) + ceil32(arg6.length) + 192 len arg3.length + 20], arg4, arg5, mem[ceil32(arg3.length) + ceil32(arg6.length) + arg3.length + 276 len -(arg3.length % 32) + 140]
                                emit code.data[2846 len 32]: Array(len=31, data='Other signer not on this wallet')
                revert 
            emit code.data[2846 len 32]: Array(len=12, data='In safe mode')
        else:
            if arg4 < block.timestamp:
                emit code.data[2846 len 32]: Array(len=19, data='Transaction expired')
            else:
                idx = 0
                while uint8(idx) < 10:
                    if stor2[uint8(idx)] == arg5:
                        emit code.data[2846 len 32]: Array(len=21, data='Duplicate sequence id')
                        revert 
                    require uint8(idx) < 10
                    idx = idx + 1
                    continue 
                if arg5 < stor2.length:
                    emit code.data[2846 len 32]: Array(len=19, data='Sequence id too low')
                else:
                    stor2.length = arg5
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + 160] = address(arg1)
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + 180] = arg2
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + 212 len arg3.length] = arg3[all]
                    mem[arg3.length + ceil32(arg3.length) + ceil32(arg6.length) + 212] = arg4
                    mem[arg3.length + ceil32(arg3.length) + ceil32(arg6.length) + 244] = arg5
                    if arg6.length != 65:
                        emit code.data[2846 len 32]: Array(len=24, data='Invalid signature length')
                    else:
                        _69 = mem[ceil32(arg3.length) + 192]
                        _70 = mem[ceil32(arg3.length) + 193]
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + 192] = mem[ceil32(arg3.length) + 224 len 1]
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + 224] = mem[ceil32(arg3.length) + 160]
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + 256] = _69
                        signer = erecover(sha3(arg1, arg2, arg3[all], arg4, arg5), _70 << 248, mem[ceil32(arg3.length) + 160], _69) 
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + 160] = signer
                        if erecover.result:
                            idx = 0
                            while uint8(idx) < signers.length:
                                mem[0] = 0
                                if signers[uint8(idx)].field_0 != address(signer):
                                    idx = idx + 1
                                    continue 
                                if address(signer) == msg.sender:
                                    emit code.data[2846 len 32]: Array(len=30, data='Cannot approve own transaction')
                                    revert 
                                mem[ceil32(arg3.length) + ceil32(arg6.length) + 160 len arg3.length] = arg3[all]
                                if not arg3.length % 32:
                                    call arg1 with:
                                       funct Mask(32, 224, signer) >> 224
                                       value arg2 wei
                                         gas gas_remaining - 34050 wei
                                        args mem[ceil32(arg3.length) + ceil32(arg6.length) + 164 len arg3.length - 4]
                                else:
                                    mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg6.length) + 160] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg6.length) + -(arg3.length % 32) + 192 len arg3.length % 32]
                                    call arg1 with:
                                       funct Mask(32, 224, signer) >> 224
                                       value arg2 wei
                                         gas gas_remaining - 34050 wei
                                        args mem[ceil32(arg3.length) + ceil32(arg6.length) + 164 len floor32(arg3.length) + 28]
                                if not ext_call.success:
                                    emit code.data[2846 len 32]: Array(len=28, data='Failed executing transaction')
                                    revert 
                                mem[ceil32(arg3.length) + ceil32(arg6.length) + 192] = address(signer)
                                mem[ceil32(arg3.length) + ceil32(arg6.length) + 224] = sha3(arg1, arg2, arg3[all], arg4, arg5)
                                mem[ceil32(arg3.length) + ceil32(arg6.length) + 256] = arg2
                                mem[ceil32(arg3.length) + ceil32(arg6.length) + 288] = arg1
                                mem[ceil32(arg3.length) + ceil32(arg6.length) + 320] = 192
                                mem[ceil32(arg3.length) + ceil32(arg6.length) + 352] = arg3.length
                                mem[ceil32(arg3.length) + ceil32(arg6.length) + 384 len arg3.length] = arg3[all]
                                if not arg3.length % 32:
                                    emit 0x5ca7c192: msg.sender, mem[ceil32(arg3.length) + ceil32(arg6.length) + 192 len arg3.length + 20], arg4, arg5, mem[ceil32(arg3.length) + ceil32(arg6.length) + arg3.length + 276 len 108]
                                else:
                                    mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg6.length) + 384] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg6.length) + -(arg3.length % 32) + 416 len arg3.length % 32]
                                    emit 0x5ca7c192: msg.sender, mem[ceil32(arg3.length) + ceil32(arg6.length) + 192 len arg3.length + 20], arg4, arg5, mem[ceil32(arg3.length) + ceil32(arg6.length) + arg3.length + 276 len -(arg3.length % 32) + 140]
                            emit code.data[2846 len 32]: Array(len=31, data='Other signer not on this wallet')
        revert 
    emit code.data[2846 len 32]: 'Not a signer'
    revert 
}



}
