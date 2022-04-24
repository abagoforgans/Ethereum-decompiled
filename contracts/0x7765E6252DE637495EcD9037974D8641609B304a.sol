contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint8 stor2; offset 152
address stor2;
address stor2;
uint8 stor3; offset 152
address stor3;
address stor3;
uint8 stor4; offset 152
address stor4;
address stor4;
mapping of uint256 stor6;

function _fallback() {
    stor0 = msg.sender
    Mask(152, 0, stor2.field_0) = 0x1ce24d27d59c081aa38065e4bab0ddc53798f1
    uint8(stor2.field_152) = 0
    Mask(152, 0, stor3.field_0) = 0x8bfb8bfd89efda0607723e4ec293e1cf9a4fe6
    uint8(stor3.field_152) = 0
    Mask(152, 0, stor4.field_0) = 0x2e1b8a59f8ff9b16e25bc5f27b96008c636f6b
    uint8(stor4.field_152) = 0
    stor1 = 319 * 10^13
    stor6[address(msg.sender)] = 27 * stor1 / 100
    stor6[address(stor4.field_0)] = 20 * stor1 / 100
    stor6[address(stor3.field_0)] = 2 * stor1 / 100
    stor6[address(stor2.field_0)] = stor1 - (27 * stor1 / 100) - (20 * stor1 / 100) - (2 * stor1 / 100)
    emit Transfer((stor1 - (27 * stor1 / 100) - (20 * stor1 / 100) - (2 * stor1 / 100)), msg.sender, address(stor2.field_0));
    emit Transfer((2 * stor1 / 100), msg.sender, address(stor3.field_0));
    emit Transfer((20 * stor1 / 100), msg.sender, address(stor4.field_0));
    return code.data[1231 len 4311]
}



// =====================  Runtime code  =====================


const name = 'Bitflax'

const decimals = 8

const initialSupply = 319 * 10^13

const symbol = 'BFX'


address owner;
uint256 totalSupply;
address reserveAccount;
address bountyAccount;
address devAccount;
mapping of uint8 stor5;
mapping of uint256 balanceOf;

function bountyAccount() {
    return bountyAccount
}

function totalSupply() {
    return totalSupply
}

function devAccount() {
    return devAccount
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function owner() {
    return owner
}

function frozenAccount(address arg1) {
    return bool(stor5[arg1])
}

function reserveAccount() {
    return reserveAccount
}

function destroyContract() {
    require msg.sender == owner
    selfdestruct(owner)
}

function _fallback() {
    revert
}

function freezeAccount(address arg1, bool arg2) {
    require msg.sender == owner
    stor5[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function burnTokens(uint256 arg1) {
    require msg.sender == owner
    require balanceOf[address(msg.sender)] >= arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function newTokens(address arg1, uint256 arg2) {
    require msg.sender == owner
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    emit Transfer(arg2, 0, this.address);
    emit Transfer(arg2, this.address, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balanceOf[address(arg1)] >= arg3
    require not stor5[address(arg1)]
    require not stor5[address(arg2)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require not stor5[address(msg.sender)]
    require not stor5[address(arg1)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function escrowAmount(address arg1, uint256 arg2) {
    require msg.sender == owner
    require balanceOf[address(msg.sender)] >= arg2
    require not stor5[address(msg.sender)]
    require not stor5[address(arg1)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require msg.sender == owner
    stor5[address(arg1)] = 1
    emit FrozenFunds(address(arg1), 1);
}



}
