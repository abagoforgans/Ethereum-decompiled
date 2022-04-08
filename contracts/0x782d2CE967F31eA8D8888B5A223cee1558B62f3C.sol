contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
address stor10;

function _fallback() payable {
    stor0 = 0
    stor8 = 10
    stor9 = 20
    require not msg.value
    stor10 = msg.sender
    stor0++
    stor3 = 0
    stor2 = 0
    stor1 = 0
    if block.timestamp <= 416201 * 3600:
        stor4 = 416202 * 3600
    else:
        stor4 = block.timestamp + 3600
    stor6 = stor8
    stor7 = stor9
    emit Start(0, stor4, stor6, stor7, stor0);
    return code.data[306 len 2011]
}



// =====================  Runtime code  =====================


uint256 gameId;
address currentKingAddress;
uint256 highestBet;
uint256 currentPot;
uint256 sub_3545df70;
mapping of uint256 sub_25f531e5;
uint256 sub_bda62664;
uint256 sub_10a05989;
uint256 sub_90f47c34;
uint256 sub_a9620898;
address stor10;

function sub_10a05989(?) {
    return sub_10a05989
}

function sub_25f531e5(?) {
    return sub_25f531e5[address(arg1)]
}

function sub_3545df70(?) {
    return sub_3545df70
}

function currentPot() {
    return currentPot
}

function highestBet() {
    return highestBet
}

function sub_90f47c34(?) {
    return sub_90f47c34
}

function sub_a9620898(?) {
    return sub_a9620898
}

function sub_bda62664(?) {
    return sub_bda62664
}

function gameId() {
    return gameId
}

function currentKing() {
    return currentKingAddress
}

function sub_c1339217(?) {
    return (block.timestamp > sub_3545df70)
}

function sub_3bd77934(?) {
    require stor10 == msg.sender
    sub_90f47c34 = arg1
}

function sub_70f4648e(?) {
    require stor10 == msg.sender
    sub_a9620898 = arg1
}

function sub_bab60838(?) payable {
    require stor10 == msg.sender
    currentPot += msg.value
}

function getAll() {
    return currentKingAddress, currentPot, highestBet, sub_3545df70, gameId, sub_bda62664, sub_10a05989
}

function sub_e2784c3a(?) {
    if block.timestamp < 416201 * 3600:
        return 0
    if block.timestamp > sub_3545df70:
        return 0
    return 1
}

function forceWithdraw(address arg1) {
    require stor10 == msg.sender
    if sub_25f531e5[address(arg1)]:
        sub_25f531e5[address(arg1)] = 0
        call arg1 with:
           value sub_25f531e5[address(arg1)] wei
             gas 2300 * is_zero(value) wei
}

function withdraw() {
    require stor10 == msg.sender
    if sub_25f531e5[address(msg.sender)]:
        sub_25f531e5[address(msg.sender)] = 0
        call msg.sender with:
           value sub_25f531e5[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
}

function _fallback() payable {
    require block.timestamp >= 416201 * 3600
    require block.timestamp <= sub_3545df70
    currentPot += msg.value
    if msg.value > highestBet:
        currentKingAddress = msg.sender
        highestBet = msg.value
        sub_3545df70 = block.timestamp + 3600
    emit Wager(msg.sender, gameId);
}

function endGame() {
    require block.timestamp > sub_3545df70
    require sub_bda62664
    require sub_10a05989
    if not currentKingAddress:
        sub_25f531e5[stor10] += currentPot / sub_bda62664
        emit 0x469f1b32: currentKingAddress, currentPot, currentPot - (currentPot / sub_10a05989) - (currentPot / sub_bda62664), gameId
        gameId++
        currentPot -= currentPot / sub_bda62664
        highestBet = 0
        currentKingAddress = 0
        sub_3545df70 = block.timestamp + 3600
        sub_bda62664 = sub_90f47c34
        sub_10a05989 = sub_a9620898
        emit Start(currentPot - (currentPot / sub_bda62664), sub_3545df70, sub_bda62664, sub_10a05989, gameId);
    else:
        sub_25f531e5[stor1] = currentPot - (currentPot / sub_10a05989) - (currentPot / sub_bda62664) + sub_25f531e5[stor1]
        sub_25f531e5[stor10] += currentPot / sub_bda62664
        emit 0x469f1b32: currentKingAddress, currentPot, currentPot - (currentPot / sub_10a05989) - (currentPot / sub_bda62664), gameId
        gameId++
        currentPot = currentPot / sub_10a05989
        highestBet = 0
        currentKingAddress = 0
        sub_3545df70 = block.timestamp + 3600
        sub_bda62664 = sub_90f47c34
        sub_10a05989 = sub_a9620898
        emit Start(currentPot / sub_10a05989, sub_3545df70, sub_bda62664, sub_10a05989, gameId);
}



}
