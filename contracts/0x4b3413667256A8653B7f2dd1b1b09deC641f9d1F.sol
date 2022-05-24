contract main {




// =====================  Runtime code  =====================


#
#  - sub_41897b53(?)
#
array of struct sub_bbf8218a;
uint256 sub_1faf969b;
uint256 sub_c51d69f4;
mapping of struct players;
address player1Address;
uint8 stor5;
uint8 state; offset 160
address player2Address;

function sub_1faf969b(?) {
    return sub_1faf969b
}

function player2() {
    return player2Address
}

function sub_bbf8218a(?) {
    return sub_bbf8218a[0 len sub_bbf8218a.length].field_0
}

function state() {
    require state <= 4
    return state
}

function sub_c51d69f4(?) {
    return sub_c51d69f4
}

function player1() {
    return player1Address
}

function players(address arg1) {
    mem[128] = players[arg1].field_0
    idx = 128
    s = 0
    while players[arg1].length + 96 > idx:
        mem[idx + 32] = players[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if players[arg1].field_1024 <= 3:
        return Array(len=players[arg1].length, data=mem[128 len players[arg1].length]), 
               players[arg1].field_256,
               players[arg1].field_512,
               players[arg1].field_768,
               players[arg1].field_1024
    revert
}

function _fallback() {
    revert
}

function join(bytes32 arg1) {
    require state <= 4
    require not state
    require 0 == player2Address
    require player1Address != msg.sender
    player2Address = msg.sender
    players[address(stor5.field_0)].field_256 = arg1
    players[address(stor5.field_0)].field_1024 = 1
    state = 1
    emit 0x9d148569: player2Address
}

function getMetadata() {
    mem[128] = uint256(sub_bbf8218a.field_0)
    idx = 128
    s = 0
    while sub_bbf8218a.length + 96 > idx:
        mem[idx + 32] = sub_bbf8218a[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if state <= 4:
        return Array(len=sub_bbf8218a.length, data=mem[128 len sub_bbf8218a.length]), 
               sub_c51d69f4,
               sub_1faf969b,
               uint8(stor5.field_0),
               player1Address,
               player2Address
    revert
}

function sub_dd40d922(?) {
    require state <= 4
    if state != 1:
        require state <= 4
        require state == 2
    require players[address(msg.sender)].field_1024 <= 3
    require players[address(msg.sender)].field_1024 == 1
    require ext_code.size(0xe1da00d75d72478a1cab643721757a96991f14f0)
    delegate 0xe1da00d75d72478a1cab643721757a96991f14f0.0x2cc46dac with:
         gas gas_remaining wei
        args arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] <= sub_1faf969b
    players[address(msg.sender)].field_512 = arg1
    players[address(msg.sender)].field_1024 = 2
    state = 2
    if msg.sender == player1Address:
        require players[address(stor5.field_0)].field_1024 <= 3
        if players[address(stor5.field_0)].field_1024 == 2:
            state = 3
    else:
        require players[stor4].field_1024 <= 3
        if players[stor4].field_1024 == 2:
            state = 3
    emit 0x2f0f2939: msg.sender
}



}
