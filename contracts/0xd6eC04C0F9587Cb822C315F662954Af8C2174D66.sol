contract main {


// =======================  Init code  ======================


array of address stor0;

function _fallback() payable {
    mem[96 len -690] = code.data[921 len -690]
    mem[64] = -594
    stor0.length = mem[mem[96] + 96]
    if not mem[mem[96] + 96]:
        idx = 0
        while stor0.length > idx:
            address(stor0[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = mem[96] + 128
        while mem[96] + (32 * mem[mem[96] + 96]) + 128 > idx:
            uint256(stor0[s]) = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[mem[96] + 96]) + 31) >> 5
        while stor0.length > idx:
            address(stor0[idx]) = 0
            idx = idx + 1
            continue 
    return code.data[231 len 690]
}



// =====================  Runtime code  =====================


array of address stor0;
mapping of uint256 stor1;

function _fallback() payable {
    revert 
}

function payout() {
    stor1[address(msg.sender)] = 0
    call msg.sender with:
       value stor1[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        return 0
    return stor1[address(msg.sender)]
}

function deposit() payable {
    require stor0.length
    require 0 < stor0.length
    stor1[stor0] += msg.value % stor0.length
    idx = 0
    while idx < stor0.length:
        mem[0] = stor0[idx]
        mem[32] = 1
        stor1[stor0[idx]] += msg.value / stor0.length
        idx = idx + 1
        continue 
}



}
