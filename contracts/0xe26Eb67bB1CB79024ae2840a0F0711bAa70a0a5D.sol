contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
array of uint256 stor4;
uint256 stor7;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
array of struct stor13;
address stor14;
uint256 stor15;

function _fallback() payable {
    stor1.length = 0
    stor2.length = 0
    stor3.length = 0
    stor7 = 75
    stor9 = 3
    stor10 = 150 * 10^18
    stor11 = 75
    stor12 = 5
    stor15 = block.timestamp
    require not msg.value
    mem[64] = 128
    stor0 = code.data[6683 len 20]
    stor14 = msg.sender
    idx = 0
    while idx < 6:
        stor13.length++
        if not stor13.length > stor13.length + 1:
            mem[0] = 13
            _20 = mem[64]
            mem[64] = mem[64] + 160
            mem[_20] = stor14
            mem[_20 + 32] = idx + 4
            mem[_20 + 64] = block.timestamp
            mem[_20 + 96] = (48 * 24 * 3600 * idx) + (48 * 24 * 3600)
            if idx > 3:
                mem[_20 + 128] = 2
                stor13[stor13.length].field_0 = stor14
                uint256(stor13[stor13.length].field_256) = idx + 4
                uint256(stor13[stor13.length].field_512) = block.timestamp
                uint256(stor13[stor13.length].field_768) = (48 * 24 * 3600 * idx) + (48 * 24 * 3600)
                uint256(stor13[stor13.length].field_1024) = 2
            else:
                mem[_20 + 128] = 1
                stor13[stor13.length].field_0 = stor14
                uint256(stor13[stor13.length].field_256) = idx + 4
                uint256(stor13[stor13.length].field_512) = block.timestamp
                uint256(stor13[stor13.length].field_768) = (48 * 24 * 3600 * idx) + (48 * 24 * 3600)
                uint256(stor13[stor13.length].field_1024) = 1
        else:
            s = sha3(13) + (5 * stor13.length) + 5
            while sha3(13) + (5 * stor13.length) > s:
                stor[s] = 0
                stor1[s] = 0
                stor2[s] = 0
                stor3[s] = 0
                stor4[s] = 0
                s = s + 5
                continue 
            mem[0] = 13
            _44 = mem[64]
            mem[64] = mem[64] + 160
            mem[_44] = stor14
            mem[_44 + 32] = idx + 4
            mem[_44 + 64] = block.timestamp
            mem[_44 + 96] = (48 * 24 * 3600 * idx) + (48 * 24 * 3600)
            if idx > 3:
                mem[_44 + 128] = 2
                stor13[stor13.length].field_0 = stor14
                uint256(stor13[stor13.length].field_256) = idx + 4
                uint256(stor13[stor13.length].field_512) = block.timestamp
                uint256(stor13[stor13.length].field_768) = (48 * 24 * 3600 * idx) + (48 * 24 * 3600)
                uint256(stor13[stor13.length].field_1024) = 2
            else:
                mem[_44 + 128] = 1
                stor13[stor13.length].field_0 = stor14
                uint256(stor13[stor13.length].field_256) = idx + 4
                uint256(stor13[stor13.length].field_512) = block.timestamp
                uint256(stor13[stor13.length].field_768) = (48 * 24 * 3600 * idx) + (48 * 24 * 3600)
                uint256(stor13[stor13.length].field_1024) = 1
        idx = idx + 1
        continue 
    return code.data[503 len 6168]
}



// =====================  Runtime code  =====================


#
#  - getAllInvestorPositions()
#  - tokenFallback(address arg1, uint256 arg2, bytes arg3)
#
address stor0;
uint256 totalDDTforInterest;
uint256 totalStoredDDT;
uint256 totalAffiliateDDT;
mapping of uint256 investedDDT;
mapping of uint256 storedProfit;
mapping of uint256 lastInvest;
uint256 stor7;
mapping of uint256 affiliateCommission;
uint256 stor10;
array of struct stor13;
uint256 startTime;

