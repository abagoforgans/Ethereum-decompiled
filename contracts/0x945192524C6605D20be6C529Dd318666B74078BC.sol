contract main {




// =====================  Runtime code  =====================


const name = 'Bitsrent'

const decimals = 18

const symbol = 'BTR'

const INITIAL_SUPPLY = 20000000000 * 10^18


address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
mapping of uint8 stor4;

function totalSupply() {
    return totalSupply
}

function isAccountFreezed(address arg1) {
    return bool(stor4[address(arg1)])
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
    require msg.sender == owner
    require arg1
    owner = arg1
}

function freeze(address arg1, bool arg2) {
    require msg.sender == owner
    stor4[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function approve(address arg1, uint256 arg2) {
    require arg1
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burnToken(uint256 arg1) {
    require msg.sender
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[msg.sender]
    require not stor4[msg.sender]
    require not stor4[address(arg1)]
    require arg1
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    require not stor4[address(arg1)]
    require not stor4[address(arg2)]
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
