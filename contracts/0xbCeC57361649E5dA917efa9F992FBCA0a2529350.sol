contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor3;
uint128 stor4; offset 168
uint128 stor4; offset 160

function _fallback() payable {
    Mask(96, 0, stor4.field_160) = 0
    Mask(88, 0, stor4.field_168) = 0
    require not msg.value
    stor3 = msg.sender
    stor0 = 80000000 * 10^18
    return code.data[169 len 5936]
}



// =====================  Runtime code  =====================


const name = 'CryptoAlias'

const decimals = 18

const icoEndTime = (421983 * 3600)

const symbol = 'ALS'

const isToken = 1


uint8 stor0;
uint256 stor0; offset 3
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
uint8 stor4; offset 160
uint8 stor4; offset 168
uint128 stor4; offset 168
uint128 stor4; offset 160
address icoAddress;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function icoAddress() {
    return icoAddress
}

function getOwner() {
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
    owner = arg1
}

function setIcoAddress(address arg1) {
    require msg.sender == owner
    require not icoAddress
    icoAddress = arg1
    balanceOf[address(stor4.field_0)] = 80000000 * 10^18
    emit IcoAddressSet(icoAddress);
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burnIcoTokens() {
    require block.timestamp >= 421983 * 3600
    require not uint8(stor4.field_160)
    Mask(96, 0, stor4.field_160) = 1
    if balanceOf[address(stor4.field_0)] > 0:
        balanceOf[address(stor4.field_0)] = 0
        require balanceOf[address(stor4.field_0)] <= totalSupply
        totalSupply -= balanceOf[address(stor4.field_0)]
    emit Burned(icoAddress, balanceOf[address(stor4.field_0)]);
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + arg2 >= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require balanceOf[address(arg2)] + arg3 >= arg3
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function allocateTeamAndPartnerTokens(address arg1, address arg2) {
    require msg.sender == owner
    require uint8(stor4.field_160)
    require not uint8(stor4.field_168)
    require totalSupply == (8 * Mask(253, 0, stor0.field_3)) + stor0.field_0 % 8
    balanceOf[address(arg1)] = Mask(253, 0, stor0.field_3)
    require totalSupply + Mask(253, 0, stor0.field_3) >= totalSupply
    require totalSupply + Mask(253, 0, stor0.field_3) >= Mask(253, 0, stor0.field_3)
    totalSupply += Mask(253, 0, stor0.field_3)
    balanceOf[address(arg2)] = Mask(253, 0, stor0.field_3)
    require totalSupply + Mask(253, 0, stor0.field_3) >= totalSupply
    require totalSupply + Mask(253, 0, stor0.field_3) >= Mask(253, 0, stor0.field_3)
    totalSupply += Mask(253, 0, stor0.field_3)
    Mask(88, 0, stor4.field_168) = 1
    emit TeamAndPartnerTokensAllocated(address(arg1), arg2);
}



}
