contract main {


// =======================  Init code  ======================


mapping of uint8 stor1;
uint256 stor2;

function _fallback() {
    mem[96 len -1139] = code.data[1355 len -1139]
    mem[64] = -1043
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
    return code.data[216 len 1139]
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

function withdraw(uint256 arg1) {
    require stor1[address(msg.sender)]
    if stor1[address(msg.sender)]:
        require count
        require (totalInput / count) - amountsWithdrew[address(msg.sender)] >= 0
        require (totalInput / count) - amountsWithdrew[address(msg.sender)] <= totalInput / count
    require 0 <= arg1
    call msg.sender with:
         gas 2300 wei
    require ext_call.success
}

function withdrawAll() {
    require stor1[address(msg.sender)]
    if not stor1[address(msg.sender)]:
        call msg.sender with:
             gas 2300 wei
    else:
        require count
        require (totalInput / count) - amountsWithdrew[address(msg.sender)] >= 0
        require (totalInput / count) - amountsWithdrew[address(msg.sender)] <= totalInput / count
        amountsWithdrew[address(msg.sender)] = totalInput / count
        call msg.sender with:
           value (totalInput / count) - amountsWithdrew[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
