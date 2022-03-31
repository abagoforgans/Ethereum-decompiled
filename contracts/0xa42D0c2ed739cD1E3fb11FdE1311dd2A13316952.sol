contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[57 len 417]
}



// =====================  Runtime code  =====================


address stor0;
mapping of uint256 queryBalance;

function queryBalance(address arg1) {
    return queryBalance[address(arg1)]
}

function _fallback() payable {
    revert
}

function mint(address arg1, uint256 arg2) {
    if stor0 == msg.sender:
        queryBalance[address(arg1)] += arg2
}

function send(address arg1, uint256 arg2) {
    if queryBalance[address(msg.sender)] >= arg2:
        queryBalance[address(msg.sender)] -= arg2
        queryBalance[arg1] += arg2
}



}
