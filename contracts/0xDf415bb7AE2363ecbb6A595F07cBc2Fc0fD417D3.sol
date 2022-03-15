contract main {


// =======================  Init code  ======================


const _fallback = code.data[19 len 2230]




// =====================  Runtime code  =====================


const getRoundIndex = (block.number / 6800)

const getBlocksPerRound = 6800

const getTicketPrice = 10^17


mapping of struct pot;

function getPot(uint256 arg1) payable {
    return pot[arg1].field_256
}

function getIsCashed(uint256 arg1, uint256 arg2) payable {
    return pot[arg1][2][arg2].field_0
}

function getHashOfBlock(uint256 arg1) payable {
    return block.hash(arg1)
}

function getDecisionBlockNumber(uint256 arg1, uint256 arg2) payable {
    return ((6800 * arg1) + arg2 + 6800)
}

function getSubpotsCount(uint256 arg1) payable {
    if pot[arg1].field_256 % 5 * 10^18 <= 0:
        return (pot[arg1].field_256 / 5 * 10^18)
    return ((pot[arg1].field_256 / 5 * 10^18) + 1)
}

function getSubpot(uint256 arg1) payable {
    if pot[arg1].field_256 % 5 * 10^18 <= 0:
        return (pot[arg1].field_256 / pot[arg1].field_256 / 5 * 10^18)
    return (pot[arg1].field_256 / (pot[arg1].field_256 / 5 * 10^18) + 1)
}

function calculateWinner(uint256 arg1, uint256 arg2) payable {
    if (6800 * arg1) + arg2 + 6800 > block.number:
        return 0
    require block.hash((6800 * arg1) + arg2 + 6800) % pot[arg1].field_0 < pot[arg1].field_0
    return pot[arg1][block.hash((6800 * arg1) + arg2 + 6800) % pot[arg1].field_0].field_0
}

function getTickets(uint256 arg1) payable {
    if pot[arg1].field_0:
        mem[160] = pot[arg1].field_0
        idx = 160
        s = 0
        while (32 * pot[arg1].field_0) + 128 > idx:
            mem[idx + 32] = pot[arg1][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=pot[arg1].field_0, data=mem[160 len 32 * pot[arg1].field_0])
}

function _fallback() payable {
    if msg.value - (msg.value % 10^17):
        if msg.value - (msg.value % 10^17) < msg.value:
            call msg.sender with:
               value msg.value % 10^17 wei
                 gas 0 wei
        pot[block.number / 6800].field_0 += msg.value - (msg.value % 10^17) / 10^17
        if not pot[block.number / 6800].field_0 <= pot[block.number / 6800].field_0 + (msg.value - (msg.value % 10^17) / 10^17):
            idx = pot[block.number / 6800].field_0 + (msg.value - (msg.value % 10^17) / 10^17)
            while pot[block.number / 6800].field_0 > idx:
                pot[block.number / 6800][idx].field_0 = 0
                idx = idx + 1
                continue 
        idx = 0
        while uint8(idx) < msg.value - (msg.value % 10^17) / 10^17:
            mem[32] = 0
            require pot[block.number / 6800].field_0 + uint8(idx) < pot[block.number / 6800].field_0
            mem[0] = sha3(block.number / 6800, 0)
            stor[pot[block.number / 6800].field_0 + uint8(idx) + ('map', ('div', 'number', 6800), ('name', 'pot', 0))].field_0 = msg.sender or Mask(96, 160, stor[pot[block.number / 6800].field_0 + uint8(idx) + ('map', ('div', 'number', 6800), ('name', 'pot', 0))].field_0)
            idx = idx + 1
            continue 
        pot[block.number / 6800].field_256 = pot[block.number / 6800].field_256 + msg.value - (msg.value % 10^17)
}

function cash(uint256 arg1, uint256 arg2) payable {
    if pot[arg1].field_256 % 5 * 10^18 <= 0:
        if arg2 < pot[arg1].field_256 / 5 * 10^18:
            if (6800 * arg1) + arg2 + 6800 <= block.number:
                if not pot[arg1][2][arg2].field_0:
                    if (6800 * arg1) + arg2 + 6800 > block.number:
                        if pot[arg1].field_256 % 5 * 10^18 <= 0:
                            call 0x0 with:
                               value pot[arg1].field_256 / pot[arg1].field_256 / 5 * 10^18 wei
                                 gas 0 wei
                        else:
                            call 0x0 with:
                               value pot[arg1].field_256 / (pot[arg1].field_256 / 5 * 10^18) + 1 wei
                                 gas 0 wei
                    else:
                        require block.hash((6800 * arg1) + arg2 + 6800) % pot[arg1].field_0 < pot[arg1].field_0
                        if pot[arg1].field_256 % 5 * 10^18 <= 0:
                            call pot[arg1][block.hash((6800 * arg1) + arg2 + 6800) % pot[arg1].field_0].field_0 with:
                               value pot[arg1].field_256 / pot[arg1].field_256 / 5 * 10^18 wei
                                 gas 0 wei
                        else:
                            call pot[arg1][block.hash((6800 * arg1) + arg2 + 6800) % pot[arg1].field_0].field_0 with:
                               value pot[arg1].field_256 / (pot[arg1].field_256 / 5 * 10^18) + 1 wei
                                 gas 0 wei
                    pot[arg1][2][arg2].field_0 = 1
    else:
        if arg2 < (pot[arg1].field_256 / 5 * 10^18) + 1:
            if (6800 * arg1) + arg2 + 6800 <= block.number:
                if not pot[arg1][2][arg2].field_0:
                    if (6800 * arg1) + arg2 + 6800 > block.number:
                        if pot[arg1].field_256 % 5 * 10^18 <= 0:
                            call 0x0 with:
                               value pot[arg1].field_256 / pot[arg1].field_256 / 5 * 10^18 wei
                                 gas 0 wei
                        else:
                            call 0x0 with:
                               value pot[arg1].field_256 / (pot[arg1].field_256 / 5 * 10^18) + 1 wei
                                 gas 0 wei
                    else:
                        require block.hash((6800 * arg1) + arg2 + 6800) % pot[arg1].field_0 < pot[arg1].field_0
                        if pot[arg1].field_256 % 5 * 10^18 <= 0:
                            call pot[arg1][block.hash((6800 * arg1) + arg2 + 6800) % pot[arg1].field_0].field_0 with:
                               value pot[arg1].field_256 / pot[arg1].field_256 / 5 * 10^18 wei
                                 gas 0 wei
                        else:
                            call pot[arg1][block.hash((6800 * arg1) + arg2 + 6800) % pot[arg1].field_0].field_0 with:
                               value pot[arg1].field_256 / (pot[arg1].field_256 / 5 * 10^18) + 1 wei
                                 gas 0 wei
                    pot[arg1][2][arg2].field_0 = 1
}



}
