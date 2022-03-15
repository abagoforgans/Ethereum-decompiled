contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = block.number
    return code.data[23 len 1379]
}



// =====================  Runtime code  =====================


const sub_a294958b(?) = (block.number % 106)


uint256 lastBlock;
uint256 balance;
array of address stor2;
uint256 stor3;
uint256 stor4;
mapping of uint256 stor5;
mapping of struct stor6;
array of uint256 stor29102676481673041902632991033461445430619272659676223336789171408008386403021;

function tickets(uint256 arg1) payable {
    require arg1 < stor3
    return address(stor[code.data[1347 len 32] + arg1])
}

function lastBlock() payable {
    return lastBlock
}

function balance() payable {
    return balance
}

function _fallback() payable {
  stop
}

function sub_2168129d(?) payable {
    return sha3(arg1)
}

function payoutReady() payable {
    if block.number % 106 <= 76:
        return (block.number % 106 > 76)
    return (block.number - lastBlock > 68)
}

function buyTicket(uint256 arg1) payable {
    if block.number % 106 < 40:
        stor5[address(msg.sender)] = arg1
        uint256(stor6[address(msg.sender)].field_0) += msg.value
        balance += msg.value
        stor2.length++
        if not stor2.length <= stor2.length + 1:
            idx = stor2.length + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf
            while stor2.length + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace > idx:
                uint256(stor[idx]) = 0
                idx = idx + 1
                continue 
        require stor2.length - 1 < stor2.length
        stor4057[stor2.length] = msg.sender or Mask(96, 160, stor4057[stor2.length])
}

function payout() payable {
    if block.number % 106 <= 76:
        return 0
    if block.number - lastBlock <= 68:
        return 0
    require stor4 % stor3 < stor3
    call address(stor[code.data[1347 len 32] + (stor4 % stor3)]) with:
       value balance - (25000 * block.gasprice) wei
         gas 0 wei
    lastBlock = block.number
    balance = 0
    idx = 0
    while idx < stor2.length:
        stor5[stor2[idx]] = 0
        mem[0] = stor2[idx]
        mem[32] = 6
        uint256(stor6[stor2[idx]].field_0) = 0
        idx = idx + 1
        continue 
    stor3 = 0
    idx = code.data[1347 len 32]
    while code.data[1347 len 32] + stor3 > idx:
        uint256(stor[idx]) = 0
        idx = idx + 1
        continue 
    return address(stor[code.data[1347 len 32] + (stor4 % stor3)])
}

function sub_7c1c1716(?) payable {
    if uint256(stor6[address(msg.sender)].field_0) != 0:
        if block.number % 106 < 76:
            if block.number % 106 > 46:
                if sha3(arg1) == stor5[address(msg.sender)]:
                    stor4 = arg1 xor stor4
                    call msg.sender with:
                       value uint255(stor6[address(msg.sender)].field_1) wei
                         gas 0 wei
                    balance -= uint255(stor6[address(msg.sender)].field_1)
                    idx = 0
                    while uint32(idx) < uint256(stor6[address(msg.sender)].field_0) / 10^17:
                        stor3++
                        if not stor3 <= stor3 + 1:
                            s = stor3 + code.data[1347 len 32] + 1
                            while code.data[1347 len 32] + stor3 > s:
                                uint256(stor[s]) = 0
                                mem[0] = msg.sender
                                mem[32] = 6
                                s = s + 1
                                continue 
                        require stor3 - 1 < stor3
                        uint256(stor[code.data[1347 len 32] + stor3 - 1]) = msg.sender or Mask(96, 160, uint256(stor[code.data[1347 len 32] + stor3 - 1]))
                        mem[0] = msg.sender
                        mem[32] = 6
                        idx = idx + 1
                        continue 
                    uint256(stor6[address(msg.sender)].field_0) = 0
}



}
