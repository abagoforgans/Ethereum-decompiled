contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
array of uint256 stor3;

function _fallback() payable {
    stor0 = 0
    stor3.length = 6
    if not stor3.length <= 6:
        idx = 6
        while stor3.length > idx:
            stor3[idx] = 0
            idx = idx + 1
            continue 
    require 0 < stor3.length
    stor3 = msg.sender or Mask(96, 160, stor3)
    stor1 = 0
    return code.data[159 len 830]
}



// =====================  Runtime code  =====================


uint256 contractBalance;
uint256 stor1;
uint256 stor2;
array of struct stor3;

function getContractBalance() payable {
    return contractBalance
}

function getNumInvestors() payable {
    return (stor1 + 1)
}

function sub_b521a81d(?) payable {
    return (stor3.length + -stor1 - 1)
}

function _fallback() payable {
    if msg.value < 100 * 10^18:
        contractBalance += msg.value
    else:
        stor1++
        require stor1 + 1 < stor3.length
        stor3[stor1].field_256 = msg.sender or Mask(96, 160, stor3[stor1].field_256)
        contractBalance += 100 * 10^18
        if stor1 <= 2:
            require 0 < stor3.length
            call address(stor3.field_0) with:
               value contractBalance wei
                 gas 0 wei
            contractBalance = 0
            stor2 = 1
        else:
            if stor1 + 1 == stor3.length:
                idx = stor3.length + (-3 * stor2) - 3
                while idx < stor3.length + -stor2 - 2:
                    require idx < stor3.length
                    mem[0] = 3
                    call address(stor3[idx].field_0) with:
                       value 50 * 10^18 wei
                         gas 0 wei
                    contractBalance -= 50 * 10^18
                    idx = idx + 1
                    continue 
                s = 1
                idx = 0
                while idx < stor3.length + -stor2 - 2:
                    require idx < stor3.length
                    mem[0] = 3
                    call address(stor3[idx].field_0) with:
                       value ((contractBalance / stor2 + 1) - 1 / s) - 1 wei
                         gas 0 wei
                    contractBalance = contractBalance + -((contractBalance / stor2 + 1) - 1 / s) + 1
                    if idx != (s + (s * s) / 2) - 1:
                        s = s
                        idx = idx + 1
                        continue 
                    s = s + 1
                    idx = idx + 1
                    continue 
                stor3.length = stor3.length + stor2 + 3
                if not stor3.length <= stor3.length + stor2 + 3:
                    idx = stor3.length + stor2 - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a2
                    while stor3.length - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5 > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
                stor2++
        contractBalance = msg.value + contractBalance - 100 * 10^18
}



}
