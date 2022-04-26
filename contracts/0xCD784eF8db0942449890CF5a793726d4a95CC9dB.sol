contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor2;
array of uint256 stor3;
uint8 stor4;
uint256 stor5;
mapping of uint256 stor7;

function _fallback() payable {
    bool(stor2.length) = 0
    stor2.length.field_1 = 14
    stor2.length.field_8 = 'monnaiev4erc20' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor3.length) = 0
    stor3.length.field_1 = 3
    stor3.length.field_8 = 'mv4' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor4 = 18
    require not msg.value
    stor0 = msg.sender
    stor5 = 1
    stor7[address(msg.sender)] = 1
    return code.data[396 len 3111]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 stor1;
array of uint256 sub_09523bca;
array of uint256 sub_fe3d321b;
uint8 decimals;
uint256 sub_267408b6;
uint256 sub_b865d47f;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor9;

function sub_09523bca(?) {
    return sub_09523bca[0 len sub_09523bca.length]
}

function sub_267408b6(?) {
    return sub_267408b6
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

function frozenAccount(address arg1) {
    return bool(stor9[arg1])
}

function sub_b865d47f(?) {
    return sub_b865d47f
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function sub_fe3d321b(?) {
    return sub_fe3d321b[0 len sub_fe3d321b.length]
}

function sub_27793f0b(?) {
    require owner == msg.sender
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function sub_0a7aa482(?) {
    require owner == msg.sender
    owner = arg1
}

function sub_7ee997da(?) {
    require owner == msg.sender
    sub_b865d47f = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function sub_744a1286(?) {
    require owner == msg.sender
    stor1[].field_0 = Array(len=arg1.length, data=arg1[all])
}

function sub_1983b03b(?) {
    require owner == msg.sender
    sub_267408b6 += arg1
    balanceOf[address(msg.sender)] += arg1
}

function sub_898f8fcb(?) {
    require owner == msg.sender
    balanceOf[address(msg.sender)] -= arg1
    sub_b865d47f -= arg1
}

function freezeAccount(address arg1, bool arg2) {
    require owner == msg.sender
    stor9[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function burn(uint256 arg1) {
    require owner == msg.sender
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(msg.sender)] -= arg1
    sub_267408b6 -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function sub_a8d2bcb2(?) {
    bool(stor1.length) = 0
    stor1.length.field_1 = 4
    stor1.length.field_8 = 'CMOI' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
}

function burnFrom(address arg1, uint256 arg2) {
    require owner == msg.sender
    require balanceOf[address(arg1)] >= arg2
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg2
    allowance[address(arg1)][address(msg.sender)] -= arg2
    sub_267408b6 -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    balanceOf[msg.sender] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require balanceOf[address(arg1)] + balanceOf[msg.sender] == balanceOf[msg.sender] + balanceOf[address(arg1)]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    balanceOf[arg1] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    require balanceOf[address(arg2)] + balanceOf[arg1] == balanceOf[arg1] + balanceOf[address(arg2)]
    return 1
}



}
