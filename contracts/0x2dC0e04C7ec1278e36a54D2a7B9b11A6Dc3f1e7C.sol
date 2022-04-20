contract main {


// =======================  Init code  ======================


const _fallback = code.data[25 len 832]




// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 balanceOf;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function _fallback() payable {
    revert 
}

function transfer(address arg1, uint256 arg2) {
    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] * arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
