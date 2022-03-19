contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor8;
uint256 stor9;
address stor10;
uint256 stor26;
uint256 stor27;
uint256 stor28;
uint256 stor29;
uint256 stor30;
uint256 stor31;
uint256 stor32;
uint256 stor33;
uint256 stor34;

function _fallback() payable {
    stor8 = code.data[2817 len 32]
    if code.data[2817 len 32] > 9:
        stor9 = 0
        emit 0x879e995d: stor10, 0
        revert 
    stor0 = block.timestamp
    stor1 = block.timestamp + code.data[2753 len 32]
    stor3 = stor1 + code.data[2785 len 32]
    stor2 = code.data[2785 len 32]
    stor8 = code.data[2817 len 32]
    stor26 = 1
    stor27 = 2
    stor28 = 3
    stor29 = 4
    stor30 = 5
    stor31 = 6
    stor32 = 7
    stor33 = 8
    stor34 = 9
    return code.data[250 len 2503]
}



// =====================  Runtime code  =====================


uint256 gameStart;
uint256 sub_511478d0;
uint256 sub_727ad86c;
uint256 revealEnd;
uint8 ended;
uint256 sub_1108671d;
uint256 sub_519b6714;
uint256 sub_7bde46d4;
uint256 numberOfPlayers;
uint256 sub_5553b982;
address sub_ab665702Address;
address sub_49a7acd3Address;
address gameWinnerAddress;
uint256 keyCount;
uint256 sub_aed5be35;
uint256 sub_bb00dbe6;
uint256 sub_f822be60;
uint8 sub_2b06a61a;
uint8 sub_49ee496b; offset 8
uint256 sub_56cd95dd;
uint256 sub_72a661ef;
uint256 sub_33c6a40b;
uint256 depositMin;
uint256 refund;
uint256 shuffleCount;
uint256 sub_08222d58;
uint256 sub_32fa03e2;
array of uint256 sub_65b1dafa;
uint256 stor27;
uint256 stor28;
uint256 stor29;
uint256 stor30;
uint256 stor31;
uint256 stor32;
uint256 stor33;
uint256 stor34;
array of uint256 secrets;
array of address players;
array of struct sub_962e1c48;

function sub_08222d58(?) payable {
    return sub_08222d58
}

function shuffleCount() payable {
    return shuffleCount
}

function sub_1108671d(?) payable {
    return sub_1108671d
}

function ended() payable {
    return ended
}

function sub_2b06a61a(?) payable {
    return sub_2b06a61a
}

function gameStart() payable {
    return gameStart
}

function sub_32fa03e2(?) payable {
    return sub_32fa03e2
}

function sub_33c6a40b(?) payable {
    return sub_33c6a40b
}

function playersAddresses(uint256 arg1) payable {
    require arg1 < 9
    return address(players[arg1])
}

function sub_49a7acd3(?) payable {
    return sub_49a7acd3Address
}

function sub_49ee496b(?) payable {
    return sub_49ee496b
}

function sub_511478d0(?) payable {
    return sub_511478d0
}

function sub_519b6714(?) payable {
    return sub_519b6714
}

function sub_5553b982(?) payable {
    return sub_5553b982
}

function sub_56cd95dd(?) payable {
    return sub_56cd95dd
}

function refund() payable {
    return refund
}

function sub_65b1dafa(?) payable {
    require arg1 < 9
    return sub_65b1dafa[arg1]
}

function numberOfPlayers() payable {
    return numberOfPlayers
}

function sub_727ad86c(?) payable {
    return sub_727ad86c
}

function sub_72a661ef(?) payable {
    return sub_72a661ef
}

function sub_7bde46d4(?) payable {
    return sub_7bde46d4
}

function sub_962e1c48(?) payable {
    require arg2 < sub_962e1c48[arg1].field_0
    return sub_962e1c48[arg1][arg2].field_0, 
           sub_962e1c48[arg1][arg2].field_256,
           sub_962e1c48[arg1][arg2].field_512,
           sub_962e1c48[arg1][arg2].field_672
}

function revealEnd() payable {
    return revealEnd
}

function sub_ab665702(?) payable {
    return sub_ab665702Address
}

function sub_aed5be35(?) payable {
    return sub_aed5be35
}

function sub_bb00dbe6(?) payable {
    return sub_bb00dbe6
}

function gameWinner() payable {
    return gameWinnerAddress
}

function secrets(uint256 arg1) payable {
    require arg1 < 9
    return secrets[arg1]
}

function depositMin() payable {
    return depositMin
}

