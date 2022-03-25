contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
uint256 storBB28;

function _fallback() payable {
    stor0[address(this.address)] = 'NameReg'
    storBB28 = this.address or Mask(96, 160, storBB28)
    emit AddressRegistered(this.address);
    return code.data[176 len 596]
}



// =====================  Runtime code  =====================


mapping of uint256 nameOf;
mapping of address addressOf;

function addressOf(bytes32 arg1) payable {
    return address(addressOf[arg1])
}

function nameOf(address arg1) payable {
    return nameOf[address(arg1)]
}

function _fallback() payable {
  stop
}

function unregister() payable {
    if nameOf[address(msg.sender)]:
        emit AddressDeregistered(address(addressOf[stor0[address(msg.sender)]]));
        nameOf[address(msg.sender)] = 0
        address(addressOf[stor0[address(msg.sender)]]) = 0
}

function register(bytes32 arg1) payable {
    if nameOf[address(msg.sender)]:
        address(addressOf[stor0[address(msg.sender)]]) = 0
    nameOf[address(msg.sender)] = arg1
    uint256(addressOf[arg1]) = msg.sender or Mask(96, 160, uint256(addressOf[arg1]))
    emit AddressRegistered(msg.sender);
}



}
