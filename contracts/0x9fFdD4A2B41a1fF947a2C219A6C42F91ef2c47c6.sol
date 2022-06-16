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

function sendMultiSig(address arg1, uint256 arg2, bytes arg3, uint256 arg4, uint256 arg5, bytes arg6) {
    require calldata.size - 4 >= 192
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + arg6.length + 36 <= calldata.size
    mem[ceil32(arg3.length) + 128] = arg6.length
    mem[ceil32(arg3.length) + 160 len arg6.length] = arg6[all]
    mem[ceil32(arg3.length) + arg6.length + 160] = 0
    require 0 < signers.length
    idx = 0
    while signers[idx] != msg.sender:
        require idx + 1 < signers.length
        mem[0] = 0
        idx = idx + 1
        continue 
    mem[ceil32(arg3.length) + ceil32(arg6.length) + 192] = 'ETHER'
    mem[ceil32(arg3.length) + ceil32(arg6.length) + 197] = address(arg1)
    mem[ceil32(arg3.length) + ceil32(arg6.length) + 217] = arg2
    mem[ceil32(arg3.length) + ceil32(arg6.length) + 249 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + ceil32(arg6.length) + floor32(arg3.length) + 249] = 256^(-(arg3.length % 32) + 32) - 1 and mem[ceil32(arg3.length) + ceil32(arg6.length) + floor32(arg3.length) + 249] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
    mem[ceil32(arg3.length) + ceil32(arg6.length) + arg3.length + 249] = arg4
    mem[ceil32(arg3.length) + ceil32(arg6.length) + arg3.length + 281] = arg5
    mem[ceil32(arg3.length) + ceil32(arg6.length) + 160] = arg3.length + 121
    _61 = sha3(mem[ceil32(arg3.length) + ceil32(arg6.length) + 192 len Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[ceil32(arg3.length) + arg6.length + 192 len -arg6.length + ceil32(arg6.length)]])
    require 65 == Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
    if mem[ceil32(arg3.length) + 224 len 1] >= 27:
        signer = erecover(sha3(mem[ceil32(arg3.length) + ceil32(arg6.length) + 192 len Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[ceil32(arg3.length) + arg6.length + 192 len -arg6.length + ceil32(arg6.length)]]), mem[ceil32(arg3.length) + 193] << 248, mem[ceil32(arg3.length) + 160], mem[ceil32(arg3.length) + 192]) 
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
    else:
        signer = erecover(sha3(mem[ceil32(arg3.length) + ceil32(arg6.length) + 192 len Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[ceil32(arg3.length) + arg6.length + 192 len -arg6.length + ceil32(arg6.length)]]), mem[ceil32(arg3.length) + 224 len 1] + 27 << 248, mem[ceil32(arg3.length) + 160], mem[ceil32(arg3.length) + 192]) 
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
            var65001 = ceil32(arg3.length)
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
    emit Transacted(msg.sender, address(signer), _61, address(arg1), arg2, Array(len=arg3.length, data=arg3[all]));
}



}
