contract main {


// =======================  Init code  ======================


uint256 stor1;
uint256 stor2;

function _fallback() payable {
    stor1 = 0
    stor2 = 0
    return code.data[43 len 923]
}



// =====================  Runtime code  =====================


array of struct stor0;
uint256 sub_8406373e;
uint256 numDeposits;
uint256 stor3;

function sub_8406373e(?) payable {
    return sub_8406373e
}

function numDeposits() payable {
    return numDeposits
}

function _fallback() payable {
  stop
}

function members(uint256 arg1) payable {
    require arg1 < stor0.length
    return stor0[arg1].field_0, stor0[arg1].field_256, stor0[arg1].field_512, stor0[arg1].field_768
}

function sub_36df6612(?) payable {
    idx = 0
    while idx < numDeposits:
        require idx < stor0.length
        mem[0] = 0
        if stor0[idx].field_768 >= block.number:
            require idx < stor0.length
            mem[0] = 0
            call stor0[idx].field_0 with:
               value stor0[idx].field_256 wei
                 gas 0 wei
        idx = idx + 1
        continue 
}

function sub_4e1c412c(?) payable {
    stor0.length = msg.sender or Mask(96, 160, stor0.length)
    sub_8406373e = msg.value
    numDeposits = block.number
    stor3 = arg1
    require numDeposits < stor0.length
    stor0[stor2].field_0 = address(stor0.length)
    stor0[stor2].field_256 = sub_8406373e
    stor0[stor2].field_512 = numDeposits
    stor0[stor2].field_768 = stor3
    numDeposits++
}



}
