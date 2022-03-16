contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 1211]
}



// =====================  Runtime code  =====================


address operatorAddress;
mapping of uint8 stor1;
mapping of struct sub_af0b77c6;
array of struct stor3;

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

function sub_a4bc0019(?) payable {
    require arg1 < stor3.length
    if stor3[arg1].field_0:
        mem[128] = stor3[arg1].field_0
        idx = 128
        s = 0
        while stor3[arg1].field_0 + 128 > idx + 32:
            mem[idx + 32] = stor3[arg1 + s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=stor3[arg1].field_0, data=mem[128 len stor3[arg1].field_0])
}



}
