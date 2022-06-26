contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
address stor3;
array of uint256 stor5;
array of uint256 stor6;
uint8 stor7;

function _fallback() {
    mem[96 len -7282] = code.data[7778 len -7282]
    mem[64] = -7186
    stor0 = 0
    stor1 = mem[204 len 20]
    stor3 = 0
    stor5[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor6[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor7 = mem[191 len 1]
    return code.data[496 len 7282]
}



// =====================  Runtime code  =====================


uint256 lockRequestCount;
address custodianAddress;
mapping of address custodianChangeReqs;
address erc20ImplAddress;
mapping of address implChangeReqs;
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

function emitTransfer(address arg1, address arg2, uint256 arg3) {
    require msg.sender == erc20ImplAddress
    emit Transfer(arg3, arg1, arg2);
}

function emitApproval(address arg1, address arg2, uint256 arg3) {
    require msg.sender == erc20ImplAddress
    emit Approval(arg3, arg1, arg2);
}

function totalSupply() {
    require ext_code.size(erc20ImplAddress)
    call erc20ImplAddress.0x18160ddd with:
         gas gas_remaining wei
    require ext_call.success
    return ext_call.return_data[0]
}

function balanceOf(address arg1) {
    require ext_code.size(erc20ImplAddress)
    call erc20ImplAddress.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function confirmImplChange(bytes32 arg1) {
    require msg.sender == custodianAddress
    require implChangeReqs[arg1]
    erc20ImplAddress = implChangeReqs[arg1]
    implChangeReqs[arg1] = 0
    emit ImplChangeConfirmed(arg1, erc20ImplAddress);
}

function allowance(address arg1, address arg2) {
    require ext_code.size(erc20ImplAddress)
    call erc20ImplAddress.0xdd62ed3e with:
         gas gas_remaining wei
        args address(arg1), arg2
    require ext_call.success
    return ext_call.return_data[0]
}

function confirmCustodianChange(bytes32 arg1) {
    require msg.sender == custodianAddress
    require custodianChangeReqs[arg1]
    custodianAddress = custodianChangeReqs[arg1]
    custodianChangeReqs[arg1] = 0
    emit CustodianChangeConfirmed(arg1, custodianAddress);
}

function approve(address arg1, uint256 arg2) {
    require ext_code.size(erc20ImplAddress)
    call erc20ImplAddress.approveWithSender(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(arg1), arg2
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function transfer(address arg1, uint256 arg2) {
    require ext_code.size(erc20ImplAddress)
    call erc20ImplAddress.transferWithSender(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(arg1), arg2
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function decreaseApproval(address arg1, uint256 arg2) {
    require ext_code.size(erc20ImplAddress)
    call erc20ImplAddress.decreaseApprovalWithSender(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(arg1), arg2
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function increaseApproval(address arg1, uint256 arg2) {
    require ext_code.size(erc20ImplAddress)
    call erc20ImplAddress.increaseApprovalWithSender(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(arg1), arg2
    require ext_call.success
    return bool(ext_call.return_data[0])
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

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require ext_code.size(erc20ImplAddress)
    call erc20ImplAddress.transferFromWithSender(address arg1, address arg2, address arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 0, uint32(msg.sender), address(arg1), address(arg2), arg3
    require ext_call.success
    return bool(ext_call.return_data[0])
}



}
