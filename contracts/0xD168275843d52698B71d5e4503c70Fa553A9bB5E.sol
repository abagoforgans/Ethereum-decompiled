contract main {


// =======================  Init code  ======================


uint8 stor0;
uint256 stor1;
uint256 stor2;

function _fallback() payable {
    stor0 = 0
    stor1 = 112 * 10^6
    stor2 = 10^14
    require not msg.value
    return code.data[76 len 1189]
}



// =====================  Runtime code  =====================


uint8 bet;
address owner; offset 8
uint256 stor1;
uint256 stor2;
uint256 x;
mapping of uint256 balances;

function x() {
    return x
}

function bet() {
    return bet
}

function balances(address arg1) {
    return balances[arg1]
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
    if not stor1:
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        revert
    bet = uint8(bet + 1)
    x = 14000 * msg.value / 10^18
    bet = uint8(bet + 1)
    if stor1 < x:
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        revert
    bet = uint8(bet + 1)
    stor1 -= x
    bet = uint8(bet + 1)
    balances[address(msg.sender)] = x
    bet = uint8(bet + 1)
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    bet = uint8(bet + 1)
}



}
