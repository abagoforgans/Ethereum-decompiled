contract main {


// =======================  Init code  ======================


const _fallback = code.data[24 len 292]




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function _fallback() payable {
    revert 
}

function buy() payable {
    require balanceOf[address(this.address)] >= msg.value
    balanceOf[address(msg.sender)] += msg.value
    balanceOf[this.address] -= msg.value
    emit Transfer(msg.value, this.address, msg.sender);
    return msg.value
}



}
