contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 596]
}



// =====================  Runtime code  =====================


address operatorAddress;
uint256 stor0;
uint8 sub_02c1d7b0; offset 160
mapping of uint256 balanceOf;
mapping of struct readings;

function sub_02c1d7b0(?) payable {
    return sub_02c1d7b0
}

function readings(address arg1) payable {
    return readings[arg1].field_0, readings[arg1].field_256
}

function operator() payable {
    return address(operatorAddress)
}

function balanceOf(address arg1) payable {
    return balanceOf[arg1]
}

function _fallback() payable {
    revert 
}

function transferOperator(address arg1) payable {
    require address(operatorAddress) == msg.sender
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function sub_b8ea4390(?) payable {
    require address(operatorAddress) == msg.sender
    require arg2 >= readings[address(arg1)].field_0
    require arg3 >= readings[address(arg1)].field_256
    emit Transfer((arg2 - readings[address(arg1)].field_0), msg.sender, arg1);
    readings[address(arg1)].field_0 = arg2
    readings[address(arg1)].field_256 = arg3
    balanceOf[address(arg1)] = arg2
}



}
