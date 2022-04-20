contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
array of uint256 stor3;
array of uint256 stor4;
uint8 stor5;
address stor5; offset 8

function _fallback() {
    mem[96 len -2607] = code.data[3040 len -2607]
    mem[64] = -2511
    stor3[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor4[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    uint8(stor5.field_0) = mem[191 len 1]
    address(stor5.field_8) = msg.sender
    if mem[192] > 0:
        stor0 += mem[192]
        stor1[address(msg.sender)] += mem[192]
        emit Transfer(mem[192], 0, msg.sender);
    return code.data[433 len 2607]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address owner; offset 8

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

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function changeOwner(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
    return 1
}

function approve(address arg1, uint256 arg2) {
    require arg1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function mint(uint256 arg1) {
    require owner == msg.sender
    require arg1 > 0
    require totalSupply + arg1 >= totalSupply
    totalSupply += arg1
    balanceOf[address(msg.sender)] += arg1
    emit Transfer(arg1, 0, msg.sender);
    return 1
}

function mintTo(uint256 arg1, address arg2) {
    require owner == msg.sender
    require arg1 > 0
    require totalSupply + arg1 >= totalSupply
    totalSupply += arg1
    balanceOf[address(arg2)] += arg1
    emit Transfer(arg1, 0, arg2);
    return 1
}

function unmint(uint256 arg1) {
    require owner == msg.sender
    require arg1 > 0
    require balanceOf[address(msg.sender)] >= arg1
    totalSupply -= arg1
    balanceOf[address(msg.sender)] -= arg1
    emit Transfer(arg1, msg.sender, 0);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
