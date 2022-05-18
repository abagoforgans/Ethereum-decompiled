contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
mapping of uint256 stor3;
address stor4;
array of struct stor6;

function _fallback() payable {
    stor1 = 0x709a0a8deb88a2d19dab2492f669ef26fd176f6c
    stor4 = 0
    require not msg.value
    stor0 = 10000000 * 10^18
    stor3[address(msg.sender)] = 10000000 * 10^18
    stor6.length++
    if not stor6.length <= stor6.length + 1:
        idx = 2 * stor6.length + 1
        while 2 * stor6.length > idx:
            stor6[idx].field_0 = 0
            stor6[idx].field_256 = 0
            idx = idx + 2
            continue 
    stor6[stor6.length].field_0 = 0
    stor6[stor6.length].field_256 = 0
    stor6[stor6.length].field_256 = 0
    return code.data[323 len 5826]
}



// =====================  Runtime code  =====================


const name = 'ICO Constructor token'

const decimals = 18

const symbol = 'CNR'


uint256 totalSupply;
address platformAddress;
mapping of uint256 allowance;
mapping of uint256 balanceOf;
address grand_factoryAddress;
mapping of uint256 tokens_map;
array of struct tokens_arr;
mapping of uint256 stor7;

function grand_factory() {
    return grand_factoryAddress
}

function tokens_map(address arg1) {
    return tokens_map[arg1]
}

function totalSupply() {
    return totalSupply
}

