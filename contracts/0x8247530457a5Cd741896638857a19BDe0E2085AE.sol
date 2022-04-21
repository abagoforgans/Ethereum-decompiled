contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
uint256 stor3;
mapping of uint256 stor4;
mapping of uint256 stor5;

function _fallback() payable {
    stor2 = 0
    require not msg.value
    mem[96 len -1494] = code.data[1842 len -1494]
    mem[64] = -1398
    stor3 = mem[96] * 10^stor2
    stor4[address(msg.sender)] = mem[96] * 10^stor2
    stor5[address(msg.sender)] = block.timestamp
    stor0[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor1[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    return code.data[348 len 1494]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balances;
mapping of uint256 sub_871cebbc;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function decimals() {
    return decimals
}

function sub_871cebbc(?) {
    return sub_871cebbc[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function _fallback() payable {
    revert
}

function balanceOf(address arg1) {
    return balances[address(arg1)]^((block.timestamp - sub_871cebbc[address(arg1)] / 3600) + 1)
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balances[address(msg.sender)]^((block.timestamp - sub_871cebbc[address(msg.sender)] / 3600) + 1) >= arg2 + 2
    balances[address(msg.sender)] = balances[address(msg.sender)]^((block.timestamp - sub_871cebbc[address(msg.sender)] / 3600) + 1) - arg2
    balances[address(arg1)] = arg2 + balances[address(arg1)]^((block.timestamp - sub_871cebbc[address(arg1)] / 3600) + 1)
    sub_871cebbc[address(msg.sender)] = block.timestamp
    sub_871cebbc[arg1] = block.timestamp
    totalSupply = balances[address(msg.sender)]^((block.timestamp - sub_871cebbc[address(msg.sender)] / 3600) + 1) - balances[address(msg.sender)] + balances[address(arg1)]^((block.timestamp - sub_871cebbc[address(arg1)] / 3600) + 1) - balances[address(arg1)] + totalSupply
    emit Transfer(arg2, msg.sender, arg1);
}



}
