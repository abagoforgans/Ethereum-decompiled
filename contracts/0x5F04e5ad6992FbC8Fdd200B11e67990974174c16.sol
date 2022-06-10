contract main {




// =====================  Runtime code  =====================


const INITIAL_SUPPLY = 10^10


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address owner; offset 8
uint256 stor5; offset 8
address newOwnerCandidate;
address sub_f695dee4Address;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function newOwnerCandidate() {
    return newOwnerCandidate
}

function sub_f695dee4(?) {
    return sub_f695dee4Address
}

function _fallback() payable {
    revert
}

function proposeOwnership(address arg1) {
    require msg.sender == owner
    newOwnerCandidate = arg1
    emit OwnershipRequested(msg.sender, arg1);
}

function removeOwnership(address arg1) {
    require msg.sender == owner
    require arg1 == 3500
    owner = 0
    newOwnerCandidate = 0
    emit OwnershipRemoved()
}

function changeOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
    newOwnerCandidate = 0
    emit OwnershipTransferred(owner, 0 or arg1);
}

function acceptOwnership() {
    require msg.sender == newOwnerCandidate
    stor5 = newOwnerCandidate
    newOwnerCandidate = 0
    emit OwnershipTransferred(owner, 0 or newOwnerCandidate);
}

function executeTransaction(address arg1, uint256 arg2, bytes arg3) {
    require msg.sender == owner
    call arg1 with:
       value arg2 wei
         gas gas_remaining - 34710 wei
        args arg3[all]
    require ext_call.success
    emit Transaction(arg2, Array(len=arg3.length, data=arg3[all]), arg1);
}

function totalSupply() {
    require ext_code.size(sub_f695dee4Address)
    call sub_f695dee4Address.getTotalSupply() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function balanceOf(address arg1) {
    require ext_code.size(sub_f695dee4Address)
    call sub_f695dee4Address.0xf8b2cb4f with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function allowance(address arg1, address arg2) {
    require ext_code.size(sub_f695dee4Address)
    call sub_f695dee4Address.getAllowance(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require ext_code.size(sub_f695dee4Address)
    call sub_f695dee4Address.move(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function approve(address arg1, uint256 arg2) {
    require arg1
    require ext_code.size(sub_f695dee4Address)
    call sub_f695dee4Address.setApprove(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require arg1
    require ext_code.size(sub_f695dee4Address)
    call sub_f695dee4Address.getAllowance(address arg1, address arg2) with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg2 <= ext_call.return_data[0]
    require ext_code.size(sub_f695dee4Address)
    call sub_f695dee4Address.setApprove(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(arg1), ext_call.return_data[0] - arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit Approval((ext_call.return_data[0] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require arg1
    require ext_code.size(sub_f695dee4Address)
    call sub_f695dee4Address.getAllowance(address arg1, address arg2) with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg2 + ext_call.return_data[0] >= ext_call.return_data[0]
    require ext_code.size(sub_f695dee4Address)
    call sub_f695dee4Address.setApprove(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(arg1), arg2 + ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit Approval((arg2 + ext_call.return_data[0]), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require ext_code.size(sub_f695dee4Address)
    call sub_f695dee4Address.getAllowance(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(arg1), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg3 <= ext_call.return_data[0]
    require ext_code.size(sub_f695dee4Address)
    call sub_f695dee4Address.setApprove(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg1), msg.sender, ext_call.return_data[0] - arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require arg2
    require ext_code.size(sub_f695dee4Address)
    call sub_f695dee4Address.move(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
