contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
uint256 stor3;
mapping of uint256 stor4;

function _fallback() {
    mem[96 len -1423] = code.data[1759 len -1423]
    mem[64] = -1327
    stor4[address(msg.sender)] = mem[96]
    stor3 = mem[96]
    stor0[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor1[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    stor2 = mem[223 len 1]
    return code.data[336 len 1423]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint8 stor5;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
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

function frozenAccount(address arg1) {
    return bool(stor5[arg1])
}

function _fallback() payable {
    revert
}

function freezeAccount(address arg1, bool arg2) {
    stor5[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function transfer(address arg1, uint256 arg2) {
    require not stor5[address(msg.sender)]
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}



}