function sub_f822be60(?) payable {
    return sub_f822be60
}

function keyCount() payable {
    return keyCount
}

function _fallback() payable {
    revert 
}

function sub_c44918bd(?) payable {
    require block.timestamp < sub_511478d0
    if keyCount < numberOfPlayers:
        call msg.sender with:
           value depositMin wei
             gas 0 wei
        sub_5553b982 = 0
        emit 0x879e995d: msg.sender, 0
        keyCount--
}

function reveal(bytes32 arg1) payable {
    require block.timestamp > sub_511478d0
    require block.timestamp < revealEnd
    require 0 < sub_962e1c48[address(msg.sender)].field_0
    require sha3(arg1) == sub_962e1c48[address(msg.sender)].field_0
    sub_962e1c48[address(msg.sender)].field_672 = 1
    sub_aed5be35++
    if sub_aed5be35 == keyCount:
        revealEnd = block.timestamp
}

function shuffle(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9) payable {
    require block.timestamp > sub_511478d0
    require block.timestamp < sub_519b6714
    sub_65b1dafa.length = arg1
    stor27 = arg2
    stor28 = arg3
    stor29 = arg4
    stor30 = arg5
    stor31 = arg6
    stor32 = arg7
    stor33 = arg8
    stor34 = arg9
    shuffleCount++
    if keyCount == shuffleCount + 1:
        sub_519b6714 = block.timestamp
}

function sub_09c37b60(?) payable {
    require block.timestamp > revealEnd
    require not ended
    if sub_aed5be35 < keyCount:
        require 0 < sub_962e1c48[address(msg.sender)].field_0
        if 1 == sub_962e1c48[address(msg.sender)].field_672:
            call msg.sender with:
               value depositMin + ((keyCount * depositMin) - (sub_aed5be35 * depositMin) / sub_aed5be35) wei
                 gas 0 wei
            sub_5553b982 = 0
            emit 0x879e995d: msg.sender, 0
            if 0 == sub_aed5be35:
                ended = 1
}

function sub_8db46124(?) payable {
    require block.timestamp > revealEnd
    require sub_aed5be35 >= keyCount
    sub_5553b982 = numberOfPlayers
    idx = 0
    while idx <= numberOfPlayers:
        require idx < 9
        if sub_65b1dafa[idx] != sub_5553b982:
            idx = idx + 1
            continue 
        require idx < 9
        gameWinnerAddress = address(players[idx])
        emit 0x879e995d: gameWinnerAddress, sub_5553b982
        call gameWinnerAddress with:
           value eth.balance(this.address) wei
             gas 0 wei
        ended = 1
}

function sub_b79db350(?) payable {
    require block.timestamp < sub_511478d0
    sub_962e1c48[address(msg.sender)].field_0++
    if not sub_962e1c48[address(msg.sender)].field_0 <= sub_962e1c48[address(msg.sender)].field_0 + 1:
        idx = (3 * sub_962e1c48[address(msg.sender)].field_0) + 3
        while 3 * sub_962e1c48[address(msg.sender)].field_0 > idx:
            sub_962e1c48[address(msg.sender)][idx].field_0 = 0
            sub_962e1c48[address(msg.sender)][idx].field_256 = 0
            sub_962e1c48[address(msg.sender)][idx].field_512 = 0
            idx = idx + 1
            continue 
    sub_962e1c48[address(msg.sender)][sub_962e1c48[address(msg.sender)].field_0].field_0 = arg1
    sub_962e1c48[address(msg.sender)][sub_962e1c48[address(msg.sender)].field_0].field_256 = msg.value
    sub_962e1c48[address(msg.sender)][sub_962e1c48[address(msg.sender)].field_0].field_512 = msg.sender
    sub_962e1c48[address(msg.sender)][sub_962e1c48[address(msg.sender)].field_0].field_672 = 0
    sub_962e1c48[address(msg.sender)][sub_962e1c48[address(msg.sender)].field_0].field_680 = Mask(88, 168, msg.sender) >> 168
    if not keyCount:
        depositMin = msg.value
    require msg.value >= depositMin
    if msg.value > depositMin:
        refund = msg.value - depositMin
        call msg.sender with:
           value msg.value - depositMin wei
             gas 0 wei
    require keyCount < 9
    uint256(players[stor13]) = msg.sender or Mask(96, 160, uint256(players[stor13]))
    keyCount++
    if numberOfPlayers == keyCount + 1:
        sub_511478d0 = block.timestamp
        sub_5553b982 = 0
        revealEnd = sub_727ad86c + block.timestamp
}



}
