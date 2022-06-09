contract main {




// =====================  Runtime code  =====================


const name = 'Test Coin'

const symbol = 'TST'


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor3; offset 160
uint8 decimals; offset 168
uint8 stor3; offset 176
address owner;
mapping of uint8 stor4;

function mintingFinished() {
    return bool(uint8(stor3.field_160))
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function tradingStarted() {
    return bool(uint8(stor3.field_176))
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function transferable(address arg1) {
    return bool(stor4[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function startTrading() {
    require msg.sender == owner
    uint8(stor3.field_176) = 1
}

function modifyTransferableHash(address arg1, bool arg2) {
    require msg.sender == owner
    stor4[address(arg1)] = uint8(arg2)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function finishMinting() {
    require msg.sender == owner
    require not uint8(stor3.field_160)
    uint8(stor3.field_160) = 1
    emit MintFinished()
    return 1
}

function approve(address arg1, uint256 arg2) {
    if not uint8(stor3.field_176):
        require stor4[address(arg1)]
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require arg1 <= balanceOf[msg.sender]
    require arg1 <= balanceOf[msg.sender]
    balanceOf[address(msg.sender)] = balanceOf[msg.sender] - arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
}

function mint(address arg1, uint256 arg2) {
    require msg.sender == owner
    require not uint8(stor3.field_160)
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    if not uint8(stor3.field_176):
        require stor4[address(arg1)]
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if not uint8(stor3.field_176):
        require stor4[address(arg1)]
    if arg2 <= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] -= arg2
    else:
        allowance[msg.sender][address(arg1)] = 0
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if not uint8(stor3.field_176):
        require stor4[address(msg.sender)]
    require arg1
    require arg2 <= balanceOf[msg.sender]
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if not uint8(stor3.field_176):
        require stor4[address(arg1)]
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
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
