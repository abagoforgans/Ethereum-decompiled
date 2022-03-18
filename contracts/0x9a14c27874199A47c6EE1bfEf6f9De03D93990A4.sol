contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 788]




// =====================  Runtime code  =====================


uint256 stor0;
mapping of struct stor1;

function _fallback() payable {
  stop
}

function newCampaign(address arg1, uint256 arg2, uint256 arg3) payable {
    stor0++
    stor1[stor0].field_0 = arg1 or Mask(96, 160, stor1[stor0].field_0)
    stor1[stor0].field_256 = arg2
    stor1[stor0].field_1024 = arg3 + block.number
    return stor0
}

function contribute(uint256 arg1) payable {
    stor1[arg1].field_512++
    stor1[arg1][5][stor1[arg1].field_512].field_0 = msg.sender or Mask(96, 160, stor1[arg1][5][stor1[arg1].field_512].field_0)
    stor1[arg1][5][stor1[arg1].field_512].field_256 = msg.value
    stor1[arg1].field_768 += msg.value
}

function checkGoalReached(uint256 arg1) payable {
    if stor1[arg1].field_768 < stor1[arg1].field_256:
        if stor1[arg1].field_1024 > block.number:
            return 0
        stor1[arg1].field_0 = 0
        stor1[arg1].field_256 = 0
        stor1[arg1].field_512 = 0
        stor1[arg1].field_1024 = 0
        stor1[arg1].field_768 = 0
        idx = 0
        while idx <= stor1[arg1].field_512:
            call stor1[arg1][5][idx].field_0 with:
               value stor1[arg1][5][idx].field_256 wei
                 gas 0 wei
            stor1[arg1][5][idx].field_0 = 0
            mem[0] = idx
            mem[32] = sha3(arg1, 1) + 5
            stor1[arg1][5][idx].field_256 = 0
            idx = idx + 1
            continue 
    else:
        call stor1[arg1].field_0 with:
           value stor1[arg1].field_768 wei
             gas 0 wei
        stor1[arg1].field_768 = 0
        stor1[arg1].field_0 = 0
        stor1[arg1].field_256 = 0
        stor1[arg1].field_1024 = 0
        stor1[arg1].field_512 = 0
        idx = 0
        while idx <= stor1[arg1].field_512:
            stor1[arg1][5][idx].field_0 = 0
            mem[0] = idx
            mem[32] = sha3(arg1, 1) + 5
            stor1[arg1][5][idx].field_256 = 0
            idx = idx + 1
            continue 
    return 1
}



}
