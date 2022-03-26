contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor16;
uint256 stor17;
uint256 stor18;

function _fallback() payable {
    stor1 = 0x7b4700f2a2e0765aab00b082613b417cecd0f9f0
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor2 = 0
    stor3 = 0
    stor4 = 0
    stor17 = 0
    stor7 = msg.sender or Mask(96, 160, stor7)
    stor8 = 2
    stor9 = 3
    stor10 = 5
    stor11 = 7
    stor12 = 11
    stor13 = 0
    stor16 = block.number
    stor18 = 3
    return code.data[147 len 1440]
}



// =====================  Runtime code  =====================


#
#  - createRandomNumber(uint256 arg1)
#  - sub_f5632bf1(?)
#
address stor0;
uint256 stor1;
uint256 wins;
uint256 sub_b8ee5289;
uint256 sub_340515cc;
uint256 sub_fafa38af;
uint256 sub_ff19235a;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 gamesPlayed;
uint256 maxGamesPerBlock;

function wins() {
    return wins
}

function sub_340515cc(?) {
    return sub_340515cc
}

function gamesPlayed() {
    return gamesPlayed
}

function sub_b8ee5289(?) {
    return sub_b8ee5289
}

function maxGamesPerBlock() {
    return maxGamesPerBlock
}

function sub_fafa38af(?) {
    return sub_fafa38af
}

function sub_ff19235a(?) {
    return sub_ff19235a
}

function _fallback() payable {
  stop
}

function _maint_setCustomSeed(uint256 arg1) {
    require msg.sender == stor0
    stor16 = arg1
}

function _maint_setBlockLimit(uint256 arg1) {
    require msg.sender == stor0
    maxGamesPerBlock = arg1
}

function sub_dc12042f(?) {
    return stor8, stor9, stor10, stor11, stor12, stor13, stor14, stor15, stor16
}

function cashOut() {
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function unvest(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, bool arg6) {
    require msg.sender == stor0
    stor1 = arg1 or Mask(96, 160, stor1)
}

function sub_c74e6ee1(?) {
    require msg.sender == stor0
    stor8 = arg1
    stor9 = arg2
    stor10 = arg3
    stor11 = arg4
    stor12 = arg5
    stor13 = arg6
    stor14 = arg7
    stor15 = arg8
    stor16 = arg9
    gamesPlayed = arg10
}



}
