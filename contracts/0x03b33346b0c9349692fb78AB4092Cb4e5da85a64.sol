contract main {




// =====================  Runtime code  =====================


#
#  - __callback(bytes32 arg1, string arg2)
#  - lottery(uint256 arg1, uint256 arg2)
#
mapping of struct player_;
mapping of uint256 sub_654dca74;
mapping of uint256 sub_578c3585;
mapping of uint256 stor9;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint256 stor20;
uint256 stor21;
uint256 stor22;
uint256 stor23;
uint256 stor24;
uint256 stor25;
uint256 stor26;
uint256 stor27;
uint256 stor28;
uint256 stor29;
mapping of struct stor30;
address sub_b2e02843Address;
uint256 stor32;
uint256 stor33;
uint8 stor34; offset 160
address stor34;

function sub_578c3585(?) {
    return sub_578c3585[arg1]
}

function sub_654dca74(?) {
    return sub_654dca74[arg1]
}

function sub_b2e02843(?) {
    return sub_b2e02843Address
}

function player_(uint256 arg1) {
    return player_[arg1].field_0, 
           player_[arg1].field_256,
           player_[arg1].field_512,
           player_[arg1].field_768,
           player_[arg1].field_1024,
           player_[arg1].field_1280,
           player_[arg1].field_1536
}

function closeGame() {
    if tx.origin != msg.sender:
        revert with 0, 'Error Action!'
    if ext_code.size(msg.sender):
        revert with 0, ')Sender not authorized!'
    if 438280 * 3600 >= block.timestamp:
        revert with 0, 'Time has not arrived'
    if sub_b2e02843Address != msg.sender:
        revert with 0, 'Error'
    selfdestruct(sub_b2e02843Address)
}

function _fallback() payable {
    revert
}

function __callback(bytes32 arg1, string arg2, bytes arg3) {
  stop
}

function sub_35bf77e1(?) {
    return stor25, stor26, stor27, stor28, stor29
}

function sub_34b4b1e4(?) {
    return stor11, stor12, stor13, stor14, stor15, stor16, stor17, stor18, stor19, stor20, stor21, stor22, stor23, stor24
}

function withdraw(uint256 arg1) {
    if tx.origin != msg.sender:
        revert with 0, 'Error Action!'
    if ext_code.size(msg.sender):
        revert with 0, ')Sender not authorized!'
    if arg1 != sub_654dca74[msg.sender]:
        revert with 0, 'Error Action'
    if player_[arg1].field_256 != msg.sender:
        revert with 0, 'Error Action'
    if player_[arg1].field_512 <= 0:
        revert with 0, 'Insufficient balance'
    player_[arg1].field_512 = 0
    call player_[arg1].field_256 with:
       value player_[arg1].field_512 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_9022b1fe(?) {
    if tx.origin != msg.sender:
        revert with 0, 'Error Action!'
    if ext_code.size(msg.sender):
        revert with 0, ')Sender not authorized!'
    if sub_654dca74[msg.sender] <= 0:
        revert with 0, 'Error Action 2'
    return player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_256].field_0, 
           stor30[arg1].field_1280,
           player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_512].field_0,
           stor30[arg1].field_1536,
           player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_768].field_0,
           stor30[arg1].field_1792,
           player_[stor7[msg.sender]][7][arg1].field_256,
           bool(player_[stor7[msg.sender]][7][arg1].field_296)
}

function sub_00039e41(?) {
    if tx.origin != msg.sender:
        revert with 0, 'Error Action!'
    if ext_code.size(msg.sender):
        revert with 0, ')Sender not authorized!'
    if arg1 < 12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Please enter a correct number (2-4 digits)'
    if arg1 > 9876:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Please enter a correct number (2-4 digits)'
    if arg2 < 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Please enter a correct integer (1-1000)'
    if arg2 > 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Please enter a correct integer (1-1000)'
    if block.timestamp >= stor25:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Please wait for the draw before you can continue to bet'
    if bool(uint8(stor34.field_160)) != 1:
        revert with 0, 'Error Action'
    require sub_654dca74[msg.sender] > 0
    if arg2 > player_[stor7[msg.sender]].field_768:
        revert with 0, 'No tickets available'
    player_[stor7[msg.sender]].field_768 -= arg2
    if not stor9[stor28][arg1]:
        if player_[stor7[msg.sender]][7][stor28].field_256 > stor23:
            revert with 0, 'Limited number of bet numbers'
        player_[stor7[msg.sender]][7][stor28].field_256 = uint8(player_[stor7[msg.sender]][7][stor28].field_256 + 1)
    player_[stor7[msg.sender]][7][stor28].field_264 = uint32(arg2 + player_[stor7[msg.sender]][7][stor28].field_264)
    stor9[stor28][arg1] += arg2
    player_[stor7[msg.sender]][7][stor28][arg1].field_0 += arg2
    stor30[stor28].field_1024 += arg2
    require 3 * 10^15 * arg2 / 3 * 10^15 == arg2
    require (3 * 10^15 * arg2) + stor29 >= stor29
    stor29 += 3 * 10^15 * arg2
    emit Bet(arg1, arg2, msg.sender, stor28);
}

function getLotteryInfo(uint256 arg1) {
    if arg1 > 0:
        if arg1 <= stor28:
            if arg1 <= 1:
                return stor28, 
                       stor25,
                       stor30[arg1].field_256,
                       stor30[arg1].field_1024,
                       stor29,
                       0,
                       stor9[arg1][stor30[arg1].field_256],
                       stor30[arg1].field_1280,
                       stor9[arg1][stor30[arg1].field_512],
                       stor30[arg1].field_1536,
                       stor9[arg1][stor30[arg1].field_768],
                       stor30[arg1].field_1792,
                       stor30[arg1].field_2048
            if stor30[arg1].field_2048:
                return stor28, 
                       stor25,
                       stor30[arg1].field_256,
                       stor30[arg1].field_1024,
                       stor29,
                       0,
                       stor9[arg1][stor30[arg1].field_256],
                       stor30[arg1].field_1280,
                       stor9[arg1][stor30[arg1].field_512],
                       stor30[arg1].field_1536,
                       stor9[arg1][stor30[arg1].field_768],
                       stor30[arg1].field_1792,
                       stor30[arg1].field_2048
            return stor28, 
                   stor25,
                   stor30[arg1 - 1].field_256,
                   stor30[arg1 - 1].field_1024,
                   stor29,
                   0,
                   stor9[arg1 - 1][stor30[arg1 - 1].field_256],
                   stor30[arg1 - 1].field_1280,
                   stor9[arg1 - 1][stor30[arg1 - 1].field_512],
                   stor30[arg1 - 1].field_1536,
                   stor9[arg1 - 1][stor30[arg1 - 1].field_768],
                   stor30[arg1 - 1].field_1792,
                   stor30[arg1 - 1].field_2048
    if stor28 <= 1:
        return stor28, 
               stor25,
               stor30[stor28].field_256,
               stor30[stor28].field_1024,
               stor29,
               0,
               stor9[stor28][stor30[stor28].field_256],
               stor30[stor28].field_1280,
               stor9[stor28][stor30[stor28].field_512],
               stor30[stor28].field_1536,
               stor9[stor28][stor30[stor28].field_768],
               stor30[stor28].field_1792,
               stor30[stor28].field_2048
    if stor30[stor28].field_2048:
        return stor28, 
               stor25,
               stor30[stor28].field_256,
               stor30[stor28].field_1024,
               stor29,
               0,
               stor9[stor28][stor30[stor28].field_256],
               stor30[stor28].field_1280,
               stor9[stor28][stor30[stor28].field_512],
               stor30[stor28].field_1536,
               stor9[stor28][stor30[stor28].field_768],
               stor30[stor28].field_1792,
               stor30[stor28].field_2048
    return stor28, 
           stor25,
           stor30[stor28 - 1].field_256,
           stor30[stor28 - 1].field_1024,
           stor29,
           0,
           stor9[stor28 - 1][stor30[stor28 - 1].field_256],
           stor30[stor28 - 1].field_1280,
           stor9[stor28 - 1][stor30[stor28 - 1].field_512],
           stor30[stor28 - 1].field_1536,
           stor9[stor28 - 1][stor30[stor28 - 1].field_768],
           stor30[stor28 - 1].field_1792,
           stor30[stor28 - 1].field_2048
}

