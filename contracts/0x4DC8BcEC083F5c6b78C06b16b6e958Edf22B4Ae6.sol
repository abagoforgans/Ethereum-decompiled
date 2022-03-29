contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;

function _fallback() {
    mem[96 len -2734] = code.data[2969 len -2734]
    mem[64] = -2638
    stor0 = msg.sender
    stor1[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    return code.data[235 len 2734]
}



// =====================  Runtime code  =====================


address stor0;
array of uint256 name;
address judgeAddress;
address beneficiaryAddress;
address IMPACT_REGISTRY_ADDRESS;
address sub_204baf41Address;
mapping of uint256 stor6;
uint256 total;

function name() {
    return name[0 len name.length]
}

function sub_204baf41(?) {
    return sub_204baf41Address
}

function total() {
    return total
}

function judgeAddress() {
    return judgeAddress
}

function IMPACT_REGISTRY_ADDRESS() {
    return IMPACT_REGISTRY_ADDRESS
}

function beneficiaryAddress() {
    return beneficiaryAddress
}

function _fallback() {
    revert 
}

function setJudge(address arg1) {
    require stor0 == msg.sender
    judgeAddress = arg1
}

function sub_f20f6c40(?) {
    require stor0 == msg.sender
    sub_204baf41Address = arg1
}

function setBeneficiary(address arg1) {
    require stor0 == msg.sender
    beneficiaryAddress = arg1
}

function setImpactRegistry(address arg1) {
    require stor0 == msg.sender
    IMPACT_REGISTRY_ADDRESS = arg1
}

function getBalance(address arg1) {
    require ext_code.size(IMPACT_REGISTRY_ADDRESS)
    call IMPACT_REGISTRY_ADDRESS.0xf8b2cb4f with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function notify(address arg1, uint256 arg2) {
    require stor0 == msg.sender
    total += arg2
    require ext_code.size(IMPACT_REGISTRY_ADDRESS)
    call IMPACT_REGISTRY_ADDRESS.registerDonation(address rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args address(arg1), arg2
    require ext_call.success
    emit DonationEvent(arg2, arg1);
}

function payBack(address arg1) {
    require stor0 == msg.sender
    require ext_code.size(IMPACT_REGISTRY_ADDRESS)
    call IMPACT_REGISTRY_ADDRESS.0xf8b2cb4f with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    if ext_call.return_data[0] > 0:
        require ext_code.size(sub_204baf41Address)
        call sub_204baf41Address.contracts(bytes32 rg1) with:
             gas gas_remaining - 50 wei
            args 0x6469676974616c47425000000000000000000000000000000000000000000000
        require ext_call.success
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining - 50 wei
            args address(arg1), ext_call.return_data[0]
        require ext_call.success
        total -= stor6[address(arg1)]
        require ext_code.size(IMPACT_REGISTRY_ADDRESS)
        call IMPACT_REGISTRY_ADDRESS.0x6293fd1e with:
             gas gas_remaining - 50 wei
            args arg1
        require ext_call.success
}

function unlockOutcome(string arg1, uint256 arg2) {
    mem[128 len arg1.length] = arg1[all]
    require judgeAddress == msg.sender
    require total >= arg2
    require ext_code.size(sub_204baf41Address)
    call sub_204baf41Address.contracts(bytes32 rg1) with:
         gas gas_remaining - 50 wei
        args 0x6469676974616c47425000000000000000000000000000000000000000000000
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining - 50 wei
        args beneficiaryAddress, arg2
    require ext_call.success
    total -= arg2
    mem[ceil32(arg1.length) + 128] = 0x5231450800000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + 164] = arg2
    mem[ceil32(arg1.length) + 132] = 64
    mem[ceil32(arg1.length) + 196] = arg1.length
    if arg1.length:
        mem[ceil32(arg1.length) + 228] = mem[128]
        mem[ceil32(arg1.length) + 260 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
    require ext_code.size(IMPACT_REGISTRY_ADDRESS)
    call IMPACT_REGISTRY_ADDRESS.registerOutcome(string rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args Array(len=arg1.length, data=mem[ceil32(arg1.length) + 228 len arg1.length]), arg2
    require ext_call.success
    mem[ceil32(arg1.length) + 160] = arg2
    mem[ceil32(arg1.length) + 128] = 64
    mem[ceil32(arg1.length) + 192] = arg1.length
    if arg1.length:
        mem[ceil32(arg1.length) + 224] = mem[128]
        mem[ceil32(arg1.length) + 256 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
    emit OutcomeEvent(Array(len=arg1.length, data=mem[ceil32(arg1.length) + 224 len arg1.length]), arg2);
}



}
