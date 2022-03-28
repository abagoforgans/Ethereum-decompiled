contract main {


// =======================  Init code  ======================


const _fallback = code.data[25 len 269]




// =====================  Runtime code  =====================


mapping of uint256 balance;

function balance(address arg1) {
    return balance[address(arg1)]
}

function _fallback() payable {
    revert 
}

function send(address arg1, uint256 arg2) {
    if balance[address(msg.sender)] >= arg2:
        balance[address(arg1)] += arg2
        balance[msg.sender] -= arg2
}



}
