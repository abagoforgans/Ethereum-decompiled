contract main {


// =======================  Init code  ======================


bool stor3; offset 256
uint8 stor3; offset 160
uint8 stor3; offset 168
uint128 stor3; offset 176
address stor3;

function _fallback() payable {
    uint8(stor3.field_160) = 1
    uint8(stor3.field_168) = 1
    Mask(80, 0, stor3.field_176) = 0
    stor3.field_256 % 1 = 0
    require not msg.value
    address(stor3.field_0) = code.data[2514 len 20]
    return code.data[158 len 2344]
}



// =====================  Runtime code  =====================


const name = 'LvovsCoin'

const decimals = 18

const symbol = 'SML'


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor3; offset 160
uint8 stor3; offset 168
address managerAddress;

function totalSupply() {
    return totalSupply
}

function mintingIsAllowed() {
    return bool(uint8(stor3.field_168))
}

function manager() {
    return managerAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function tokensAreFrozen() {
    return bool(uint8(stor3.field_160))
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function endMinting() {
    require managerAddress == msg.sender
    uint8(stor3.field_168) = 0
}

function unfreeze() {
    require managerAddress == msg.sender
    uint8(stor3.field_168) = 0
    revert
}

function approve(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 0
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    require balanceOf[address(msg.sender)] >= arg2
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 0
}

function mint(address arg1, uint256 arg2) {
    require managerAddress == msg.sender
    require arg2
    require arg2 + totalSupply <= 7000000000 * 10^18
    require uint8(stor3.field_168)
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    emit Transfer(arg2, 0, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor3.field_160)
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    balanceOf[address(arg2)] += arg3
    balanceOf[arg1] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 0
}



}
