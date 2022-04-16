contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = 250 * 10^18 * 3600
    require not msg.value
    return code.data[44 len 535]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 balanceOf;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function _fallback() payable {
    if uint32(call.func_hash) == unknown_0x18160ddd(?????):
        require not msg.value
        return totalSupply
    if unknown_0x70a08231(?????) == uint32(call.func_hash):
        require not msg.value
        return balanceOf[address(arg1)]
    require unknown_0xa9059cbb(?????) == uint32(call.func_hash)
    require not msg.value
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
