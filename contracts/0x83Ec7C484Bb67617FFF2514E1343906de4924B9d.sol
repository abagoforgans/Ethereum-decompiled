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


uint256 sub_486cefbb;
address custodianAddress;
mapping of address sub_2bfa6ac7;
address sub_46f08fc0Address;
mapping of address sub_6d905442;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;

function name() {
    return name[0 len name.length]
}

function sub_2bfa6ac7(?) {
    return sub_2bfa6ac7[arg1]
}

function decimals() {
    return decimals
}

function custodian() {
    return custodianAddress
}

function sub_46f08fc0(?) {
    return sub_46f08fc0Address
}

function sub_486cefbb(?) {
    return sub_486cefbb
}

function sub_6d905442(?) {
    return sub_6d905442[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function _fallback() payable {
    revert
}

function emitTransfer(address arg1, address arg2, uint256 arg3) {
    require msg.sender == sub_46f08fc0Address
    emit Transfer(arg3, arg1, arg2);
}

function emitApproval(address arg1, address arg2, uint256 arg3) {
    require msg.sender == sub_46f08fc0Address
    emit Approval(arg3, arg1, arg2);
}

function totalSupply() {
    require ext_code.size(sub_46f08fc0Address)
    call sub_46f08fc0Address.0x18160ddd with:
         gas gas_remaining wei
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_fe895afa(?) {
    require msg.sender == custodianAddress
    require sub_6d905442[arg1]
    sub_46f08fc0Address = sub_6d905442[arg1]
    sub_6d905442[arg1] = 0
    emit 0x9a2c44e2: arg1, sub_46f08fc0Address
}

function balanceOf(address arg1) {
    require ext_code.size(sub_46f08fc0Address)
    call sub_46f08fc0Address.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function confirmCustodianChange(bytes32 arg1) {
    require msg.sender == custodianAddress
    require sub_2bfa6ac7[arg1]
    custodianAddress = sub_2bfa6ac7[arg1]
    sub_2bfa6ac7[arg1] = 0
    emit CustodianChangeConfirmed(arg1, custodianAddress);
}

function allowance(address arg1, address arg2) {
    require ext_code.size(sub_46f08fc0Address)
    call sub_46f08fc0Address.0xdd62ed3e with:
         gas gas_remaining wei
        args address(arg1), arg2
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_bd4fce01(?) {
    require arg1
    sub_486cefbb++
    sub_6d905442[block.hash(block.number - 1)][this.address][stor0 + 1] = arg1
    emit 0x3d48cb58: sha3(block.hash(block.number - 1), this.address, sub_486cefbb + 1), msg.sender, arg1
    return sha3(block.hash(block.number - 1), this.address, sub_486cefbb + 1)
}

function approve(address arg1, uint256 arg2) {
    require ext_code.size(sub_46f08fc0Address)
    call sub_46f08fc0Address.approveWithSender(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(arg1), arg2
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function transfer(address arg1, uint256 arg2) {
    require ext_code.size(sub_46f08fc0Address)
    call sub_46f08fc0Address.transferWithSender(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(arg1), arg2
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function decreaseApproval(address arg1, uint256 arg2) {
    require ext_code.size(sub_46f08fc0Address)
    call sub_46f08fc0Address.decreaseApprovalWithSender(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(arg1), arg2
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function increaseApproval(address arg1, uint256 arg2) {
    require ext_code.size(sub_46f08fc0Address)
    call sub_46f08fc0Address.increaseApprovalWithSender(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(arg1), arg2
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function requestCustodianChange(address arg1) {
    require arg1
    sub_486cefbb++
    sub_2bfa6ac7[block.hash(block.number - 1)][this.address][stor0 + 1] = arg1
    emit CustodianChangeRequested(sha3(block.hash(block.number - 1), this.address, sub_486cefbb + 1), msg.sender, arg1);
    return sha3(block.hash(block.number - 1), this.address, sub_486cefbb + 1)
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require ext_code.size(sub_46f08fc0Address)
    call sub_46f08fc0Address.transferFromWithSender(address arg1, address arg2, address arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 0, uint32(msg.sender), address(arg1), address(arg2), arg3
    require ext_call.success
    return bool(ext_call.return_data[0])
}



}
