contract main {


// =======================  Init code  ======================


address stor1;
array of uint256 stor2;
array of uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;

function _fallback() payable {
    stor4 = 18
    require not msg.value
    mem[96 len -2789] = code.data[3116 len -2789]
    mem[64] = -2693
    stor1 = msg.sender
    stor2[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor3[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor5 = mem[160]
    stor6 = 0
    stor7 = 0
    return code.data[327 len 2789]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 maxSupply;
uint256 totalSupply;
uint256 freezeMintUntil;
mapping of uint256 allowance;
mapping of uint256 balanceOf;

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
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function maxSupply() {
    return maxSupply
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function freezeMintUntil() {
    return freezeMintUntil
}

function _fallback() payable {
    revert
}

function isOwner(address arg1) {
    return (owner == arg1)
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function freezeMintingFor(uint256 arg1) {
    require owner == msg.sender
    freezeMintUntil = (168 * 24 * 3600 * arg1) + block.timestamp
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(address arg1, uint256 arg2) {
    require owner == msg.sender
    require arg2 <= totalSupply
    totalSupply -= arg2
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    emit Burn(arg2, arg1);
}

function transfer(address arg1, uint256 arg2) {
    if arg2 <= 0:
        return 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require totalSupply < maxSupply
    require freezeMintUntil < block.timestamp
    require owner == msg.sender
    require arg2 + totalSupply >= totalSupply
    require maxSupply >= arg2 + totalSupply
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if arg3 <= 0:
        return 0
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
