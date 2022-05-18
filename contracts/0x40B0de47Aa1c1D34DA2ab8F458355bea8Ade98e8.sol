contract main {




// =====================  Runtime code  =====================


const VERSION = '18.06.04.01'


uint8 currentState; offset 160
address sub_5b9b4031Address;
array of uint256 name;
uint256 minWager;
uint256 sub_a52ef3fa;
mapping of uint8 stor4;
address stor5;

function name() {
    return name[0 len name.length]
}

function currentState() {
    require currentState <= 1
    return currentState
}

function sub_5b9b4031(?) {
    return sub_5b9b4031Address
}

function sub_a52ef3fa(?) {
    return sub_a52ef3fa
}

function minWager() {
    return minWager
}

function blocked(address arg1) {
    return bool(stor4[arg1])
}

function closeBet() {
    if stor5 != msg.sender:
        revert with 0, 'access denied'
    require currentState <= 1
    if currentState:
        revert with 0, 'closed to bet'
    currentState = 1
}

function _fallback() payable {
    require currentState <= 1
    if currentState:
        revert with 0, 'closed to bet'
    if msg.value < minWager:
        revert with 0, 'wager out of range'
    if msg.value > sub_a52ef3fa:
        revert with 0, 'wager out of range'
    if stor4[msg.sender]:
        revert with 0, 'bet denied'
    if uint32(ext_code.size(msg.sender)) > 0:
        revert with 0, 'only human allowed'
    require ext_code.size(sub_5b9b4031Address)
    call sub_5b9b4031Address.0x30996897 with:
       value msg.value wei
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
