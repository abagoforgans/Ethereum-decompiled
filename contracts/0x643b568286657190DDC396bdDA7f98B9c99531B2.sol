contract main {


// =======================  Init code  ======================


uint256 stor0;
uint8 stor1;

function _fallback() payable {
    mem[96 len -2053] = code.data[2271 len -2053]
    mem[64] = -1957
    require mem[mem[96] + 96] >= 2
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
    return code.data[218 len 2053]
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
    require 65 == arg2.length
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
                    code: code.data[1878 len 175]
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
        require 65 == arg6.length
        _10 = mem[ceil32(arg3.length) + 192]
        _11 = mem[ceil32(arg3.length) + 193]
        mem[ceil32(arg3.length) + ceil32(arg6.length) + 192] = mem[ceil32(arg3.length) + 224 len 1]
        mem[ceil32(arg3.length) + ceil32(arg6.length) + 224] = mem[ceil32(arg3.length) + 160]
        mem[ceil32(arg3.length) + ceil32(arg6.length) + 256] = _10
        signer = erecover(sha3(arg1, arg2, arg3[all], arg4, arg5), _11 << 248, mem[ceil32(arg3.length) + 160], _10) 
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
        require 65 == arg6.length
        _41 = mem[ceil32(arg3.length) + 192]
        _42 = mem[ceil32(arg3.length) + 193]
        mem[ceil32(arg3.length) + ceil32(arg6.length) + 192] = mem[ceil32(arg3.length) + 224 len 1]
        mem[ceil32(arg3.length) + ceil32(arg6.length) + 224] = mem[ceil32(arg3.length) + 160]
        mem[ceil32(arg3.length) + ceil32(arg6.length) + 256] = _41
        signer = erecover(sha3(arg1, arg2, arg3[all], arg4, arg5), _42 << 248, mem[ceil32(arg3.length) + 160], _41) 
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
    require ext_call.success
    mem[ceil32(arg3.length) + ceil32(arg6.length) + 192] = address(signer)
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
