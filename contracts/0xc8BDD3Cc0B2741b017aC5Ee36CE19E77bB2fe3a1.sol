contract main {


// =======================  Init code  ======================


uint16 stor0; offset 160
address stor0;
uint256 stor2;
mapping of uint256 stor3;
array of uint256 stor6;
uint8 stor7;
array of uint256 stor8;

function _fallback() payable {
    uint16(stor0.field_160) = 0
    stor7 = 18
    require not msg.value
    mem[96 len -3639] = code.data[4005 len -3639]
    mem[64] = -3543
    address(stor0.field_0) = msg.sender
    stor2 = mem[96] * 10^stor7
    stor3[address(msg.sender)] = mem[96] * 10^stor7
    stor6[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor8[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    return code.data[366 len 3639]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint8 stor0; offset 168
address owner;
mapping of uint8 stor1;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint256 sub_72e1afb6;
array of uint256 name;
uint8 decimals;
array of uint256 symbol;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function sub_54f78fdf(?) {
    return bool(stor1[address(arg1)])
}

function paused() {
    return bool(uint8(stor0.field_160))
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function sub_72e1afb6(?) {
    return sub_72e1afb6[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_cc545017(?) {
    return bool(stor1[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function sub_f9ae63d0(?) {
    return bool(uint8(stor0.field_168))
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function sub_ee3907a8(?) {
    require owner == msg.sender
    stor1[address(arg1)] = 0
    return 1
}

function black(address arg1) {
    require owner == msg.sender
    stor1[address(arg1)] = 1
    return 1
}

function lock() {
    require owner == msg.sender
    uint8(stor0.field_168) = 1
    emit Lock()
    return 1
}

function pause() {
    require owner == msg.sender
    uint8(stor0.field_160) = 1
    emit Pause()
    return 1
}

function unLock() {
    require owner == msg.sender
    uint8(stor0.field_168) = 0
    emit UnLock()
    return 1
}

function unpause() {
    require owner == msg.sender
    uint8(stor0.field_160) = 0
    emit Unpause()
    return 1
}

function sub_f7a3e506(?) {
    require owner == msg.sender
    require arg1
    require arg2 < -1
    sub_72e1afb6[address(arg1)] = arg2
    return 1
}

function approve(address arg1, uint256 arg2) {
    require not uint8(stor0.field_160)
    require arg1
    require arg2 < -1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require owner == msg.sender
    require arg1 < -1
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(msg.sender)] -= arg1
    require totalSupply >= arg1
    totalSupply -= arg1
    emit Burn(arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor0.field_160)
    require arg1
    require not stor1[address(msg.sender)]
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 < -1
    if uint8(stor0.field_168):
        require sub_72e1afb6[address(msg.sender)] >= arg2
        sub_72e1afb6[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor0.field_160)
    require arg2
    require not stor1[address(arg1)]
    require balanceOf[address(arg1)] >= arg3
    require arg3 < -1
    require allowance[address(arg1)][address(msg.sender)] < -1
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    if uint8(stor0.field_168):
        require sub_72e1afb6[address(arg1)] >= arg3
        sub_72e1afb6[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] += arg3
    emit Transfer(arg3, arg1, arg2);
    allowance[address(arg1)][address(msg.sender)] -= arg3
    return 1
}



}
