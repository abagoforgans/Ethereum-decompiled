contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 825]




// =====================  Runtime code  =====================


uint256 stor0;
mapping of struct stor1;

function _fallback() payable {
  stop
}

function repayLoan(uint256 arg1) payable {
    stor1[arg1].field_512++
    stor1[arg1][8][stor1[arg1].field_512].field_0 = msg.sender or Mask(96, 160, stor1[arg1][8][stor1[arg1].field_512].field_0)
    stor1[arg1][8][stor1[arg1].field_512].field_256 = msg.value
    stor1[arg1].field_768 += msg.value
}

function contribute(uint256 arg1) payable {
    stor1[arg1].field_512++
    stor1[arg1][8][stor1[arg1].field_512].field_0 = msg.sender or Mask(96, 160, stor1[arg1][8][stor1[arg1].field_512].field_0)
    stor1[arg1][8][stor1[arg1].field_512].field_256 = msg.value
    stor1[arg1].field_768 += msg.value
}

function sub_69e1251c(?) payable {
    stor0++
    stor1[stor0].field_0 = arg1 or Mask(96, 160, stor1[stor0].field_0)
    stor1[stor0].field_256 = arg2
    stor1[stor0].field_1024 = block.number + arg3
    stor1[stor0].field_1280 = block.number + arg3 + arg4
    stor1[stor0].field_1536 = arg5 + block.number + arg3 + arg4
    return stor0
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
            call stor1[arg1][8][idx].field_0 with:
               value stor1[arg1][8][idx].field_256 wei
                 gas 0 wei
            stor1[arg1][8][idx].field_0 = 0
            mem[0] = idx
            mem[32] = sha3(arg1, 1) + 8
            stor1[arg1][8][idx].field_256 = 0
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
            stor1[arg1][8][idx].field_0 = 0
            mem[0] = idx
            mem[32] = sha3(arg1, 1) + 8
            stor1[arg1][8][idx].field_256 = 0
            idx = idx + 1
            continue 
    return 1
}



}
