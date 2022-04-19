contract main {


// =======================  Init code  ======================


address stor5;
address stor6;
address stor7;
uint256 stor11;

function _fallback() payable {
    stor5 = 0x44fc32c2a5d18700284cc9e0e2da3ad83e9a6c5d
    stor6 = 0xd3f81260a44a1df7a7269cf66abd9c7e4f8cdcd1
    stor7 = 0xfc5429ef09ed041622a23fee92e65efab389c1ce
    stor11 = 500000
    require not msg.value
    return code.data[292 len 11745]
}



// =====================  Runtime code  =====================


#
#  - __callback(bytes32 arg1, string arg2)
#  - update()
#  - runInOneDay()
#
address owner;
address charityAddress;
address tokenContractAddress;
uint256 roundNumber;
mapping of struct lookupPriorLottery;
uint256 totalTicketsSold;
uint256 stor11;
uint8 stor12;
uint8 stor12; offset 8
uint256 stor12; offset 8

function lotteries(uint256 arg1) {
    return lookupPriorLottery[arg1].field_0, 
           lookupPriorLottery[arg1].field_256,
           address(lookupPriorLottery[arg1].field_512),
           bool(uint8(lookupPriorLottery[arg1].field_672))
}

function totalTicketsSold() {
    return totalTicketsSold
}

function roundNumber() {
    return roundNumber
}

function tokenContract() {
    return tokenContractAddress
}

function stopped() {
    return bool(uint8(stor12.field_8))
}

function owner() {
    return owner
}

function charity() {
    return charityAddress
}

function lookupPriorLottery(uint256 arg1) {
    return lookupPriorLottery[arg1].field_0, lookupPriorLottery[arg1].field_256, address(lookupPriorLottery[arg1].field_512)
}

function waiting() {
    return bool(uint8(stor12.field_0))
}

function ticketsOwnedByUser(address arg1) {
    return lookupPriorLottery[stor8][4][address(arg1)].field_0
}

function depositFunds() payable {
  stop
}

function __callback(bytes32 arg1, string arg2, bytes arg3) {
  stop
}

function updateGas(uint256 arg1) {
    if 0x3a31ac87092909af0e01b4d8fc6e03157e91f4bb != msg.sender:
        require msg.sender == 0x44fc32c2a5d18700284cc9e0e2da3ad83e9a6c5d
    stor11 = arg1
}

function stopGo() {
    if 0x3a31ac87092909af0e01b4d8fc6e03157e91f4bb != msg.sender:
        require msg.sender == 0x44fc32c2a5d18700284cc9e0e2da3ad83e9a6c5d
    if uint8(stor12.field_8):
        Mask(248, 0, stor12.field_8) = 0
    else:
        Mask(248, 0, stor12.field_8) = 1
}

function giveAllToCharity() {
    if 0x3a31ac87092909af0e01b4d8fc6e03157e91f4bb != msg.sender:
        require msg.sender == 0x44fc32c2a5d18700284cc9e0e2da3ad83e9a6c5d
    call charityAddress with:
       value 10^16 * lookupPriorLottery[stor8].field_0 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    roundNumber++
}

function _fallback() payable {
    require msg.value >= 10^16
    require msg.value % 10^16 <= msg.value
    require totalTicketsSold + (msg.value - (msg.value % 10^16) / 10^16) >= totalTicketsSold
    totalTicketsSold += msg.value - (msg.value % 10^16) / 10^16
    require lookupPriorLottery[stor8][4][address(msg.sender)].field_0 + (msg.value - (msg.value % 10^16) / 10^16) >= lookupPriorLottery[stor8][4][address(msg.sender)].field_0
    lookupPriorLottery[stor8][4][address(msg.sender)].field_0 += msg.value - (msg.value % 10^16) / 10^16
    mem[0] = roundNumber
    mem[32] = 9
    idx = 0
    s = stor[sha3(mem[0 len 64])]
    while idx < msg.value - (msg.value % 10^16) / 10^16:
        mem[0] = s
        mem[32] = sha3(roundNumber, 9) + 3
        address(lookupPriorLottery[stor8][3][s].field_0) = msg.sender
        idx = idx + 1
        s = s + 1
        continue 
    require lookupPriorLottery[stor8].field_0 + (msg.value - (msg.value % 10^16) / 10^16) >= lookupPriorLottery[stor8].field_0
    lookupPriorLottery[stor8].field_0 += msg.value - (msg.value % 10^16) / 10^16
}



}
