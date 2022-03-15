contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = block.number
    return code.data[23 len 1204]
}



// =====================  Runtime code  =====================


const sub_a294958b(?) = (block.number % 106)


uint256 lastBlock;
uint256 balance;
uint256 stor2;
array of address tickets;
uint256 stor4;
mapping of uint256 stor5;
mapping of uint256 stor6;
array of uint256 stor343371210433890290056162609015838183378480827683322587048381917224414179831;

function tickets(uint256 arg1) payable {
    require arg1 < tickets.length
    return tickets[arg1]
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
        stor6[address(msg.sender)] += msg.value
        balance += msg.value
        stor2++
        if not stor2 <= stor2 + 1:
            idx = stor2 + code.data[1172 len 32] + 1
            while code.data[1172 len 32] + stor2 > idx:
                uint256(stor[idx]) = 0
                idx = idx + 1
                continue 
        require stor2 - 1 < stor2
        uint256(stor[code.data[1172 len 32] + stor2 - 1]) = msg.sender or Mask(96, 160, uint256(stor[code.data[1172 len 32] + stor2 - 1]))
}

function payout() payable {
    if block.number % 106 <= 76:
        return 0
    if block.number - lastBlock <= 68:
        return 0
    require stor4 % tickets.length < tickets.length
    call tickets[stor4 % tickets.length] with:
       value balance - (25000 * block.gasprice) wei
         gas 0 wei
    lastBlock = block.number
    balance = 0
    idx = 0
    while idx < stor2:
        stor5[address(stor[code.data[1172 len 32] + idx])] = 0
        mem[0] = address(stor[code.data[1172 len 32] + idx])
        mem[32] = 6
        stor6[address(stor[code.data[1172 len 32] + idx])] = 0
        idx = idx + 1
        continue 
    tickets.length = 0
    idx = 0xc2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71f8
    while tickets.length + 0xc2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71f8 > idx:
        uint256(stor[idx]) = 0
        idx = idx + 1
        continue 
    return tickets[stor4 % tickets.length]
}

function sub_7c1c1716(?) payable {
    if block.number % 106 < 76:
        if block.number % 106 > 46:
            if sha3(arg1) == stor5[address(msg.sender)]:
                stor4 = arg1 xor stor4
                idx = 0
                while uint32(idx) < stor6[address(msg.sender)] / 10^17:
                    tickets.length++
                    if not tickets.length <= tickets.length + 1:
                        s = tickets.length + 0xc2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71f9
                        while tickets.length + 0xc2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71f8 > s:
                            uint256(stor[s]) = 0
                            mem[0] = msg.sender
                            mem[32] = 6
                            s = s + 1
                            continue 
                    require tickets.length - 1 < tickets.length
                    storC257[stor3.length] = msg.sender or Mask(96, 160, storC257[stor3.length])
                    mem[0] = msg.sender
                    mem[32] = 6
                    idx = idx + 1
                    continue 
}



}
