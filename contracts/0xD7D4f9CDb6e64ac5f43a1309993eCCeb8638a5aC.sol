contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 358]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint256 sub_b8cfb0a4;

function sub_846719e0(?) {
    return sub_b8cfb0a4[arg1]
}

function owner() {
    return owner
}

function sub_b8cfb0a4(?) {
    return sub_b8cfb0a4[arg1]
}

function kill() {
    if owner != msg.sender:
    selfdestruct(owner)
}

function _fallback() payable {
    revert 
}

function sub_5999b979(?) {
    require owner == msg.sender
    sub_b8cfb0a4[arg1] = 0
}

function set(int256 arg1, int256 arg2) {
    require owner == msg.sender
    sub_b8cfb0a4[arg1] = arg2
}



}
