contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 payments;
uint256 totalPayments;
uint256 diviRate;
uint256 developerTemplateAmountLimit;
address platformWithdrawAccount;
array of struct queryUserContractCount;
mapping of struct stor7;
mapping of uint256 skipMap;

function totalPayments() {
    return totalPayments
}

function queryUserContractCount(address arg1) {
    require msg.sender == arg1
    return queryUserContractCount[address(arg1)].field_0
}

function platformWithdrawAccount() {
    return platformWithdrawAccount
}

function skipMap(uint256 arg1) {
    return skipMap[arg1]
}

function diviRate() {
    return diviRate
}

function owner() {
    return owner
}

function userContractsMap(address arg1, uint256 arg2) {
    require arg2 < queryUserContractCount[arg1].field_0
    return queryUserContractCount[arg1][arg2].field_0, 
           queryUserContractCount[arg1][arg2].field_256,
           queryUserContractCount[arg1][arg2].field_512,
           queryUserContractCount[arg1][arg2].field_768,
           queryUserContractCount[arg1][arg2].field_1024,
           queryUserContractCount[arg1][arg2].field_1280
}

function developerTemplateAmountLimit() {
    return developerTemplateAmountLimit
}

function payments(address arg1) {
    return payments[arg1]
}

function destroy() {
    require msg.sender == owner
    selfdestruct(owner)
}

function destroyAndSend(address arg1) {
    require msg.sender == owner
    selfdestruct(arg1)
}

function _fallback() payable {
    revert
}

function changeDiviRate(uint256 arg1) {
    require msg.sender == owner
    diviRate = arg1
}

function addSkipPrice(uint256 arg1) {
    require msg.sender == owner
    skipMap[arg1] = 1
}

