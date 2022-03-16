contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 1509]
}



// =====================  Runtime code  =====================


address operatorAddress;
mapping of uint8 stor1;
mapping of struct sub_af0b77c6;

function operator() payable {
    return operatorAddress
}

function sub_af0b77c6(?) payable {
    return sub_af0b77c6[arg1[all]].field_0
}

function getAddress(string arg1) payable {
    return sub_af0b77c6[arg1[all]].field_256
}

function kill() payable {
    if operatorAddress == msg.sender:
    selfdestruct(operatorAddress)
}

function _fallback() payable {
  stop
}

function sub_3c450d2d(?) payable {
    if stor1[arg1[all]]:
        if msg.sender == sub_af0b77c6[arg1[all]].field_0:
            sub_af0b77c6[arg1[all]].field_256 = arg2 or Mask(96, 160, sub_af0b77c6[arg1[all]].field_256)
            emit 0xd2259e93: Array(len=arg1.length, data=arg1[all]), address(arg2)
}

function sub_1bfb3d61(?) payable {
    if not stor1[arg1[all]]:
        sub_af0b77c6[arg1[all]].field_0 = msg.sender or Mask(96, 160, sub_af0b77c6[arg1[all]].field_0)
        sub_af0b77c6[arg1[all]].field_256 = arg2 or Mask(96, 160, sub_af0b77c6[arg1[all]].field_256)
        stor1[arg1[all]] = 1
        emit 0xfb989cb0: Array(len=arg1.length, data=arg1[all]), address(arg2)
}



}