function storedProfit(address arg1) {
    return storedProfit[arg1]
}

function getAffiliateCommission() {
    return affiliateCommission[address(msg.sender)]
}

function investedDDT(address arg1) {
    return investedDDT[arg1]
}

function startTime() {
    return startTime
}

function lastInvest(address arg1) {
    return lastInvest[arg1]
}

function totalDDTforInterest() {
    return totalDDTforInterest
}

function getInvested() {
    return investedDDT[address(msg.sender)]
}

function affiliateCommission(address arg1) {
    return affiliateCommission[arg1]
}

function totalAffiliateDDT() {
    return totalAffiliateDDT
}

function totalStoredDDT() {
    return totalStoredDDT
}

function _fallback() payable {
    require stor0 == msg.sender
}

function getAge() {
    require startTime <= block.timestamp
    return (block.timestamp - startTime)
}

function getBalance() {
    require ext_code.size(stor0)
    call stor0.0x949e8acd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function getVaultInterestPerDay() {
    if not totalDDTforInterest:
        return 0
    require 3 * totalDDTforInterest / totalDDTforInterest == 3
    return (3 * totalDDTforInterest / 200)
}

function getInvestorPosition(uint256 arg1) {
    require arg1 < stor13.length
    require stor13[arg1].field_512 <= block.timestamp
    require stor13[arg1].field_768
    if stor13[arg1].field_256 < block.timestamp - stor13[arg1].field_512 / stor13[arg1].field_768:
        return stor13[arg1].field_0, stor10, stor13[arg1].field_768, stor13[arg1].field_1024, stor13[arg1].field_512
    require block.timestamp - stor13[arg1].field_512 / stor13[arg1].field_768 <= stor13[arg1].field_256
    return stor13[arg1].field_0, 
           2^(stor13[arg1].field_256 - (block.timestamp - stor13[arg1].field_512 / stor13[arg1].field_768)) * stor10,
           stor13[arg1].field_768,
           stor13[arg1].field_1024,
           stor13[arg1].field_512
}

function getSurplus() {
    if not totalDDTforInterest:
        require totalAffiliateDDT + totalStoredDDT >= totalStoredDDT
        require ext_code.size(stor0)
        call stor0.0x949e8acd with:
             gas gas_remaining - 710 wei
        require ext_call.success
        return (ext_call.return_data[0] - totalAffiliateDDT - totalStoredDDT)
    require stor7 * totalDDTforInterest / totalDDTforInterest == stor7
    require totalAffiliateDDT + totalStoredDDT >= totalStoredDDT
    require stor7 * totalDDTforInterest / 100 >= 0
    require ext_code.size(stor0)
    call stor0.0x949e8acd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return (ext_call.return_data[0] - (stor7 * totalDDTforInterest / 100) - totalAffiliateDDT - totalStoredDDT)
}

function getProfit(address arg1) {
    require lastInvest[address(arg1)] <= block.timestamp
    if not block.timestamp - lastInvest[address(arg1)]:
        if storedProfit[address(arg1)] >= storedProfit[address(arg1)]:
            return storedProfit[address(arg1)]
    else:
        if (block.timestamp * investedDDT[address(arg1)]) - (lastInvest[address(arg1)] * investedDDT[address(arg1)]) / block.timestamp - lastInvest[address(arg1)] == investedDDT[address(arg1)]:
            if ((block.timestamp * investedDDT[address(arg1)]) - (lastInvest[address(arg1)] * investedDDT[address(arg1)]) / 1600 * 3600) + storedProfit[address(arg1)] >= storedProfit[address(arg1)]:
                return (((block.timestamp * investedDDT[address(arg1)]) - (lastInvest[address(arg1)] * investedDDT[address(arg1)]) / 1600 * 3600) + storedProfit[address(arg1)])
    revert
}

function getProfitFromSender() {
    require lastInvest[address(msg.sender)] <= block.timestamp
    if not block.timestamp - lastInvest[address(msg.sender)]:
        if storedProfit[address(msg.sender)] >= storedProfit[address(msg.sender)]:
            return storedProfit[address(msg.sender)]
    else:
        if (block.timestamp * investedDDT[address(msg.sender)]) - (lastInvest[address(msg.sender)] * investedDDT[address(msg.sender)]) / block.timestamp - lastInvest[address(msg.sender)] == investedDDT[address(msg.sender)]:
            if ((block.timestamp * investedDDT[address(msg.sender)]) - (lastInvest[address(msg.sender)] * investedDDT[address(msg.sender)]) / 1600 * 3600) + storedProfit[address(msg.sender)] >= storedProfit[address(msg.sender)]:
                return (((block.timestamp * investedDDT[address(msg.sender)]) - (lastInvest[address(msg.sender)] * investedDDT[address(msg.sender)]) / 1600 * 3600) + storedProfit[address(msg.sender)])
    revert
}

function withdrawAffiliateCommission() {
    require ext_code.size(stor0)
    call stor0.0x688abbf7 with:
         gas gas_remaining - 710 wei
        args 1
    require ext_call.success
    if ext_call.return_data[0] > 0:
        require ext_code.size(stor0)
        call stor0.0xfdb5a03e with:
             gas gas_remaining - 710 wei
        require ext_call.success
    if eth.balance(this.address) > 10^17:
        call 0x6758c48e9abb42106d53936ddbc841bb44128cf9 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    require affiliateCommission[address(msg.sender)] > 0
    affiliateCommission[address(msg.sender)] = 0
    require affiliateCommission[address(msg.sender)] <= totalAffiliateDDT
    totalAffiliateDDT -= affiliateCommission[address(msg.sender)]
    require ext_code.size(stor0)
    call stor0.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, affiliateCommission[address(msg.sender)]
    require ext_call.success
}

function partialDivest(uint256 arg1) {
    require ext_code.size(stor0)
    call stor0.0x688abbf7 with:
         gas gas_remaining - 710 wei
        args 1
    require ext_call.success
    if ext_call.return_data[0] > 0:
        require ext_code.size(stor0)
        call stor0.0xfdb5a03e with:
             gas gas_remaining - 710 wei
        require ext_call.success
    if eth.balance(this.address) > 10^17:
        call 0x6758c48e9abb42106d53936ddbc841bb44128cf9 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    require arg1 <= investedDDT[address(msg.sender)]
    require arg1
    require stor7 * arg1 / arg1 == stor7
    require stor7 * arg1 / 100 > 0
    require lastInvest[address(msg.sender)] <= block.timestamp
    if not block.timestamp - lastInvest[address(msg.sender)]:
        require storedProfit[address(msg.sender)] >= storedProfit[address(msg.sender)]
    else:
        require (block.timestamp * investedDDT[address(msg.sender)]) - (lastInvest[address(msg.sender)] * investedDDT[address(msg.sender)]) / block.timestamp - lastInvest[address(msg.sender)] == investedDDT[address(msg.sender)]
        require ((block.timestamp * investedDDT[address(msg.sender)]) - (lastInvest[address(msg.sender)] * investedDDT[address(msg.sender)]) / 1600 * 3600) + storedProfit[address(msg.sender)] >= storedProfit[address(msg.sender)]
        storedProfit[address(msg.sender)] += (block.timestamp * investedDDT[address(msg.sender)]) - (lastInvest[address(msg.sender)] * investedDDT[address(msg.sender)]) / 1600 * 3600
    require arg1 <= investedDDT[address(msg.sender)]
    investedDDT[address(msg.sender)] -= arg1
    lastInvest[address(msg.sender)] = block.timestamp
    require arg1 <= totalDDTforInterest
    totalDDTforInterest -= arg1
    require storedProfit[address(msg.sender)] <= storedProfit[address(msg.sender)]
    require totalStoredDDT >= totalStoredDDT
    require ext_code.size(stor0)
    call stor0.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, stor7 * arg1 / 100
    require ext_call.success
}

function divest() {
    require ext_code.size(stor0)
    call stor0.0x688abbf7 with:
         gas gas_remaining - 710 wei
        args 1
    require ext_call.success
    if ext_call.return_data[0] > 0:
        require ext_code.size(stor0)
        call stor0.0xfdb5a03e with:
             gas gas_remaining - 710 wei
        require ext_call.success
    if eth.balance(this.address) > 10^17:
        call 0x6758c48e9abb42106d53936ddbc841bb44128cf9 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    require investedDDT[address(msg.sender)]
    require stor7 * investedDDT[address(msg.sender)] / investedDDT[address(msg.sender)] == stor7
    require stor7 * investedDDT[address(msg.sender)] / 100 > 0
    require lastInvest[address(msg.sender)] <= block.timestamp
    if not block.timestamp - lastInvest[address(msg.sender)]:
        require storedProfit[address(msg.sender)] >= storedProfit[address(msg.sender)]
    else:
        require (block.timestamp * investedDDT[address(msg.sender)]) - (lastInvest[address(msg.sender)] * investedDDT[address(msg.sender)]) / block.timestamp - lastInvest[address(msg.sender)] == investedDDT[address(msg.sender)]
        require ((block.timestamp * investedDDT[address(msg.sender)]) - (lastInvest[address(msg.sender)] * investedDDT[address(msg.sender)]) / 1600 * 3600) + storedProfit[address(msg.sender)] >= storedProfit[address(msg.sender)]
        storedProfit[address(msg.sender)] += (block.timestamp * investedDDT[address(msg.sender)]) - (lastInvest[address(msg.sender)] * investedDDT[address(msg.sender)]) / 1600 * 3600
    investedDDT[address(msg.sender)] = 0
    lastInvest[address(msg.sender)] = block.timestamp
    require investedDDT[address(msg.sender)] <= totalDDTforInterest
    totalDDTforInterest -= investedDDT[address(msg.sender)]
    require storedProfit[address(msg.sender)] <= storedProfit[address(msg.sender)]
    require totalStoredDDT >= totalStoredDDT
    require ext_code.size(stor0)
    call stor0.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, stor7 * investedDDT[address(msg.sender)] / 100
    require ext_call.success
}

function withdraw() {
    require ext_code.size(stor0)
    call stor0.0x688abbf7 with:
         gas gas_remaining - 710 wei
        args 1
    require ext_call.success
    if ext_call.return_data[0] > 0:
        require ext_code.size(stor0)
        call stor0.0xfdb5a03e with:
             gas gas_remaining - 710 wei
        require ext_call.success
    if eth.balance(this.address) > 10^17:
        call 0x6758c48e9abb42106d53936ddbc841bb44128cf9 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    require lastInvest[address(msg.sender)] <= block.timestamp
    if not block.timestamp - lastInvest[address(msg.sender)]:
        require storedProfit[address(msg.sender)] >= storedProfit[address(msg.sender)]
        require storedProfit[address(msg.sender)] > 0
        storedProfit[address(msg.sender)] = 0
        lastInvest[address(msg.sender)] = block.timestamp
        require storedProfit[address(msg.sender)] <= totalStoredDDT
        totalStoredDDT -= storedProfit[address(msg.sender)]
        require ext_code.size(stor0)
        call stor0.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, storedProfit[address(msg.sender)]
    else:
        require (block.timestamp * investedDDT[address(msg.sender)]) - (lastInvest[address(msg.sender)] * investedDDT[address(msg.sender)]) / block.timestamp - lastInvest[address(msg.sender)] == investedDDT[address(msg.sender)]
        require ((block.timestamp * investedDDT[address(msg.sender)]) - (lastInvest[address(msg.sender)] * investedDDT[address(msg.sender)]) / 1600 * 3600) + storedProfit[address(msg.sender)] >= storedProfit[address(msg.sender)]
        require ((block.timestamp * investedDDT[address(msg.sender)]) - (lastInvest[address(msg.sender)] * investedDDT[address(msg.sender)]) / 1600 * 3600) + storedProfit[address(msg.sender)] > 0
        storedProfit[address(msg.sender)] = 0
        lastInvest[address(msg.sender)] = block.timestamp
        require storedProfit[address(msg.sender)] <= totalStoredDDT
        totalStoredDDT -= storedProfit[address(msg.sender)]
        require ext_code.size(stor0)
        call stor0.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, ((block.timestamp * investedDDT[address(msg.sender)]) - (lastInvest[address(msg.sender)] * investedDDT[address(msg.sender)]) / 1600 * 3600) + storedProfit[address(msg.sender)]
    require ext_call.success
}

function reinvestProfit() {
    require lastInvest[address(msg.sender)] <= block.timestamp
    if not block.timestamp - lastInvest[address(msg.sender)]:
        require storedProfit[address(msg.sender)] >= storedProfit[address(msg.sender)]
        require storedProfit[address(msg.sender)] > 0
        storedProfit[address(msg.sender)] = 0
        require storedProfit[address(msg.sender)] + investedDDT[address(msg.sender)] >= investedDDT[address(msg.sender)]
        investedDDT[address(msg.sender)] += storedProfit[address(msg.sender)]
        lastInvest[address(msg.sender)] = block.timestamp
        require storedProfit[address(msg.sender)] + totalDDTforInterest >= totalDDTforInterest
        totalDDTforInterest += storedProfit[address(msg.sender)]
    else:
        require (block.timestamp * investedDDT[address(msg.sender)]) - (lastInvest[address(msg.sender)] * investedDDT[address(msg.sender)]) / block.timestamp - lastInvest[address(msg.sender)] == investedDDT[address(msg.sender)]
        require ((block.timestamp * investedDDT[address(msg.sender)]) - (lastInvest[address(msg.sender)] * investedDDT[address(msg.sender)]) / 1600 * 3600) + storedProfit[address(msg.sender)] >= storedProfit[address(msg.sender)]
        require ((block.timestamp * investedDDT[address(msg.sender)]) - (lastInvest[address(msg.sender)] * investedDDT[address(msg.sender)]) / 1600 * 3600) + storedProfit[address(msg.sender)] > 0
        storedProfit[address(msg.sender)] = 0
        require ((block.timestamp * investedDDT[address(msg.sender)]) - (lastInvest[address(msg.sender)] * investedDDT[address(msg.sender)]) / 1600 * 3600) + storedProfit[address(msg.sender)] + investedDDT[address(msg.sender)] >= investedDDT[address(msg.sender)]
        investedDDT[address(msg.sender)] = ((block.timestamp * investedDDT[address(msg.sender)]) - (lastInvest[address(msg.sender)] * investedDDT[address(msg.sender)]) / 1600 * 3600) + storedProfit[address(msg.sender)] + investedDDT[address(msg.sender)]
        lastInvest[address(msg.sender)] = block.timestamp
        require ((block.timestamp * investedDDT[address(msg.sender)]) - (lastInvest[address(msg.sender)] * investedDDT[address(msg.sender)]) / 1600 * 3600) + storedProfit[address(msg.sender)] + totalDDTforInterest >= totalDDTforInterest
        totalDDTforInterest = ((block.timestamp * investedDDT[address(msg.sender)]) - (lastInvest[address(msg.sender)] * investedDDT[address(msg.sender)]) / 1600 * 3600) + storedProfit[address(msg.sender)] + totalDDTforInterest
    require storedProfit[address(msg.sender)] <= totalStoredDDT
    totalStoredDDT -= storedProfit[address(msg.sender)]
    require ext_code.size(stor0)
    call stor0.0x688abbf7 with:
         gas gas_remaining - 710 wei
        args 1
    require ext_call.success
    if ext_call.return_data[0] > 0:
        require ext_code.size(stor0)
        call stor0.0xfdb5a03e with:
             gas gas_remaining - 710 wei
        require ext_call.success
    if eth.balance(this.address) > 10^17:
        call 0x6758c48e9abb42106d53936ddbc841bb44128cf9 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}



}
