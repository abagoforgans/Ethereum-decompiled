contract main {




// =====================  Runtime code  =====================


address ceoAddress;
mapping of uint8 stor1;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 version;
mapping of uint8 stor9;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function version() {
    return version[0 len version.length]
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function ceo() {
    return ceoAddress
}

function symbol() {
    return symbol[0 len symbol.length]
}

function frozenAccount(address arg1) {
    return bool(stor9[arg1])
}

function locked(address arg1) {
    return bool(stor1[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function changeCEO(address arg1) {
    require msg.sender == ceoAddress
    require arg1
    emit LogChangeCEO(ceoAddress, arg1);
    ceoAddress = arg1
    return 1
}

function lockup(address arg1) {
    require msg.sender == ceoAddress
    require ceoAddress != arg1
    stor1[address(arg1)] = 1
    emit LogLockup(arg1);
    return 1
}

function unfreezeAccount(address arg1) {
    require msg.sender == ceoAddress
    require arg1
    require stor9[address(arg1)]
    stor9[address(arg1)] = 0
    emit LogFrozenAccount(0, arg1);
    return 1
}

function freezeAccount(address arg1) {
    require msg.sender == ceoAddress
    require arg1
    require ceoAddress != arg1
    require not stor9[address(arg1)]
    stor9[address(arg1)] = 1
    emit LogFrozenAccount(1, arg1);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not stor9[address(msg.sender)]
    require not stor9[address(arg1)]
    require bool(stor1[address(msg.sender)]) != 1
    require bool(stor1[address(arg1)]) != 1
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath add failed'
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    if balanceOf[address(msg.sender)] + balanceOf[address(arg1)] < balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath add failed'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath sub failed'
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath add failed'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    if balanceOf[address(msg.sender)] + balanceOf[address(arg1)] < balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath add failed'
    require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor9[address(msg.sender)]
    require bool(stor1[address(msg.sender)]) != 1
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 'SafeMath sub failed'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require not stor9[address(arg1)]
    require not stor9[address(arg2)]
    require bool(stor1[address(arg1)]) != 1
    require bool(stor1[address(arg2)]) != 1
    require arg2
    require balanceOf[address(arg1)] >= arg3
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        revert with 0, 'SafeMath add failed'
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    if balanceOf[address(arg1)] + balanceOf[address(arg2)] < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath add failed'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 'SafeMath sub failed'
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        revert with 0, 'SafeMath add failed'
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    if balanceOf[address(arg1)] + balanceOf[address(arg2)] < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath add failed'
    require balanceOf[address(arg1)] + balanceOf[address(arg2)] == balanceOf[address(arg1)] + balanceOf[address(arg2)]
    emit TransferFrom(arg3, arg1, arg2, msg.sender);
    return 1
}



}
