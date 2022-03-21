contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
uint256 stor3DBE;
uint256 stor6043;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1[address(this.address)] = 'NameReg'
    stor6043 = this.address or Mask(96, 160, stor6043)
    stor3DBE = msg.sender or Mask(96, 160, stor3DBE)
    emit Register('NameReg', this.address);
    return code.data[245 len 935]
}



// =====================  Runtime code  =====================


address stor0;
mapping of uint256 nameOf;
mapping of address addressOf;
mapping of address stor3;

function addressOf(bytes32 arg1) payable {
    return address(addressOf[arg1])
}

function nameOf(address arg1) payable {
    return nameOf[address(arg1)]
}

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function unregister() payable {
    if nameOf[address(msg.sender)]:
        if address(stor3[stor1[address(msg.sender)]]) == tx.origin:
            nameOf[address(msg.sender)] = 0
            address(addressOf[stor1[address(msg.sender)]]) = 0
            address(stor3[stor1[address(msg.sender)]]) = 0
            emit Unregister(nameOf[address(msg.sender)], msg.sender);
}

function register(bytes32 arg1) payable {
    if 0 == address(addressOf[arg1]):
        if nameOf[address(msg.sender)]:
            address(addressOf[stor1[address(msg.sender)]]) = 0
            address(stor3[stor1[address(msg.sender)]]) = 0
            emit Unregister(nameOf[address(msg.sender)], msg.sender);
        nameOf[address(msg.sender)] = arg1
        uint256(addressOf[arg1]) = msg.sender or Mask(96, 160, uint256(addressOf[arg1]))
        uint256(stor3[arg1]) = tx.origin or Mask(96, 160, uint256(stor3[arg1]))
        emit Register(arg1, msg.sender);
    else:
        if tx.origin == address(stor3[arg1]):
            if nameOf[address(msg.sender)]:
                address(addressOf[stor1[address(msg.sender)]]) = 0
                address(stor3[stor1[address(msg.sender)]]) = 0
                emit Unregister(nameOf[address(msg.sender)], msg.sender);
            nameOf[address(msg.sender)] = arg1
            uint256(addressOf[arg1]) = msg.sender or Mask(96, 160, uint256(addressOf[arg1]))
            uint256(stor3[arg1]) = tx.origin or Mask(96, 160, uint256(stor3[arg1]))
            emit Register(arg1, msg.sender);
}



}