function removeSkipPrice(uint256 arg1) {
    require msg.sender == owner
    skipMap[arg1] = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function changePlatformWithdrawAccount(address arg1) {
    require msg.sender == owner
    platformWithdrawAccount = arg1
}

function changeDeveloperTemplateAmountLimit(uint256 arg1) {
    require msg.sender == owner
    developerTemplateAmountLimit = arg1
}

function withdrawPayments() {
    require payments[address(msg.sender)]
    require eth.balance(this.address) >= payments[address(msg.sender)]
    require payments[address(msg.sender)] <= totalPayments
    totalPayments -= payments[address(msg.sender)]
    payments[address(msg.sender)] = 0
    call msg.sender with:
       value payments[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function publishContractTemplate(uint256 arg1, string arg2, address arg3, string arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, address arg11) {
    require msg.sender == owner
    require not stor7[arg1].field_256
    stor7[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
    stor7[arg1].field_256 = arg3
    stor7[arg1][2][].field_0 = Array(len=arg4.length, data=arg4[all])
    stor7[arg1].field_768 = arg5
    stor7[arg1].field_1024 = arg6
    stor7[arg1].field_1280 = arg8
    stor7[arg1].field_1536 = arg7
    stor7[arg1].field_1792 = arg9
    stor7[arg1].field_2048 = arg10
    stor7[arg1].field_2304 = arg11
    emit ContractTemplatePublished(msg.sender, Array(len=arg2.length, data=arg2[all]), address(arg3), arg1);
}

function queryUserContract(address arg1, uint256 arg2) {
    require msg.sender == arg1
    require arg2 < queryUserContractCount[address(arg1)].field_0
    require ext_code.size(stor7[stor6[address(arg1)][arg2].field_0].field_2304)
    call stor7[stor6[address(arg1)][arg2].field_0].field_2304.0x70a08231 with:
         gas gas_remaining wei
        args queryUserContractCount[address(arg1)][arg2].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg2 < queryUserContractCount[address(arg1)].field_0
    return queryUserContractCount[address(arg1)][arg2].field_0, 
           queryUserContractCount[address(arg1)][arg2].field_256,
           queryUserContractCount[address(arg1)][arg2].field_512,
           queryUserContractCount[address(arg1)][arg2].field_768,
           queryUserContractCount[address(arg1)][arg2].field_1280,
           ext_call.return_data[0]
}

function generateContract(uint256 arg1, uint256 arg2) {
    require stor7[arg1].field_256
    require block.timestamp >= stor7[arg1].field_768
    require block.timestamp <= stor7[arg1].field_1024
    require ext_code.size(stor7[arg1].field_256)
    call stor7[arg1].field_256.generate(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args stor7[arg1].field_2304, msg.sender, stor7[arg1].field_2048
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require block.timestamp + (24 * 3600) >= block.timestamp
    queryUserContractCount[address(msg.sender)].field_0++
    queryUserContractCount[address(msg.sender)][queryUserContractCount[address(msg.sender)].field_0].field_0 = arg1
    queryUserContractCount[address(msg.sender)][queryUserContractCount[address(msg.sender)].field_0].field_256 = arg2
    queryUserContractCount[address(msg.sender)][queryUserContractCount[address(msg.sender)].field_0].field_512 = address(ext_call.return_data[0])
    queryUserContractCount[address(msg.sender)][queryUserContractCount[address(msg.sender)].field_0].field_768 = 1
    queryUserContractCount[address(msg.sender)][queryUserContractCount[address(msg.sender)].field_0].field_1024 = block.timestamp
    queryUserContractCount[address(msg.sender)][queryUserContractCount[address(msg.sender)].field_0].field_1280 = block.timestamp + (24 * 3600)
    emit ContractCreated(arg1, arg2, address(ext_call.return_data[0]), msg.sender);
    return address(ext_call.return_data[0])
}

function contractTemplateAddresses(uint256 arg1) {
    mem[32] = 7
    mem[96] = stor7[arg1].length
    mem[128] = stor7[arg1].field_0
    idx = 128
    s = 0
    while stor7[arg1].length + 96 > idx:
        mem[idx + 32] = stor7[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor7[arg1].length) + ceil32(stor7[arg1][2].length) + 160
    mem[ceil32(stor7[arg1].length) + 128] = stor7[arg1][2].length
    mem[0] = sha3(arg1, 7) + 2
    mem[ceil32(stor7[arg1].length) + 160] = stor7[arg1][2].field_0
    idx = ceil32(stor7[arg1].length) + 160
    s = 0
    while ceil32(stor7[arg1].length) + stor7[arg1][2].length + 128 > idx:
        mem[idx + 32] = stor7[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor7[arg1].length) + ceil32(stor7[arg1][2].length) + 192] = stor7[arg1].field_256
    mem[ceil32(stor7[arg1].length) + ceil32(stor7[arg1][2].length) + 256] = stor7[arg1].field_768
    mem[ceil32(stor7[arg1].length) + ceil32(stor7[arg1][2].length) + 288] = stor7[arg1].field_1024
    mem[ceil32(stor7[arg1].length) + ceil32(stor7[arg1][2].length) + 320] = stor7[arg1].field_1280
    mem[ceil32(stor7[arg1].length) + ceil32(stor7[arg1][2].length) + 352] = stor7[arg1].field_1536
    mem[ceil32(stor7[arg1].length) + ceil32(stor7[arg1][2].length) + 384] = stor7[arg1].field_1792
    mem[ceil32(stor7[arg1].length) + ceil32(stor7[arg1][2].length) + 416] = stor7[arg1].field_2048
    mem[ceil32(stor7[arg1].length) + ceil32(stor7[arg1][2].length) + 448] = stor7[arg1].field_2304
    mem[ceil32(stor7[arg1].length) + ceil32(stor7[arg1][2].length) + 160] = 320
    mem[ceil32(stor7[arg1].length) + ceil32(stor7[arg1][2].length) + 480] = stor7[arg1].length
    mem[ceil32(stor7[arg1].length) + ceil32(stor7[arg1][2].length) + 512 len ceil32(stor7[arg1].length)] = mem[128 len ceil32(stor7[arg1].length)]
    mem[ceil32(stor7[arg1].length) + ceil32(stor7[arg1][2].length) + 224] = stor7[arg1].length + 352
    mem[stor7[arg1].length + ceil32(stor7[arg1].length) + ceil32(stor7[arg1][2].length) + 512] = stor7[arg1][2].length
    mem[stor7[arg1].length + ceil32(stor7[arg1].length) + ceil32(stor7[arg1][2].length) + 544 len ceil32(stor7[arg1][2].length)] = mem[ceil32(stor7[arg1].length) + 160 len ceil32(stor7[arg1][2].length)]
    if not stor7[arg1][2].length % 32:
        return Array(len=stor7[arg1].length, data=mem[128 len ceil32(stor7[arg1].length)], mem[(2 * ceil32(stor7[arg1].length)) + ceil32(stor7[arg1][2].length) + 512 len stor7[arg1][2].length + stor7[arg1].length + -ceil32(stor7[arg1].length) + 32]), 
               stor7[arg1].field_256,
               stor7[arg1].length + 352,
               stor7[arg1].field_768,
               stor7[arg1].field_1024,
               stor7[arg1].field_1280,
               stor7[arg1].field_1536,
               stor7[arg1].field_1792,
               stor7[arg1].field_2048,
               stor7[arg1].field_2304
    mem[floor32(stor7[arg1][2].length) + stor7[arg1].length + ceil32(stor7[arg1].length) + ceil32(stor7[arg1][2].length) + 544] = mem[floor32(stor7[arg1][2].length) + stor7[arg1].length + ceil32(stor7[arg1].length) + ceil32(stor7[arg1][2].length) + -stor7[arg1][2].length % 32 + 576 len stor7[arg1][2].length % 32]
    return Array(len=stor7[arg1].length, data=mem[128 len ceil32(stor7[arg1].length)], mem[(2 * ceil32(stor7[arg1].length)) + ceil32(stor7[arg1][2].length) + 512 len floor32(stor7[arg1][2].length) + stor7[arg1].length + -ceil32(stor7[arg1].length) + 64]), 
           stor7[arg1].field_256,
           stor7[arg1].length + 352,
           stor7[arg1].field_768,
           stor7[arg1].field_1024,
           stor7[arg1].field_1280,
           stor7[arg1].field_1536,
           stor7[arg1].field_1792,
           stor7[arg1].field_2048,
           stor7[arg1].field_2304
}

function queryPublishedContractTemplate(uint256 arg1) {
    mem[32] = 7
    if not stor7[arg1].field_256:
        return 320, 0, 352, 0, 0, 0, 0, 0, 0, 0, 0, 0
    mem[96] = stor7[arg1].length
    mem[128] = stor7[arg1].field_0
    idx = 128
    s = 0
    while stor7[arg1].length + 96 > idx:
        mem[idx + 32] = stor7[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor7[arg1].length) + ceil32(stor7[arg1][2].length) + 160
    mem[ceil32(stor7[arg1].length) + 128] = stor7[arg1][2].length
    mem[0] = sha3(arg1, 7) + 2
    mem[ceil32(stor7[arg1].length) + 160] = stor7[arg1][2].field_0
    idx = ceil32(stor7[arg1].length) + 160
    s = 0
    while ceil32(stor7[arg1].length) + stor7[arg1][2].length + 128 > idx:
        mem[idx + 32] = stor7[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor7[arg1].length) + ceil32(stor7[arg1][2].length) + 192] = stor7[arg1].field_256
    mem[ceil32(stor7[arg1].length) + ceil32(stor7[arg1][2].length) + 256] = stor7[arg1].field_768
    mem[ceil32(stor7[arg1].length) + ceil32(stor7[arg1][2].length) + 288] = stor7[arg1].field_1024
    mem[ceil32(stor7[arg1].length) + ceil32(stor7[arg1][2].length) + 320] = stor7[arg1].field_1536
    mem[ceil32(stor7[arg1].length) + ceil32(stor7[arg1][2].length) + 352] = stor7[arg1].field_1280
    mem[ceil32(stor7[arg1].length) + ceil32(stor7[arg1][2].length) + 384] = stor7[arg1].field_1792
    mem[ceil32(stor7[arg1].length) + ceil32(stor7[arg1][2].length) + 416] = stor7[arg1].field_2048
    mem[ceil32(stor7[arg1].length) + ceil32(stor7[arg1][2].length) + 448] = stor7[arg1].field_2304
    mem[ceil32(stor7[arg1].length) + ceil32(stor7[arg1][2].length) + 160] = 320
    mem[ceil32(stor7[arg1].length) + ceil32(stor7[arg1][2].length) + 480] = stor7[arg1].length
    mem[ceil32(stor7[arg1].length) + ceil32(stor7[arg1][2].length) + 512 len ceil32(stor7[arg1].length)] = mem[128 len ceil32(stor7[arg1].length)]
    mem[ceil32(stor7[arg1].length) + ceil32(stor7[arg1][2].length) + 224] = stor7[arg1].length + 352
    mem[stor7[arg1].length + ceil32(stor7[arg1].length) + ceil32(stor7[arg1][2].length) + 512] = stor7[arg1][2].length
    mem[stor7[arg1].length + ceil32(stor7[arg1].length) + ceil32(stor7[arg1][2].length) + 544 len ceil32(stor7[arg1][2].length)] = mem[ceil32(stor7[arg1].length) + 160 len ceil32(stor7[arg1][2].length)]
    if not stor7[arg1][2].length % 32:
        return Array(len=stor7[arg1].length, data=mem[128 len ceil32(stor7[arg1].length)], mem[(2 * ceil32(stor7[arg1].length)) + ceil32(stor7[arg1][2].length) + 512 len stor7[arg1][2].length + stor7[arg1].length + -ceil32(stor7[arg1].length) + 32]), 
               stor7[arg1].field_256,
               stor7[arg1].length + 352,
               stor7[arg1].field_768,
               stor7[arg1].field_1024,
               stor7[arg1].field_1536,
               stor7[arg1].field_1280,
               stor7[arg1].field_1792,
               stor7[arg1].field_2048,
               stor7[arg1].field_2304
    mem[floor32(stor7[arg1][2].length) + stor7[arg1].length + ceil32(stor7[arg1].length) + ceil32(stor7[arg1][2].length) + 544] = mem[floor32(stor7[arg1][2].length) + stor7[arg1].length + ceil32(stor7[arg1].length) + ceil32(stor7[arg1][2].length) + -stor7[arg1][2].length % 32 + 576 len stor7[arg1][2].length % 32]
    return Array(len=stor7[arg1].length, data=mem[128 len ceil32(stor7[arg1].length)], mem[(2 * ceil32(stor7[arg1].length)) + ceil32(stor7[arg1][2].length) + 512 len floor32(stor7[arg1][2].length) + stor7[arg1].length + -ceil32(stor7[arg1].length) + 64]), 
           stor7[arg1].field_256,
           stor7[arg1].length + 352,
           stor7[arg1].field_768,
           stor7[arg1].field_1024,
           stor7[arg1].field_1536,
           stor7[arg1].field_1280,
           stor7[arg1].field_1792,
           stor7[arg1].field_2048,
           stor7[arg1].field_2304
}

function returnOfIncome(address arg1, uint256 arg2) {
    require msg.sender == arg1
    require arg2 < queryUserContractCount[address(arg1)].field_0
    require queryUserContractCount[address(arg1)][arg2].field_512
    require arg2 < queryUserContractCount[address(arg1)].field_0
    require queryUserContractCount[address(arg1)][arg2].field_768 == 1
    require arg2 < queryUserContractCount[address(arg1)].field_0
    require stor7[stor6[address(arg1)][arg2].field_0].field_256
    require arg2 < queryUserContractCount[address(arg1)].field_0
    require queryUserContractCount[address(arg1)][arg2].field_1024 + (24 * 3600) >= queryUserContractCount[address(arg1)][arg2].field_1024
    require block.timestamp <= queryUserContractCount[address(arg1)][arg2].field_1024 + (24 * 3600)
    require arg2 < queryUserContractCount[address(arg1)].field_0
    require ext_code.size(stor7[stor6[address(arg1)][arg2].field_0].field_2304)
    call stor7[stor6[address(arg1)][arg2].field_0].field_2304.0x70a08231 with:
         gas gas_remaining wei
        args queryUserContractCount[address(arg1)][arg2].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor7[stor6[address(arg1)][arg2].field_0].field_2304)
    call stor7[stor6[address(arg1)][arg2].field_0].field_2304.0x313ce567 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= stor7[stor6[address(arg1)][arg2].field_0].field_1280
    if stor7[stor6[address(arg1)][arg2].field_0].field_1792:
        require stor7[stor6[address(arg1)][arg2].field_0].field_1792
        require stor7[stor6[address(arg1)][arg2].field_0].field_1792 * uint8(10^ext_call.return_data[0]) / stor7[stor6[address(arg1)][arg2].field_0].field_1792 == uint8(10^ext_call.return_data[0])
    if ext_call.return_data[0] <= stor7[stor6[address(arg1)][arg2].field_0].field_1792 * uint8(10^ext_call.return_data[0]):
        if stor7[stor6[address(arg1)][arg2].field_0].field_1536:
            require stor7[stor6[address(arg1)][arg2].field_0].field_1536
            require stor7[stor6[address(arg1)][arg2].field_0].field_1536 * stor7[stor6[address(arg1)][arg2].field_0].field_2048 / stor7[stor6[address(arg1)][arg2].field_0].field_1536 == stor7[stor6[address(arg1)][arg2].field_0].field_2048
        if stor7[stor6[address(arg1)][arg2].field_0].field_1536 * stor7[stor6[address(arg1)][arg2].field_0].field_2048:
            require stor7[stor6[address(arg1)][arg2].field_0].field_1536 * stor7[stor6[address(arg1)][arg2].field_0].field_2048
            require stor7[stor6[address(arg1)][arg2].field_0].field_1536 * stor7[stor6[address(arg1)][arg2].field_0].field_2048 * ext_call.return_data[0] / stor7[stor6[address(arg1)][arg2].field_0].field_1536 * stor7[stor6[address(arg1)][arg2].field_0].field_2048 == ext_call.return_data[0]
        require arg2 < queryUserContractCount[address(arg1)].field_0
        require ext_code.size(stor7[stor6[address(arg1)][arg2].field_0].field_2304)
        call stor7[stor6[address(arg1)][arg2].field_0].field_2304.0xa9059cbb with:
             gas gas_remaining wei
            args queryUserContractCount[address(arg1)][arg2].field_512, stor7[stor6[address(arg1)][arg2].field_0].field_1536 * stor7[stor6[address(arg1)][arg2].field_0].field_2048 * ext_call.return_data[0] / 10 * 3600
    else:
        if stor7[stor6[address(arg1)][arg2].field_0].field_1792:
            require stor7[stor6[address(arg1)][arg2].field_0].field_1792
            require stor7[stor6[address(arg1)][arg2].field_0].field_1792 * uint8(10^ext_call.return_data[0]) / stor7[stor6[address(arg1)][arg2].field_0].field_1792 == uint8(10^ext_call.return_data[0])
        if stor7[stor6[address(arg1)][arg2].field_0].field_1536:
            require stor7[stor6[address(arg1)][arg2].field_0].field_1536
            require stor7[stor6[address(arg1)][arg2].field_0].field_1536 * stor7[stor6[address(arg1)][arg2].field_0].field_2048 / stor7[stor6[address(arg1)][arg2].field_0].field_1536 == stor7[stor6[address(arg1)][arg2].field_0].field_2048
        if stor7[stor6[address(arg1)][arg2].field_0].field_1536 * stor7[stor6[address(arg1)][arg2].field_0].field_2048:
            require stor7[stor6[address(arg1)][arg2].field_0].field_1536 * stor7[stor6[address(arg1)][arg2].field_0].field_2048
            require stor7[stor6[address(arg1)][arg2].field_0].field_1536 * stor7[stor6[address(arg1)][arg2].field_0].field_2048 * stor7[stor6[address(arg1)][arg2].field_0].field_1792 * uint8(10^ext_call.return_data[0]) / stor7[stor6[address(arg1)][arg2].field_0].field_1536 * stor7[stor6[address(arg1)][arg2].field_0].field_2048 == stor7[stor6[address(arg1)][arg2].field_0].field_1792 * uint8(10^ext_call.return_data[0])
        require arg2 < queryUserContractCount[address(arg1)].field_0
        require ext_code.size(stor7[stor6[address(arg1)][arg2].field_0].field_2304)
        call stor7[stor6[address(arg1)][arg2].field_0].field_2304.0xa9059cbb with:
             gas gas_remaining wei
            args queryUserContractCount[address(arg1)][arg2].field_512, stor7[stor6[address(arg1)][arg2].field_0].field_1536 * stor7[stor6[address(arg1)][arg2].field_0].field_2048 * stor7[stor6[address(arg1)][arg2].field_0].field_1792 * uint8(10^ext_call.return_data[0]) / 10 * 3600
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require arg2 < queryUserContractCount[address(arg1)].field_0
    queryUserContractCount[address(arg1)][arg2].field_768 = 2
}



}
