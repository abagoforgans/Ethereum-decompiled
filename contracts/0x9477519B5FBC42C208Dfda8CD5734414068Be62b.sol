contract main {


// =======================  Init code  ======================


address stor1;

function _fallback() {
    stor1 = msg.sender
    return code.data[98 len 551]
}



// =====================  Runtime code  =====================


mapping of address contract;
address stor1;

function contractAddress(uint256 arg1) {
    return contract[arg1]
}

function _fallback() payable {
    revert
}

function addAddress(uint256 arg1, address arg2) {
    if stor1 != msg.sender:
        return 0
    contract[arg1] = arg2
    return 1
}



}
