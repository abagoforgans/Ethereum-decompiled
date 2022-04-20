contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = msg.sender
    require stor0 == msg.sender
    require code.data[1317 len 20]
    emit OwnershipTransferred(stor0, code.data[1317 len 20]);
    stor0 = code.data[1317 len 20]
    stor1 = code.data[1349 len 20]
    return code.data[286 len 1019]
}



// =====================  Runtime code  =====================


address owner;
address walletAddress;
mapping of uint256 deposits;

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

function depositPayment(uint256 arg1) payable {
    require msg.value + deposits[arg1] >= deposits[arg1]
    deposits[arg1] += msg.value
    emit Payment(msg.value, msg.sender, arg1);
}

function withdrawFunds() {
    call walletAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Withdraw(eth.balance(this.address), walletAddress);
}



}
