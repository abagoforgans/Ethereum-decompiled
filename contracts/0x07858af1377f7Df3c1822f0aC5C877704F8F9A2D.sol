contract main {


// =======================  Init code  ======================


const _fallback = code.data[25 len 720]




// =====================  Runtime code  =====================


const canWithdraw = block.timestamp >= 438288 * 24 * 3600


mapping of uint256 balanceOf;

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function balance() {
    return balanceOf[address(msg.sender)]
}

function _fallback() payable {
    balanceOf[address(msg.sender)] += msg.value
}

function withdraw() {
    require block.timestamp >= 438288 * 24 * 3600
    balanceOf[address(msg.sender)] = 0
    call msg.sender with:
       value balanceOf[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
