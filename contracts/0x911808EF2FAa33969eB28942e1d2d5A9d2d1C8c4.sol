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
        emit 0x11376185: msg.value, msg.sender, Array(len=calldata.size, data=call.data[0 len calldata.size])
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

function sub_959f9114(?) {
    require 0 < signers.length
    idx = 0
    while signers[idx] != msg.sender:
        require idx + 1 < signers.length
        mem[0] = 0
        idx = idx + 1
        continue 
    stor1 = 1
    emit 0xa7dab64e: msg.sender
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

function sub_98f44b9a(?) {
    require calldata.size - 4 >= 192
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + arg6.length + 36 <= calldata.size
    mem[128 len arg6.length] = arg6[all]
    mem[arg6.length + 128] = 0
    require 0 < signers.length
    idx = 0
    while signers[idx] != msg.sender:
        require idx + 1 < signers.length
        mem[0] = 0
        idx = idx + 1
        continue 
    mem[ceil32(arg6.length) + 160] = 'ERC20'
    mem[ceil32(arg6.length) + 165] = address(arg4)
    mem[ceil32(arg6.length) + 185] = arg1
    mem[ceil32(arg6.length) + 217] = address(arg5)
    mem[ceil32(arg6.length) + 237] = arg2
    mem[ceil32(arg6.length) + 269] = arg3
    mem[ceil32(arg6.length) + 128] = 141
    require arg6.length == 65
    if mem[192 len 1] >= 27:
        signer = erecover(sha3(mem[ceil32(arg6.length) + 160 len Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[arg6.length + 160 len -arg6.length + ceil32(arg6.length)]]), mem[192 len 1], mem[128], mem[160]) 
    else:
        signer = erecover(sha3(mem[ceil32(arg6.length) + 160 len Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[arg6.length + 160 len -arg6.length + ceil32(arg6.length)]]), mem[192 len 1] + 27 << 248, mem[128], mem[160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if stor1:
        require 0 < signers.length
        idx = 0
        while signers[idx] != arg4:
            require idx + 1 < signers.length
            mem[0] = 0
            idx = idx + 1
            continue 
    require arg2 >= block.timestamp
    require 0 < signers.length
    idx = 0
    while signers[idx] != msg.sender:
        require idx + 1 < signers.length
        mem[0] = 0
        idx = idx + 1
        continue 
    idx = 0
    while idx < 10:
        require stor2[idx] != arg3
        require idx < 10
        idx = idx + 1
        continue 
    require arg3 >= stor2.length
    require arg3 <= stor2.length + 10000
    stor2.length = arg3
    require 0 < signers.length
    idx = 0
    while signers[idx] != address(signer):
        require idx + 1 < signers.length
        mem[0] = 0
        idx = idx + 1
        continue 
    require address(signer) != msg.sender
    require ext_code.size(arg5)
    call arg5.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg4), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function sub_97f6c448(?) payable {
    require calldata.size - 4 >= 192
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
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
    mem[ceil32(arg3.length) + ceil32(arg6.length) + 197] = address(arg5)
    mem[ceil32(arg3.length) + ceil32(arg6.length) + 217] = arg1
    mem[ceil32(arg3.length) + ceil32(arg6.length) + 249 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + ceil32(arg6.length) + floor32(arg3.length) + -(arg3.length % 32) + 281 len arg3.length % 32] = mem[floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
    mem[arg3.length + ceil32(arg3.length) + ceil32(arg6.length) + 249] = arg2
    mem[arg3.length + ceil32(arg3.length) + ceil32(arg6.length) + 281] = arg4
    mem[ceil32(arg3.length) + ceil32(arg6.length) + 160] = arg3.length + 121
    _65 = sha3(mem[ceil32(arg3.length) + ceil32(arg6.length) + 192 len Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[ceil32(arg3.length) + arg6.length + 192 len -arg6.length + ceil32(arg6.length)]])
    require Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] == 65
    if mem[ceil32(arg3.length) + 224 len 1] >= 27:
        signer = erecover(sha3(mem[ceil32(arg3.length) + ceil32(arg6.length) + 192 len Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[ceil32(arg3.length) + arg6.length + 192 len -arg6.length + ceil32(arg6.length)]]), mem[ceil32(arg3.length) + 224 len 1], mem[ceil32(arg3.length) + 160], mem[ceil32(arg3.length) + 192]) 
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if not stor1:
            require arg2 >= block.timestamp
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
            require arg4 <= stor2.length + 10000
            stor2.length = arg4
            require 0 < signers.length
            idx = 0
            while signers[idx] != address(signer):
                require idx + 1 < signers.length
                mem[0] = 0
                idx = idx + 1
                continue 
            require address(signer) != msg.sender
            call arg5 with:
               value arg1 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            var64001 = ceil32(arg3.length)
        else:
            require 0 < signers.length
            idx = 0
            while signers[idx] != arg5:
                require idx + 1 < signers.length
                mem[0] = 0
                idx = idx + 1
                continue 
            require arg2 >= block.timestamp
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
            require arg4 <= stor2.length + 10000
            stor2.length = arg4
            require 0 < signers.length
            idx = 0
            while signers[idx] != address(signer):
                require idx + 1 < signers.length
                mem[0] = 0
                idx = idx + 1
                continue 
            require address(signer) != msg.sender
            call arg5 with:
               value arg1 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
    else:
        signer = erecover(sha3(mem[ceil32(arg3.length) + ceil32(arg6.length) + 192 len Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[ceil32(arg3.length) + arg6.length + 192 len -arg6.length + ceil32(arg6.length)]]), mem[ceil32(arg3.length) + 224 len 1] + 27 << 248, mem[ceil32(arg3.length) + 160], mem[ceil32(arg3.length) + 192]) 
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if not stor1:
            require arg2 >= block.timestamp
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
            require arg4 <= stor2.length + 10000
            stor2.length = arg4
            require 0 < signers.length
            idx = 0
            while signers[idx] != address(signer):
                require idx + 1 < signers.length
                mem[0] = 0
                idx = idx + 1
                continue 
            require address(signer) != msg.sender
            call arg5 with:
               value arg1 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            var65001 = ceil32(arg3.length)
        else:
            require 0 < signers.length
            idx = 0
            while signers[idx] != arg5:
                require idx + 1 < signers.length
                mem[0] = 0
                idx = idx + 1
                continue 
            require arg2 >= block.timestamp
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
            require arg4 <= stor2.length + 10000
            stor2.length = arg4
            require 0 < signers.length
            idx = 0
            while signers[idx] != address(signer):
                require idx + 1 < signers.length
                mem[0] = 0
                idx = idx + 1
                continue 
            require address(signer) != msg.sender
            call arg5 with:
               value arg1 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
    emit 0xd00dde70: msg.sender, address(arg5), address(signer), Array(len=arg3.length, data=arg3[all]), arg1, _65
}



}
