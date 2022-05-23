contract main {


// =======================  Init code  ======================


uint256 stor1;
uint256 stor4;
address stor5;
uint256 stor6;

function _fallback() payable {
    stor1 = 0
    stor5 = 0x5fd8b8237b6fa8aede4fdab7338709094d5c5ea4
    stor6 = this.address or Mask(96, 160, stor6)
    stor4 = msg.sender or Mask(96, 160, stor4)
    return code.data[93 len 1127]
}



// =====================  Runtime code  =====================


array of struct stor0;
uint256 paymentqueue;
uint256 stor2; offset 1
uint256 feecounter;
uint256 stor3;
address owner;
address owner2;
address stor6;
array of uint256 stor18569430475105882587588266137607568536673111973893317399460219858819262702948;

function feecounter() payable {
    return feecounter
}

function owner2() payable {
    return owner2
}

function paymentqueue() payable {
    return paymentqueue
}

function owner() payable {
    return owner
}

function persons(uint256 arg1) payable {
    require arg1 < stor0.length
    return address(stor[(2 * arg1) + code.data[1095 len 32]]), stor290D[arg1]
}

function UpdatePay() payable {
    if owner == msg.sender:
        call msg.sender with:
           value eth.balance(stor6) wei
             gas 0 wei
}

function enter() payable {
    if owner == msg.sender:
        call msg.sender with:
           value eth.balance(stor6) wei
             gas 0 wei
    feecounter += msg.value / 10
    call owner with:
       value (msg.value / 10) + feecounter / 2 wei
         gas 0 wei
    call owner2 with:
       value stor2 wei
         gas 0 wei
    feecounter = 0
    if msg.value < 25 * 10^15:
        call msg.sender with:
           value msg.value - (msg.value / 10) wei
             gas 0 wei
    if msg.value > 10^17:
        call msg.sender with:
           value msg.value - (msg.value / 10) wei
             gas 0 wei
    stor3 = msg.value
    stor0.length++
    if not stor0.length > stor0.length + 1:
        require stor0.length < stor0.length
        uint256(stor[code.data[1095 len 32] + (2 * stor0.length)]) = msg.sender or Mask(96, 160, uint256(stor[code.data[1095 len 32] + (2 * stor0.length)]))
        stor290D[stor0.length] = stor3
        if eth.balance(stor6) <= 180 * uint256(stor[code.data[1095 len 32] + (2 * stor1) + 1]) / 100:
        require paymentqueue < stor0.length
        call address(stor[code.data[1095 len 32] + (2 * stor1)]) with:
           value var23003 wei
             gas 0 wei
        paymentqueue++
        if eth.balance(stor6) <= 180 * uint256(stor[code.data[1095 len 32] + (2 * stor1) + 1]) / 100:
        require paymentqueue < stor0.length
        call address(stor[code.data[1095 len 32] + (2 * stor1)]) with:
           value var33003 wei
             gas 0 wei
        paymentqueue++
        if eth.balance(stor6) <= 180 * uint256(stor[code.data[1095 len 32] + (2 * stor1) + 1]) / 100:
        require paymentqueue < stor0.length
        call address(stor[code.data[1095 len 32] + (2 * stor1)]) with:
           value var43003 wei
             gas 0 wei
        paymentqueue++
        if eth.balance(stor6) <= 180 * uint256(stor[code.data[1095 len 32] + (2 * stor1) + 1]) / 100:
        require paymentqueue < stor0.length
        # nil
    else:
        idx = 2 * stor0.length + 1
        while 2 * stor0.length > idx:
            address(stor0[idx].field_0) = 0
            uint256(stor0[idx].field_256) = 0
            idx = idx + 1
            continue 
        require stor0.length < stor0.length
        uint256(stor[code.data[1095 len 32] + (2 * stor0.length)]) = msg.sender or Mask(96, 160, uint256(stor[code.data[1095 len 32] + (2 * stor0.length)]))
        stor290D[stor0.length] = stor3
        if eth.balance(stor6) <= 180 * uint256(stor[code.data[1095 len 32] + (2 * stor1) + 1]) / 100:
        require paymentqueue < stor0.length
        call address(stor[code.data[1095 len 32] + (2 * stor1)]) with:
           value var27003 wei
             gas 0 wei
        paymentqueue++
        if eth.balance(stor6) <= 180 * uint256(stor[code.data[1095 len 32] + (2 * stor1) + 1]) / 100:
        require paymentqueue < stor0.length
        call address(stor[code.data[1095 len 32] + (2 * stor1)]) with:
           value var37003 wei
             gas 0 wei
        paymentqueue++
        if eth.balance(stor6) <= 180 * uint256(stor[code.data[1095 len 32] + (2 * stor1) + 1]) / 100:
        require paymentqueue < stor0.length
        call address(stor[code.data[1095 len 32] + (2 * stor1)]) with:
           value var47003 wei
             gas 0 wei
        paymentqueue++
        if eth.balance(stor6) <= 180 * uint256(stor[code.data[1095 len 32] + (2 * stor1) + 1]) / 100:
        require paymentqueue < stor0.length
        # nil
}

function _fallback() payable {
    if owner == msg.sender:
        call msg.sender with:
           value eth.balance(stor6) wei
             gas 0 wei
    feecounter += msg.value / 10
    call owner with:
       value (msg.value / 10) + feecounter / 2 wei
         gas 0 wei
    call owner2 with:
       value stor2 wei
         gas 0 wei
    feecounter = 0
    if msg.value < 25 * 10^15:
        call msg.sender with:
           value msg.value - (msg.value / 10) wei
             gas 0 wei
    if msg.value > 10^17:
        call msg.sender with:
           value msg.value - (msg.value / 10) wei
             gas 0 wei
    stor3 = msg.value
    stor0.length++
    if not stor0.length > stor0.length + 1:
        require stor0.length < stor0.length
        uint256(stor[code.data[1095 len 32] + (2 * stor0.length)]) = msg.sender or Mask(96, 160, uint256(stor[code.data[1095 len 32] + (2 * stor0.length)]))
        stor290D[stor0.length] = stor3
        if eth.balance(stor6) <= 180 * uint256(stor[code.data[1095 len 32] + (2 * stor1) + 1]) / 100:
        require paymentqueue < stor0.length
        call address(stor[code.data[1095 len 32] + (2 * stor1)]) with:
           value var23003 wei
             gas 0 wei
        paymentqueue++
        if eth.balance(stor6) <= 180 * uint256(stor[code.data[1095 len 32] + (2 * stor1) + 1]) / 100:
        require paymentqueue < stor0.length
        call address(stor[code.data[1095 len 32] + (2 * stor1)]) with:
           value var33003 wei
             gas 0 wei
        paymentqueue++
        if eth.balance(stor6) <= 180 * uint256(stor[code.data[1095 len 32] + (2 * stor1) + 1]) / 100:
        require paymentqueue < stor0.length
        call address(stor[code.data[1095 len 32] + (2 * stor1)]) with:
           value var43003 wei
             gas 0 wei
        paymentqueue++
        if eth.balance(stor6) <= 180 * uint256(stor[code.data[1095 len 32] + (2 * stor1) + 1]) / 100:
        require paymentqueue < stor0.length
        # nil
    else:
        idx = 2 * stor0.length + 1
        while 2 * stor0.length > idx:
            address(stor0[idx].field_0) = 0
            uint256(stor0[idx].field_256) = 0
            idx = idx + 1
            continue 
        require stor0.length < stor0.length
        uint256(stor[code.data[1095 len 32] + (2 * stor0.length)]) = msg.sender or Mask(96, 160, uint256(stor[code.data[1095 len 32] + (2 * stor0.length)]))
        stor290D[stor0.length] = stor3
        if eth.balance(stor6) <= 180 * uint256(stor[code.data[1095 len 32] + (2 * stor1) + 1]) / 100:
        require paymentqueue < stor0.length
        call address(stor[code.data[1095 len 32] + (2 * stor1)]) with:
           value var27003 wei
             gas 0 wei
        paymentqueue++
        if eth.balance(stor6) <= 180 * uint256(stor[code.data[1095 len 32] + (2 * stor1) + 1]) / 100:
        require paymentqueue < stor0.length
        call address(stor[code.data[1095 len 32] + (2 * stor1)]) with:
           value var37003 wei
             gas 0 wei
        paymentqueue++
        if eth.balance(stor6) <= 180 * uint256(stor[code.data[1095 len 32] + (2 * stor1) + 1]) / 100:
        require paymentqueue < stor0.length
        call address(stor[code.data[1095 len 32] + (2 * stor1)]) with:
           value var47003 wei
             gas 0 wei
        paymentqueue++
        if eth.balance(stor6) <= 180 * uint256(stor[code.data[1095 len 32] + (2 * stor1) + 1]) / 100:
        require paymentqueue < stor0.length
        # nil
}



}
