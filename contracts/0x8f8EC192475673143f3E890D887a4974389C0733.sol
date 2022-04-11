contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
array of uint256 stor2;
uint8 stor3;
array of uint256 stor4;
array of uint256 stor5;
uint256 stor6;
uint8 stor7;

function _fallback() payable {
    stor1 = 0
    stor3 = 18
    mem[128] = 'V0.1'
    bool(stor5.length) = 0
    stor5.length.field_1 = 4
    stor5.length.field_8 = 'V0.1' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor6 = 0
    stor7 = 0
    require not msg.value
    mem[160 len -5535] = code.data[6115 len -5535]
    stor0 = msg.sender
    stor2[] = Array(len=mem[mem[160] + 160], data=mem[mem[160] + 192 len mem[mem[160] + 160]])
    stor4[] = Array(len=mem[mem[192] + 160], data=mem[mem[192] + 192 len mem[mem[192] + 160]])
    return code.data[580 len 5535]
}



// =====================  Runtime code  =====================


address owner;
address stor1;
array of uint256 name;
uint8 decimals;
array of uint256 symbol;
array of uint256 version;
uint256 totalSupply;
uint8 stor7;
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

function transferEnabled() {
    return bool(stor7)
}

function version() {
    return version[0 len version.length]
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

function enableTransfer(bool arg1) {
    require msg.sender == owner
    stor7 = uint8(arg1)
}

function changeOwner(address arg1) {
    require msg.sender == owner
    require arg1 != owner
    stor1 = arg1
}

function acceptOwnership() {
    require msg.sender == stor1
    emit OwnerUpdate(owner, stor1);
    owner = stor1
    stor1 = 0
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function destroy(address arg1, uint256 arg2) {
    require msg.sender == owner
    require balanceOf[address(arg1)] >= arg2
    balanceOf[address(arg1)] -= arg2
    require totalSupply >= arg2
    totalSupply -= arg2
    emit Transfer(arg2, arg1, this.address);
    emit Destroy(arg2, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require stor7
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function generateTokens(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1
    require arg1 != this.address
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, this.address, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require stor7
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
