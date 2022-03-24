contract main {


// =======================  Init code  ======================


array of address stor0;
uint8 stor1;

function _fallback() payable {
    mem[96 len -3144] = code.data[3422 len -3144]
    mem[64] = -3048
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
    return code.data[278 len 3144]
}



// =====================  Runtime code  =====================


array of address signers;
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
    while idx < signers.length:
        mem[0] = 0
        if signers[idx].field_0 != arg1:
            idx = idx + 1
            continue 
        return 1
    return 0
}

function activateSafeMode() payable {
    require 0 < signers.length
    idx = 0
    while signers[idx].field_0 != msg.sender:
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
    while signers[idx].field_0 != msg.sender:
        require idx + 1 < signers.length
        mem[0] = 0
        idx = idx + 1
        continue 
    create contract with 0 wei
                    code: code.data[2694 len 450]
    return address(create.new_address)
}

function recoverAddressFromSignature(bytes32 arg1, bytes arg2) payable {
    mem[128 len arg2.length] = arg2[all]
    require arg2.length == 65
    emit 0xeb7789b6: Array(len=arg2.length, data=arg2[all]), arg1, mem[161] << 248, mem[128], mem[160]
    signer = erecover(arg1, mem[161] << 248, mem[128], mem[160]) 
    require erecover.result
    return address(signer)
}

function tryInsertSequenceId(uint256 arg1) payable {
    require 0 < signers.length
    idx = 0
    while signers[idx].field_0 != msg.sender:
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
    while signers[idx].field_0 != msg.sender:
        require idx + 1 < signers.length
        mem[0] = 0
        idx = idx + 1
        continue 
    if stor1:
        require 0 < signers.length
        idx = 0
        while signers[idx].field_0 != arg1:
            require idx + 1 < signers.length
            mem[0] = 0
            idx = idx + 1
            continue 
    require arg4 >= block.timestamp
    require 0 < signers.length
    idx = 0
    while signers[idx].field_0 != msg.sender:
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
    require arg6.length == 65
    mem[ceil32(arg3.length) + ceil32(arg6.length) + 352 len arg6.length] = arg6[all]
    emit 0xeb7789b6: Array(len=arg6.length, data=arg6[all]), sha3(arg1, arg2, arg3[all], arg4, arg5), mem[ceil32(arg3.length) + 193] << 248, mem[ceil32(arg3.length) + 160], mem[ceil32(arg3.length) + 192]
    signer = erecover(sha3(arg1, arg2, arg3[all], arg4, arg5), mem[ceil32(arg3.length) + 193] << 248, mem[ceil32(arg3.length) + 160], mem[ceil32(arg3.length) + 192]) 
    require erecover.result
    require 1 < signers.length
    mem[ceil32(arg3.length) + ceil32(arg6.length) + 192] = address(signer)
    mem[ceil32(arg3.length) + ceil32(arg6.length) + 224] = sha3(arg1, arg2, arg3[all], arg4, arg5)
    mem[ceil32(arg3.length) + ceil32(arg6.length) + 256] = arg1
    mem[ceil32(arg3.length) + ceil32(arg6.length) + 288] = arg2
    mem[ceil32(arg3.length) + ceil32(arg6.length) + 320] = 224
    mem[ceil32(arg3.length) + ceil32(arg6.length) + 384] = arg3.length
    mem[ceil32(arg3.length) + ceil32(arg6.length) + 416 len arg3.length] = arg3[all]
    if not arg3.length % 32:
        mem[ceil32(arg3.length) + ceil32(arg6.length) + 352] = arg3.length + 256
        mem[arg3.length + ceil32(arg3.length) + ceil32(arg6.length) + 448 len arg6.length] = arg6[all]
        if not arg6.length % 32:
            emit 0x5e785417: address(signers.field_256), mem[ceil32(arg3.length) + ceil32(arg6.length) + 192 len arg3.length + 20], arg4, arg5, mem[ceil32(arg3.length) + ceil32(arg6.length) + arg3.length + 276 len 140], arg6.length, arg6[all]
        else:
            mem[floor32(arg6.length) + arg3.length + ceil32(arg3.length) + ceil32(arg6.length) + 448] = mem[floor32(arg6.length) + arg3.length + ceil32(arg3.length) + ceil32(arg6.length) + -(arg6.length % 32) + 480 len arg6.length % 32]
            emit 0x5e785417: address(signers.field_256), mem[ceil32(arg3.length) + ceil32(arg6.length) + 192 len arg3.length + 20], arg4, arg5, mem[ceil32(arg3.length) + ceil32(arg6.length) + arg3.length + 276 len 140], arg6.length, arg6[all], mem[ceil32(arg3.length) + ceil32(arg6.length) + arg3.length + arg6.length + 448 len -(arg6.length % 32) + 32]
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg6.length) + 416] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg6.length) + -(arg3.length % 32) + 448 len arg3.length % 32]
        mem[ceil32(arg3.length) + ceil32(arg6.length) + 352] = floor32(arg3.length) + 288
        mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg6.length) + 480 len arg6.length] = arg6[all]
        if not arg6.length % 32:
            emit 0x5e785417: address(signers.field_256), mem[ceil32(arg3.length) + ceil32(arg6.length) + 192 len arg3.length + 20], arg4, arg5, mem[ceil32(arg3.length) + ceil32(arg6.length) + arg3.length + 276 len -(arg3.length % 32) + 172], arg6.length, arg6[all]
        else:
            mem[floor32(arg6.length) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg6.length) + 480] = mem[floor32(arg6.length) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg6.length) + -(arg6.length % 32) + 512 len arg6.length % 32]
            emit 0x5e785417: address(signers.field_256), mem[ceil32(arg3.length) + ceil32(arg6.length) + 192 len arg3.length + 20], arg4, arg5, mem[ceil32(arg3.length) + ceil32(arg6.length) + arg3.length + 276 len -(arg3.length % 32) + 172], arg6.length, arg6[all], mem[ceil32(arg3.length) + ceil32(arg6.length) + floor32(arg3.length) + arg6.length + 480 len -(arg6.length % 32) + 32]
}



}
