contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
address stor3;
address stor4;
address stor5;
uint8 stor8;
array of uint256 stor9;
array of uint256 stor10;
array of uint256 stor11;

function _fallback() payable {
    bool(stor11.length) = 0
    stor11.length.field_1 = 4
    stor11.length.field_8 = 'H1.0' / 256
    idx = 0
    while stor11.length + 31 / 32 > idx:
        stor11[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor3 = msg.sender
    stor8 = 18
    bool(stor9.length) = 0
    stor9.length.field_1 = 9
    stor9.length.field_8 = 'Alfa NTOK' / 256
    idx = 0
    while stor9.length + 31 / 32 > idx:
        stor9[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor10.length) = 0
    stor10.length.field_1 = 6
    stor10.length.field_208 = 229455646969675
    idx = 0
    while stor10.length + 31 / 32 > idx:
        stor10[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor1[address(this.address)] = 50000 * 10^stor8
    stor0 = 50000 * 10^stor8
    stor5 = this.address
    stor4 = this.address
    return code.data[516 len 2469]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
address stor4;
uint256 payments;
mapping of uint256 payers;
uint8 decimals;
array of uint256 name;
array of uint256 symbol;
array of uint256 version;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function payers(address arg1) {
    return payers[arg1]
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

function payments() {
    return payments
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function changeOwner(address arg1) payable {
    require owner == msg.sender
    require arg1
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function _fallback() payable {
    require msg.value + payers[address(msg.sender)] >= payers[address(msg.sender)]
    payers[address(msg.sender)] += msg.value
    require msg.value + payments >= payments
    payments += msg.value
}

function withdrawTo(address arg1, uint256 arg2) {
    require owner == msg.sender
    require ext_code.size(stor4)
    call stor4.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
}

function withdrawPayments(uint256 arg1) {
    require owner == msg.sender
    require arg1
    require gas_remaining + arg1 >= arg1
    require eth.balance(this.address) >= gas_remaining + arg1
    require arg1 <= payments
    payments -= arg1
    call stor4 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    balanceOf[address(arg2)] += arg3
    balanceOf[arg1] -= arg3
    if allowance[address(arg1)][address(msg.sender)] < -1:
        allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
