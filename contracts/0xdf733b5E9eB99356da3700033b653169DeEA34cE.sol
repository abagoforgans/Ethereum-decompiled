contract main {




// =====================  Runtime code  =====================


address viewOwner;
uint32 viewTransferCount; offset 160
address stor1;
array of uint256 symbol;
array of uint256 name;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 stor7;
mapping of uint256 incomeOf;
mapping of uint256 expenseOf;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    require arg1
    return balanceOf[address(arg1)]
}

function viewTransferCount() {
    require msg.sender == viewOwner
    return viewTransferCount
}

function symbol() {
    return symbol[0 len symbol.length]
}

function incomeOf(address arg1) {
    require arg1
    return incomeOf[address(arg1)]
}

function viewOwner() {
    return viewOwner
}

function expenseOf(address arg1) {
    require arg1
    return expenseOf[address(arg1)]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == viewOwner
    stor1 = arg1
}

function isTransferPending() {
    if viewOwner != msg.sender:
        require msg.sender == stor1
    return not not stor1
}

function approve(address arg1, uint256 arg2) {
    require arg1
    stor7[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function allowance(address arg1, address arg2) {
    require arg1
    require arg2
    if arg1 != msg.sender:
        require arg2 == msg.sender
    return stor7[address(arg1)][address(arg2)]
}

function acceptOwnership() {
    require msg.sender == stor1
    viewOwner = stor1
    stor1 = 0
    viewTransferCount = uint32(viewTransferCount + 1)
    emit TransferOwnership(viewOwner, stor1);
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require incomeOf[address(arg1)] + arg2 >= incomeOf[address(arg1)]
    incomeOf[address(arg1)] += arg2
    require expenseOf[address(msg.sender)] + arg2 >= expenseOf[address(msg.sender)]
    expenseOf[address(msg.sender)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    require arg1
    stor7[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require bool(ext_call.return_data[0]) == 1
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= stor7[address(arg1)][address(msg.sender)]
    stor7[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require incomeOf[address(arg2)] + arg3 >= incomeOf[address(arg2)]
    incomeOf[address(arg2)] += arg3
    require expenseOf[address(arg1)] + arg3 >= expenseOf[address(arg1)]
    expenseOf[address(arg1)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
