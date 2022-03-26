contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
address storBB28;

function _fallback() {
    stor0[address(this.address)] = 'NameReg'
    storBB28 = this.address
    emit AddressRegistered(this.address);
    return code.data[208 len 596]
}



// =====================  Runtime code  =====================


mapping of uint256 nameOf;
mapping of address addressOf;

function addressOf(bytes32 arg1) {
    return addressOf[arg1]
}

function nameOf(address arg1) {
    return nameOf[address(arg1)]
}

function _fallback() payable {
    revert 
}

function unregister() {
    if nameOf[address(msg.sender)]:
        emit AddressDeregistered(addressOf[stor0[address(msg.sender)]]);
        nameOf[address(msg.sender)] = 0
        addressOf[stor0[address(msg.sender)]] = 0
}

function register(bytes32 arg1) {
    if nameOf[address(msg.sender)]:
        addressOf[stor0[address(msg.sender)]] = 0
    nameOf[address(msg.sender)] = arg1
    addressOf[arg1] = msg.sender
    emit AddressRegistered(msg.sender);
}



}
