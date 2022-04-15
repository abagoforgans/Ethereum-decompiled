contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
uint8 stor3;
uint256 stor4;
mapping of uint256 stor5;
array of uint256 stor7;
uint256 stor8;

function _fallback() payable {
    bool(stor7.length) = 0
    stor7.length.field_1 = 9
    stor7.length.field_8 = 'Token 0.1' / 256
    idx = 0
    while stor7.length + 31 / 32 > idx:
        stor7[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor8 = 3 * 10^15
    require not msg.value
    stor0 = msg.sender
    stor5[address(msg.sender)] = stor8
    stor4 = stor8
    bool(stor1.length) = 0
    stor1.length.field_1 = 4
    stor1.length.field_8 = 'TBOT' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor3 = 8
    bool(stor2.length) = 0
    stor2.length.field_1 = 3
    stor2.length.field_8 = 'TBT' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    return code.data[532 len 4367]
}



// =====================  Runtime code  =====================


const decimals = 8

const tokenName = 'TBOT'

const symbol = 'TBT'


address owner;
array of uint256 name;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 stor6;
array of uint256 standard;
uint256 currentSupply;
mapping of uint8 stor9;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function standard() {
    return standard[0 len standard.length]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function currentSupply() {
    return currentSupply
}

function owner() {
    return owner
}

function frozenAccount(address arg1) {
    return bool(stor9[arg1])
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    stor6[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function _fallback() payable {
    require msg.value > 0
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function acceptPayment() payable {
    require msg.value > 0
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function freezeAccount(address arg1, bool arg2) {
    require owner == msg.sender
    require arg2
    stor9[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function burn(uint256 arg1) {
    require owner == msg.sender
    require balanceOf[address(msg.sender)] > arg1
    require arg1 > 0
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= currentSupply
    currentSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function mintToken(address arg1, uint256 arg2) {
    require owner == msg.sender
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require arg2 + currentSupply >= currentSupply
    currentSupply += arg2
    emit Transfer(arg2, 0, this.address);
    emit Transfer(arg2, this.address, arg1);
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    stor6[address(msg.sender)][address(arg1)] = arg2
    require ext_code.size(arg1)
    call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 > 0
    require not stor9[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require owner == msg.sender
    require balanceOf[address(arg1)] >= arg2
    require arg2 <= stor6[address(arg1)][address(msg.sender)]
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 <= stor6[address(arg1)][address(msg.sender)]
    stor6[address(arg1)][address(msg.sender)] -= arg2
    require arg2 <= currentSupply
    currentSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require stor6[address(arg1)][address(msg.sender)] >= arg3
    require balanceOf[address(arg1)] >= arg3
    require arg3 > 0
    require not stor9[address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= stor6[address(arg1)][address(msg.sender)]
    stor6[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
