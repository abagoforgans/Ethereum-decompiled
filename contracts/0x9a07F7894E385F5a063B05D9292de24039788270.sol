contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor5;
uint256 stor7;

function _fallback() {
    stor0 = msg.sender
    stor7 = code.data[1944 len 32]
    stor5 = block.timestamp + (360 * 24 * 3600)
    return code.data[97 len 1847]
}



// =====================  Runtime code  =====================


address stor0;
address winnerAddress;
mapping of address tickets;
uint256 numTickets;
uint256 ethereumFoundationTickets;
uint256 chooseWinnerDeadline;
uint256 lastBlock;
uint256 serverSeedHash;
uint256 clientSeed;

function numTickets() {
    return numTickets
}

function tickets(uint256 arg1) {
    return tickets[arg1]
}

function serverSeedHash() {
    return serverSeedHash
}

function lastBlock() {
    return lastBlock
}

function clientSeed() {
    return clientSeed
}

function ethereumFoundationTickets() {
    return ethereumFoundationTickets
}

function winner() {
    return winnerAddress
}

function chooseWinnerDeadline() {
    return chooseWinnerDeadline
}

function getRaffleTimeLeft() {
    if chooseWinnerDeadline - block.timestamp <= 0:
        return 0
    return (chooseWinnerDeadline - block.timestamp)
}

function getRefund() {
    require not winnerAddress
    require chooseWinnerDeadline - block.timestamp < -86400
    idx = 0
    s = 0
    while idx < numTickets:
        mem[0] = idx
        mem[32] = 2
        if tickets[idx] != msg.sender:
            idx = idx + 1
            s = s
            continue 
        mem[0] = idx
        mem[32] = 2
        tickets[idx] = 0
        idx = idx + 1
        s = s + 10^16
        continue 
    call msg.sender with:
       value s wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require not winnerAddress
    require chooseWinnerDeadline - block.timestamp > 0
    require chooseWinnerDeadline - block.timestamp > 0
    call msg.sender with:
       value msg.value % 10^16 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    clientSeed = sha3(clientSeed, msg.sender, msg.value)
    lastBlock = block.number
    idx = 0
    while idx < msg.value / 10^16:
        numTickets++
        mem[0] = numTickets
        mem[32] = 2
        tickets[stor3] = msg.sender
        idx = idx + 1
        continue 
    if 'owner' == 'ethereum-foundation':
        ethereumFoundationTickets += msg.value / 10^16
}

function buyTickets(bytes32 arg1) payable {
    require not winnerAddress
    require chooseWinnerDeadline - block.timestamp > 0
    require chooseWinnerDeadline - block.timestamp > 0
    call msg.sender with:
       value msg.value % 10^16 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    clientSeed = sha3(clientSeed, msg.sender, msg.value)
    lastBlock = block.number
    idx = 0
    while idx < msg.value / 10^16:
        numTickets++
        mem[0] = numTickets
        mem[32] = 2
        tickets[stor3] = msg.sender
        idx = idx + 1
        continue 
    if arg1 == 'ethereum-foundation':
        ethereumFoundationTickets += msg.value / 10^16
}

function chooseWinner(bytes32 arg1) {
    require stor0 == msg.sender
    require not winnerAddress
    require sha3(arg1) == serverSeedHash
    require chooseWinnerDeadline - block.timestamp < 0
    require chooseWinnerDeadline - block.timestamp > -86400
    require numTickets > 0
    require numTickets
    winnerAddress = tickets[('map', ('param', 'arg1'), ('stor', ('name', 'stor8', 8))) xor stor6 % stor3]
    emit Winner(tickets[('map', ('param', 'arg1'), ('stor', ('name', 'stor8', 8))) xor stor6 % stor3]);
    if 10^16 * ethereumFoundationTickets <= 0:
        call stor0 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
        call 0xfb6916095ca1df60bb79ce92ce3ea74c37c5d359 with:
           value 10^16 * ethereumFoundationTickets wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        call stor0 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
}



}
