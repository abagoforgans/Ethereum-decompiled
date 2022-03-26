contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 755]
}



// =====================  Runtime code  =====================


address issuerAddress;
mapping of uint8 stor1;

function sub_0b4fd156(?) {
    return bool(stor1[arg1])
}

function issuer() {
    return issuerAddress
}

function kill() {
    if issuerAddress != msg.sender:
    selfdestruct(issuerAddress)
}

function _fallback() payable {
    revert 
}

function sub_d0f74108(?) {
    require issuerAddress == msg.sender
    stor1[address(arg1)] = 1
}

function sub_6b1c319e(?) {
    require bool(stor1[address(msg.sender)]) == 1
    emit 0xc2dfaf86: Array(len=arg1.length, data=arg1[all]), address(arg2), arg1.length + 128
}



}
