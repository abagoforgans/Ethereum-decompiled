contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor3;
uint8 stor4;
address stor4; offset 8

function _fallback() payable {
    uint8(stor4.field_0) = 0
    stor0 = msg.value
    stor3 = code.data[3949 len 32]
    address(stor4.field_8) = msg.sender
    uint8(stor4.field_0) = 0
    return code.data[249 len 3700]
}



// =====================  Runtime code  =====================


uint256 pot;
array of struct participants;
uint64 stor2;
uint128 stor2; offset 64
address winnerAddress;
uint256 sub_f13c0b2c;
uint8 sub_6d99ef46;
address adminAddress; offset 8

function sub_28927fe8(?) {
    return sub_f13c0b2c
}

function participants(uint256 arg1) {
    require arg1 < participants.length
    return participants[arg1].field_0
}

function getPot() {
    return pot
}

function pot() {
    return pot
}

function sub_5a5e346f(?) {
    return bool(sub_6d99ef46)
}

function sub_6d99ef46(?) {
    return bool(sub_6d99ef46)
}

function getWinner() {
    return winnerAddress
}

function sub_a44af730(?) {
    return participants.length
}

function winner() {
    return winnerAddress
}

function sub_f13c0b2c(?) {
    return sub_f13c0b2c
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    revert 
}

function sub_6daca1ae(?) {
    require msg.sender == adminAddress
    require sub_6d99ef46
    require participants.length <= 0
    call adminAddress with:
       value pot wei
         gas 2300 * is_zero(value) wei
    if ext_call.success:
        pot = 0
        sub_6d99ef46 = 1
        emit 0x567a0b79: Array(len=27, data='Game closed. Nobody played.')
}

function sub_2e4de000(?) payable {
    require msg.sender == adminAddress
    require sub_6d99ef46
    require not pot
    participants.length = 0
    if not participants.length <= 0:
        idx = 0
        while participants.length > idx:
            participants[idx].field_0 = 0
            idx = idx + 1
            continue 
    sub_f13c0b2c = arg1
    sub_6d99ef46 = 0
    pot = msg.value
}

function getParticipants() {
    if participants.length:
        mem[160] = address(participants.field_0)
        idx = 160
        s = 0
        while (32 * participants.length) + 128 > idx:
            mem[idx + 32] = participants[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=participants.length, data=mem[160 len 32 * participants.length])
}

function endLottery() {
    require msg.sender == adminAddress
    if not participants.length:
        sub_6d99ef46 = 1
    else:
        require participants.length
        require block.hash(block.number - 1) % participants.length < participants.length
        uint64(stor2.field_0) = participants[block.hash(block.number - 1) % participants.length].field_0
        Mask(96, 0, stor2.field_64) = 0
        sub_6d99ef46 = 1
        emit 0x5e1166b6: winnerAddress
}

function sub_04cc30dd(?) payable {
    require msg.value >= sub_f13c0b2c
    require not sub_6d99ef46
    pot += msg.value
    participants.length++
    if not participants.length <= participants.length + 1:
        idx = participants.length + 1
        while participants.length > idx:
            participants[idx].field_0 = 0
            idx = idx + 1
            continue 
    participants[participants.length].field_0 = msg.sender
    emit 0x39cb12b1: msg.sender, pot
}

function sub_8d852fed(?) {
    require sub_6d99ef46
    require pot
    require participants.length > 0
    if winnerAddress != msg.sender:
        emit 0x3bef9dc8: Array(len=48, data='Sorry, you are not the winner, n', 'o money for you!'), address(msg.sender)
    else:
        call winnerAddress with:
           value pot wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            emit 0x21ed8fd9: Array(len=109, data='Wooops, something went wrong, th', 'e winner was not able to withdrw', ' his funds. Sorry dude, that was', ' not planned.')
        else:
            pot = 0
            emit 0x880d7742: Array(len=75, data='The winner withdrew the the pot ', 'successfully. Buy your friends a', ' beer mate!')
}



}
