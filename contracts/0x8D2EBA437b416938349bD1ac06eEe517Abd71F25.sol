contract main {




// =====================  Runtime code  =====================


address arbitratorAddress;
array of struct arbitratorExtraData;
address deployerAddress;
address realitioAddress;
mapping of uint256 disputeIDToQuestionID;
mapping of address questionIDToDisputer;
mapping of uint256 questionIDToAnswer;
mapping of uint8 stor7;

function arbitratorExtraData() {
    return arbitratorExtraData[0 len arbitratorExtraData.length].field_0
}

function questionIDToDisputer(bytes32 arg1) {
    return address(questionIDToDisputer[arg1])
}

function arbitrator() {
    return arbitratorAddress
}

function questionIDToAnswer(bytes32 arg1) {
    return questionIDToAnswer[arg1]
}

function realitio() {
    return realitioAddress
}

function questionIDToRuled(bytes32 arg1) {
    return bool(stor7[arg1])
}

function disputeIDToQuestionID(uint256 arg1) {
    return disputeIDToQuestionID[arg1]
}

function deployer() {
    return deployerAddress
}

function _fallback() payable {
    revert
}

function setMetaEvidence(string arg1) {
    if deployerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Can only be called once by the deployer of the contract.'
    deployerAddress = 0
    emit MetaEvidence(uint256 arg1, string arg2):
                      Array(len=arg1.length, data=arg1[all]),
    emit 0x0: Array(len=arg1.length, data=arg1[all])
}

function rule(uint256 arg1, uint256 arg2) {
    if arbitratorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only be called by the arbitrator.'
    emit Ruling(arg2, msg.sender, arg1);
    if not arg2:
        questionIDToAnswer[stor4[arg1]] = -1
    else:
        questionIDToAnswer[stor4[arg1]] = arg2 - 1
    stor7[stor4[arg1]] = 1
    disputeIDToQuestionID[arg1] = 0
}

function getDisputeFee(bytes32 arg1) {
    mem[164] = uint256(arbitratorExtraData.field_0)
    idx = 164
    s = 0
    while arbitratorExtraData.length + 164 > idx + 32:
        mem[idx + 32] = arbitratorExtraData[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require ext_code.size(arbitratorAddress)
    call arbitratorAddress.arbitrationCost(bytes arg1) with:
         gas gas_remaining wei
        args Array(len=arbitratorExtraData.length, data=mem[164 len arbitratorExtraData.length + (floor32(arbitratorExtraData.length - 1) + -arbitratorExtraData.length + 32 % 32)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function requestArbitration(bytes32 arg1, uint256 arg2) payable {
    mem[196] = uint256(arbitratorExtraData.field_0)
    idx = 196
    s = 0
    while arbitratorExtraData.length + 196 > idx + 32:
        mem[idx + 32] = arbitratorExtraData[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require ext_code.size(arbitratorAddress)
    call arbitratorAddress.createDispute(uint256 arg1, bytes arg2) with:
       value msg.value wei
         gas gas_remaining wei
        args test266151307(), Array(len=arbitratorExtraData.length, data=mem[196 len arbitratorExtraData.length + (floor32(arbitratorExtraData.length - 1) + -arbitratorExtraData.length + 32 % 32)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    disputeIDToQuestionID[ext_call.return_data[0]] = arg1
    uint256(questionIDToDisputer[arg1]) = msg.sender or Mask(96, 160, uint256(questionIDToDisputer[arg1]))
    require ext_code.size(realitioAddress)
    call realitioAddress.notifyOfArbitrationRequest(bytes32 arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args arg1, msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Dispute(address arg1, uint256 arg2, uint256 arg3, uint256 arg4):
                 0,
                 arbitratorAddress,
                 ext_call.return_data[0],
    emit DisputeIDToQuestionID(arg1, ext_call.return_data[0]);
}

function reportAnswer(bytes32 arg1, bytes32 arg2, bytes32 arg3, uint256 arg4, address arg5, bool arg6) {
    require ext_code.size(realitioAddress)
    call realitioAddress.getHistoryHash(bytes32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != sha3(arg2, arg3, arg4, arg5, uint8(arg6)):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'The hash of the history parameters supplied does not match the one stored in the Realitio contract.'
    if not stor7[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The arbitrator has not ruled yet.'
    require ext_code.size(realitioAddress)
    if not arg4:
        call realitioAddress.submitAnswerByArbitrator(bytes32 arg1, bytes32 arg2, address arg3) with:
             gas gas_remaining wei
            args arg1, questionIDToAnswer[arg1], address(questionIDToDisputer[arg1])
    else:
        if not arg6:
            if arg3 == questionIDToAnswer[arg1]:
                call realitioAddress.submitAnswerByArbitrator(bytes32 arg1, bytes32 arg2, address arg3) with:
                     gas gas_remaining wei
                    args arg1, questionIDToAnswer[arg1], arg5
            else:
                call realitioAddress.submitAnswerByArbitrator(bytes32 arg1, bytes32 arg2, address arg3) with:
                     gas gas_remaining wei
                    args arg1, questionIDToAnswer[arg1], address(questionIDToDisputer[arg1])
        else:
            call realitioAddress.commitments(bytes32 arg1) with:
                 gas gas_remaining wei
                args arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if not ext_call.return_data[32]:
                if ext_call.return_data[28 len 4] >= uint32(block.timestamp):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'Arbitration cannot be done until the last answerer has had time to reveal its commitment.'
                require ext_code.size(realitioAddress)
                call realitioAddress.submitAnswerByArbitrator(bytes32 arg1, bytes32 arg2, address arg3) with:
                     gas gas_remaining wei
                    args arg1, questionIDToAnswer[arg1], address(questionIDToDisputer[arg1])
            else:
                require ext_code.size(realitioAddress)
                if ext_call.return_data[64] == questionIDToAnswer[arg1]:
                    call realitioAddress.submitAnswerByArbitrator(bytes32 arg1, bytes32 arg2, address arg3) with:
                         gas gas_remaining wei
                        args arg1, questionIDToAnswer[arg1], arg5
                else:
                    call realitioAddress.submitAnswerByArbitrator(bytes32 arg1, bytes32 arg2, address arg3) with:
                         gas gas_remaining wei
                        args arg1, questionIDToAnswer[arg1], address(questionIDToDisputer[arg1])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    address(questionIDToDisputer[arg1]) = 0
    questionIDToAnswer[arg1] = 0
    stor7[arg1] = 0
}



}
