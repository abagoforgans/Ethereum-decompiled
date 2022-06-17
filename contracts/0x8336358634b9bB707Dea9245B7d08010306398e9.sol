contract main {




// =====================  Runtime code  =====================


uint256 lockRequestCount;
address custodianAddress;
mapping of address custodianChangeReqs;
address erc20ImplAddress;
mapping of address implChangeReqs;
address sub_93aa4e4eAddress;
mapping of address sub_8a6da061;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function custodian() {
    return custodianAddress
}

function erc20Impl() {
    return erc20ImplAddress
}

function sub_8a6da061(?) {
    return sub_8a6da061[arg1]
}

function sub_93aa4e4e(?) {
    return sub_93aa4e4eAddress
}

function symbol() {
    return symbol[0 len symbol.length]
}

function implChangeReqs(bytes32 arg1) {
    return implChangeReqs[arg1]
}

function lockRequestCount() {
    return lockRequestCount
}

function custodianChangeReqs(bytes32 arg1) {
    return custodianChangeReqs[arg1]
}

function _fallback() payable {
    revert
}

function emitApproval(address arg1, address arg2, uint256 arg3) {
    require msg.sender == erc20ImplAddress
    emit Approval(arg3, arg1, arg2);
}

function emitTransfer(address arg1, address arg2, uint256 arg3) {
    if sub_93aa4e4eAddress != msg.sender:
        require msg.sender == erc20ImplAddress
    emit Transfer(arg3, arg1, arg2);
}

function sub_485b32e6(?) {
    require msg.sender == custodianAddress
    require sub_8a6da061[arg1]
    sub_93aa4e4eAddress = sub_8a6da061[arg1]
    sub_8a6da061[arg1] = 0
    emit 0x5cb9700f: arg1, sub_93aa4e4eAddress
}

function confirmImplChange(bytes32 arg1) {
    require msg.sender == custodianAddress
    require implChangeReqs[arg1]
    erc20ImplAddress = implChangeReqs[arg1]
    implChangeReqs[arg1] = 0
    emit ImplChangeConfirmed(arg1, erc20ImplAddress);
}

function confirmCustodianChange(bytes32 arg1) {
    require msg.sender == custodianAddress
    require custodianChangeReqs[arg1]
    custodianAddress = custodianChangeReqs[arg1]
    custodianChangeReqs[arg1] = 0
    emit CustodianChangeConfirmed(arg1, custodianAddress);
}

function totalSupply() {
    require ext_code.size(erc20ImplAddress)
    call erc20ImplAddress.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function balanceOf(address arg1) {
    require ext_code.size(erc20ImplAddress)
    call erc20ImplAddress.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_bcc9534f(?) {
    require arg1
    lockRequestCount++
    sub_8a6da061[block.hash(block.number - 1)][this.address][stor0 + 1] = arg1
    emit 0xb3ab4b58: sha3(block.hash(block.number - 1), this.address, lockRequestCount + 1), msg.sender, arg1
    return sha3(block.hash(block.number - 1), this.address, lockRequestCount + 1)
}

function allowance(address arg1, address arg2) {
    require ext_code.size(erc20ImplAddress)
    call erc20ImplAddress.0xdd62ed3e with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function requestImplChange(address arg1) {
    require arg1
    lockRequestCount++
    implChangeReqs[block.hash(block.number - 1)][this.address][stor0 + 1] = arg1
    emit ImplChangeRequested(sha3(block.hash(block.number - 1), this.address, lockRequestCount + 1), msg.sender, arg1);
    return sha3(block.hash(block.number - 1), this.address, lockRequestCount + 1)
}

function requestCustodianChange(address arg1) {
    require arg1
    lockRequestCount++
    custodianChangeReqs[block.hash(block.number - 1)][this.address][stor0 + 1] = arg1
    emit CustodianChangeRequested(sha3(block.hash(block.number - 1), this.address, lockRequestCount + 1), msg.sender, arg1);
    return sha3(block.hash(block.number - 1), this.address, lockRequestCount + 1)
}

function approve(address arg1, uint256 arg2) {
    require ext_code.size(erc20ImplAddress)
    call erc20ImplAddress.approveWithSender(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function transfer(address arg1, uint256 arg2) {
    require ext_code.size(erc20ImplAddress)
    call erc20ImplAddress.transferWithSender(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function decreaseApproval(address arg1, uint256 arg2) {
    require ext_code.size(erc20ImplAddress)
    call erc20ImplAddress.decreaseApprovalWithSender(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function increaseApproval(address arg1, uint256 arg2) {
    require ext_code.size(erc20ImplAddress)
    call erc20ImplAddress.increaseApprovalWithSender(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require ext_code.size(erc20ImplAddress)
    call erc20ImplAddress.transferFromWithSender(address arg1, address arg2, address arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 0, uint32(msg.sender), address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}



}
