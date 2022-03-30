contract main {


// =======================  Init code  ======================


uint256 stor2;
address stor3;
uint8 stor4; offset 160
address stor4;

function _fallback() payable {
    stor3 = 0
    address(stor4.field_0) = 0
    uint8(stor4.field_160) = 1
    require not msg.value
    stor2 = 0
    address(stor4.field_0) = code.data[2303 len 20]
    return code.data[132 len 2159]
}



// =====================  Runtime code  =====================


const name = 'HumaniQ'

const decimals = 8

const symbol = 'HMQ'


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
address emissionContractAddress;
uint8 stor4; offset 160
uint128 stor4; offset 160
address founderAddress;

function totalSupply() {
    return totalSupply
}

function emissionContractAddress() {
    return emissionContractAddress
}

function founder() {
    return founderAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert 
}

function lock(bool arg1) {
    require founderAddress == msg.sender
    Mask(96, 0, stor4.field_160) = Mask(96, 0, arg1)
}

function changeEmissionContractAddress(address arg1) {
    require founderAddress == msg.sender
    emissionContractAddress = arg1
    return 0
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function issueTokens(address arg1, uint256 arg2) payable {
    require emissionContractAddress == msg.sender
    if not arg2:
        return 0
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    emit Issuance(arg2, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require bool(uint8(stor4.field_160)) != 1
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
    require bool(uint8(stor4.field_160)) != 1
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
