contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
mapping of uint256 stor2;

function _fallback() payable {
    stor0 = 5 * 10^18
    require not msg.value
    stor1 = msg.sender
    stor2[stor1] = stor0
    emit Transfer(stor0, 0, stor1);
    return code.data[327 len 4935]
}



// =====================  Runtime code  =====================


const name = 'AQUA'

const decimals = 10

const symbol = 'AQX'


uint256 totalSupply;
uint8 stor1; offset 160
uint128 stor1; offset 160
address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    require arg1
    require arg2
    return allowance[address(arg1)][address(arg2)]
}

function burnTokenStatus() {
    return bool(uint8(stor1.field_160))
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    require arg1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    require balanceOf[address(arg1)] + balanceOf[address(stor1.field_0)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += balanceOf[address(stor1.field_0)]
    balanceOf[address(stor1.field_0)] = 0
    owner = arg1
    emit Transfer(balanceOf[address(arg1)], msg.sender, arg1);
}

function burntokens(uint256 arg1) {
    require msg.sender == owner
    require not uint8(stor1.field_160)
    require arg1 <= balanceOf[address(stor1.field_0)]
    Mask(96, 0, stor1.field_160) = 1
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 <= balanceOf[address(stor1.field_0)]
    balanceOf[address(stor1.field_0)] -= arg1
    emit Transfer(arg1, owner, 0);
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 >= 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require arg3 >= 0
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
