contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = msg.sender
    return code.data[157 len 2733]
}



// =====================  Runtime code  =====================


#
#  - sub_73cb95bb(?)
#
address stor0;
address stor1;
array of uint256 stor99;

function sub_596ba5bb(?) {
    return stor[_79][0 len stor[_79].length]
}

function kill() {
    require msg.sender == stor0
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}

function sub_f5035ebf(?) {
    require stor1 != msg.sender
    stor0 = stor1
}

function changeOwner(address arg1) {
    require msg.sender == stor0
    stor1 = arg1
}



}
