contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[63 len 855]
}



// =====================  Runtime code  =====================


address sub_aaabd6b0Address;
mapping of struct voters;

function voters(address arg1) payable {
    return voters[arg1].field_0, voters[arg1].field_256, voters[arg1].field_512
}

function sub_aaabd6b0(?) payable {
    return sub_aaabd6b0Address
}

function selfDestruct() payable {
    if sub_aaabd6b0Address != msg.sender:
    selfdestruct(sub_aaabd6b0Address)
}

function _fallback() payable {
  stop
}

function sub_30547e4c(?) payable {
    if not voters[address(arg1)].field_512:
        return 0
    return (block.timestamp - voters[address(arg1)].field_256)
}

function sub_adca1847(?) payable {
    if not voters[address(arg1)].field_0:
        voters[address(arg1)].field_0 = block.timestamp
        voters[address(arg1)].field_256 = block.timestamp
    voters[address(arg1)].field_512 = 1
}



}
