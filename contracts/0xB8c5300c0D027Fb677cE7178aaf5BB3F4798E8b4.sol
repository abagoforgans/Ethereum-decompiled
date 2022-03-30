contract main {


// =======================  Init code  ======================


uint256 storB051;

function _fallback() {
    storB051 = 1000000 * 10^18
    return code.data[104 len 376]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceOf;

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit 0x2201ba20: msg.sender, address(arg1), arg2
}



}
