contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
uint128 stor2; offset 160
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor11;
uint256 stor12;
uint256 stor13;

function _fallback() payable {
    stor1 = 0x7b4700f2a2e0765aab00b082613b417cecd0f9f0
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor12 = 0
    uint256(stor2.field_0) = Mask(96, 0, stor2.field_160)
    stor3 = 2
    stor4 = 3
    stor5 = 5
    stor6 = 7
    stor7 = 11
    stor8 = 0
    stor11 = block.number
    stor13 = 3
    return code.data[133 len 1034]
}



// =====================  Runtime code  =====================


#
#  - createRandomNumber(uint256 arg1)
#  - sub_f5632bf1(?)
#
address stor0;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 gamesPlayed;
uint256 maxGamesPerBlock;

function gamesPlayed() {
    return gamesPlayed
}

function maxGamesPerBlock() {
    return maxGamesPerBlock
}

function _fallback() payable {
    revert 
}

function _maint_setCustomSeed(uint256 arg1) {
    require msg.sender == stor0
    stor11 = arg1
}

function _maint_setBlockLimit(uint256 arg1) {
    require msg.sender == stor0
    maxGamesPerBlock = arg1
}

function cashOut() {
    require msg.sender == stor0
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_c74e6ee1(?) {
    stor3 = arg1
    stor4 = arg2
    stor5 = arg3
    stor6 = arg4
    stor7 = arg5
    stor8 = arg6
    stor9 = arg7
    stor10 = arg8
    stor11 = arg9
    gamesPlayed = arg10
}



}
