contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
uint16 stor3; offset 160
address stor3;

function _fallback() payable {
    uint16(stor3.field_160) = 0
    require not msg.value
    address(stor3.field_0) = msg.sender
    stor0 = 3 * 10^16
    stor1[address(msg.sender)] = 3 * 10^16
    return code.data[105 len 2993]
}



// =====================  Runtime code  =====================


const name = 'Deal Token'

const decimals = 8

const initialSupply = 3 * 10^16

const symbol = 'DEAL'


uint256 totalSupply;
mapping of uint256 balances;
mapping of uint256 allowance;
uint8 stor3; offset 160
uint8 stor3; offset 168
address owner;

function mintingFinished() {
    return bool(uint8(stor3.field_168))
}

function totalSupply() {
    return totalSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function paused() {
    return bool(uint8(stor3.field_160))
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
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
    if arg1:
        owner = arg1
}

function finishMinting() {
    require owner == msg.sender
    uint8(stor3.field_168) = 1
    emit MintFinished()
    return 1
}

function unpause() {
    require owner == msg.sender
    require uint8(stor3.field_160)
    uint8(stor3.field_160) = 0
    emit Unpause()
    return 1
}

function pause() {
    require owner == msg.sender
    require not uint8(stor3.field_160)
    uint8(stor3.field_160) = 1
    emit Pause()
    return 1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
}

function burn(address arg1, uint256 arg2) {
    require owner == msg.sender
    require arg2 <= totalSupply
    totalSupply -= arg2
    require arg2 <= balances[address(arg1)]
    balances[address(arg1)] -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require owner == msg.sender
    require not uint8(stor3.field_168)
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg2 + balances[address(arg1)] >= balances[address(arg1)]
    balances[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    require calldata.size >= 68
    require arg2 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2
    require arg2 + balances[arg1] >= balances[arg1]
    balances[address(arg1)] = arg2 + balances[arg1]
    emit Transfer(arg2, msg.sender, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor3.field_160)
    require calldata.size >= 100
    require arg3 + balances[address(arg2)] >= balances[address(arg2)]
    balances[address(arg2)] += arg3
    require arg3 <= balances[arg1]
    balances[address(arg1)] = balances[arg1] - arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
}



}
