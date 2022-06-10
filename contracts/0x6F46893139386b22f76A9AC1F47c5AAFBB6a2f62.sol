contract main {




// =====================  Runtime code  =====================


#
#  - buyByAddress(uint256 arg1, uint256 arg2)
#  - getPlayerEarning(uint256 arg1)
#  - buyFromVault(uint256 arg1, uint256 arg2, uint256 arg3)
#
const name = 'Cryptower'

const symbol = 'CT'


address owner;
mapping of struct players;
mapping of uint256 sub_4fd8be39;
uint256 playerNum;
uint256 totalEther;
uint256 totalKeys;
uint256 sub_f1e4ff5f;
uint256 stor7;
uint256 stor8;
uint256 sub_e808d645;
uint256 sub_c449570d;
uint256 endTime;
address CFOAddress;
address COOAddress;
address sub_ffd1b05cAddress;
address playerBookAddress;
uint256 stor16;
mapping of uint256 sub_07fb021a;
uint256 startTime;

function playerNum() {
    return playerNum
}

function sub_07fb021a(?) {
    return sub_07fb021a[arg1][arg2]
}

function playerBook() {
    return playerBookAddress
}

function CFO() {
    return CFOAddress
}

function endTime() {
    return endTime
}

function totalKeys() {
    return totalKeys
}

function sub_4fd8be39(?) {
    return sub_4fd8be39[arg1]
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function totalEther() {
    return totalEther
}

function sub_c449570d(?) {
    return sub_c449570d
}

function COO() {
    return COOAddress
}

function sub_e808d645(?) {
    return sub_e808d645
}

function sub_f1e4ff5f(?) {
    return sub_f1e4ff5f
}

function players(uint256 arg1) {
    mem[128] = players[arg1][1].field_0
    idx = 128
    s = 0
    while players[arg1][1].length + 96 > idx:
        mem[idx + 32] = players[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return players[arg1].field_0, 
           Array(len=players[arg1][1].length, data=mem[128 len players[arg1][1].length]),
           players[arg1].field_512,
           players[arg1].field_768,
           players[arg1].field_1024,
           players[arg1].field_1280,
           players[arg1].field_1536,
           players[arg1].field_1792,
           players[arg1].field_2048
}

function sub_ffd1b05c(?) {
    return sub_ffd1b05cAddress
}

function _fallback() payable {
    revert
}

function setCOO(address arg1) {
    require msg.sender == owner
    COOAddress = arg1
}

function setCFO(address arg1) {
    require msg.sender == owner
    CFOAddress = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setContractAddress(address arg1, address arg2) {
    if COOAddress != msg.sender:
        revert with 0, 'Only COO can operate.'
    sub_ffd1b05cAddress = arg1
    playerBookAddress = arg2
}

function startGame(uint256 arg1) {
    if COOAddress != msg.sender:
        revert with 0, 'Only COO can operate.'
    require arg1 > block.timestamp
    startTime = arg1
    require startTime + (168 * 24 * 3600) >= startTime
    endTime = startTime + (168 * 24 * 3600)
}

function getTotalGamePot() {
    if not sub_f1e4ff5f:
        if totalKeys:
            if (0 / totalKeys) + stor8 >= 0 / totalKeys:
                return ((0 / totalKeys) + stor8)
    else:
        if sub_f1e4ff5f:
            if sub_f1e4ff5f * stor7 / sub_f1e4ff5f == stor7:
                if totalKeys:
                    if (sub_f1e4ff5f * stor7 / totalKeys) + stor8 >= sub_f1e4ff5f * stor7 / totalKeys:
                        return ((sub_f1e4ff5f * stor7 / totalKeys) + stor8)
    revert
}

function getWinningStageInfo() {
    if not totalEther:
        if totalKeys < 2000000 * 10^18:
            return 0, totalKeys, 0
        if (100000 * 10^18 * stor16) - 100000 * 10^18 / 100000 * 10^18 == stor16 - 1:
            if (100000 * 10^18 * stor16) + 1900000 * 10^18 >= 2000000 * 10^18:
                if (100000 * 10^18 * stor16) + 1900000 * 10^18 <= totalKeys:
                    return stor16, totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18, 0
    else:
        if totalEther:
            if 12 * totalEther / totalEther == 12:
                if totalKeys < 2000000 * 10^18:
                    return 0, totalKeys, 12 * totalEther / 100
                if (100000 * 10^18 * stor16) - 100000 * 10^18 / 100000 * 10^18 == stor16 - 1:
                    if (100000 * 10^18 * stor16) + 1900000 * 10^18 >= 2000000 * 10^18:
                        if (100000 * 10^18 * stor16) + 1900000 * 10^18 <= totalKeys:
                            return stor16, totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18, 12 * totalEther / 100
    revert
}

function receivePlayerInfo(address arg1, string arg2) {
    if playerBookAddress != msg.sender:
        revert with 0, 'must be from playerbook address'
    if sub_4fd8be39[address(arg1)]:
        players[stor2[address(arg1)]].field_256 = (2 * arg2.length) + 1
        s = 0
        idx = arg2 + 36
        while arg2 + arg2.length + 36 > idx:
            players[stor2[address(arg1)]][s + 1].field_0 = cd[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, arg2.length + 31) >> 5
        while players[stor2[address(arg1)]][1].length + 31 / 32 > idx:
            players[stor2[address(arg1)]][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    else:
        playerNum++
        players[stor3].field_0 = arg1
        players[stor3][1][].field_0 = Array(len=arg2.length, data=arg2[all])
        players[stor3].field_512 = 0
        players[stor3].field_768 = 0
        players[stor3].field_1024 = 0
        players[stor3].field_1280 = 0
        players[stor3].field_1536 = 0
        players[stor3].field_1792 = 0
        players[stor3].field_2048 = 0
        sub_4fd8be39[address(arg1)] = playerNum
}

function getPlayerStageKeys() {
    if totalKeys >= 2000000 * 10^18:
        if (100000 * 10^18 * stor16) - 100000 * 10^18 / 100000 * 10^18 == stor16 - 1:
            if (100000 * 10^18 * stor16) + 1900000 * 10^18 >= 2000000 * 10^18:
                if (100000 * 10^18 * stor16) + 1900000 * 10^18 <= totalKeys:
                    return stor16, totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18, sub_07fb021a[stor16][stor2[address(msg.sender)]]
    else:
        idx = 704
        s = 0
        while players[stor2[address(msg.sender)]][1].length + 672 > idx:
            mem[idx + 32] = players[stor2[address(msg.sender)]][s + 1].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if players[stor2[address(msg.sender)]].field_1024 + players[stor2[address(msg.sender)]].field_1280 >= players[stor2[address(msg.sender)]].field_1024:
            if players[stor2[address(msg.sender)]].field_1536 >= 0:
                return 0, 
                       totalKeys,
                       players[stor2[address(msg.sender)]].field_1024 + players[stor2[address(msg.sender)]].field_1280 + players[stor2[address(msg.sender)]].field_1536
    revert
}

function gameWithdraw(uint256 arg1) {
    if COOAddress != msg.sender:
        revert with 0, 'Only COO can operate.'
    if not sub_f1e4ff5f:
        require totalKeys
        require (0 / totalKeys) + stor8 >= 0 / totalKeys
        require sub_c449570d <= (0 / totalKeys) + stor8
        if arg1 <= 0:
            call sub_ffd1b05cAddress with:
               value (0 / totalKeys) + stor8 - sub_c449570d wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require (0 / totalKeys) + stor8 >= sub_c449570d
            sub_c449570d = (0 / totalKeys) + stor8
        else:
            require arg1 <= (0 / totalKeys) + stor8 - sub_c449570d
            call sub_ffd1b05cAddress with:
               value arg1 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require sub_c449570d + arg1 >= sub_c449570d
            sub_c449570d += arg1
    else:
        require sub_f1e4ff5f
        require sub_f1e4ff5f * stor7 / sub_f1e4ff5f == stor7
        require totalKeys
        require (sub_f1e4ff5f * stor7 / totalKeys) + stor8 >= sub_f1e4ff5f * stor7 / totalKeys
        require sub_c449570d <= (sub_f1e4ff5f * stor7 / totalKeys) + stor8
        if arg1 <= 0:
            call sub_ffd1b05cAddress with:
               value (sub_f1e4ff5f * stor7 / totalKeys) + stor8 - sub_c449570d wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require (sub_f1e4ff5f * stor7 / totalKeys) + stor8 >= sub_c449570d
            sub_c449570d = (sub_f1e4ff5f * stor7 / totalKeys) + stor8
        else:
            require arg1 <= (sub_f1e4ff5f * stor7 / totalKeys) + stor8 - sub_c449570d
            call sub_ffd1b05cAddress with:
               value arg1 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require sub_c449570d + arg1 >= sub_c449570d
            sub_c449570d += arg1
}

function teamWithdraw(uint256 arg1) {
    if COOAddress != msg.sender:
        revert with 0, 'Only COO can operate.'
    require endTime + (48 * 24 * 3600) >= endTime
    if block.timestamp > endTime + (48 * 24 * 3600):
        call CFOAddress with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require sub_e808d645 + arg1 >= sub_e808d645
        sub_e808d645 += arg1
    else:
        if not totalEther:
            require sub_e808d645 <= 0
            if arg1 <= 0:
                call CFOAddress with:
                   value -sub_e808d645 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require 0 >= sub_e808d645
                sub_e808d645 = 0
            else:
                require arg1 <= -sub_e808d645
                call CFOAddress with:
                   value arg1 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require sub_e808d645 + arg1 >= sub_e808d645
                sub_e808d645 += arg1
        else:
            require totalEther
            require 10 * totalEther / totalEther == 10
            require sub_e808d645 <= 10 * totalEther / 100
            if arg1 <= 0:
                call CFOAddress with:
                   value (10 * totalEther / 100) - sub_e808d645 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require 10 * totalEther / 100 >= sub_e808d645
                sub_e808d645 = 10 * totalEther / 100
            else:
                require arg1 <= (10 * totalEther / 100) - sub_e808d645
                call CFOAddress with:
                   value arg1 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require sub_e808d645 + arg1 >= sub_e808d645
                sub_e808d645 += arg1
}

function getWinnerPrize(uint256 arg1) {
    if block.timestamp < endTime:
        return 0
    if totalKeys <= 2000000 * 10^18:
        idx = 704
        s = 0
        while players[arg1][1].length + 672 > idx:
            mem[idx + 32] = players[arg1][s + 1].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if players[arg1].field_1024 + players[arg1].field_1280 >= players[arg1].field_1024:
            if players[arg1].field_1536 >= 0:
                if not totalEther:
                    if totalKeys:
                        return (0 / totalKeys)
                else:
                    if totalEther:
                        if 12 * totalEther / totalEther == 12:
                            if not 12 * totalEther / 100:
                                if totalKeys:
                                    return (0 / totalKeys)
                            else:
                                if 12 * totalEther / 100:
                                    if (players[arg1].field_1024 * 12 * totalEther / 100) + (players[arg1].field_1280 * 12 * totalEther / 100) + (players[arg1].field_1536 * 12 * totalEther / 100) / 12 * totalEther / 100 == players[arg1].field_1024 + players[arg1].field_1280 + players[arg1].field_1536:
                                        if totalKeys:
                                            return ((players[arg1].field_1024 * 12 * totalEther / 100) + (players[arg1].field_1280 * 12 * totalEther / 100) + (players[arg1].field_1536 * 12 * totalEther / 100) / totalKeys)
    else:
        if (100000 * 10^18 * stor16) - 100000 * 10^18 / 100000 * 10^18 == stor16 - 1:
            if (100000 * 10^18 * stor16) + 1900000 * 10^18 >= 2000000 * 10^18:
                if (100000 * 10^18 * stor16) + 1900000 * 10^18 <= totalKeys:
                    if not totalEther:
                        if totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18:
                            return (0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18)
                    else:
                        if totalEther:
                            if 12 * totalEther / totalEther == 12:
                                if not 12 * totalEther / 100:
                                    if totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18:
                                        return (0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18)
                                else:
                                    if 12 * totalEther / 100:
                                        if 12 * totalEther / 100 * sub_07fb021a[stor16][arg1] / 12 * totalEther / 100 == sub_07fb021a[stor16][arg1]:
                                            if totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18:
                                                return (12 * totalEther / 100 * sub_07fb021a[stor16][arg1] / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18)
    revert
}

function getKeyPrice(uint256 arg1) {
    if block.timestamp <= startTime:
        return 75 * 10^11
    require totalKeys + arg1 >= totalKeys
    require arg1 <= totalKeys + arg1
    if not totalKeys:
        if not totalKeys:
            if not totalKeys + arg1:
                if not totalKeys + arg1:
                    return 0
                if totalKeys + arg1:
                    if (totalKeys * totalKeys) + (arg1 * totalKeys) + (totalKeys * arg1) + (arg1 * arg1) / totalKeys + arg1 == totalKeys + arg1:
                        if (7812500 * totalKeys * totalKeys) + (7812500 * arg1 * totalKeys) + (7812500 * totalKeys * arg1) + (7812500 * arg1 * arg1) / 7812500 == (totalKeys * totalKeys) + (arg1 * totalKeys) + (totalKeys * arg1) + (arg1 * arg1):
                            if 0 <= (7812500 * totalKeys * totalKeys) + (7812500 * arg1 * totalKeys) + (7812500 * totalKeys * arg1) + (7812500 * arg1 * arg1) / 1000000000000000000 * 10^18:
                                return ((7812500 * totalKeys * totalKeys) + (7812500 * arg1 * totalKeys) + (7812500 * totalKeys * arg1) + (7812500 * arg1 * arg1) / 1000000000000000000 * 10^18)
            else:
                if totalKeys + arg1:
                    if (10^18 * totalKeys) + (10^18 * arg1) / totalKeys + arg1 == 10^18:
                        if (14999984375000 * 10^18 * totalKeys) + (14999984375000 * 10^18 * arg1) / 14999984375000 == (10^18 * totalKeys) + (10^18 * arg1):
                            if not totalKeys + arg1:
                                if (14999984375000 * 10^18 * totalKeys) + (14999984375000 * 10^18 * arg1) / 2 >= 0:
                                    if 0 <= (14999984375000 * 10^18 * totalKeys) + (14999984375000 * 10^18 * arg1) / 2 / 1000000000000000000 * 10^18:
                                        return ((14999984375000 * 10^18 * totalKeys) + (14999984375000 * 10^18 * arg1) / 2 / 1000000000000000000 * 10^18)
                            else:
                                if totalKeys + arg1:
                                    if (totalKeys * totalKeys) + (arg1 * totalKeys) + (totalKeys * arg1) + (arg1 * arg1) / totalKeys + arg1 == totalKeys + arg1:
                                        if (7812500 * totalKeys * totalKeys) + (7812500 * arg1 * totalKeys) + (7812500 * totalKeys * arg1) + (7812500 * arg1 * arg1) / 7812500 == (totalKeys * totalKeys) + (arg1 * totalKeys) + (totalKeys * arg1) + (arg1 * arg1):
                                            if (14999984375000 * 10^18 * totalKeys) + (14999984375000 * 10^18 * arg1) / 2 >= 0:
                                                if 0 <= (7812500 * totalKeys * totalKeys) + (7812500 * arg1 * totalKeys) + (7812500 * totalKeys * arg1) + (7812500 * arg1 * arg1) + ((14999984375000 * 10^18 * totalKeys) + (14999984375000 * 10^18 * arg1) / 2) / 1000000000000000000 * 10^18:
                                                    return ((7812500 * totalKeys * totalKeys) + (7812500 * arg1 * totalKeys) + (7812500 * totalKeys * arg1) + (7812500 * arg1 * arg1) + ((14999984375000 * 10^18 * totalKeys) + (14999984375000 * 10^18 * arg1) / 2) / 1000000000000000000 * 10^18)
        else:
            if totalKeys:
                if totalKeys * totalKeys / totalKeys == totalKeys:
                    if 7812500 * totalKeys * totalKeys / 7812500 == totalKeys * totalKeys:
                        if 7812500 * totalKeys * totalKeys >= 7812500 * totalKeys * totalKeys:
                            if not totalKeys + arg1:
                                if not totalKeys + arg1:
                                    if 7812500 * totalKeys * totalKeys / 1000000000000000000 * 10^18 <= 0:
                                        return -(7812500 * totalKeys * totalKeys / 1000000000000000000 * 10^18)
                                else:
                                    if totalKeys + arg1:
                                        if (totalKeys * totalKeys) + (arg1 * totalKeys) + (totalKeys * arg1) + (arg1 * arg1) / totalKeys + arg1 == totalKeys + arg1:
                                            if (7812500 * totalKeys * totalKeys) + (7812500 * arg1 * totalKeys) + (7812500 * totalKeys * arg1) + (7812500 * arg1 * arg1) / 7812500 == (totalKeys * totalKeys) + (arg1 * totalKeys) + (totalKeys * arg1) + (arg1 * arg1):
                                                if 7812500 * totalKeys * totalKeys / 1000000000000000000 * 10^18 <= (7812500 * totalKeys * totalKeys) + (7812500 * arg1 * totalKeys) + (7812500 * totalKeys * arg1) + (7812500 * arg1 * arg1) / 1000000000000000000 * 10^18:
                                                    return (((7812500 * totalKeys * totalKeys) + (7812500 * arg1 * totalKeys) + (7812500 * totalKeys * arg1) + (7812500 * arg1 * arg1) / 1000000000000000000 * 10^18) - (7812500 * totalKeys * totalKeys / 1000000000000000000 * 10^18))
                            else:
                                if totalKeys + arg1:
                                    if (10^18 * totalKeys) + (10^18 * arg1) / totalKeys + arg1 == 10^18:
                                        if (14999984375000 * 10^18 * totalKeys) + (14999984375000 * 10^18 * arg1) / 14999984375000 == (10^18 * totalKeys) + (10^18 * arg1):
                                            if not totalKeys + arg1:
                                                if (14999984375000 * 10^18 * totalKeys) + (14999984375000 * 10^18 * arg1) / 2 >= 0:
                                                    if 7812500 * totalKeys * totalKeys / 1000000000000000000 * 10^18 <= (14999984375000 * 10^18 * totalKeys) + (14999984375000 * 10^18 * arg1) / 2 / 1000000000000000000 * 10^18:
                                                        return (((14999984375000 * 10^18 * totalKeys) + (14999984375000 * 10^18 * arg1) / 2 / 1000000000000000000 * 10^18) - (7812500 * totalKeys * totalKeys / 1000000000000000000 * 10^18))
                                            else:
                                                if totalKeys + arg1:
                                                    if (totalKeys * totalKeys) + (arg1 * totalKeys) + (totalKeys * arg1) + (arg1 * arg1) / totalKeys + arg1 == totalKeys + arg1:
                                                        if (7812500 * totalKeys * totalKeys) + (7812500 * arg1 * totalKeys) + (7812500 * totalKeys * arg1) + (7812500 * arg1 * arg1) / 7812500 == (totalKeys * totalKeys) + (arg1 * totalKeys) + (totalKeys * arg1) + (arg1 * arg1):
                                                            if (14999984375000 * 10^18 * totalKeys) + (14999984375000 * 10^18 * arg1) / 2 >= 0:
                                                                if 7812500 * totalKeys * totalKeys / 1000000000000000000 * 10^18 <= (7812500 * totalKeys * totalKeys) + (7812500 * arg1 * totalKeys) + (7812500 * totalKeys * arg1) + (7812500 * arg1 * arg1) + ((14999984375000 * 10^18 * totalKeys) + (14999984375000 * 10^18 * arg1) / 2) / 1000000000000000000 * 10^18:
                                                                    return (((7812500 * totalKeys * totalKeys) + (7812500 * arg1 * totalKeys) + (7812500 * totalKeys * arg1) + (7812500 * arg1 * arg1) + ((14999984375000 * 10^18 * totalKeys) + (14999984375000 * 10^18 * arg1) / 2) / 1000000000000000000 * 10^18) - (7812500 * totalKeys * totalKeys / 1000000000000000000 * 10^18))
    else:
        if totalKeys:
            if 10^18 * totalKeys / totalKeys == 10^18:
                if 14999984375000 * 10^18 * totalKeys / 14999984375000 == 10^18 * totalKeys:
                    if not totalKeys:
                        if 14999984375000 * 10^18 * totalKeys / 2 >= 0:
                            if not totalKeys + arg1:
                                if not totalKeys + arg1:
                                    if 14999984375000 * 10^18 * totalKeys / 2 / 1000000000000000000 * 10^18 <= 0:
                                        return -(14999984375000 * 10^18 * totalKeys / 2 / 1000000000000000000 * 10^18)
                                else:
                                    if totalKeys + arg1:
                                        if (totalKeys * totalKeys) + (arg1 * totalKeys) + (totalKeys * arg1) + (arg1 * arg1) / totalKeys + arg1 == totalKeys + arg1:
                                            if (7812500 * totalKeys * totalKeys) + (7812500 * arg1 * totalKeys) + (7812500 * totalKeys * arg1) + (7812500 * arg1 * arg1) / 7812500 == (totalKeys * totalKeys) + (arg1 * totalKeys) + (totalKeys * arg1) + (arg1 * arg1):
                                                if 14999984375000 * 10^18 * totalKeys / 2 / 1000000000000000000 * 10^18 <= (7812500 * totalKeys * totalKeys) + (7812500 * arg1 * totalKeys) + (7812500 * totalKeys * arg1) + (7812500 * arg1 * arg1) / 1000000000000000000 * 10^18:
                                                    return (((7812500 * totalKeys * totalKeys) + (7812500 * arg1 * totalKeys) + (7812500 * totalKeys * arg1) + (7812500 * arg1 * arg1) / 1000000000000000000 * 10^18) - (14999984375000 * 10^18 * totalKeys / 2 / 1000000000000000000 * 10^18))
                            else:
                                if totalKeys + arg1:
                                    if (10^18 * totalKeys) + (10^18 * arg1) / totalKeys + arg1 == 10^18:
                                        if (14999984375000 * 10^18 * totalKeys) + (14999984375000 * 10^18 * arg1) / 14999984375000 == (10^18 * totalKeys) + (10^18 * arg1):
                                            if not totalKeys + arg1:
                                                if (14999984375000 * 10^18 * totalKeys) + (14999984375000 * 10^18 * arg1) / 2 >= 0:
                                                    if 14999984375000 * 10^18 * totalKeys / 2 / 1000000000000000000 * 10^18 <= (14999984375000 * 10^18 * totalKeys) + (14999984375000 * 10^18 * arg1) / 2 / 1000000000000000000 * 10^18:
                                                        return (((14999984375000 * 10^18 * totalKeys) + (14999984375000 * 10^18 * arg1) / 2 / 1000000000000000000 * 10^18) - (14999984375000 * 10^18 * totalKeys / 2 / 1000000000000000000 * 10^18))
                                            else:
                                                if totalKeys + arg1:
                                                    if (totalKeys * totalKeys) + (arg1 * totalKeys) + (totalKeys * arg1) + (arg1 * arg1) / totalKeys + arg1 == totalKeys + arg1:
                                                        if (7812500 * totalKeys * totalKeys) + (7812500 * arg1 * totalKeys) + (7812500 * totalKeys * arg1) + (7812500 * arg1 * arg1) / 7812500 == (totalKeys * totalKeys) + (arg1 * totalKeys) + (totalKeys * arg1) + (arg1 * arg1):
                                                            if (14999984375000 * 10^18 * totalKeys) + (14999984375000 * 10^18 * arg1) / 2 >= 0:
                                                                if 14999984375000 * 10^18 * totalKeys / 2 / 1000000000000000000 * 10^18 <= (7812500 * totalKeys * totalKeys) + (7812500 * arg1 * totalKeys) + (7812500 * totalKeys * arg1) + (7812500 * arg1 * arg1) + ((14999984375000 * 10^18 * totalKeys) + (14999984375000 * 10^18 * arg1) / 2) / 1000000000000000000 * 10^18:
                                                                    return (((7812500 * totalKeys * totalKeys) + (7812500 * arg1 * totalKeys) + (7812500 * totalKeys * arg1) + (7812500 * arg1 * arg1) + ((14999984375000 * 10^18 * totalKeys) + (14999984375000 * 10^18 * arg1) / 2) / 1000000000000000000 * 10^18) - (14999984375000 * 10^18 * totalKeys / 2 / 1000000000000000000 * 10^18))
                    else:
                        if totalKeys:
                            if totalKeys * totalKeys / totalKeys == totalKeys:
                                if 7812500 * totalKeys * totalKeys / 7812500 == totalKeys * totalKeys:
                                    if (7812500 * totalKeys * totalKeys) + (14999984375000 * 10^18 * totalKeys / 2) >= 7812500 * totalKeys * totalKeys:
                                        if not totalKeys + arg1:
                                            if not totalKeys + arg1:
                                                if (7812500 * totalKeys * totalKeys) + (14999984375000 * 10^18 * totalKeys / 2) / 1000000000000000000 * 10^18 <= 0:
                                                    return -((7812500 * totalKeys * totalKeys) + (14999984375000 * 10^18 * totalKeys / 2) / 1000000000000000000 * 10^18)
                                            else:
                                                if totalKeys + arg1:
                                                    if (totalKeys * totalKeys) + (arg1 * totalKeys) + (totalKeys * arg1) + (arg1 * arg1) / totalKeys + arg1 == totalKeys + arg1:
                                                        if (7812500 * totalKeys * totalKeys) + (7812500 * arg1 * totalKeys) + (7812500 * totalKeys * arg1) + (7812500 * arg1 * arg1) / 7812500 == (totalKeys * totalKeys) + (arg1 * totalKeys) + (totalKeys * arg1) + (arg1 * arg1):
                                                            if (7812500 * totalKeys * totalKeys) + (14999984375000 * 10^18 * totalKeys / 2) / 1000000000000000000 * 10^18 <= (7812500 * totalKeys * totalKeys) + (7812500 * arg1 * totalKeys) + (7812500 * totalKeys * arg1) + (7812500 * arg1 * arg1) / 1000000000000000000 * 10^18:
                                                                return (((7812500 * totalKeys * totalKeys) + (7812500 * arg1 * totalKeys) + (7812500 * totalKeys * arg1) + (7812500 * arg1 * arg1) / 1000000000000000000 * 10^18) - ((7812500 * totalKeys * totalKeys) + (14999984375000 * 10^18 * totalKeys / 2) / 1000000000000000000 * 10^18))
                                        else:
                                            if totalKeys + arg1:
                                                if (10^18 * totalKeys) + (10^18 * arg1) / totalKeys + arg1 == 10^18:
                                                    if (14999984375000 * 10^18 * totalKeys) + (14999984375000 * 10^18 * arg1) / 14999984375000 == (10^18 * totalKeys) + (10^18 * arg1):
                                                        if not totalKeys + arg1:
                                                            if (14999984375000 * 10^18 * totalKeys) + (14999984375000 * 10^18 * arg1) / 2 >= 0:
                                                                if (7812500 * totalKeys * totalKeys) + (14999984375000 * 10^18 * totalKeys / 2) / 1000000000000000000 * 10^18 <= (14999984375000 * 10^18 * totalKeys) + (14999984375000 * 10^18 * arg1) / 2 / 1000000000000000000 * 10^18:
                                                                    return (((14999984375000 * 10^18 * totalKeys) + (14999984375000 * 10^18 * arg1) / 2 / 1000000000000000000 * 10^18) - ((7812500 * totalKeys * totalKeys) + (14999984375000 * 10^18 * totalKeys / 2) / 1000000000000000000 * 10^18))
                                                        else:
                                                            if totalKeys + arg1:
                                                                if (totalKeys * totalKeys) + (arg1 * totalKeys) + (totalKeys * arg1) + (arg1 * arg1) / totalKeys + arg1 == totalKeys + arg1:
                                                                    if (7812500 * totalKeys * totalKeys) + (7812500 * arg1 * totalKeys) + (7812500 * totalKeys * arg1) + (7812500 * arg1 * arg1) / 7812500 == (totalKeys * totalKeys) + (arg1 * totalKeys) + (totalKeys * arg1) + (arg1 * arg1):
                                                                        if (14999984375000 * 10^18 * totalKeys) + (14999984375000 * 10^18 * arg1) / 2 >= 0:
                                                                            if (7812500 * totalKeys * totalKeys) + (14999984375000 * 10^18 * totalKeys / 2) / 1000000000000000000 * 10^18 <= (7812500 * totalKeys * totalKeys) + (7812500 * arg1 * totalKeys) + (7812500 * totalKeys * arg1) + (7812500 * arg1 * arg1) + ((14999984375000 * 10^18 * totalKeys) + (14999984375000 * 10^18 * arg1) / 2) / 1000000000000000000 * 10^18:
                                                                                return (((7812500 * totalKeys * totalKeys) + (7812500 * arg1 * totalKeys) + (7812500 * totalKeys * arg1) + (7812500 * arg1 * arg1) + ((14999984375000 * 10^18 * totalKeys) + (14999984375000 * 10^18 * arg1) / 2) / 1000000000000000000 * 10^18) - ((7812500 * totalKeys * totalKeys) + (14999984375000 * 10^18 * totalKeys / 2) / 1000000000000000000 * 10^18))
    revert
}

function getPlayerWithdrawEarning(uint256 arg1) {
    idx = 704
    s = 0
    while players[arg1][1].length + 672 > idx:
        mem[idx + 32] = players[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if not players[arg1].field_1280:
        if players[arg1].field_1024 >= players[arg1].field_1024:
            if not sub_f1e4ff5f:
                if totalKeys:
                    if (0 / totalKeys) + players[arg1].field_512 >= 0 / totalKeys:
                        if block.timestamp < endTime:
                            if (0 / totalKeys) + players[arg1].field_512 >= 0:
                                if players[arg1].field_2048 <= (0 / totalKeys) + players[arg1].field_512:
                                    return ((0 / totalKeys) + players[arg1].field_512 - players[arg1].field_2048)
                        else:
                            if totalKeys <= 2000000 * 10^18:
                                idx = ceil32(players[arg1][1].length) + 1312
                                s = 0
                                while ceil32(players[arg1][1].length) + players[arg1][1].length + 1280 > idx:
                                    mem[idx + 32] = players[arg1][s + 1].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if players[arg1].field_1024 + players[arg1].field_1280 >= players[arg1].field_1024:
                                    if players[arg1].field_1536 >= 0:
                                        if not totalEther:
                                            if totalKeys:
                                                if (2 * 0 / totalKeys) + players[arg1].field_512 >= 0 / totalKeys:
                                                    if players[arg1].field_2048 <= (2 * 0 / totalKeys) + players[arg1].field_512:
                                                        return ((2 * 0 / totalKeys) + players[arg1].field_512 - players[arg1].field_2048)
                                        else:
                                            if totalEther:
                                                if 12 * totalEther / totalEther == 12:
                                                    if not 12 * totalEther / 100:
                                                        if totalKeys:
                                                            if (2 * 0 / totalKeys) + players[arg1].field_512 >= 0 / totalKeys:
                                                                if players[arg1].field_2048 <= (2 * 0 / totalKeys) + players[arg1].field_512:
                                                                    return ((2 * 0 / totalKeys) + players[arg1].field_512 - players[arg1].field_2048)
                                                    else:
                                                        if 12 * totalEther / 100:
                                                            if (players[arg1].field_1024 * 12 * totalEther / 100) + (players[arg1].field_1280 * 12 * totalEther / 100) + (players[arg1].field_1536 * 12 * totalEther / 100) / 12 * totalEther / 100 == players[arg1].field_1024 + players[arg1].field_1280 + players[arg1].field_1536:
                                                                if totalKeys:
                                                                    if ((players[arg1].field_1024 * 12 * totalEther / 100) + (players[arg1].field_1280 * 12 * totalEther / 100) + (players[arg1].field_1536 * 12 * totalEther / 100) / totalKeys) + (0 / totalKeys) + players[arg1].field_512 >= (players[arg1].field_1024 * 12 * totalEther / 100) + (players[arg1].field_1280 * 12 * totalEther / 100) + (players[arg1].field_1536 * 12 * totalEther / 100) / totalKeys:
                                                                        if players[arg1].field_2048 <= ((players[arg1].field_1024 * 12 * totalEther / 100) + (players[arg1].field_1280 * 12 * totalEther / 100) + (players[arg1].field_1536 * 12 * totalEther / 100) / totalKeys) + (0 / totalKeys) + players[arg1].field_512:
                                                                            return (((players[arg1].field_1024 * 12 * totalEther / 100) + (players[arg1].field_1280 * 12 * totalEther / 100) + (players[arg1].field_1536 * 12 * totalEther / 100) / totalKeys) + (0 / totalKeys) + players[arg1].field_512 - players[arg1].field_2048)
                            else:
                                if (100000 * 10^18 * stor16) - 100000 * 10^18 / 100000 * 10^18 == stor16 - 1:
                                    if (100000 * 10^18 * stor16) + 1900000 * 10^18 >= 2000000 * 10^18:
                                        if (100000 * 10^18 * stor16) + 1900000 * 10^18 <= totalKeys:
                                            if not totalEther:
                                                if totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18:
                                                    if (0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (0 / totalKeys) + players[arg1].field_512 >= 0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18:
                                                        if players[arg1].field_2048 <= (0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (0 / totalKeys) + players[arg1].field_512:
                                                            return ((0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (0 / totalKeys) + players[arg1].field_512 - players[arg1].field_2048)
                                            else:
                                                if totalEther:
                                                    if 12 * totalEther / totalEther == 12:
                                                        if not 12 * totalEther / 100:
                                                            if totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18:
                                                                if (0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (0 / totalKeys) + players[arg1].field_512 >= 0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18:
                                                                    if players[arg1].field_2048 <= (0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (0 / totalKeys) + players[arg1].field_512:
                                                                        return ((0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (0 / totalKeys) + players[arg1].field_512 - players[arg1].field_2048)
                                                        else:
                                                            if 12 * totalEther / 100:
                                                                if 12 * totalEther / 100 * sub_07fb021a[stor16][arg1] / 12 * totalEther / 100 == sub_07fb021a[stor16][arg1]:
                                                                    if totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18:
                                                                        if (12 * totalEther / 100 * sub_07fb021a[stor16][arg1] / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (0 / totalKeys) + players[arg1].field_512 >= 12 * totalEther / 100 * sub_07fb021a[stor16][arg1] / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18:
                                                                            if players[arg1].field_2048 <= (12 * totalEther / 100 * sub_07fb021a[stor16][arg1] / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (0 / totalKeys) + players[arg1].field_512:
                                                                                return ((12 * totalEther / 100 * sub_07fb021a[stor16][arg1] / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (0 / totalKeys) + players[arg1].field_512 - players[arg1].field_2048)
            else:
                if sub_f1e4ff5f:
                    if sub_f1e4ff5f * players[arg1].field_1024 / sub_f1e4ff5f == players[arg1].field_1024:
                        if totalKeys:
                            if (sub_f1e4ff5f * players[arg1].field_1024 / totalKeys) + players[arg1].field_512 >= sub_f1e4ff5f * players[arg1].field_1024 / totalKeys:
                                if block.timestamp < endTime:
                                    if (sub_f1e4ff5f * players[arg1].field_1024 / totalKeys) + players[arg1].field_512 >= 0:
                                        if players[arg1].field_2048 <= (sub_f1e4ff5f * players[arg1].field_1024 / totalKeys) + players[arg1].field_512:
                                            return ((sub_f1e4ff5f * players[arg1].field_1024 / totalKeys) + players[arg1].field_512 - players[arg1].field_2048)
                                else:
                                    if totalKeys <= 2000000 * 10^18:
                                        idx = ceil32(players[arg1][1].length) + 1312
                                        s = 0
                                        while ceil32(players[arg1][1].length) + players[arg1][1].length + 1280 > idx:
                                            mem[idx + 32] = players[arg1][s + 1].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        if players[arg1].field_1024 + players[arg1].field_1280 >= players[arg1].field_1024:
                                            if players[arg1].field_1536 >= 0:
                                                if not totalEther:
                                                    if totalKeys:
                                                        if (0 / totalKeys) + (sub_f1e4ff5f * players[arg1].field_1024 / totalKeys) + players[arg1].field_512 >= 0 / totalKeys:
                                                            if players[arg1].field_2048 <= (0 / totalKeys) + (sub_f1e4ff5f * players[arg1].field_1024 / totalKeys) + players[arg1].field_512:
                                                                return ((0 / totalKeys) + (sub_f1e4ff5f * players[arg1].field_1024 / totalKeys) + players[arg1].field_512 - players[arg1].field_2048)
                                                else:
                                                    if totalEther:
                                                        if 12 * totalEther / totalEther == 12:
                                                            if not 12 * totalEther / 100:
                                                                if totalKeys:
                                                                    if (0 / totalKeys) + (sub_f1e4ff5f * players[arg1].field_1024 / totalKeys) + players[arg1].field_512 >= 0 / totalKeys:
                                                                        if players[arg1].field_2048 <= (0 / totalKeys) + (sub_f1e4ff5f * players[arg1].field_1024 / totalKeys) + players[arg1].field_512:
                                                                            return ((0 / totalKeys) + (sub_f1e4ff5f * players[arg1].field_1024 / totalKeys) + players[arg1].field_512 - players[arg1].field_2048)
                                                            else:
                                                                if 12 * totalEther / 100:
                                                                    if (players[arg1].field_1024 * 12 * totalEther / 100) + (players[arg1].field_1280 * 12 * totalEther / 100) + (players[arg1].field_1536 * 12 * totalEther / 100) / 12 * totalEther / 100 == players[arg1].field_1024 + players[arg1].field_1280 + players[arg1].field_1536:
                                                                        if totalKeys:
                                                                            if ((players[arg1].field_1024 * 12 * totalEther / 100) + (players[arg1].field_1280 * 12 * totalEther / 100) + (players[arg1].field_1536 * 12 * totalEther / 100) / totalKeys) + (sub_f1e4ff5f * players[arg1].field_1024 / totalKeys) + players[arg1].field_512 >= (players[arg1].field_1024 * 12 * totalEther / 100) + (players[arg1].field_1280 * 12 * totalEther / 100) + (players[arg1].field_1536 * 12 * totalEther / 100) / totalKeys:
                                                                                if players[arg1].field_2048 <= ((players[arg1].field_1024 * 12 * totalEther / 100) + (players[arg1].field_1280 * 12 * totalEther / 100) + (players[arg1].field_1536 * 12 * totalEther / 100) / totalKeys) + (sub_f1e4ff5f * players[arg1].field_1024 / totalKeys) + players[arg1].field_512:
                                                                                    return (((players[arg1].field_1024 * 12 * totalEther / 100) + (players[arg1].field_1280 * 12 * totalEther / 100) + (players[arg1].field_1536 * 12 * totalEther / 100) / totalKeys) + (sub_f1e4ff5f * players[arg1].field_1024 / totalKeys) + players[arg1].field_512 - players[arg1].field_2048)
                                    else:
                                        if (100000 * 10^18 * stor16) - 100000 * 10^18 / 100000 * 10^18 == stor16 - 1:
                                            if (100000 * 10^18 * stor16) + 1900000 * 10^18 >= 2000000 * 10^18:
                                                if (100000 * 10^18 * stor16) + 1900000 * 10^18 <= totalKeys:
                                                    if not totalEther:
                                                        if totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18:
                                                            if (0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (sub_f1e4ff5f * players[arg1].field_1024 / totalKeys) + players[arg1].field_512 >= 0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18:
                                                                if players[arg1].field_2048 <= (0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (sub_f1e4ff5f * players[arg1].field_1024 / totalKeys) + players[arg1].field_512:
                                                                    return ((0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (sub_f1e4ff5f * players[arg1].field_1024 / totalKeys) + players[arg1].field_512 - players[arg1].field_2048)
                                                    else:
                                                        if totalEther:
                                                            if 12 * totalEther / totalEther == 12:
                                                                if not 12 * totalEther / 100:
                                                                    if totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18:
                                                                        if (0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (sub_f1e4ff5f * players[arg1].field_1024 / totalKeys) + players[arg1].field_512 >= 0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18:
                                                                            if players[arg1].field_2048 <= (0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (sub_f1e4ff5f * players[arg1].field_1024 / totalKeys) + players[arg1].field_512:
                                                                                return ((0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (sub_f1e4ff5f * players[arg1].field_1024 / totalKeys) + players[arg1].field_512 - players[arg1].field_2048)
                                                                else:
                                                                    if 12 * totalEther / 100:
                                                                        if 12 * totalEther / 100 * sub_07fb021a[stor16][arg1] / 12 * totalEther / 100 == sub_07fb021a[stor16][arg1]:
                                                                            if totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18:
                                                                                if (12 * totalEther / 100 * sub_07fb021a[stor16][arg1] / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (sub_f1e4ff5f * players[arg1].field_1024 / totalKeys) + players[arg1].field_512 >= 12 * totalEther / 100 * sub_07fb021a[stor16][arg1] / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18:
                                                                                    if players[arg1].field_2048 <= (12 * totalEther / 100 * sub_07fb021a[stor16][arg1] / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (sub_f1e4ff5f * players[arg1].field_1024 / totalKeys) + players[arg1].field_512:
                                                                                        return ((12 * totalEther / 100 * sub_07fb021a[stor16][arg1] / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (sub_f1e4ff5f * players[arg1].field_1024 / totalKeys) + players[arg1].field_512 - players[arg1].field_2048)
    else:
        if players[arg1].field_1280:
            if 46 * players[arg1].field_1280 / players[arg1].field_1280 == 46:
                if players[arg1].field_1024 + (46 * players[arg1].field_1280 / 56) >= players[arg1].field_1024:
                    if not sub_f1e4ff5f:
                        if totalKeys:
                            if (0 / totalKeys) + players[arg1].field_512 >= 0 / totalKeys:
                                if block.timestamp < endTime:
                                    if (0 / totalKeys) + players[arg1].field_512 >= 0:
                                        if players[arg1].field_2048 <= (0 / totalKeys) + players[arg1].field_512:
                                            return ((0 / totalKeys) + players[arg1].field_512 - players[arg1].field_2048)
                                else:
                                    if totalKeys <= 2000000 * 10^18:
                                        idx = ceil32(players[arg1][1].length) + 1312
                                        s = 0
                                        while ceil32(players[arg1][1].length) + players[arg1][1].length + 1280 > idx:
                                            mem[idx + 32] = players[arg1][s + 1].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        if players[arg1].field_1024 + players[arg1].field_1280 >= players[arg1].field_1024:
                                            if players[arg1].field_1536 >= 0:
                                                if not totalEther:
                                                    if totalKeys:
                                                        if (2 * 0 / totalKeys) + players[arg1].field_512 >= 0 / totalKeys:
                                                            if players[arg1].field_2048 <= (2 * 0 / totalKeys) + players[arg1].field_512:
                                                                return ((2 * 0 / totalKeys) + players[arg1].field_512 - players[arg1].field_2048)
                                                else:
                                                    if totalEther:
                                                        if 12 * totalEther / totalEther == 12:
                                                            if not 12 * totalEther / 100:
                                                                if totalKeys:
                                                                    if (2 * 0 / totalKeys) + players[arg1].field_512 >= 0 / totalKeys:
                                                                        if players[arg1].field_2048 <= (2 * 0 / totalKeys) + players[arg1].field_512:
                                                                            return ((2 * 0 / totalKeys) + players[arg1].field_512 - players[arg1].field_2048)
                                                            else:
                                                                if 12 * totalEther / 100:
                                                                    if (players[arg1].field_1024 * 12 * totalEther / 100) + (players[arg1].field_1280 * 12 * totalEther / 100) + (players[arg1].field_1536 * 12 * totalEther / 100) / 12 * totalEther / 100 == players[arg1].field_1024 + players[arg1].field_1280 + players[arg1].field_1536:
                                                                        if totalKeys:
                                                                            if ((players[arg1].field_1024 * 12 * totalEther / 100) + (players[arg1].field_1280 * 12 * totalEther / 100) + (players[arg1].field_1536 * 12 * totalEther / 100) / totalKeys) + (0 / totalKeys) + players[arg1].field_512 >= (players[arg1].field_1024 * 12 * totalEther / 100) + (players[arg1].field_1280 * 12 * totalEther / 100) + (players[arg1].field_1536 * 12 * totalEther / 100) / totalKeys:
                                                                                if players[arg1].field_2048 <= ((players[arg1].field_1024 * 12 * totalEther / 100) + (players[arg1].field_1280 * 12 * totalEther / 100) + (players[arg1].field_1536 * 12 * totalEther / 100) / totalKeys) + (0 / totalKeys) + players[arg1].field_512:
                                                                                    return (((players[arg1].field_1024 * 12 * totalEther / 100) + (players[arg1].field_1280 * 12 * totalEther / 100) + (players[arg1].field_1536 * 12 * totalEther / 100) / totalKeys) + (0 / totalKeys) + players[arg1].field_512 - players[arg1].field_2048)
                                    else:
                                        if (100000 * 10^18 * stor16) - 100000 * 10^18 / 100000 * 10^18 == stor16 - 1:
                                            if (100000 * 10^18 * stor16) + 1900000 * 10^18 >= 2000000 * 10^18:
                                                if (100000 * 10^18 * stor16) + 1900000 * 10^18 <= totalKeys:
                                                    if not totalEther:
                                                        if totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18:
                                                            if (0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (0 / totalKeys) + players[arg1].field_512 >= 0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18:
                                                                if players[arg1].field_2048 <= (0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (0 / totalKeys) + players[arg1].field_512:
                                                                    return ((0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (0 / totalKeys) + players[arg1].field_512 - players[arg1].field_2048)
                                                    else:
                                                        if totalEther:
                                                            if 12 * totalEther / totalEther == 12:
                                                                if not 12 * totalEther / 100:
                                                                    if totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18:
                                                                        if (0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (0 / totalKeys) + players[arg1].field_512 >= 0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18:
                                                                            if players[arg1].field_2048 <= (0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (0 / totalKeys) + players[arg1].field_512:
                                                                                return ((0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (0 / totalKeys) + players[arg1].field_512 - players[arg1].field_2048)
                                                                else:
                                                                    if 12 * totalEther / 100:
                                                                        if 12 * totalEther / 100 * sub_07fb021a[stor16][arg1] / 12 * totalEther / 100 == sub_07fb021a[stor16][arg1]:
                                                                            if totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18:
                                                                                if (12 * totalEther / 100 * sub_07fb021a[stor16][arg1] / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (0 / totalKeys) + players[arg1].field_512 >= 12 * totalEther / 100 * sub_07fb021a[stor16][arg1] / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18:
                                                                                    if players[arg1].field_2048 <= (12 * totalEther / 100 * sub_07fb021a[stor16][arg1] / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (0 / totalKeys) + players[arg1].field_512:
                                                                                        return ((12 * totalEther / 100 * sub_07fb021a[stor16][arg1] / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (0 / totalKeys) + players[arg1].field_512 - players[arg1].field_2048)
                    else:
                        if sub_f1e4ff5f:
                            if (players[arg1].field_1024 * sub_f1e4ff5f) + (46 * players[arg1].field_1280 / 56 * sub_f1e4ff5f) / sub_f1e4ff5f == players[arg1].field_1024 + (46 * players[arg1].field_1280 / 56):
                                if totalKeys:
                                    if ((players[arg1].field_1024 * sub_f1e4ff5f) + (46 * players[arg1].field_1280 / 56 * sub_f1e4ff5f) / totalKeys) + players[arg1].field_512 >= (players[arg1].field_1024 * sub_f1e4ff5f) + (46 * players[arg1].field_1280 / 56 * sub_f1e4ff5f) / totalKeys:
                                        if block.timestamp < endTime:
                                            if ((players[arg1].field_1024 * sub_f1e4ff5f) + (46 * players[arg1].field_1280 / 56 * sub_f1e4ff5f) / totalKeys) + players[arg1].field_512 >= 0:
                                                if players[arg1].field_2048 <= ((players[arg1].field_1024 * sub_f1e4ff5f) + (46 * players[arg1].field_1280 / 56 * sub_f1e4ff5f) / totalKeys) + players[arg1].field_512:
                                                    return (((players[arg1].field_1024 * sub_f1e4ff5f) + (46 * players[arg1].field_1280 / 56 * sub_f1e4ff5f) / totalKeys) + players[arg1].field_512 - players[arg1].field_2048)
                                        else:
                                            if totalKeys <= 2000000 * 10^18:
                                                idx = ceil32(players[arg1][1].length) + 1312
                                                s = 0
                                                while ceil32(players[arg1][1].length) + players[arg1][1].length + 1280 > idx:
                                                    mem[idx + 32] = players[arg1][s + 1].field_256
                                                    idx = idx + 32
                                                    s = s + 1
                                                    continue 
                                                if players[arg1].field_1024 + players[arg1].field_1280 >= players[arg1].field_1024:
                                                    if players[arg1].field_1536 >= 0:
                                                        if not totalEther:
                                                            if totalKeys:
                                                                if (0 / totalKeys) + ((players[arg1].field_1024 * sub_f1e4ff5f) + (46 * players[arg1].field_1280 / 56 * sub_f1e4ff5f) / totalKeys) + players[arg1].field_512 >= 0 / totalKeys:
                                                                    if players[arg1].field_2048 <= (0 / totalKeys) + ((players[arg1].field_1024 * sub_f1e4ff5f) + (46 * players[arg1].field_1280 / 56 * sub_f1e4ff5f) / totalKeys) + players[arg1].field_512:
                                                                        return ((0 / totalKeys) + ((players[arg1].field_1024 * sub_f1e4ff5f) + (46 * players[arg1].field_1280 / 56 * sub_f1e4ff5f) / totalKeys) + players[arg1].field_512 - players[arg1].field_2048)
                                                        else:
                                                            if totalEther:
                                                                if 12 * totalEther / totalEther == 12:
                                                                    if not 12 * totalEther / 100:
                                                                        if totalKeys:
                                                                            if (0 / totalKeys) + ((players[arg1].field_1024 * sub_f1e4ff5f) + (46 * players[arg1].field_1280 / 56 * sub_f1e4ff5f) / totalKeys) + players[arg1].field_512 >= 0 / totalKeys:
                                                                                if players[arg1].field_2048 <= (0 / totalKeys) + ((players[arg1].field_1024 * sub_f1e4ff5f) + (46 * players[arg1].field_1280 / 56 * sub_f1e4ff5f) / totalKeys) + players[arg1].field_512:
                                                                                    return ((0 / totalKeys) + ((players[arg1].field_1024 * sub_f1e4ff5f) + (46 * players[arg1].field_1280 / 56 * sub_f1e4ff5f) / totalKeys) + players[arg1].field_512 - players[arg1].field_2048)
                                                                    else:
                                                                        if 12 * totalEther / 100:
                                                                            if (players[arg1].field_1024 * 12 * totalEther / 100) + (players[arg1].field_1280 * 12 * totalEther / 100) + (players[arg1].field_1536 * 12 * totalEther / 100) / 12 * totalEther / 100 == players[arg1].field_1024 + players[arg1].field_1280 + players[arg1].field_1536:
                                                                                if totalKeys:
                                                                                    if ((players[arg1].field_1024 * 12 * totalEther / 100) + (players[arg1].field_1280 * 12 * totalEther / 100) + (players[arg1].field_1536 * 12 * totalEther / 100) / totalKeys) + ((players[arg1].field_1024 * sub_f1e4ff5f) + (46 * players[arg1].field_1280 / 56 * sub_f1e4ff5f) / totalKeys) + players[arg1].field_512 >= (players[arg1].field_1024 * 12 * totalEther / 100) + (players[arg1].field_1280 * 12 * totalEther / 100) + (players[arg1].field_1536 * 12 * totalEther / 100) / totalKeys:
                                                                                        if players[arg1].field_2048 <= ((players[arg1].field_1024 * 12 * totalEther / 100) + (players[arg1].field_1280 * 12 * totalEther / 100) + (players[arg1].field_1536 * 12 * totalEther / 100) / totalKeys) + ((players[arg1].field_1024 * sub_f1e4ff5f) + (46 * players[arg1].field_1280 / 56 * sub_f1e4ff5f) / totalKeys) + players[arg1].field_512:
                                                                                            return (((players[arg1].field_1024 * 12 * totalEther / 100) + (players[arg1].field_1280 * 12 * totalEther / 100) + (players[arg1].field_1536 * 12 * totalEther / 100) / totalKeys) + ((players[arg1].field_1024 * sub_f1e4ff5f) + (46 * players[arg1].field_1280 / 56 * sub_f1e4ff5f) / totalKeys) + players[arg1].field_512 - players[arg1].field_2048)
                                            else:
                                                if (100000 * 10^18 * stor16) - 100000 * 10^18 / 100000 * 10^18 == stor16 - 1:
                                                    if (100000 * 10^18 * stor16) + 1900000 * 10^18 >= 2000000 * 10^18:
                                                        if (100000 * 10^18 * stor16) + 1900000 * 10^18 <= totalKeys:
                                                            if not totalEther:
                                                                if totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18:
                                                                    if (0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + ((players[arg1].field_1024 * sub_f1e4ff5f) + (46 * players[arg1].field_1280 / 56 * sub_f1e4ff5f) / totalKeys) + players[arg1].field_512 >= 0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18:
                                                                        if players[arg1].field_2048 <= (0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + ((players[arg1].field_1024 * sub_f1e4ff5f) + (46 * players[arg1].field_1280 / 56 * sub_f1e4ff5f) / totalKeys) + players[arg1].field_512:
                                                                            return ((0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + ((players[arg1].field_1024 * sub_f1e4ff5f) + (46 * players[arg1].field_1280 / 56 * sub_f1e4ff5f) / totalKeys) + players[arg1].field_512 - players[arg1].field_2048)
                                                            else:
                                                                if totalEther:
                                                                    if 12 * totalEther / totalEther == 12:
                                                                        if not 12 * totalEther / 100:
                                                                            if totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18:
                                                                                if (0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + ((players[arg1].field_1024 * sub_f1e4ff5f) + (46 * players[arg1].field_1280 / 56 * sub_f1e4ff5f) / totalKeys) + players[arg1].field_512 >= 0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18:
                                                                                    if players[arg1].field_2048 <= (0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + ((players[arg1].field_1024 * sub_f1e4ff5f) + (46 * players[arg1].field_1280 / 56 * sub_f1e4ff5f) / totalKeys) + players[arg1].field_512:
                                                                                        return ((0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + ((players[arg1].field_1024 * sub_f1e4ff5f) + (46 * players[arg1].field_1280 / 56 * sub_f1e4ff5f) / totalKeys) + players[arg1].field_512 - players[arg1].field_2048)
                                                                        else:
                                                                            if 12 * totalEther / 100:
                                                                                if 12 * totalEther / 100 * sub_07fb021a[stor16][arg1] / 12 * totalEther / 100 == sub_07fb021a[stor16][arg1]:
                                                                                    if totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18:
                                                                                        if (12 * totalEther / 100 * sub_07fb021a[stor16][arg1] / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + ((players[arg1].field_1024 * sub_f1e4ff5f) + (46 * players[arg1].field_1280 / 56 * sub_f1e4ff5f) / totalKeys) + players[arg1].field_512 >= 12 * totalEther / 100 * sub_07fb021a[stor16][arg1] / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18:
                                                                                            if players[arg1].field_2048 <= (12 * totalEther / 100 * sub_07fb021a[stor16][arg1] / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + ((players[arg1].field_1024 * sub_f1e4ff5f) + (46 * players[arg1].field_1280 / 56 * sub_f1e4ff5f) / totalKeys) + players[arg1].field_512:
                                                                                                return ((12 * totalEther / 100 * sub_07fb021a[stor16][arg1] / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + ((players[arg1].field_1024 * sub_f1e4ff5f) + (46 * players[arg1].field_1280 / 56 * sub_f1e4ff5f) / totalKeys) + players[arg1].field_512 - players[arg1].field_2048)
    revert
}

function withdrawEarning(uint256 arg1) {
    require sub_4fd8be39[address(msg.sender)]
    idx = 704
    s = 0
    while players[stor2[address(msg.sender)]][1].length + 672 > idx:
        mem[idx + 32] = players[stor2[address(msg.sender)]][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if not players[stor2[address(msg.sender)]].field_1280:
        require players[stor2[address(msg.sender)]].field_1024 >= players[stor2[address(msg.sender)]].field_1024
        if not sub_f1e4ff5f:
            require totalKeys
            require (0 / totalKeys) + players[stor2[address(msg.sender)]].field_512 >= 0 / totalKeys
            if block.timestamp < endTime:
                require (0 / totalKeys) + players[stor2[address(msg.sender)]].field_512 >= 0
                require players[stor2[address(msg.sender)]].field_2048 <= (0 / totalKeys) + players[stor2[address(msg.sender)]].field_512
                if arg1 <= 0:
                    call msg.sender with:
                       value (0 / totalKeys) + players[stor2[address(msg.sender)]].field_512 - players[stor2[address(msg.sender)]].field_2048 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require (0 / totalKeys) + players[stor2[address(msg.sender)]].field_512 >= players[stor2[address(msg.sender)]].field_2048
                    players[stor2[address(msg.sender)]].field_2048 = (0 / totalKeys) + players[stor2[address(msg.sender)]].field_512
                else:
                    require arg1 <= (0 / totalKeys) + players[stor2[address(msg.sender)]].field_512 - players[stor2[address(msg.sender)]].field_2048
                    call msg.sender with:
                       value arg1 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require players[stor2[address(msg.sender)]].field_2048 + arg1 >= players[stor2[address(msg.sender)]].field_2048
                    players[stor2[address(msg.sender)]].field_2048 += arg1
            else:
                if totalKeys <= 2000000 * 10^18:
                    idx = ceil32(players[stor2[address(msg.sender)]][1].length) + 1312
                    s = 0
                    while ceil32(players[stor2[address(msg.sender)]][1].length) + players[stor2[address(msg.sender)]][1].length + 1280 > idx:
                        mem[idx + 32] = players[stor2[address(msg.sender)]][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require players[stor2[address(msg.sender)]].field_1024 + players[stor2[address(msg.sender)]].field_1280 >= players[stor2[address(msg.sender)]].field_1024
                    require players[stor2[address(msg.sender)]].field_1536 >= 0
                    if not totalEther:
                        require totalKeys
                        require (2 * 0 / totalKeys) + players[stor2[address(msg.sender)]].field_512 >= 0 / totalKeys
                        require players[stor2[address(msg.sender)]].field_2048 <= (2 * 0 / totalKeys) + players[stor2[address(msg.sender)]].field_512
                        if arg1 <= 0:
                            call msg.sender with:
                               value (2 * 0 / totalKeys) + players[stor2[address(msg.sender)]].field_512 - players[stor2[address(msg.sender)]].field_2048 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require (2 * 0 / totalKeys) + players[stor2[address(msg.sender)]].field_512 >= players[stor2[address(msg.sender)]].field_2048
                            players[stor2[address(msg.sender)]].field_2048 = (2 * 0 / totalKeys) + players[stor2[address(msg.sender)]].field_512
                        else:
                            require arg1 <= (2 * 0 / totalKeys) + players[stor2[address(msg.sender)]].field_512 - players[stor2[address(msg.sender)]].field_2048
                            call msg.sender with:
                               value arg1 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require players[stor2[address(msg.sender)]].field_2048 + arg1 >= players[stor2[address(msg.sender)]].field_2048
                            players[stor2[address(msg.sender)]].field_2048 += arg1
                    else:
                        require totalEther
                        require 12 * totalEther / totalEther == 12
                        if not 12 * totalEther / 100:
                            require totalKeys
                            require (2 * 0 / totalKeys) + players[stor2[address(msg.sender)]].field_512 >= 0 / totalKeys
                            require players[stor2[address(msg.sender)]].field_2048 <= (2 * 0 / totalKeys) + players[stor2[address(msg.sender)]].field_512
                            if arg1 <= 0:
                                call msg.sender with:
                                   value (2 * 0 / totalKeys) + players[stor2[address(msg.sender)]].field_512 - players[stor2[address(msg.sender)]].field_2048 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require (2 * 0 / totalKeys) + players[stor2[address(msg.sender)]].field_512 >= players[stor2[address(msg.sender)]].field_2048
                                players[stor2[address(msg.sender)]].field_2048 = (2 * 0 / totalKeys) + players[stor2[address(msg.sender)]].field_512
                            else:
                                require arg1 <= (2 * 0 / totalKeys) + players[stor2[address(msg.sender)]].field_512 - players[stor2[address(msg.sender)]].field_2048
                                call msg.sender with:
                                   value arg1 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require players[stor2[address(msg.sender)]].field_2048 + arg1 >= players[stor2[address(msg.sender)]].field_2048
                                players[stor2[address(msg.sender)]].field_2048 += arg1
                        else:
                            require 12 * totalEther / 100
                            require (players[stor2[address(msg.sender)]].field_1024 * 12 * totalEther / 100) + (players[stor2[address(msg.sender)]].field_1280 * 12 * totalEther / 100) + (players[stor2[address(msg.sender)]].field_1536 * 12 * totalEther / 100) / 12 * totalEther / 100 == players[stor2[address(msg.sender)]].field_1024 + players[stor2[address(msg.sender)]].field_1280 + players[stor2[address(msg.sender)]].field_1536
                            require totalKeys
                            require ((players[stor2[address(msg.sender)]].field_1024 * 12 * totalEther / 100) + (players[stor2[address(msg.sender)]].field_1280 * 12 * totalEther / 100) + (players[stor2[address(msg.sender)]].field_1536 * 12 * totalEther / 100) / totalKeys) + (0 / totalKeys) + players[stor2[address(msg.sender)]].field_512 >= (players[stor2[address(msg.sender)]].field_1024 * 12 * totalEther / 100) + (players[stor2[address(msg.sender)]].field_1280 * 12 * totalEther / 100) + (players[stor2[address(msg.sender)]].field_1536 * 12 * totalEther / 100) / totalKeys
                            require players[stor2[address(msg.sender)]].field_2048 <= ((players[stor2[address(msg.sender)]].field_1024 * 12 * totalEther / 100) + (players[stor2[address(msg.sender)]].field_1280 * 12 * totalEther / 100) + (players[stor2[address(msg.sender)]].field_1536 * 12 * totalEther / 100) / totalKeys) + (0 / totalKeys) + players[stor2[address(msg.sender)]].field_512
                            if arg1 <= 0:
                                call msg.sender with:
                                   value ((players[stor2[address(msg.sender)]].field_1024 * 12 * totalEther / 100) + (players[stor2[address(msg.sender)]].field_1280 * 12 * totalEther / 100) + (players[stor2[address(msg.sender)]].field_1536 * 12 * totalEther / 100) / totalKeys) + (0 / totalKeys) + players[stor2[address(msg.sender)]].field_512 - players[stor2[address(msg.sender)]].field_2048 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ((players[stor2[address(msg.sender)]].field_1024 * 12 * totalEther / 100) + (players[stor2[address(msg.sender)]].field_1280 * 12 * totalEther / 100) + (players[stor2[address(msg.sender)]].field_1536 * 12 * totalEther / 100) / totalKeys) + (0 / totalKeys) + players[stor2[address(msg.sender)]].field_512 >= players[stor2[address(msg.sender)]].field_2048
                                players[stor2[address(msg.sender)]].field_2048 = ((players[stor2[address(msg.sender)]].field_1024 * 12 * totalEther / 100) + (players[stor2[address(msg.sender)]].field_1280 * 12 * totalEther / 100) + (players[stor2[address(msg.sender)]].field_1536 * 12 * totalEther / 100) / totalKeys) + (0 / totalKeys) + players[stor2[address(msg.sender)]].field_512
                            else:
                                require arg1 <= ((players[stor2[address(msg.sender)]].field_1024 * 12 * totalEther / 100) + (players[stor2[address(msg.sender)]].field_1280 * 12 * totalEther / 100) + (players[stor2[address(msg.sender)]].field_1536 * 12 * totalEther / 100) / totalKeys) + (0 / totalKeys) + players[stor2[address(msg.sender)]].field_512 - players[stor2[address(msg.sender)]].field_2048
                                call msg.sender with:
                                   value arg1 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require players[stor2[address(msg.sender)]].field_2048 + arg1 >= players[stor2[address(msg.sender)]].field_2048
                                players[stor2[address(msg.sender)]].field_2048 += arg1
                else:
                    require (100000 * 10^18 * stor16) - 100000 * 10^18 / 100000 * 10^18 == stor16 - 1
                    require (100000 * 10^18 * stor16) + 1900000 * 10^18 >= 2000000 * 10^18
                    require (100000 * 10^18 * stor16) + 1900000 * 10^18 <= totalKeys
                    if not totalEther:
                        require totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18
                        require (0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (0 / totalKeys) + players[stor2[address(msg.sender)]].field_512 >= 0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18
                        require players[stor2[address(msg.sender)]].field_2048 <= (0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (0 / totalKeys) + players[stor2[address(msg.sender)]].field_512
                        if arg1 <= 0:
                            call msg.sender with:
                               value (0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (0 / totalKeys) + players[stor2[address(msg.sender)]].field_512 - players[stor2[address(msg.sender)]].field_2048 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require (0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (0 / totalKeys) + players[stor2[address(msg.sender)]].field_512 >= players[stor2[address(msg.sender)]].field_2048
                            players[stor2[address(msg.sender)]].field_2048 = (0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (0 / totalKeys) + players[stor2[address(msg.sender)]].field_512
                        else:
                            require arg1 <= (0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (0 / totalKeys) + players[stor2[address(msg.sender)]].field_512 - players[stor2[address(msg.sender)]].field_2048
                            call msg.sender with:
                               value arg1 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require players[stor2[address(msg.sender)]].field_2048 + arg1 >= players[stor2[address(msg.sender)]].field_2048
                            players[stor2[address(msg.sender)]].field_2048 += arg1
                    else:
                        require totalEther
                        require 12 * totalEther / totalEther == 12
                        if not 12 * totalEther / 100:
                            require totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18
                            require (0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (0 / totalKeys) + players[stor2[address(msg.sender)]].field_512 >= 0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18
                            require players[stor2[address(msg.sender)]].field_2048 <= (0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (0 / totalKeys) + players[stor2[address(msg.sender)]].field_512
                            if arg1 <= 0:
                                call msg.sender with:
                                   value (0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (0 / totalKeys) + players[stor2[address(msg.sender)]].field_512 - players[stor2[address(msg.sender)]].field_2048 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require (0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (0 / totalKeys) + players[stor2[address(msg.sender)]].field_512 >= players[stor2[address(msg.sender)]].field_2048
                                players[stor2[address(msg.sender)]].field_2048 = (0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (0 / totalKeys) + players[stor2[address(msg.sender)]].field_512
                            else:
                                require arg1 <= (0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (0 / totalKeys) + players[stor2[address(msg.sender)]].field_512 - players[stor2[address(msg.sender)]].field_2048
                                call msg.sender with:
                                   value arg1 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require players[stor2[address(msg.sender)]].field_2048 + arg1 >= players[stor2[address(msg.sender)]].field_2048
                                players[stor2[address(msg.sender)]].field_2048 += arg1
                        else:
                            require 12 * totalEther / 100
                            require 12 * totalEther / 100 * sub_07fb021a[stor16][stor2[address(msg.sender)]] / 12 * totalEther / 100 == sub_07fb021a[stor16][stor2[address(msg.sender)]]
                            require totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18
                            require (12 * totalEther / 100 * sub_07fb021a[stor16][stor2[address(msg.sender)]] / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (0 / totalKeys) + players[stor2[address(msg.sender)]].field_512 >= 12 * totalEther / 100 * sub_07fb021a[stor16][stor2[address(msg.sender)]] / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18
                            require players[stor2[address(msg.sender)]].field_2048 <= (12 * totalEther / 100 * sub_07fb021a[stor16][stor2[address(msg.sender)]] / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (0 / totalKeys) + players[stor2[address(msg.sender)]].field_512
                            if arg1 <= 0:
                                call msg.sender with:
                                   value (12 * totalEther / 100 * sub_07fb021a[stor16][stor2[address(msg.sender)]] / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (0 / totalKeys) + players[stor2[address(msg.sender)]].field_512 - players[stor2[address(msg.sender)]].field_2048 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require (12 * totalEther / 100 * sub_07fb021a[stor16][stor2[address(msg.sender)]] / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (0 / totalKeys) + players[stor2[address(msg.sender)]].field_512 >= players[stor2[address(msg.sender)]].field_2048
                                players[stor2[address(msg.sender)]].field_2048 = (12 * totalEther / 100 * sub_07fb021a[stor16][stor2[address(msg.sender)]] / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (0 / totalKeys) + players[stor2[address(msg.sender)]].field_512
                            else:
                                require arg1 <= (12 * totalEther / 100 * sub_07fb021a[stor16][stor2[address(msg.sender)]] / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (0 / totalKeys) + players[stor2[address(msg.sender)]].field_512 - players[stor2[address(msg.sender)]].field_2048
                                call msg.sender with:
                                   value arg1 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require players[stor2[address(msg.sender)]].field_2048 + arg1 >= players[stor2[address(msg.sender)]].field_2048
                                players[stor2[address(msg.sender)]].field_2048 += arg1
        else:
            require sub_f1e4ff5f
            require sub_f1e4ff5f * players[stor2[address(msg.sender)]].field_1024 / sub_f1e4ff5f == players[stor2[address(msg.sender)]].field_1024
            require totalKeys
            require (sub_f1e4ff5f * players[stor2[address(msg.sender)]].field_1024 / totalKeys) + players[stor2[address(msg.sender)]].field_512 >= sub_f1e4ff5f * players[stor2[address(msg.sender)]].field_1024 / totalKeys
            if block.timestamp < endTime:
                require (sub_f1e4ff5f * players[stor2[address(msg.sender)]].field_1024 / totalKeys) + players[stor2[address(msg.sender)]].field_512 >= 0
                require players[stor2[address(msg.sender)]].field_2048 <= (sub_f1e4ff5f * players[stor2[address(msg.sender)]].field_1024 / totalKeys) + players[stor2[address(msg.sender)]].field_512
                if arg1 <= 0:
                    call msg.sender with:
                       value (sub_f1e4ff5f * players[stor2[address(msg.sender)]].field_1024 / totalKeys) + players[stor2[address(msg.sender)]].field_512 - players[stor2[address(msg.sender)]].field_2048 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require (sub_f1e4ff5f * players[stor2[address(msg.sender)]].field_1024 / totalKeys) + players[stor2[address(msg.sender)]].field_512 >= players[stor2[address(msg.sender)]].field_2048
                    players[stor2[address(msg.sender)]].field_2048 = (sub_f1e4ff5f * players[stor2[address(msg.sender)]].field_1024 / totalKeys) + players[stor2[address(msg.sender)]].field_512
                else:
                    require arg1 <= (sub_f1e4ff5f * players[stor2[address(msg.sender)]].field_1024 / totalKeys) + players[stor2[address(msg.sender)]].field_512 - players[stor2[address(msg.sender)]].field_2048
                    call msg.sender with:
                       value arg1 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require players[stor2[address(msg.sender)]].field_2048 + arg1 >= players[stor2[address(msg.sender)]].field_2048
                    players[stor2[address(msg.sender)]].field_2048 += arg1
            else:
                if totalKeys <= 2000000 * 10^18:
                    idx = ceil32(players[stor2[address(msg.sender)]][1].length) + 1312
                    s = 0
                    while ceil32(players[stor2[address(msg.sender)]][1].length) + players[stor2[address(msg.sender)]][1].length + 1280 > idx:
                        mem[idx + 32] = players[stor2[address(msg.sender)]][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require players[stor2[address(msg.sender)]].field_1024 + players[stor2[address(msg.sender)]].field_1280 >= players[stor2[address(msg.sender)]].field_1024
                    require players[stor2[address(msg.sender)]].field_1536 >= 0
                    if not totalEther:
                        require totalKeys
                        require (0 / totalKeys) + (sub_f1e4ff5f * players[stor2[address(msg.sender)]].field_1024 / totalKeys) + players[stor2[address(msg.sender)]].field_512 >= 0 / totalKeys
                        require players[stor2[address(msg.sender)]].field_2048 <= (0 / totalKeys) + (sub_f1e4ff5f * players[stor2[address(msg.sender)]].field_1024 / totalKeys) + players[stor2[address(msg.sender)]].field_512
                        if arg1 <= 0:
                            call msg.sender with:
                               value (0 / totalKeys) + (sub_f1e4ff5f * players[stor2[address(msg.sender)]].field_1024 / totalKeys) + players[stor2[address(msg.sender)]].field_512 - players[stor2[address(msg.sender)]].field_2048 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require (0 / totalKeys) + (sub_f1e4ff5f * players[stor2[address(msg.sender)]].field_1024 / totalKeys) + players[stor2[address(msg.sender)]].field_512 >= players[stor2[address(msg.sender)]].field_2048
                            players[stor2[address(msg.sender)]].field_2048 = (0 / totalKeys) + (sub_f1e4ff5f * players[stor2[address(msg.sender)]].field_1024 / totalKeys) + players[stor2[address(msg.sender)]].field_512
                        else:
                            require arg1 <= (0 / totalKeys) + (sub_f1e4ff5f * players[stor2[address(msg.sender)]].field_1024 / totalKeys) + players[stor2[address(msg.sender)]].field_512 - players[stor2[address(msg.sender)]].field_2048
                            call msg.sender with:
                               value arg1 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require players[stor2[address(msg.sender)]].field_2048 + arg1 >= players[stor2[address(msg.sender)]].field_2048
                            players[stor2[address(msg.sender)]].field_2048 += arg1
                    else:
                        require totalEther
                        require 12 * totalEther / totalEther == 12
                        if not 12 * totalEther / 100:
                            require totalKeys
                            require (0 / totalKeys) + (sub_f1e4ff5f * players[stor2[address(msg.sender)]].field_1024 / totalKeys) + players[stor2[address(msg.sender)]].field_512 >= 0 / totalKeys
                            require players[stor2[address(msg.sender)]].field_2048 <= (0 / totalKeys) + (sub_f1e4ff5f * players[stor2[address(msg.sender)]].field_1024 / totalKeys) + players[stor2[address(msg.sender)]].field_512
                            if arg1 <= 0:
                                call msg.sender with:
                                   value (0 / totalKeys) + (sub_f1e4ff5f * players[stor2[address(msg.sender)]].field_1024 / totalKeys) + players[stor2[address(msg.sender)]].field_512 - players[stor2[address(msg.sender)]].field_2048 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require (0 / totalKeys) + (sub_f1e4ff5f * players[stor2[address(msg.sender)]].field_1024 / totalKeys) + players[stor2[address(msg.sender)]].field_512 >= players[stor2[address(msg.sender)]].field_2048
                                players[stor2[address(msg.sender)]].field_2048 = (0 / totalKeys) + (sub_f1e4ff5f * players[stor2[address(msg.sender)]].field_1024 / totalKeys) + players[stor2[address(msg.sender)]].field_512
                            else:
                                require arg1 <= (0 / totalKeys) + (sub_f1e4ff5f * players[stor2[address(msg.sender)]].field_1024 / totalKeys) + players[stor2[address(msg.sender)]].field_512 - players[stor2[address(msg.sender)]].field_2048
                                call msg.sender with:
                                   value arg1 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require players[stor2[address(msg.sender)]].field_2048 + arg1 >= players[stor2[address(msg.sender)]].field_2048
                                players[stor2[address(msg.sender)]].field_2048 += arg1
                        else:
                            require 12 * totalEther / 100
                            require (players[stor2[address(msg.sender)]].field_1024 * 12 * totalEther / 100) + (players[stor2[address(msg.sender)]].field_1280 * 12 * totalEther / 100) + (players[stor2[address(msg.sender)]].field_1536 * 12 * totalEther / 100) / 12 * totalEther / 100 == players[stor2[address(msg.sender)]].field_1024 + players[stor2[address(msg.sender)]].field_1280 + players[stor2[address(msg.sender)]].field_1536
                            require totalKeys
                            require ((players[stor2[address(msg.sender)]].field_1024 * 12 * totalEther / 100) + (players[stor2[address(msg.sender)]].field_1280 * 12 * totalEther / 100) + (players[stor2[address(msg.sender)]].field_1536 * 12 * totalEther / 100) / totalKeys) + (sub_f1e4ff5f * players[stor2[address(msg.sender)]].field_1024 / totalKeys) + players[stor2[address(msg.sender)]].field_512 >= (players[stor2[address(msg.sender)]].field_1024 * 12 * totalEther / 100) + (players[stor2[address(msg.sender)]].field_1280 * 12 * totalEther / 100) + (players[stor2[address(msg.sender)]].field_1536 * 12 * totalEther / 100) / totalKeys
                            require players[stor2[address(msg.sender)]].field_2048 <= ((players[stor2[address(msg.sender)]].field_1024 * 12 * totalEther / 100) + (players[stor2[address(msg.sender)]].field_1280 * 12 * totalEther / 100) + (players[stor2[address(msg.sender)]].field_1536 * 12 * totalEther / 100) / totalKeys) + (sub_f1e4ff5f * players[stor2[address(msg.sender)]].field_1024 / totalKeys) + players[stor2[address(msg.sender)]].field_512
                            if arg1 <= 0:
                                call msg.sender with:
                                   value ((players[stor2[address(msg.sender)]].field_1024 * 12 * totalEther / 100) + (players[stor2[address(msg.sender)]].field_1280 * 12 * totalEther / 100) + (players[stor2[address(msg.sender)]].field_1536 * 12 * totalEther / 100) / totalKeys) + (sub_f1e4ff5f * players[stor2[address(msg.sender)]].field_1024 / totalKeys) + players[stor2[address(msg.sender)]].field_512 - players[stor2[address(msg.sender)]].field_2048 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ((players[stor2[address(msg.sender)]].field_1024 * 12 * totalEther / 100) + (players[stor2[address(msg.sender)]].field_1280 * 12 * totalEther / 100) + (players[stor2[address(msg.sender)]].field_1536 * 12 * totalEther / 100) / totalKeys) + (sub_f1e4ff5f * players[stor2[address(msg.sender)]].field_1024 / totalKeys) + players[stor2[address(msg.sender)]].field_512 >= players[stor2[address(msg.sender)]].field_2048
                                players[stor2[address(msg.sender)]].field_2048 = ((players[stor2[address(msg.sender)]].field_1024 * 12 * totalEther / 100) + (players[stor2[address(msg.sender)]].field_1280 * 12 * totalEther / 100) + (players[stor2[address(msg.sender)]].field_1536 * 12 * totalEther / 100) / totalKeys) + (sub_f1e4ff5f * players[stor2[address(msg.sender)]].field_1024 / totalKeys) + players[stor2[address(msg.sender)]].field_512
                            else:
                                require arg1 <= ((players[stor2[address(msg.sender)]].field_1024 * 12 * totalEther / 100) + (players[stor2[address(msg.sender)]].field_1280 * 12 * totalEther / 100) + (players[stor2[address(msg.sender)]].field_1536 * 12 * totalEther / 100) / totalKeys) + (sub_f1e4ff5f * players[stor2[address(msg.sender)]].field_1024 / totalKeys) + players[stor2[address(msg.sender)]].field_512 - players[stor2[address(msg.sender)]].field_2048
                                call msg.sender with:
                                   value arg1 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require players[stor2[address(msg.sender)]].field_2048 + arg1 >= players[stor2[address(msg.sender)]].field_2048
                                players[stor2[address(msg.sender)]].field_2048 += arg1
                else:
                    require (100000 * 10^18 * stor16) - 100000 * 10^18 / 100000 * 10^18 == stor16 - 1
                    require (100000 * 10^18 * stor16) + 1900000 * 10^18 >= 2000000 * 10^18
                    require (100000 * 10^18 * stor16) + 1900000 * 10^18 <= totalKeys
                    if not totalEther:
                        require totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18
                        require (0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (sub_f1e4ff5f * players[stor2[address(msg.sender)]].field_1024 / totalKeys) + players[stor2[address(msg.sender)]].field_512 >= 0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18
                        require players[stor2[address(msg.sender)]].field_2048 <= (0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (sub_f1e4ff5f * players[stor2[address(msg.sender)]].field_1024 / totalKeys) + players[stor2[address(msg.sender)]].field_512
                        if arg1 <= 0:
                            call msg.sender with:
                               value (0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (sub_f1e4ff5f * players[stor2[address(msg.sender)]].field_1024 / totalKeys) + players[stor2[address(msg.sender)]].field_512 - players[stor2[address(msg.sender)]].field_2048 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require (0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (sub_f1e4ff5f * players[stor2[address(msg.sender)]].field_1024 / totalKeys) + players[stor2[address(msg.sender)]].field_512 >= players[stor2[address(msg.sender)]].field_2048
                            players[stor2[address(msg.sender)]].field_2048 = (0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (sub_f1e4ff5f * players[stor2[address(msg.sender)]].field_1024 / totalKeys) + players[stor2[address(msg.sender)]].field_512
                        else:
                            require arg1 <= (0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (sub_f1e4ff5f * players[stor2[address(msg.sender)]].field_1024 / totalKeys) + players[stor2[address(msg.sender)]].field_512 - players[stor2[address(msg.sender)]].field_2048
                            call msg.sender with:
                               value arg1 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require players[stor2[address(msg.sender)]].field_2048 + arg1 >= players[stor2[address(msg.sender)]].field_2048
                            players[stor2[address(msg.sender)]].field_2048 += arg1
                    else:
                        require totalEther
                        require 12 * totalEther / totalEther == 12
                        if not 12 * totalEther / 100:
                            require totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18
                            require (0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (sub_f1e4ff5f * players[stor2[address(msg.sender)]].field_1024 / totalKeys) + players[stor2[address(msg.sender)]].field_512 >= 0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18
                            require players[stor2[address(msg.sender)]].field_2048 <= (0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (sub_f1e4ff5f * players[stor2[address(msg.sender)]].field_1024 / totalKeys) + players[stor2[address(msg.sender)]].field_512
                            if arg1 <= 0:
                                call msg.sender with:
                                   value (0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (sub_f1e4ff5f * players[stor2[address(msg.sender)]].field_1024 / totalKeys) + players[stor2[address(msg.sender)]].field_512 - players[stor2[address(msg.sender)]].field_2048 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require (0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (sub_f1e4ff5f * players[stor2[address(msg.sender)]].field_1024 / totalKeys) + players[stor2[address(msg.sender)]].field_512 >= players[stor2[address(msg.sender)]].field_2048
                                players[stor2[address(msg.sender)]].field_2048 = (0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (sub_f1e4ff5f * players[stor2[address(msg.sender)]].field_1024 / totalKeys) + players[stor2[address(msg.sender)]].field_512
                            else:
                                require arg1 <= (0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (sub_f1e4ff5f * players[stor2[address(msg.sender)]].field_1024 / totalKeys) + players[stor2[address(msg.sender)]].field_512 - players[stor2[address(msg.sender)]].field_2048
                                call msg.sender with:
                                   value arg1 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require players[stor2[address(msg.sender)]].field_2048 + arg1 >= players[stor2[address(msg.sender)]].field_2048
                                players[stor2[address(msg.sender)]].field_2048 += arg1
                        else:
                            require 12 * totalEther / 100
                            require 12 * totalEther / 100 * sub_07fb021a[stor16][stor2[address(msg.sender)]] / 12 * totalEther / 100 == sub_07fb021a[stor16][stor2[address(msg.sender)]]
                            require totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18
                            require (12 * totalEther / 100 * sub_07fb021a[stor16][stor2[address(msg.sender)]] / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (sub_f1e4ff5f * players[stor2[address(msg.sender)]].field_1024 / totalKeys) + players[stor2[address(msg.sender)]].field_512 >= 12 * totalEther / 100 * sub_07fb021a[stor16][stor2[address(msg.sender)]] / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18
                            require players[stor2[address(msg.sender)]].field_2048 <= (12 * totalEther / 100 * sub_07fb021a[stor16][stor2[address(msg.sender)]] / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (sub_f1e4ff5f * players[stor2[address(msg.sender)]].field_1024 / totalKeys) + players[stor2[address(msg.sender)]].field_512
                            if arg1 <= 0:
                                call msg.sender with:
                                   value (12 * totalEther / 100 * sub_07fb021a[stor16][stor2[address(msg.sender)]] / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (sub_f1e4ff5f * players[stor2[address(msg.sender)]].field_1024 / totalKeys) + players[stor2[address(msg.sender)]].field_512 - players[stor2[address(msg.sender)]].field_2048 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require (12 * totalEther / 100 * sub_07fb021a[stor16][stor2[address(msg.sender)]] / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (sub_f1e4ff5f * players[stor2[address(msg.sender)]].field_1024 / totalKeys) + players[stor2[address(msg.sender)]].field_512 >= players[stor2[address(msg.sender)]].field_2048
                                players[stor2[address(msg.sender)]].field_2048 = (12 * totalEther / 100 * sub_07fb021a[stor16][stor2[address(msg.sender)]] / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (sub_f1e4ff5f * players[stor2[address(msg.sender)]].field_1024 / totalKeys) + players[stor2[address(msg.sender)]].field_512
                            else:
                                require arg1 <= (12 * totalEther / 100 * sub_07fb021a[stor16][stor2[address(msg.sender)]] / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (sub_f1e4ff5f * players[stor2[address(msg.sender)]].field_1024 / totalKeys) + players[stor2[address(msg.sender)]].field_512 - players[stor2[address(msg.sender)]].field_2048
                                call msg.sender with:
                                   value arg1 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require players[stor2[address(msg.sender)]].field_2048 + arg1 >= players[stor2[address(msg.sender)]].field_2048
                                players[stor2[address(msg.sender)]].field_2048 += arg1
    else:
        require players[stor2[address(msg.sender)]].field_1280
        require 46 * players[stor2[address(msg.sender)]].field_1280 / players[stor2[address(msg.sender)]].field_1280 == 46
        require players[stor2[address(msg.sender)]].field_1024 + (46 * players[stor2[address(msg.sender)]].field_1280 / 56) >= players[stor2[address(msg.sender)]].field_1024
        if not sub_f1e4ff5f:
            require totalKeys
            require (0 / totalKeys) + players[stor2[address(msg.sender)]].field_512 >= 0 / totalKeys
            if block.timestamp < endTime:
                require (0 / totalKeys) + players[stor2[address(msg.sender)]].field_512 >= 0
                require players[stor2[address(msg.sender)]].field_2048 <= (0 / totalKeys) + players[stor2[address(msg.sender)]].field_512
                if arg1 <= 0:
                    call msg.sender with:
                       value (0 / totalKeys) + players[stor2[address(msg.sender)]].field_512 - players[stor2[address(msg.sender)]].field_2048 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require (0 / totalKeys) + players[stor2[address(msg.sender)]].field_512 >= players[stor2[address(msg.sender)]].field_2048
                    players[stor2[address(msg.sender)]].field_2048 = (0 / totalKeys) + players[stor2[address(msg.sender)]].field_512
                else:
                    require arg1 <= (0 / totalKeys) + players[stor2[address(msg.sender)]].field_512 - players[stor2[address(msg.sender)]].field_2048
                    call msg.sender with:
                       value arg1 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require players[stor2[address(msg.sender)]].field_2048 + arg1 >= players[stor2[address(msg.sender)]].field_2048
                    players[stor2[address(msg.sender)]].field_2048 += arg1
            else:
                if totalKeys <= 2000000 * 10^18:
                    idx = ceil32(players[stor2[address(msg.sender)]][1].length) + 1312
                    s = 0
                    while ceil32(players[stor2[address(msg.sender)]][1].length) + players[stor2[address(msg.sender)]][1].length + 1280 > idx:
                        mem[idx + 32] = players[stor2[address(msg.sender)]][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require players[stor2[address(msg.sender)]].field_1024 + players[stor2[address(msg.sender)]].field_1280 >= players[stor2[address(msg.sender)]].field_1024
                    require players[stor2[address(msg.sender)]].field_1536 >= 0
                    if not totalEther:
                        require totalKeys
                        require (2 * 0 / totalKeys) + players[stor2[address(msg.sender)]].field_512 >= 0 / totalKeys
                        require players[stor2[address(msg.sender)]].field_2048 <= (2 * 0 / totalKeys) + players[stor2[address(msg.sender)]].field_512
                        if arg1 <= 0:
                            call msg.sender with:
                               value (2 * 0 / totalKeys) + players[stor2[address(msg.sender)]].field_512 - players[stor2[address(msg.sender)]].field_2048 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require (2 * 0 / totalKeys) + players[stor2[address(msg.sender)]].field_512 >= players[stor2[address(msg.sender)]].field_2048
                            players[stor2[address(msg.sender)]].field_2048 = (2 * 0 / totalKeys) + players[stor2[address(msg.sender)]].field_512
                        else:
                            require arg1 <= (2 * 0 / totalKeys) + players[stor2[address(msg.sender)]].field_512 - players[stor2[address(msg.sender)]].field_2048
                            call msg.sender with:
                               value arg1 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require players[stor2[address(msg.sender)]].field_2048 + arg1 >= players[stor2[address(msg.sender)]].field_2048
                            players[stor2[address(msg.sender)]].field_2048 += arg1
                    else:
                        require totalEther
                        require 12 * totalEther / totalEther == 12
                        if not 12 * totalEther / 100:
                            require totalKeys
                            require (2 * 0 / totalKeys) + players[stor2[address(msg.sender)]].field_512 >= 0 / totalKeys
                            require players[stor2[address(msg.sender)]].field_2048 <= (2 * 0 / totalKeys) + players[stor2[address(msg.sender)]].field_512
                            if arg1 <= 0:
                                call msg.sender with:
                                   value (2 * 0 / totalKeys) + players[stor2[address(msg.sender)]].field_512 - players[stor2[address(msg.sender)]].field_2048 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require (2 * 0 / totalKeys) + players[stor2[address(msg.sender)]].field_512 >= players[stor2[address(msg.sender)]].field_2048
                                players[stor2[address(msg.sender)]].field_2048 = (2 * 0 / totalKeys) + players[stor2[address(msg.sender)]].field_512
                            else:
                                require arg1 <= (2 * 0 / totalKeys) + players[stor2[address(msg.sender)]].field_512 - players[stor2[address(msg.sender)]].field_2048
                                call msg.sender with:
                                   value arg1 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require players[stor2[address(msg.sender)]].field_2048 + arg1 >= players[stor2[address(msg.sender)]].field_2048
                                players[stor2[address(msg.sender)]].field_2048 += arg1
                        else:
                            require 12 * totalEther / 100
                            require (players[stor2[address(msg.sender)]].field_1024 * 12 * totalEther / 100) + (players[stor2[address(msg.sender)]].field_1280 * 12 * totalEther / 100) + (players[stor2[address(msg.sender)]].field_1536 * 12 * totalEther / 100) / 12 * totalEther / 100 == players[stor2[address(msg.sender)]].field_1024 + players[stor2[address(msg.sender)]].field_1280 + players[stor2[address(msg.sender)]].field_1536
                            require totalKeys
                            require ((players[stor2[address(msg.sender)]].field_1024 * 12 * totalEther / 100) + (players[stor2[address(msg.sender)]].field_1280 * 12 * totalEther / 100) + (players[stor2[address(msg.sender)]].field_1536 * 12 * totalEther / 100) / totalKeys) + (0 / totalKeys) + players[stor2[address(msg.sender)]].field_512 >= (players[stor2[address(msg.sender)]].field_1024 * 12 * totalEther / 100) + (players[stor2[address(msg.sender)]].field_1280 * 12 * totalEther / 100) + (players[stor2[address(msg.sender)]].field_1536 * 12 * totalEther / 100) / totalKeys
                            require players[stor2[address(msg.sender)]].field_2048 <= ((players[stor2[address(msg.sender)]].field_1024 * 12 * totalEther / 100) + (players[stor2[address(msg.sender)]].field_1280 * 12 * totalEther / 100) + (players[stor2[address(msg.sender)]].field_1536 * 12 * totalEther / 100) / totalKeys) + (0 / totalKeys) + players[stor2[address(msg.sender)]].field_512
                            if arg1 <= 0:
                                call msg.sender with:
                                   value ((players[stor2[address(msg.sender)]].field_1024 * 12 * totalEther / 100) + (players[stor2[address(msg.sender)]].field_1280 * 12 * totalEther / 100) + (players[stor2[address(msg.sender)]].field_1536 * 12 * totalEther / 100) / totalKeys) + (0 / totalKeys) + players[stor2[address(msg.sender)]].field_512 - players[stor2[address(msg.sender)]].field_2048 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ((players[stor2[address(msg.sender)]].field_1024 * 12 * totalEther / 100) + (players[stor2[address(msg.sender)]].field_1280 * 12 * totalEther / 100) + (players[stor2[address(msg.sender)]].field_1536 * 12 * totalEther / 100) / totalKeys) + (0 / totalKeys) + players[stor2[address(msg.sender)]].field_512 >= players[stor2[address(msg.sender)]].field_2048
                                players[stor2[address(msg.sender)]].field_2048 = ((players[stor2[address(msg.sender)]].field_1024 * 12 * totalEther / 100) + (players[stor2[address(msg.sender)]].field_1280 * 12 * totalEther / 100) + (players[stor2[address(msg.sender)]].field_1536 * 12 * totalEther / 100) / totalKeys) + (0 / totalKeys) + players[stor2[address(msg.sender)]].field_512
                            else:
                                require arg1 <= ((players[stor2[address(msg.sender)]].field_1024 * 12 * totalEther / 100) + (players[stor2[address(msg.sender)]].field_1280 * 12 * totalEther / 100) + (players[stor2[address(msg.sender)]].field_1536 * 12 * totalEther / 100) / totalKeys) + (0 / totalKeys) + players[stor2[address(msg.sender)]].field_512 - players[stor2[address(msg.sender)]].field_2048
                                call msg.sender with:
                                   value arg1 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require players[stor2[address(msg.sender)]].field_2048 + arg1 >= players[stor2[address(msg.sender)]].field_2048
                                players[stor2[address(msg.sender)]].field_2048 += arg1
                else:
                    require (100000 * 10^18 * stor16) - 100000 * 10^18 / 100000 * 10^18 == stor16 - 1
                    require (100000 * 10^18 * stor16) + 1900000 * 10^18 >= 2000000 * 10^18
                    require (100000 * 10^18 * stor16) + 1900000 * 10^18 <= totalKeys
                    if not totalEther:
                        require totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18
                        require (0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (0 / totalKeys) + players[stor2[address(msg.sender)]].field_512 >= 0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18
                        require players[stor2[address(msg.sender)]].field_2048 <= (0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (0 / totalKeys) + players[stor2[address(msg.sender)]].field_512
                        if arg1 <= 0:
                            call msg.sender with:
                               value (0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (0 / totalKeys) + players[stor2[address(msg.sender)]].field_512 - players[stor2[address(msg.sender)]].field_2048 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require (0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (0 / totalKeys) + players[stor2[address(msg.sender)]].field_512 >= players[stor2[address(msg.sender)]].field_2048
                            players[stor2[address(msg.sender)]].field_2048 = (0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (0 / totalKeys) + players[stor2[address(msg.sender)]].field_512
                        else:
                            require arg1 <= (0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (0 / totalKeys) + players[stor2[address(msg.sender)]].field_512 - players[stor2[address(msg.sender)]].field_2048
                            call msg.sender with:
                               value arg1 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require players[stor2[address(msg.sender)]].field_2048 + arg1 >= players[stor2[address(msg.sender)]].field_2048
                            players[stor2[address(msg.sender)]].field_2048 += arg1
                    else:
                        require totalEther
                        require 12 * totalEther / totalEther == 12
                        if not 12 * totalEther / 100:
                            require totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18
                            require (0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (0 / totalKeys) + players[stor2[address(msg.sender)]].field_512 >= 0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18
                            require players[stor2[address(msg.sender)]].field_2048 <= (0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (0 / totalKeys) + players[stor2[address(msg.sender)]].field_512
                            if arg1 <= 0:
                                call msg.sender with:
                                   value (0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (0 / totalKeys) + players[stor2[address(msg.sender)]].field_512 - players[stor2[address(msg.sender)]].field_2048 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require (0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (0 / totalKeys) + players[stor2[address(msg.sender)]].field_512 >= players[stor2[address(msg.sender)]].field_2048
                                players[stor2[address(msg.sender)]].field_2048 = (0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (0 / totalKeys) + players[stor2[address(msg.sender)]].field_512
                            else:
                                require arg1 <= (0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (0 / totalKeys) + players[stor2[address(msg.sender)]].field_512 - players[stor2[address(msg.sender)]].field_2048
                                call msg.sender with:
                                   value arg1 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require players[stor2[address(msg.sender)]].field_2048 + arg1 >= players[stor2[address(msg.sender)]].field_2048
                                players[stor2[address(msg.sender)]].field_2048 += arg1
                        else:
                            require 12 * totalEther / 100
                            require 12 * totalEther / 100 * sub_07fb021a[stor16][stor2[address(msg.sender)]] / 12 * totalEther / 100 == sub_07fb021a[stor16][stor2[address(msg.sender)]]
                            require totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18
                            require (12 * totalEther / 100 * sub_07fb021a[stor16][stor2[address(msg.sender)]] / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (0 / totalKeys) + players[stor2[address(msg.sender)]].field_512 >= 12 * totalEther / 100 * sub_07fb021a[stor16][stor2[address(msg.sender)]] / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18
                            require players[stor2[address(msg.sender)]].field_2048 <= (12 * totalEther / 100 * sub_07fb021a[stor16][stor2[address(msg.sender)]] / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (0 / totalKeys) + players[stor2[address(msg.sender)]].field_512
                            if arg1 <= 0:
                                call msg.sender with:
                                   value (12 * totalEther / 100 * sub_07fb021a[stor16][stor2[address(msg.sender)]] / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (0 / totalKeys) + players[stor2[address(msg.sender)]].field_512 - players[stor2[address(msg.sender)]].field_2048 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require (12 * totalEther / 100 * sub_07fb021a[stor16][stor2[address(msg.sender)]] / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (0 / totalKeys) + players[stor2[address(msg.sender)]].field_512 >= players[stor2[address(msg.sender)]].field_2048
                                players[stor2[address(msg.sender)]].field_2048 = (12 * totalEther / 100 * sub_07fb021a[stor16][stor2[address(msg.sender)]] / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (0 / totalKeys) + players[stor2[address(msg.sender)]].field_512
                            else:
                                require arg1 <= (12 * totalEther / 100 * sub_07fb021a[stor16][stor2[address(msg.sender)]] / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + (0 / totalKeys) + players[stor2[address(msg.sender)]].field_512 - players[stor2[address(msg.sender)]].field_2048
                                call msg.sender with:
                                   value arg1 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require players[stor2[address(msg.sender)]].field_2048 + arg1 >= players[stor2[address(msg.sender)]].field_2048
                                players[stor2[address(msg.sender)]].field_2048 += arg1
        else:
            require sub_f1e4ff5f
            require (players[stor2[address(msg.sender)]].field_1024 * sub_f1e4ff5f) + (46 * players[stor2[address(msg.sender)]].field_1280 / 56 * sub_f1e4ff5f) / sub_f1e4ff5f == players[stor2[address(msg.sender)]].field_1024 + (46 * players[stor2[address(msg.sender)]].field_1280 / 56)
            require totalKeys
            require ((players[stor2[address(msg.sender)]].field_1024 * sub_f1e4ff5f) + (46 * players[stor2[address(msg.sender)]].field_1280 / 56 * sub_f1e4ff5f) / totalKeys) + players[stor2[address(msg.sender)]].field_512 >= (players[stor2[address(msg.sender)]].field_1024 * sub_f1e4ff5f) + (46 * players[stor2[address(msg.sender)]].field_1280 / 56 * sub_f1e4ff5f) / totalKeys
            if block.timestamp < endTime:
                require ((players[stor2[address(msg.sender)]].field_1024 * sub_f1e4ff5f) + (46 * players[stor2[address(msg.sender)]].field_1280 / 56 * sub_f1e4ff5f) / totalKeys) + players[stor2[address(msg.sender)]].field_512 >= 0
                require players[stor2[address(msg.sender)]].field_2048 <= ((players[stor2[address(msg.sender)]].field_1024 * sub_f1e4ff5f) + (46 * players[stor2[address(msg.sender)]].field_1280 / 56 * sub_f1e4ff5f) / totalKeys) + players[stor2[address(msg.sender)]].field_512
                if arg1 <= 0:
                    call msg.sender with:
                       value ((players[stor2[address(msg.sender)]].field_1024 * sub_f1e4ff5f) + (46 * players[stor2[address(msg.sender)]].field_1280 / 56 * sub_f1e4ff5f) / totalKeys) + players[stor2[address(msg.sender)]].field_512 - players[stor2[address(msg.sender)]].field_2048 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ((players[stor2[address(msg.sender)]].field_1024 * sub_f1e4ff5f) + (46 * players[stor2[address(msg.sender)]].field_1280 / 56 * sub_f1e4ff5f) / totalKeys) + players[stor2[address(msg.sender)]].field_512 >= players[stor2[address(msg.sender)]].field_2048
                    players[stor2[address(msg.sender)]].field_2048 = ((players[stor2[address(msg.sender)]].field_1024 * sub_f1e4ff5f) + (46 * players[stor2[address(msg.sender)]].field_1280 / 56 * sub_f1e4ff5f) / totalKeys) + players[stor2[address(msg.sender)]].field_512
                else:
                    require arg1 <= ((players[stor2[address(msg.sender)]].field_1024 * sub_f1e4ff5f) + (46 * players[stor2[address(msg.sender)]].field_1280 / 56 * sub_f1e4ff5f) / totalKeys) + players[stor2[address(msg.sender)]].field_512 - players[stor2[address(msg.sender)]].field_2048
                    call msg.sender with:
                       value arg1 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require players[stor2[address(msg.sender)]].field_2048 + arg1 >= players[stor2[address(msg.sender)]].field_2048
                    players[stor2[address(msg.sender)]].field_2048 += arg1
            else:
                if totalKeys <= 2000000 * 10^18:
                    idx = ceil32(players[stor2[address(msg.sender)]][1].length) + 1312
                    s = 0
                    while ceil32(players[stor2[address(msg.sender)]][1].length) + players[stor2[address(msg.sender)]][1].length + 1280 > idx:
                        mem[idx + 32] = players[stor2[address(msg.sender)]][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require players[stor2[address(msg.sender)]].field_1024 + players[stor2[address(msg.sender)]].field_1280 >= players[stor2[address(msg.sender)]].field_1024
                    require players[stor2[address(msg.sender)]].field_1536 >= 0
                    if not totalEther:
                        require totalKeys
                        require (0 / totalKeys) + ((players[stor2[address(msg.sender)]].field_1024 * sub_f1e4ff5f) + (46 * players[stor2[address(msg.sender)]].field_1280 / 56 * sub_f1e4ff5f) / totalKeys) + players[stor2[address(msg.sender)]].field_512 >= 0 / totalKeys
                        require players[stor2[address(msg.sender)]].field_2048 <= (0 / totalKeys) + ((players[stor2[address(msg.sender)]].field_1024 * sub_f1e4ff5f) + (46 * players[stor2[address(msg.sender)]].field_1280 / 56 * sub_f1e4ff5f) / totalKeys) + players[stor2[address(msg.sender)]].field_512
                        if arg1 <= 0:
                            call msg.sender with:
                               value (0 / totalKeys) + ((players[stor2[address(msg.sender)]].field_1024 * sub_f1e4ff5f) + (46 * players[stor2[address(msg.sender)]].field_1280 / 56 * sub_f1e4ff5f) / totalKeys) + players[stor2[address(msg.sender)]].field_512 - players[stor2[address(msg.sender)]].field_2048 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require (0 / totalKeys) + ((players[stor2[address(msg.sender)]].field_1024 * sub_f1e4ff5f) + (46 * players[stor2[address(msg.sender)]].field_1280 / 56 * sub_f1e4ff5f) / totalKeys) + players[stor2[address(msg.sender)]].field_512 >= players[stor2[address(msg.sender)]].field_2048
                            players[stor2[address(msg.sender)]].field_2048 = (0 / totalKeys) + ((players[stor2[address(msg.sender)]].field_1024 * sub_f1e4ff5f) + (46 * players[stor2[address(msg.sender)]].field_1280 / 56 * sub_f1e4ff5f) / totalKeys) + players[stor2[address(msg.sender)]].field_512
                        else:
                            require arg1 <= (0 / totalKeys) + ((players[stor2[address(msg.sender)]].field_1024 * sub_f1e4ff5f) + (46 * players[stor2[address(msg.sender)]].field_1280 / 56 * sub_f1e4ff5f) / totalKeys) + players[stor2[address(msg.sender)]].field_512 - players[stor2[address(msg.sender)]].field_2048
                            call msg.sender with:
                               value arg1 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require players[stor2[address(msg.sender)]].field_2048 + arg1 >= players[stor2[address(msg.sender)]].field_2048
                            players[stor2[address(msg.sender)]].field_2048 += arg1
                    else:
                        require totalEther
                        require 12 * totalEther / totalEther == 12
                        if not 12 * totalEther / 100:
                            require totalKeys
                            require (0 / totalKeys) + ((players[stor2[address(msg.sender)]].field_1024 * sub_f1e4ff5f) + (46 * players[stor2[address(msg.sender)]].field_1280 / 56 * sub_f1e4ff5f) / totalKeys) + players[stor2[address(msg.sender)]].field_512 >= 0 / totalKeys
                            require players[stor2[address(msg.sender)]].field_2048 <= (0 / totalKeys) + ((players[stor2[address(msg.sender)]].field_1024 * sub_f1e4ff5f) + (46 * players[stor2[address(msg.sender)]].field_1280 / 56 * sub_f1e4ff5f) / totalKeys) + players[stor2[address(msg.sender)]].field_512
                            if arg1 <= 0:
                                call msg.sender with:
                                   value (0 / totalKeys) + ((players[stor2[address(msg.sender)]].field_1024 * sub_f1e4ff5f) + (46 * players[stor2[address(msg.sender)]].field_1280 / 56 * sub_f1e4ff5f) / totalKeys) + players[stor2[address(msg.sender)]].field_512 - players[stor2[address(msg.sender)]].field_2048 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require (0 / totalKeys) + ((players[stor2[address(msg.sender)]].field_1024 * sub_f1e4ff5f) + (46 * players[stor2[address(msg.sender)]].field_1280 / 56 * sub_f1e4ff5f) / totalKeys) + players[stor2[address(msg.sender)]].field_512 >= players[stor2[address(msg.sender)]].field_2048
                                players[stor2[address(msg.sender)]].field_2048 = (0 / totalKeys) + ((players[stor2[address(msg.sender)]].field_1024 * sub_f1e4ff5f) + (46 * players[stor2[address(msg.sender)]].field_1280 / 56 * sub_f1e4ff5f) / totalKeys) + players[stor2[address(msg.sender)]].field_512
                            else:
                                require arg1 <= (0 / totalKeys) + ((players[stor2[address(msg.sender)]].field_1024 * sub_f1e4ff5f) + (46 * players[stor2[address(msg.sender)]].field_1280 / 56 * sub_f1e4ff5f) / totalKeys) + players[stor2[address(msg.sender)]].field_512 - players[stor2[address(msg.sender)]].field_2048
                                call msg.sender with:
                                   value arg1 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require players[stor2[address(msg.sender)]].field_2048 + arg1 >= players[stor2[address(msg.sender)]].field_2048
                                players[stor2[address(msg.sender)]].field_2048 += arg1
                        else:
                            require 12 * totalEther / 100
                            require (players[stor2[address(msg.sender)]].field_1024 * 12 * totalEther / 100) + (players[stor2[address(msg.sender)]].field_1280 * 12 * totalEther / 100) + (players[stor2[address(msg.sender)]].field_1536 * 12 * totalEther / 100) / 12 * totalEther / 100 == players[stor2[address(msg.sender)]].field_1024 + players[stor2[address(msg.sender)]].field_1280 + players[stor2[address(msg.sender)]].field_1536
                            require totalKeys
                            require ((players[stor2[address(msg.sender)]].field_1024 * 12 * totalEther / 100) + (players[stor2[address(msg.sender)]].field_1280 * 12 * totalEther / 100) + (players[stor2[address(msg.sender)]].field_1536 * 12 * totalEther / 100) / totalKeys) + ((players[stor2[address(msg.sender)]].field_1024 * sub_f1e4ff5f) + (46 * players[stor2[address(msg.sender)]].field_1280 / 56 * sub_f1e4ff5f) / totalKeys) + players[stor2[address(msg.sender)]].field_512 >= (players[stor2[address(msg.sender)]].field_1024 * 12 * totalEther / 100) + (players[stor2[address(msg.sender)]].field_1280 * 12 * totalEther / 100) + (players[stor2[address(msg.sender)]].field_1536 * 12 * totalEther / 100) / totalKeys
                            require players[stor2[address(msg.sender)]].field_2048 <= ((players[stor2[address(msg.sender)]].field_1024 * 12 * totalEther / 100) + (players[stor2[address(msg.sender)]].field_1280 * 12 * totalEther / 100) + (players[stor2[address(msg.sender)]].field_1536 * 12 * totalEther / 100) / totalKeys) + ((players[stor2[address(msg.sender)]].field_1024 * sub_f1e4ff5f) + (46 * players[stor2[address(msg.sender)]].field_1280 / 56 * sub_f1e4ff5f) / totalKeys) + players[stor2[address(msg.sender)]].field_512
                            if arg1 <= 0:
                                call msg.sender with:
                                   value ((players[stor2[address(msg.sender)]].field_1024 * 12 * totalEther / 100) + (players[stor2[address(msg.sender)]].field_1280 * 12 * totalEther / 100) + (players[stor2[address(msg.sender)]].field_1536 * 12 * totalEther / 100) / totalKeys) + ((players[stor2[address(msg.sender)]].field_1024 * sub_f1e4ff5f) + (46 * players[stor2[address(msg.sender)]].field_1280 / 56 * sub_f1e4ff5f) / totalKeys) + players[stor2[address(msg.sender)]].field_512 - players[stor2[address(msg.sender)]].field_2048 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ((players[stor2[address(msg.sender)]].field_1024 * 12 * totalEther / 100) + (players[stor2[address(msg.sender)]].field_1280 * 12 * totalEther / 100) + (players[stor2[address(msg.sender)]].field_1536 * 12 * totalEther / 100) / totalKeys) + ((players[stor2[address(msg.sender)]].field_1024 * sub_f1e4ff5f) + (46 * players[stor2[address(msg.sender)]].field_1280 / 56 * sub_f1e4ff5f) / totalKeys) + players[stor2[address(msg.sender)]].field_512 >= players[stor2[address(msg.sender)]].field_2048
                                players[stor2[address(msg.sender)]].field_2048 = ((players[stor2[address(msg.sender)]].field_1024 * 12 * totalEther / 100) + (players[stor2[address(msg.sender)]].field_1280 * 12 * totalEther / 100) + (players[stor2[address(msg.sender)]].field_1536 * 12 * totalEther / 100) / totalKeys) + ((players[stor2[address(msg.sender)]].field_1024 * sub_f1e4ff5f) + (46 * players[stor2[address(msg.sender)]].field_1280 / 56 * sub_f1e4ff5f) / totalKeys) + players[stor2[address(msg.sender)]].field_512
                            else:
                                require arg1 <= ((players[stor2[address(msg.sender)]].field_1024 * 12 * totalEther / 100) + (players[stor2[address(msg.sender)]].field_1280 * 12 * totalEther / 100) + (players[stor2[address(msg.sender)]].field_1536 * 12 * totalEther / 100) / totalKeys) + ((players[stor2[address(msg.sender)]].field_1024 * sub_f1e4ff5f) + (46 * players[stor2[address(msg.sender)]].field_1280 / 56 * sub_f1e4ff5f) / totalKeys) + players[stor2[address(msg.sender)]].field_512 - players[stor2[address(msg.sender)]].field_2048
                                call msg.sender with:
                                   value arg1 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require players[stor2[address(msg.sender)]].field_2048 + arg1 >= players[stor2[address(msg.sender)]].field_2048
                                players[stor2[address(msg.sender)]].field_2048 += arg1
                else:
                    require (100000 * 10^18 * stor16) - 100000 * 10^18 / 100000 * 10^18 == stor16 - 1
                    require (100000 * 10^18 * stor16) + 1900000 * 10^18 >= 2000000 * 10^18
                    require (100000 * 10^18 * stor16) + 1900000 * 10^18 <= totalKeys
                    if not totalEther:
                        require totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18
                        require (0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + ((players[stor2[address(msg.sender)]].field_1024 * sub_f1e4ff5f) + (46 * players[stor2[address(msg.sender)]].field_1280 / 56 * sub_f1e4ff5f) / totalKeys) + players[stor2[address(msg.sender)]].field_512 >= 0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18
                        require players[stor2[address(msg.sender)]].field_2048 <= (0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + ((players[stor2[address(msg.sender)]].field_1024 * sub_f1e4ff5f) + (46 * players[stor2[address(msg.sender)]].field_1280 / 56 * sub_f1e4ff5f) / totalKeys) + players[stor2[address(msg.sender)]].field_512
                        if arg1 <= 0:
                            call msg.sender with:
                               value (0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + ((players[stor2[address(msg.sender)]].field_1024 * sub_f1e4ff5f) + (46 * players[stor2[address(msg.sender)]].field_1280 / 56 * sub_f1e4ff5f) / totalKeys) + players[stor2[address(msg.sender)]].field_512 - players[stor2[address(msg.sender)]].field_2048 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require (0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + ((players[stor2[address(msg.sender)]].field_1024 * sub_f1e4ff5f) + (46 * players[stor2[address(msg.sender)]].field_1280 / 56 * sub_f1e4ff5f) / totalKeys) + players[stor2[address(msg.sender)]].field_512 >= players[stor2[address(msg.sender)]].field_2048
                            players[stor2[address(msg.sender)]].field_2048 = (0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + ((players[stor2[address(msg.sender)]].field_1024 * sub_f1e4ff5f) + (46 * players[stor2[address(msg.sender)]].field_1280 / 56 * sub_f1e4ff5f) / totalKeys) + players[stor2[address(msg.sender)]].field_512
                        else:
                            require arg1 <= (0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + ((players[stor2[address(msg.sender)]].field_1024 * sub_f1e4ff5f) + (46 * players[stor2[address(msg.sender)]].field_1280 / 56 * sub_f1e4ff5f) / totalKeys) + players[stor2[address(msg.sender)]].field_512 - players[stor2[address(msg.sender)]].field_2048
                            call msg.sender with:
                               value arg1 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require players[stor2[address(msg.sender)]].field_2048 + arg1 >= players[stor2[address(msg.sender)]].field_2048
                            players[stor2[address(msg.sender)]].field_2048 += arg1
                    else:
                        require totalEther
                        require 12 * totalEther / totalEther == 12
                        if not 12 * totalEther / 100:
                            require totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18
                            require (0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + ((players[stor2[address(msg.sender)]].field_1024 * sub_f1e4ff5f) + (46 * players[stor2[address(msg.sender)]].field_1280 / 56 * sub_f1e4ff5f) / totalKeys) + players[stor2[address(msg.sender)]].field_512 >= 0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18
                            require players[stor2[address(msg.sender)]].field_2048 <= (0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + ((players[stor2[address(msg.sender)]].field_1024 * sub_f1e4ff5f) + (46 * players[stor2[address(msg.sender)]].field_1280 / 56 * sub_f1e4ff5f) / totalKeys) + players[stor2[address(msg.sender)]].field_512
                            if arg1 <= 0:
                                call msg.sender with:
                                   value (0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + ((players[stor2[address(msg.sender)]].field_1024 * sub_f1e4ff5f) + (46 * players[stor2[address(msg.sender)]].field_1280 / 56 * sub_f1e4ff5f) / totalKeys) + players[stor2[address(msg.sender)]].field_512 - players[stor2[address(msg.sender)]].field_2048 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require (0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + ((players[stor2[address(msg.sender)]].field_1024 * sub_f1e4ff5f) + (46 * players[stor2[address(msg.sender)]].field_1280 / 56 * sub_f1e4ff5f) / totalKeys) + players[stor2[address(msg.sender)]].field_512 >= players[stor2[address(msg.sender)]].field_2048
                                players[stor2[address(msg.sender)]].field_2048 = (0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + ((players[stor2[address(msg.sender)]].field_1024 * sub_f1e4ff5f) + (46 * players[stor2[address(msg.sender)]].field_1280 / 56 * sub_f1e4ff5f) / totalKeys) + players[stor2[address(msg.sender)]].field_512
                            else:
                                require arg1 <= (0 / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + ((players[stor2[address(msg.sender)]].field_1024 * sub_f1e4ff5f) + (46 * players[stor2[address(msg.sender)]].field_1280 / 56 * sub_f1e4ff5f) / totalKeys) + players[stor2[address(msg.sender)]].field_512 - players[stor2[address(msg.sender)]].field_2048
                                call msg.sender with:
                                   value arg1 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require players[stor2[address(msg.sender)]].field_2048 + arg1 >= players[stor2[address(msg.sender)]].field_2048
                                players[stor2[address(msg.sender)]].field_2048 += arg1
                        else:
                            require 12 * totalEther / 100
                            require 12 * totalEther / 100 * sub_07fb021a[stor16][stor2[address(msg.sender)]] / 12 * totalEther / 100 == sub_07fb021a[stor16][stor2[address(msg.sender)]]
                            require totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18
                            require (12 * totalEther / 100 * sub_07fb021a[stor16][stor2[address(msg.sender)]] / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + ((players[stor2[address(msg.sender)]].field_1024 * sub_f1e4ff5f) + (46 * players[stor2[address(msg.sender)]].field_1280 / 56 * sub_f1e4ff5f) / totalKeys) + players[stor2[address(msg.sender)]].field_512 >= 12 * totalEther / 100 * sub_07fb021a[stor16][stor2[address(msg.sender)]] / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18
                            require players[stor2[address(msg.sender)]].field_2048 <= (12 * totalEther / 100 * sub_07fb021a[stor16][stor2[address(msg.sender)]] / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + ((players[stor2[address(msg.sender)]].field_1024 * sub_f1e4ff5f) + (46 * players[stor2[address(msg.sender)]].field_1280 / 56 * sub_f1e4ff5f) / totalKeys) + players[stor2[address(msg.sender)]].field_512
                            if arg1 <= 0:
                                call msg.sender with:
                                   value (12 * totalEther / 100 * sub_07fb021a[stor16][stor2[address(msg.sender)]] / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + ((players[stor2[address(msg.sender)]].field_1024 * sub_f1e4ff5f) + (46 * players[stor2[address(msg.sender)]].field_1280 / 56 * sub_f1e4ff5f) / totalKeys) + players[stor2[address(msg.sender)]].field_512 - players[stor2[address(msg.sender)]].field_2048 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require (12 * totalEther / 100 * sub_07fb021a[stor16][stor2[address(msg.sender)]] / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + ((players[stor2[address(msg.sender)]].field_1024 * sub_f1e4ff5f) + (46 * players[stor2[address(msg.sender)]].field_1280 / 56 * sub_f1e4ff5f) / totalKeys) + players[stor2[address(msg.sender)]].field_512 >= players[stor2[address(msg.sender)]].field_2048
                                players[stor2[address(msg.sender)]].field_2048 = (12 * totalEther / 100 * sub_07fb021a[stor16][stor2[address(msg.sender)]] / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + ((players[stor2[address(msg.sender)]].field_1024 * sub_f1e4ff5f) + (46 * players[stor2[address(msg.sender)]].field_1280 / 56 * sub_f1e4ff5f) / totalKeys) + players[stor2[address(msg.sender)]].field_512
                            else:
                                require arg1 <= (12 * totalEther / 100 * sub_07fb021a[stor16][stor2[address(msg.sender)]] / totalKeys + (-100000 * 10^18 * stor16) - 1900000 * 10^18) + ((players[stor2[address(msg.sender)]].field_1024 * sub_f1e4ff5f) + (46 * players[stor2[address(msg.sender)]].field_1280 / 56 * sub_f1e4ff5f) / totalKeys) + players[stor2[address(msg.sender)]].field_512 - players[stor2[address(msg.sender)]].field_2048
                                call msg.sender with:
                                   value arg1 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require players[stor2[address(msg.sender)]].field_2048 + arg1 >= players[stor2[address(msg.sender)]].field_2048
                                players[stor2[address(msg.sender)]].field_2048 += arg1
}



}
