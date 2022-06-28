contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
mapping of uint256 stor2;
uint256 stor4;
array of uint256 stor5;
uint256 stor6;
array of uint256 stor7;

function _fallback() {
    mem[96 len -5425] = code.data[5916 len -5425]
    mem[64] = -5329
    stor2[address(msg.sender)] = mem[96]
    stor0 = mem[96]
    stor5[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor6 = mem[160]
    stor7[] = Array(len=mem[mem[192] + 96], data=mem[mem[192] + 128 len mem[mem[192] + 96]])
    stor1 = msg.sender
    stor4 = mem[224]
    return code.data[491 len 5425]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 tokenPrice;
array of uint256 name;
uint256 decimals;
array of uint256 symbol;

function name() {
    return name[0 len name.length]
}

function TokenPrice() {
    return tokenPrice
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
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

function setPrice(uint256 arg1) {
    require msg.sender == owner
    tokenPrice = arg1
    return 1
}

function burn(uint256 arg1) {
    require msg.sender == owner
    require msg.sender
    totalSupply -= arg1
    balanceOf[address(msg.sender)] -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function burnFrom(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    balanceOf[address(msg.sender)] -= arg2
    emit Transfer(arg2, msg.sender, 0);
    return 1
}

function approve(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
    balanceOf[address(msg.sender)] = 0
    balanceOf[address(arg1)] += balanceOf[address(msg.sender)]
    emit Transfer(balanceOf[address(msg.sender)], msg.sender, arg1);
}

function purchase(address arg1, uint256 arg2) payable {
    require tokenPrice
    require balanceOf[stor1] >= 10^18 * msg.value / tokenPrice
    balanceOf[stor1] -= 10^18 * msg.value / tokenPrice
    balanceOf[address(arg1)] += 10^18 * msg.value / tokenPrice
    emit Transfer((10^18 * msg.value / tokenPrice), owner, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    if allowance[address(arg1)][address(msg.sender)] < -1:
        allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
