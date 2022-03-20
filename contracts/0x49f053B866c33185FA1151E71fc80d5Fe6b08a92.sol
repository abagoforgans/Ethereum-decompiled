contract main {


// =======================  Init code  ======================


uint256 stor1;
uint256 stor2;
uint256 stor3;

function _fallback() payable {
    stor1 = 0
    stor2 = 0
    stor3 = 105
    return code.data[36 len 1442]
}



// =====================  Runtime code  =====================


#
#  - Infos()
#
array of struct stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;

function participantDetails(uint256 arg1) payable {
    if arg1 >= stor0.length:
        mem[352] = mem[380 len 4]
        return 0, 0, 0, 128, 4, mem[352]
    if arg1 >= stor1:
        mem[416] = mem[446 len 2]
        return address(stor0[arg1].field_0), 
               stor[code.data[1410 len 32] + (2 * arg1)] / 10^15,
               stor[code.data[1410 len 32] + (2 * arg1)] / 10^15 * stor3 / 100,
               Array(len=2, data=mem[416])
    mem[480] = mem[509 len 3]
    return address(stor0[arg1].field_0), 
           stor[code.data[1410 len 32] + (2 * arg1)] / 10^15,
           stor[code.data[1410 len 32] + (2 * arg1)] / 10^15 * stor3 / 100,
           Array(len=3, data=mem[480])
}

function _fallback() payable {
    if msg.value < 10^16:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    if msg.value <= 10 * 10^18:
        stor0.length++
        if not stor0.length > stor0.length + 1:
            require stor0.length < stor0.length
            stor0[stor0.length].field_0 = msg.sender or Mask(96, 160, stor0[stor0.length].field_0)
            stor0[stor0.length].field_256 = msg.value
            stor2 += msg.value
            if stor2 <= stor[code.data[1410 len 32] + (2 * stor1)] * stor3 / 100:
            require stor1 < stor0.length
            call address(stor0[stor1].field_0) with:
               value var21003 wei
                 gas 0 wei
            stor2 -= var21003
            stor1++
            if stor2 <= stor[code.data[1410 len 32] + (2 * stor1)] * stor3 / 100:
            require stor1 < stor0.length
            call address(stor0[stor1].field_0) with:
               value var31003 wei
                 gas 0 wei
            stor2 -= var31003
            stor1++
            if stor2 <= stor[code.data[1410 len 32] + (2 * stor1)] * stor3 / 100:
            require stor1 < stor0.length
            call address(stor0[stor1].field_0) with:
               value var41003 wei
                 gas 0 wei
            stor2 -= var41003
            stor1++
            if stor2 <= stor[code.data[1410 len 32] + (2 * stor1)] * stor3 / 100:
            require stor1 < stor0.length
            # nil
        else:
            idx = 2 * stor0.length + 1
            while 2 * stor0.length > idx:
                address(stor0[idx].field_0) = 0
                stor0[idx].field_256 = 0
                idx = idx + 1
                continue 
            require stor0.length < stor0.length
            stor0[stor0.length].field_0 = msg.sender or Mask(96, 160, stor0[stor0.length].field_0)
            stor0[stor0.length].field_256 = msg.value
            stor2 += msg.value
            if stor2 <= stor[code.data[1410 len 32] + (2 * stor1)] * stor3 / 100:
            require stor1 < stor0.length
            call address(stor0[stor1].field_0) with:
               value var25003 wei
                 gas 0 wei
            stor2 -= var25003
            stor1++
            if stor2 <= stor[code.data[1410 len 32] + (2 * stor1)] * stor3 / 100:
            require stor1 < stor0.length
            call address(stor0[stor1].field_0) with:
               value var35003 wei
                 gas 0 wei
            stor2 -= var35003
            stor1++
            if stor2 <= stor[code.data[1410 len 32] + (2 * stor1)] * stor3 / 100:
            require stor1 < stor0.length
            call address(stor0[stor1].field_0) with:
               value var45003 wei
                 gas 0 wei
            stor2 -= var45003
            stor1++
            if stor2 <= stor[code.data[1410 len 32] + (2 * stor1)] * stor3 / 100:
            require stor1 < stor0.length
            # nil
    else:
        call msg.sender with:
           value msg.value - 10 * 10^18 wei
             gas 0 wei
        stor0.length++
        if not stor0.length > stor0.length + 1:
            require stor0.length < stor0.length
            stor0[stor0.length].field_0 = msg.sender or Mask(96, 160, stor0[stor0.length].field_0)
            stor0[stor0.length].field_256 = 10 * 10^18
            stor2 += 10 * 10^18
            if stor2 <= stor[code.data[1410 len 32] + (2 * stor1)] * stor3 / 100:
            require stor1 < stor0.length
            call address(stor0[stor1].field_0) with:
               value var21003 wei
                 gas 0 wei
            stor2 -= var21003
            stor1++
            if stor2 <= stor[code.data[1410 len 32] + (2 * stor1)] * stor3 / 100:
            require stor1 < stor0.length
            call address(stor0[stor1].field_0) with:
               value var31003 wei
                 gas 0 wei
            stor2 -= var31003
            stor1++
            if stor2 <= stor[code.data[1410 len 32] + (2 * stor1)] * stor3 / 100:
            require stor1 < stor0.length
            call address(stor0[stor1].field_0) with:
               value var41003 wei
                 gas 0 wei
            stor2 -= var41003
            stor1++
            if stor2 <= stor[code.data[1410 len 32] + (2 * stor1)] * stor3 / 100:
            require stor1 < stor0.length
            # nil
        else:
            idx = 2 * stor0.length + 1
            while 2 * stor0.length > idx:
                address(stor0[idx].field_0) = 0
                stor0[idx].field_256 = 0
                idx = idx + 1
                continue 
            require stor0.length < stor0.length
            stor0[stor0.length].field_0 = msg.sender or Mask(96, 160, stor0[stor0.length].field_0)
            stor0[stor0.length].field_256 = 10 * 10^18
            stor2 += 10 * 10^18
            if stor2 <= stor[code.data[1410 len 32] + (2 * stor1)] * stor3 / 100:
            require stor1 < stor0.length
            call address(stor0[stor1].field_0) with:
               value var25003 wei
                 gas 0 wei
            stor2 -= var25003
            stor1++
            if stor2 <= stor[code.data[1410 len 32] + (2 * stor1)] * stor3 / 100:
            require stor1 < stor0.length
            call address(stor0[stor1].field_0) with:
               value var35003 wei
                 gas 0 wei
            stor2 -= var35003
            stor1++
            if stor2 <= stor[code.data[1410 len 32] + (2 * stor1)] * stor3 / 100:
            require stor1 < stor0.length
            call address(stor0[stor1].field_0) with:
               value var45003 wei
                 gas 0 wei
            stor2 -= var45003
            stor1++
            if stor2 <= stor[code.data[1410 len 32] + (2 * stor1)] * stor3 / 100:
            require stor1 < stor0.length
            # nil
}



}
