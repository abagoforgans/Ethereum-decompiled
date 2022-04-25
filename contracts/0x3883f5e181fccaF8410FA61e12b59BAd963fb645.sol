contract main {


// =======================  Init code  ======================


address stor3;
uint256 stor4;

function _fallback() {
    stor3 = msg.sender
    stor4 = code.data[5386 len 32]
    return code.data[131 len 5255]
}



// =====================  Runtime code  =====================


const name = 'Theta Token'

const decimals = 18

const symbol = 'THETA'


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address controllerAddress;
uint256 unlockTime;
mapping of uint8 stor5;

function totalSupply() {
    return totalSupply
}

function getController() {
    return controllerAddress
}

function getUnlockTime() {
    return unlockTime
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function isPrecirculationAllowed(address arg1) {
    return bool(stor5[address(arg1)])
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function controller() {
    return controllerAddress
}

function _fallback() payable {
    revert
}

function changeUnlockTime(uint256 arg1) {
    require msg.sender == controllerAddress
    unlockTime = arg1
}

function changeController(address arg1) {
    require msg.sender == controllerAddress
    controllerAddress = arg1
}

function allowPrecirculation(address arg1) {
    require msg.sender == controllerAddress
    stor5[address(arg1)] = 1
}

function disallowPrecirculation(address arg1) {
    require msg.sender == controllerAddress
    stor5[address(arg1)] = 0
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require msg.sender == controllerAddress
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if block.number < unlockTime:
        require stor5[address(msg.sender)]
        require stor5[address(arg1)]
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 > 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if block.number < unlockTime:
        require stor5[address(arg1)]
        require stor5[address(arg2)]
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require arg3 > 0
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
