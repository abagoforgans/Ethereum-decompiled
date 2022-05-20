contract main {


// =======================  Init code  ======================


address stor0;
address stor2;

function _fallback() payable {
    stor2 = 0xfb5a551374b656c6e39787b1d3a03feab7f3a98e
    stor0 = msg.sender
    return code.data[82 len 2715]
}



// =====================  Runtime code  =====================


address owner;
address pendingOwner;
address erc20tkAddress;
array of uint256 approveRecord;

function erc20tk() {
    return erc20tkAddress
}

function getApproveRecord(uint256 arg1) {
    return approveRecord[arg1][0 len approveRecord[arg1].length]
}

function owner() {
    return owner
}

function pendingOwner() {
    return pendingOwner
}

function _fallback() payable {
    revert
}

function changERC20(address arg1) {
    require owner == msg.sender
    erc20tkAddress = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    pendingOwner = arg1
}

function claimOwnership() {
    require pendingOwner == msg.sender
    emit OwnershipTransferred(owner, pendingOwner);
    owner = pendingOwner
    pendingOwner = 0
}

function receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) {
    require ext_code.size(erc20tkAddress)
    call erc20tkAddress.0x23b872dd with:
         gas gas_remaining wei
        args address(arg1), address(this.address), arg2
    require ext_call.success
    require ext_call.return_data[0]
    approveRecord.length++
    if not approveRecord.length <= approveRecord.length + 1:
        mem[0] = 3
        idx = approveRecord.length + 1
        while sha3(3) + approveRecord.length > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            if 31 < stor[idx + sha3(mem[0])].length:
                mem[0] = idx + sha3(mem[0])
                s = sha3(idx + sha3(mem[0]))
                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
    approveRecord[approveRecord.length][] = Array(len=arg4.length, data=arg4[all])
    emit ReceiveApproval(address(arg1), arg2, address(arg3), Array(len=arg4.length, data=arg4[all]));
}

function multiSend(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require owner == msg.sender
    require arg1.length == arg2.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg2.length
        _24 = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[(32 * arg1.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg1.length) + (32 * arg2.length) + 196] = _24
        require ext_code.size(erc20tkAddress)
        call erc20tkAddress.0xa9059cbb with:
             gas gas_remaining wei
            args mem[(32 * arg1.length) + (32 * arg2.length) + 164], _24
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
        require ext_call.success
        if not ext_call.return_data[0]:
            return idx
        require idx + 1 >= idx
        idx = idx + 1
        continue 
    return arg1.length
}

function multiSendFrom(address arg1, address[] arg2, uint256[] arg3) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require owner == msg.sender
    require arg2.length == arg3.length
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        _22 = mem[(32 * idx) + 128]
        require idx < arg3.length
        _24 = mem[(32 * idx) + (32 * arg2.length) + 160]
        mem[(32 * arg2.length) + (32 * arg3.length) + 164] = arg1
        mem[(32 * arg2.length) + (32 * arg3.length) + 196] = address(_22)
        mem[(32 * arg2.length) + (32 * arg3.length) + 228] = _24
        require ext_code.size(erc20tkAddress)
        call erc20tkAddress.0x23b872dd with:
             gas gas_remaining wei
            args address(arg1), address(_22), _24
        mem[(32 * arg2.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
        require ext_call.success
        if not ext_call.return_data[0]:
            return idx
        require idx + 1 >= idx
        idx = idx + 1
        continue 
    return arg2.length
}



}
