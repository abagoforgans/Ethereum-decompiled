contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
uint8 stor3; offset 160
address stor3;
uint256 stor4;

function _fallback() payable {
    uint8(stor3.field_160) = 0
    require not msg.value
    address(stor3.field_0) = msg.sender
    stor0 = 120000
    stor1[address(msg.sender)] = 120000
    stor4 = 120000
    emit code.data[2748 len 32]: 120000, 0, this.address
    emit code.data[2748 len 32]: stor0, this.address, msg.sender
    return code.data[209 len 2539]
}



// =====================  Runtime code  =====================


const name = 'Belorussian Rubble'

const decimals = 2

const symbol = 'BYN'


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor3; offset 160
address owner;
uint256 initialSupply;

function totalSupply() {
    return totalSupply
}

function initialSupply() {
    return initialSupply
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

function finishMinting() {
    require owner == msg.sender
    return 0
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
}

function burn(uint256 arg1) {
    require arg1 > 0
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(msg.sender, arg1);
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require owner == msg.sender
    require not stor3
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
