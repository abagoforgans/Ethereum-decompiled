contract main {


// =======================  Init code  ======================


address stor1;

function _fallback() {
    stor1 = msg.sender
    return code.data[57 len 547]
}



// =====================  Runtime code  =====================


address cardsAddress;
address stor1;

function cards() {
    return cardsAddress
}

function _fallback() payable {
    revert
}

function setCardsAddress(address arg1) {
    require stor1 == msg.sender
    cardsAddress = arg1
}

function JadeCoinMining(address arg1, uint256 arg2) {
    require stor1 == msg.sender
    require ext_code.size(cardsAddress)
    call cardsAddress.setRoughSupply(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    require ext_call.success
    require ext_code.size(cardsAddress)
    call cardsAddress.setJadeCoin(address arg1, uint256 arg2, bool arg3) with:
         gas gas_remaining wei
        args address(arg1), arg2, 1
    require ext_call.success
}



}
