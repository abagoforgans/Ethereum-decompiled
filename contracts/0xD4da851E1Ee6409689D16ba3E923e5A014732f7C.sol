contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = msg.sender or Mask(96, 160, stor1)
    return code.data[108 len 1621]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
mapping of address sub_25b12808;
mapping of uint8 checkHashExists;
mapping of uint256 sub_32bc3f58;

function sub_25b12808(?) payable {
    return address(sub_25b12808[arg1])
}

function sub_32bc3f58(?) payable {
    return sub_32bc3f58[arg1]
}

function checkHashExists(bytes32 arg1) payable {
    return checkHashExists[arg1]
}

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function sub_5c1e108c(?) payable {
    return sha3(arg1)
}

function sub_bb12540a(?) payable {
    if not checkHashExists[arg1]:
        return 0
    return 1
}

function returnFunds() payable {
    call stor1 with:
       value eth.balance(this.address) wei
         gas 0 wei
}

function sub_42ab30ed(?) payable {
    if address(sub_25b12808[arg1]):
        emit 0xc0726f8a: block.timestamp, sub_32bc3f58[arg1], arg1, msg.sender, address(sub_25b12808[arg1])
        return 0
    uint256(sub_25b12808[arg1]) = msg.sender or Mask(96, 160, uint256(sub_25b12808[arg1]))
    sub_32bc3f58[arg1] = block.timestamp
    checkHashExists[arg1] = 1
    emit 0x70f85608: sub_32bc3f58[arg1], checkHashExists[arg1], arg1, address(sub_25b12808[arg1])
    return 1
}



}
