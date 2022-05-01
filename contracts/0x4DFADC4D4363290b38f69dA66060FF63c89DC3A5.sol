contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor3;
uint256 stor4;
address stor5;

function _fallback() {
    stor0 = msg.sender
    stor3 = 5
    stor5 = 0xbe62b2978bc887f0600a3ffc78b043b549e41e33
    stor4 = 5 * 10^17
    return code.data[202 len 9316]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint256 payments;
uint256 totalPayments;
uint256 diviRate;
uint256 developerTemplateAmountLimit;
address platformWithdrawAccount;
array of struct queryUserContractCount;
mapping of struct contractTemplate;
mapping of uint256 skipMap;

function totalPayments() {
    return totalPayments
}

function contractTemplateAddresses(uint256 arg1) {
    mem[256] = uint256(contractTemplate[arg1].field_0)
    idx = 256
    s = 0
    while contractTemplate[arg1].length + 256 > idx + 32:
        mem[idx + 32] = uint256(contractTemplate[arg1][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[contractTemplate[arg1].length + (floor32(contractTemplate[arg1].length - 1) + -contractTemplate[arg1].length + 32 % 32) + 256] = contractTemplate[arg1][3].length
    mem[contractTemplate[arg1].length + (floor32(contractTemplate[arg1].length - 1) + -contractTemplate[arg1].length + 32 % 32) + 288] = uint256(contractTemplate[arg1][3].field_0)
    idx = contractTemplate[arg1].length + (floor32(contractTemplate[arg1].length - 1) + -contractTemplate[arg1].length + 32 % 32) + 288
    s = 0
    while contractTemplate[arg1].length + (floor32(contractTemplate[arg1].length - 1) + -contractTemplate[arg1].length + 32 % 32) + contractTemplate[arg1][3].length + 288 > idx + 32:
        mem[idx + 32] = uint256(contractTemplate[arg1][s + 3].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=contractTemplate[arg1].length, data=mem[256 len contractTemplate[arg1].length + (floor32(contractTemplate[arg1].length - 1) + -contractTemplate[arg1].length + 32 % 32) + contractTemplate[arg1][3].length + (floor32(contractTemplate[arg1][3].length - 1) + -contractTemplate[arg1][3].length + 32 % 32) + 32]), 
           address(contractTemplate[arg1].field_256),
           address(contractTemplate[arg1].field_512),
           contractTemplate[arg1].length + (floor32(contractTemplate[arg1].length - 1) + -contractTemplate[arg1].length + 32 % 32) + 160
}

function queryUserContractCount(address arg1) {
    return uint256(queryUserContractCount[address(arg1)].field_0)
}

function platformWithdrawAccount() {
    return platformWithdrawAccount
}

function queryUserContract(address arg1, uint256 arg2) {
    require arg2 < uint256(queryUserContractCount[address(arg1)].field_0)
    mem[160] = uint256(queryUserContractCount[address(arg1)][arg2].field_0)
    idx = 160
    s = 0
    while queryUserContractCount[address(arg1)][arg2].length + 128 > idx:
        mem[idx + 32] = uint256(queryUserContractCount[address(arg1)][(3 * arg2) + s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=queryUserContractCount[address(arg1)][arg2].length, data=mem[160 len queryUserContractCount[address(arg1)][arg2].length]), 
           uint256(queryUserContractCount[address(arg1)][arg2].field_256),
           address(queryUserContractCount[address(arg1)][arg2].field_512)
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
    require arg2 < uint256(queryUserContractCount[arg1].field_0)
    mem[224] = uint256(queryUserContractCount[arg1][arg2].field_0)
    idx = 224
    s = 0
    while queryUserContractCount[arg1][arg2].length + 224 > idx + 32:
        mem[idx + 32] = uint256(queryUserContractCount[arg1][(3 * arg2) + s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=queryUserContractCount[arg1][arg2].length, data=mem[224 len queryUserContractCount[arg1][arg2].length + (floor32(queryUserContractCount[arg1][arg2].length - 1) + -queryUserContractCount[arg1][arg2].length + 32 % 32)]), 
           uint256(queryUserContractCount[arg1][arg2].field_256),
           address(queryUserContractCount[arg1][arg2].field_512)
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

function changePlatformWithdrawAccount(address arg1) {
    require msg.sender == owner
    platformWithdrawAccount = arg1
}

function changeDeveloperTemplateAmountLimit(uint256 arg1) {
    require msg.sender == owner
    developerTemplateAmountLimit = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
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

function sub_645775f9(?) {
    if owner != msg.sender:
        require arg1 > developerTemplateAmountLimit
    require not address(contractTemplate[arg1].field_256)
    uint256(contractTemplate[arg1][].field_0) = Array(len=arg2.length, data=arg2[all])
    address(contractTemplate[arg1].field_256) = arg3
    address(contractTemplate[arg1].field_512) = arg4
    uint256(contractTemplate[arg1][3][].field_0) = Array(len=arg5.length, data=arg5[all])
    emit ContractTemplatePublished(msg.sender, Array(len=arg2.length, data=arg2[all]), address(arg3), arg1);
}

function sub_74d8bcb7(?) {
    require msg.sender == owner
    if address(contractTemplate[arg1].field_256):
        require ext_code.size(address(contractTemplate[arg1].field_256))
        call address(contractTemplate[arg1].field_256).generate(address arg1) with:
             gas gas_remaining - 710 wei
            args msg.sender
        require ext_call.success
        uint256(queryUserContractCount[address(msg.sender)].field_0)++
        if not uint256(queryUserContractCount[address(msg.sender)].field_0) <= uint256(queryUserContractCount[address(msg.sender)].field_0) + 1:
            mem[0] = sha3(address(msg.sender), 6)
            idx = (3 * uint256(queryUserContractCount[address(msg.sender)].field_0)) + 3
            while sha3(sha3(address(msg.sender), 6)) + (3 * uint256(queryUserContractCount[address(msg.sender)].field_0)) > idx + sha3(mem[0]):
                uint256(stor[idx + sha3(mem[0])]) = 0
                if 31 < stor[idx + sha3(mem[0])].length:
                    mem[0] = idx + sha3(mem[0])
                    s = sha3(idx + sha3(mem[0]))
                    while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                address(stor[idx + sha3(mem[0]) + 2]) = 0
                idx = idx + 3
                continue 
        mem[224] = uint256(contractTemplate[arg1].field_0)
        idx = 224
        s = 0
        while contractTemplate[arg1].length + 192 > idx:
            mem[idx + 32] = uint256(contractTemplate[arg1][s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        uint256(queryUserContractCount[address(msg.sender)][uint256(queryUserContractCount[address(msg.sender)].field_0)][].field_0) = Array(len=contractTemplate[arg1].length, data=mem[224 len contractTemplate[arg1].length])
        uint256(queryUserContractCount[address(msg.sender)][uint256(queryUserContractCount[address(msg.sender)].field_0)].field_256) = arg1
        address(queryUserContractCount[address(msg.sender)][uint256(queryUserContractCount[address(msg.sender)].field_0)].field_512) = address(ext_call.return_data[0])
}

function queryPublishedContractTemplate(uint256 arg1) {
    mem[96] = 0
    mem[128] = 0
    mem[32] = 7
    if not address(contractTemplate[arg1].field_256):
        return 128, 0, 0, 160, 0, 0
    mem[160] = contractTemplate[arg1].length
    mem[192] = uint256(contractTemplate[arg1].field_0)
    idx = 192
    s = 0
    while contractTemplate[arg1].length + 160 > idx:
        mem[idx + 32] = uint256(contractTemplate[arg1][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(contractTemplate[arg1].length) + ceil32(contractTemplate[arg1][3].length) + 224
    mem[ceil32(contractTemplate[arg1].length) + 192] = contractTemplate[arg1][3].length
    mem[0] = sha3(arg1, 7) + 3
    mem[ceil32(contractTemplate[arg1].length) + 224] = uint256(contractTemplate[arg1][3].field_0)
    idx = ceil32(contractTemplate[arg1].length) + 224
    s = 0
    while ceil32(contractTemplate[arg1].length) + contractTemplate[arg1][3].length + 192 > idx:
        mem[idx + 32] = uint256(contractTemplate[arg1][s + 3].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(contractTemplate[arg1].length) + ceil32(contractTemplate[arg1][3].length) + 256] = address(contractTemplate[arg1].field_256)
    mem[ceil32(contractTemplate[arg1].length) + ceil32(contractTemplate[arg1][3].length) + 288] = address(contractTemplate[arg1].field_512)
    mem[ceil32(contractTemplate[arg1].length) + ceil32(contractTemplate[arg1][3].length) + 224] = 128
    mem[ceil32(contractTemplate[arg1].length) + ceil32(contractTemplate[arg1][3].length) + 352] = contractTemplate[arg1].length
    mem[ceil32(contractTemplate[arg1].length) + ceil32(contractTemplate[arg1][3].length) + 384 len ceil32(contractTemplate[arg1].length)] = mem[192 len ceil32(contractTemplate[arg1].length)]
    mem[ceil32(contractTemplate[arg1].length) + ceil32(contractTemplate[arg1][3].length) + 320] = contractTemplate[arg1].length + 160
    mem[contractTemplate[arg1].length + ceil32(contractTemplate[arg1].length) + ceil32(contractTemplate[arg1][3].length) + 384] = contractTemplate[arg1][3].length
    mem[contractTemplate[arg1].length + ceil32(contractTemplate[arg1].length) + ceil32(contractTemplate[arg1][3].length) + 416 len ceil32(contractTemplate[arg1][3].length)] = mem[ceil32(contractTemplate[arg1].length) + 224 len ceil32(contractTemplate[arg1][3].length)]
    if not contractTemplate[arg1][3].length % 32:
        return Array(len=contractTemplate[arg1].length, data=mem[192 len ceil32(contractTemplate[arg1].length)], mem[(2 * ceil32(contractTemplate[arg1].length)) + ceil32(contractTemplate[arg1][3].length) + 384 len contractTemplate[arg1][3].length + contractTemplate[arg1].length + -ceil32(contractTemplate[arg1].length) + 32]), 
               address(contractTemplate[arg1].field_256),
               address(contractTemplate[arg1].field_512),
               contractTemplate[arg1].length + 160
    mem[floor32(contractTemplate[arg1][3].length) + contractTemplate[arg1].length + ceil32(contractTemplate[arg1].length) + ceil32(contractTemplate[arg1][3].length) + 416] = mem[floor32(contractTemplate[arg1][3].length) + contractTemplate[arg1].length + ceil32(contractTemplate[arg1].length) + ceil32(contractTemplate[arg1][3].length) + -contractTemplate[arg1][3].length % 32 + 448 len contractTemplate[arg1][3].length % 32]
    return Array(len=contractTemplate[arg1].length, data=mem[192 len ceil32(contractTemplate[arg1].length)], mem[(2 * ceil32(contractTemplate[arg1].length)) + ceil32(contractTemplate[arg1][3].length) + 384 len floor32(contractTemplate[arg1][3].length) + contractTemplate[arg1].length + -ceil32(contractTemplate[arg1].length) + 64]), 
           address(contractTemplate[arg1].field_256),
           address(contractTemplate[arg1].field_512),
           contractTemplate[arg1].length + 160
}

function _fallback() payable {
    require not skipMap[msg.value]
    require address(contractTemplate[msg.value].field_256)
    require ext_code.size(address(contractTemplate[msg.value].field_256))
    call address(contractTemplate[msg.value].field_256).generate(address arg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    uint256(queryUserContractCount[address(msg.sender)].field_0)++
    if not uint256(queryUserContractCount[address(msg.sender)].field_0) <= uint256(queryUserContractCount[address(msg.sender)].field_0) + 1:
        mem[0] = sha3(address(msg.sender), 6)
        idx = (3 * uint256(queryUserContractCount[address(msg.sender)].field_0)) + 3
        while sha3(sha3(address(msg.sender), 6)) + (3 * uint256(queryUserContractCount[address(msg.sender)].field_0)) > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])]) = 0
            if 31 < stor[idx + sha3(mem[0])].length:
                mem[0] = idx + sha3(mem[0])
                s = sha3(idx + sha3(mem[0]))
                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            address(stor[idx + sha3(mem[0]) + 2]) = 0
            idx = idx + 3
            continue 
    mem[224] = uint256(contractTemplate[msg.value].field_0)
    idx = 224
    s = 0
    while contractTemplate[msg.value].length + 192 > idx:
        mem[idx + 32] = uint256(contractTemplate[msg.value][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    uint256(queryUserContractCount[address(msg.sender)][uint256(queryUserContractCount[address(msg.sender)].field_0)][].field_0) = Array(len=contractTemplate[msg.value].length, data=mem[224 len contractTemplate[msg.value].length])
    uint256(queryUserContractCount[address(msg.sender)][uint256(queryUserContractCount[address(msg.sender)].field_0)].field_256) = msg.value
    address(queryUserContractCount[address(msg.sender)][uint256(queryUserContractCount[address(msg.sender)].field_0)].field_512) = address(ext_call.return_data[0])
    if not diviRate:
        require payments[stor5] + msg.value >= payments[stor5]
        payments[stor5] += msg.value
        require totalPayments + msg.value >= totalPayments
        totalPayments += msg.value
    else:
        if msg.value:
            require msg.value
            require msg.value * diviRate / msg.value == diviRate
        require msg.value * diviRate / 10 <= msg.value
        require payments[address(stor7[msg.value].field_512)] + (msg.value * diviRate / 10) >= payments[address(stor7[msg.value].field_512)]
        payments[address(stor7[msg.value].field_512)] += msg.value * diviRate / 10
        require totalPayments + (msg.value * diviRate / 10) >= totalPayments
        totalPayments += msg.value * diviRate / 10
        require payments[stor5] + msg.value - (msg.value * diviRate / 10) >= payments[stor5]
        payments[stor5] = payments[stor5] + msg.value - (msg.value * diviRate / 10)
        require totalPayments + msg.value - (msg.value * diviRate / 10) >= totalPayments
        totalPayments = totalPayments + msg.value - (msg.value * diviRate / 10)
    mem[ceil32(contractTemplate[msg.value].length) + 352] = uint256(contractTemplate[msg.value].field_0)
    idx = ceil32(contractTemplate[msg.value].length) + 352
    s = 0
    while ceil32(contractTemplate[msg.value].length) + contractTemplate[msg.value].length + 352 > idx + 32:
        mem[idx + 32] = uint256(contractTemplate[msg.value][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    emit 0xfdf5815a: Array(len=contractTemplate[msg.value].length, data=mem[ceil32(contractTemplate[msg.value].length) + 352 len contractTemplate[msg.value].length + (floor32(contractTemplate[msg.value].length - 1) + -contractTemplate[msg.value].length + 32 % 32)]), msg.value, address(ext_call.return_data[0]), msg.sender
}



}
