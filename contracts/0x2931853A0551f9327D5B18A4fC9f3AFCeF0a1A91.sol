contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
uint128 stor3; offset 168
uint128 stor3; offset 160
address stor3;
uint256 stor4;

function _fallback() payable {
    Mask(96, 0, stor3.field_160) = 0
    Mask(88, 0, stor3.field_168) = 0
    stor4 = 4560000000 * 10^18
    require not msg.value
    address(stor3.field_0) = msg.sender
    stor0 = 44396844 * 10^18
    stor1[address(msg.sender)] = 44396844 * 10^18
    return code.data[267 len 5396]
}



// =====================  Runtime code  =====================


const name = 'Sym Token'

const decimals = 18

const symbol = 'SYM'

const INITIAL_SUPPLY = 44396844 * 10^18


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor3; offset 160
uint8 stor3; offset 168
uint128 stor3; offset 168
uint128 stor3; offset 160
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

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function finishMinting() {
    require msg.sender == owner
    Mask(88, 0, stor3.field_168) = 1
    emit MintFinished()
    return 1
}

function unpause() {
    require msg.sender == owner
    require uint8(stor3.field_160)
    Mask(96, 0, stor3.field_160) = 0
    emit Unpause()
    return 1
}

function pause() {
    require msg.sender == owner
    require not uint8(stor3.field_160)
    Mask(96, 0, stor3.field_160) = 1
    emit Pause()
    return 1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require not uint8(stor3.field_160)
    require arg1 > 0
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require totalSupply + arg2 >= totalSupply
    require totalSupply + arg2 <= cap
    require msg.sender == owner
    require not uint8(stor3.field_168)
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor3.field_160)
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
