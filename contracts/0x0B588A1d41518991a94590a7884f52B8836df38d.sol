contract main {




// =====================  Runtime code  =====================


uint256 rndNo;
uint256 totalEth;
mapping of struct round_m;
mapping of struct playerRound_m;
address owner;
uint256 ownerWithdraw;

function rndNo() {
    return rndNo
}

function totalEth() {
    return totalEth
}

function ownerWithdraw() {
    return ownerWithdraw
}

function round_m(uint256 arg1) {
    return round_m[arg1].field_0, 
           round_m[arg1].field_256,
           round_m[arg1].field_512,
           round_m[arg1].field_768,
           round_m[arg1].field_1024,
           round_m[arg1].field_1280,
           bool(round_m[arg1].field_1536)
}

function owner() {
    return owner
}

function playerRound_m(uint256 arg1, address arg2) {
    return playerRound_m[arg1][arg2].field_0, playerRound_m[arg1][arg2].field_256, playerRound_m[arg1][arg2].field_512
}

function changeOwner(address arg1) {
    if owner != msg.sender:
        revert with 0, 'only owner can do it'
    owner = arg1
}

function feeWithdraw() {
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    if not totalEth:
        if 0 <= ownerWithdraw:
            revert with 0, 'No need to withdraw'
        ownerWithdraw = 0
        if ownerWithdraw > 0:
            revert with 0, 'SafeMath sub failed'
        call owner with:
           value -ownerWithdraw wei
             gas 2300 * is_zero(value) wei
    else:
        if 5 * totalEth / totalEth != 5:
            revert with 0, 'SafeMath mul failed'
        if 5 * totalEth / 100 <= ownerWithdraw:
            revert with 0, 'No need to withdraw'
        ownerWithdraw = 5 * totalEth / 100
        if ownerWithdraw > 5 * totalEth / 100:
            revert with 0, 'SafeMath sub failed'
        call owner with:
           value (5 * totalEth / 100) - ownerWithdraw wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function awardByRndNo(uint256 arg1) {
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    if arg1 > rndNo:
        revert with 0, 'You're running too fast'
    if block.timestamp <= round_m[arg1].field_768:
        revert with 0, 'Wait patiently'
    if round_m[arg1].field_1024 != msg.sender:
        revert with 0, 'The prize is not yours'
    if round_m[arg1].field_1536:
        revert with 0, 'Can't get prizes repeatedly'
    if not round_m[arg1].field_0:
        round_m[arg1].field_1536 = 1
        call msg.sender with:
             gas 2300 wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit onAward(0, block.timestamp, msg.sender, arg1);
    else:
        if 35 * round_m[arg1].field_0 / round_m[arg1].field_0 != 35:
            revert with 0, 'SafeMath mul failed'
        round_m[arg1].field_1536 = 1
        call msg.sender with:
           value 35 * round_m[arg1].field_0 / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit onAward(35 * round_m[arg1].field_0 / 100, block.timestamp, msg.sender, arg1);
}

function withdrawByRndNo(uint256 arg1) {
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    if arg1 > rndNo:
        revert with 0, 'You're running too fast'
    if not round_m[arg1].field_256:
        require round_m[arg1].field_0
        if playerRound_m[arg1][msg.sender].field_256 * round_m[arg1].field_0 / round_m[arg1].field_0 != playerRound_m[arg1][msg.sender].field_256:
            revert with 0, 'SafeMath mul failed'
        require playerRound_m[arg1][msg.sender].field_256 * round_m[arg1].field_0
        require 60 * playerRound_m[arg1][msg.sender].field_256 * round_m[arg1].field_0 / playerRound_m[arg1][msg.sender].field_256 * round_m[arg1].field_0 != 60
        revert with 0, 'SafeMath mul failed'
    if 100 * round_m[arg1].field_256 / round_m[arg1].field_256 != 100:
        revert with 0, 'SafeMath mul failed'
    if not round_m[arg1].field_0:
        require 100 * round_m[arg1].field_256
        if 0 / 100 * round_m[arg1].field_256 <= playerRound_m[arg1][msg.sender].field_512:
            revert with 0, 'No need to withdraw'
        if playerRound_m[arg1][msg.sender].field_512 > 0 / 100 * round_m[arg1].field_256:
            revert with 0, 'SafeMath sub failed'
        playerRound_m[arg1][msg.sender].field_512 = 0 / 100 * round_m[arg1].field_256
        call msg.sender with:
           value (0 / 100 * round_m[arg1].field_256) - playerRound_m[arg1][msg.sender].field_512 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit onWithdraw((0 / 100 * round_m[arg1].field_256) - playerRound_m[arg1][msg.sender].field_512, block.timestamp, msg.sender, arg1);
    else:
        if playerRound_m[arg1][msg.sender].field_256 * round_m[arg1].field_0 / round_m[arg1].field_0 != playerRound_m[arg1][msg.sender].field_256:
            revert with 0, 'SafeMath mul failed'
        if not playerRound_m[arg1][msg.sender].field_256 * round_m[arg1].field_0:
            require 100 * round_m[arg1].field_256
            if 0 / 100 * round_m[arg1].field_256 <= playerRound_m[arg1][msg.sender].field_512:
                revert with 0, 'No need to withdraw'
            if playerRound_m[arg1][msg.sender].field_512 > 0 / 100 * round_m[arg1].field_256:
                revert with 0, 'SafeMath sub failed'
            playerRound_m[arg1][msg.sender].field_512 = 0 / 100 * round_m[arg1].field_256
            call msg.sender with:
               value (0 / 100 * round_m[arg1].field_256) - playerRound_m[arg1][msg.sender].field_512 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit onWithdraw((0 / 100 * round_m[arg1].field_256) - playerRound_m[arg1][msg.sender].field_512, block.timestamp, msg.sender, arg1);
        else:
            if 60 * playerRound_m[arg1][msg.sender].field_256 * round_m[arg1].field_0 / playerRound_m[arg1][msg.sender].field_256 * round_m[arg1].field_0 != 60:
                revert with 0, 'SafeMath mul failed'
            require 100 * round_m[arg1].field_256
            if 60 * playerRound_m[arg1][msg.sender].field_256 * round_m[arg1].field_0 / 100 * round_m[arg1].field_256 <= playerRound_m[arg1][msg.sender].field_512:
                revert with 0, 'No need to withdraw'
            if playerRound_m[arg1][msg.sender].field_512 > 60 * playerRound_m[arg1][msg.sender].field_256 * round_m[arg1].field_0 / 100 * round_m[arg1].field_256:
                revert with 0, 'SafeMath sub failed'
            playerRound_m[arg1][msg.sender].field_512 = 60 * playerRound_m[arg1][msg.sender].field_256 * round_m[arg1].field_0 / 100 * round_m[arg1].field_256
            call msg.sender with:
               value (60 * playerRound_m[arg1][msg.sender].field_256 * round_m[arg1].field_0 / 100 * round_m[arg1].field_256) - playerRound_m[arg1][msg.sender].field_512 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit onWithdraw((60 * playerRound_m[arg1][msg.sender].field_256 * round_m[arg1].field_0 / 100 * round_m[arg1].field_256) - playerRound_m[arg1][msg.sender].field_512, block.timestamp, msg.sender, arg1);
}

function getBuyPrice() {
    if block.timestamp > round_m[stor0].field_768:
        return 75 * 10^12
    if 10000000 * 10^18 <= round_m[stor0].field_256:
        return 0
    if round_m[stor0].field_256 + 10^18 < round_m[stor0].field_256:
        revert with 0, 'SafeMath add failed'
    if 10^18 > round_m[stor0].field_256 + 10^18:
        revert with 0, 'SafeMath sub failed'
    if not round_m[stor0].field_256:
        if not round_m[stor0].field_256:
            if not round_m[stor0].field_256 + 10^18:
                if not round_m[stor0].field_256 + 10^18:
                    return 0
                if (2 * 10^18 * round_m[stor0].field_256) + (round_m[stor0].field_256 * round_m[stor0].field_256) + 1000000000000000000 * 10^18 / round_m[stor0].field_256 + 10^18 != round_m[stor0].field_256 + 10^18:
                    revert with 0, 'SafeMath mul failed'
                if (156250000 * 10^18 * round_m[stor0].field_256) + (78125000 * round_m[stor0].field_256 * round_m[stor0].field_256) + 78125000000000000000000000 * 10^18 / 78125000 != (2 * 10^18 * round_m[stor0].field_256) + (round_m[stor0].field_256 * round_m[stor0].field_256) + 1000000000000000000 * 10^18:
                    revert with 0, 'SafeMath mul failed'
                if 0 > (156250000 * 10^18 * round_m[stor0].field_256) + (78125000 * round_m[stor0].field_256 * round_m[stor0].field_256) + 78125000000000000000000000 * 10^18 / 1000000000000000000 * 10^18:
                    revert with 0, 'SafeMath sub failed'
                return ((156250000 * 10^18 * round_m[stor0].field_256) + (78125000 * round_m[stor0].field_256 * round_m[stor0].field_256) + 78125000000000000000000000 * 10^18 / 1000000000000000000 * 10^18)
            if (10^18 * round_m[stor0].field_256) + 1000000000000000000 * 10^18 / round_m[stor0].field_256 + 10^18 != 10^18:
                revert with 0, 'SafeMath mul failed'
            if (149999843750000 * 10^18 * round_m[stor0].field_256) + 0x66a2519f4ce084becaa29127238e58970000000000 / 149999843750000 != (10^18 * round_m[stor0].field_256) + 1000000000000000000 * 10^18:
                revert with 0, 'SafeMath mul failed'
            if not round_m[stor0].field_256 + 10^18:
                if (149999843750000 * 10^18 * round_m[stor0].field_256) + 0x66a2519f4ce084becaa29127238e58970000000000 / 2 < 0:
                    revert with 0, 'SafeMath add failed'
                if 0 > (149999843750000 * 10^18 * round_m[stor0].field_256) + 0x66a2519f4ce084becaa29127238e58970000000000 / 2 / 1000000000000000000 * 10^18:
                    revert with 0, 'SafeMath sub failed'
                return ((149999843750000 * 10^18 * round_m[stor0].field_256) + 0x66a2519f4ce084becaa29127238e58970000000000 / 2 / 1000000000000000000 * 10^18)
            if (2 * 10^18 * round_m[stor0].field_256) + (round_m[stor0].field_256 * round_m[stor0].field_256) + 1000000000000000000 * 10^18 / round_m[stor0].field_256 + 10^18 != round_m[stor0].field_256 + 10^18:
                revert with 0, 'SafeMath mul failed'
            if (156250000 * 10^18 * round_m[stor0].field_256) + (78125000 * round_m[stor0].field_256 * round_m[stor0].field_256) + 78125000000000000000000000 * 10^18 / 78125000 != (2 * 10^18 * round_m[stor0].field_256) + (round_m[stor0].field_256 * round_m[stor0].field_256) + 1000000000000000000 * 10^18:
                revert with 0, 'SafeMath mul failed'
            if (149999843750000 * 10^18 * round_m[stor0].field_256) + 0x66a2519f4ce084becaa29127238e58970000000000 / 2 < 0:
                revert with 0, 'SafeMath add failed'
            if 0 > ((149999843750000 * 10^18 * round_m[stor0].field_256) + 0x66a2519f4ce084becaa29127238e58970000000000 / 2) + (156250000 * 10^18 * round_m[stor0].field_256) + (78125000 * round_m[stor0].field_256 * round_m[stor0].field_256) + 78125000000000000000000000 * 10^18 / 1000000000000000000 * 10^18:
                revert with 0, 'SafeMath sub failed'
            return (((149999843750000 * 10^18 * round_m[stor0].field_256) + 0x66a2519f4ce084becaa29127238e58970000000000 / 2) + (156250000 * 10^18 * round_m[stor0].field_256) + (78125000 * round_m[stor0].field_256 * round_m[stor0].field_256) + 78125000000000000000000000 * 10^18 / 1000000000000000000 * 10^18)
        if round_m[stor0].field_256 * round_m[stor0].field_256 / round_m[stor0].field_256 != round_m[stor0].field_256:
            revert with 0, 'SafeMath mul failed'
        if 78125000 * round_m[stor0].field_256 * round_m[stor0].field_256 / 78125000 != round_m[stor0].field_256 * round_m[stor0].field_256:
            revert with 0, 'SafeMath mul failed'
        if 78125000 * round_m[stor0].field_256 * round_m[stor0].field_256 < 78125000 * round_m[stor0].field_256 * round_m[stor0].field_256:
            revert with 0, 'SafeMath add failed'
        if not round_m[stor0].field_256 + 10^18:
            if not round_m[stor0].field_256 + 10^18:
                if 78125000 * round_m[stor0].field_256 * round_m[stor0].field_256 / 1000000000000000000 * 10^18 > 0:
                    revert with 0, 'SafeMath sub failed'
                return -(78125000 * round_m[stor0].field_256 * round_m[stor0].field_256 / 1000000000000000000 * 10^18)
            if (2 * 10^18 * round_m[stor0].field_256) + (round_m[stor0].field_256 * round_m[stor0].field_256) + 1000000000000000000 * 10^18 / round_m[stor0].field_256 + 10^18 != round_m[stor0].field_256 + 10^18:
                revert with 0, 'SafeMath mul failed'
            if (156250000 * 10^18 * round_m[stor0].field_256) + (78125000 * round_m[stor0].field_256 * round_m[stor0].field_256) + 78125000000000000000000000 * 10^18 / 78125000 != (2 * 10^18 * round_m[stor0].field_256) + (round_m[stor0].field_256 * round_m[stor0].field_256) + 1000000000000000000 * 10^18:
                revert with 0, 'SafeMath mul failed'
            if 78125000 * round_m[stor0].field_256 * round_m[stor0].field_256 / 1000000000000000000 * 10^18 > (156250000 * 10^18 * round_m[stor0].field_256) + (78125000 * round_m[stor0].field_256 * round_m[stor0].field_256) + 78125000000000000000000000 * 10^18 / 1000000000000000000 * 10^18:
                revert with 0, 'SafeMath sub failed'
            return (((156250000 * 10^18 * round_m[stor0].field_256) + (78125000 * round_m[stor0].field_256 * round_m[stor0].field_256) + 78125000000000000000000000 * 10^18 / 1000000000000000000 * 10^18) - (78125000 * round_m[stor0].field_256 * round_m[stor0].field_256 / 1000000000000000000 * 10^18))
        if (10^18 * round_m[stor0].field_256) + 1000000000000000000 * 10^18 / round_m[stor0].field_256 + 10^18 != 10^18:
            revert with 0, 'SafeMath mul failed'
        if (149999843750000 * 10^18 * round_m[stor0].field_256) + 0x66a2519f4ce084becaa29127238e58970000000000 / 149999843750000 != (10^18 * round_m[stor0].field_256) + 1000000000000000000 * 10^18:
            revert with 0, 'SafeMath mul failed'
        if not round_m[stor0].field_256 + 10^18:
            if (149999843750000 * 10^18 * round_m[stor0].field_256) + 0x66a2519f4ce084becaa29127238e58970000000000 / 2 < 0:
                revert with 0, 'SafeMath add failed'
            if 78125000 * round_m[stor0].field_256 * round_m[stor0].field_256 / 1000000000000000000 * 10^18 > (149999843750000 * 10^18 * round_m[stor0].field_256) + 0x66a2519f4ce084becaa29127238e58970000000000 / 2 / 1000000000000000000 * 10^18:
                revert with 0, 'SafeMath sub failed'
            return (((149999843750000 * 10^18 * round_m[stor0].field_256) + 0x66a2519f4ce084becaa29127238e58970000000000 / 2 / 1000000000000000000 * 10^18) - (78125000 * round_m[stor0].field_256 * round_m[stor0].field_256 / 1000000000000000000 * 10^18))
        if (2 * 10^18 * round_m[stor0].field_256) + (round_m[stor0].field_256 * round_m[stor0].field_256) + 1000000000000000000 * 10^18 / round_m[stor0].field_256 + 10^18 != round_m[stor0].field_256 + 10^18:
            revert with 0, 'SafeMath mul failed'
        if (156250000 * 10^18 * round_m[stor0].field_256) + (78125000 * round_m[stor0].field_256 * round_m[stor0].field_256) + 78125000000000000000000000 * 10^18 / 78125000 != (2 * 10^18 * round_m[stor0].field_256) + (round_m[stor0].field_256 * round_m[stor0].field_256) + 1000000000000000000 * 10^18:
            revert with 0, 'SafeMath mul failed'
        if (149999843750000 * 10^18 * round_m[stor0].field_256) + 0x66a2519f4ce084becaa29127238e58970000000000 / 2 < 0:
            revert with 0, 'SafeMath add failed'
        if 78125000 * round_m[stor0].field_256 * round_m[stor0].field_256 / 1000000000000000000 * 10^18 > ((149999843750000 * 10^18 * round_m[stor0].field_256) + 0x66a2519f4ce084becaa29127238e58970000000000 / 2) + (156250000 * 10^18 * round_m[stor0].field_256) + (78125000 * round_m[stor0].field_256 * round_m[stor0].field_256) + 78125000000000000000000000 * 10^18 / 1000000000000000000 * 10^18:
            revert with 0, 'SafeMath sub failed'
        return ((((149999843750000 * 10^18 * round_m[stor0].field_256) + 0x66a2519f4ce084becaa29127238e58970000000000 / 2) + (156250000 * 10^18 * round_m[stor0].field_256) + (78125000 * round_m[stor0].field_256 * round_m[stor0].field_256) + 78125000000000000000000000 * 10^18 / 1000000000000000000 * 10^18) - (78125000 * round_m[stor0].field_256 * round_m[stor0].field_256 / 1000000000000000000 * 10^18))
    if 10^18 * round_m[stor0].field_256 / round_m[stor0].field_256 != 10^18:
        revert with 0, 'SafeMath mul failed'
    if 149999843750000 * 10^18 * round_m[stor0].field_256 / 149999843750000 != 10^18 * round_m[stor0].field_256:
        revert with 0, 'SafeMath mul failed'
    if not round_m[stor0].field_256:
        if 149999843750000 * 10^18 * round_m[stor0].field_256 / 2 < 0:
            revert with 0, 'SafeMath add failed'
        if not round_m[stor0].field_256 + 10^18:
            if not round_m[stor0].field_256 + 10^18:
                if 149999843750000 * 10^18 * round_m[stor0].field_256 / 2 / 1000000000000000000 * 10^18 > 0:
                    revert with 0, 'SafeMath sub failed'
                return -(149999843750000 * 10^18 * round_m[stor0].field_256 / 2 / 1000000000000000000 * 10^18)
            if (2 * 10^18 * round_m[stor0].field_256) + (round_m[stor0].field_256 * round_m[stor0].field_256) + 1000000000000000000 * 10^18 / round_m[stor0].field_256 + 10^18 != round_m[stor0].field_256 + 10^18:
                revert with 0, 'SafeMath mul failed'
            if (156250000 * 10^18 * round_m[stor0].field_256) + (78125000 * round_m[stor0].field_256 * round_m[stor0].field_256) + 78125000000000000000000000 * 10^18 / 78125000 != (2 * 10^18 * round_m[stor0].field_256) + (round_m[stor0].field_256 * round_m[stor0].field_256) + 1000000000000000000 * 10^18:
                revert with 0, 'SafeMath mul failed'
            if 149999843750000 * 10^18 * round_m[stor0].field_256 / 2 / 1000000000000000000 * 10^18 > (156250000 * 10^18 * round_m[stor0].field_256) + (78125000 * round_m[stor0].field_256 * round_m[stor0].field_256) + 78125000000000000000000000 * 10^18 / 1000000000000000000 * 10^18:
                revert with 0, 'SafeMath sub failed'
            return (((156250000 * 10^18 * round_m[stor0].field_256) + (78125000 * round_m[stor0].field_256 * round_m[stor0].field_256) + 78125000000000000000000000 * 10^18 / 1000000000000000000 * 10^18) - (149999843750000 * 10^18 * round_m[stor0].field_256 / 2 / 1000000000000000000 * 10^18))
        if (10^18 * round_m[stor0].field_256) + 1000000000000000000 * 10^18 / round_m[stor0].field_256 + 10^18 != 10^18:
            revert with 0, 'SafeMath mul failed'
        if (149999843750000 * 10^18 * round_m[stor0].field_256) + 0x66a2519f4ce084becaa29127238e58970000000000 / 149999843750000 != (10^18 * round_m[stor0].field_256) + 1000000000000000000 * 10^18:
            revert with 0, 'SafeMath mul failed'
        if not round_m[stor0].field_256 + 10^18:
            if (149999843750000 * 10^18 * round_m[stor0].field_256) + 0x66a2519f4ce084becaa29127238e58970000000000 / 2 < 0:
                revert with 0, 'SafeMath add failed'
            if 149999843750000 * 10^18 * round_m[stor0].field_256 / 2 / 1000000000000000000 * 10^18 > (149999843750000 * 10^18 * round_m[stor0].field_256) + 0x66a2519f4ce084becaa29127238e58970000000000 / 2 / 1000000000000000000 * 10^18:
                revert with 0, 'SafeMath sub failed'
            return (((149999843750000 * 10^18 * round_m[stor0].field_256) + 0x66a2519f4ce084becaa29127238e58970000000000 / 2 / 1000000000000000000 * 10^18) - (149999843750000 * 10^18 * round_m[stor0].field_256 / 2 / 1000000000000000000 * 10^18))
        if (2 * 10^18 * round_m[stor0].field_256) + (round_m[stor0].field_256 * round_m[stor0].field_256) + 1000000000000000000 * 10^18 / round_m[stor0].field_256 + 10^18 != round_m[stor0].field_256 + 10^18:
            revert with 0, 'SafeMath mul failed'
        if (156250000 * 10^18 * round_m[stor0].field_256) + (78125000 * round_m[stor0].field_256 * round_m[stor0].field_256) + 78125000000000000000000000 * 10^18 / 78125000 != (2 * 10^18 * round_m[stor0].field_256) + (round_m[stor0].field_256 * round_m[stor0].field_256) + 1000000000000000000 * 10^18:
            revert with 0, 'SafeMath mul failed'
        if (149999843750000 * 10^18 * round_m[stor0].field_256) + 0x66a2519f4ce084becaa29127238e58970000000000 / 2 < 0:
            revert with 0, 'SafeMath add failed'
        if 149999843750000 * 10^18 * round_m[stor0].field_256 / 2 / 1000000000000000000 * 10^18 > ((149999843750000 * 10^18 * round_m[stor0].field_256) + 0x66a2519f4ce084becaa29127238e58970000000000 / 2) + (156250000 * 10^18 * round_m[stor0].field_256) + (78125000 * round_m[stor0].field_256 * round_m[stor0].field_256) + 78125000000000000000000000 * 10^18 / 1000000000000000000 * 10^18:
            revert with 0, 'SafeMath sub failed'
        return ((((149999843750000 * 10^18 * round_m[stor0].field_256) + 0x66a2519f4ce084becaa29127238e58970000000000 / 2) + (156250000 * 10^18 * round_m[stor0].field_256) + (78125000 * round_m[stor0].field_256 * round_m[stor0].field_256) + 78125000000000000000000000 * 10^18 / 1000000000000000000 * 10^18) - (149999843750000 * 10^18 * round_m[stor0].field_256 / 2 / 1000000000000000000 * 10^18))
    if round_m[stor0].field_256 * round_m[stor0].field_256 / round_m[stor0].field_256 != round_m[stor0].field_256:
        revert with 0, 'SafeMath mul failed'
    if 78125000 * round_m[stor0].field_256 * round_m[stor0].field_256 / 78125000 != round_m[stor0].field_256 * round_m[stor0].field_256:
        revert with 0, 'SafeMath mul failed'
    if (149999843750000 * 10^18 * round_m[stor0].field_256 / 2) + (78125000 * round_m[stor0].field_256 * round_m[stor0].field_256) < 78125000 * round_m[stor0].field_256 * round_m[stor0].field_256:
        revert with 0, 'SafeMath add failed'
    if not round_m[stor0].field_256 + 10^18:
        if not round_m[stor0].field_256 + 10^18:
            if (149999843750000 * 10^18 * round_m[stor0].field_256 / 2) + (78125000 * round_m[stor0].field_256 * round_m[stor0].field_256) / 1000000000000000000 * 10^18 > 0:
                revert with 0, 'SafeMath sub failed'
            return -((149999843750000 * 10^18 * round_m[stor0].field_256 / 2) + (78125000 * round_m[stor0].field_256 * round_m[stor0].field_256) / 1000000000000000000 * 10^18)
        if (2 * 10^18 * round_m[stor0].field_256) + (round_m[stor0].field_256 * round_m[stor0].field_256) + 1000000000000000000 * 10^18 / round_m[stor0].field_256 + 10^18 != round_m[stor0].field_256 + 10^18:
            revert with 0, 'SafeMath mul failed'
        if (156250000 * 10^18 * round_m[stor0].field_256) + (78125000 * round_m[stor0].field_256 * round_m[stor0].field_256) + 78125000000000000000000000 * 10^18 / 78125000 != (2 * 10^18 * round_m[stor0].field_256) + (round_m[stor0].field_256 * round_m[stor0].field_256) + 1000000000000000000 * 10^18:
            revert with 0, 'SafeMath mul failed'
        if (149999843750000 * 10^18 * round_m[stor0].field_256 / 2) + (78125000 * round_m[stor0].field_256 * round_m[stor0].field_256) / 1000000000000000000 * 10^18 > (156250000 * 10^18 * round_m[stor0].field_256) + (78125000 * round_m[stor0].field_256 * round_m[stor0].field_256) + 78125000000000000000000000 * 10^18 / 1000000000000000000 * 10^18:
            revert with 0, 'SafeMath sub failed'
        return (((156250000 * 10^18 * round_m[stor0].field_256) + (78125000 * round_m[stor0].field_256 * round_m[stor0].field_256) + 78125000000000000000000000 * 10^18 / 1000000000000000000 * 10^18) - ((149999843750000 * 10^18 * round_m[stor0].field_256 / 2) + (78125000 * round_m[stor0].field_256 * round_m[stor0].field_256) / 1000000000000000000 * 10^18))
    if (10^18 * round_m[stor0].field_256) + 1000000000000000000 * 10^18 / round_m[stor0].field_256 + 10^18 != 10^18:
        revert with 0, 'SafeMath mul failed'
    if (149999843750000 * 10^18 * round_m[stor0].field_256) + 0x66a2519f4ce084becaa29127238e58970000000000 / 149999843750000 != (10^18 * round_m[stor0].field_256) + 1000000000000000000 * 10^18:
        revert with 0, 'SafeMath mul failed'
    if not round_m[stor0].field_256 + 10^18:
        if (149999843750000 * 10^18 * round_m[stor0].field_256) + 0x66a2519f4ce084becaa29127238e58970000000000 / 2 < 0:
            revert with 0, 'SafeMath add failed'
        if (149999843750000 * 10^18 * round_m[stor0].field_256 / 2) + (78125000 * round_m[stor0].field_256 * round_m[stor0].field_256) / 1000000000000000000 * 10^18 > (149999843750000 * 10^18 * round_m[stor0].field_256) + 0x66a2519f4ce084becaa29127238e58970000000000 / 2 / 1000000000000000000 * 10^18:
            revert with 0, 'SafeMath sub failed'
        return (((149999843750000 * 10^18 * round_m[stor0].field_256) + 0x66a2519f4ce084becaa29127238e58970000000000 / 2 / 1000000000000000000 * 10^18) - ((149999843750000 * 10^18 * round_m[stor0].field_256 / 2) + (78125000 * round_m[stor0].field_256 * round_m[stor0].field_256) / 1000000000000000000 * 10^18))
    if (2 * 10^18 * round_m[stor0].field_256) + (round_m[stor0].field_256 * round_m[stor0].field_256) + 1000000000000000000 * 10^18 / round_m[stor0].field_256 + 10^18 != round_m[stor0].field_256 + 10^18:
        revert with 0, 'SafeMath mul failed'
    if (156250000 * 10^18 * round_m[stor0].field_256) + (78125000 * round_m[stor0].field_256 * round_m[stor0].field_256) + 78125000000000000000000000 * 10^18 / 78125000 != (2 * 10^18 * round_m[stor0].field_256) + (round_m[stor0].field_256 * round_m[stor0].field_256) + 1000000000000000000 * 10^18:
        revert with 0, 'SafeMath mul failed'
    if (149999843750000 * 10^18 * round_m[stor0].field_256) + 0x66a2519f4ce084becaa29127238e58970000000000 / 2 < 0:
        revert with 0, 'SafeMath add failed'
    if (149999843750000 * 10^18 * round_m[stor0].field_256 / 2) + (78125000 * round_m[stor0].field_256 * round_m[stor0].field_256) / 1000000000000000000 * 10^18 > ((149999843750000 * 10^18 * round_m[stor0].field_256) + 0x66a2519f4ce084becaa29127238e58970000000000 / 2) + (156250000 * 10^18 * round_m[stor0].field_256) + (78125000 * round_m[stor0].field_256 * round_m[stor0].field_256) + 78125000000000000000000000 * 10^18 / 1000000000000000000 * 10^18:
        revert with 0, 'SafeMath sub failed'
    return ((((149999843750000 * 10^18 * round_m[stor0].field_256) + 0x66a2519f4ce084becaa29127238e58970000000000 / 2) + (156250000 * 10^18 * round_m[stor0].field_256) + (78125000 * round_m[stor0].field_256 * round_m[stor0].field_256) + 78125000000000000000000000 * 10^18 / 1000000000000000000 * 10^18) - ((149999843750000 * 10^18 * round_m[stor0].field_256 / 2) + (78125000 * round_m[stor0].field_256 * round_m[stor0].field_256) / 1000000000000000000 * 10^18))
}

function getCurrentRoundInfo() {
    if block.timestamp > round_m[stor0].field_768:
        return rndNo, 
               round_m[stor0].field_0,
               round_m[stor0].field_256,
               round_m[stor0].field_512,
               round_m[stor0].field_768,
               round_m[stor0].field_1024,
               round_m[stor0].field_1280,
               75 * 10^12
    if 10000000 * 10^18 <= round_m[stor0].field_256:
        return rndNo, 
               round_m[stor0].field_0,
               round_m[stor0].field_256,
               round_m[stor0].field_512,
               round_m[stor0].field_768,
               round_m[stor0].field_1024,
               round_m[stor0].field_1280,
               0
    if round_m[stor0].field_256 + 10^18 < round_m[stor0].field_256:
        revert with 0, 'SafeMath add failed'
    if 10^18 > round_m[stor0].field_256 + 10^18:
        revert with 0, 'SafeMath sub failed'
    if not round_m[stor0].field_256:
        if not round_m[stor0].field_256:
            if not round_m[stor0].field_256 + 10^18:
                if not round_m[stor0].field_256 + 10^18:
                    return rndNo, 
                           round_m[stor0].field_0,
                           round_m[stor0].field_256,
                           round_m[stor0].field_512,
                           round_m[stor0].field_768,
                           round_m[stor0].field_1024,
                           round_m[stor0].field_1280,
                           0
                if (2 * 10^18 * round_m[stor0].field_256) + (round_m[stor0].field_256 * round_m[stor0].field_256) + 1000000000000000000 * 10^18 / round_m[stor0].field_256 + 10^18 != round_m[stor0].field_256 + 10^18:
                    revert with 0, 'SafeMath mul failed'
                if (156250000 * 10^18 * round_m[stor0].field_256) + (78125000 * round_m[stor0].field_256 * round_m[stor0].field_256) + 78125000000000000000000000 * 10^18 / 78125000 != (2 * 10^18 * round_m[stor0].field_256) + (round_m[stor0].field_256 * round_m[stor0].field_256) + 1000000000000000000 * 10^18:
                    revert with 0, 'SafeMath mul failed'
                if 0 > (156250000 * 10^18 * round_m[stor0].field_256) + (78125000 * round_m[stor0].field_256 * round_m[stor0].field_256) + 78125000000000000000000000 * 10^18 / 1000000000000000000 * 10^18:
                    revert with 0, 'SafeMath sub failed'
                return rndNo, 
                       round_m[stor0].field_0,
                       round_m[stor0].field_256,
                       round_m[stor0].field_512,
                       round_m[stor0].field_768,
                       round_m[stor0].field_1024,
                       round_m[stor0].field_1280,
                       (156250000 * 10^18 * round_m[stor0].field_256) + (78125000 * round_m[stor0].field_256 * round_m[stor0].field_256) + 78125000000000000000000000 * 10^18 / 1000000000000000000 * 10^18
            if (10^18 * round_m[stor0].field_256) + 1000000000000000000 * 10^18 / round_m[stor0].field_256 + 10^18 != 10^18:
                revert with 0, 'SafeMath mul failed'
            if (149999843750000 * 10^18 * round_m[stor0].field_256) + 0x66a2519f4ce084becaa29127238e58970000000000 / 149999843750000 != (10^18 * round_m[stor0].field_256) + 1000000000000000000 * 10^18:
                revert with 0, 'SafeMath mul failed'
            if not round_m[stor0].field_256 + 10^18:
                if (149999843750000 * 10^18 * round_m[stor0].field_256) + 0x66a2519f4ce084becaa29127238e58970000000000 / 2 < 0:
                    revert with 0, 'SafeMath add failed'
                if 0 > (149999843750000 * 10^18 * round_m[stor0].field_256) + 0x66a2519f4ce084becaa29127238e58970000000000 / 2 / 1000000000000000000 * 10^18:
                    revert with 0, 'SafeMath sub failed'
                return rndNo, 
                       round_m[stor0].field_0,
                       round_m[stor0].field_256,
                       round_m[stor0].field_512,
                       round_m[stor0].field_768,
                       round_m[stor0].field_1024,
                       round_m[stor0].field_1280,
                       (149999843750000 * 10^18 * round_m[stor0].field_256) + 0x66a2519f4ce084becaa29127238e58970000000000 / 2 / 1000000000000000000 * 10^18
            if (2 * 10^18 * round_m[stor0].field_256) + (round_m[stor0].field_256 * round_m[stor0].field_256) + 1000000000000000000 * 10^18 / round_m[stor0].field_256 + 10^18 != round_m[stor0].field_256 + 10^18:
                revert with 0, 'SafeMath mul failed'
            if (156250000 * 10^18 * round_m[stor0].field_256) + (78125000 * round_m[stor0].field_256 * round_m[stor0].field_256) + 78125000000000000000000000 * 10^18 / 78125000 != (2 * 10^18 * round_m[stor0].field_256) + (round_m[stor0].field_256 * round_m[stor0].field_256) + 1000000000000000000 * 10^18:
                revert with 0, 'SafeMath mul failed'
            if (149999843750000 * 10^18 * round_m[stor0].field_256) + 0x66a2519f4ce084becaa29127238e58970000000000 / 2 < 0:
                revert with 0, 'SafeMath add failed'
            if 0 > ((149999843750000 * 10^18 * round_m[stor0].field_256) + 0x66a2519f4ce084becaa29127238e58970000000000 / 2) + (156250000 * 10^18 * round_m[stor0].field_256) + (78125000 * round_m[stor0].field_256 * round_m[stor0].field_256) + 78125000000000000000000000 * 10^18 / 1000000000000000000 * 10^18:
                revert with 0, 'SafeMath sub failed'
            return rndNo, 
                   round_m[stor0].field_0,
                   round_m[stor0].field_256,
                   round_m[stor0].field_512,
                   round_m[stor0].field_768,
                   round_m[stor0].field_1024,
                   round_m[stor0].field_1280,
                   ((149999843750000 * 10^18 * round_m[stor0].field_256) + 0x66a2519f4ce084becaa29127238e58970000000000 / 2) + (156250000 * 10^18 * round_m[stor0].field_256) + (78125000 * round_m[stor0].field_256 * round_m[stor0].field_256) + 78125000000000000000000000 * 10^18 / 1000000000000000000 * 10^18
        if round_m[stor0].field_256 * round_m[stor0].field_256 / round_m[stor0].field_256 != round_m[stor0].field_256:
            revert with 0, 'SafeMath mul failed'
        if 78125000 * round_m[stor0].field_256 * round_m[stor0].field_256 / 78125000 != round_m[stor0].field_256 * round_m[stor0].field_256:
            revert with 0, 'SafeMath mul failed'
        if 78125000 * round_m[stor0].field_256 * round_m[stor0].field_256 < 78125000 * round_m[stor0].field_256 * round_m[stor0].field_256:
            revert with 0, 'SafeMath add failed'
        if not round_m[stor0].field_256 + 10^18:
            if not round_m[stor0].field_256 + 10^18:
                if 78125000 * round_m[stor0].field_256 * round_m[stor0].field_256 / 1000000000000000000 * 10^18 > 0:
                    revert with 0, 'SafeMath sub failed'
                return rndNo, 
                       round_m[stor0].field_0,
                       round_m[stor0].field_256,
                       round_m[stor0].field_512,
                       round_m[stor0].field_768,
                       round_m[stor0].field_1024,
                       round_m[stor0].field_1280,
                       -78125000 * round_m[stor0].field_256 * round_m[stor0].field_256 / 1000000000000000000 * 10^18
            if (2 * 10^18 * round_m[stor0].field_256) + (round_m[stor0].field_256 * round_m[stor0].field_256) + 1000000000000000000 * 10^18 / round_m[stor0].field_256 + 10^18 != round_m[stor0].field_256 + 10^18:
                revert with 0, 'SafeMath mul failed'
            if (156250000 * 10^18 * round_m[stor0].field_256) + (78125000 * round_m[stor0].field_256 * round_m[stor0].field_256) + 78125000000000000000000000 * 10^18 / 78125000 != (2 * 10^18 * round_m[stor0].field_256) + (round_m[stor0].field_256 * round_m[stor0].field_256) + 1000000000000000000 * 10^18:
                revert with 0, 'SafeMath mul failed'
            if 78125000 * round_m[stor0].field_256 * round_m[stor0].field_256 / 1000000000000000000 * 10^18 > (156250000 * 10^18 * round_m[stor0].field_256) + (78125000 * round_m[stor0].field_256 * round_m[stor0].field_256) + 78125000000000000000000000 * 10^18 / 1000000000000000000 * 10^18:
                revert with 0, 'SafeMath sub failed'
            return rndNo, 
                   round_m[stor0].field_0,
                   round_m[stor0].field_256,
                   round_m[stor0].field_512,
                   round_m[stor0].field_768,
                   round_m[stor0].field_1024,
                   round_m[stor0].field_1280,
                   ((156250000 * 10^18 * round_m[stor0].field_256) + (78125000 * round_m[stor0].field_256 * round_m[stor0].field_256) + 78125000000000000000000000 * 10^18 / 1000000000000000000 * 10^18) - (78125000 * round_m[stor0].field_256 * round_m[stor0].field_256 / 1000000000000000000 * 10^18)
        if (10^18 * round_m[stor0].field_256) + 1000000000000000000 * 10^18 / round_m[stor0].field_256 + 10^18 != 10^18:
            revert with 0, 'SafeMath mul failed'
        if (149999843750000 * 10^18 * round_m[stor0].field_256) + 0x66a2519f4ce084becaa29127238e58970000000000 / 149999843750000 != (10^18 * round_m[stor0].field_256) + 1000000000000000000 * 10^18:
            revert with 0, 'SafeMath mul failed'
        if not round_m[stor0].field_256 + 10^18:
            if (149999843750000 * 10^18 * round_m[stor0].field_256) + 0x66a2519f4ce084becaa29127238e58970000000000 / 2 < 0:
                revert with 0, 'SafeMath add failed'
            if 78125000 * round_m[stor0].field_256 * round_m[stor0].field_256 / 1000000000000000000 * 10^18 > (149999843750000 * 10^18 * round_m[stor0].field_256) + 0x66a2519f4ce084becaa29127238e58970000000000 / 2 / 1000000000000000000 * 10^18:
                revert with 0, 'SafeMath sub failed'
            return rndNo, 
                   round_m[stor0].field_0,
                   round_m[stor0].field_256,
                   round_m[stor0].field_512,
                   round_m[stor0].field_768,
                   round_m[stor0].field_1024,
                   round_m[stor0].field_1280,
                   ((149999843750000 * 10^18 * round_m[stor0].field_256) + 0x66a2519f4ce084becaa29127238e58970000000000 / 2 / 1000000000000000000 * 10^18) - (78125000 * round_m[stor0].field_256 * round_m[stor0].field_256 / 1000000000000000000 * 10^18)
        if (2 * 10^18 * round_m[stor0].field_256) + (round_m[stor0].field_256 * round_m[stor0].field_256) + 1000000000000000000 * 10^18 / round_m[stor0].field_256 + 10^18 != round_m[stor0].field_256 + 10^18:
            revert with 0, 'SafeMath mul failed'
        if (156250000 * 10^18 * round_m[stor0].field_256) + (78125000 * round_m[stor0].field_256 * round_m[stor0].field_256) + 78125000000000000000000000 * 10^18 / 78125000 != (2 * 10^18 * round_m[stor0].field_256) + (round_m[stor0].field_256 * round_m[stor0].field_256) + 1000000000000000000 * 10^18:
            revert with 0, 'SafeMath mul failed'
        if (149999843750000 * 10^18 * round_m[stor0].field_256) + 0x66a2519f4ce084becaa29127238e58970000000000 / 2 < 0:
            revert with 0, 'SafeMath add failed'
        if 78125000 * round_m[stor0].field_256 * round_m[stor0].field_256 / 1000000000000000000 * 10^18 > ((149999843750000 * 10^18 * round_m[stor0].field_256) + 0x66a2519f4ce084becaa29127238e58970000000000 / 2) + (156250000 * 10^18 * round_m[stor0].field_256) + (78125000 * round_m[stor0].field_256 * round_m[stor0].field_256) + 78125000000000000000000000 * 10^18 / 1000000000000000000 * 10^18:
            revert with 0, 'SafeMath sub failed'
        return rndNo, 
               round_m[stor0].field_0,
               round_m[stor0].field_256,
               round_m[stor0].field_512,
               round_m[stor0].field_768,
               round_m[stor0].field_1024,
               round_m[stor0].field_1280,
               (((149999843750000 * 10^18 * round_m[stor0].field_256) + 0x66a2519f4ce084becaa29127238e58970000000000 / 2) + (156250000 * 10^18 * round_m[stor0].field_256) + (78125000 * round_m[stor0].field_256 * round_m[stor0].field_256) + 78125000000000000000000000 * 10^18 / 1000000000000000000 * 10^18) - (78125000 * round_m[stor0].field_256 * round_m[stor0].field_256 / 1000000000000000000 * 10^18)
    if 10^18 * round_m[stor0].field_256 / round_m[stor0].field_256 != 10^18:
        revert with 0, 'SafeMath mul failed'
    if 149999843750000 * 10^18 * round_m[stor0].field_256 / 149999843750000 != 10^18 * round_m[stor0].field_256:
        revert with 0, 'SafeMath mul failed'
    if not round_m[stor0].field_256:
        if 149999843750000 * 10^18 * round_m[stor0].field_256 / 2 < 0:
            revert with 0, 'SafeMath add failed'
        if not round_m[stor0].field_256 + 10^18:
            if not round_m[stor0].field_256 + 10^18:
                if 149999843750000 * 10^18 * round_m[stor0].field_256 / 2 / 1000000000000000000 * 10^18 > 0:
                    revert with 0, 'SafeMath sub failed'
                return rndNo, 
                       round_m[stor0].field_0,
                       round_m[stor0].field_256,
                       round_m[stor0].field_512,
                       round_m[stor0].field_768,
                       round_m[stor0].field_1024,
                       round_m[stor0].field_1280,
                       -149999843750000 * 10^18 * round_m[stor0].field_256 / 2 / 1000000000000000000 * 10^18
            if (2 * 10^18 * round_m[stor0].field_256) + (round_m[stor0].field_256 * round_m[stor0].field_256) + 1000000000000000000 * 10^18 / round_m[stor0].field_256 + 10^18 != round_m[stor0].field_256 + 10^18:
                revert with 0, 'SafeMath mul failed'
            if (156250000 * 10^18 * round_m[stor0].field_256) + (78125000 * round_m[stor0].field_256 * round_m[stor0].field_256) + 78125000000000000000000000 * 10^18 / 78125000 != (2 * 10^18 * round_m[stor0].field_256) + (round_m[stor0].field_256 * round_m[stor0].field_256) + 1000000000000000000 * 10^18:
                revert with 0, 'SafeMath mul failed'
            if 149999843750000 * 10^18 * round_m[stor0].field_256 / 2 / 1000000000000000000 * 10^18 > (156250000 * 10^18 * round_m[stor0].field_256) + (78125000 * round_m[stor0].field_256 * round_m[stor0].field_256) + 78125000000000000000000000 * 10^18 / 1000000000000000000 * 10^18:
                revert with 0, 'SafeMath sub failed'
            return rndNo, 
                   round_m[stor0].field_0,
                   round_m[stor0].field_256,
                   round_m[stor0].field_512,
                   round_m[stor0].field_768,
                   round_m[stor0].field_1024,
                   round_m[stor0].field_1280,
                   ((156250000 * 10^18 * round_m[stor0].field_256) + (78125000 * round_m[stor0].field_256 * round_m[stor0].field_256) + 78125000000000000000000000 * 10^18 / 1000000000000000000 * 10^18) - (149999843750000 * 10^18 * round_m[stor0].field_256 / 2 / 1000000000000000000 * 10^18)
        if (10^18 * round_m[stor0].field_256) + 1000000000000000000 * 10^18 / round_m[stor0].field_256 + 10^18 != 10^18:
            revert with 0, 'SafeMath mul failed'
        if (149999843750000 * 10^18 * round_m[stor0].field_256) + 0x66a2519f4ce084becaa29127238e58970000000000 / 149999843750000 != (10^18 * round_m[stor0].field_256) + 1000000000000000000 * 10^18:
            revert with 0, 'SafeMath mul failed'
        if not round_m[stor0].field_256 + 10^18:
            if (149999843750000 * 10^18 * round_m[stor0].field_256) + 0x66a2519f4ce084becaa29127238e58970000000000 / 2 < 0:
                revert with 0, 'SafeMath add failed'
            if 149999843750000 * 10^18 * round_m[stor0].field_256 / 2 / 1000000000000000000 * 10^18 > (149999843750000 * 10^18 * round_m[stor0].field_256) + 0x66a2519f4ce084becaa29127238e58970000000000 / 2 / 1000000000000000000 * 10^18:
                revert with 0, 'SafeMath sub failed'
            return rndNo, 
                   round_m[stor0].field_0,
                   round_m[stor0].field_256,
                   round_m[stor0].field_512,
                   round_m[stor0].field_768,
                   round_m[stor0].field_1024,
                   round_m[stor0].field_1280,
                   ((149999843750000 * 10^18 * round_m[stor0].field_256) + 0x66a2519f4ce084becaa29127238e58970000000000 / 2 / 1000000000000000000 * 10^18) - (149999843750000 * 10^18 * round_m[stor0].field_256 / 2 / 1000000000000000000 * 10^18)
        if (2 * 10^18 * round_m[stor0].field_256) + (round_m[stor0].field_256 * round_m[stor0].field_256) + 1000000000000000000 * 10^18 / round_m[stor0].field_256 + 10^18 != round_m[stor0].field_256 + 10^18:
            revert with 0, 'SafeMath mul failed'
        if (156250000 * 10^18 * round_m[stor0].field_256) + (78125000 * round_m[stor0].field_256 * round_m[stor0].field_256) + 78125000000000000000000000 * 10^18 / 78125000 != (2 * 10^18 * round_m[stor0].field_256) + (round_m[stor0].field_256 * round_m[stor0].field_256) + 1000000000000000000 * 10^18:
            revert with 0, 'SafeMath mul failed'
        if (149999843750000 * 10^18 * round_m[stor0].field_256) + 0x66a2519f4ce084becaa29127238e58970000000000 / 2 < 0:
            revert with 0, 'SafeMath add failed'
        if 149999843750000 * 10^18 * round_m[stor0].field_256 / 2 / 1000000000000000000 * 10^18 > ((149999843750000 * 10^18 * round_m[stor0].field_256) + 0x66a2519f4ce084becaa29127238e58970000000000 / 2) + (156250000 * 10^18 * round_m[stor0].field_256) + (78125000 * round_m[stor0].field_256 * round_m[stor0].field_256) + 78125000000000000000000000 * 10^18 / 1000000000000000000 * 10^18:
            revert with 0, 'SafeMath sub failed'
        return rndNo, 
               round_m[stor0].field_0,
               round_m[stor0].field_256,
               round_m[stor0].field_512,
               round_m[stor0].field_768,
               round_m[stor0].field_1024,
               round_m[stor0].field_1280,
               (((149999843750000 * 10^18 * round_m[stor0].field_256) + 0x66a2519f4ce084becaa29127238e58970000000000 / 2) + (156250000 * 10^18 * round_m[stor0].field_256) + (78125000 * round_m[stor0].field_256 * round_m[stor0].field_256) + 78125000000000000000000000 * 10^18 / 1000000000000000000 * 10^18) - (149999843750000 * 10^18 * round_m[stor0].field_256 / 2 / 1000000000000000000 * 10^18)
    if round_m[stor0].field_256 * round_m[stor0].field_256 / round_m[stor0].field_256 != round_m[stor0].field_256:
        revert with 0, 'SafeMath mul failed'
    if 78125000 * round_m[stor0].field_256 * round_m[stor0].field_256 / 78125000 != round_m[stor0].field_256 * round_m[stor0].field_256:
        revert with 0, 'SafeMath mul failed'
    if (149999843750000 * 10^18 * round_m[stor0].field_256 / 2) + (78125000 * round_m[stor0].field_256 * round_m[stor0].field_256) < 78125000 * round_m[stor0].field_256 * round_m[stor0].field_256:
        revert with 0, 'SafeMath add failed'
    if not round_m[stor0].field_256 + 10^18:
        if not round_m[stor0].field_256 + 10^18:
            if (149999843750000 * 10^18 * round_m[stor0].field_256 / 2) + (78125000 * round_m[stor0].field_256 * round_m[stor0].field_256) / 1000000000000000000 * 10^18 > 0:
                revert with 0, 'SafeMath sub failed'
            return rndNo, 
                   round_m[stor0].field_0,
                   round_m[stor0].field_256,
                   round_m[stor0].field_512,
                   round_m[stor0].field_768,
                   round_m[stor0].field_1024,
                   round_m[stor0].field_1280,
                   -(149999843750000 * 10^18 * round_m[stor0].field_256 / 2) + (78125000 * round_m[stor0].field_256 * round_m[stor0].field_256) / 1000000000000000000 * 10^18
        if (2 * 10^18 * round_m[stor0].field_256) + (round_m[stor0].field_256 * round_m[stor0].field_256) + 1000000000000000000 * 10^18 / round_m[stor0].field_256 + 10^18 != round_m[stor0].field_256 + 10^18:
            revert with 0, 'SafeMath mul failed'
        if (156250000 * 10^18 * round_m[stor0].field_256) + (78125000 * round_m[stor0].field_256 * round_m[stor0].field_256) + 78125000000000000000000000 * 10^18 / 78125000 != (2 * 10^18 * round_m[stor0].field_256) + (round_m[stor0].field_256 * round_m[stor0].field_256) + 1000000000000000000 * 10^18:
            revert with 0, 'SafeMath mul failed'
        if (149999843750000 * 10^18 * round_m[stor0].field_256 / 2) + (78125000 * round_m[stor0].field_256 * round_m[stor0].field_256) / 1000000000000000000 * 10^18 > (156250000 * 10^18 * round_m[stor0].field_256) + (78125000 * round_m[stor0].field_256 * round_m[stor0].field_256) + 78125000000000000000000000 * 10^18 / 1000000000000000000 * 10^18:
            revert with 0, 'SafeMath sub failed'
        return rndNo, 
               round_m[stor0].field_0,
               round_m[stor0].field_256,
               round_m[stor0].field_512,
               round_m[stor0].field_768,
               round_m[stor0].field_1024,
               round_m[stor0].field_1280,
               ((156250000 * 10^18 * round_m[stor0].field_256) + (78125000 * round_m[stor0].field_256 * round_m[stor0].field_256) + 78125000000000000000000000 * 10^18 / 1000000000000000000 * 10^18) - ((149999843750000 * 10^18 * round_m[stor0].field_256 / 2) + (78125000 * round_m[stor0].field_256 * round_m[stor0].field_256) / 1000000000000000000 * 10^18)
    if (10^18 * round_m[stor0].field_256) + 1000000000000000000 * 10^18 / round_m[stor0].field_256 + 10^18 != 10^18:
        revert with 0, 'SafeMath mul failed'
    if (149999843750000 * 10^18 * round_m[stor0].field_256) + 0x66a2519f4ce084becaa29127238e58970000000000 / 149999843750000 != (10^18 * round_m[stor0].field_256) + 1000000000000000000 * 10^18:
        revert with 0, 'SafeMath mul failed'
    if not round_m[stor0].field_256 + 10^18:
        if (149999843750000 * 10^18 * round_m[stor0].field_256) + 0x66a2519f4ce084becaa29127238e58970000000000 / 2 < 0:
            revert with 0, 'SafeMath add failed'
        if (149999843750000 * 10^18 * round_m[stor0].field_256 / 2) + (78125000 * round_m[stor0].field_256 * round_m[stor0].field_256) / 1000000000000000000 * 10^18 > (149999843750000 * 10^18 * round_m[stor0].field_256) + 0x66a2519f4ce084becaa29127238e58970000000000 / 2 / 1000000000000000000 * 10^18:
            revert with 0, 'SafeMath sub failed'
        return rndNo, 
               round_m[stor0].field_0,
               round_m[stor0].field_256,
               round_m[stor0].field_512,
               round_m[stor0].field_768,
               round_m[stor0].field_1024,
               round_m[stor0].field_1280,
               ((149999843750000 * 10^18 * round_m[stor0].field_256) + 0x66a2519f4ce084becaa29127238e58970000000000 / 2 / 1000000000000000000 * 10^18) - ((149999843750000 * 10^18 * round_m[stor0].field_256 / 2) + (78125000 * round_m[stor0].field_256 * round_m[stor0].field_256) / 1000000000000000000 * 10^18)
    if (2 * 10^18 * round_m[stor0].field_256) + (round_m[stor0].field_256 * round_m[stor0].field_256) + 1000000000000000000 * 10^18 / round_m[stor0].field_256 + 10^18 != round_m[stor0].field_256 + 10^18:
        revert with 0, 'SafeMath mul failed'
    if (156250000 * 10^18 * round_m[stor0].field_256) + (78125000 * round_m[stor0].field_256 * round_m[stor0].field_256) + 78125000000000000000000000 * 10^18 / 78125000 != (2 * 10^18 * round_m[stor0].field_256) + (round_m[stor0].field_256 * round_m[stor0].field_256) + 1000000000000000000 * 10^18:
        revert with 0, 'SafeMath mul failed'
    if (149999843750000 * 10^18 * round_m[stor0].field_256) + 0x66a2519f4ce084becaa29127238e58970000000000 / 2 < 0:
        revert with 0, 'SafeMath add failed'
    if (149999843750000 * 10^18 * round_m[stor0].field_256 / 2) + (78125000 * round_m[stor0].field_256 * round_m[stor0].field_256) / 1000000000000000000 * 10^18 > ((149999843750000 * 10^18 * round_m[stor0].field_256) + 0x66a2519f4ce084becaa29127238e58970000000000 / 2) + (156250000 * 10^18 * round_m[stor0].field_256) + (78125000 * round_m[stor0].field_256 * round_m[stor0].field_256) + 78125000000000000000000000 * 10^18 / 1000000000000000000 * 10^18:
        revert with 0, 'SafeMath sub failed'
    return rndNo, 
           round_m[stor0].field_0,
           round_m[stor0].field_256,
           round_m[stor0].field_512,
           round_m[stor0].field_768,
           round_m[stor0].field_1024,
           round_m[stor0].field_1280,
           (((149999843750000 * 10^18 * round_m[stor0].field_256) + 0x66a2519f4ce084becaa29127238e58970000000000 / 2) + (156250000 * 10^18 * round_m[stor0].field_256) + (78125000 * round_m[stor0].field_256 * round_m[stor0].field_256) + 78125000000000000000000000 * 10^18 / 1000000000000000000 * 10^18) - ((149999843750000 * 10^18 * round_m[stor0].field_256 / 2) + (78125000 * round_m[stor0].field_256 * round_m[stor0].field_256) / 1000000000000000000 * 10^18)
}

function _fallback() payable {
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    if msg.value < 10^9:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'pocket lint: not a valid currency'
    if msg.value > 100000 * 10^18:
        revert with 0, 'no vitalik, no'
    if block.timestamp <= round_m[stor0].field_768:
        if 10000000 * 10^18 <= round_m[stor0].field_256:
            if round_m[stor0].field_1280 + 10 * 10^18 < 10 * 10^18:
                revert with 0, 'SafeMath add failed'
            if round_m[stor0].field_1280 + 10^17 < 10^17:
                revert with 0, 'SafeMath add failed'
            if msg.value < round_m[stor0].field_1280 + 10^17:
                revert with 0, 'Need more Ether'
            if msg.value <= round_m[stor0].field_1280 + 10 * 10^18:
                round_m[stor0].field_768 = block.timestamp + (12 * 3600)
                round_m[stor0].field_1024 = msg.sender or Mask(96, 160, round_m[stor0].field_1024)
                round_m[stor0].field_1280 = msg.value
                if playerRound_m[stor0][msg.sender].field_0 + msg.value < msg.value:
                    revert with 0, 'SafeMath add failed'
                playerRound_m[stor0][msg.sender].field_0 += msg.value
                if round_m[stor0].field_0 + msg.value < msg.value:
                    revert with 0, 'SafeMath add failed'
                round_m[stor0].field_0 += msg.value
                if totalEth + msg.value < msg.value:
                    revert with 0, 'SafeMath add failed'
                totalEth += msg.value
                emit onSecStage(msg.value, block.timestamp, msg.sender, rndNo);
            else:
                if round_m[stor0].field_1280 + 10 * 10^18 > msg.value:
                    revert with 0, 'SafeMath sub failed'
                call msg.sender with:
                   value msg.value + -round_m[stor0].field_1280 - 10 * 10^18 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                round_m[stor0].field_768 = block.timestamp + (12 * 3600)
                round_m[stor0].field_1024 = msg.sender or Mask(96, 160, round_m[stor0].field_1024)
                round_m[stor0].field_1280 += 10 * 10^18
                if playerRound_m[stor0][msg.sender].field_0 < 0:
                    revert with 0, 'SafeMath add failed'
                playerRound_m[stor0][msg.sender].field_0 = playerRound_m[stor0][msg.sender].field_0 + round_m[stor0].field_1280 + 10 * 10^18
                if round_m[stor0].field_0 < 0:
                    revert with 0, 'SafeMath add failed'
                round_m[stor0].field_0 = round_m[stor0].field_0 + round_m[stor0].field_1280 + 10 * 10^18
                if totalEth < 0:
                    revert with 0, 'SafeMath add failed'
                totalEth = totalEth + round_m[stor0].field_1280 + 10 * 10^18
                emit onSecStage(round_m[stor0].field_1280 + 10 * 10^18, block.timestamp, msg.sender, rndNo);
        else:
            if not round_m[stor0].field_0:
                s = 0x6d6382aa34bbbd30917721886eb60a20828079482420000000000
                t = 0xdac7055469777a6122ee4310dd6c14410500f2904840000000000
                while s < t:
                    require s
                    if s + (0xdac7055469777a6122ee4310dd6c14410500f2904840000000000 / s) < 0xdac7055469777a6122ee4310dd6c14410500f2904840000000000 / s:
                        revert with 0, 'SafeMath add failed'
                    s = s + (0xdac7055469777a6122ee4310dd6c14410500f2904840000000000 / s) / 2
                    t = s
                    continue 
            else:
                if 10^18 * round_m[stor0].field_0 / round_m[stor0].field_0 != 10^18:
                    revert with 0, 'SafeMath mul failed'
                if not 10^18 * round_m[stor0].field_0:
                    s = 0x6d6382aa34bbbd30917721886eb60a20828079482420000000000
                    t = 0xdac7055469777a6122ee4310dd6c14410500f2904840000000000
                    while s < t:
                        require s
                        if s + (0xdac7055469777a6122ee4310dd6c14410500f2904840000000000 / s) < 0xdac7055469777a6122ee4310dd6c14410500f2904840000000000 / s:
                            revert with 0, 'SafeMath add failed'
                        s = s + (0xdac7055469777a6122ee4310dd6c14410500f2904840000000000 / s) / 2
                        t = s
                        continue 
                else:
                    if 312500000000000000000000000 * 10^18 * round_m[stor0].field_0 / 10^18 * round_m[stor0].field_0 != 312500000 * 10^18:
                        revert with 0, 'SafeMath mul failed'
                    if (312500000000000000000000000 * 10^18 * round_m[stor0].field_0) + 0xdac7055469777a6122ee4310dd6c14410500f2904840000000000 < 312500000000000000000000000 * 10^18 * round_m[stor0].field_0:
                        revert with 0, 'SafeMath add failed'
                    s = (312500000000000000000000000 * 10^18 * round_m[stor0].field_0) + 0xdac7055469777a6122ee4310dd6c14410500f2904840000000001 / 2
                    t = (312500000000000000000000000 * 10^18 * round_m[stor0].field_0) + 0xdac7055469777a6122ee4310dd6c14410500f2904840000000000
                    while s < t:
                        require s
                        if s + ((312500000000000000000000000 * 10^18 * round_m[stor0].field_0) + 0xdac7055469777a6122ee4310dd6c14410500f2904840000000000 / s) < (312500000000000000000000000 * 10^18 * round_m[stor0].field_0) + 0xdac7055469777a6122ee4310dd6c14410500f2904840000000000 / s:
                            revert with 0, 'SafeMath add failed'
                        s = s + ((312500000000000000000000000 * 10^18 * round_m[stor0].field_0) + 0xdac7055469777a6122ee4310dd6c14410500f2904840000000000 / s) / 2
                        t = s
                        continue 
            if 74999921875000 * 10^18 > t:
                revert with 0, 'SafeMath sub failed'
            if msg.value + round_m[stor0].field_0 < round_m[stor0].field_0:
                revert with 0, 'SafeMath add failed'
            if not msg.value + round_m[stor0].field_0:
                s = 0x6d6382aa34bbbd30917721886eb60a20828079482420000000000
                u = 0xdac7055469777a6122ee4310dd6c14410500f2904840000000000
                while s < u:
                    require s
                    if s + (0xdac7055469777a6122ee4310dd6c14410500f2904840000000000 / s) < 0xdac7055469777a6122ee4310dd6c14410500f2904840000000000 / s:
                        revert with 0, 'SafeMath add failed'
                    s = s + (0xdac7055469777a6122ee4310dd6c14410500f2904840000000000 / s) / 2
                    u = s
                    continue 
            else:
                if (10^18 * msg.value) + (10^18 * round_m[stor0].field_0) / msg.value + round_m[stor0].field_0 != 10^18:
                    revert with 0, 'SafeMath mul failed'
                if not (10^18 * msg.value) + (10^18 * round_m[stor0].field_0):
                    s = 0x6d6382aa34bbbd30917721886eb60a20828079482420000000000
                    u = 0xdac7055469777a6122ee4310dd6c14410500f2904840000000000
                    while s < u:
                        require s
                        if s + (0xdac7055469777a6122ee4310dd6c14410500f2904840000000000 / s) < 0xdac7055469777a6122ee4310dd6c14410500f2904840000000000 / s:
                            revert with 0, 'SafeMath add failed'
                        s = s + (0xdac7055469777a6122ee4310dd6c14410500f2904840000000000 / s) / 2
                        u = s
                        continue 
                else:
                    if (312500000000000000000000000 * 10^18 * msg.value) + (312500000000000000000000000 * 10^18 * round_m[stor0].field_0) / (10^18 * msg.value) + (10^18 * round_m[stor0].field_0) != 312500000 * 10^18:
                        revert with 0, 'SafeMath mul failed'
                    s = (312500000000000000000000000 * 10^18 * msg.value) + (312500000000000000000000000 * 10^18 * round_m[stor0].field_0) + 0xdac7055469777a6122ee4310dd6c14410500f2904840000000001 / 2
                    u = (312500000000000000000000000 * 10^18 * msg.value) + (312500000000000000000000000 * 10^18 * round_m[stor0].field_0) + 0xdac7055469777a6122ee4310dd6c14410500f2904840000000000
                    while s < u:
                        require s
                        if s + ((312500000000000000000000000 * 10^18 * msg.value) + (312500000000000000000000000 * 10^18 * round_m[stor0].field_0) + 0xdac7055469777a6122ee4310dd6c14410500f2904840000000000 / s) < (312500000000000000000000000 * 10^18 * msg.value) + (312500000000000000000000000 * 10^18 * round_m[stor0].field_0) + 0xdac7055469777a6122ee4310dd6c14410500f2904840000000000 / s:
                            revert with 0, 'SafeMath add failed'
                        s = s + ((312500000000000000000000000 * 10^18 * msg.value) + (312500000000000000000000000 * 10^18 * round_m[stor0].field_0) + 0xdac7055469777a6122ee4310dd6c14410500f2904840000000000 / s) / 2
                        u = s
                        continue 
            if 74999921875000 * 10^18 > u:
                revert with 0, 'SafeMath sub failed'
            if t - 74999921875000 * 10^18 / 156250000 > u - 74999921875000 * 10^18 / 156250000:
                revert with 0, 'SafeMath sub failed'
            if round_m[stor0].field_256 < 0:
                revert with 0, 'SafeMath add failed'
            if round_m[stor0].field_256 + (u - 74999921875000 * 10^18 / 156250000) - (t - 74999921875000 * 10^18 / 156250000) < 10000000 * 10^18:
                if (u - 74999921875000 * 10^18 / 156250000) - (t - 74999921875000 * 10^18 / 156250000) >= 10^18:
                    round_m[stor0].field_768 = block.timestamp + (12 * 3600)
                    round_m[stor0].field_1024 = msg.sender or Mask(96, 160, round_m[stor0].field_1024)
                if playerRound_m[stor0][msg.sender].field_256 < 0:
                    revert with 0, 'SafeMath add failed'
                playerRound_m[stor0][msg.sender].field_256 = playerRound_m[stor0][msg.sender].field_256 + (u - 74999921875000 * 10^18 / 156250000) - (t - 74999921875000 * 10^18 / 156250000)
                if playerRound_m[stor0][msg.sender].field_0 + msg.value < msg.value:
                    revert with 0, 'SafeMath add failed'
                playerRound_m[stor0][msg.sender].field_0 += msg.value
                if round_m[stor0].field_256 < 0:
                    revert with 0, 'SafeMath add failed'
                round_m[stor0].field_256 = round_m[stor0].field_256 + (u - 74999921875000 * 10^18 / 156250000) - (t - 74999921875000 * 10^18 / 156250000)
                if round_m[stor0].field_0 + msg.value < msg.value:
                    revert with 0, 'SafeMath add failed'
                round_m[stor0].field_0 += msg.value
                if totalEth + msg.value < msg.value:
                    revert with 0, 'SafeMath add failed'
                totalEth += msg.value
                emit onFirStage((u - 74999921875000 * 10^18 / 156250000) - (t - 74999921875000 * 10^18 / 156250000), msg.value, block.timestamp, msg.sender, rndNo);
            else:
                if round_m[stor0].field_256 > 10000000 * 10^18:
                    revert with 0, 'SafeMath sub failed'
                if 85625 * 10^17 <= round_m[stor0].field_0:
                    if msg.value <= 0:
                        if -round_m[stor0].field_256 + 10000000 * 10^18 >= 10^18:
                            round_m[stor0].field_768 = block.timestamp + (12 * 3600)
                            round_m[stor0].field_1024 = msg.sender or Mask(96, 160, round_m[stor0].field_1024)
                        if playerRound_m[stor0][msg.sender].field_256 < 0:
                            revert with 0, 'SafeMath add failed'
                        playerRound_m[stor0][msg.sender].field_256 = playerRound_m[stor0][msg.sender].field_256 + -round_m[stor0].field_256 + 10000000 * 10^18
                        if playerRound_m[stor0][msg.sender].field_0 + msg.value < msg.value:
                            revert with 0, 'SafeMath add failed'
                        playerRound_m[stor0][msg.sender].field_0 += msg.value
                        if round_m[stor0].field_256 < 0:
                            revert with 0, 'SafeMath add failed'
                        round_m[stor0].field_256 = 10000000 * 10^18
                        if round_m[stor0].field_0 + msg.value < msg.value:
                            revert with 0, 'SafeMath add failed'
                        round_m[stor0].field_0 += msg.value
                        if totalEth + msg.value < msg.value:
                            revert with 0, 'SafeMath add failed'
                        totalEth += msg.value
                        emit onFirStage(-round_m[stor0].field_256 + 10000000 * 10^18, msg.value, block.timestamp, msg.sender, rndNo);
                    else:
                        if 0 > msg.value:
                            revert with 0, 'SafeMath sub failed'
                        call msg.sender with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if -round_m[stor0].field_256 + 10000000 * 10^18 >= 10^18:
                            round_m[stor0].field_768 = block.timestamp + (12 * 3600)
                            round_m[stor0].field_1024 = msg.sender or Mask(96, 160, round_m[stor0].field_1024)
                        if playerRound_m[stor0][msg.sender].field_256 < 0:
                            revert with 0, 'SafeMath add failed'
                        playerRound_m[stor0][msg.sender].field_256 = playerRound_m[stor0][msg.sender].field_256 + -round_m[stor0].field_256 + 10000000 * 10^18
                        if playerRound_m[stor0][msg.sender].field_0 < 0:
                            revert with 0, 'SafeMath add failed'
                        if round_m[stor0].field_256 < 0:
                            revert with 0, 'SafeMath add failed'
                        round_m[stor0].field_256 = 10000000 * 10^18
                        if round_m[stor0].field_0 < 0:
                            revert with 0, 'SafeMath add failed'
                        if totalEth < 0:
                            revert with 0, 'SafeMath add failed'
                        emit onFirStage(-round_m[stor0].field_256 + 10000000 * 10^18, 0, block.timestamp, msg.sender, rndNo);
                else:
                    if round_m[stor0].field_0 > 85625 * 10^17:
                        revert with 0, 'SafeMath sub failed'
                    if msg.value <= -round_m[stor0].field_0 + 85625 * 10^17:
                        if -round_m[stor0].field_256 + 10000000 * 10^18 >= 10^18:
                            round_m[stor0].field_768 = block.timestamp + (12 * 3600)
                            round_m[stor0].field_1024 = msg.sender or Mask(96, 160, round_m[stor0].field_1024)
                        if playerRound_m[stor0][msg.sender].field_256 < 0:
                            revert with 0, 'SafeMath add failed'
                        playerRound_m[stor0][msg.sender].field_256 = playerRound_m[stor0][msg.sender].field_256 + -round_m[stor0].field_256 + 10000000 * 10^18
                        if playerRound_m[stor0][msg.sender].field_0 + msg.value < msg.value:
                            revert with 0, 'SafeMath add failed'
                        playerRound_m[stor0][msg.sender].field_0 += msg.value
                        if round_m[stor0].field_256 < 0:
                            revert with 0, 'SafeMath add failed'
                        round_m[stor0].field_256 = 10000000 * 10^18
                        if round_m[stor0].field_0 + msg.value < msg.value:
                            revert with 0, 'SafeMath add failed'
                        round_m[stor0].field_0 += msg.value
                        if totalEth + msg.value < msg.value:
                            revert with 0, 'SafeMath add failed'
                        totalEth += msg.value
                        emit onFirStage(-round_m[stor0].field_256 + 10000000 * 10^18, msg.value, block.timestamp, msg.sender, rndNo);
                    else:
                        if -round_m[stor0].field_0 + 85625 * 10^17 > msg.value:
                            revert with 0, 'SafeMath sub failed'
                        call msg.sender with:
                           value msg.value + round_m[stor0].field_0 - 85625 * 10^17 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if -round_m[stor0].field_256 + 10000000 * 10^18 >= 10^18:
                            round_m[stor0].field_768 = block.timestamp + (12 * 3600)
                            round_m[stor0].field_1024 = msg.sender or Mask(96, 160, round_m[stor0].field_1024)
                        if playerRound_m[stor0][msg.sender].field_256 < 0:
                            revert with 0, 'SafeMath add failed'
                        playerRound_m[stor0][msg.sender].field_256 = playerRound_m[stor0][msg.sender].field_256 + -round_m[stor0].field_256 + 10000000 * 10^18
                        if playerRound_m[stor0][msg.sender].field_0 < 0:
                            revert with 0, 'SafeMath add failed'
                        playerRound_m[stor0][msg.sender].field_0 = playerRound_m[stor0][msg.sender].field_0 + -round_m[stor0].field_0 + 85625 * 10^17
                        if round_m[stor0].field_256 < 0:
                            revert with 0, 'SafeMath add failed'
                        round_m[stor0].field_256 = 10000000 * 10^18
                        if round_m[stor0].field_0 < 0:
                            revert with 0, 'SafeMath add failed'
                        round_m[stor0].field_0 = 85625 * 10^17
                        if totalEth < 0:
                            revert with 0, 'SafeMath add failed'
                        totalEth = totalEth + -round_m[stor0].field_0 + 85625 * 10^17
                        emit onFirStage(-round_m[stor0].field_256 + 10000000 * 10^18, -round_m[stor0].field_0 + 85625 * 10^17, block.timestamp, msg.sender, rndNo);
    else:
        if rndNo + 1 < rndNo:
            revert with 0, 'SafeMath add failed'
        rndNo++
        round_m[stor0 + 1].field_512 = block.timestamp
        round_m[stor0 + 1].field_768 = block.timestamp + (12 * 3600)
        if 10000000 * 10^18 <= round_m[stor0 + 1].field_256:
            if round_m[stor0 + 1].field_1280 + 10 * 10^18 < 10 * 10^18:
                revert with 0, 'SafeMath add failed'
            if round_m[stor0 + 1].field_1280 + 10^17 < 10^17:
                revert with 0, 'SafeMath add failed'
            if msg.value < round_m[stor0 + 1].field_1280 + 10^17:
                revert with 0, 'Need more Ether'
            if msg.value <= round_m[stor0 + 1].field_1280 + 10 * 10^18:
                round_m[stor0 + 1].field_768 = block.timestamp + (12 * 3600)
                round_m[stor0 + 1].field_1024 = msg.sender or Mask(96, 160, round_m[stor0 + 1].field_1024)
                round_m[stor0 + 1].field_1280 = msg.value
                if playerRound_m[stor0 + 1][msg.sender].field_0 + msg.value < msg.value:
                    revert with 0, 'SafeMath add failed'
                playerRound_m[stor0 + 1][msg.sender].field_0 += msg.value
                if round_m[stor0 + 1].field_0 + msg.value < msg.value:
                    revert with 0, 'SafeMath add failed'
                round_m[stor0 + 1].field_0 += msg.value
                if totalEth + msg.value < msg.value:
                    revert with 0, 'SafeMath add failed'
                totalEth += msg.value
                emit onSecStage(msg.value, block.timestamp, msg.sender, rndNo + 1);
            else:
                if round_m[stor0 + 1].field_1280 + 10 * 10^18 > msg.value:
                    revert with 0, 'SafeMath sub failed'
                call msg.sender with:
                   value msg.value + -round_m[stor0 + 1].field_1280 - 10 * 10^18 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                round_m[stor0 + 1].field_768 = block.timestamp + (12 * 3600)
                round_m[stor0 + 1].field_1024 = msg.sender or Mask(96, 160, round_m[stor0 + 1].field_1024)
                round_m[stor0 + 1].field_1280 += 10 * 10^18
                if playerRound_m[stor0 + 1][msg.sender].field_0 < 0:
                    revert with 0, 'SafeMath add failed'
                playerRound_m[stor0 + 1][msg.sender].field_0 = playerRound_m[stor0 + 1][msg.sender].field_0 + round_m[stor0 + 1].field_1280 + 10 * 10^18
                if round_m[stor0 + 1].field_0 < 0:
                    revert with 0, 'SafeMath add failed'
                round_m[stor0 + 1].field_0 = round_m[stor0 + 1].field_0 + round_m[stor0 + 1].field_1280 + 10 * 10^18
                if totalEth < 0:
                    revert with 0, 'SafeMath add failed'
                totalEth = totalEth + round_m[stor0 + 1].field_1280 + 10 * 10^18
                emit onSecStage(round_m[stor0 + 1].field_1280 + 10 * 10^18, block.timestamp, msg.sender, rndNo + 1);
        else:
            if not round_m[stor0 + 1].field_0:
                s = 0x6d6382aa34bbbd30917721886eb60a20828079482420000000000
                t = 0xdac7055469777a6122ee4310dd6c14410500f2904840000000000
                while s < t:
                    require s
                    if s + (0xdac7055469777a6122ee4310dd6c14410500f2904840000000000 / s) < 0xdac7055469777a6122ee4310dd6c14410500f2904840000000000 / s:
                        revert with 0, 'SafeMath add failed'
                    s = s + (0xdac7055469777a6122ee4310dd6c14410500f2904840000000000 / s) / 2
                    t = s
                    continue 
            else:
                if 10^18 * round_m[stor0 + 1].field_0 / round_m[stor0 + 1].field_0 != 10^18:
                    revert with 0, 'SafeMath mul failed'
                if not 10^18 * round_m[stor0 + 1].field_0:
                    s = 0x6d6382aa34bbbd30917721886eb60a20828079482420000000000
                    t = 0xdac7055469777a6122ee4310dd6c14410500f2904840000000000
                    while s < t:
                        require s
                        if s + (0xdac7055469777a6122ee4310dd6c14410500f2904840000000000 / s) < 0xdac7055469777a6122ee4310dd6c14410500f2904840000000000 / s:
                            revert with 0, 'SafeMath add failed'
                        s = s + (0xdac7055469777a6122ee4310dd6c14410500f2904840000000000 / s) / 2
                        t = s
                        continue 
                else:
                    if 312500000000000000000000000 * 10^18 * round_m[stor0 + 1].field_0 / 10^18 * round_m[stor0 + 1].field_0 != 312500000 * 10^18:
                        revert with 0, 'SafeMath mul failed'
                    if (312500000000000000000000000 * 10^18 * round_m[stor0 + 1].field_0) + 0xdac7055469777a6122ee4310dd6c14410500f2904840000000000 < 312500000000000000000000000 * 10^18 * round_m[stor0 + 1].field_0:
                        revert with 0, 'SafeMath add failed'
                    s = (312500000000000000000000000 * 10^18 * round_m[stor0 + 1].field_0) + 0xdac7055469777a6122ee4310dd6c14410500f2904840000000001 / 2
                    t = (312500000000000000000000000 * 10^18 * round_m[stor0 + 1].field_0) + 0xdac7055469777a6122ee4310dd6c14410500f2904840000000000
                    while s < t:
                        require s
                        if s + ((312500000000000000000000000 * 10^18 * round_m[stor0 + 1].field_0) + 0xdac7055469777a6122ee4310dd6c14410500f2904840000000000 / s) < (312500000000000000000000000 * 10^18 * round_m[stor0 + 1].field_0) + 0xdac7055469777a6122ee4310dd6c14410500f2904840000000000 / s:
                            revert with 0, 'SafeMath add failed'
                        s = s + ((312500000000000000000000000 * 10^18 * round_m[stor0 + 1].field_0) + 0xdac7055469777a6122ee4310dd6c14410500f2904840000000000 / s) / 2
                        t = s
                        continue 
            if 74999921875000 * 10^18 > t:
                revert with 0, 'SafeMath sub failed'
            if msg.value + round_m[stor0 + 1].field_0 < round_m[stor0 + 1].field_0:
                revert with 0, 'SafeMath add failed'
            if not msg.value + round_m[stor0 + 1].field_0:
                s = 0x6d6382aa34bbbd30917721886eb60a20828079482420000000000
                u = 0xdac7055469777a6122ee4310dd6c14410500f2904840000000000
                while s < u:
                    require s
                    if s + (0xdac7055469777a6122ee4310dd6c14410500f2904840000000000 / s) < 0xdac7055469777a6122ee4310dd6c14410500f2904840000000000 / s:
                        revert with 0, 'SafeMath add failed'
                    s = s + (0xdac7055469777a6122ee4310dd6c14410500f2904840000000000 / s) / 2
                    u = s
                    continue 
            else:
                if (10^18 * msg.value) + (10^18 * round_m[stor0 + 1].field_0) / msg.value + round_m[stor0 + 1].field_0 != 10^18:
                    revert with 0, 'SafeMath mul failed'
                if not (10^18 * msg.value) + (10^18 * round_m[stor0 + 1].field_0):
                    s = 0x6d6382aa34bbbd30917721886eb60a20828079482420000000000
                    u = 0xdac7055469777a6122ee4310dd6c14410500f2904840000000000
                    while s < u:
                        require s
                        if s + (0xdac7055469777a6122ee4310dd6c14410500f2904840000000000 / s) < 0xdac7055469777a6122ee4310dd6c14410500f2904840000000000 / s:
                            revert with 0, 'SafeMath add failed'
                        s = s + (0xdac7055469777a6122ee4310dd6c14410500f2904840000000000 / s) / 2
                        u = s
                        continue 
                else:
                    if (312500000000000000000000000 * 10^18 * msg.value) + (312500000000000000000000000 * 10^18 * round_m[stor0 + 1].field_0) / (10^18 * msg.value) + (10^18 * round_m[stor0 + 1].field_0) != 312500000 * 10^18:
                        revert with 0, 'SafeMath mul failed'
                    s = (312500000000000000000000000 * 10^18 * msg.value) + (312500000000000000000000000 * 10^18 * round_m[stor0 + 1].field_0) + 0xdac7055469777a6122ee4310dd6c14410500f2904840000000001 / 2
                    u = (312500000000000000000000000 * 10^18 * msg.value) + (312500000000000000000000000 * 10^18 * round_m[stor0 + 1].field_0) + 0xdac7055469777a6122ee4310dd6c14410500f2904840000000000
                    while s < u:
                        require s
                        if s + ((312500000000000000000000000 * 10^18 * msg.value) + (312500000000000000000000000 * 10^18 * round_m[stor0 + 1].field_0) + 0xdac7055469777a6122ee4310dd6c14410500f2904840000000000 / s) < (312500000000000000000000000 * 10^18 * msg.value) + (312500000000000000000000000 * 10^18 * round_m[stor0 + 1].field_0) + 0xdac7055469777a6122ee4310dd6c14410500f2904840000000000 / s:
                            revert with 0, 'SafeMath add failed'
                        s = s + ((312500000000000000000000000 * 10^18 * msg.value) + (312500000000000000000000000 * 10^18 * round_m[stor0 + 1].field_0) + 0xdac7055469777a6122ee4310dd6c14410500f2904840000000000 / s) / 2
                        u = s
                        continue 
            if 74999921875000 * 10^18 > u:
                revert with 0, 'SafeMath sub failed'
            if t - 74999921875000 * 10^18 / 156250000 > u - 74999921875000 * 10^18 / 156250000:
                revert with 0, 'SafeMath sub failed'
            if round_m[stor0 + 1].field_256 < 0:
                revert with 0, 'SafeMath add failed'
            if round_m[stor0 + 1].field_256 + (u - 74999921875000 * 10^18 / 156250000) - (t - 74999921875000 * 10^18 / 156250000) < 10000000 * 10^18:
                if (u - 74999921875000 * 10^18 / 156250000) - (t - 74999921875000 * 10^18 / 156250000) >= 10^18:
                    round_m[stor0 + 1].field_768 = block.timestamp + (12 * 3600)
                    round_m[stor0 + 1].field_1024 = msg.sender or Mask(96, 160, round_m[stor0 + 1].field_1024)
                if playerRound_m[stor0 + 1][msg.sender].field_256 < 0:
                    revert with 0, 'SafeMath add failed'
                playerRound_m[stor0 + 1][msg.sender].field_256 = playerRound_m[stor0 + 1][msg.sender].field_256 + (u - 74999921875000 * 10^18 / 156250000) - (t - 74999921875000 * 10^18 / 156250000)
                if playerRound_m[stor0 + 1][msg.sender].field_0 + msg.value < msg.value:
                    revert with 0, 'SafeMath add failed'
                playerRound_m[stor0 + 1][msg.sender].field_0 += msg.value
                if round_m[stor0 + 1].field_256 < 0:
                    revert with 0, 'SafeMath add failed'
                round_m[stor0 + 1].field_256 = round_m[stor0 + 1].field_256 + (u - 74999921875000 * 10^18 / 156250000) - (t - 74999921875000 * 10^18 / 156250000)
                if round_m[stor0 + 1].field_0 + msg.value < msg.value:
                    revert with 0, 'SafeMath add failed'
                round_m[stor0 + 1].field_0 += msg.value
                if totalEth + msg.value < msg.value:
                    revert with 0, 'SafeMath add failed'
                totalEth += msg.value
                emit onFirStage((u - 74999921875000 * 10^18 / 156250000) - (t - 74999921875000 * 10^18 / 156250000), msg.value, block.timestamp, msg.sender, rndNo + 1);
            else:
                if round_m[stor0 + 1].field_256 > 10000000 * 10^18:
                    revert with 0, 'SafeMath sub failed'
                if 85625 * 10^17 <= round_m[stor0 + 1].field_0:
                    if msg.value <= 0:
                        if -round_m[stor0 + 1].field_256 + 10000000 * 10^18 >= 10^18:
                            round_m[stor0 + 1].field_768 = block.timestamp + (12 * 3600)
                            round_m[stor0 + 1].field_1024 = msg.sender or Mask(96, 160, round_m[stor0 + 1].field_1024)
                        if playerRound_m[stor0 + 1][msg.sender].field_256 < 0:
                            revert with 0, 'SafeMath add failed'
                        playerRound_m[stor0 + 1][msg.sender].field_256 = playerRound_m[stor0 + 1][msg.sender].field_256 + -round_m[stor0 + 1].field_256 + 10000000 * 10^18
                        if playerRound_m[stor0 + 1][msg.sender].field_0 + msg.value < msg.value:
                            revert with 0, 'SafeMath add failed'
                        playerRound_m[stor0 + 1][msg.sender].field_0 += msg.value
                        if round_m[stor0 + 1].field_256 < 0:
                            revert with 0, 'SafeMath add failed'
                        round_m[stor0 + 1].field_256 = 10000000 * 10^18
                        if round_m[stor0 + 1].field_0 + msg.value < msg.value:
                            revert with 0, 'SafeMath add failed'
                        round_m[stor0 + 1].field_0 += msg.value
                        if totalEth + msg.value < msg.value:
                            revert with 0, 'SafeMath add failed'
                        totalEth += msg.value
                        emit onFirStage(-round_m[stor0 + 1].field_256 + 10000000 * 10^18, msg.value, block.timestamp, msg.sender, rndNo + 1);
                    else:
                        if 0 > msg.value:
                            revert with 0, 'SafeMath sub failed'
                        call msg.sender with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if -round_m[stor0 + 1].field_256 + 10000000 * 10^18 >= 10^18:
                            round_m[stor0 + 1].field_768 = block.timestamp + (12 * 3600)
                            round_m[stor0 + 1].field_1024 = msg.sender or Mask(96, 160, round_m[stor0 + 1].field_1024)
                        if playerRound_m[stor0 + 1][msg.sender].field_256 < 0:
                            revert with 0, 'SafeMath add failed'
                        playerRound_m[stor0 + 1][msg.sender].field_256 = playerRound_m[stor0 + 1][msg.sender].field_256 + -round_m[stor0 + 1].field_256 + 10000000 * 10^18
                        if playerRound_m[stor0 + 1][msg.sender].field_0 < 0:
                            revert with 0, 'SafeMath add failed'
                        if round_m[stor0 + 1].field_256 < 0:
                            revert with 0, 'SafeMath add failed'
                        round_m[stor0 + 1].field_256 = 10000000 * 10^18
                        if round_m[stor0 + 1].field_0 < 0:
                            revert with 0, 'SafeMath add failed'
                        if totalEth < 0:
                            revert with 0, 'SafeMath add failed'
                        emit onFirStage(-round_m[stor0 + 1].field_256 + 10000000 * 10^18, 0, block.timestamp, msg.sender, rndNo + 1);
                else:
                    if round_m[stor0 + 1].field_0 > 85625 * 10^17:
                        revert with 0, 'SafeMath sub failed'
                    if msg.value <= -round_m[stor0 + 1].field_0 + 85625 * 10^17:
                        if -round_m[stor0 + 1].field_256 + 10000000 * 10^18 >= 10^18:
                            round_m[stor0 + 1].field_768 = block.timestamp + (12 * 3600)
                            round_m[stor0 + 1].field_1024 = msg.sender or Mask(96, 160, round_m[stor0 + 1].field_1024)
                        if playerRound_m[stor0 + 1][msg.sender].field_256 < 0:
                            revert with 0, 'SafeMath add failed'
                        playerRound_m[stor0 + 1][msg.sender].field_256 = playerRound_m[stor0 + 1][msg.sender].field_256 + -round_m[stor0 + 1].field_256 + 10000000 * 10^18
                        if playerRound_m[stor0 + 1][msg.sender].field_0 + msg.value < msg.value:
                            revert with 0, 'SafeMath add failed'
                        playerRound_m[stor0 + 1][msg.sender].field_0 += msg.value
                        if round_m[stor0 + 1].field_256 < 0:
                            revert with 0, 'SafeMath add failed'
                        round_m[stor0 + 1].field_256 = 10000000 * 10^18
                        if round_m[stor0 + 1].field_0 + msg.value < msg.value:
                            revert with 0, 'SafeMath add failed'
                        round_m[stor0 + 1].field_0 += msg.value
                        if totalEth + msg.value < msg.value:
                            revert with 0, 'SafeMath add failed'
                        totalEth += msg.value
                        emit onFirStage(-round_m[stor0 + 1].field_256 + 10000000 * 10^18, msg.value, block.timestamp, msg.sender, rndNo + 1);
                    else:
                        if -round_m[stor0 + 1].field_0 + 85625 * 10^17 > msg.value:
                            revert with 0, 'SafeMath sub failed'
                        call msg.sender with:
                           value msg.value + round_m[stor0 + 1].field_0 - 85625 * 10^17 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if -round_m[stor0 + 1].field_256 + 10000000 * 10^18 >= 10^18:
                            round_m[stor0 + 1].field_768 = block.timestamp + (12 * 3600)
                            round_m[stor0 + 1].field_1024 = msg.sender or Mask(96, 160, round_m[stor0 + 1].field_1024)
                        if playerRound_m[stor0 + 1][msg.sender].field_256 < 0:
                            revert with 0, 'SafeMath add failed'
                        playerRound_m[stor0 + 1][msg.sender].field_256 = playerRound_m[stor0 + 1][msg.sender].field_256 + -round_m[stor0 + 1].field_256 + 10000000 * 10^18
                        if playerRound_m[stor0 + 1][msg.sender].field_0 < 0:
                            revert with 0, 'SafeMath add failed'
                        playerRound_m[stor0 + 1][msg.sender].field_0 = playerRound_m[stor0 + 1][msg.sender].field_0 + -round_m[stor0 + 1].field_0 + 85625 * 10^17
                        if round_m[stor0 + 1].field_256 < 0:
                            revert with 0, 'SafeMath add failed'
                        round_m[stor0 + 1].field_256 = 10000000 * 10^18
                        if round_m[stor0 + 1].field_0 < 0:
                            revert with 0, 'SafeMath add failed'
                        round_m[stor0 + 1].field_0 = 85625 * 10^17
                        if totalEth < 0:
                            revert with 0, 'SafeMath add failed'
                        totalEth = totalEth + -round_m[stor0 + 1].field_0 + 85625 * 10^17
                        emit onFirStage(-round_m[stor0 + 1].field_256 + 10000000 * 10^18, -round_m[stor0 + 1].field_0 + 85625 * 10^17, block.timestamp, msg.sender, rndNo + 1);
}



}
