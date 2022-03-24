contract main {


// =======================  Init code  ======================


array of address stor0;
uint8 stor1;

function _fallback() payable {
    mem[96 len -2661] = code.data[2939 len -2661]
    mem[64] = -2565
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
    return code.data[278 len 2661]
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
                    code: code.data[2211 len 450]
    return address(create.new_address)
}

function sendMultiSig(address arg1, uint256 arg2, bytes arg3, uint256 arg4, uint256 arg5, bytes arg6) payable {
    require 0 < signers.length
    idx = 0
    while signers[idx] != msg.sender:
        require idx + 1 < signers.length
        mem[0] = 0
        idx = idx + 1
        continue 
    emit 0x8de6455d: msg.sender, address(arg1), arg2, Array(len=arg3.length, data=arg3[all]), arg4, arg5, arg3.length + 256
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



}
