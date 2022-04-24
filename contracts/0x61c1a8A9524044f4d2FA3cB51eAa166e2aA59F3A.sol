contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor2;
array of uint256 stor3;
array of uint256 stor4;
uint8 stor5;
uint256 stor6;
uint8 stor7;
uint256 stor8;
mapping of uint256 stor9;
uint256 stor11;
mapping of uint8 stor12;
uint8 stor13; offset 160

function _fallback() payable {
    stor13 = 1
    require not msg.value
    mem[96 len -4288] = code.data[5033 len -4288]
    stor0 = msg.sender
    mem[64] = -4128
    bool(stor2.length) = 0
    stor2.length.field_1 = 9
    stor2.length.field_8 = 'ERC20 0.1' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor6 = 0
    stor9[address(this.address)] = stor6
    stor3[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor4[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    stor5 = mem[223 len 1]
    stor7 = uint8(bool(mem[224]))
    stor8 = block.number
    stor12[address(msg.sender)] = 1
    stor11 = mem[96]
    bool(stor2.length) = 0
    stor2.length.field_1 = 8
    stor2.length.field_8 = 'Node 0.1' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    return code.data[745 len 4288]
}



// =====================  Runtime code  =====================


address owner;
address newOwner;
array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 initialSupply;
uint8 stor7;
uint256 creationBlock;
mapping of uint256 balances;
mapping of uint256 allowance;
uint256 maxSupply;
mapping of uint8 stor12;
uint8 stor13; offset 160
address nodePhasesAddress;

function name() {
    return name[0 len name.length]
}

function creationBlock() {
    return creationBlock
}

function totalSupply() {
    return initialSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function decimals() {
    return decimals
}

function initialSupply() {
    return initialSupply
}

function nodePhases() {
    return nodePhasesAddress
}

function standard() {
    return standard[0 len standard.length]
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function transferFrozen() {
    return bool(stor13)
}

function locked() {
    return bool(stor7)
}

function newOwner() {
    return newOwner
}

function maxSupply() {
    return maxSupply
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function minters(address arg1) {
    return bool(stor12[arg1])
}

function _fallback() payable {
    revert
}

function acceptOwnership() {
    if newOwner == msg.sender:
        owner = newOwner
}

function setLocked(bool arg1) {
    require owner == msg.sender
    stor7 = uint8(arg1)
}

function addMinter(address arg1) {
    require owner == msg.sender
    stor12[address(arg1)] = 1
}

function removeMinter(address arg1) {
    require owner == msg.sender
    stor12[address(arg1)] = 0
}

function setNodePhases(address arg1) {
    require owner == msg.sender
    nodePhasesAddress = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    newOwner = arg1
}

function approve(address arg1, uint256 arg2) {
    if stor7:
        return 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function unfreeze() {
    require owner == msg.sender
    if nodePhasesAddress:
        require ext_code.size(nodePhasesAddress)
        call nodePhasesAddress.isFinished(uint8 rg1) with:
             gas gas_remaining - 710 wei
            args 1
        require ext_call.success
        if ext_call.return_data[0]:
            stor13 = 0
}

function buyBack(address arg1) {
    require 1 == bool(stor12[address(msg.sender)])
    require arg1
    balances[address(arg1)] = 0
    require balances[address(arg1)] + balances[address(this.address)] >= balances[address(this.address)]
    balances[address(this.address)] += balances[address(arg1)]
    emit Transfer(balances[address(arg1)], arg1, this.address);
    return balances[address(arg1)]
}

function mint(address arg1, uint256 arg2) {
    require 1 == bool(stor12[address(msg.sender)])
    if not arg2:
        return 0
    require arg2 + initialSupply >= initialSupply
    if arg2 + initialSupply > maxSupply:
        return 0
    require arg2 + initialSupply >= initialSupply
    initialSupply += arg2
    require arg2 + balances[address(arg1)] >= balances[address(arg1)]
    balances[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    return arg2
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    if stor7:
        return 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not stor13
    require calldata.size == 68
    require not stor7
    if not arg2:
        emit Transfer(0, msg.sender, arg1);
    else:
        require balances[address(msg.sender)] >= arg2
        require arg2 <= balances[address(msg.sender)]
        balances[address(msg.sender)] -= arg2
        require arg2 + balances[address(arg1)] >= balances[address(arg1)]
        balances[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor13
    if stor7:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if not arg3:
        emit Transfer(0, arg1, arg2);
    else:
        if balances[address(arg1)] < arg3:
            return 0
        require arg3 <= balances[address(arg1)]
        balances[address(arg1)] -= arg3
        require arg3 + balances[address(arg2)] >= balances[address(arg2)]
        balances[address(arg2)] += arg3
        emit Transfer(arg3, arg1, arg2);
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    return 1
}



}
