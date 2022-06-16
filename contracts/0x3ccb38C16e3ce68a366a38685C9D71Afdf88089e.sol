contract main {


// =======================  Init code  ======================


address stor0;
address stor2;
address stor5;
address stor7;

function _fallback() {
    stor0 = msg.sender
    stor2 = code.data[4480 len 20]
    stor7 = code.data[4512 len 20]
    stor5 = code.data[4544 len 20]
    return code.data[338 len 4130]
}



// =====================  Runtime code  =====================


address owner;
address newOwnerCandidate;
address tokenAddress;
uint256 neededAmountTotal;
uint256 releasedTokenTotal;
address approverAddress;
uint256 distributedBountyTotal;
address dateTimeAddress;

function approver() {
    return approverAddress
}

function distributedBountyTotal() {
    return distributedBountyTotal
}

function dateTime() {
    return dateTimeAddress
}

function releasedTokenTotal() {
    return releasedTokenTotal
}

function owner() {
    return owner
}

function neededAmountTotal() {
    return neededAmountTotal
}

function newOwnerCandidate() {
    return newOwnerCandidate
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function setApprover(address arg1) {
    require msg.sender == owner
    approverAddress = arg1
}

function changeTokenAddress(address arg1) {
    require msg.sender == owner
    tokenAddress = arg1
}

function receiveTransferOwnership() {
    require newOwnerCandidate == msg.sender
    emit OwnershipTransferred(owner, newOwnerCandidate);
    owner = newOwnerCandidate
}

function requestTransferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferRequsted(owner, arg1);
    newOwnerCandidate = arg1
}

function viewContractHoldingToken() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    require ext_call.success
    return ext_call.return_data[0]
}

function transfer(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    require ext_call.success
    require neededAmountTotal + arg2 >= neededAmountTotal
    require neededAmountTotal + arg2 <= ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] > 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    require ext_call.success
}

function distributeBounty(address[] arg1, uint256[] arg2) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    require arg1.length == arg2.length
    idx = 0
    s = 0
    while idx < arg2.length:
        require idx < arg2.length
        distributedBountyTotal += mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg2.length
        _28 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg1.length
        _30 = mem[(32 * idx) + 128]
        require idx < arg2.length
        _32 = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[(32 * arg1.length) + (32 * arg2.length) + 164] = approverAddress
        mem[(32 * arg1.length) + (32 * arg2.length) + 196] = address(_30)
        mem[(32 * arg1.length) + (32 * arg2.length) + 228] = _32
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args approverAddress, address(_30), _32
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
        require ext_call.success
        idx = idx + 1
        s = s + _28
        continue 
    emit BountyDistributed(arg1.length, s * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length);
}



}
