contract main {




// =====================  Runtime code  =====================


mapping of uint256 allowance;
mapping of uint256 balanceOf;
mapping of uint8 stor2;
address stor3;
uint8 stor4; offset 160
uint128 stor4; offset 160
array of uint256 name;
array of uint256 symbol;
uint256 totalSupply;
uint8 decimals;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function isTransferable() {
    return bool(uint8(stor4))
}

function decimals() {
    return decimals
}

function isLocked(address arg1) {
    return bool(stor2[address(arg1)])
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function enableTransfer() {
    require stor3 == msg.sender
    Mask(96, 0, stor4) = 1
}

function disableTransfer() {
    require stor3 == msg.sender
    Mask(96, 0, stor4) = 0
}

function lock(address arg1) {
    require stor3 == msg.sender
    stor2[address(arg1)] = 1
}

function unlock(address arg1) {
    require stor3 == msg.sender
    stor2[address(arg1)] = 0
}

function approve(address arg1, uint256 arg2) {
    require uint8(stor4)
    require not stor2[address(msg.sender)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require uint8(stor4)
    require not stor2[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function claimToken(address arg1, address arg2, uint256 arg3) {
    require stor3 == msg.sender
    require arg1
    require arg2
    require arg3 > 0
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require uint8(stor4)
    require not stor2[address(arg1)]
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
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
