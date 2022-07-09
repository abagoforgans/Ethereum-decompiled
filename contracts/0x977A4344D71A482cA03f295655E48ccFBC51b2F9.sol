contract main {


// =======================  Init code  ======================


mapping of uint8 stor1;
uint256 stor2;
uint256 stor3;

function _fallback() {
    mem[96 len -1125] = code.data[1370 len -1125]
    mem[64] = -1029
    stor3 = eth.balance(this.address)
    stor2 = mem[mem[96] + 96]
    s = 0
    idx = 0
    while idx < mem[mem[96] + 96]:
        require idx < mem[mem[96] + 96]
        mem[0] = mem[(32 * idx) + mem[96] + 140 len 20]
        mem[32] = 1
        stor1[mem[(32 * idx) + mem[96] + 140 len 20]] = 1
        s = mem[(32 * idx) + mem[96] + 128]
        idx = idx + 1
        continue 
    return code.data[245 len 1125]
}



// =====================  Runtime code  =====================


mapping of uint256 amountsWithdrew;
mapping of uint8 stor1;
uint256 count;
uint256 totalInput;

function count() {
    return count
}

function totalInput() {
    return totalInput
}

function amountsWithdrew(address arg1) {
    return amountsWithdrew[arg1]
}

function between(address arg1) {
    return bool(stor1[arg1])
}

function _fallback() payable {
    totalInput += msg.value
}

function balance() {
    if not stor1[address(msg.sender)]:
        return 0
    require count
    require (totalInput / count) - amountsWithdrew[address(msg.sender)] >= 0
    require (totalInput / count) - amountsWithdrew[address(msg.sender)] <= totalInput / count
    return ((totalInput / count) - amountsWithdrew[address(msg.sender)])
}

function withdrawAll() {
    require stor1[address(msg.sender)]
    if not stor1[address(msg.sender)]:
        call msg.sender with:
             gas 2300 wei
        if ext_call.success:
    else:
        if count:
            if (totalInput / count) - amountsWithdrew[address(msg.sender)] >= 0:
                if (totalInput / count) - amountsWithdrew[address(msg.sender)] <= totalInput / count:
                    amountsWithdrew[address(msg.sender)] = totalInput / count
                    call msg.sender with:
                       value (totalInput / count) - amountsWithdrew[address(msg.sender)] wei
                         gas 2300 * is_zero(value) wei
                    if ext_call.success:
    revert
}

function withdraw(uint256 arg1) {
    require stor1[address(msg.sender)]
    if not stor1[address(msg.sender)]:
        require arg1 <= 0
        amountsWithdrew[address(msg.sender)] += arg1
        call msg.sender with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
    else:
        if count:
            if (totalInput / count) - amountsWithdrew[address(msg.sender)] >= 0:
                if (totalInput / count) - amountsWithdrew[address(msg.sender)] <= totalInput / count:
                    require arg1 <= (totalInput / count) - amountsWithdrew[address(msg.sender)]
                    amountsWithdrew[address(msg.sender)] += arg1
                    call msg.sender with:
                       value arg1 wei
                         gas 2300 * is_zero(value) wei
                    if ext_call.success:
    revert
}



}
