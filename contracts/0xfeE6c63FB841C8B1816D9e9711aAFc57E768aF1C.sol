contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor3;
uint8 stor4;

function _fallback() payable {
    stor0 = msg.sender
    stor2 = 0x25b7dbaf654718171892f39357af75e060b2db5b
    stor3 = 0
    stor4 = 0
    require not msg.value
    stor1 = stor2
    return code.data[312 len 2364]
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

function cashOut() {
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function hit(uint256 arg1) {
    require ext_code.size(stor1)
    call stor1.0xebf6e91d with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
}

function stand(uint256 arg1) {
    require ext_code.size(stor1)
    call stor1.0x96b76c23 with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
}

function gameTick(uint256 arg1) {
    require ext_code.size(stor1)
    call stor1.0x91b56822 with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
}

function doubleDown(uint256 arg1) {
    require ext_code.size(stor1)
    call stor1.0x27a1d948 with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
}

function sub_4dc8176b(?) {
    require ext_code.size(stor1)
    call stor1.currentGame(address rg1) with:
         gas gas_remaining - 50 wei
        args this.address
    require ext_call.success
    return ext_call.return_data[0]
}

function startGame() payable {
    totalBet += msg.value
    totalGames = uint8(totalGames + 1)
    require ext_code.size(stor1)
    call stor1.0xd65ab5f2 with:
       value msg.value wei
         gas gas_remaining - 9050 wei
    require ext_call.success
}

function sub_fe5856a1(?) {
    require ext_code.size(stor1)
    call stor1.currentGame(address rg1) with:
         gas gas_remaining - 50 wei
        args this.address
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.gameState(uint256 rg1) with:
         gas gas_remaining - 50 wei
        args ext_call.return_data[0]
    require ext_call.success
    return ext_call.return_data[95 len 1], 
           ext_call.return_data[96] << 248,
           ext_call.return_data[128],
           ext_call.return_data[160],
           ext_call.return_data[192] << 248,
           ext_call.return_data[224] << 248,
           bool(ext_call.return_data[256]),
           ext_call.return_data[288]
}

function sub_f5632bf1(?) payable {
    require ext_code.size(stor1)
    call stor1.currentGame(address rg1) with:
         gas gas_remaining - 50 wei
        args this.address
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0x91b56822 with:
         gas gas_remaining - 50 wei
        args ext_call.return_data[0]
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.currentGame(address rg1) with:
         gas gas_remaining - 50 wei
        args this.address
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.gameState(uint256 rg1) with:
         gas gas_remaining - 50 wei
        args ext_call.return_data[0]
    mem[96 len 320] = ext_call.return_data[0 len 320]
    require ext_call.success
    idx = mem[320]
    s = mem[192]
    while not uint8(idx):
        require ext_code.size(stor1)
        call stor1.0xebf6e91d with:
             gas gas_remaining - 50 wei
            args ext_call.return_data[0]
        require ext_call.success
        require ext_code.size(stor1)
        call stor1.0x91b56822 with:
             gas gas_remaining - 50 wei
            args ext_call.return_data[0]
        require ext_call.success
        require ext_code.size(stor1)
        call stor1.currentGame(address rg1) with:
             gas gas_remaining - 50 wei
            args this.address
        require ext_call.success
        mem[416] = 0
        require ext_code.size(stor1)
        call stor1.gameState(uint256 rg1) with:
             gas gas_remaining - 50 wei
            args ext_call.return_data[0]
        mem[96 len 320] = ext_call.return_data[0 len 320]
        require ext_call.success
        idx = ext_call.return_data[224]
        s = ext_call.return_data[96]
        continue 
    if uint8(idx) != 1:
        if uint8(idx) != 2:
    revert 
}



}
