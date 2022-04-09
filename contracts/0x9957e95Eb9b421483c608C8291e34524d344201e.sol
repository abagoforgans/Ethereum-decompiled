contract main {


// =======================  Init code  ======================


array of address stor0;
uint8 stor1;

function _fallback() {
    mem[96 len -4829] = code.data[5163 len -4829]
    mem[64] = -4733
    require mem[mem[96] + 96] >= 2
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
    stor1 = 0
    return code.data[334 len 4829]
}



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

function createForwarder() {
    require 0 < signers.length
    idx = 0
    while signers[idx] != msg.sender:
        require idx + 1 < signers.length
        mem[0] = 0
        idx = idx + 1
        continue 
    create contract with 0 wei
                    code: code.data[4048 len 738]
    if create.new_address:
        return address(create.new_address)
    revert
}

function recoverAddressFromSignature(bytes32 arg1, bytes arg2) {
    mem[128 len arg2.length] = arg2[all]
    require arg2.length == 65
    if mem[192 len 1] >= 27:
        signer = erecover(arg1, mem[161] << 248, mem[128], mem[160]) 
    else:
        signer = erecover(arg1, mem[192 len 1] + 27 << 248, mem[128], mem[160]) 
    require erecover.result
    return address(signer)
}

function sub_8a456803(?) {
    if stor1:
        require 0 < signers.length
        idx = 0
        while signers[idx] != arg1:
            require idx + 1 < signers.length
            mem[0] = 0
            idx = idx + 1
            continue 
    require arg3 >= block.timestamp
    require 0 < signers.length
    idx = 0
    while signers[idx] != msg.sender:
        require idx + 1 < signers.length
        mem[0] = 0
        idx = idx + 1
        continue 
    idx = 0
    while idx < 10:
        require stor2[idx] != arg4
        require idx < 10
        idx = idx + 1
        continue 
    require arg4 >= stor2.length
    stor2.length = arg4
    require 0 < signers.length
    idx = 0
    while signers[idx] != arg2:
        require idx + 1 < signers.length
        mem[0] = 0
        idx = idx + 1
        continue 
    require arg2 != msg.sender
    return 1
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
    mem[ceil32(arg6.length) + 128] = address(arg1)
    mem[ceil32(arg6.length) + 148] = arg2
    mem[ceil32(arg6.length) + 180] = address(arg3)
    require arg6.length == 65
    if mem[192 len 1] >= 27:
        signer = erecover(sha3(arg1, arg2, arg3, arg4, arg5), mem[161] << 248, mem[128], mem[160]) 
    else:
        signer = erecover(sha3(arg1, arg2, arg3, arg4, arg5), mem[192 len 1] + 27 << 248, mem[128], mem[160]) 
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
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    require ext_call.return_data[0]
    emit TokenTransacted(msg.sender, address(signer), sha3(arg1, arg2, arg3, arg4, arg5), address(arg1), arg2, arg3);
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
    mem[ceil32(arg3.length) + ceil32(arg6.length) + 160] = address(arg1)
    mem[ceil32(arg3.length) + ceil32(arg6.length) + 180] = arg2
    mem[ceil32(arg3.length) + ceil32(arg6.length) + 212 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + ceil32(arg6.length) + floor32(arg3.length) + -(arg3.length % 32) + 244 len arg3.length % 32] = mem[floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
    mem[arg3.length + ceil32(arg3.length) + ceil32(arg6.length) + 212] = arg4
    mem[arg3.length + ceil32(arg3.length) + ceil32(arg6.length) + 244] = arg5
    _66 = sha3(arg1, arg2, call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + ceil32(arg6.length) + floor32(arg3.length) + 212 len (arg3.length % 32) + 32], arg5, None)
    require arg6.length == 65
    _70 = mem[ceil32(arg3.length) + 192]
    _71 = mem[ceil32(arg3.length) + 193]
    mem[ceil32(arg3.length) + ceil32(arg6.length) + 192] = sha3(arg1, arg2, call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + ceil32(arg6.length) + floor32(arg3.length) + 212 len (arg3.length % 32) + 32], arg5, None)
    if mem[ceil32(arg3.length) + 224 len 1] >= 27:
        mem[ceil32(arg3.length) + ceil32(arg6.length) + 224] = uint8(_71)
        mem[ceil32(arg3.length) + ceil32(arg6.length) + 256] = mem[ceil32(arg3.length) + 160]
        mem[ceil32(arg3.length) + ceil32(arg6.length) + 288] = _70
        signer = erecover(mem[ceil32(arg3.length) + ceil32(arg6.length) + 192], _71 << 248, mem[ceil32(arg3.length) + 160], _70) 
        mem[ceil32(arg3.length) + ceil32(arg6.length) + 160] = signer
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
            stor2.length = arg5
            require 0 < signers.length
            idx = 0
            while signers[idx] != address(signer):
                require idx + 1 < signers.length
                mem[0] = 0
                idx = idx + 1
                continue 
            require address(signer) != msg.sender
            if not arg3.length:
                if not arg3.length % 32:
                    call arg1 with:
                       funct Mask(32, 224, _66) >> 224
                       value arg2 wei
                         gas gas_remaining - 34710 wei
                        args mem[ceil32(arg3.length) + ceil32(arg6.length) + 196 len arg3.length - 4]
                    require ext_call.success
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + 192] = msg.sender
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + 224] = address(signer)
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + 256] = _66
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + 288] = arg1
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + 320] = arg2
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + 352] = 192
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + 384] = arg3.length
                    if arg3.length:
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + 416] = mem[128]
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + 448 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                        var66001 = floor32(arg3.length - 1) + 128
                else:
                    mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg6.length) + 192] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg6.length) + -(arg3.length % 32) + 224 len arg3.length % 32]
                    call arg1 with:
                       funct Mask(32, 224, _66) >> 224
                       value arg2 wei
                         gas gas_remaining - 34710 wei
                        args Mask(224, 0, _66), mem[ceil32(arg3.length) + ceil32(arg6.length) + 224 len floor32(arg3.length)]
                    require ext_call.success
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + 192] = msg.sender
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + 224] = address(signer)
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + 256] = _66
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + 288] = arg1
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + 320] = arg2
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + 352] = 192
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + 384] = arg3.length
                    if arg3.length:
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + 416] = mem[128]
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + 448 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                        var67001 = floor32(arg3.length - 1) + 128
            else:
                mem[ceil32(arg3.length) + ceil32(arg6.length) + 192] = mem[128]
                mem[ceil32(arg3.length) + ceil32(arg6.length) + 224 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                if not arg3.length % 32:
                    call arg1.mem[128 len 4] with:
                       value arg2 wei
                         gas gas_remaining - 34710 wei
                        args mem[ceil32(arg3.length) + ceil32(arg6.length) + 196 len arg3.length - 4]
                else:
                    mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg6.length) + 192] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg6.length) + -(arg3.length % 32) + 224 len arg3.length % 32]
                    call arg1.mem[128 len 4] with:
                       value arg2 wei
                         gas gas_remaining - 34710 wei
                        args mem[132 len 28], mem[ceil32(arg3.length) + ceil32(arg6.length) + 224 len floor32(arg3.length)]
                require ext_call.success
                mem[ceil32(arg3.length) + ceil32(arg6.length) + 192] = msg.sender
                mem[ceil32(arg3.length) + ceil32(arg6.length) + 224] = address(signer)
                mem[ceil32(arg3.length) + ceil32(arg6.length) + 256] = _66
                mem[ceil32(arg3.length) + ceil32(arg6.length) + 288] = arg1
                mem[ceil32(arg3.length) + ceil32(arg6.length) + 320] = arg2
                mem[ceil32(arg3.length) + ceil32(arg6.length) + 352] = 192
                mem[ceil32(arg3.length) + ceil32(arg6.length) + 384] = arg3.length
                if arg3.length:
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + 416] = mem[128]
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + 448 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
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
            stor2.length = arg5
            require 0 < signers.length
            idx = 0
            while signers[idx] != address(signer):
                require idx + 1 < signers.length
                mem[0] = 0
                idx = idx + 1
                continue 
            require address(signer) != msg.sender
            if not arg3.length:
                if not arg3.length % 32:
                    call arg1 with:
                       funct Mask(32, 224, _66) >> 224
                       value arg2 wei
                         gas gas_remaining - 34710 wei
                        args mem[ceil32(arg3.length) + ceil32(arg6.length) + 196 len arg3.length - 4]
                else:
                    mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg6.length) + 192] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg6.length) + -(arg3.length % 32) + 224 len arg3.length % 32]
                    call arg1 with:
                       funct Mask(32, 224, _66) >> 224
                       value arg2 wei
                         gas gas_remaining - 34710 wei
                        args Mask(224, 0, _66), mem[ceil32(arg3.length) + ceil32(arg6.length) + 224 len floor32(arg3.length)]
            else:
                mem[ceil32(arg3.length) + ceil32(arg6.length) + 192] = mem[128]
                mem[ceil32(arg3.length) + ceil32(arg6.length) + 224 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                if not arg3.length % 32:
                    call arg1.mem[128 len 4] with:
                       value arg2 wei
                         gas gas_remaining - 34710 wei
                        args mem[ceil32(arg3.length) + ceil32(arg6.length) + 196 len arg3.length - 4]
                else:
                    mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg6.length) + 192] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg6.length) + -(arg3.length % 32) + 224 len arg3.length % 32]
                    call arg1.mem[128 len 4] with:
                       value arg2 wei
                         gas gas_remaining - 34710 wei
                        args mem[132 len 28], mem[ceil32(arg3.length) + ceil32(arg6.length) + 224 len floor32(arg3.length)]
            require ext_call.success
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 192] = msg.sender
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 224] = address(signer)
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 256] = _66
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 288] = arg1
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 320] = arg2
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 352] = 192
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 384] = arg3.length
            if arg3.length:
                mem[ceil32(arg3.length) + ceil32(arg6.length) + 416] = mem[128]
                mem[ceil32(arg3.length) + ceil32(arg6.length) + 448 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
    else:
        mem[ceil32(arg3.length) + ceil32(arg6.length) + 224] = uint8(uint8(_71) + 27)
        mem[ceil32(arg3.length) + ceil32(arg6.length) + 256] = mem[ceil32(arg3.length) + 160]
        mem[ceil32(arg3.length) + ceil32(arg6.length) + 288] = _70
        signer = erecover(mem[ceil32(arg3.length) + ceil32(arg6.length) + 192], uint8(_71) + 27 << 248, mem[ceil32(arg3.length) + 160], _70) 
        mem[ceil32(arg3.length) + ceil32(arg6.length) + 160] = signer
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
            stor2.length = arg5
            require 0 < signers.length
            idx = 0
            while signers[idx] != address(signer):
                require idx + 1 < signers.length
                mem[0] = 0
                idx = idx + 1
                continue 
            require address(signer) != msg.sender
            if not arg3.length:
                if not arg3.length % 32:
                    call arg1 with:
                       funct Mask(32, 224, _66) >> 224
                       value arg2 wei
                         gas gas_remaining - 34710 wei
                        args mem[ceil32(arg3.length) + ceil32(arg6.length) + 196 len arg3.length - 4]
                    require ext_call.success
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + 192] = msg.sender
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + 224] = address(signer)
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + 256] = _66
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + 288] = arg1
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + 320] = arg2
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + 352] = 192
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + 384] = arg3.length
                    if arg3.length:
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + 416] = mem[128]
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + 448 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                        var67001 = floor32(arg3.length - 1) + 128
                else:
                    mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg6.length) + 192] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg6.length) + -(arg3.length % 32) + 224 len arg3.length % 32]
                    call arg1 with:
                       funct Mask(32, 224, _66) >> 224
                       value arg2 wei
                         gas gas_remaining - 34710 wei
                        args Mask(224, 0, _66), mem[ceil32(arg3.length) + ceil32(arg6.length) + 224 len floor32(arg3.length)]
                    require ext_call.success
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + 192] = msg.sender
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + 224] = address(signer)
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + 256] = _66
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + 288] = arg1
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + 320] = arg2
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + 352] = 192
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + 384] = arg3.length
                    if arg3.length:
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + 416] = mem[128]
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + 448 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
            else:
                mem[ceil32(arg3.length) + ceil32(arg6.length) + 192] = mem[128]
                mem[ceil32(arg3.length) + ceil32(arg6.length) + 224 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                if not arg3.length % 32:
                    call arg1.mem[128 len 4] with:
                       value arg2 wei
                         gas gas_remaining - 34710 wei
                        args mem[ceil32(arg3.length) + ceil32(arg6.length) + 196 len arg3.length - 4]
                else:
                    mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg6.length) + 192] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg6.length) + -(arg3.length % 32) + 224 len arg3.length % 32]
                    call arg1.mem[128 len 4] with:
                       value arg2 wei
                         gas gas_remaining - 34710 wei
                        args mem[132 len 28], mem[ceil32(arg3.length) + ceil32(arg6.length) + 224 len floor32(arg3.length)]
                require ext_call.success
                mem[ceil32(arg3.length) + ceil32(arg6.length) + 192] = msg.sender
                mem[ceil32(arg3.length) + ceil32(arg6.length) + 224] = address(signer)
                mem[ceil32(arg3.length) + ceil32(arg6.length) + 256] = _66
                mem[ceil32(arg3.length) + ceil32(arg6.length) + 288] = arg1
                mem[ceil32(arg3.length) + ceil32(arg6.length) + 320] = arg2
                mem[ceil32(arg3.length) + ceil32(arg6.length) + 352] = 192
                mem[ceil32(arg3.length) + ceil32(arg6.length) + 384] = arg3.length
                if arg3.length:
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + 416] = mem[128]
                    mem[ceil32(arg3.length) + ceil32(arg6.length) + 448 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
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
            stor2.length = arg5
            require 0 < signers.length
            idx = 0
            while signers[idx] != address(signer):
                require idx + 1 < signers.length
                mem[0] = 0
                idx = idx + 1
                continue 
            require address(signer) != msg.sender
            if not arg3.length:
                if not arg3.length % 32:
                    call arg1 with:
                       funct Mask(32, 224, _66) >> 224
                       value arg2 wei
                         gas gas_remaining - 34710 wei
                        args mem[ceil32(arg3.length) + ceil32(arg6.length) + 196 len arg3.length - 4]
                else:
                    mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg6.length) + 192] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg6.length) + -(arg3.length % 32) + 224 len arg3.length % 32]
                    call arg1 with:
                       funct Mask(32, 224, _66) >> 224
                       value arg2 wei
                         gas gas_remaining - 34710 wei
                        args Mask(224, 0, _66), mem[ceil32(arg3.length) + ceil32(arg6.length) + 224 len floor32(arg3.length)]
            else:
                mem[ceil32(arg3.length) + ceil32(arg6.length) + 192] = mem[128]
                mem[ceil32(arg3.length) + ceil32(arg6.length) + 224 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                if not arg3.length % 32:
                    call arg1.mem[128 len 4] with:
                       value arg2 wei
                         gas gas_remaining - 34710 wei
                        args mem[ceil32(arg3.length) + ceil32(arg6.length) + 196 len arg3.length - 4]
                else:
                    mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg6.length) + 192] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg6.length) + -(arg3.length % 32) + 224 len arg3.length % 32]
                    call arg1.mem[128 len 4] with:
                       value arg2 wei
                         gas gas_remaining - 34710 wei
                        args mem[132 len 28], mem[ceil32(arg3.length) + ceil32(arg6.length) + 224 len floor32(arg3.length)]
            require ext_call.success
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 192] = msg.sender
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 224] = address(signer)
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 256] = _66
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 288] = arg1
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 320] = arg2
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 352] = 192
            mem[ceil32(arg3.length) + ceil32(arg6.length) + 384] = arg3.length
            if arg3.length:
                mem[ceil32(arg3.length) + ceil32(arg6.length) + 416] = mem[128]
                mem[ceil32(arg3.length) + ceil32(arg6.length) + 448 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
    if not arg3.length % 32:
        emit Transacted(address rg1, address rg2, bytes32 rg3, address rg4, uint256 rg5, bytes rg6):
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + 192 len arg3.length + 20],
                        arg4,
                        arg5,
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + arg3.length + 276 len 140],
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg6.length) + 416] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg6.length) + -(arg3.length % 32) + 448 len arg3.length % 32]
        emit Transacted(address rg1, address rg2, bytes32 rg3, address rg4, uint256 rg5, bytes rg6):
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + 192 len arg3.length + 20],
                        arg4,
                        arg5,
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + arg3.length + 276 len -(arg3.length % 32) + 172],
}



}
