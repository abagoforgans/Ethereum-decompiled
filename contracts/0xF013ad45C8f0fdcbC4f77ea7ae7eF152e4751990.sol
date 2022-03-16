contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[64 len 670]
}



// =====================  Runtime code  =====================


address stor0;
mapping of uint256 sub_c8507cbd;
mapping of uint256 sub_04289bec;
mapping of struct sub_58924a2e;

function sub_04289bec(?) payable {
    return sub_04289bec[arg1]
}

function getPrice(bytes32 arg1) payable {
    return sub_c8507cbd[arg1]
}

function sub_58924a2e(?) payable {
    return sub_58924a2e[arg1].field_0, sub_58924a2e[arg1].field_256, sub_58924a2e[arg1].field_512, sub_58924a2e[arg1].field_768
}

function sub_c8507cbd(?) payable {
    return sub_c8507cbd[arg1]
}

function _fallback() payable {
  stop
}

function update(uint256 arg1, bytes32 arg2, bytes32 arg3) payable {
    if msg.sender == stor0:
        sub_c8507cbd[arg2] = arg1
        sub_04289bec[arg2] = arg3
}



}
