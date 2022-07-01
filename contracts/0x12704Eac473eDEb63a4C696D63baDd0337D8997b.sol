contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
address stor2;
address stor3;
uint256 stor4;

function _fallback() {
    stor0 = 0
    stor1 = code.data[3364 len 20]
    stor2 = code.data[3396 len 20]
    stor3 = code.data[3428 len 20]
    stor4 = code.data[3448 len 32]
    return code.data[298 len 3054]
}



// =====================  Runtime code  =====================


uint256 sub_486cefbb;
address sub_46f08fc0Address;
address custodianAddress;
address sub_8bcacf96Address;
uint256 totalSupplyCeiling;
mapping of uint256 pendingRaiseMap;

function pendingRaiseMap(bytes32 arg1) {
    return pendingRaiseMap[arg1]
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

function sub_8bcacf96(?) {
    return sub_8bcacf96Address
}

function totalSupplyCeiling() {
    return totalSupplyCeiling
}

function _fallback() payable {
    revert
}

function lowerCeiling(uint256 arg1) {
    require msg.sender == sub_8bcacf96Address
    require totalSupplyCeiling - arg1 <= totalSupplyCeiling
    totalSupplyCeiling -= arg1
    emit CeilingLowered(arg1, totalSupplyCeiling - arg1);
}

function confirmPrintProxy(bytes32 arg1) {
    require msg.sender == custodianAddress
    require ext_code.size(sub_46f08fc0Address)
    call sub_46f08fc0Address.0x380ba30c with:
         gas gas_remaining wei
        args arg1
    require ext_call.success
}

function confirmCustodianChangeProxy(bytes32 arg1) {
    require msg.sender == custodianAddress
    require ext_code.size(sub_46f08fc0Address)
    call sub_46f08fc0Address.0x3a8343ee with:
         gas gas_remaining wei
        args arg1
    require ext_call.success
}

function requestCeilingRaise(uint256 arg1) {
    require arg1
    sub_486cefbb++
    pendingRaiseMap[block.hash(block.number - 1)][this.address][stor0 + 1] = arg1
    emit CeilingRaiseLocked(sha3(block.hash(block.number - 1), this.address, sub_486cefbb + 1), arg1);
    return sha3(block.hash(block.number - 1), this.address, sub_486cefbb + 1)
}

function confirmCeilingRaise(bytes32 arg1) {
    require msg.sender == custodianAddress
    require pendingRaiseMap[arg1]
    pendingRaiseMap[arg1] = 0
    if totalSupplyCeiling + pendingRaiseMap[arg1] >= totalSupplyCeiling:
        totalSupplyCeiling += pendingRaiseMap[arg1]
        emit CeilingRaiseConfirmed(arg1, pendingRaiseMap[arg1], totalSupplyCeiling + pendingRaiseMap[arg1]);
}

function limitedPrint(address arg1, uint256 arg2) {
    require msg.sender == sub_8bcacf96Address
    require ext_code.size(sub_46f08fc0Address)
    call sub_46f08fc0Address.0x18160ddd with:
         gas gas_remaining wei
    require ext_call.success
    require ext_call.return_data[0] + arg2 >= ext_call.return_data[0]
    require ext_call.return_data[0] + arg2 <= totalSupplyCeiling
    require ext_code.size(sub_46f08fc0Address)
    call sub_46f08fc0Address.0xbe23d291 with:
         gas gas_remaining wei
        args address(arg1), arg2
    require ext_call.success
    require ext_code.size(sub_46f08fc0Address)
    call sub_46f08fc0Address.0x380ba30c with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    require ext_call.success
}



}
