contract main {


// =======================  Init code  ======================


address stor0;
address stor2;

function _fallback() {
    stor0 = msg.sender
    stor2 = code.data[1605 len 20]
    return code.data[104 len 1489]
}



// =====================  Runtime code  =====================


address stor0;
array of address previousRounds;
address gameLogicAddress;

function gameLogic() {
    return gameLogicAddress
}

function previousRounds(uint256 arg1) {
    require arg1 < previousRounds.length
    return address(previousRounds[arg1])
}

function previousRoundsCount() {
    return previousRounds.length
}

function shutdown() {
    require stor0 == msg.sender
    selfdestruct(stor0)
}

function _fallback() {
    revert 
}

function transferOwnership(address arg1) {
    require stor0 == msg.sender
    stor0 = arg1
}

function withdraw() {
    require stor0 == msg.sender
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function currentRound() {
    require ext_code.size(gameLogicAddress)
    call gameLogicAddress.0x8a19c8bc with:
         gas gas_remaining - 50 wei
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function setNewGameLogic(address arg1) {
    require stor0 == msg.sender
    require ext_code.size(gameLogicAddress)
    call gameLogicAddress.0x1c0463de with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(gameLogicAddress)
    call gameLogicAddress.0xf2fde38b with:
         gas gas_remaining - 50 wei
        args stor0
    require ext_call.success
    gameLogicAddress = arg1
}

function finalizeRound() {
    require stor0 == msg.sender
    require ext_code.size(gameLogicAddress)
    call gameLogicAddress.0x1e820325 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    previousRounds.length++
    if not previousRounds.length <= previousRounds.length + 1:
        idx = previousRounds.length + 1
        while previousRounds.length > idx:
            uint256(previousRounds[idx]) = 0
            idx = idx + 1
            continue 
    address(previousRounds[previousRounds.length]) = address(ext_call.return_data[0])
}



}
