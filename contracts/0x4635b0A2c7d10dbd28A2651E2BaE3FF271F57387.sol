contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 503]




// =====================  Runtime code  =====================


mapping of uint256 hodlers;

function hodlers(address arg1) {
    return hodlers[arg1]
}

function _fallback() payable {
    hodlers[address(msg.sender)] += msg.value
    emit Hodl(msg.sender, msg.value);
    if not msg.value:
        require block.timestamp > 1546507500
        require hodlers[address(msg.sender)] > 0
        hodlers[address(msg.sender)] = 0
        call msg.sender with:
           value hodlers[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit Party(msg.sender, hodlers[address(msg.sender)]);
}



}
