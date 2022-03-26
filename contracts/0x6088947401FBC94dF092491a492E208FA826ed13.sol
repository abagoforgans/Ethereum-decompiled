contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
address stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor12;
uint256 stor13;

function _fallback() {
    stor1 = 0
    stor0 = msg.sender
    stor3 = msg.sender
    stor4 = 2
    stor5 = 3
    stor6 = 5
    stor7 = 7
    stor8 = 11
    stor9 = 0
    stor12 = block.number
    stor13 = 3
    return code.data[219 len 2131]
}



// =====================  Runtime code  =====================


#
#  - createRandomNumber(uint256 arg1)
#
const GetMinimumBet_ether = (eth.balance(this.address) / 100 / 10^18)

const GetMaximumBet_ether = (eth.balance(this.address) / 10 / 10^18)

const GetMinimumBet = (eth.balance(this.address) / 100)

const GetMaximumBet = (eth.balance(this.address) / 10)


address stor0;
uint256 gamesPlayed;
uint256 stor12;
uint256 maxGamesPerBlock;

function gamesPlayed() {
    return gamesPlayed
}

function maxGamesPerBlock() {
    return maxGamesPerBlock
}

function _maint_EndPromo() {
    require msg.sender == stor0
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function _maint_updateOwner(address arg1) {
    require msg.sender == stor0
    stor0 = arg1
}

function _maint_setCustomSeed(uint256 arg1) {
    require msg.sender == stor0
    stor12 = arg1
}

function _maint_setBlockLimit(uint256 arg1) {
    require msg.sender == stor0
    maxGamesPerBlock = arg1
}

function _api_PlaceBet(bool arg1) payable {
    require msg.value >= eth.balance(this.address) / 100
    require msg.value <= eth.balance(this.address) / 10
}

function _maint_withdrawFromPool(uint256 arg1) {
    require msg.sender == stor0
    call stor0 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
