contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
uint256 stor3;
uint8 stor4;
address stor4; offset 8
address stor5;
address stor6;
uint8 stor12;

function _fallback() payable {
    stor0 = 18
    bool(stor1.length) = 0
    stor1.length.field_1 = 11
    stor1.length.field_8 = 'Agile Token' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 5
    stor2.length.field_8 = 'AGILE' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    uint8(stor4.field_0) = 0
    require not msg.value
    stor3 = 250000000 * 10^18
    address(stor4.field_8) = msg.sender
    stor6 = msg.sender
    stor5 = msg.sender
    stor12 = 0
    return code.data[641 len 9347]
}



// =====================  Runtime code  =====================


uint256 decimals;
array of uint256 name;
array of uint256 symbol;
uint256 stor3;
uint8 stor4;
address adminAddress; offset 8
address sub_270fff79Address;
address controllerAddress;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor10;
mapping of uint8 stor11;
uint8 stor12;

function name() {
    return name[0 len name.length].field_0
}

function totalSupply() {
    return totalSupply
}

function sub_270fff79(?) {
    return sub_270fff79Address
}

function decimals() {
    return decimals
}

function Controller() {
    return controllerAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length].field_0
}

function transfersEnabled() {
    return bool(stor4)
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function Admin() {
    return adminAddress
}

function kill() {
    require msg.sender == adminAddress
    bool(name.length) = 0
    name.length.field_1 = 1
    name.length.field_8 = '-' / 256
    idx = 0
    while name.length + 31 / 32 > idx:
        name[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(symbol.length) = 0
    symbol.length.field_1 = 1
    symbol.length.field_8 = '-' / 256
    idx = 0
    while symbol.length + 31 / 32 > idx:
        symbol[idx].field_0 = 0
        idx = idx + 1
        continue 
    selfdestruct(adminAddress)
}

function sub_e78727cf(?) {
    require msg.sender == adminAddress
    controllerAddress = arg1
}

function sub_489f530c(?) {
    require msg.sender == adminAddress
    sub_270fff79Address = arg1
}

function changeAdmin(address arg1) {
    require msg.sender == adminAddress
    adminAddress = arg1
}

function sub_830b390c(?) {
    require msg.sender == sub_270fff79Address
    stor11[address(arg1)] = 1
}

function sub_d5eee644(?) {
    require msg.sender == sub_270fff79Address
    stor11[address(arg1)] = 0
}

function enableTransfers(bool arg1) {
    require msg.sender == controllerAddress
    stor4 = uint8(arg1)
}

function changeController(address arg1) {
    require msg.sender == controllerAddress
    controllerAddress = arg1
}

function freezeAccount(address arg1) {
    require msg.sender == sub_270fff79Address
    stor10[address(arg1)] = 1
}

function unfreezeAccount(address arg1) {
    require msg.sender == sub_270fff79Address
    stor10[address(arg1)] = 0
}

function sub_14739716(?) {
    require msg.sender == sub_270fff79Address
    require balanceOf[address(arg1)] >= arg3
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    require stor4
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function destroyTokens(address arg1, uint256 arg2) {
    require msg.sender == controllerAddress
    require totalSupply >= arg2
    require balanceOf[address(arg1)] >= arg2
    balanceOf[address(arg1)] -= arg2
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
    return 1
}

function generateTokens(address arg1, uint256 arg2) {
    require msg.sender == controllerAddress
    require totalSupply + arg2 > totalSupply
    require arg2
    require totalSupply + arg2 <= stor3
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    emit Transfer(arg2, 0, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require stor4
    require balanceOf[address(msg.sender)] >= arg2
    require not stor10[address(msg.sender)]
    if stor11[address(msg.sender)]:
        require not stor12
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function _fallback() payable {
    require controllerAddress
    require ext_code.size(controllerAddress) > 0
    require ext_code.size(controllerAddress)
    call controllerAddress.proxyPayment(address arg1) with:
       value msg.value wei
         gas gas_remaining - 9710 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require stor4
    require balanceOf[address(arg1)] >= arg3
    require not stor10[address(arg1)]
    if stor11[address(arg1)]:
        require not stor12
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_7221be48(?) {
    require msg.sender == adminAddress
    require arg1 > 0
    if arg1 == 1:
        require arg2 > 0
        stor3 += 1000000 * 10^18 * arg2
    if arg1 == 2:
        name[].field_0 = Array(len=arg3.length, data=arg3[all])
    if arg1 == 3:
        symbol[].field_0 = Array(len=arg3.length, data=arg3[all])
    if arg1 == 4:
        stor12 = 0
    if arg1 == 5:
        stor12 = 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    require stor4
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.0x8f4ffcb1 with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}



}
