contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor0;
address newOwner;
address tokenContractAddress;
uint256 releaseTime;

function tokenContract() {
    return tokenContractAddress
}

function owner() {
    return address(owner)
}

function releaseTime() {
    return releaseTime
}

function newOwner() {
    return newOwner
}

function unlocked() {
    return (block.timestamp > releaseTime)
}

function transferOwnership(address arg1) {
    if address(owner) != msg.sender:
        revert with 0, 'msg.sender == owner'
    if not arg1:
        revert with 0, 'address(0) != _newOwner'
    newOwner = arg1
}

function acceptOwnership() {
    if newOwner != msg.sender:
        revert with 0, 'msg.sender == newOwner'
    emit OwnershipTransferred(address(owner), msg.sender);
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
    newOwner = 0
}

function _fallback() {
    if msg.sender == newOwner:
        emit OwnershipTransferred(address(owner), msg.sender);
        uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
        newOwner = 0
    if address(owner) != msg.sender:
        revert with 0, 'msg.sender == owner'
    if block.timestamp <= releaseTime:
        revert with 0, 'now > releaseTime'
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'tknToSend > 0'
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}



}