function sub_100fe55d(?) {
    if tx.origin != msg.sender:
        revert with 0, 'Error Action!'
    if ext_code.size(msg.sender):
        revert with 0, ')Sender not authorized!'
    if sub_654dca74[msg.sender] <= 0:
        revert with 0, 'Error Action 2'
    if stor30[arg1].field_2048 <= 0:
        revert with 0, 'Error Action 3'
    if player_[stor7[msg.sender]][7][arg1].field_296:
        revert with 0, 'Error Action 4'
    player_[stor7[msg.sender]][7][arg1].field_296 = 1
    if 0 >= player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_256].field_0:
        if 0 >= player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_512].field_0:
            if player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_768].field_0 <= 0:
                revert with 0, 'Error Action 5'
            if stor30[arg1].field_1792:
                require stor30[arg1].field_1792
                require player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_768].field_0 * stor30[arg1].field_1792 / stor30[arg1].field_1792 == player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_768].field_0
            require player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_768].field_0 * stor30[arg1].field_1792 >= 0
            if player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_768].field_0 * stor30[arg1].field_1792 <= 0:
                revert with 0, 'Error Action 5'
            require stor24 > 0
            require stor24 <= 100
            if player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_768].field_0 * stor30[arg1].field_1792:
                require player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_768].field_0 * stor30[arg1].field_1792
                require stor24 * player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_768].field_0 * stor30[arg1].field_1792 / player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_768].field_0 * stor30[arg1].field_1792 == stor24
            require stor24 * player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_768].field_0 * stor30[arg1].field_1792 / 100 <= player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_768].field_0 * stor30[arg1].field_1792
            require (stor24 * player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_768].field_0 * stor30[arg1].field_1792 / 100) + player_[player_[stor7[stor31]].field_0].field_512 >= player_[player_[stor7[stor31]].field_0].field_512
            player_[player_[stor7[stor31]].field_0].field_512 += stor24 * player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_768].field_0 * stor30[arg1].field_1792 / 100
            call player_[stor7[msg.sender]].field_256 with:
               value (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_768].field_0 * stor30[arg1].field_1792) - (stor24 * player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_768].field_0 * stor30[arg1].field_1792 / 100) wei
                 gas 2300 * is_zero(value) wei
        else:
            if stor30[arg1].field_1536:
                require stor30[arg1].field_1536
                require player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_512].field_0 * stor30[arg1].field_1536 / stor30[arg1].field_1536 == player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_512].field_0
            require player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_512].field_0 * stor30[arg1].field_1536 >= 0
            if player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_768].field_0 <= 0:
                if player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_512].field_0 * stor30[arg1].field_1536 <= 0:
                    revert with 0, 'Error Action 5'
                require stor24 > 0
                require stor24 <= 100
                if player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_512].field_0 * stor30[arg1].field_1536:
                    require player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_512].field_0 * stor30[arg1].field_1536
                    require stor24 * player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_512].field_0 * stor30[arg1].field_1536 / player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_512].field_0 * stor30[arg1].field_1536 == stor24
                require stor24 * player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_512].field_0 * stor30[arg1].field_1536 / 100 <= player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_512].field_0 * stor30[arg1].field_1536
                require (stor24 * player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_512].field_0 * stor30[arg1].field_1536 / 100) + player_[player_[stor7[stor31]].field_0].field_512 >= player_[player_[stor7[stor31]].field_0].field_512
                player_[player_[stor7[stor31]].field_0].field_512 += stor24 * player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_512].field_0 * stor30[arg1].field_1536 / 100
                call player_[stor7[msg.sender]].field_256 with:
                   value (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_512].field_0 * stor30[arg1].field_1536) - (stor24 * player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_512].field_0 * stor30[arg1].field_1536 / 100) wei
                     gas 2300 * is_zero(value) wei
            else:
                if stor30[arg1].field_1792:
                    require stor30[arg1].field_1792
                    require player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_768].field_0 * stor30[arg1].field_1792 / stor30[arg1].field_1792 == player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_768].field_0
                require (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_768].field_0 * stor30[arg1].field_1792) + (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_512].field_0 * stor30[arg1].field_1536) >= player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_512].field_0 * stor30[arg1].field_1536
                if (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_768].field_0 * stor30[arg1].field_1792) + (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_512].field_0 * stor30[arg1].field_1536) <= 0:
                    revert with 0, 'Error Action 5'
                require stor24 > 0
                require stor24 <= 100
                if (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_768].field_0 * stor30[arg1].field_1792) + (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_512].field_0 * stor30[arg1].field_1536):
                    require (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_768].field_0 * stor30[arg1].field_1792) + (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_512].field_0 * stor30[arg1].field_1536)
                    require (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_768].field_0 * stor30[arg1].field_1792 * stor24) + (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_512].field_0 * stor30[arg1].field_1536 * stor24) / (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_768].field_0 * stor30[arg1].field_1792) + (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_512].field_0 * stor30[arg1].field_1536) == stor24
                require (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_768].field_0 * stor30[arg1].field_1792 * stor24) + (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_512].field_0 * stor30[arg1].field_1536 * stor24) / 100 <= (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_768].field_0 * stor30[arg1].field_1792) + (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_512].field_0 * stor30[arg1].field_1536)
                require ((player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_768].field_0 * stor30[arg1].field_1792 * stor24) + (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_512].field_0 * stor30[arg1].field_1536 * stor24) / 100) + player_[player_[stor7[stor31]].field_0].field_512 >= player_[player_[stor7[stor31]].field_0].field_512
                player_[player_[stor7[stor31]].field_0].field_512 += (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_768].field_0 * stor30[arg1].field_1792 * stor24) + (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_512].field_0 * stor30[arg1].field_1536 * stor24) / 100
                call player_[stor7[msg.sender]].field_256 with:
                   value (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_768].field_0 * stor30[arg1].field_1792) + (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_512].field_0 * stor30[arg1].field_1536) - ((player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_768].field_0 * stor30[arg1].field_1792 * stor24) + (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_512].field_0 * stor30[arg1].field_1536 * stor24) / 100) wei
                     gas 2300 * is_zero(value) wei
    else:
        if stor30[arg1].field_1280:
            require stor30[arg1].field_1280
            require player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_256].field_0 * stor30[arg1].field_1280 / stor30[arg1].field_1280 == player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_256].field_0
        if 0 >= player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_512].field_0:
            if player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_768].field_0 <= 0:
                if player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_256].field_0 * stor30[arg1].field_1280 <= 0:
                    revert with 0, 'Error Action 5'
                require stor24 > 0
                require stor24 <= 100
                if player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_256].field_0 * stor30[arg1].field_1280:
                    require player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_256].field_0 * stor30[arg1].field_1280
                    require stor24 * player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_256].field_0 * stor30[arg1].field_1280 / player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_256].field_0 * stor30[arg1].field_1280 == stor24
                require stor24 * player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_256].field_0 * stor30[arg1].field_1280 / 100 <= player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_256].field_0 * stor30[arg1].field_1280
                require (stor24 * player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_256].field_0 * stor30[arg1].field_1280 / 100) + player_[player_[stor7[stor31]].field_0].field_512 >= player_[player_[stor7[stor31]].field_0].field_512
                player_[player_[stor7[stor31]].field_0].field_512 += stor24 * player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_256].field_0 * stor30[arg1].field_1280 / 100
                call player_[stor7[msg.sender]].field_256 with:
                   value (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_256].field_0 * stor30[arg1].field_1280) - (stor24 * player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_256].field_0 * stor30[arg1].field_1280 / 100) wei
                     gas 2300 * is_zero(value) wei
            else:
                if stor30[arg1].field_1792:
                    require stor30[arg1].field_1792
                    require player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_768].field_0 * stor30[arg1].field_1792 / stor30[arg1].field_1792 == player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_768].field_0
                require (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_768].field_0 * stor30[arg1].field_1792) + (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_256].field_0 * stor30[arg1].field_1280) >= player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_256].field_0 * stor30[arg1].field_1280
                if (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_768].field_0 * stor30[arg1].field_1792) + (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_256].field_0 * stor30[arg1].field_1280) <= 0:
                    revert with 0, 'Error Action 5'
                require stor24 > 0
                require stor24 <= 100
                if (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_768].field_0 * stor30[arg1].field_1792) + (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_256].field_0 * stor30[arg1].field_1280):
                    require (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_768].field_0 * stor30[arg1].field_1792) + (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_256].field_0 * stor30[arg1].field_1280)
                    require (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_768].field_0 * stor30[arg1].field_1792 * stor24) + (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_256].field_0 * stor30[arg1].field_1280 * stor24) / (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_768].field_0 * stor30[arg1].field_1792) + (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_256].field_0 * stor30[arg1].field_1280) == stor24
                require (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_768].field_0 * stor30[arg1].field_1792 * stor24) + (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_256].field_0 * stor30[arg1].field_1280 * stor24) / 100 <= (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_768].field_0 * stor30[arg1].field_1792) + (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_256].field_0 * stor30[arg1].field_1280)
                require ((player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_768].field_0 * stor30[arg1].field_1792 * stor24) + (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_256].field_0 * stor30[arg1].field_1280 * stor24) / 100) + player_[player_[stor7[stor31]].field_0].field_512 >= player_[player_[stor7[stor31]].field_0].field_512
                player_[player_[stor7[stor31]].field_0].field_512 += (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_768].field_0 * stor30[arg1].field_1792 * stor24) + (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_256].field_0 * stor30[arg1].field_1280 * stor24) / 100
                call player_[stor7[msg.sender]].field_256 with:
                   value (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_768].field_0 * stor30[arg1].field_1792) + (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_256].field_0 * stor30[arg1].field_1280) - ((player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_768].field_0 * stor30[arg1].field_1792 * stor24) + (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_256].field_0 * stor30[arg1].field_1280 * stor24) / 100) wei
                     gas 2300 * is_zero(value) wei
        else:
            if stor30[arg1].field_1536:
                require stor30[arg1].field_1536
                require player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_512].field_0 * stor30[arg1].field_1536 / stor30[arg1].field_1536 == player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_512].field_0
            require (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_512].field_0 * stor30[arg1].field_1536) + (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_256].field_0 * stor30[arg1].field_1280) >= player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_256].field_0 * stor30[arg1].field_1280
            if player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_768].field_0 <= 0:
                if (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_512].field_0 * stor30[arg1].field_1536) + (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_256].field_0 * stor30[arg1].field_1280) <= 0:
                    revert with 0, 'Error Action 5'
                require stor24 > 0
                require stor24 <= 100
                if (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_512].field_0 * stor30[arg1].field_1536) + (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_256].field_0 * stor30[arg1].field_1280):
                    require (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_512].field_0 * stor30[arg1].field_1536) + (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_256].field_0 * stor30[arg1].field_1280)
                    require (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_512].field_0 * stor30[arg1].field_1536 * stor24) + (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_256].field_0 * stor30[arg1].field_1280 * stor24) / (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_512].field_0 * stor30[arg1].field_1536) + (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_256].field_0 * stor30[arg1].field_1280) == stor24
                require (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_512].field_0 * stor30[arg1].field_1536 * stor24) + (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_256].field_0 * stor30[arg1].field_1280 * stor24) / 100 <= (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_512].field_0 * stor30[arg1].field_1536) + (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_256].field_0 * stor30[arg1].field_1280)
                require ((player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_512].field_0 * stor30[arg1].field_1536 * stor24) + (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_256].field_0 * stor30[arg1].field_1280 * stor24) / 100) + player_[player_[stor7[stor31]].field_0].field_512 >= player_[player_[stor7[stor31]].field_0].field_512
                player_[player_[stor7[stor31]].field_0].field_512 += (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_512].field_0 * stor30[arg1].field_1536 * stor24) + (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_256].field_0 * stor30[arg1].field_1280 * stor24) / 100
                call player_[stor7[msg.sender]].field_256 with:
                   value (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_512].field_0 * stor30[arg1].field_1536) + (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_256].field_0 * stor30[arg1].field_1280) - ((player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_512].field_0 * stor30[arg1].field_1536 * stor24) + (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_256].field_0 * stor30[arg1].field_1280 * stor24) / 100) wei
                     gas 2300 * is_zero(value) wei
            else:
                if stor30[arg1].field_1792:
                    require stor30[arg1].field_1792
                    require player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_768].field_0 * stor30[arg1].field_1792 / stor30[arg1].field_1792 == player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_768].field_0
                require player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_768].field_0 * stor30[arg1].field_1792 >= 0
                if (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_768].field_0 * stor30[arg1].field_1792) + (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_512].field_0 * stor30[arg1].field_1536) + (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_256].field_0 * stor30[arg1].field_1280) <= 0:
                    revert with 0, 'Error Action 5'
                require stor24 > 0
                require stor24 <= 100
                if (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_768].field_0 * stor30[arg1].field_1792) + (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_512].field_0 * stor30[arg1].field_1536) + (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_256].field_0 * stor30[arg1].field_1280):
                    require (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_768].field_0 * stor30[arg1].field_1792) + (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_512].field_0 * stor30[arg1].field_1536) + (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_256].field_0 * stor30[arg1].field_1280)
                    require (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_768].field_0 * stor30[arg1].field_1792 * stor24) + (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_512].field_0 * stor30[arg1].field_1536 * stor24) + (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_256].field_0 * stor30[arg1].field_1280 * stor24) / (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_768].field_0 * stor30[arg1].field_1792) + (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_512].field_0 * stor30[arg1].field_1536) + (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_256].field_0 * stor30[arg1].field_1280) == stor24
                require (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_768].field_0 * stor30[arg1].field_1792 * stor24) + (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_512].field_0 * stor30[arg1].field_1536 * stor24) + (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_256].field_0 * stor30[arg1].field_1280 * stor24) / 100 <= (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_768].field_0 * stor30[arg1].field_1792) + (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_512].field_0 * stor30[arg1].field_1536) + (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_256].field_0 * stor30[arg1].field_1280)
                require ((player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_768].field_0 * stor30[arg1].field_1792 * stor24) + (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_512].field_0 * stor30[arg1].field_1536 * stor24) + (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_256].field_0 * stor30[arg1].field_1280 * stor24) / 100) + player_[player_[stor7[stor31]].field_0].field_512 >= player_[player_[stor7[stor31]].field_0].field_512
                player_[player_[stor7[stor31]].field_0].field_512 += (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_768].field_0 * stor30[arg1].field_1792 * stor24) + (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_512].field_0 * stor30[arg1].field_1536 * stor24) + (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_256].field_0 * stor30[arg1].field_1280 * stor24) / 100
                call player_[stor7[msg.sender]].field_256 with:
                   value (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_768].field_0 * stor30[arg1].field_1792) + (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_512].field_0 * stor30[arg1].field_1536) + (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_256].field_0 * stor30[arg1].field_1280) - ((player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_768].field_0 * stor30[arg1].field_1792 * stor24) + (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_512].field_0 * stor30[arg1].field_1536 * stor24) + (player_[stor7[msg.sender]][7][arg1][stor30[arg1].field_256].field_0 * stor30[arg1].field_1280 * stor24) / 100) wei
                     gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function buy(uint256 arg1, uint256 arg2, address arg3, address arg4) payable {
    if tx.origin != msg.sender:
        revert with 0, 'Error Action!'
    if ext_code.size(msg.sender):
        revert with 0, ')Sender not authorized!'
    if msg.value < stor11:
        revert with 0, 'Please pay the correct eth'
    if arg1 <= 0:
        revert with 0, 'limited single purchase'
    if arg1 > stor12:
        revert with 0, 'limited single purchase'
    if arg1 * stor11 != msg.value:
        revert with 0, 'Please pay the correct eth!'
    if not msg.sender:
        require stor32 > 0
        require stor32 <= 100
        if arg1 * stor11:
            require arg1 * stor11
            require stor32 * arg1 * stor11 / arg1 * stor11 == stor32
        require stor14 > 0
        require stor14 <= 100
        if arg1 * stor11:
            require arg1 * stor11
            require stor14 * arg1 * stor11 / arg1 * stor11 == stor14
        require stor32 * arg1 * stor11 / 100 > 0
        if 0 == sub_578c3585[0]:
            if not arg2:
                call address(stor34.field_0) with:
                   funct Mask(32, 224, sha3('addOtherGameAff(uint256,address,', 'address,address)')) >> 224
                     gas gas_remaining wei
                    args player_[stor7[stor31]].field_0, msg.sender, sub_b2e02843Address, 0
                if not ext_call.success:
                    sub_578c3585[0] = player_[stor7[stor31]].field_0
                    player_[player_[stor7[stor31]].field_0].field_1024++
                else:
                    if not sub_b2e02843Address:
                        sub_578c3585[0] = 0
                        player_[0].field_1024++
                    else:
                        if sub_654dca74[stor31] > 0:
                            sub_578c3585[0] = sub_654dca74[stor31]
                            player_[stor7[stor31]].field_1024++
                        else:
                            stor33++
                            sub_654dca74[stor31] = stor33 + 1
                            player_[stor33 + 1].field_0 = stor33 + 1
                            player_[stor33 + 1].field_256 = sub_b2e02843Address
                            player_[stor33 + 1].field_512 = 0
                            player_[stor33 + 1].field_768 = 0
                            player_[stor33 + 1].field_1024 = 0
                            player_[stor33 + 1].field_1280 = 0
                            player_[stor33 + 1].field_1536 = block.timestamp
                            sub_578c3585[0] = stor33
                            player_[stor33].field_1024++
            else:
                call address(stor34.field_0) with:
                   funct Mask(32, 224, sha3('addOtherGameAff(uint256,address,', 'address,address)')) >> 224
                     gas gas_remaining wei
                    args arg2, msg.sender, address(arg3), arg4
                if not ext_call.success:
                    sub_578c3585[0] = player_[stor7[stor31]].field_0
                    player_[player_[stor7[stor31]].field_0].field_1024++
                else:
                    if not arg3:
                        if not arg4:
                            sub_578c3585[0] = 0
                            player_[0].field_1024++
                        else:
                            if sub_654dca74[address(arg4)] > 0:
                                sub_578c3585[0] = 0
                                player_[0].field_1024++
                                if sub_654dca74[address(arg4)] > 0:
                                    player_[stor7[address(arg4)]].field_1280++
                                    if not sub_578c3585[0]:
                                        sub_578c3585[0] = sub_654dca74[address(arg4)]
                            else:
                                stor33++
                                sub_654dca74[address(arg4)] = stor33 + 1
                                player_[stor33 + 1].field_0 = stor33 + 1
                                player_[stor33 + 1].field_256 = arg4
                                player_[stor33 + 1].field_512 = 0
                                player_[stor33 + 1].field_768 = 0
                                player_[stor33 + 1].field_1024 = 0
                                player_[stor33 + 1].field_1280 = 0
                                player_[stor33 + 1].field_1536 = block.timestamp
                                sub_578c3585[0] = 0
                                player_[0].field_1024++
                                if stor33 > 0:
                                    player_[stor33].field_1280++
                                    if not sub_578c3585[0]:
                                        sub_578c3585[0] = stor33
                    else:
                        if sub_654dca74[address(arg3)] > 0:
                            if not arg4:
                                sub_578c3585[0] = sub_654dca74[address(arg3)]
                                player_[stor7[address(arg3)]].field_1024++
                            else:
                                if sub_654dca74[address(arg4)] > 0:
                                    sub_578c3585[0] = sub_654dca74[address(arg3)]
                                    player_[stor7[address(arg3)]].field_1024++
                                    if sub_654dca74[address(arg4)] > 0:
                                        player_[stor7[address(arg4)]].field_1280++
                                        if not sub_578c3585[stor7[address(arg3)]]:
                                            sub_578c3585[stor7[address(arg3)]] = sub_654dca74[address(arg4)]
                                else:
                                    stor33++
                                    sub_654dca74[address(arg4)] = stor33 + 1
                                    player_[stor33 + 1].field_0 = stor33 + 1
                                    player_[stor33 + 1].field_256 = arg4
                                    player_[stor33 + 1].field_512 = 0
                                    player_[stor33 + 1].field_768 = 0
                                    player_[stor33 + 1].field_1024 = 0
                                    player_[stor33 + 1].field_1280 = 0
                                    player_[stor33 + 1].field_1536 = block.timestamp
                                    sub_578c3585[0] = sub_654dca74[address(arg3)]
                                    player_[stor7[address(arg3)]].field_1024++
                                    if stor33 > 0:
                                        player_[stor33].field_1280++
                                        if not sub_578c3585[stor7[address(arg3)]]:
                                            sub_578c3585[stor7[address(arg3)]] = stor33
                        else:
                            stor33++
                            sub_654dca74[address(arg3)] = stor33 + 1
                            player_[stor33 + 1].field_0 = stor33 + 1
                            player_[stor33 + 1].field_256 = arg3
                            player_[stor33 + 1].field_512 = 0
                            player_[stor33 + 1].field_768 = 0
                            player_[stor33 + 1].field_1024 = 0
                            player_[stor33 + 1].field_1280 = 0
                            player_[stor33 + 1].field_1536 = block.timestamp
                            if not arg4:
                                sub_578c3585[0] = stor33
                                player_[stor33].field_1024++
                            else:
                                if sub_654dca74[address(arg4)] > 0:
                                    sub_578c3585[0] = stor33
                                    player_[stor33].field_1024++
                                    if sub_654dca74[address(arg4)] > 0:
                                        player_[stor7[address(arg4)]].field_1280++
                                        if not sub_578c3585[stor33]:
                                            sub_578c3585[stor33] = sub_654dca74[address(arg4)]
                                else:
                                    stor33++
                                    sub_654dca74[address(arg4)] = stor33 + 1
                                    player_[stor33 + 1].field_0 = stor33 + 1
                                    player_[stor33 + 1].field_256 = arg4
                                    player_[stor33 + 1].field_512 = 0
                                    player_[stor33 + 1].field_768 = 0
                                    player_[stor33 + 1].field_1024 = 0
                                    player_[stor33 + 1].field_1280 = 0
                                    player_[stor33 + 1].field_1536 = block.timestamp
                                    sub_578c3585[0] = stor33
                                    player_[stor33].field_1024++
                                    if stor33 > 0:
                                        player_[stor33].field_1280++
                                        if not sub_578c3585[stor33]:
                                            sub_578c3585[stor33] = stor33
        if player_[stor7[stor31]].field_0 == sub_578c3585[0]:
            require (stor32 * arg1 * stor11 / 100) + player_[player_[stor7[stor31]].field_0].field_512 >= player_[player_[stor7[stor31]].field_0].field_512
            player_[player_[stor7[stor31]].field_0].field_512 += stor32 * arg1 * stor11 / 100
        else:
            require stor20 > 0
            require stor20 <= 100
            if stor32 * arg1 * stor11 / 100:
                require stor32 * arg1 * stor11 / 100
                require stor20 * stor32 * arg1 * stor11 / 100 / stor32 * arg1 * stor11 / 100 == stor20
            require (stor20 * stor32 * arg1 * stor11 / 100 / 100) + player_[stor8[0]].field_512 >= player_[stor8[0]].field_512
            player_[stor8[0]].field_512 += stor20 * stor32 * arg1 * stor11 / 100 / 100
            if sub_578c3585[sub_578c3585[0]] <= 0:
                require stor20 * stor32 * arg1 * stor11 / 100 / 100 <= stor32 * arg1 * stor11 / 100
                require (stor32 * arg1 * stor11 / 100) - (stor20 * stor32 * arg1 * stor11 / 100 / 100) > 0
                require (stor32 * arg1 * stor11 / 100) - (stor20 * stor32 * arg1 * stor11 / 100 / 100) + player_[player_[stor7[stor31]].field_0].field_512 >= player_[player_[stor7[stor31]].field_0].field_512
                player_[player_[stor7[stor31]].field_0].field_512 = (stor32 * arg1 * stor11 / 100) - (stor20 * stor32 * arg1 * stor11 / 100 / 100) + player_[player_[stor7[stor31]].field_0].field_512
            else:
                require stor21 > 0
                require stor21 <= 100
                if stor32 * arg1 * stor11 / 100:
                    require stor32 * arg1 * stor11 / 100
                    require stor21 * stor32 * arg1 * stor11 / 100 / stor32 * arg1 * stor11 / 100 == stor21
                require stor21 * stor32 * arg1 * stor11 / 100 / 100 <= stor32 * arg1 * stor11 / 100
                require (stor21 * stor32 * arg1 * stor11 / 100 / 100) + player_[stor8[stor8[0]]].field_512 >= player_[stor8[stor8[0]]].field_512
                player_[stor8[stor8[0]]].field_512 += stor21 * stor32 * arg1 * stor11 / 100 / 100
                require stor20 * stor32 * arg1 * stor11 / 100 / 100 <= (stor32 * arg1 * stor11 / 100) - (stor21 * stor32 * arg1 * stor11 / 100 / 100)
                require (stor32 * arg1 * stor11 / 100) - (stor21 * stor32 * arg1 * stor11 / 100 / 100) - (stor20 * stor32 * arg1 * stor11 / 100 / 100) > 0
                require (stor32 * arg1 * stor11 / 100) - (stor21 * stor32 * arg1 * stor11 / 100 / 100) - (stor20 * stor32 * arg1 * stor11 / 100 / 100) + player_[player_[stor7[stor31]].field_0].field_512 >= player_[player_[stor7[stor31]].field_0].field_512
                player_[player_[stor7[stor31]].field_0].field_512 = (stor32 * arg1 * stor11 / 100) - (stor21 * stor32 * arg1 * stor11 / 100 / 100) - (stor20 * stor32 * arg1 * stor11 / 100 / 100) + player_[player_[stor7[stor31]].field_0].field_512
        require 0 < player_[0].field_0
        if arg1:
            require arg1
            require stor13 * arg1 / arg1 == stor13
        require stor13 * arg1 > 0
        player_[0].field_768 += stor13 * arg1
        require player_[0].field_768 <= player_[0].field_768 + (stor13 * arg1)
    else:
        if sub_654dca74[address(msg.sender)] > 0:
            require stor32 > 0
            require stor32 <= 100
            if arg1 * stor11:
                require arg1 * stor11
                require stor32 * arg1 * stor11 / arg1 * stor11 == stor32
            require stor14 > 0
            require stor14 <= 100
            if arg1 * stor11:
                require arg1 * stor11
                require stor14 * arg1 * stor11 / arg1 * stor11 == stor14
            require stor32 * arg1 * stor11 / 100 > 0
            if 0 == sub_578c3585[stor7[address(msg.sender)]]:
                if not arg2:
                    call address(stor34.field_0) with:
                       funct Mask(32, 224, sha3('addOtherGameAff(uint256,address,', 'address,address)')) >> 224
                         gas gas_remaining wei
                        args player_[stor7[stor31]].field_0, msg.sender, sub_b2e02843Address, 0
                    if not ext_call.success:
                        sub_578c3585[stor7[address(msg.sender)]] = player_[stor7[stor31]].field_0
                        player_[player_[stor7[stor31]].field_0].field_1024++
                    else:
                        if not sub_b2e02843Address:
                            sub_578c3585[stor7[address(msg.sender)]] = 0
                            player_[0].field_1024++
                        else:
                            if sub_654dca74[stor31] > 0:
                                sub_578c3585[stor7[address(msg.sender)]] = sub_654dca74[stor31]
                                player_[stor7[stor31]].field_1024++
                            else:
                                stor33++
                                sub_654dca74[stor31] = stor33 + 1
                                player_[stor33 + 1].field_0 = stor33 + 1
                                player_[stor33 + 1].field_256 = sub_b2e02843Address
                                player_[stor33 + 1].field_512 = 0
                                player_[stor33 + 1].field_768 = 0
                                player_[stor33 + 1].field_1024 = 0
                                player_[stor33 + 1].field_1280 = 0
                                player_[stor33 + 1].field_1536 = block.timestamp
                                sub_578c3585[stor7[address(msg.sender)]] = stor33
                                player_[stor33].field_1024++
                else:
                    call address(stor34.field_0) with:
                       funct Mask(32, 224, sha3('addOtherGameAff(uint256,address,', 'address,address)')) >> 224
                         gas gas_remaining wei
                        args arg2, msg.sender, address(arg3), arg4
                    if not ext_call.success:
                        sub_578c3585[stor7[address(msg.sender)]] = player_[stor7[stor31]].field_0
                        player_[player_[stor7[stor31]].field_0].field_1024++
                    else:
                        if not arg3:
                            if not arg4:
                                sub_578c3585[stor7[address(msg.sender)]] = 0
                                player_[0].field_1024++
                            else:
                                if sub_654dca74[address(arg4)] > 0:
                                    sub_578c3585[stor7[address(msg.sender)]] = 0
                                    player_[0].field_1024++
                                    if sub_654dca74[address(arg4)] > 0:
                                        player_[stor7[address(arg4)]].field_1280++
                                        if not sub_578c3585[0]:
                                            sub_578c3585[0] = sub_654dca74[address(arg4)]
                                else:
                                    stor33++
                                    sub_654dca74[address(arg4)] = stor33 + 1
                                    player_[stor33 + 1].field_0 = stor33 + 1
                                    player_[stor33 + 1].field_256 = arg4
                                    player_[stor33 + 1].field_512 = 0
                                    player_[stor33 + 1].field_768 = 0
                                    player_[stor33 + 1].field_1024 = 0
                                    player_[stor33 + 1].field_1280 = 0
                                    player_[stor33 + 1].field_1536 = block.timestamp
                                    sub_578c3585[stor7[address(msg.sender)]] = 0
                                    player_[0].field_1024++
                                    if stor33 > 0:
                                        player_[stor33].field_1280++
                                        if not sub_578c3585[0]:
                                            sub_578c3585[0] = stor33
                        else:
                            if sub_654dca74[address(arg3)] > 0:
                                if not arg4:
                                    sub_578c3585[stor7[address(msg.sender)]] = sub_654dca74[address(arg3)]
                                    player_[stor7[address(arg3)]].field_1024++
                                else:
                                    if sub_654dca74[address(arg4)] > 0:
                                        sub_578c3585[stor7[address(msg.sender)]] = sub_654dca74[address(arg3)]
                                        player_[stor7[address(arg3)]].field_1024++
                                        if sub_654dca74[address(arg4)] > 0:
                                            player_[stor7[address(arg4)]].field_1280++
                                            if not sub_578c3585[stor7[address(arg3)]]:
                                                sub_578c3585[stor7[address(arg3)]] = sub_654dca74[address(arg4)]
                                    else:
                                        stor33++
                                        sub_654dca74[address(arg4)] = stor33 + 1
                                        player_[stor33 + 1].field_0 = stor33 + 1
                                        player_[stor33 + 1].field_256 = arg4
                                        player_[stor33 + 1].field_512 = 0
                                        player_[stor33 + 1].field_768 = 0
                                        player_[stor33 + 1].field_1024 = 0
                                        player_[stor33 + 1].field_1280 = 0
                                        player_[stor33 + 1].field_1536 = block.timestamp
                                        sub_578c3585[stor7[address(msg.sender)]] = sub_654dca74[address(arg3)]
                                        player_[stor7[address(arg3)]].field_1024++
                                        if stor33 > 0:
                                            player_[stor33].field_1280++
                                            if not sub_578c3585[stor7[address(arg3)]]:
                                                sub_578c3585[stor7[address(arg3)]] = stor33
                            else:
                                stor33++
                                sub_654dca74[address(arg3)] = stor33 + 1
                                player_[stor33 + 1].field_0 = stor33 + 1
                                player_[stor33 + 1].field_256 = arg3
                                player_[stor33 + 1].field_512 = 0
                                player_[stor33 + 1].field_768 = 0
                                player_[stor33 + 1].field_1024 = 0
                                player_[stor33 + 1].field_1280 = 0
                                player_[stor33 + 1].field_1536 = block.timestamp
                                if not arg4:
                                    sub_578c3585[stor7[address(msg.sender)]] = stor33
                                    player_[stor33].field_1024++
                                else:
                                    if sub_654dca74[address(arg4)] > 0:
                                        sub_578c3585[stor7[address(msg.sender)]] = stor33
                                        player_[stor33].field_1024++
                                        if sub_654dca74[address(arg4)] > 0:
                                            player_[stor7[address(arg4)]].field_1280++
                                            if not sub_578c3585[stor33]:
                                                sub_578c3585[stor33] = sub_654dca74[address(arg4)]
                                    else:
                                        stor33++
                                        sub_654dca74[address(arg4)] = stor33 + 1
                                        player_[stor33 + 1].field_0 = stor33 + 1
                                        player_[stor33 + 1].field_256 = arg4
                                        player_[stor33 + 1].field_512 = 0
                                        player_[stor33 + 1].field_768 = 0
                                        player_[stor33 + 1].field_1024 = 0
                                        player_[stor33 + 1].field_1280 = 0
                                        player_[stor33 + 1].field_1536 = block.timestamp
                                        sub_578c3585[stor7[address(msg.sender)]] = stor33
                                        player_[stor33].field_1024++
                                        if stor33 > 0:
                                            player_[stor33].field_1280++
                                            if not sub_578c3585[stor33]:
                                                sub_578c3585[stor33] = stor33
            if player_[stor7[stor31]].field_0 == sub_578c3585[stor7[address(msg.sender)]]:
                require (stor32 * arg1 * stor11 / 100) + player_[player_[stor7[stor31]].field_0].field_512 >= player_[player_[stor7[stor31]].field_0].field_512
                player_[player_[stor7[stor31]].field_0].field_512 += stor32 * arg1 * stor11 / 100
            else:
                require stor20 > 0
                require stor20 <= 100
                if stor32 * arg1 * stor11 / 100:
                    require stor32 * arg1 * stor11 / 100
                    require stor20 * stor32 * arg1 * stor11 / 100 / stor32 * arg1 * stor11 / 100 == stor20
                require (stor20 * stor32 * arg1 * stor11 / 100 / 100) + player_[stor8[stor7[address(msg.sender)]]].field_512 >= player_[stor8[stor7[address(msg.sender)]]].field_512
                player_[stor8[stor7[address(msg.sender)]]].field_512 += stor20 * stor32 * arg1 * stor11 / 100 / 100
                if sub_578c3585[sub_578c3585[stor7[address(msg.sender)]]] <= 0:
                    require stor20 * stor32 * arg1 * stor11 / 100 / 100 <= stor32 * arg1 * stor11 / 100
                    require (stor32 * arg1 * stor11 / 100) - (stor20 * stor32 * arg1 * stor11 / 100 / 100) > 0
                    require (stor32 * arg1 * stor11 / 100) - (stor20 * stor32 * arg1 * stor11 / 100 / 100) + player_[player_[stor7[stor31]].field_0].field_512 >= player_[player_[stor7[stor31]].field_0].field_512
                    player_[player_[stor7[stor31]].field_0].field_512 = (stor32 * arg1 * stor11 / 100) - (stor20 * stor32 * arg1 * stor11 / 100 / 100) + player_[player_[stor7[stor31]].field_0].field_512
                else:
                    require stor21 > 0
                    require stor21 <= 100
                    if stor32 * arg1 * stor11 / 100:
                        require stor32 * arg1 * stor11 / 100
                        require stor21 * stor32 * arg1 * stor11 / 100 / stor32 * arg1 * stor11 / 100 == stor21
                    require stor21 * stor32 * arg1 * stor11 / 100 / 100 <= stor32 * arg1 * stor11 / 100
                    require (stor21 * stor32 * arg1 * stor11 / 100 / 100) + player_[stor8[stor8[stor7[address(msg.sender)]]]].field_512 >= player_[stor8[stor8[stor7[address(msg.sender)]]]].field_512
                    player_[stor8[stor8[stor7[address(msg.sender)]]]].field_512 += stor21 * stor32 * arg1 * stor11 / 100 / 100
                    require stor20 * stor32 * arg1 * stor11 / 100 / 100 <= (stor32 * arg1 * stor11 / 100) - (stor21 * stor32 * arg1 * stor11 / 100 / 100)
                    require (stor32 * arg1 * stor11 / 100) - (stor21 * stor32 * arg1 * stor11 / 100 / 100) - (stor20 * stor32 * arg1 * stor11 / 100 / 100) > 0
                    require (stor32 * arg1 * stor11 / 100) - (stor21 * stor32 * arg1 * stor11 / 100 / 100) - (stor20 * stor32 * arg1 * stor11 / 100 / 100) + player_[player_[stor7[stor31]].field_0].field_512 >= player_[player_[stor7[stor31]].field_0].field_512
                    player_[player_[stor7[stor31]].field_0].field_512 = (stor32 * arg1 * stor11 / 100) - (stor21 * stor32 * arg1 * stor11 / 100 / 100) - (stor20 * stor32 * arg1 * stor11 / 100 / 100) + player_[player_[stor7[stor31]].field_0].field_512
            require 0 < player_[stor7[address(msg.sender)]].field_0
            if arg1:
                require arg1
                require stor13 * arg1 / arg1 == stor13
            require stor13 * arg1 > 0
            player_[stor7[address(msg.sender)]].field_768 += stor13 * arg1
            require player_[stor7[address(msg.sender)]].field_768 <= player_[stor7[address(msg.sender)]].field_768 + (stor13 * arg1)
        else:
            stor33++
            sub_654dca74[address(msg.sender)] = stor33 + 1
            player_[stor33 + 1].field_0 = stor33 + 1
            player_[stor33 + 1].field_256 = msg.sender
            player_[stor33 + 1].field_512 = 0
            player_[stor33 + 1].field_768 = 0
            player_[stor33 + 1].field_1024 = 0
            player_[stor33 + 1].field_1280 = 0
            player_[stor33 + 1].field_1536 = block.timestamp
            require stor32 > 0
            require stor32 <= 100
            if arg1 * stor11:
                require arg1 * stor11
                require stor32 * arg1 * stor11 / arg1 * stor11 == stor32
            require stor14 > 0
            require stor14 <= 100
            if arg1 * stor11:
                require arg1 * stor11
                require stor14 * arg1 * stor11 / arg1 * stor11 == stor14
            require stor32 * arg1 * stor11 / 100 > 0
            if 0 == sub_578c3585[stor33]:
                if not arg2:
                    call address(stor34.field_0) with:
                       funct Mask(32, 224, sha3('addOtherGameAff(uint256,address,', 'address,address)')) >> 224
                         gas gas_remaining wei
                        args player_[stor7[stor31]].field_0, msg.sender, sub_b2e02843Address, 0
                    if not ext_call.success:
                        sub_578c3585[stor33] = player_[stor7[stor31]].field_0
                        player_[player_[stor7[stor31]].field_0].field_1024++
                    else:
                        if not sub_b2e02843Address:
                            sub_578c3585[stor33] = 0
                            player_[0].field_1024++
                        else:
                            if sub_654dca74[stor31] > 0:
                                sub_578c3585[stor33] = sub_654dca74[stor31]
                                player_[stor7[stor31]].field_1024++
                            else:
                                stor33++
                                sub_654dca74[stor31] = stor33 + 1
                                player_[stor33 + 1].field_0 = stor33 + 1
                                player_[stor33 + 1].field_256 = sub_b2e02843Address
                                player_[stor33 + 1].field_512 = 0
                                player_[stor33 + 1].field_768 = 0
                                player_[stor33 + 1].field_1024 = 0
                                player_[stor33 + 1].field_1280 = 0
                                player_[stor33 + 1].field_1536 = block.timestamp
                                sub_578c3585[stor33] = stor33
                                player_[stor33].field_1024++
                else:
                    call address(stor34.field_0) with:
                       funct Mask(32, 224, sha3('addOtherGameAff(uint256,address,', 'address,address)')) >> 224
                         gas gas_remaining wei
                        args arg2, msg.sender, address(arg3), arg4
                    if not ext_call.success:
                        sub_578c3585[stor33] = player_[stor7[stor31]].field_0
                        player_[player_[stor7[stor31]].field_0].field_1024++
                    else:
                        if not arg3:
                            if not arg4:
                                sub_578c3585[stor33] = 0
                                player_[0].field_1024++
                            else:
                                if sub_654dca74[address(arg4)] > 0:
                                    sub_578c3585[stor33] = 0
                                    player_[0].field_1024++
                                    if sub_654dca74[address(arg4)] > 0:
                                        player_[stor7[address(arg4)]].field_1280++
                                        if not sub_578c3585[0]:
                                            sub_578c3585[0] = sub_654dca74[address(arg4)]
                                else:
                                    stor33++
                                    sub_654dca74[address(arg4)] = stor33 + 1
                                    player_[stor33 + 1].field_0 = stor33 + 1
                                    player_[stor33 + 1].field_256 = arg4
                                    player_[stor33 + 1].field_512 = 0
                                    player_[stor33 + 1].field_768 = 0
                                    player_[stor33 + 1].field_1024 = 0
                                    player_[stor33 + 1].field_1280 = 0
                                    player_[stor33 + 1].field_1536 = block.timestamp
                                    sub_578c3585[stor33] = 0
                                    player_[0].field_1024++
                                    if stor33 > 0:
                                        player_[stor33].field_1280++
                                        if not sub_578c3585[0]:
                                            sub_578c3585[0] = stor33
                        else:
                            if sub_654dca74[address(arg3)] > 0:
                                if not arg4:
                                    sub_578c3585[stor33] = sub_654dca74[address(arg3)]
                                    player_[stor7[address(arg3)]].field_1024++
                                else:
                                    if sub_654dca74[address(arg4)] > 0:
                                        sub_578c3585[stor33] = sub_654dca74[address(arg3)]
                                        player_[stor7[address(arg3)]].field_1024++
                                        if sub_654dca74[address(arg4)] > 0:
                                            player_[stor7[address(arg4)]].field_1280++
                                            if not sub_578c3585[stor7[address(arg3)]]:
                                                sub_578c3585[stor7[address(arg3)]] = sub_654dca74[address(arg4)]
                                    else:
                                        stor33++
                                        sub_654dca74[address(arg4)] = stor33 + 1
                                        player_[stor33 + 1].field_0 = stor33 + 1
                                        player_[stor33 + 1].field_256 = arg4
                                        player_[stor33 + 1].field_512 = 0
                                        player_[stor33 + 1].field_768 = 0
                                        player_[stor33 + 1].field_1024 = 0
                                        player_[stor33 + 1].field_1280 = 0
                                        player_[stor33 + 1].field_1536 = block.timestamp
                                        sub_578c3585[stor33] = sub_654dca74[address(arg3)]
                                        player_[stor7[address(arg3)]].field_1024++
                                        if stor33 > 0:
                                            player_[stor33].field_1280++
                                            if not sub_578c3585[stor7[address(arg3)]]:
                                                sub_578c3585[stor7[address(arg3)]] = stor33
                            else:
                                stor33++
                                sub_654dca74[address(arg3)] = stor33 + 1
                                player_[stor33 + 1].field_0 = stor33 + 1
                                player_[stor33 + 1].field_256 = arg3
                                player_[stor33 + 1].field_512 = 0
                                player_[stor33 + 1].field_768 = 0
                                player_[stor33 + 1].field_1024 = 0
                                player_[stor33 + 1].field_1280 = 0
                                player_[stor33 + 1].field_1536 = block.timestamp
                                if not arg4:
                                    sub_578c3585[stor33] = stor33
                                    player_[stor33].field_1024++
                                else:
                                    if sub_654dca74[address(arg4)] > 0:
                                        sub_578c3585[stor33] = stor33
                                        player_[stor33].field_1024++
                                        if sub_654dca74[address(arg4)] > 0:
                                            player_[stor7[address(arg4)]].field_1280++
                                            if not sub_578c3585[stor33]:
                                                sub_578c3585[stor33] = sub_654dca74[address(arg4)]
                                    else:
                                        stor33++
                                        sub_654dca74[address(arg4)] = stor33 + 1
                                        player_[stor33 + 1].field_0 = stor33 + 1
                                        player_[stor33 + 1].field_256 = arg4
                                        player_[stor33 + 1].field_512 = 0
                                        player_[stor33 + 1].field_768 = 0
                                        player_[stor33 + 1].field_1024 = 0
                                        player_[stor33 + 1].field_1280 = 0
                                        player_[stor33 + 1].field_1536 = block.timestamp
                                        sub_578c3585[stor33] = stor33
                                        player_[stor33].field_1024++
                                        if stor33 > 0:
                                            player_[stor33].field_1280++
                                            if not sub_578c3585[stor33]:
                                                sub_578c3585[stor33] = stor33
            if player_[stor7[stor31]].field_0 == sub_578c3585[stor33]:
                require (stor32 * arg1 * stor11 / 100) + player_[player_[stor7[stor31]].field_0].field_512 >= player_[player_[stor7[stor31]].field_0].field_512
                player_[player_[stor7[stor31]].field_0].field_512 += stor32 * arg1 * stor11 / 100
            else:
                require stor20 > 0
                require stor20 <= 100
                if stor32 * arg1 * stor11 / 100:
                    require stor32 * arg1 * stor11 / 100
                    require stor20 * stor32 * arg1 * stor11 / 100 / stor32 * arg1 * stor11 / 100 == stor20
                require (stor20 * stor32 * arg1 * stor11 / 100 / 100) + player_[stor8[stor33]].field_512 >= player_[stor8[stor33]].field_512
                player_[stor8[stor33]].field_512 += stor20 * stor32 * arg1 * stor11 / 100 / 100
                if sub_578c3585[sub_578c3585[stor33]] <= 0:
                    require stor20 * stor32 * arg1 * stor11 / 100 / 100 <= stor32 * arg1 * stor11 / 100
                    require (stor32 * arg1 * stor11 / 100) - (stor20 * stor32 * arg1 * stor11 / 100 / 100) > 0
                    require (stor32 * arg1 * stor11 / 100) - (stor20 * stor32 * arg1 * stor11 / 100 / 100) + player_[player_[stor7[stor31]].field_0].field_512 >= player_[player_[stor7[stor31]].field_0].field_512
                    player_[player_[stor7[stor31]].field_0].field_512 = (stor32 * arg1 * stor11 / 100) - (stor20 * stor32 * arg1 * stor11 / 100 / 100) + player_[player_[stor7[stor31]].field_0].field_512
                else:
                    require stor21 > 0
                    require stor21 <= 100
                    if stor32 * arg1 * stor11 / 100:
                        require stor32 * arg1 * stor11 / 100
                        require stor21 * stor32 * arg1 * stor11 / 100 / stor32 * arg1 * stor11 / 100 == stor21
                    require stor21 * stor32 * arg1 * stor11 / 100 / 100 <= stor32 * arg1 * stor11 / 100
                    require (stor21 * stor32 * arg1 * stor11 / 100 / 100) + player_[stor8[stor8[stor33]]].field_512 >= player_[stor8[stor8[stor33]]].field_512
                    player_[stor8[stor8[stor33]]].field_512 += stor21 * stor32 * arg1 * stor11 / 100 / 100
                    require stor20 * stor32 * arg1 * stor11 / 100 / 100 <= (stor32 * arg1 * stor11 / 100) - (stor21 * stor32 * arg1 * stor11 / 100 / 100)
                    require (stor32 * arg1 * stor11 / 100) - (stor21 * stor32 * arg1 * stor11 / 100 / 100) - (stor20 * stor32 * arg1 * stor11 / 100 / 100) > 0
                    require (stor32 * arg1 * stor11 / 100) - (stor21 * stor32 * arg1 * stor11 / 100 / 100) - (stor20 * stor32 * arg1 * stor11 / 100 / 100) + player_[player_[stor7[stor31]].field_0].field_512 >= player_[player_[stor7[stor31]].field_0].field_512
                    player_[player_[stor7[stor31]].field_0].field_512 = (stor32 * arg1 * stor11 / 100) - (stor21 * stor32 * arg1 * stor11 / 100 / 100) - (stor20 * stor32 * arg1 * stor11 / 100 / 100) + player_[player_[stor7[stor31]].field_0].field_512
            require 0 < player_[stor33].field_0
            if arg1:
                require arg1
                require stor13 * arg1 / arg1 == stor13
            require stor13 * arg1 > 0
            player_[stor33].field_768 += stor13 * arg1
            require player_[stor33].field_768 <= player_[stor33].field_768 + (stor13 * arg1)
    require stor13 * arg1 == stor13 * arg1
    require (stor13 * arg1) + stor26 >= stor26
    stor26 += stor13 * arg1
    require (stor14 * arg1 * stor11 / 100) + stor29 >= stor29
    stor29 += stor14 * arg1 * stor11 / 100
    emit Buy(arg1, arg1 * stor11, msg.sender);
}



}
