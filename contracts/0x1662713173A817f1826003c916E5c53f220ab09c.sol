contract main {


// =======================  Init code  ======================


address stor0;
mapping of uint8 stor1;
array of uint256 stor2;
array of uint256 stor3;
uint8 stor4;
mapping of uint8 stor9;
uint8 stor10;

function _fallback() {
    mem[96 len -3472] = code.data[3892 len -3472]
    mem[64] = -3376
    stor0 = msg.sender
    stor1[stor0] = 1
    stor9[stor0] = 1
    stor2[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor3[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor4 = mem[191 len 1]
    stor10 = 0
    return code.data[420 len 3472]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor8;
mapping of uint8 stor9;
uint8 stor10;

function name() {
    return name[0 len name.length]
}

function transferLocked() {
    return bool(stor10)
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

function returnAgents(address arg1) {
    return bool(stor8[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function minters(address arg1) {
    return bool(stor9[arg1])
}

function managers(address arg1) {
    return bool(stor1[arg1])
}

function _fallback() payable {
    revert
}

function getRealTokenAmount(uint256 arg1) {
    return (arg1 * 10^decimals)
}

function setLockedState(bool arg1) {
    require stor1[address(msg.sender)]
    stor10 = uint8(arg1)
}

function setReturnAgent(address arg1) {
    require stor1[address(msg.sender)]
    stor8[address(arg1)] = 1
}

function removeReturnAgent(address arg1) {
    require stor1[address(msg.sender)]
    stor8[address(arg1)] = 0
}

function setManager(address arg1, bool arg2) {
    require owner == msg.sender
    stor1[address(arg1)] = uint8(arg2)
}

function setMinter(address arg1, bool arg2) {
    require stor1[address(msg.sender)]
    stor9[address(arg1)] = uint8(arg2)
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require owner != arg1
    owner = arg1
    stor1[address(arg1)] = 1
    stor1[msg.sender] = 0
}

function mint(address arg1, uint256 arg2) {
    require stor9[address(msg.sender)]
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    emit Transfer(arg2, 0, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require not stor10
    require balanceOf[address(msg.sender)] >= arg2
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    if stor8[address(arg1)]:
        require ext_code.size(arg1)
        call arg1.returnToken(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args msg.sender, arg2
        require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require not stor10
    require balanceOf[address(arg1)] >= arg3
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    if stor8[address(arg2)]:
        require ext_code.size(arg2)
        call arg2.returnToken(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args address(arg1), arg3
        require ext_call.success
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
