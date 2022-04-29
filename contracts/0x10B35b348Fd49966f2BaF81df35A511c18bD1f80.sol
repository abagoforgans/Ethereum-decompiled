contract main {


// =======================  Init code  ======================


uint128 stor0; offset 160
address stor0;
uint8 stor4;

function _fallback() payable {
    Mask(96, 0, stor0.field_160) = 0
    stor4 = 0
    require not msg.value
    address(stor0.field_0) = msg.sender
    return code.data[147 len 5013]
}



// =====================  Runtime code  =====================


const name = 'Denaro'

const decimals = 7

const symbol = 'DNO'

const MINTING_LIMIT = 10^15


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
uint256 totalSupply;
mapping of uint256 balances;
mapping of uint256 allowed;
uint8 stor4;

function mintingFinished() {
    return bool(stor4)
}

function totalSupply() {
    return totalSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function allowed(address arg1, address arg2) {
    return allowed[arg1][arg2]
}

function paused() {
    return bool(uint8(stor0.field_160))
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowed[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function finishMinting() {
    require msg.sender == owner
    require not stor4
    stor4 = 1
    emit MintFinished()
}

function unpause() {
    require msg.sender == owner
    require uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 1
    emit Pause()
}

function approve(address arg1, uint256 arg2) {
    require not uint8(stor0.field_160)
    if arg2:
        require not allowed[address(msg.sender)][address(arg1)]
    allowed[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require msg.sender == owner
    require not stor4
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require totalSupply <= 10^15
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    balances[address(arg1)] += arg2
    emit Mint(arg2, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor0.field_160)
    require arg2 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    balances[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor0.field_160)
    require balances[address(arg2)] + arg3 >= balances[address(arg2)]
    balances[address(arg2)] += arg3
    require arg3 <= balances[address(arg1)]
    balances[address(arg1)] -= arg3
    require arg3 <= allowed[address(arg1)][address(msg.sender)]
    allowed[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
