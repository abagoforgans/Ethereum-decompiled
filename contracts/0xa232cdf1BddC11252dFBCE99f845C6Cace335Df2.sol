contract main {




// =====================  Runtime code  =====================


#
#  - __callback(bytes32 arg1, string arg2)
#  - bet(uint256 arg1, uint8 arg2)
#
array of uint256 stor1;
mapping of struct player_;
mapping of uint256 sub_654dca74;
mapping of uint256 sub_578c3585;
mapping of struct sub_90dee8dc;
array of uint256 stor10;
uint256 stor210;
uint256 stor211;
uint256 stor212;
uint256 stor213;
uint256 stor214;
uint8 stor215;
uint8 stor215; offset 8
address sub_b2e02843Address;

function sub_578c3585(?) {
    return sub_578c3585[arg1]
}

function sub_654dca74(?) {
    return sub_654dca74[arg1]
}

function sub_90dee8dc(?) {
    return sub_90dee8dc[arg1].field_0, 
           sub_90dee8dc[arg1][3][1].field_0,
           sub_90dee8dc[arg1][3][2].field_0,
           sub_90dee8dc[arg1][3][3].field_0,
           sub_90dee8dc[arg1].field_520,
           sub_90dee8dc[arg1].field_512,
           sub_90dee8dc[arg1].field_512,
           sub_90dee8dc[arg1].field_256
}

function sub_b2e02843(?) {
    return sub_b2e02843Address
}

function player_(uint256 arg1) {
    return player_[arg1].field_0, player_[arg1].field_256, player_[arg1].field_512, player_[arg1].field_768
}

function closeGame() {
    if tx.origin != msg.sender:
        revert with 0, 'Error Action!'
    if ext_code.size(msg.sender):
        revert with 0, 'Sender not authorized!'
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

function sub_34b4b1e4(?) {
    return stor210, stor211, stor212, stor213, stor214, uint8(stor215.field_0), uint8(stor215.field_8)
}

function sub_e08bc1fd(?) {
    idx = 6496
    s = 10
    while 12896 > idx + 32:
        mem[idx + 32] = stor1[s]
        idx = idx + 32
        s = s + 1
        continue 
    return stor10.length, mem[6528 len 6368]
}

function withdraw(uint256 arg1) {
    if tx.origin != msg.sender:
        revert with 0, 'Error Action!'
    if ext_code.size(msg.sender):
        revert with 0, 'Sender not authorized!'
    if arg1 != sub_654dca74[msg.sender]:
        revert with 0, 'Error Action'
    if player_[arg1].field_768 != msg.sender:
        revert with 0, 'Error Action'
    if player_[arg1].field_256 <= 0:
        revert with 0, 'Insufficient balance'
    player_[arg1].field_256 = 0
    call player_[arg1].field_768 with:
       value player_[arg1].field_256 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function closeTable(uint256 arg1) {
    if tx.origin != msg.sender:
        revert with 0, 'Error Action!'
    if ext_code.size(msg.sender):
        revert with 0, 'Sender not authorized!'
    if sub_b2e02843Address != msg.sender:
        revert with 0, 'Error 1'
    if block.timestamp <= sub_90dee8dc[arg1].field_256:
        revert with 0, 'Error 2'
    if sub_90dee8dc[arg1].field_520 < 1:
        revert with 0, 'Error 3'
    if sub_90dee8dc[arg1].field_520 > 3:
        revert with 0, 'Error 3'
    sub_90dee8dc[arg1].field_520 = 5
    require 0 or sub_90dee8dc[arg1].field_512 < 200
    stor10[0 or stor9[arg1].field_512] = 0
    if 0 >= sub_90dee8dc[arg1][3][1].field_0:
        if sub_90dee8dc[arg1][3][2].field_0 <= 0:
            if sub_90dee8dc[arg1][3][3].field_0 <= 0:
                if 0 < stor214:
                    revert with 0, 'Error 4'
                require stor214 <= 0
                require -stor214 + player_[stor7[stor216]].field_256 >= player_[stor7[stor216]].field_256
                player_[stor7[stor216]].field_256 -= stor214
            else:
                require stor210
                require uint8(stor215.field_0) > 0
                require uint8(stor215.field_0) <= 100
                if sub_90dee8dc[arg1].field_0 / stor210:
                    require sub_90dee8dc[arg1].field_0 / stor210
                    require uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / stor210 / sub_90dee8dc[arg1].field_0 / stor210 == uint8(stor215.field_0)
                require uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / stor210 / 100 >= 0
                require uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / stor210 / 100 <= sub_90dee8dc[arg1].field_0 / stor210
                require (sub_90dee8dc[arg1].field_0 / stor210) - (uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / stor210 / 100) + player_[stor9[arg1][3][3].field_0].field_256 >= player_[stor9[arg1][3][3].field_0].field_256
                player_[stor9[arg1][3][3].field_0].field_256 = (sub_90dee8dc[arg1].field_0 / stor210) - (uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / stor210 / 100) + player_[stor9[arg1][3][3].field_0].field_256
                if uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / stor210 / 100 < stor214:
                    revert with 0, 'Error 4'
                require stor214 <= uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / stor210 / 100
                require (uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / stor210 / 100) - stor214 + player_[stor7[stor216]].field_256 >= player_[stor7[stor216]].field_256
                player_[stor7[stor216]].field_256 = (uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / stor210 / 100) - stor214 + player_[stor7[stor216]].field_256
        else:
            require uint8(stor215.field_0) > 0
            require uint8(stor215.field_0) <= 100
            if sub_90dee8dc[arg1].field_0:
                require sub_90dee8dc[arg1].field_0
                require uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / sub_90dee8dc[arg1].field_0 == uint8(stor215.field_0)
            require uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / 100 >= 0
            require uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / 100 <= sub_90dee8dc[arg1].field_0
            require sub_90dee8dc[arg1].field_0 - (uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / 100) + player_[stor9[arg1][3][2].field_0].field_256 >= player_[stor9[arg1][3][2].field_0].field_256
            player_[stor9[arg1][3][2].field_0].field_256 = sub_90dee8dc[arg1].field_0 - (uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / 100) + player_[stor9[arg1][3][2].field_0].field_256
            if sub_90dee8dc[arg1][3][3].field_0 <= 0:
                if uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / 100 < stor214:
                    revert with 0, 'Error 4'
                require stor214 <= uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / 100
                require (uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / 100) - stor214 + player_[stor7[stor216]].field_256 >= player_[stor7[stor216]].field_256
                player_[stor7[stor216]].field_256 = (uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / 100) - stor214 + player_[stor7[stor216]].field_256
            else:
                require stor210
                require uint8(stor215.field_0) > 0
                require uint8(stor215.field_0) <= 100
                if sub_90dee8dc[arg1].field_0 / stor210:
                    require sub_90dee8dc[arg1].field_0 / stor210
                    require uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / stor210 / sub_90dee8dc[arg1].field_0 / stor210 == uint8(stor215.field_0)
                require (uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / stor210 / 100) + (uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / 100) >= uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / 100
                require uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / stor210 / 100 <= sub_90dee8dc[arg1].field_0 / stor210
                require (sub_90dee8dc[arg1].field_0 / stor210) - (uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / stor210 / 100) + player_[stor9[arg1][3][3].field_0].field_256 >= player_[stor9[arg1][3][3].field_0].field_256
                player_[stor9[arg1][3][3].field_0].field_256 = (sub_90dee8dc[arg1].field_0 / stor210) - (uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / stor210 / 100) + player_[stor9[arg1][3][3].field_0].field_256
                if (uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / stor210 / 100) + (uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / 100) < stor214:
                    revert with 0, 'Error 4'
                require stor214 <= (uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / stor210 / 100) + (uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / 100)
                require (uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / stor210 / 100) + (uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / 100) - stor214 + player_[stor7[stor216]].field_256 >= player_[stor7[stor216]].field_256
                player_[stor7[stor216]].field_256 = (uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / stor210 / 100) + (uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / 100) - stor214 + player_[stor7[stor216]].field_256
    else:
        require uint8(stor215.field_0) > 0
        require uint8(stor215.field_0) <= 100
        if sub_90dee8dc[arg1].field_0:
            require sub_90dee8dc[arg1].field_0
            require uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / sub_90dee8dc[arg1].field_0 == uint8(stor215.field_0)
        require uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / 100 <= sub_90dee8dc[arg1].field_0
        require sub_90dee8dc[arg1].field_0 - (uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / 100) + player_[stor9[arg1][3][1].field_0].field_256 >= player_[stor9[arg1][3][1].field_0].field_256
        player_[stor9[arg1][3][1].field_0].field_256 = sub_90dee8dc[arg1].field_0 - (uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / 100) + player_[stor9[arg1][3][1].field_0].field_256
        if sub_90dee8dc[arg1][3][2].field_0 <= 0:
            if sub_90dee8dc[arg1][3][3].field_0 <= 0:
                if uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / 100 < stor214:
                    revert with 0, 'Error 4'
                require stor214 <= uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / 100
                require (uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / 100) - stor214 + player_[stor7[stor216]].field_256 >= player_[stor7[stor216]].field_256
                player_[stor7[stor216]].field_256 = (uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / 100) - stor214 + player_[stor7[stor216]].field_256
            else:
                require stor210
                require uint8(stor215.field_0) > 0
                require uint8(stor215.field_0) <= 100
                if sub_90dee8dc[arg1].field_0 / stor210:
                    require sub_90dee8dc[arg1].field_0 / stor210
                    require uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / stor210 / sub_90dee8dc[arg1].field_0 / stor210 == uint8(stor215.field_0)
                require (uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / stor210 / 100) + (uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / 100) >= uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / 100
                require uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / stor210 / 100 <= sub_90dee8dc[arg1].field_0 / stor210
                require (sub_90dee8dc[arg1].field_0 / stor210) - (uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / stor210 / 100) + player_[stor9[arg1][3][3].field_0].field_256 >= player_[stor9[arg1][3][3].field_0].field_256
                player_[stor9[arg1][3][3].field_0].field_256 = (sub_90dee8dc[arg1].field_0 / stor210) - (uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / stor210 / 100) + player_[stor9[arg1][3][3].field_0].field_256
                if (uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / stor210 / 100) + (uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / 100) < stor214:
                    revert with 0, 'Error 4'
                require stor214 <= (uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / stor210 / 100) + (uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / 100)
                require (uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / stor210 / 100) + (uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / 100) - stor214 + player_[stor7[stor216]].field_256 >= player_[stor7[stor216]].field_256
                player_[stor7[stor216]].field_256 = (uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / stor210 / 100) + (uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / 100) - stor214 + player_[stor7[stor216]].field_256
        else:
            require uint8(stor215.field_0) > 0
            require uint8(stor215.field_0) <= 100
            if sub_90dee8dc[arg1].field_0:
                require sub_90dee8dc[arg1].field_0
                require uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / sub_90dee8dc[arg1].field_0 == uint8(stor215.field_0)
            require 2 * uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / 100 >= uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / 100
            require uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / 100 <= sub_90dee8dc[arg1].field_0
            require sub_90dee8dc[arg1].field_0 - (uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / 100) + player_[stor9[arg1][3][2].field_0].field_256 >= player_[stor9[arg1][3][2].field_0].field_256
            player_[stor9[arg1][3][2].field_0].field_256 = sub_90dee8dc[arg1].field_0 - (uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / 100) + player_[stor9[arg1][3][2].field_0].field_256
            if sub_90dee8dc[arg1][3][3].field_0 <= 0:
                if 2 * uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / 100 < stor214:
                    revert with 0, 'Error 4'
                require stor214 <= 2 * uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / 100
                require (2 * uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / 100) - stor214 + player_[stor7[stor216]].field_256 >= player_[stor7[stor216]].field_256
                player_[stor7[stor216]].field_256 = (2 * uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / 100) - stor214 + player_[stor7[stor216]].field_256
            else:
                require stor210
                require uint8(stor215.field_0) > 0
                require uint8(stor215.field_0) <= 100
                if sub_90dee8dc[arg1].field_0 / stor210:
                    require sub_90dee8dc[arg1].field_0 / stor210
                    require uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / stor210 / sub_90dee8dc[arg1].field_0 / stor210 == uint8(stor215.field_0)
                require (uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / stor210 / 100) + (2 * uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / 100) >= 2 * uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / 100
                require uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / stor210 / 100 <= sub_90dee8dc[arg1].field_0 / stor210
                require (sub_90dee8dc[arg1].field_0 / stor210) - (uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / stor210 / 100) + player_[stor9[arg1][3][3].field_0].field_256 >= player_[stor9[arg1][3][3].field_0].field_256
                player_[stor9[arg1][3][3].field_0].field_256 = (sub_90dee8dc[arg1].field_0 / stor210) - (uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / stor210 / 100) + player_[stor9[arg1][3][3].field_0].field_256
                if (uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / stor210 / 100) + (2 * uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / 100) < stor214:
                    revert with 0, 'Error 4'
                require stor214 <= (uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / stor210 / 100) + (2 * uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / 100)
                require (uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / stor210 / 100) + (2 * uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / 100) - stor214 + player_[stor7[stor216]].field_256 >= player_[stor7[stor216]].field_256
                player_[stor7[stor216]].field_256 = (uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / stor210 / 100) + (2 * uint8(stor215.field_0) * sub_90dee8dc[arg1].field_0 / 100) - stor214 + player_[stor7[stor216]].field_256
    emit Cancel(arg1);
}



}
