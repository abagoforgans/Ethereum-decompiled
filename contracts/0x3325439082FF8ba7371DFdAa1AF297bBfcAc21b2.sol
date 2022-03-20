contract main {


// =======================  Init code  ======================


uint256 stor1;
uint256 stor2;

function _fallback() payable {
    stor1 = 0
    stor2 = 0
    return code.data[34 len 783]
}



// =====================  Runtime code  =====================


array of struct stor0;
uint256 balance;
uint256 totalBalance;
array of uint256 stor18569430475105882587588266137607568536673111973893317399460219858819262702948;

function totalBalance() payable {
    return totalBalance
}

function balance() payable {
    return balance
}

function benefactor(uint256 arg1) payable {
    require arg1 < stor0.length
    return stor0[arg1].field_0, stor290D[arg1]
}

function enter() payable {
    if 10^18 != msg.value:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    else:
        stor0.length++
        if not stor0.length <= stor0.length + 1:
            idx = 2 * stor0.length + 1
            while 2 * stor0.length > idx:
                stor0[idx].field_0 = 0
                stor0[idx].field_256 = 0
                idx = idx + 1
                continue 
        require stor0.length < stor0.length
        stor0[stor0.length].field_0 = msg.sender or Mask(96, 160, stor0[stor0.length].field_0)
        stor290D[stor0.length] = msg.value
        balance += msg.value
        idx = 0
        s = 0
        while idx < stor0.length:
            mem[0] = 0
            call stor0[idx].field_0 with:
               value msg.value * stor290D[idx] / totalBalance wei
                 gas 0 wei
            balance -= msg.value * stor290D[idx] / totalBalance
            idx = idx + 1
            s = msg.value * stor290D[idx] / totalBalance
            continue 
        totalBalance += msg.value
}

function _fallback() payable {
    if 10^18 != msg.value:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    else:
        stor0.length++
        if not stor0.length <= stor0.length + 1:
            idx = 2 * stor0.length + 1
            while 2 * stor0.length > idx:
                stor0[idx].field_0 = 0
                stor0[idx].field_256 = 0
                idx = idx + 1
                continue 
        require stor0.length < stor0.length
        stor0[stor0.length].field_0 = msg.sender or Mask(96, 160, stor0[stor0.length].field_0)
        stor290D[stor0.length] = msg.value
        balance += msg.value
        idx = 0
        s = 0
        while idx < stor0.length:
            mem[0] = 0
            call stor0[idx].field_0 with:
               value msg.value * stor290D[idx] / totalBalance wei
                 gas 0 wei
            balance -= msg.value * stor290D[idx] / totalBalance
            idx = idx + 1
            s = msg.value * stor290D[idx] / totalBalance
            continue 
        totalBalance += msg.value
}



}
