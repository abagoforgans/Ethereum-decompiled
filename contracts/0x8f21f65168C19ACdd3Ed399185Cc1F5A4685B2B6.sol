contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 508]




// =====================  Runtime code  =====================


uint256 stor0;
mapping of struct stor1;

function _fallback() payable {
  stop
}

function sub_9d274eca(?) payable {
    stor0++
    stor1[stor0].field_512 = arg1 + block.number
    return stor0
}

function repayLoan(uint256 arg1) payable {
    stor1[arg1].field_0++
    stor1[arg1][3][stor1[arg1].field_0].field_0 = msg.sender or Mask(96, 160, stor1[arg1][3][stor1[arg1].field_0].field_0)
    stor1[arg1][3][stor1[arg1].field_0].field_256 = msg.value
    stor1[arg1].field_256 += msg.value
}

function contribute(uint256 arg1) payable {
    stor1[arg1].field_0++
    stor1[arg1][3][stor1[arg1].field_0].field_0 = msg.sender or Mask(96, 160, stor1[arg1][3][stor1[arg1].field_0].field_0)
    stor1[arg1][3][stor1[arg1].field_0].field_256 = msg.value
    stor1[arg1].field_256 += msg.value
}

function checkGoalReached(uint256 arg1) payable {
    if stor1[arg1].field_512 > block.number:
        return 0
    stor1[arg1].field_512 = 0
    stor1[arg1].field_256 = 0
    idx = 0
    while idx <= stor1[arg1].field_0:
        call stor1[arg1][3][idx].field_0 with:
           value stor1[arg1][3][idx].field_256 wei
             gas 0 wei
        stor1[arg1][3][idx].field_0 = 0
        mem[0] = idx
        mem[32] = sha3(arg1, 1) + 3
        stor1[arg1][3][idx].field_256 = 0
        idx = idx + 1
        continue 
    return 1
}



}
