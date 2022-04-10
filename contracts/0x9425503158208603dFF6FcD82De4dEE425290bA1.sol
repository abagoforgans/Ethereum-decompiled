contract main {


// =======================  Init code  ======================


array of uint256 stor0;
uint8 stor1;
address stor3;

function _fallback() {
    stor1 = 0
    mem[160] = 'Bet 0.1ETH,no more no less.Get 0'
    mem[192] = '.195ETH if you win,or 0.003ETH i'
    mem[224] = 'f you lose. '
    stor0.length = 153
    s = 0
    idx = 160
    while 236 > idx:
        stor0[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 3
    while stor0.length + 31 / 32 > idx:
        stor0[idx] = 0
        idx = idx + 1
        continue 
    stor3 = address(code.data[2234 len 32])
    return code.data[399 len 1835]
}



// =====================  Runtime code  =====================


array of uint256 name;
uint8 gamblers;
address stor1;
address gambler1Address; offset 8
uint256 stor1;
address gambler2Address;
address feeAddress;
uint256 bet1;
uint256 bet2;
uint256 stor6;
uint256 stor7;
uint256 stor8;

function name() {
    return name[0 len name.length]
}

function gambler2() {
    return gambler2Address
}

function bet1() {
    return bet1
}

function bet2() {
    return bet2
}

function gambler1() {
    return gambler1Address
}

function fee() {
    return feeAddress
}

function gamblers() {
    return gamblers
}

function _fallback() payable {
    revert
}

function bet() payable {
    require msg.value == 10^17
    emit gamblerevent(msg.sender, msg.value);
    gamblers = uint8(gamblers + 1)
    if uint8(gamblers + 1) == 1:
        gambler1Address = msg.sender
        bet1 = msg.value
    if 2 == gamblers:
        gambler2Address = msg.sender
        bet2 = msg.value
        stor6 = block.number - 1
        stor7 = block.hash(block.number - 1)
        stor8 = sha3(block.difficulty, block.coinbase, block.timestamp, stor7, uint128(block.hash(block.number - 1)))
        if bool(sha3(block.difficulty, block.coinbase, block.timestamp, stor7, uint128(block.hash(block.number - 1)))):
            emit winner(gambler2Address, 1995 * 10^14);
            call gambler2Address with:
               value 1995 * 10^14 wei
                 gas 0 wei
            require ext_call.success
            emit loser(address(stor1.field_0), 3 * 10^14);
            call gambler1Address with:
               value 3 * 10^14 wei
                 gas 0 wei
        else:
            emit winner(address(stor1.field_0), 1995 * 10^14);
            call gambler1Address with:
               value 1995 * 10^14 wei
                 gas 0 wei
            require ext_call.success
            emit loser(gambler2Address, 3 * 10^14);
            call gambler2Address with:
               value 3 * 10^14 wei
                 gas 0 wei
        call feeAddress with:
           value 2 * 10^14 wei
             gas 0 wei
        Mask(168, 0, stor1.field_0) = 0
        gambler2Address = 0
}



}
