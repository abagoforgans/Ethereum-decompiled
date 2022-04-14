contract main {


// =======================  Init code  ======================


uint256 stor1;
mapping of uint256 stor2;
address stor4;

function _fallback() payable {
    stor1 = 0
    stor2[address(msg.sender)] = 0
    stor4 = msg.sender
    return code.data[80 len 2322]
}



// =====================  Runtime code  =====================


const name = 'CombiCoin'

const decimals = 10

const symbol = 'COMBI'


uint8 stor0;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;

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
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require not stor0
    require balanceOf[address(msg.sender)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not stor0
    require arg2 > 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require owner == msg.sender
    require arg1 > 0
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(msg.sender, arg1);
    return 0
}

function mint(address arg1, uint256 arg2) {
    require owner == msg.sender
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor0
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg3 > 0
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
