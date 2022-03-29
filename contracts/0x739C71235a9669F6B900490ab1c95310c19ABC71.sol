contract main {


// =======================  Init code  ======================


uint256 stor2;
address stor3;
bool stor4; offset 256
uint8 stor4; offset 160
uint8 stor4; offset 168
address stor4;

function _fallback() payable {
    stor3 = 0
    address(stor4.field_0) = 0
    uint8(stor4.field_160) = 1
    uint8(stor4.field_168) = 1
    stor4.field_256 % 1 = 0
    require not msg.value
    stor2 = 0
    address(stor4.field_0) = code.data[2720 len 20]
    return code.data[168 len 2540]
}



// =====================  Runtime code  =====================


const name = 'TheToken Fund'

const decimals = 8

const symbol = 'TKN'


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
address emissionContractAddress;
uint8 stor4; offset 160
uint8 stor4; offset 168
uint128 stor4; offset 168
uint128 stor4; offset 160
address owner;

function totalSupply() {
    return totalSupply
}

function emissionContractAddress() {
    return emissionContractAddress
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

function emissionEnabled() {
    return bool(uint8(stor4.field_160))
}

function _fallback() payable {
    revert 
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function enableEmission(bool arg1) {
    require owner == msg.sender
    Mask(96, 0, stor4.field_160) = Mask(96, 0, arg1)
}

function enableTransfers(bool arg1) {
    require owner == msg.sender
    Mask(88, 0, stor4.field_168) = Mask(88, 0, arg1)
}

function changeEmissionContractAddress(address arg1) {
    require owner == msg.sender
    emissionContractAddress = arg1
    return 0
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function withdrawTokens(uint256 arg1) {
    if balanceOf[address(msg.sender)] < arg1:
        return 0
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    return 1
}

function issueTokens(address arg1, uint256 arg2) {
    require emissionContractAddress == msg.sender
    require uint8(stor4.field_160)
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if bool(uint8(stor4.field_168)) != 1:
        return 0
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if bool(uint8(stor4.field_168)) != 1:
        return 0
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[arg1] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
