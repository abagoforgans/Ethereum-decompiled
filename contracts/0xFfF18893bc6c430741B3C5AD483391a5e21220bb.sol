contract main {


// =======================  Init code  ======================


mapping of uint256 stor1;
uint128 stor3; offset 160
address stor3;
uint256 stor4;
uint256 stor5;

function _fallback() payable {
    Mask(96, 0, stor3.field_160) = 0
    stor4 = 4 * 10^14
    stor5 = 1000000 * 10^18
    require not msg.value
    address(stor3.field_0) = msg.sender
    address(stor3.field_0) = msg.sender
    stor1[address(stor3.field_0)] = stor5
    return code.data[323 len 7436]
}



// =====================  Runtime code  =====================


const name = 'VivaCoin'

const decimals = 18

const symbol = 'VVC'


uint256 stor0;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor3; offset 160
uint128 stor3; offset 160
address owner;
uint256 price;
uint256 totalSupply;

function mintingFinished() {
    return bool(uint8(stor3.field_160))
}

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function price() {
    return price
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function setPrice(uint256 arg1) {
    require msg.sender == owner
    price = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function finishMinting() {
    require msg.sender == owner
    require not uint8(stor3.field_160)
    Mask(96, 0, stor3.field_160) = 1
    emit MintFinished()
    return 1
}

function burn(uint256 arg1) {
    require arg1 > 0
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= stor0
    stor0 -= arg1
    emit Burn(arg1, msg.sender);
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require msg.sender == owner
    require not uint8(stor3.field_160)
    require stor0 + arg2 >= stor0
    stor0 += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function buyTo(address arg1) payable {
    require price
    require balanceOf[address(stor3.field_0)] >= 10^18 * msg.value / price
    require 10^18 * msg.value / price <= balanceOf[address(stor3.field_0)]
    balanceOf[address(stor3.field_0)] -= 10^18 * msg.value / price
    require balanceOf[address(arg1)] + (10^18 * msg.value / price) >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += 10^18 * msg.value / price
    emit Payment(msg.value, 10^18 * msg.value / price);
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require price
    require balanceOf[address(stor3.field_0)] >= 10^18 * msg.value / price
    require 10^18 * msg.value / price <= balanceOf[address(stor3.field_0)]
    balanceOf[address(stor3.field_0)] -= 10^18 * msg.value / price
    require balanceOf[address(msg.sender)] + (10^18 * msg.value / price) >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += 10^18 * msg.value / price
    emit Payment(msg.value, 10^18 * msg.value / price);
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
