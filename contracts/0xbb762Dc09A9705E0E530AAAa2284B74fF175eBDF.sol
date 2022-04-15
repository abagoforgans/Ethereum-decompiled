contract main {


// =======================  Init code  ======================


uint256 stor2;
address stor3;
uint128 stor4; offset 160
address stor4;

function _fallback() payable {
    stor2 = 0
    stor3 = 0
    address(stor4.field_0) = 0
    Mask(96, 0, stor4.field_160) = 0
    require not msg.value
    stor3 = msg.sender
    return code.data[284 len 5418]
}



// =====================  Runtime code  =====================


const name = 'Goldmint MNT Prelaunch Token'

const decimals = 18

const symbol = 'MNTP'

const TOTAL_TOKEN_SUPPLY = 10000000 * 10^18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
address creatorAddress;
uint8 stor4; offset 160
uint128 stor4; offset 160
address icoContractAddress;

function creator() {
    return creatorAddress
}

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function lockTransfers() {
    return bool(uint8(stor4.field_160))
}

function icoContractAddress() {
    return icoContractAddress
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() {
    revert
}

function setCreator(address arg1) {
    require msg.sender == creatorAddress
    creatorAddress = arg1
}

function setIcoContractAddress(address arg1) {
    require msg.sender == creatorAddress
    icoContractAddress = arg1
}

function lockTransfer(bool arg1) {
    require msg.sender == icoContractAddress
    Mask(96, 0, stor4.field_160) = Mask(96, 0, arg1)
}

function burnTokens(address arg1, uint256 arg2) {
    require msg.sender == icoContractAddress
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function issueTokens(address arg1, uint256 arg2) {
    require msg.sender == icoContractAddress
    require totalSupply + arg2 <= 10000000 * 10^18
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + arg2 >= arg2
    balanceOf[address(arg1)] += arg2
    require totalSupply + arg2 >= totalSupply
    require totalSupply + arg2 >= arg2
    totalSupply += arg2
    emit Transfer(arg2, 0, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor4.field_160)
    require calldata.size >= 68
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + arg2 >= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor4.field_160)
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require balanceOf[address(arg2)] + arg3 >= arg3
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
