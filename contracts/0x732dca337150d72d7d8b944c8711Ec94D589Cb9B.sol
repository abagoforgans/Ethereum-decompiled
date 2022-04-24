contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
address stor2;
mapping of uint256 stor3;

function _fallback() payable {
    stor0 = 5 * 10^16
    stor1 = 10^16
    stor2 = 0x5da0f00dea374799b903cc0703aad489d7277d0b
    require not msg.value
    require stor1 <= stor0
    stor3[address(msg.sender)] = stor0 - stor1
    stor3[stor2] = stor1
    return code.data[374 len 3740]
}



// =====================  Runtime code  =====================


const name = 'Dinero'

const decimals = 8

const symbol = 'DIN'


uint256 _totalsupply;
uint256 sub_451bca8e;
address reserveAddress;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function totalSupply() {
    return _totalsupply
}

function sub_451bca8e(?) {
    return sub_451bca8e
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function _totalsupply() {
    return _totalsupply
}

function reserve() {
    return reserveAddress
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
    return 1
}

function burn(uint256 arg1) {
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= _totalsupply
    _totalsupply -= arg1
    emit Burn(arg1, msg.sender);
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 > 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require balanceOf[address(arg1)] >= arg3
    require arg3 > 0
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
