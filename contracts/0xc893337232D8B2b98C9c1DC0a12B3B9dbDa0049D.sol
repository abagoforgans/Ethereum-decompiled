contract main {




// =====================  Runtime code  =====================


const name = 'POWERCHAIN Token'

const decimals = 18

const symbol = 'POWEC'


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
uint8 stor3; offset 160
uint8 stor3; offset 168
address owner;
uint256 cap;

function mintingFinished() {
    return bool(uint8(stor3.field_168))
}

function totalSupply() {
    return totalSupply
}

function cap() {
    return cap
}

function paused() {
    return bool(uint8(stor3.field_160))
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

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function unpause() {
    require msg.sender == owner
    require uint8(stor3.field_160)
    uint8(stor3.field_160) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor3.field_160)
    uint8(stor3.field_160) = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function finishMinting() {
    require msg.sender == owner
    require not uint8(stor3.field_168)
    uint8(stor3.field_168) = 1
    emit MintFinished()
    return 1
}

function approve(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    require arg2 <= balanceOf[msg.sender]
    require arg1
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    if arg2 >= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] = 0
    else:
        require arg2 <= allowance[msg.sender][address(arg1)]
        allowance[msg.sender][address(arg1)] -= arg2
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require arg2 + totalSupply >= totalSupply
    require arg2 + totalSupply <= cap
    require msg.sender == owner
    require not uint8(stor3.field_168)
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor3.field_160)
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
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
