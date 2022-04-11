contract main {


// =======================  Init code  ======================


uint8 stor0;
uint256 stor1;
uint256 stor2;
address stor5;
address stor6;

function _fallback() payable {
    stor0 = 0
    stor1 = 112 * 10^6
    stor2 = 10^14
    stor6 = 0x2c9bbb65e6e6ecd70ed2eb9731bc25669e886d06
    require not msg.value
    stor5 = stor6
    return code.data[262 len 1696]
}



// =====================  Runtime code  =====================


uint8 bet;
address stor0;
address owner; offset 8
uint256 number;
uint256 stor2;
uint256 x;
mapping of uint256 balances;
address stor5;

function x() {
    return x
}

function bet() {
    return bet
}

function balances(address arg1) {
    return balances[arg1]
}

function number() {
    return number
}

function owner() {
    return owner
}

function _fallback() payable {
    bet = uint8(bet + 1)
    if msg.value < stor2:
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        revert
    if not number:
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        revert
    bet = uint8(bet + 1)
    x = 14000 * msg.value / 10^18
    bet = uint8(bet + 1)
    if number < x:
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        revert
    bet = uint8(bet + 1)
    number -= x
    bet = uint8(bet + 1)
    require ext_code.size(stor5)
    call stor5.0x23b872dd with:
         gas gas_remaining - 710 wei
        args stor0, msg.sender, x
    require ext_call.success
    if not ext_call.return_data[0]:
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        revert
    bet = uint8(bet + 1)
    balances[address(msg.sender)] += x
    bet = uint8(bet + 1)
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    bet = uint8(bet + 1)
}



}