function platform() {
    return platformAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function tokens_arr(uint256 arg1) {
    require arg1 < tokens_arr.length
    return tokens_arr[arg1].field_0, tokens_arr[arg1].field_256
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
  stop
}

function isPlatform() {
    return (platformAddress == msg.sender)
}

function setGrandFactory(address arg1) {
    require platformAddress == msg.sender
    require arg1
    grand_factoryAddress = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require arg2 + allowance[address(msg.sender)][address(arg1)] >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function addTokenBalance(address arg1, uint256 arg2) {
    require tokens_map[address(msg.sender)]
    require tokens_map[address(arg1)] < tokens_arr.length
    require arg2 + tokens_arr[stor5[address(arg1)]].field_256 >= tokens_arr[stor5[address(arg1)]].field_256
    require tokens_map[address(arg1)] < tokens_arr.length
    tokens_arr[stor5[address(arg1)]].field_256 += arg2
}

function addTokenAddress(address arg1) {
    require grand_factoryAddress == msg.sender
    require not tokens_map[address(arg1)]
    tokens_arr.length++
    if not tokens_arr.length <= tokens_arr.length + 1:
        idx = 2 * tokens_arr.length + 1
        while 2 * tokens_arr.length > idx:
            tokens_arr[idx].field_0 = 0
            tokens_arr[idx].field_256 = 0
            idx = idx + 2
            continue 
    tokens_arr[tokens_arr.length].field_0 = arg1
    tokens_arr[tokens_arr.length].field_256 = 0
    tokens_map[address(arg1)] = tokens_arr.length - 1
}

function getRegisteredTokens() {
    if tokens_arr.length <= 1:
        return ''
    mem[160] = tokens_arr.length - 1
    idx = 1
    while idx < tokens_arr.length:
        mem[0] = 6
        require idx - 1 < mem[160]
        mem[(32 * idx - 1) + 192] = tokens_arr[idx].field_0
        idx = idx + 1
        continue 
    mem[(32 * tokens_arr.length - 1) + 192] = 32
    mem[(32 * tokens_arr.length - 1) + 224] = mem[160]
    mem[(32 * tokens_arr.length - 1) + 256 len floor32(mem[160])] = mem[192 len floor32(mem[160])]
    return 32, mem[(32 * tokens_arr.length - 1) + 224 len (32 * mem[160]) + 32]
}

function takeICOInvestmentsEtherCommission(address arg1) {
    require tokens_map[address(arg1)]
    require ext_code.size(arg1)
    call arg1.getAvailableWithdrawInvestmentsForBeneficiary() with:
         gas gas_remaining wei
    require ext_call.success
    require 0 < tokens_arr.length
    require ext_call.return_data[0] + uint256(tokens_arr.field_256) >= uint256(tokens_arr.field_256)
    require 0 < tokens_arr.length
    uint256(tokens_arr.field_256) += ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.withdrawInvestmentsBeneficiary(address arg1) with:
         gas gas_remaining wei
        args this.address
    require ext_call.success
}

function balanceOfETH(address arg1) {
    require 0 < tokens_arr.length
    if not uint256(tokens_arr.field_256):
        if totalSupply:
            if stor7[address(arg1)][0] <= 0 / totalSupply:
                return ((0 / totalSupply) - stor7[address(arg1)][0])
    else:
        if balanceOf[address(arg1)] * uint256(tokens_arr.field_256) / uint256(tokens_arr.field_256) == balanceOf[address(arg1)]:
            if totalSupply:
                if stor7[address(arg1)][0] <= balanceOf[address(arg1)] * uint256(tokens_arr.field_256) / totalSupply:
                    return ((balanceOf[address(arg1)] * uint256(tokens_arr.field_256) / totalSupply) - stor7[address(arg1)][0])
    revert
}

function balanceOfToken(address arg1, address arg2) {
    require tokens_map[address(arg2)]
    require tokens_map[address(arg2)] < tokens_arr.length
    if not tokens_arr[stor5[address(arg2)]].field_256:
        if totalSupply:
            if stor7[address(arg1)][stor5[address(arg2)]] <= 0 / totalSupply:
                return ((0 / totalSupply) - stor7[address(arg1)][stor5[address(arg2)]])
    else:
        if balanceOf[address(arg1)] * tokens_arr[stor5[address(arg2)]].field_256 / tokens_arr[stor5[address(arg2)]].field_256 == balanceOf[address(arg1)]:
            if totalSupply:
                if stor7[address(arg1)][stor5[address(arg2)]] <= balanceOf[address(arg1)] * tokens_arr[stor5[address(arg2)]].field_256 / totalSupply:
                    return ((balanceOf[address(arg1)] * tokens_arr[stor5[address(arg2)]].field_256 / totalSupply) - stor7[address(arg1)][stor5[address(arg2)]])
    revert
}

function withdrawETH(address arg1) {
    require 0 < tokens_arr.length
    if not uint256(tokens_arr.field_256):
        require totalSupply
        require stor7[address(msg.sender)][0] <= 0 / totalSupply
        require 0 / totalSupply >= stor7[address(msg.sender)][0]
        stor7[address(msg.sender)][0] = 0 / totalSupply
        call arg1 with:
           value (0 / totalSupply) - stor7[address(msg.sender)][0] wei
             gas 2300 * is_zero(value) wei
    else:
        require balanceOf[address(msg.sender)] * uint256(tokens_arr.field_256) / uint256(tokens_arr.field_256) == balanceOf[address(msg.sender)]
        require totalSupply
        require stor7[address(msg.sender)][0] <= balanceOf[address(msg.sender)] * uint256(tokens_arr.field_256) / totalSupply
        require balanceOf[address(msg.sender)] * uint256(tokens_arr.field_256) / totalSupply >= stor7[address(msg.sender)][0]
        stor7[address(msg.sender)][0] = balanceOf[address(msg.sender)] * uint256(tokens_arr.field_256) / totalSupply
        call arg1 with:
           value (balanceOf[address(msg.sender)] * uint256(tokens_arr.field_256) / totalSupply) - stor7[address(msg.sender)][0] wei
             gas 2300 * is_zero(value) wei
    require ext_call.success
}

function withdrawTokens(address arg1, address arg2) {
    require tokens_map[address(arg1)]
    require tokens_map[address(arg1)]
    require tokens_map[address(arg1)] < tokens_arr.length
    if not tokens_arr[stor5[address(arg1)]].field_256:
        require totalSupply
        require stor7[address(msg.sender)][stor5[address(arg1)]] <= 0 / totalSupply
        require 0 / totalSupply >= stor7[address(msg.sender)][stor5[address(arg1)]]
        stor7[address(msg.sender)][stor5[address(arg1)]] = 0 / totalSupply
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), (0 / totalSupply) - stor7[address(msg.sender)][stor5[address(arg1)]]
    else:
        require balanceOf[address(msg.sender)] * tokens_arr[stor5[address(arg1)]].field_256 / tokens_arr[stor5[address(arg1)]].field_256 == balanceOf[address(msg.sender)]
        require totalSupply
        require stor7[address(msg.sender)][stor5[address(arg1)]] <= balanceOf[address(msg.sender)] * tokens_arr[stor5[address(arg1)]].field_256 / totalSupply
        require balanceOf[address(msg.sender)] * tokens_arr[stor5[address(arg1)]].field_256 / totalSupply >= stor7[address(msg.sender)][stor5[address(arg1)]]
        stor7[address(msg.sender)][stor5[address(arg1)]] = balanceOf[address(msg.sender)] * tokens_arr[stor5[address(arg1)]].field_256 / totalSupply
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), (balanceOf[address(msg.sender)] * tokens_arr[stor5[address(arg1)]].field_256 / totalSupply) - stor7[address(msg.sender)][stor5[address(arg1)]]
    require ext_call.success
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    s = 0
    idx = 0
    while idx < tokens_arr.length:
        if not stor7[address(msg.sender)][idx]:
            require balanceOf[address(msg.sender)]
            require 0 / balanceOf[address(msg.sender)] <= stor7[address(msg.sender)][idx]
            stor7[address(msg.sender)][idx] -= 0 / balanceOf[address(msg.sender)]
            require (0 / balanceOf[address(msg.sender)]) + stor7[address(arg1)][idx] >= stor7[address(arg1)][idx]
            mem[0] = idx
            mem[32] = sha3(address(arg1), 7)
            stor7[address(arg1)][idx] += 0 / balanceOf[address(msg.sender)]
            s = 0 / balanceOf[address(msg.sender)]
            idx = idx + 1
            continue 
        require arg2 * stor7[address(msg.sender)][idx] / stor7[address(msg.sender)][idx] == arg2
        require balanceOf[address(msg.sender)]
        require arg2 * stor7[address(msg.sender)][idx] / balanceOf[address(msg.sender)] <= stor7[address(msg.sender)][idx]
        stor7[address(msg.sender)][idx] -= arg2 * stor7[address(msg.sender)][idx] / balanceOf[address(msg.sender)]
        require (arg2 * stor7[address(msg.sender)][idx] / balanceOf[address(msg.sender)]) + stor7[address(arg1)][idx] >= stor7[address(arg1)][idx]
        mem[0] = idx
        mem[32] = sha3(address(arg1), 7)
        stor7[address(arg1)][idx] += arg2 * stor7[address(msg.sender)][idx] / balanceOf[address(msg.sender)]
        s = arg2 * stor7[address(msg.sender)][idx] / balanceOf[address(msg.sender)]
        idx = idx + 1
        continue 
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    s = 0
    idx = 0
    while idx < tokens_arr.length:
        if not stor7[address(arg1)][idx]:
            require balanceOf[address(arg1)]
            require 0 / balanceOf[address(arg1)] <= stor7[address(arg1)][idx]
            stor7[address(arg1)][idx] -= 0 / balanceOf[address(arg1)]
            require (0 / balanceOf[address(arg1)]) + stor7[address(arg2)][idx] >= stor7[address(arg2)][idx]
            mem[0] = idx
            mem[32] = sha3(address(arg2), 7)
            stor7[address(arg2)][idx] += 0 / balanceOf[address(arg1)]
            s = 0 / balanceOf[address(arg1)]
            idx = idx + 1
            continue 
        require arg3 * stor7[address(arg1)][idx] / stor7[address(arg1)][idx] == arg3
        require balanceOf[address(arg1)]
        require arg3 * stor7[address(arg1)][idx] / balanceOf[address(arg1)] <= stor7[address(arg1)][idx]
        stor7[address(arg1)][idx] -= arg3 * stor7[address(arg1)][idx] / balanceOf[address(arg1)]
        require (arg3 * stor7[address(arg1)][idx] / balanceOf[address(arg1)]) + stor7[address(arg2)][idx] >= stor7[address(arg2)][idx]
        mem[0] = idx
        mem[32] = sha3(address(arg2), 7)
        stor7[address(arg2)][idx] += arg3 * stor7[address(arg1)][idx] / balanceOf[address(arg1)]
        s = arg3 * stor7[address(arg1)][idx] / balanceOf[address(arg1)]
        idx = idx + 1
        continue 
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function getAvailableEtherCommissions() {
    if tokens_arr.length <= 1:
        return 64, 96, 0, 0
    mem[224] = tokens_arr.length - 1
    if 256 >= (32 * tokens_arr.length - 1) + 256:
        mem[256] = tokens_arr.length - 1
        idx = 1
        while idx < tokens_arr.length:
            require idx - 1 < mem[224]
            mem[(32 * idx - 1) + 256] = tokens_arr[idx].field_0
            require idx < tokens_arr.length
            mem[0] = 6
            require ext_code.size(tokens_arr[idx].field_0)
            call tokens_arr[idx].field_0.getAvailableWithdrawInvestmentsForBeneficiary() with:
                 gas gas_remaining wei
            mem[(32 * tokens_arr.length - 1) + 288] = ext_call.return_data[0]
            require ext_call.success
            require idx - 1 < mem[256]
            mem[(32 * idx - 1) + 288] = ext_call.return_data[0]
            idx = idx + 1
            continue 
        mem[(32 * tokens_arr.length - 1) + 288] = 64
        mem[(32 * tokens_arr.length - 1) + 352] = mem[224]
        mem[(32 * tokens_arr.length - 1) + 384 len floor32(mem[224])] = mem[256 len floor32(mem[224])]
        mem[(32 * mem[224]) + (32 * tokens_arr.length - 1) + 384] = mem[256]
        mem[(32 * mem[224]) + (32 * tokens_arr.length - 1) + 416 len floor32(mem[256])] = mem[288 len floor32(mem[256])]
        return Array(len=mem[224], data=mem[(32 * tokens_arr.length - 1) + 384 len (32 * mem[256]) + (32 * mem[224]) + 32]), 
               (32 * mem[224]) + 96
    mem[(32 * tokens_arr.length - 1) + 256] = tokens_arr.length - 1
    idx = 1
    while idx < tokens_arr.length:
        require idx - 1 < mem[224]
        mem[(32 * idx - 1) + 256] = tokens_arr[idx].field_0
        require idx < tokens_arr.length
        mem[0] = 6
        require ext_code.size(tokens_arr[idx].field_0)
        call tokens_arr[idx].field_0.getAvailableWithdrawInvestmentsForBeneficiary() with:
             gas gas_remaining wei
        mem[(64 * tokens_arr.length - 1) + 288] = ext_call.return_data[0]
        require ext_call.success
        require idx - 1 < mem[(32 * tokens_arr.length - 1) + 256]
        mem[(32 * tokens_arr.length - 1) + (32 * idx - 1) + 288] = ext_call.return_data[0]
        idx = idx + 1
        continue 
    mem[(64 * tokens_arr.length - 1) + 288] = 64
    mem[(64 * tokens_arr.length - 1) + 352] = mem[224]
    mem[(64 * tokens_arr.length - 1) + 384 len floor32(mem[224])] = mem[256 len floor32(mem[224])]
    mem[(64 * tokens_arr.length - 1) + 320] = (32 * mem[224]) + 96
    mem[(32 * mem[224]) + (64 * tokens_arr.length - 1) + 384] = mem[(32 * tokens_arr.length - 1) + 256]
    mem[(32 * mem[224]) + (64 * tokens_arr.length - 1) + 416 len floor32(mem[(32 * tokens_arr.length - 1) + 256])] = mem[(32 * tokens_arr.length - 1) + 288 len floor32(mem[(32 * tokens_arr.length - 1) + 256])]
    return Array(len=mem[224], data=mem[(64 * tokens_arr.length - 1) + 384 len (32 * mem[(32 * tokens_arr.length - 1) + 256]) + (32 * mem[224]) + 32]), 
           (32 * mem[224]) + 96
}



}
