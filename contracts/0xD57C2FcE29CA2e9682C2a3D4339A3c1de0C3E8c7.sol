contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 886]




// =====================  Runtime code  =====================


uint256 stor0;
mapping of struct stor1;

function _fallback() payable {
    revert
}

function newCampaign(address arg1, uint256 arg2, uint256 arg3) {
    stor0++
    stor1[stor0].field_0 = arg1
    stor1[stor0].field_256 = arg2
    stor1[stor0].field_1024 = block.number + arg3
    return stor0
}

function contribute(uint256 arg1) {
    stor1[arg1].field_512++
    stor1[arg1][5][stor1[arg1].field_512].field_0 = msg.sender
    stor1[arg1][5][stor1[arg1].field_512].field_256 = msg.value
    stor1[arg1].field_768 += msg.value
}

function checkGoalReached(uint256 arg1) {
    if stor1[arg1].field_768 >= stor1[arg1].field_256:
        call stor1[arg1].field_0 with:
           value stor1[arg1].field_768 wei
             gas 2300 * is_zero(value) wei
    else:
        if stor1[arg1].field_1024 > block.number:
            return 0
        idx = 0
        while idx <= stor1[arg1].field_512:
            mem[0] = idx
            mem[32] = sha3(arg1, 1) + 5
            call stor1[arg1][5][idx].field_0 with:
               value stor1[arg1][5][idx].field_256 wei
                 gas 2300 * is_zero(value) wei
            idx = idx + 1
            continue 
    stor1[arg1].field_768 = 0
    stor1[arg1].field_0 = 0
    stor1[arg1].field_256 = 0
    stor1[arg1].field_1024 = 0
    stor1[arg1].field_512 = 0
    idx = 0
    while idx <= stor1[arg1].field_512:
        mem[0] = idx
        mem[32] = sha3(arg1, 1) + 5
        stor1[arg1][5][idx].field_0 = 0
        stor1[arg1][5][idx].field_256 = 0
        idx = idx + 1
        continue 
    return 1
}



}
