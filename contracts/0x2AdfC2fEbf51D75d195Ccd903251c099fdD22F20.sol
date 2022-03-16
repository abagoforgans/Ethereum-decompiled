contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor8;

function _fallback() payable {
    stor8 = code.data[3033 len 32]
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[98 len 2935]
}



// =====================  Runtime code  =====================


const sub_11bc5478(?) = 10^18

const sub_f6f0b074(?) = 1000

const TIMEOUT = (24 * 3600)


address stor0;
mapping of address tickets;
mapping of uint256 winners;
uint256 numTickets;
uint256 numWinners;
uint256 sub_a5e01f37;
uint256 lastBlock;
uint256 clientSeed;
uint256 sub_f000c309;
uint256 sub_5c0ecfad;
uint256 sub_5d80c278;
uint256 sub_43743d93;

function numTickets() payable {
    return numTickets
}

function sub_43743d93(?) payable {
    return sub_43743d93
}

function tickets(uint256 arg1) payable {
    return address(tickets[arg1])
}

function sub_5c0ecfad(?) payable {
    return sub_5c0ecfad
}

function sub_5d80c278(?) payable {
    return sub_5d80c278
}

function lastBlock() payable {
    return lastBlock
}

function numWinners() payable {
    return numWinners
}

function winners(uint256 arg1) payable {
    return winners[arg1]
}

function clientSeed() payable {
    return clientSeed
}

function sub_a5e01f37(?) payable {
    return sub_a5e01f37
}

function sub_f000c309(?) payable {
    return sub_f000c309
}

function sub_f961ec87(?) payable {
    return sha3(arg1)
}

function getTimeElapsed() payable {
    if sub_43743d93:
        return (block.timestamp - sub_43743d93)
    return 1337
}

function adminWithdraw() payable {
    if msg.sender == stor0:
        emit Log((eth.balance(this.address) - (10^18 * numTickets) + (10^18 * sub_a5e01f37)));
        call msg.sender with:
           value eth.balance(this.address) - (10^18 * numTickets) + (10^18 * sub_a5e01f37) wei
             gas 0 wei
}

function recoverLostFunds() payable {
    if sub_43743d93:
        if block.timestamp - sub_43743d93 >= 24 * 3600:
            sub_f000c309 = 0
            idx = sub_a5e01f37
            s = 0
            while idx < numTickets:
                mem[0] = idx
                mem[32] = 1
                if address(tickets[idx]) != msg.sender:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = s + 10^18
                continue 
            call msg.sender with:
               value s wei
                 gas 0 wei
}

function sub_602a6ca1(?) payable {
    if msg.sender == stor0:
        if sha3(arg1) == sub_f000c309:
            if sub_f000c309:
                if numTickets >= 1000:
                    if sub_a5e01f37 <= numTickets - 1000:
                        call address(tickets[stor5 + (('map', ('param', 'arg1'), ('stor', ('name', 'stor10', 10))) xor stor9 % 1000)]) with:
                           value 1000 * 10^18 wei
                             gas 0 wei
                        emit Log((sub_a5e01f37 + (sha3(arg1, sub_5d80c278) xor sub_5c0ecfad % 1000)));
                        numWinners++
                        winners[stor4] = sub_a5e01f37 + (sha3(arg1, sub_5d80c278) xor sub_5c0ecfad % 1000)
                        sub_a5e01f37 += 1000
                        sub_43743d93 = 0
                        sub_f000c309 = arg2
}

function _fallback() payable {
    if msg.value >= 25625 * 10^15:
        call msg.sender with:
           value msg.value % 1025 * 10^15 wei
             gas 0 wei
        clientSeed = sha3(clientSeed, msg.sender, msg.value)
        if numTickets / 1000 != numTickets + (msg.value / 1025 * 10^15) / 1000:
            lastBlock = block.number
            sub_5d80c278 = clientSeed
            sub_43743d93 = block.timestamp
        if block.hash(lastBlock + 1):
            sub_5c0ecfad = block.hash(lastBlock + 1)
        idx = 1
        while uint8(idx) <= msg.value / 1025 * 10^15:
            numTickets++
            mem[0] = numTickets
            mem[32] = 1
            uint256(tickets[stor3]) = msg.sender or Mask(96, 160, uint256(tickets[stor3]))
            idx = idx + 1
            continue 
    else:
        if msg.value >= 105 * 10^17:
            call msg.sender with:
               value msg.value % 105 * 10^16 wei
                 gas 0 wei
            clientSeed = sha3(clientSeed, msg.sender, msg.value)
            if numTickets / 1000 != numTickets + (msg.value / 105 * 10^16) / 1000:
                lastBlock = block.number
                sub_5d80c278 = clientSeed
                sub_43743d93 = block.timestamp
            if block.hash(lastBlock + 1):
                sub_5c0ecfad = block.hash(lastBlock + 1)
            idx = 1
            while uint8(idx) <= msg.value / 105 * 10^16:
                numTickets++
                mem[0] = numTickets
                mem[32] = 1
                uint256(tickets[stor3]) = msg.sender or Mask(96, 160, uint256(tickets[stor3]))
                idx = idx + 1
                continue 
        else:
            if msg.value < 55 * 10^17:
                call msg.sender with:
                   value msg.value % 115 * 10^16 wei
                     gas 0 wei
                clientSeed = sha3(clientSeed, msg.sender, msg.value)
                if numTickets / 1000 != numTickets + (msg.value / 115 * 10^16) / 1000:
                    lastBlock = block.number
                    sub_5d80c278 = clientSeed
                    sub_43743d93 = block.timestamp
                if block.hash(lastBlock + 1):
                    sub_5c0ecfad = block.hash(lastBlock + 1)
                idx = 1
                while uint8(idx) <= msg.value / 115 * 10^16:
                    numTickets++
                    mem[0] = numTickets
                    mem[32] = 1
                    uint256(tickets[stor3]) = msg.sender or Mask(96, 160, uint256(tickets[stor3]))
                    idx = idx + 1
                    continue 
            else:
                call msg.sender with:
                   value msg.value % 11 * 10^17 wei
                     gas 0 wei
                clientSeed = sha3(clientSeed, msg.sender, msg.value)
                if numTickets / 1000 != numTickets + (msg.value / 11 * 10^17) / 1000:
                    lastBlock = block.number
                    sub_5d80c278 = clientSeed
                    sub_43743d93 = block.timestamp
                if block.hash(lastBlock + 1):
                    sub_5c0ecfad = block.hash(lastBlock + 1)
                idx = 1
                while uint8(idx) <= msg.value / 11 * 10^17:
                    numTickets++
                    mem[0] = numTickets
                    mem[32] = 1
                    uint256(tickets[stor3]) = msg.sender or Mask(96, 160, uint256(tickets[stor3]))
                    idx = idx + 1
                    continue 
}



}
