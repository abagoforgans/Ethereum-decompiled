contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[94 len 661]
}



// =====================  Runtime code  =====================


address stor0;
mapping of uint256 sub_5bed1772;

function sub_5bed1772(?) {
    return sub_5bed1772[arg1]
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) {
    require msg.sender == stor0
    stor0 = arg1
}

function sub_cccaf5f8(?) {
    require msg.sender == stor0
    sub_5bed1772[arg1] = arg2
    emit DocumentStored(arg1, arg2);
}



}
