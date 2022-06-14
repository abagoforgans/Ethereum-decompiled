contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor0;
address newOwner;
address tokenContractAddress;
address walletAddress;
uint256 decimals;
mapping of uint8 stor5;

function decimals() {
    return decimals
}

function wallet() {
    return walletAddress
}

function tokenContract() {
    return tokenContractAddress
}

function rc(address arg1) {
    return bool(stor5[arg1])
}

function owner() {
    return address(owner)
}

function newOwner() {
    return newOwner
}

function _fallback() payable {
    revert
}

function setTokenContract(address arg1) {
    if address(owner) != msg.sender:
        revert with 0, 'msg.sender == owner'
    tokenContractAddress = arg1
}

function addRC(address arg1) {
    if address(owner) != msg.sender:
        revert with 0, 'msg.sender == owner'
    stor5[address(arg1)] = 1
    emit NewRC(arg1);
}

function transferOwnership(address arg1) {
    if address(owner) != msg.sender:
        revert with 0, 'msg.sender == owner'
    if not arg1:
        revert with 0, 'address(0) != _newOwner'
    newOwner = arg1
}

function setWallet(address arg1) {
    if address(owner) != msg.sender:
        revert with 0, 'msg.sender == owner'
    if not arg1:
        revert with 0, '_wallet != address(0)'
    walletAddress = arg1
    return 1
}

function acceptOwnership() {
    if newOwner != msg.sender:
        revert with 0, 'msg.sender == newOwner'
    emit OwnershipTransferred(address(owner), msg.sender);
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
    newOwner = 0
}

function forwardEther() payable {
    if not stor5[msg.sender]:
        revert with 0, 'rc[msg.sender]'
    call walletAddress with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'wallet.call.value(msg.value)()'
    return 1
}

function sendTokens(address arg1, uint256 arg2) {
    if not stor5[msg.sender]:
        revert with 0, 'rc[msg.sender]'
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function withdrawTokens(address arg1, uint256 arg2) {
    if address(owner) != msg.sender:
        revert with 0, 'msg.sender == owner'
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}



}
