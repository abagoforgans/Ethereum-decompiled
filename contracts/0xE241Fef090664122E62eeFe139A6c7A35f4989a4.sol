contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
uint256 stor3;
uint8 stor4; offset 160
address stor4;
mapping of uint256 stor5;

function _fallback() {
    stor3 = 100000000 * 10^18
    stor5[address(msg.sender)] = 100000000 * 10^18
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'StoneCoin' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 3
    stor1.length.field_8 = 'STO' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 18
    address(stor4.field_0) = msg.sender
    uint8(stor4.field_160) = 0
    return code.data[431 len 3070]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint8 stor4; offset 160
address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint256 freezeOf;

function name() {
    return name[0 len name.length]
}

function isContractFrozen() {
    return bool(stor4)
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function freezeOf(address arg1) {
    return freezeOf[arg1]
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function _fallback() payable {
  stop
}

function approve(address arg1, uint256 arg2) {
    require not stor4
    require arg2 > 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function freeze() {
    require not stor4
    require owner == msg.sender
    stor4 = 1
    emit Freeze(Array(len=18, data='contract is frozen'), msg.sender);
    return 1
}

function unfreeze() {
    require stor4
    require owner == msg.sender
    stor4 = 0
    emit Unfreeze(Array(len=20, data='contract is unfrozen'), msg.sender);
    return 1
}

function withdrawEther(uint256 arg1) {
    require owner == msg.sender
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function burn(uint256 arg1) {
    require not stor4
    require owner == msg.sender
    require balanceOf[address(msg.sender)] >= arg1
    require arg1 > 0
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function mint(uint256 arg1) {
    require not stor4
    require owner == msg.sender
    require arg1 > 0
    require arg1 + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    require arg1 + balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(msg.sender)] += arg1
    require arg1 + totalSupply >= totalSupply
    require arg1 + totalSupply >= arg1
    totalSupply += arg1
    emit Mint(arg1, msg.sender);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not stor4
    require arg1
    require arg2 > 0
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    require arg2 + balanceOf[arg1] >= arg2
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor4
    require arg2
    require arg3 > 0
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    require arg3 + balanceOf[arg2] >= arg3
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
