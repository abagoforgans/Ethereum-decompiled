contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor3;
uint8 stor4;
uint8 stor4; offset 8

function _fallback() payable {
    stor0 = msg.sender
    stor2 = 0xcd3e727275bc2f511822dc9a26bd7b0bbf161784
    stor3 = 0
    uint8(stor4.field_0) = 0
    uint8(stor4.field_8) = 0
    require not msg.value
    stor1 = stor2
    return code.data[337 len 1227]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
uint256 totalBet;
uint8 totalGames;
uint8 sub_e02b13bf; offset 8

function totalGames() {
    return totalGames
}

function sub_e02b13bf(?) {
    return sub_e02b13bf
}

function totalBet() {
    return totalBet
}

function _fallback() payable {
  stop
}

function cashOut() {
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_a5a9d6c4(?) payable {
    require ext_code.size(stor1)
    if msg.value < 5 * 10^18:
        call stor1.0xcddbe729 with:
           value msg.value wei
             gas gas_remaining - 9050 wei
            args arg1
        require ext_call.success
        require eth.balance(this.address) >= eth.balance(this.address)
        totalBet += msg.value
    else:
        call stor1.0xcddbe729 with:
           value 499 * 10^16 wei
             gas gas_remaining - 9050 wei
            args arg1
        require ext_call.success
        require eth.balance(this.address) >= eth.balance(this.address)
        totalBet += 499 * 10^16
    totalGames = uint8(totalGames + 1)
}

function notRandom(uint256 arg1) payable {
    if msg.value < 5 * 10^18:
        if (block.hash(block.number - 1) % 10) + 1 <= arg1:
            sub_e02b13bf = uint8(sub_e02b13bf + 1)
        else:
            require ext_code.size(stor1)
            call stor1.0xcddbe729 with:
               value msg.value wei
                 gas gas_remaining - 9050 wei
                args arg1
            require ext_call.success
            totalBet += msg.value
            totalGames = uint8(totalGames + 1)
    else:
        if (block.hash(block.number - 1) % 10) + 1 <= arg1:
            sub_e02b13bf = uint8(sub_e02b13bf + 1)
        else:
            require ext_code.size(stor1)
            call stor1.0xcddbe729 with:
               value 499 * 10^16 wei
                 gas gas_remaining - 9050 wei
                args arg1
            require ext_call.success
            totalBet += 499 * 10^16
            totalGames = uint8(totalGames + 1)
}



}
