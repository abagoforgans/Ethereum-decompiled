contract main {


// =======================  Init code  ======================


const _fallback = code.data[19 len 799]




// =====================  Runtime code  =====================


mapping of struct stor0;

function _fallback() payable {
  stop
}

function deposits(uint256 arg1) payable {
    return stor0[arg1].field_0, stor0[arg1].field_256, stor0[arg1].field_512
}

function unlock(uint256 arg1) payable {
    if stor0[arg1].field_0 == msg.sender:
        if stor0[arg1].field_512 <= block.number:
            call stor0[arg1].field_0 with:
               value stor0[arg1].field_256 wei
                 gas 0 wei
            stor0[arg1].field_0 = 0
}

function lock(uint256 arg1, uint256 arg2) payable {
    if stor0[arg1].field_0:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    else:
        stor0[arg1].field_0 = msg.sender or Mask(96, 160, stor0[arg1].field_0)
        stor0[arg1].field_256 = msg.value
        stor0[arg1].field_512 = block.number + arg2
}



}
