contract main {


// =======================  Init code  ======================


mapping of struct stor0;

function _fallback() payable {
    stor0[address(msg.sender)] = 1
    return code.data[99 len 384]
}



// =====================  Runtime code  =====================


mapping of struct stor0;

function _fallback() payable {
  stop
}

function voters(address arg1) payable {
    return stor0[arg1].field_0, stor0[arg1].field_256, stor0[arg1].field_512
}

function sub_30547e4c(?) payable {
    if not stor0[address(arg1)].field_512:
        return 0
    return (block.timestamp - stor0[address(arg1)].field_256)
}



}
