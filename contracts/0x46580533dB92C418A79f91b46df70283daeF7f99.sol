contract main {




// =====================  Runtime code  =====================


array of struct stor0;
array of struct arbitratorExtraData;
address arbitratorAddress;
uint256 feeTimeout;
mapping of uint256 disputeIDtoTransactionID;

function arbitratorExtraData() {
    return arbitratorExtraData[0 len arbitratorExtraData.length].field_0
}

function disputeIDtoTransactionID(uint256 arg1) {
    return disputeIDtoTransactionID[arg1]
}

function arbitrator() {
    return arbitratorAddress
}

function getCountTransactions() {
    return stor0.length
}

function feeTimeout() {
    return feeTimeout
}

function _fallback() payable {
    revert
}

function transactions(uint256 arg1) {
    require arg1 < stor0.length
    require stor0[arg1].field_2048 <= 4
    return stor0[arg1].field_0, 
           stor0[arg1].field_256,
           stor0[arg1].field_512,
           stor0[arg1].field_768,
           stor0[arg1].field_1024,
           stor0[arg1].field_1280,
           stor0[arg1].field_1536,
           stor0[arg1].field_1792,
           stor0[arg1].field_2048
}

function submitEvidence(uint256 arg1, string arg2) {
    require arg1 < stor0.length
    if stor0[arg1].field_0 != msg.sender:
        if stor0[arg1].field_256 != msg.sender:
            revert with 0, 'The caller must be the sender or the receiver.'
    require stor0[arg1].field_2048 <= 4
    if stor0[arg1].field_2048 >= 4:
        revert with 0, 'Must not send evidence if the dispute is resolved.'
    emit Evidence(Array(len=arg2.length, data=arg2[all]), arbitratorAddress, arg1, msg.sender);
}

function createTransaction(uint256 arg1, address arg2, string arg3) payable {
    stor0.length++
    stor0[stor0.length].field_0 = msg.sender
    stor0[stor0.length].field_256 = arg2
    stor0[stor0.length].field_512 = msg.value
    stor0[stor0.length].field_768 = arg1
    stor0[stor0.length].field_1024 = 0
    stor0[stor0.length].field_1280 = 0
    stor0[stor0.length].field_1536 = 0
    stor0[stor0.length].field_1792 = block.timestamp
    stor0[stor0.length].field_2048 = 0
    stor0[stor0.length].field_2304 = 0
    emit MetaEvidence(Array(len=arg3.length, data=arg3[all]), stor0.length - 1);
    return (stor0.length - 1)
}

function executeTransaction(uint256 arg1) {
    require arg1 < stor0.length
    if block.timestamp - stor0[arg1].field_1792 < stor0[arg1].field_768:
        revert with 0, 'The timeout has not passed yet.'
    require stor0[arg1].field_2048 <= 4
    if stor0[arg1].field_2048:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The transaction shouldn't be disputed.'
    call stor0[arg1].field_256 with:
       value stor0[arg1].field_512 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor0[arg1].field_512 = 0
    stor0[arg1].field_2048 = 4
}

function timeOutBySender(uint256 arg1) {
    require arg1 < stor0.length
    require stor0[arg1].field_2048 <= 4
    if stor0[arg1].field_2048 != 2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The transaction is not waiting on the receiver.'
    if block.timestamp - stor0[arg1].field_1792 < feeTimeout:
        revert with 0, 'Timeout time has not passed yet.'
    require arg1 < stor0.length
    call stor0[arg1].field_0 with:
       value stor0[arg1].field_512 + stor0[arg1].field_1280 wei
         gas 2300 * is_zero(value) wei
    stor0[arg1].field_512 = 0
    stor0[arg1].field_1280 = 0
    stor0[arg1].field_1536 = 0
    stor0[arg1].field_2048 = 4
}

function timeOutByReceiver(uint256 arg1) {
    require arg1 < stor0.length
    require stor0[arg1].field_2048 <= 4
    if stor0[arg1].field_2048 != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The transaction is not waiting on the sender.'
    if block.timestamp - stor0[arg1].field_1792 < feeTimeout:
        revert with 0, 'Timeout time has not passed yet.'
    require arg1 < stor0.length
    call stor0[arg1].field_256 with:
       value stor0[arg1].field_512 + stor0[arg1].field_1536 wei
         gas 2300 * is_zero(value) wei
    stor0[arg1].field_512 = 0
    stor0[arg1].field_1280 = 0
    stor0[arg1].field_1536 = 0
    stor0[arg1].field_2048 = 4
}

function appeal(uint256 arg1) payable {
    require arg1 < stor0.length
    mem[196] = uint256(arbitratorExtraData.field_0)
    idx = 196
    s = 0
    while arbitratorExtraData.length + 196 > idx + 32:
        mem[idx + 32] = arbitratorExtraData[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require ext_code.size(arbitratorAddress)
    call arbitratorAddress.appeal(uint256 arg1, bytes arg2) with:
       value msg.value wei
         gas gas_remaining wei
        args stor0[arg1].field_1024, Array(len=arbitratorExtraData.length, data=mem[196 len arbitratorExtraData.length + (floor32(arbitratorExtraData.length - 1) + -arbitratorExtraData.length + 32 % 32)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function pay(uint256 arg1, uint256 arg2) {
    require arg1 < stor0.length
    if stor0[arg1].field_0 != msg.sender:
        revert with 0, 'The caller must be the sender.'
    require stor0[arg1].field_2048 <= 4
    if stor0[arg1].field_2048:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The transaction shouldn't be disputed.'
    if arg2 > stor0[arg1].field_512:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'The amount paid has to be less than or equal to the transaction.'
    call stor0[arg1].field_256 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor0[arg1].field_512 -= arg2
}

function reimburse(uint256 arg1, uint256 arg2) {
    require arg1 < stor0.length
    if stor0[arg1].field_256 != msg.sender:
        revert with 0, 'The caller must be the receiver.'
    require stor0[arg1].field_2048 <= 4
    if stor0[arg1].field_2048:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The transaction shouldn't be disputed.'
    if arg2 > stor0[arg1].field_512:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'The amount reimbursed has to be less or equal than the transaction.'
    call stor0[arg1].field_0 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor0[arg1].field_512 -= arg2
}

function getTransactionIDsByAddress(address arg1) {
    idx = 0
    s = 0
    while idx < stor0.length:
        mem[0] = 0
        if stor0[idx].field_0 != arg1:
            require idx < stor0.length
            mem[0] = 0
            if stor0[idx].field_256 != arg1:
                idx = idx + 1
                s = s
                continue 
        idx = idx + 1
        s = s + 1
        continue 
    if s:
        mem[128 len 32 * s] = code.data[8291 len 32 * s]
    idx = 0
    t = 0
    while idx < stor0.length:
        mem[0] = 0
        if stor0[idx].field_0 != arg1:
            require idx < stor0.length
            mem[0] = 0
            if stor0[idx].field_256 != arg1:
                idx = idx + 1
                t = t
                continue 
        require t < s
        mem[(32 * t) + 128] = idx
        idx = idx + 1
        t = t + 1
        continue 
    mem[(32 * s) + 192 len floor32(s)] = mem[128 len floor32(s)]
    return Array(len=s, data=mem[128 len floor32(s)], mem[(32 * s) + floor32(s) + 192 len (32 * s) - floor32(s)])
}

function rule(uint256 arg1, uint256 arg2) {
    require disputeIDtoTransactionID[arg1] < stor0.length
    if arbitratorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The caller must be the arbitrator.'
    require stor0[stor4[arg1]].field_2048 <= 4
    if stor0[stor4[arg1]].field_2048 != 3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The dispute has already been resolved.'
    emit Ruling(arg2, msg.sender, arg1);
    require disputeIDtoTransactionID[arg1] < stor0.length
    if arg2 > 2:
        revert with 0, 'Invalid ruling.'
    if arg2 == 1:
        call stor0[stor4[arg1]].field_0 with:
           value stor0[stor4[arg1]].field_512 + stor0[stor4[arg1]].field_1280 wei
             gas 2300 * is_zero(value) wei
    else:
        if arg2 == 2:
            call stor0[stor4[arg1]].field_256 with:
               value stor0[stor4[arg1]].field_512 + stor0[stor4[arg1]].field_1536 wei
                 gas 2300 * is_zero(value) wei
        else:
            call stor0[stor4[arg1]].field_0 with:
               value stor0[stor4[arg1]].field_1280 + stor0[stor4[arg1]].field_512 / 2 wei
                 gas 2300 * is_zero(value) wei
            call stor0[stor4[arg1]].field_256 with:
               value stor0[stor4[arg1]].field_1280 + stor0[stor4[arg1]].field_512 / 2 wei
                 gas 2300 * is_zero(value) wei
    stor0[stor4[arg1]].field_512 = 0
    stor0[stor4[arg1]].field_1280 = 0
    stor0[stor4[arg1]].field_1536 = 0
    stor0[stor4[arg1]].field_2048 = 4
}

function payArbitrationFeeBySender(uint256 arg1) payable {
    require arg1 < stor0.length
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
    require stor0[arg1].field_2048 <= 4
    if stor0[arg1].field_2048 >= 3:
        revert with 0, 'Dispute has already been created or because the transaction has been executed.'
    if stor0[arg1].field_0 != msg.sender:
        revert with 0, 'The caller must be the sender.'
    stor0[arg1].field_1280 += msg.value
    if ext_call.return_data[0] > msg.value + stor0[arg1].field_1280:
        revert with 0, 'The sender fee must cover arbitration costs.'
    stor0[arg1].field_1792 = block.timestamp
    if ext_call.return_data[0] > stor0[arg1].field_1536:
        stor0[arg1].field_2048 = 2
        emit 0xc74b9f7d: 1, arg1
    else:
        require arg1 < stor0.length
        stor0[arg1].field_2048 = 3
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
           value ext_call.return_data[0] wei
             gas gas_remaining wei
            args 2, Array(len=arbitratorExtraData.length, data=mem[196 len arbitratorExtraData.length + (floor32(arbitratorExtraData.length - 1) + -arbitratorExtraData.length + 32 % 32)])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        stor0[arg1].field_1024 = ext_call.return_data[0]
        disputeIDtoTransactionID[ext_call.return_data[0]] = arg1
        emit Dispute(arg1, arg1, arbitratorAddress, stor0[arg1].field_1024);
        if stor0[arg1].field_1280 > ext_call.return_data[0]:
            stor0[arg1].field_1280 = ext_call.return_data[0]
            call stor0[arg1].field_0 with:
               value stor0[arg1].field_1280 - ext_call.return_data[0] wei
                 gas 2300 * is_zero(value) wei
        if stor0[arg1].field_1536 > ext_call.return_data[0]:
            stor0[arg1].field_1536 = ext_call.return_data[0]
            call stor0[arg1].field_256 with:
               value stor0[arg1].field_1536 - ext_call.return_data[0] wei
                 gas 2300 * is_zero(value) wei
}

function payArbitrationFeeByReceiver(uint256 arg1) payable {
    require arg1 < stor0.length
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
    require stor0[arg1].field_2048 <= 4
    if stor0[arg1].field_2048 >= 3:
        revert with 0, 'Dispute has already been created or because the transaction has been executed.'
    if stor0[arg1].field_256 != msg.sender:
        revert with 0, 'The caller must be the receiver.'
    stor0[arg1].field_1536 += msg.value
    if ext_call.return_data[0] > msg.value + stor0[arg1].field_1536:
        revert with 0, 'The receiver fee must cover arbitration costs.'
    stor0[arg1].field_1792 = block.timestamp
    if ext_call.return_data[0] > stor0[arg1].field_1280:
        stor0[arg1].field_2048 = 1
        emit 0xc74b9f7d: 0, arg1
    else:
        require arg1 < stor0.length
        stor0[arg1].field_2048 = 3
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
           value ext_call.return_data[0] wei
             gas gas_remaining wei
            args 2, Array(len=arbitratorExtraData.length, data=mem[196 len arbitratorExtraData.length + (floor32(arbitratorExtraData.length - 1) + -arbitratorExtraData.length + 32 % 32)])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        stor0[arg1].field_1024 = ext_call.return_data[0]
        disputeIDtoTransactionID[ext_call.return_data[0]] = arg1
        emit Dispute(arg1, arg1, arbitratorAddress, stor0[arg1].field_1024);
        if stor0[arg1].field_1280 > ext_call.return_data[0]:
            stor0[arg1].field_1280 = ext_call.return_data[0]
            call stor0[arg1].field_0 with:
               value stor0[arg1].field_1280 - ext_call.return_data[0] wei
                 gas 2300 * is_zero(value) wei
        if stor0[arg1].field_1536 > ext_call.return_data[0]:
            stor0[arg1].field_1536 = ext_call.return_data[0]
            call stor0[arg1].field_256 with:
               value stor0[arg1].field_1536 - ext_call.return_data[0] wei
                 gas 2300 * is_zero(value) wei
}



}
