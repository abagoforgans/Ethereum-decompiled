contract main {


// =======================  Init code  ======================


uint128 stor1; offset 160

function _fallback() payable {
    stor1 = 0
    require not msg.value
    return code.data[57 len 2616]
}



// =====================  Runtime code  =====================


const name = 'Evocoin'

const decimals = 5

const symbol = 'EVC'


uint256 totalSupply;
uint8 stor1; offset 160
uint128 stor1; offset 160
address stor1;
mapping of uint256 allowance;
mapping of uint256 balanceOf;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
}

function transfer(address arg1, uint256 arg2) {
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function init(uint256 arg1) {
    if not uint8(stor1.field_160):
        address(stor1.field_0) = msg.sender
        totalSupply = arg1
        balanceOf[address(stor1.field_0)] = totalSupply
        Mask(96, 0, stor1.field_160) = 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
}



}
