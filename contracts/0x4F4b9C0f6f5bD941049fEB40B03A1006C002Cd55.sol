contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor3;

function _fallback() {
    mem[96 len -1055] = code.data[1379 len -1055]
    mem[64] = -959
    stor3[address(msg.sender)] = mem[96]
    stor0[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor1[] = Array(len=mem[mem[192] + 96], data=mem[mem[192] + 128 len mem[mem[192] + 96]])
    stor2 = mem[191 len 1]
    return code.data[324 len 1055]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
}



}
