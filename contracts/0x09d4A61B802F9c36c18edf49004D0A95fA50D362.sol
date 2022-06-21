contract main {


// =======================  Init code  ======================


uint256 stor0;
uint8 stor1;
array of uint256 stor2;
uint256 stor3;
array of uint256 stor4;
address stor5;
mapping of uint256 stor6;

function _fallback() {
    mem[96 len -3199] = code.data[3689 len -3199]
    mem[64] = -3103
    stor3 = 18
    stor4[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor2[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    stor1 = uint8(bool(mem[192]))
    stor5 = msg.sender
    stor0 = mem[96] * 10^stor3
    stor6[address(msg.sender)] = stor0
    return code.data[490 len 3199]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
uint8 stor1;
array of uint256 name;
uint256 decimals;
array of uint256 symbol;
address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function mintable() {
    return bool(stor1)
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
}

function mint(uint256 arg1) {
    require arg1 >= 0
    require msg.sender == owner
    balanceOf[address(msg.sender)] += arg1
    totalSupply += arg1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size == 68
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 > 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require arg3 > 0
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
}



}
