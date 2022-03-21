contract main {


// =======================  Init code  ======================


uint256 stor2;

function _fallback() payable {
    stor2 = tx.origin or Mask(96, 160, stor2)
    return code.data[36 len 1713]
}



// =====================  Runtime code  =====================


array of struct stor0;
address stor2;
uint256 stor2;
array of uint256 stor18569430475105882587588266137607568536673111973893317399460219858819262702948;
array of uint256 stor38971441815954291753963644440956123609054264817261647753096923611481829733346;
array of address stor38971441815954291753963644440956123609054264817261647753096923611481829733349;
array of uint256 stor38971441815954291753963644440956123609054264817261647753096923611481829733350;
array of uint256 stor38971441815954291753963644440956123609054264817261647753096923611481829733351;

function NewFeeAddress(address arg1) payable {
    if tx.origin == address(stor2):
        if msg.value != 0:
            call tx.origin with:
               value msg.value wei
                 gas 0 wei
        uint256(stor2) = arg1 or Mask(96, 160, uint256(stor2))
}

function UserDatabase(uint256 arg1) payable {
    require arg1 < stor0.length
    mem[512] = 0, mem[539 len 5]
    return stor5629[arg1], 
           stor5629[arg1] + stor290D[arg1] / 10^17,
           stor5629[arg1] / 10^17,
           stor5629[arg1] / 10^17,
           Array(len=91, data='values are shown in a denominati', 'on of 100 finneys ( 100 finney =', ' 0.1 ether = minimum input)' >> 256, mem[512])
}

function _fallback() payable {
    require msg.value >= 10^17
    if msg.value <= 50 * 10^18:
        call address(stor2) with:
           value 25 * msg.value / 1000 wei
             gas 0 wei
        stor0.length++
        if not stor0.length <= stor0.length + 1:
            idx = (3 * stor0.length) + 3
            while 3 * stor0.length > idx:
                address(stor0[idx].field_0) = 0
                uint256(stor0[idx].field_256) = 0
                uint256(stor0[idx].field_512) = 0
                idx = idx + 1
                continue 
        require stor0.length - 1 < stor0.length
        stor5629[stor0.length] = tx.origin or Mask(96, 160, stor5629[stor0.length])
        bool(stor[code.data[1681 len 32] + (3 * stor0.length) - 3].field_0) = 0
        uint255(stor[code.data[1681 len 32] + (3 * stor0.length) - 3].field_1) = uint255(msg.value)
        # nil
    else:
        call tx.origin with:
           value msg.value - 50 * 10^18 wei
             gas 0 wei
        call address(stor2) with:
           value 125 * 10^16 wei
             gas 0 wei
        stor0.length++
        if not stor0.length <= stor0.length + 1:
            idx = (3 * stor0.length) + 3
            while 3 * stor0.length > idx:
                address(stor0[idx].field_0) = 0
                uint256(stor0[idx].field_256) = 0
                uint256(stor0[idx].field_512) = 0
                idx = idx + 1
                continue 
        require stor0.length - 1 < stor0.length
        stor5629[stor0.length] = tx.origin or Mask(96, 160, stor5629[stor0.length])
        uint256(stor[code.data[1681 len 32] + (3 * stor0.length) - 3].field_0) = 100 * 10^18
        # nil
}



}
