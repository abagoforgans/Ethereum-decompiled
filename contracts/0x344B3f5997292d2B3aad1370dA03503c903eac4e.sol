contract main {




// =====================  Runtime code  =====================


uint8 currentState;
uint256 wager;
address player1Address;
bool stor3; offset 160
uint8 stor3; offset 161
uint8 result; offset 160
address player2Address;
uint256 sub_76e66536;

function currentState() {
    require currentState <= 2
    return currentState
}

function player2() {
    return player2Address
}

function result() {
    return result
}

function wager() {
    return wager
}

function sub_76e66536(?) {
    return sub_76e66536
}

function player1() {
    return player1Address
}

function _fallback() payable {
    revert
}

function sub_fea9f5ed(?) {
    require currentState <= 2
    return wager, currentState, player1Address, player2Address, result, sub_76e66536
}

function acceptBid() payable {
    require currentState <= 2
    if currentState != 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6b43757272656e7420737461746520646f6573206e6f74206d6174636820657870656374656420636173,
                    mem[206 len 22]
    if wager != msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x655061796d656e742073686f756c6420626520657175616c20746f2063757272656e742077616765,
                    mem[204 len 24]
    player2Address = msg.sender
    currentState = 1
    sub_76e66536 = block.number
    emit 0x9063038b 
}

function closeBid() {
    require currentState <= 2
    if currentState != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6b43757272656e7420737461746520646f6573206e6f74206d6174636820657870656374656420636173,
                    mem[206 len 22]
    call 0x9a660374103a0787a69847a670fc3aa19f82e2ff with:
       value eth.balance(this.address) / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if block.number <= sub_76e66536 + 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0xfe54686520746f73732073686f756c646e277420626520706572666f726d6564206174207468697320626c6f63,
                    mem[209 len 19]
    bool(stor3.field_160) = bool(block.hash(sub_76e66536 + 1))
    stor3.field_161 % 128 = 0
    if not result:
        call player1Address with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        currentState = 2
    else:
        if result == 1:
            call player2Address with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            currentState = 2
    emit 0x9063038b 
}



}
