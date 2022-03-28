contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor3;
uint8 stor4;

function _fallback() payable {
    stor0 = msg.sender
    stor2 = 0xa65d59708838581520511d98fb8b5d1f76a96cad
    stor3 = 0
    stor4 = 0
    require not msg.value
    stor1 = stor2
    return code.data[312 len 924]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
uint256 totalBet;
uint8 totalGames;

function totalGames() {
    return totalGames
}

function totalBet() {
    return totalBet
}

function _fallback() payable {
  stop
}

function changeTarget(address arg1) {
    require msg.sender == stor0
    stor1 = arg1
}

function cashOut() {
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_f5632bf1(?) payable {
    totalBet += msg.value
    totalGames = uint8(totalGames + 1)
    require ext_code.size(stor1)
    call stor1.deal() with:
       value msg.value wei
         gas gas_remaining - 9050 wei
    require ext_call.success
    require eth.balance(this.address) > eth.balance(this.address)
}



}
