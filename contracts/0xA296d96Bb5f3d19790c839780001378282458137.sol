contract main {


// =======================  Init code  ======================


address stor0;
mapping of uint256 stor1;

function _fallback() {
    stor0 = msg.sender
    stor1[stor0] = 999
    return code.data[196 len 462]
}



// =====================  Runtime code  =====================


address stor0;
mapping of uint256 viewBalance;

function viewBalance() {
    return viewBalance[address(msg.sender)]
}

function _fallback() payable {
    revert 
}

function sub_155f85f6(?) {
    require msg.sender == stor0
    viewBalance[address(arg2)] += arg1
}



}
