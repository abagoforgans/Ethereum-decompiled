contract main {




// =====================  Runtime code  =====================


const decimals = 18


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
uint8 stor3; offset 160
uint8 stor3; offset 168
address _owner;
array of uint256 name;
array of uint256 symbol;

function mintingFinished() {
    return bool(uint8(stor3.field_168))
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function paused() {
    return bool(uint8(stor3.field_160))
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return _owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function _owner() {
    return _owner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == _owner)
}

function approve(address arg1, uint256 arg2) {
    if uint8(stor3.field_160):
        revert with 0, 'must not be paused'
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function renounceOwnership() {
    if _owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only owner is able call this fuction'
    emit OwnershipTransferred(_owner, 0);
    _owner = 0
}

function transferOwnership(address arg1) {
    if _owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only owner is able call this fuction'
    require arg1
    emit OwnershipTransferred(_owner, arg1);
    _owner = arg1
}

function finishMinting() {
    if _owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only owner is able call this fuction'
    require not uint8(stor3.field_168)
    uint8(stor3.field_168) = 1
    emit MintFinished()
    return 1
}

function pause() {
    if _owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only owner is able call this fuction'
    if uint8(stor3.field_160):
        revert with 0, 'must not be paused'
    uint8(stor3.field_160) = 1
    emit Pause()
}

function unpause() {
    if _owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only owner is able call this fuction'
    if not uint8(stor3.field_160):
        revert with 0, 'must be paused'
    uint8(stor3.field_160) = 0
    emit Unpause()
}

function increaseApproval(address arg1, uint256 arg2) {
    if uint8(stor3.field_160):
        revert with 0, 'must not be paused'
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if uint8(stor3.field_160):
        revert with 0, 'must not be paused'
    if arg2 <= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] -= arg2
    else:
        allowance[msg.sender][address(arg1)] = 0
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    if _owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only owner is able call this fuction'
    require not uint8(stor3.field_168)
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if uint8(stor3.field_160):
        revert with 0, 'must not be paused'
    if not arg1:
        revert with 0, 'Receiving address cannot be 0!'
    if arg2 > balanceOf[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Not enough token funds for sender!'
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if uint8(stor3.field_160):
        revert with 0, 'must not be paused'
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
