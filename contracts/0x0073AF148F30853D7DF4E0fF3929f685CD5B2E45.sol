contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
uint8 stor3;

function _fallback() {
    mem[96 len -1048] = code.data[1373 len -1048]
    mem[64] = -952
    stor0[address(msg.sender)] = mem[96]
    stor1[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor2[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    stor3 = mem[223 len 1]
    return code.data[325 len 1048]
}



// =====================  Runtime code  =====================


mapping of uint256 b;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function symbol() {
    return symbol[0 len symbol.length]
}

function b(address arg1) {
    return b[arg1]
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    require b[address(msg.sender)] >= arg2
    require b[address(arg1)] + arg2 >= b[address(arg1)]
    b[address(msg.sender)] -= arg2
    b[arg1] += arg2
}



}
