contract main {


// =======================  Init code  ======================


array of address stor0;
uint8 stor1;

function _fallback() payable {
    mem[96 len -2843] = code.data[3121 len -2843]
    mem[64] = -2747
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
    return code.data[278 len 2843]
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
                    code: code.data[2393 len 450]
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
    require 0 < signers.length
    idx = 0
    while signers[idx] != msg.sender:
        require idx + 1 < signers.length
        mem[0] = 0
        idx = idx + 1
        continue 
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
    while uint8(idx) < 10:
        require stor2[uint8(idx)] != arg5
        require uint8(idx) < 10
        idx = idx + 1
        continue 
    require arg5 >= stor2.length
    stor2.length = arg5
    mem[ceil32(arg3.length) + ceil32(arg6.length) + 212 len arg3.length] = arg3[all]
    mem[arg3.length + ceil32(arg3.length) + ceil32(arg6.length) + 212] = arg4
    mem[arg3.length + ceil32(arg3.length) + ceil32(arg6.length) + 244] = arg5
    require 0 < signers.length
    mem[ceil32(arg3.length) + ceil32(arg6.length) + 192] = signers
    mem[ceil32(arg3.length) + ceil32(arg6.length) + 224] = sha3(arg1, arg2, arg3[all], arg4, arg5)
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
        emit Transacted(address rg1, address rg2, bytes32 rg3, address rg4, uint256 rg5, bytes rg6):
                        msg.sender,
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + 192 len arg3.length + 20],
                        arg4,
                        arg5,
                        mem[ceil32(arg3.length) + ceil32(arg6.length) + arg3.length + 276 len -(arg3.length % 32) + 140],
}



}
