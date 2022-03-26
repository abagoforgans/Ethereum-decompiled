contract main {


// =======================  Init code  ======================


const _fallback = code.data[20 len 365]




// =====================  Runtime code  =====================


mapping of uint256 identify;

function identify(address arg1) {
    return identify[address(arg1)]
}

function _fallback() {
    revert 
}

function register(uint256 arg1) {
    identify[address(msg.sender)] = arg1
    emit Register(block.timestamp, msg.sender, arg1);
}



}
