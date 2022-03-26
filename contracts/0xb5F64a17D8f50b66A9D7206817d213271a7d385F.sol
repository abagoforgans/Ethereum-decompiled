contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint128 stor3; offset 160
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor12;
uint256 stor13;

function _fallback() payable {
    stor1 = 0
    stor0 = msg.sender or Mask(96, 160, stor0)
    uint256(stor3.field_0) = Mask(96, 0, stor3.field_160)
    stor4 = 2
    stor5 = 3
    stor6 = 5
    stor7 = 7
    stor8 = 11
    stor9 = 0
    stor12 = block.number
    stor13 = 3
    return code.data[90 len 1316]
}



// =====================  Runtime code  =====================


#
#  - createRandomNumber(uint256 arg1)
#  - _api_PlaceBet()
#
const GetMaximumBet_Ether = (eth.balance(this.address) / 10 / 10^18)

const GetMinimumBet_Ether = 1

const GetMinimumBet = 10^18

const GetMaximumBet = (eth.balance(this.address) / 10)


address stor0;
uint256 stor0;
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
    require address(stor0) == msg.sender
    selfdestruct(address(stor0))
}

function _fallback() payable {
    require address(stor0) == msg.sender
}

function _maint_setCustomSeed(uint256 arg1) {
    require msg.sender == address(stor0)
    stor12 = arg1
}

function _maint_setBlockLimit(uint256 arg1) {
    require msg.sender == address(stor0)
    maxGamesPerBlock = arg1
}

function _maint_updateOwner(address arg1) {
    require msg.sender == address(stor0)
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function _maint_withdrawFromPool(uint256 arg1) {
    require msg.sender == address(stor0)
    call address(stor0) with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
