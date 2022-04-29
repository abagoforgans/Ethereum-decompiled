contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;
uint256 stor1; offset 1
uint256 stor1;
uint256 stor2;
uint256 stor3;
mapping of uint256 stor4;

function _fallback() payable {
    uint8(stor0.field_160) = 18
    require not msg.value
    address(stor0.field_0) = msg.sender
    require msg.sender
    require code.data[1862 len 20]
    uint256(stor1.field_0) = 100 * 10^6 * 10^uint8(stor0.field_160)
    stor3 = 100 * 10^6 * 10^uint8(stor0.field_160) / 10
    stor2 = uint255(stor1.field_1)
    stor4[code.data[1862 len 20]] = uint255(stor1.field_1)
    return code.data[253 len 1597]
}



// =====================  Runtime code  =====================


const name = 'BAIT20'

const symbol = 'BAIT20'

const INITIAL_SUPPLY = 100 * 10^6


uint8 decimals; offset 160
address owner;
uint256 totalSupply;
uint256 currentSupply;
uint256 delta;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function delta() {
    return delta
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

function currentSupply() {
    return currentSupply
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function destroy() {
    if owner != msg.sender:
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function unfreezeSupply() {
    require owner == msg.sender
    currentSupply += delta
    require delta + currentSupply <= totalSupply
    balanceOf[address(msg.sender)] += delta
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
