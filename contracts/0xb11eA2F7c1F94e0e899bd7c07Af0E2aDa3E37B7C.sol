contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 673]
}



// =====================  Runtime code  =====================


address issuerAddress;
mapping of uint8 sub_0b4fd156;

function sub_0b4fd156(?) payable {
    return sub_0b4fd156[arg1]
}

function issuer() payable {
    return issuerAddress
}

function kill() payable {
    if issuerAddress != msg.sender:
    selfdestruct(issuerAddress)
}

function _fallback() payable {
  stop
}

function sub_d0f74108(?) payable {
    require issuerAddress == msg.sender
    sub_0b4fd156[address(arg1)] = 1
}

function sub_6b1c319e(?) payable {
    require sub_0b4fd156[address(msg.sender)] == 1
    emit 0xc2dfaf86: Array(len=arg1.length, data=arg1[all]), address(arg2), arg1.length + 128
}



}
