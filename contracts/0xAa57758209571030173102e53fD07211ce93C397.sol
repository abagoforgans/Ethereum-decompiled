contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = block.number
    return code.data[23 len 1476]
}



// =====================  Runtime code  =====================


const sub_a294958b(?) = (block.number % 106)


uint256 lastBlock;
uint256 balance;
uint256 submitted;
array of address stor3;
uint256 stor4;
uint256 stor5;
mapping of uint256 stor6;
mapping of uint256 stor7;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037082;

function tickets(uint256 arg1) payable {
    require arg1 < stor4
    return address(stor[code.data[1444 len 32] + arg1])
}

function submitted() payable {
    return submitted
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
        if msg.value > 10^17:
            stor6[address(msg.sender)] = arg1
            stor7[address(msg.sender)] += msg.value
            balance += msg.value
            if not stor7[address(msg.sender)]:
                stor3.length++
                if not stor3.length <= stor3.length + 1:
                    idx = stor3.length - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4
                    while stor3.length - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5 > idx:
                        uint256(stor[idx]) = 0
                        idx = idx + 1
                        continue 
                require stor3.length - 1 < stor3.length
                storC257[stor3.length] = msg.sender or Mask(96, 160, storC257[stor3.length])
}

function sub_7c1c1716(?) payable {
    if stor7[address(msg.sender)] != 0:
        if block.number % 106 < 76:
            if block.number % 106 > 46:
                if sha3(arg1) == stor6[address(msg.sender)]:
                    stor5 = arg1 xor stor5
                    submitted++
                    idx = 0
                    while uint32(idx) < stor7[address(msg.sender)] / 10^17:
                        stor4++
                        if not stor4 <= stor4 + 1:
                            s = stor4 + code.data[1444 len 32] + 1
                            while code.data[1444 len 32] + stor4 > s:
                                uint256(stor[s]) = 0
                                mem[0] = msg.sender
                                mem[32] = 7
                                s = s + 1
                                continue 
                        require stor4 - 1 < stor4
                        uint256(stor[code.data[1444 len 32] + stor4 - 1]) = msg.sender or Mask(96, 160, uint256(stor[code.data[1444 len 32] + stor4 - 1]))
                        mem[0] = msg.sender
                        mem[32] = 7
                        idx = idx + 1
                        continue 
                    stor7[address(msg.sender)] = 0
}

function payout() payable {
    if block.number % 106 <= 76:
        return 0
    if block.number - lastBlock <= 68:
        return 0
    if submitted != stor3.length:
        idx = 0
        while idx < stor4:
            mem[0] = 4
            call address(stor[idx + code.data[1444 len 32]]) with:
               value balance / stor4 wei
                 gas 0 wei
            idx = idx + 1
            continue 
        lastBlock = block.number
        balance = 0
        idx = 0
        while idx < stor3.length:
            stor6[stor3[idx]] = 0
            mem[0] = stor3[idx]
            mem[32] = 7
            stor7[stor3[idx]] = 0
            idx = idx + 1
            continue 
        stor4 = 0
        idx = code.data[1444 len 32]
        while code.data[1444 len 32] + stor4 > idx:
            uint256(stor[idx]) = 0
            idx = idx + 1
            continue 
        return 0
    require stor5 % stor4 < stor4
    call address(stor[code.data[1444 len 32] + (stor5 % stor4)]) with:
       value balance - (25000 * block.gasprice) wei
         gas 0 wei
    lastBlock = block.number
    balance = 0
    idx = 0
    while idx < stor3.length:
        stor6[stor3[idx]] = 0
        mem[0] = stor3[idx]
        mem[32] = 7
        stor7[stor3[idx]] = 0
        idx = idx + 1
        continue 
    stor4 = 0
    idx = code.data[1444 len 32]
    while code.data[1444 len 32] + stor4 > idx:
        uint256(stor[idx]) = 0
        idx = idx + 1
        continue 
    return address(stor[code.data[1444 len 32] + (stor5 % stor4)])
}



}
