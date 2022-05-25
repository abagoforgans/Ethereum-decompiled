contract main {




// =====================  Runtime code  =====================


array of struct stor0;
uint256 counter;
address stor2;

function counter() {
    return counter
}

function Tx(uint256 arg1) {
    require arg1 < stor0.length
    return stor0[arg1].field_0, stor0[arg1].field_256
}

function Count(uint256 arg1, uint256 arg2) {
    if msg.sender == stor2:
        idx = arg1
        while idx > arg2:
            require counter < stor0.length
            mem[0] = 0
            call stor0[stor1].field_0 with:
               value 33 * stor0[stor1].field_256 / 1000 wei
                 gas 2300 * is_zero(value) wei
            idx = idx - 1
            continue 
}

function _fallback() payable {
    require msg.value >= 10^16
    call stor2 with:
       value msg.value / 5 wei
         gas 2300 * is_zero(value) wei
    counter = stor0.length
    stor0.length++
    if stor0.length > stor0.length + 1:
        idx = 2 * stor0.length + 1
        while 2 * stor0.length > idx:
            stor0[idx].field_0 = 0
            stor0[idx].field_256 = 0
            idx = idx + 2
            continue 
    require stor0.length < stor0.length
    stor0[stor0.length].field_0 = msg.sender
    stor0[stor0.length].field_256 = msg.value
}



}
