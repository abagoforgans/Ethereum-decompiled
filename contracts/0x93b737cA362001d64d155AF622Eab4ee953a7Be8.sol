contract main {




// =====================  Runtime code  =====================


const name = 'Ansforce Network Token'

const decimals = 18

const symbol = 'ANT'


address owner;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor4;
mapping of uint256 freezeOf;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function stopped() {
    return bool(stor4)
}

function owner() {
    return owner
}

function freezeOf(address arg1) {
    return freezeOf[arg1]
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function stop() {
    require msg.sender == owner
    stor4 = 1
}

function start() {
    require msg.sender == owner
    stor4 = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
    emit OwnershipTransfered(arg1);
}

function init(uint256 arg1, address arg2) {
    require msg.sender == owner
    require not totalSupply
    require arg1 > 0
    require arg2
    totalSupply = arg1
    balanceOf[address(arg2)] = arg1
}

function approve(address arg1, uint256 arg2, bytes arg3) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, Array(len=arg3.length, data=arg3[all]), msg.sender, arg1);
    return 1
}

function freeze(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 > 0
    require balanceOf[address(arg1)] >= arg2
    balanceOf[address(arg1)] -= arg2
    require arg2 + freezeOf[address(arg1)] >= freezeOf[address(arg1)]
    freezeOf[address(arg1)] += arg2
    emit Freeze(arg2, arg1);
    return 1
}

function unfreeze(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 > 0
    require freezeOf[address(arg1)] >= arg2
    freezeOf[address(arg1)] -= arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Unfreeze(arg2, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not stor4
    require arg2 <= balanceOf[address(msg.sender)]
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + balanceOf[msg.sender] >= balanceOf[msg.sender]
    require balanceOf[address(msg.sender)] >= arg2
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    require balanceOf[address(arg1)] + balanceOf[msg.sender] >= balanceOf[msg.sender]
    require balanceOf[address(arg1)] + balanceOf[msg.sender] == balanceOf[address(arg1)] + balanceOf[msg.sender]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][msg.sender]
    require allowance[address(arg1)][msg.sender] >= arg3
    allowance[address(arg1)][msg.sender] -= arg3
    require arg3 <= balanceOf[address(arg1)]
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    require balanceOf[address(arg2)] + balanceOf[arg1] >= balanceOf[arg1]
    require balanceOf[address(arg1)] >= arg3
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    require balanceOf[address(arg2)] + balanceOf[arg1] >= balanceOf[arg1]
    require balanceOf[address(arg2)] + balanceOf[arg1] == balanceOf[address(arg2)] + balanceOf[arg1]
    return 1
}



}
