contract main {


// =======================  Init code  ======================


array of uint256 stor3;

function _fallback() payable {
    stor3.length = 1
    if not stor3.length <= 1:
        idx = 1
        while stor3.length > idx:
            stor3[idx] = 0
            idx = idx + 1
            continue 
    return code.data[84 len 739]
}



// =====================  Runtime code  =====================


uint256 balance;
uint256 stor1;
uint256 participants;
array of uint256 stor3;

function next() payable {
    return stor3.length
}

function participants() payable {
    return participants
}

function balance() payable {
    return balance
}

function _fallback() payable {
    balance += msg.value
    if msg.value >= 10^18:
        participants++
        require participants < stor3.length
        stor3[stor2] = msg.sender or Mask(96, 160, stor3[stor2])
        if participants == stor3.length:
            stor1++
            if stor1 + 1 > 1:
                idx = participants + (-3 * stor1) + 3
                while idx < participants - stor1:
                    require idx < stor3.length
                    mem[0] = 3
                    call address(stor[code.data[707 len 32] + idx]) with:
                       value 5 * 10^17 wei
                         gas 0 wei
                    idx = idx + 1
                    continue 
                balance = balance + (-1 * 10^18 * stor1) + 15 * 10^17
            require block.hash(block.number - 1) % participants < stor3.length
            call address(stor[code.data[707 len 32] + (block.hash(block.number - 1) % stor2)]) with:
               value 10^18 wei
                 gas 0 wei
            balance -= 10^18
            if balance - 10^18 > 0:
                idx = 0
                while idx < participants:
                    require idx < stor3.length
                    mem[0] = 3
                    call address(stor[code.data[707 len 32] + idx]) with:
                       value balance / participants wei
                         gas 0 wei
                    idx = idx + 1
                    continue 
                balance += -1 * balance / participants * participants
            stor3.length = stor3.length + stor1 + 1
            if not stor3.length <= stor3.length + stor1 + 1:
                idx = stor3.length + stor1 + code.data[707 len 32] + 1
                while code.data[707 len 32] + stor3.length > idx:
                    uint256(stor[idx]) = 0
                    idx = idx + 1
                    continue 
}



}
