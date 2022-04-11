contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;
mapping of uint256 stor3;
array of uint256 stor6;
array of uint256 stor7;
uint8 stor8;
uint256 stor8; offset 8

function _fallback() {
    mem[96 len -2912] = code.data[3268 len -2912]
    mem[64] = -2816
    stor0 = msg.sender
    stor2 = mem[96]
    stor3[address(msg.sender)] = mem[96]
    stor6[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor7[] = Array(len=mem[mem[192] + 96], data=mem[mem[192] + 128 len mem[mem[192] + 96]])
    uint8(stor8.field_0) = mem[191 len 1]
    Mask(248, 0, stor8.field_8) = 0
    return code.data[356 len 2912]
}



// =====================  Runtime code  =====================


address owner;
address pendingOwner;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address minterAddress;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;

function name() {
    return name[0 len name.length]
}

function minter() {
    return minterAddress
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

function pendingOwner() {
    return pendingOwner
}

function _fallback() payable {
    revert
}

function changeMinter(address arg1) {
    require owner == msg.sender
    minterAddress = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    pendingOwner = arg1
}

function claimOwnership() {
    require pendingOwner == msg.sender
    owner = pendingOwner
    pendingOwner = 0
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
}

function burnTokens(uint256 arg1) {
    require minterAddress == msg.sender
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
    emit Burn(arg1);
}

function mintTokens(address arg1, uint256 arg2) {
    require minterAddress == msg.sender
    if arg2 > 0:
        require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += arg2
        require arg2 + totalSupply >= totalSupply
        totalSupply += arg2
        emit Mint(arg2);
        emit Transfer(arg2, 0, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
}



}
