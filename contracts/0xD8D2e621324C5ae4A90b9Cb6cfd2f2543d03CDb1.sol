contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
array of uint256 stor2;
array of uint256 stor3;
uint8 stor4;

function _fallback() {
    mem[96 len -1513] = code.data[2019 len -1513]
    mem[64] = -1417
    stor0[address(msg.sender)] = mem[96]
    stor2[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor3[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    stor4 = mem[223 len 1]
    return code.data[506 len 1513]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
uint256 initialSupply;
array of uint256 coinName;
array of uint256 sub_1e09e3fb;
uint8 decimalUnits;

function decimalUnits() {
    return decimalUnits
}

function sub_1e09e3fb(?) {
    return sub_1e09e3fb[0 len sub_1e09e3fb.length]
}

function initialSupply() {
    return initialSupply
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function coinName() {
    return coinName[0 len coinName.length]
}

function _fallback() payable {
    revert 
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}



}
