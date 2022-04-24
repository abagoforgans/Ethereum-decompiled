contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;

function _fallback() {
    mem[96 len -1448] = code.data[1810 len -1448]
    mem[64] = -1352
    stor0[address(msg.sender)] = mem[96]
    stor1[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor2[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    return code.data[362 len 1448]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
array of uint256 name;
array of uint256 symbol;

function name() {
    return name[0 len name.length]
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function getBalance(address arg1) {
    return balanceOf[address(arg1)]
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
}



}
