contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
uint8 stor3;
address stor3; offset 8
uint256 stor4;
mapping of uint256 stor5;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 3
    stor0.length.field_8 = '0.1' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    stor5[address(msg.sender)] = 7431 * 10^13
    stor4 = 7431 * 10^13
    bool(stor1.length) = 0
    stor1.length.field_1 = 8
    stor1.length.field_8 = 'CarbCoin' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 4
    stor2.length.field_8 = 'CARB' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    uint8(stor3.field_0) = 8
    address(stor3.field_8) = msg.sender
    return code.data[631 len 5359]
}



// =====================  Runtime code  =====================


array of uint256 version;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address owner; offset 8
uint256 _totalSupply;
mapping of uint256 balances;
mapping of uint256 allowances;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return _totalSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function decimals() {
    return decimals
}

function _totalSupply() {
    return _totalSupply
}

function version() {
    return version[0 len version.length]
}

function allowances(address arg1, address arg2) {
    return allowances[arg1][arg2]
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

function allowance(address arg1, address arg2) {
    return allowances[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    allowances[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    if balances[address(msg.sender)] < arg1:
        return 0
    balances[address(msg.sender)] -= arg1
    _totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    if balances[address(arg1)] < arg2:
        return 0
    if arg2 > allowances[address(arg1)][address(msg.sender)]:
        return 0
    balances[address(arg1)] -= arg2
    _totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if not arg1:
        return 0
    if balances[address(msg.sender)] < arg2:
        return 0
    if balances[address(arg1)] + arg2 < balances[address(arg1)]:
        return 0
    balances[address(msg.sender)] -= arg2
    balances[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowances[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if not arg2:
        return 0
    if balances[address(arg1)] < arg3:
        return 0
    if balances[address(arg2)] + arg3 < balances[address(arg2)]:
        return 0
    if arg3 > allowances[address(arg1)][address(msg.sender)]:
        return 0
    balances[address(arg1)] -= arg3
    balances[address(arg2)] += arg3
    allowances[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
