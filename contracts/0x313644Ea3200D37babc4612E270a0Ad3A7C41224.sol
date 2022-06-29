contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor3;
uint128 stor4; offset 160
address stor4;

function _fallback() payable {
    stor0 = 0
    Mask(96, 0, stor4.field_160) = 1
    require not msg.value
    stor3 = code.data[6234 len 20]
    address(stor4.field_0) = code.data[6266 len 20]
    return code.data[230 len 5992]
}



// =====================  Runtime code  =====================


const name = 'CosmoCoin'

const decimals = 18

const symbol = 'COSM'


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address icoAddress;
uint8 stor4; offset 160
uint128 stor4; offset 160
address adminAddress;

function totalSupply() {
    return totalSupply
}

function ico() {
    return icoAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function tokensAreFrozen() {
    return bool(uint8(stor4.field_160))
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function frostTokens() {
    if icoAddress != msg.sender:
        require msg.sender == adminAddress
    Mask(96, 0, stor4.field_160) = 1
}

function defrostTokens() {
    if icoAddress != msg.sender:
        require msg.sender == adminAddress
    Mask(96, 0, stor4.field_160) = 0
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burnTokens(address arg1, uint256 arg2) {
    if icoAddress != msg.sender:
        require msg.sender == adminAddress
    require arg2 > 0
    require balanceOf[address(arg1)] >= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    emit Burn(arg2, arg1);
}

function mintTokens(address arg1, uint256 arg2) {
    if icoAddress != msg.sender:
        require msg.sender == adminAddress
    require arg1
    require arg2 > 0
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
}

function transfer(address arg1, uint256 arg2) {
    if icoAddress != msg.sender:
        if adminAddress != msg.sender:
            require not uint8(stor4.field_160)
    require arg1
    require arg1 != this.address
    require arg2 > 0
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if icoAddress != msg.sender:
        if adminAddress != msg.sender:
            require not uint8(stor4.field_160)
    require arg2
    require arg2 != this.address
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
