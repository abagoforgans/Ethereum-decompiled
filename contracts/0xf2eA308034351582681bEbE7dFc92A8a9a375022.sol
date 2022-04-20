contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor3;

function _fallback() {
    stor0 = msg.sender
    stor3 = code.data[1760 len 20]
    require stor0 == msg.sender
    require code.data[1792 len 20]
    emit OwnershipTransferred(stor0, code.data[1792 len 20]);
    stor0 = code.data[1792 len 20]
    stor1 = code.data[1824 len 20]
    return code.data[321 len 1427]
}



// =====================  Runtime code  =====================


address owner;
address walletAddress;
mapping of uint256 deposits;
address tokenAddress;

function wallet() {
    return walletAddress
}

function owner() {
    return owner
}

function getDeposit(uint256 arg1) {
    return deposits[arg1]
}

function deposits(uint256 arg1) {
    return deposits[arg1]
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function changeWallet(address arg1) {
    require owner == msg.sender
    walletAddress = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_9bdc727c(?) {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining - 710 wei
        args msg.sender, address(this.address), arg2
    require ext_call.success
    if ext_call.return_data[0]:
        require arg2 + deposits[arg1] >= deposits[arg1]
        deposits[arg1] += arg2
        emit Payment(arg2, msg.sender, arg1);
}

function withdrawFunds() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args walletAddress, ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
    emit Withdraw(ext_call.return_data[0], walletAddress);
}



}
