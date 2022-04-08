contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;

function _fallback() {
    stor0 = msg.sender
    stor2 = block.number
    return code.data[61 len 528]
}



// =====================  Runtime code  =====================


address stor0;
mapping of address gold;
uint256 stor2;

function gold(uint256 arg1) {
    return gold[arg1]
}

function kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}

function sellGold() {
    gold[stor2] = 0
    return 0
}

function sub_e8ea3445(?) {
    return (gold[stor2] == msg.sender)
}

function buyGold() {
    gold[stor2] = msg.sender
    return stor2
}



}
