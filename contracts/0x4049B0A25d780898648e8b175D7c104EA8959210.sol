contract main {


// =======================  Init code  ======================


mapping of uint256 stor1;
array of uint256 stor4;
address stor5;
address stor6;
address stor7;
address stor8;
address stor9;
address stor10;
address stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
address stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;

function _fallback() payable {
    bool(stor4.length) = 0
    stor4.length.field_1 = 3
    stor4.length.field_8 = '1.0' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor5 = 0x4cbe2d64b9727dc3d649858de8ecfc65ab0c575a
    stor6 = 0x964a6abd8b03d909ff067fab9c0bc40191bcd652
    stor7 = 0x2f0e0035f3a8f2bd8ad89bc10f936260830ac6e1
    stor8 = 0x3e3dec11c6a0df50edf545b3a8095174d20476e2
    stor9 = 0x8cb080518e1fa46505fc5519df1d77c11d5d30b3
    stor10 = 0x2b0b5dcac3488c4d808a22a06ef301dfd056bb5f
    stor11 = 0x4cfecefa413dd13dab6284f6e7b187aa5aa22abe
    stor12 = 1
    stor13 = 10^12
    stor14 = 10^15
    stor15 = 10^18
    stor17 = 60000000 * 10^18
    stor18 = 195000000 * 10^18
    stor19 = 0
    require not msg.value
    stor16 = msg.sender
    stor19 = stor17 + stor18
    stor1[stor9] = 25000000 * 10^18
    stor1[stor5] = 28750000 * 10^18
    stor1[stor6] = 8750000 * 10^18
    stor1[stor7] = 2500000 * 10^18
    stor1[stor8] = 50000000 * 10^18
    stor1[stor10] = 130000000 * 10^18
    return code.data[1706 len 7552]
}



// =====================  Runtime code  =====================


const name = 'Basic Token'

const sub_1eca5641(?) = 1660

const sub_2f9747d7(?) = (416693 * 3600)

const decimals = 18

const sub_318aa259(?) = (417197 * 3600)

const sub_3346be2c(?) = 1500

const sub_4a7932a5(?) = (416693 * 3600)

const sub_522e4efc(?) = (417365 * 3600)

const sub_5d643279(?) = 25000000 * 10^18

const sub_664f0ede(?) = 50000000 * 10^18

const sub_666eca56(?) = (417029 * 3600)

const sub_7968e7b8(?) = 28750000 * 10^18

const sub_7a9bbe14(?) = 2500

const sub_7cdbc750(?) = 8750000 * 10^18

const sub_8a1c1625(?) = (417029 * 3600)

const symbol = 'BAC'

const sub_9912cee3(?) = (417533 * 3600)

const sub_995f8721(?) = (416861 * 3600)

const sub_9d78fbe9(?) = (17520 * 24 * 3600)

const sub_a5c6c51c(?) = 1875

const sub_b8e72b6f(?) = 2500000 * 10^18

const sub_c82b6436(?) = 2150

const sub_d21fa3ec(?) = (417197 * 3600)

const sub_d9d47d9b(?) = (417365 * 3600)

const sub_dbf1ca2f(?) = (8760 * 24 * 3600)

const sub_e82393f9(?) = (416861 * 3600)

const sub_f7440fbb(?) = (416645 * 3600)

const sub_fdbe96d1(?) = 1360

const MINING_OUTPUT = 130000000 * 10^18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of struct funder;
array of uint256 version;
address stor5;
address stor6;
address stor7;
address stor8;
address stor11;
uint256 stor14;
address creatorAddress;
uint256 sub_99480d77;
uint256 sub_cadf06a9;
uint256 totalSupply;

function creator() {
    return creatorAddress
}

function totalSupply() {
    return totalSupply
}

function version() {
    return version[0 len version.length]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function sub_99480d77(?) {
    return sub_99480d77
}

function sub_cadf06a9(?) {
    return sub_cadf06a9
}

function getFunder(uint256 arg1) {
    require arg1 < funder.length
    return funder[arg1].field_0, funder[arg1].field_256
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function sub_9a7be5bc(?) {
    require msg.sender == creatorAddress
    if sub_99480d77 > 0:
        sub_cadf06a9 += sub_99480d77
        sub_99480d77 = 0
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_511589c0(?) {
    require msg.sender == creatorAddress
    balanceOf[stor16] += sub_99480d77
    balanceOf[stor16] += sub_cadf06a9
    sub_99480d77 = 0
    sub_cadf06a9 = 0
    totalSupply = 0
}

function GetEth(uint256 arg1) {
    require msg.sender == creatorAddress
    call creatorAddress with:
       value arg1 * stor14 wei
         gas 2300 * is_zero(value) wei
    return not bool(ext_call.success)
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if msg.sender == stor5:
        if block.timestamp < 425405 * 3600:
            return 0
    else:
        if msg.sender == stor6:
            if block.timestamp < 425405 * 3600:
                return 0
        else:
            if msg.sender == stor7:
                if block.timestamp < 425405 * 3600:
                    return 0
    if msg.sender == stor8:
        if block.timestamp < 434165 * 3600:
            return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function _fallback() payable {
    require block.timestamp >= 416645 * 3600
    require block.timestamp <= 417533 * 3600
    require msg.value >= stor14
    if block.timestamp <= 416693 * 3600:
        require totalSupply >= 2500 * msg.value
        require sub_99480d77 >= 2500 * msg.value
        totalSupply += -2500 * msg.value
        sub_99480d77 += -2500 * msg.value
        balanceOf[address(msg.sender)] += 2500 * msg.value
        require stor14
        funder.length++
        if not funder.length <= funder.length + 1:
            idx = 2 * funder.length + 1
            while 2 * funder.length > idx:
                funder[idx].field_0 = 0
                funder[idx].field_256 = 0
                idx = idx + 2
                continue 
    else:
        if block.timestamp > 416861 * 3600:
            if block.timestamp > 417029 * 3600:
                if block.timestamp > 417197 * 3600:
                    if block.timestamp > 417365 * 3600:
                        if block.timestamp > 417533 * 3600:
                            require totalSupply >= 0
                            require sub_cadf06a9 >= 0
                        else:
                            require totalSupply >= 1360 * msg.value
                            require sub_cadf06a9 >= 1360 * msg.value
                            totalSupply += -1360 * msg.value
                            sub_cadf06a9 += -1360 * msg.value
                            balanceOf[address(msg.sender)] += 1360 * msg.value
                    else:
                        if 1500 * msg.value:
                            require totalSupply >= 1500 * msg.value
                            require sub_cadf06a9 >= 1500 * msg.value
                            totalSupply += -1500 * msg.value
                            sub_cadf06a9 += -1500 * msg.value
                            balanceOf[address(msg.sender)] += 1500 * msg.value
                        else:
                            if block.timestamp > 417533 * 3600:
                                require totalSupply >= 1500 * msg.value
                                require sub_cadf06a9 >= 1500 * msg.value
                                totalSupply += -1500 * msg.value
                                sub_cadf06a9 += -1500 * msg.value
                                balanceOf[address(msg.sender)] += 1500 * msg.value
                            else:
                                require totalSupply >= 1360 * msg.value
                                require sub_cadf06a9 >= 1360 * msg.value
                                totalSupply += -1360 * msg.value
                                sub_cadf06a9 += -1360 * msg.value
                                balanceOf[address(msg.sender)] += 1360 * msg.value
                else:
                    if 1660 * msg.value:
                        require totalSupply >= 1660 * msg.value
                        require sub_cadf06a9 >= 1660 * msg.value
                        totalSupply += -1660 * msg.value
                        sub_cadf06a9 += -1660 * msg.value
                        balanceOf[address(msg.sender)] += 1660 * msg.value
                    else:
                        if block.timestamp > 417365 * 3600:
                            if 1660 * msg.value:
                                require totalSupply >= 1660 * msg.value
                                require sub_cadf06a9 >= 1660 * msg.value
                                totalSupply += -1660 * msg.value
                                sub_cadf06a9 += -1660 * msg.value
                                balanceOf[address(msg.sender)] += 1660 * msg.value
                            else:
                                if block.timestamp > 417533 * 3600:
                                    require totalSupply >= 1660 * msg.value
                                    require sub_cadf06a9 >= 1660 * msg.value
                                    totalSupply += -1660 * msg.value
                                    sub_cadf06a9 += -1660 * msg.value
                                    balanceOf[address(msg.sender)] += 1660 * msg.value
                                else:
                                    require totalSupply >= 1360 * msg.value
                                    require sub_cadf06a9 >= 1360 * msg.value
                                    totalSupply += -1360 * msg.value
                                    sub_cadf06a9 += -1360 * msg.value
                                    balanceOf[address(msg.sender)] += 1360 * msg.value
                        else:
                            if 1500 * msg.value:
                                require totalSupply >= 1500 * msg.value
                                require sub_cadf06a9 >= 1500 * msg.value
                                totalSupply += -1500 * msg.value
                                sub_cadf06a9 += -1500 * msg.value
                                balanceOf[address(msg.sender)] += 1500 * msg.value
                            else:
                                if block.timestamp > 417533 * 3600:
                                    require totalSupply >= 1500 * msg.value
                                    require sub_cadf06a9 >= 1500 * msg.value
                                    totalSupply += -1500 * msg.value
                                    sub_cadf06a9 += -1500 * msg.value
                                    balanceOf[address(msg.sender)] += 1500 * msg.value
                                else:
                                    require totalSupply >= 1360 * msg.value
                                    require sub_cadf06a9 >= 1360 * msg.value
                                    totalSupply += -1360 * msg.value
                                    sub_cadf06a9 += -1360 * msg.value
                                    balanceOf[address(msg.sender)] += 1360 * msg.value
            else:
                if 1875 * msg.value:
                    require totalSupply >= 1875 * msg.value
                    require sub_cadf06a9 >= 1875 * msg.value
                    totalSupply += -1875 * msg.value
                    sub_cadf06a9 += -1875 * msg.value
                    balanceOf[address(msg.sender)] += 1875 * msg.value
                else:
                    if block.timestamp > 417197 * 3600:
                        if 1875 * msg.value:
                            require totalSupply >= 1875 * msg.value
                            require sub_cadf06a9 >= 1875 * msg.value
                            totalSupply += -1875 * msg.value
                            sub_cadf06a9 += -1875 * msg.value
                            balanceOf[address(msg.sender)] += 1875 * msg.value
                        else:
                            if block.timestamp > 417365 * 3600:
                                if 1875 * msg.value:
                                    require totalSupply >= 1875 * msg.value
                                    require sub_cadf06a9 >= 1875 * msg.value
                                    totalSupply += -1875 * msg.value
                                    sub_cadf06a9 += -1875 * msg.value
                                    balanceOf[address(msg.sender)] += 1875 * msg.value
                                else:
                                    if block.timestamp > 417533 * 3600:
                                        require totalSupply >= 1875 * msg.value
                                        require sub_cadf06a9 >= 1875 * msg.value
                                        totalSupply += -1875 * msg.value
                                        sub_cadf06a9 += -1875 * msg.value
                                        balanceOf[address(msg.sender)] += 1875 * msg.value
                                    else:
                                        require totalSupply >= 1360 * msg.value
                                        require sub_cadf06a9 >= 1360 * msg.value
                                        totalSupply += -1360 * msg.value
                                        sub_cadf06a9 += -1360 * msg.value
                                        balanceOf[address(msg.sender)] += 1360 * msg.value
                            else:
                                if 1500 * msg.value:
                                    require totalSupply >= 1500 * msg.value
                                    require sub_cadf06a9 >= 1500 * msg.value
                                    totalSupply += -1500 * msg.value
                                    sub_cadf06a9 += -1500 * msg.value
                                    balanceOf[address(msg.sender)] += 1500 * msg.value
                                else:
                                    if block.timestamp > 417533 * 3600:
                                        require totalSupply >= 1500 * msg.value
                                        require sub_cadf06a9 >= 1500 * msg.value
                                        totalSupply += -1500 * msg.value
                                        sub_cadf06a9 += -1500 * msg.value
                                        balanceOf[address(msg.sender)] += 1500 * msg.value
                                    else:
                                        require totalSupply >= 1360 * msg.value
                                        require sub_cadf06a9 >= 1360 * msg.value
                                        totalSupply += -1360 * msg.value
                                        sub_cadf06a9 += -1360 * msg.value
                                        balanceOf[address(msg.sender)] += 1360 * msg.value
                    else:
                        if 1660 * msg.value:
                            require totalSupply >= 1660 * msg.value
                            require sub_cadf06a9 >= 1660 * msg.value
                            totalSupply += -1660 * msg.value
                            sub_cadf06a9 += -1660 * msg.value
                            balanceOf[address(msg.sender)] += 1660 * msg.value
                        else:
                            if block.timestamp > 417365 * 3600:
                                if 1660 * msg.value:
                                    require totalSupply >= 1660 * msg.value
                                    require sub_cadf06a9 >= 1660 * msg.value
                                    totalSupply += -1660 * msg.value
                                    sub_cadf06a9 += -1660 * msg.value
                                    balanceOf[address(msg.sender)] += 1660 * msg.value
                                else:
                                    if block.timestamp > 417533 * 3600:
                                        require totalSupply >= 1660 * msg.value
                                        require sub_cadf06a9 >= 1660 * msg.value
                                        totalSupply += -1660 * msg.value
                                        sub_cadf06a9 += -1660 * msg.value
                                        balanceOf[address(msg.sender)] += 1660 * msg.value
                                    else:
                                        require totalSupply >= 1360 * msg.value
                                        require sub_cadf06a9 >= 1360 * msg.value
                                        totalSupply += -1360 * msg.value
                                        sub_cadf06a9 += -1360 * msg.value
                                        balanceOf[address(msg.sender)] += 1360 * msg.value
                            else:
                                if 1500 * msg.value:
                                    require totalSupply >= 1500 * msg.value
                                    require sub_cadf06a9 >= 1500 * msg.value
                                    totalSupply += -1500 * msg.value
                                    sub_cadf06a9 += -1500 * msg.value
                                    balanceOf[address(msg.sender)] += 1500 * msg.value
                                else:
                                    if block.timestamp > 417533 * 3600:
                                        require totalSupply >= 1500 * msg.value
                                        require sub_cadf06a9 >= 1500 * msg.value
                                        totalSupply += -1500 * msg.value
                                        sub_cadf06a9 += -1500 * msg.value
                                        balanceOf[address(msg.sender)] += 1500 * msg.value
                                    else:
                                        require totalSupply >= 1360 * msg.value
                                        require sub_cadf06a9 >= 1360 * msg.value
                                        totalSupply += -1360 * msg.value
                                        sub_cadf06a9 += -1360 * msg.value
                                        balanceOf[address(msg.sender)] += 1360 * msg.value
        else:
            if 2150 * msg.value:
                require totalSupply >= 2150 * msg.value
                require sub_cadf06a9 >= 2150 * msg.value
                totalSupply += -2150 * msg.value
                sub_cadf06a9 += -2150 * msg.value
                balanceOf[address(msg.sender)] += 2150 * msg.value
            else:
                if block.timestamp > 417029 * 3600:
                    if 2150 * msg.value:
                        require totalSupply >= 2150 * msg.value
                        require sub_cadf06a9 >= 2150 * msg.value
                        totalSupply += -2150 * msg.value
                        sub_cadf06a9 += -2150 * msg.value
                        balanceOf[address(msg.sender)] += 2150 * msg.value
                    else:
                        if block.timestamp > 417197 * 3600:
                            if 2150 * msg.value:
                                require totalSupply >= 2150 * msg.value
                                require sub_cadf06a9 >= 2150 * msg.value
                                totalSupply += -2150 * msg.value
                                sub_cadf06a9 += -2150 * msg.value
                                balanceOf[address(msg.sender)] += 2150 * msg.value
                            else:
                                if block.timestamp > 417365 * 3600:
                                    if 2150 * msg.value:
                                        require totalSupply >= 2150 * msg.value
                                        require sub_cadf06a9 >= 2150 * msg.value
                                        totalSupply += -2150 * msg.value
                                        sub_cadf06a9 += -2150 * msg.value
                                        balanceOf[address(msg.sender)] += 2150 * msg.value
                                    else:
                                        if block.timestamp > 417533 * 3600:
                                            require totalSupply >= 2150 * msg.value
                                            require sub_cadf06a9 >= 2150 * msg.value
                                            totalSupply += -2150 * msg.value
                                            sub_cadf06a9 += -2150 * msg.value
                                            balanceOf[address(msg.sender)] += 2150 * msg.value
                                        else:
                                            require totalSupply >= 1360 * msg.value
                                            require sub_cadf06a9 >= 1360 * msg.value
                                            totalSupply += -1360 * msg.value
                                            sub_cadf06a9 += -1360 * msg.value
                                            balanceOf[address(msg.sender)] += 1360 * msg.value
                                else:
                                    if 1500 * msg.value:
                                        require totalSupply >= 1500 * msg.value
                                        require sub_cadf06a9 >= 1500 * msg.value
                                        totalSupply += -1500 * msg.value
                                        sub_cadf06a9 += -1500 * msg.value
                                        balanceOf[address(msg.sender)] += 1500 * msg.value
                                    else:
                                        if block.timestamp > 417533 * 3600:
                                            require totalSupply >= 1500 * msg.value
                                            require sub_cadf06a9 >= 1500 * msg.value
                                            totalSupply += -1500 * msg.value
                                            sub_cadf06a9 += -1500 * msg.value
                                            balanceOf[address(msg.sender)] += 1500 * msg.value
                                        else:
                                            require totalSupply >= 1360 * msg.value
                                            require sub_cadf06a9 >= 1360 * msg.value
                                            totalSupply += -1360 * msg.value
                                            sub_cadf06a9 += -1360 * msg.value
                                            balanceOf[address(msg.sender)] += 1360 * msg.value
                        else:
                            if 1660 * msg.value:
                                require totalSupply >= 1660 * msg.value
                                require sub_cadf06a9 >= 1660 * msg.value
                                totalSupply += -1660 * msg.value
                                sub_cadf06a9 += -1660 * msg.value
                                balanceOf[address(msg.sender)] += 1660 * msg.value
                            else:
                                if block.timestamp > 417365 * 3600:
                                    if 1660 * msg.value:
                                        require totalSupply >= 1660 * msg.value
                                        require sub_cadf06a9 >= 1660 * msg.value
                                        totalSupply += -1660 * msg.value
                                        sub_cadf06a9 += -1660 * msg.value
                                        balanceOf[address(msg.sender)] += 1660 * msg.value
                                    else:
                                        if block.timestamp > 417533 * 3600:
                                            require totalSupply >= 1660 * msg.value
                                            require sub_cadf06a9 >= 1660 * msg.value
                                            totalSupply += -1660 * msg.value
                                            sub_cadf06a9 += -1660 * msg.value
                                            balanceOf[address(msg.sender)] += 1660 * msg.value
                                        else:
                                            require totalSupply >= 1360 * msg.value
                                            require sub_cadf06a9 >= 1360 * msg.value
                                            totalSupply += -1360 * msg.value
                                            sub_cadf06a9 += -1360 * msg.value
                                            balanceOf[address(msg.sender)] += 1360 * msg.value
                                else:
                                    if 1500 * msg.value:
                                        require totalSupply >= 1500 * msg.value
                                        require sub_cadf06a9 >= 1500 * msg.value
                                        totalSupply += -1500 * msg.value
                                        sub_cadf06a9 += -1500 * msg.value
                                        balanceOf[address(msg.sender)] += 1500 * msg.value
                                    else:
                                        if block.timestamp > 417533 * 3600:
                                            require totalSupply >= 1500 * msg.value
                                            require sub_cadf06a9 >= 1500 * msg.value
                                            totalSupply += -1500 * msg.value
                                            sub_cadf06a9 += -1500 * msg.value
                                            balanceOf[address(msg.sender)] += 1500 * msg.value
                                        else:
                                            require totalSupply >= 1360 * msg.value
                                            require sub_cadf06a9 >= 1360 * msg.value
                                            totalSupply += -1360 * msg.value
                                            sub_cadf06a9 += -1360 * msg.value
                                            balanceOf[address(msg.sender)] += 1360 * msg.value
                else:
                    if 1875 * msg.value:
                        require totalSupply >= 1875 * msg.value
                        require sub_cadf06a9 >= 1875 * msg.value
                        totalSupply += -1875 * msg.value
                        sub_cadf06a9 += -1875 * msg.value
                        balanceOf[address(msg.sender)] += 1875 * msg.value
                    else:
                        if block.timestamp > 417197 * 3600:
                            if 1875 * msg.value:
                                require totalSupply >= 1875 * msg.value
                                require sub_cadf06a9 >= 1875 * msg.value
                                totalSupply += -1875 * msg.value
                                sub_cadf06a9 += -1875 * msg.value
                                balanceOf[address(msg.sender)] += 1875 * msg.value
                            else:
                                if block.timestamp > 417365 * 3600:
                                    if 1875 * msg.value:
                                        require totalSupply >= 1875 * msg.value
                                        require sub_cadf06a9 >= 1875 * msg.value
                                        totalSupply += -1875 * msg.value
                                        sub_cadf06a9 += -1875 * msg.value
                                        balanceOf[address(msg.sender)] += 1875 * msg.value
                                    else:
                                        if block.timestamp > 417533 * 3600:
                                            require totalSupply >= 1875 * msg.value
                                            require sub_cadf06a9 >= 1875 * msg.value
                                            totalSupply += -1875 * msg.value
                                            sub_cadf06a9 += -1875 * msg.value
                                            balanceOf[address(msg.sender)] += 1875 * msg.value
                                        else:
                                            require totalSupply >= 1360 * msg.value
                                            require sub_cadf06a9 >= 1360 * msg.value
                                            totalSupply += -1360 * msg.value
                                            sub_cadf06a9 += -1360 * msg.value
                                            balanceOf[address(msg.sender)] += 1360 * msg.value
                                else:
                                    if 1500 * msg.value:
                                        require totalSupply >= 1500 * msg.value
                                        require sub_cadf06a9 >= 1500 * msg.value
                                        totalSupply += -1500 * msg.value
                                        sub_cadf06a9 += -1500 * msg.value
                                        balanceOf[address(msg.sender)] += 1500 * msg.value
                                    else:
                                        if block.timestamp > 417533 * 3600:
                                            require totalSupply >= 1500 * msg.value
                                            require sub_cadf06a9 >= 1500 * msg.value
                                            totalSupply += -1500 * msg.value
                                            sub_cadf06a9 += -1500 * msg.value
                                            balanceOf[address(msg.sender)] += 1500 * msg.value
                                        else:
                                            require totalSupply >= 1360 * msg.value
                                            require sub_cadf06a9 >= 1360 * msg.value
                                            totalSupply += -1360 * msg.value
                                            sub_cadf06a9 += -1360 * msg.value
                                            balanceOf[address(msg.sender)] += 1360 * msg.value
                        else:
                            if 1660 * msg.value:
                                require totalSupply >= 1660 * msg.value
                                require sub_cadf06a9 >= 1660 * msg.value
                                totalSupply += -1660 * msg.value
                                sub_cadf06a9 += -1660 * msg.value
                                balanceOf[address(msg.sender)] += 1660 * msg.value
                            else:
                                if block.timestamp > 417365 * 3600:
                                    if 1660 * msg.value:
                                        require totalSupply >= 1660 * msg.value
                                        require sub_cadf06a9 >= 1660 * msg.value
                                        totalSupply += -1660 * msg.value
                                        sub_cadf06a9 += -1660 * msg.value
                                        balanceOf[address(msg.sender)] += 1660 * msg.value
                                    else:
                                        if block.timestamp > 417533 * 3600:
                                            require totalSupply >= 1660 * msg.value
                                            require sub_cadf06a9 >= 1660 * msg.value
                                            totalSupply += -1660 * msg.value
                                            sub_cadf06a9 += -1660 * msg.value
                                            balanceOf[address(msg.sender)] += 1660 * msg.value
                                        else:
                                            require totalSupply >= 1360 * msg.value
                                            require sub_cadf06a9 >= 1360 * msg.value
                                            totalSupply += -1360 * msg.value
                                            sub_cadf06a9 += -1360 * msg.value
                                            balanceOf[address(msg.sender)] += 1360 * msg.value
                                else:
                                    if 1500 * msg.value:
                                        require totalSupply >= 1500 * msg.value
                                        require sub_cadf06a9 >= 1500 * msg.value
                                        totalSupply += -1500 * msg.value
                                        sub_cadf06a9 += -1500 * msg.value
                                        balanceOf[address(msg.sender)] += 1500 * msg.value
                                    else:
                                        if block.timestamp > 417533 * 3600:
                                            require totalSupply >= 1500 * msg.value
                                            require sub_cadf06a9 >= 1500 * msg.value
                                            totalSupply += -1500 * msg.value
                                            sub_cadf06a9 += -1500 * msg.value
                                            balanceOf[address(msg.sender)] += 1500 * msg.value
                                        else:
                                            require totalSupply >= 1360 * msg.value
                                            require sub_cadf06a9 >= 1360 * msg.value
                                            totalSupply += -1360 * msg.value
                                            sub_cadf06a9 += -1360 * msg.value
                                            balanceOf[address(msg.sender)] += 1360 * msg.value
        require stor14
        funder.length++
        if not funder.length <= funder.length + 1:
            idx = 2 * funder.length + 1
            while 2 * funder.length > idx:
                funder[idx].field_0 = 0
                funder[idx].field_256 = 0
                idx = idx + 2
                continue 
    funder[funder.length].field_0 = msg.sender
    funder[funder.length].field_256 = msg.value / stor14
    call creatorAddress with:
       value 900 * msg.value / 1000 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call stor11 with:
       value 100 * msg.value / 1000 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function createTokens() payable {
    require block.timestamp >= 416645 * 3600
    require block.timestamp <= 417533 * 3600
    require msg.value >= stor14
    if block.timestamp <= 416693 * 3600:
        require totalSupply >= 2500 * msg.value
        require sub_99480d77 >= 2500 * msg.value
        totalSupply += -2500 * msg.value
        sub_99480d77 += -2500 * msg.value
        balanceOf[address(msg.sender)] += 2500 * msg.value
        require stor14
        funder.length++
        if not funder.length <= funder.length + 1:
            idx = 2 * funder.length + 1
            while 2 * funder.length > idx:
                funder[idx].field_0 = 0
                funder[idx].field_256 = 0
                idx = idx + 2
                continue 
    else:
        if block.timestamp > 416861 * 3600:
            if block.timestamp > 417029 * 3600:
                if block.timestamp > 417197 * 3600:
                    if block.timestamp > 417365 * 3600:
                        if block.timestamp > 417533 * 3600:
                            require totalSupply >= 0
                            require sub_cadf06a9 >= 0
                        else:
                            require totalSupply >= 1360 * msg.value
                            require sub_cadf06a9 >= 1360 * msg.value
                            totalSupply += -1360 * msg.value
                            sub_cadf06a9 += -1360 * msg.value
                            balanceOf[address(msg.sender)] += 1360 * msg.value
                    else:
                        if 1500 * msg.value:
                            require totalSupply >= 1500 * msg.value
                            require sub_cadf06a9 >= 1500 * msg.value
                            totalSupply += -1500 * msg.value
                            sub_cadf06a9 += -1500 * msg.value
                            balanceOf[address(msg.sender)] += 1500 * msg.value
                        else:
                            if block.timestamp > 417533 * 3600:
                                require totalSupply >= 1500 * msg.value
                                require sub_cadf06a9 >= 1500 * msg.value
                                totalSupply += -1500 * msg.value
                                sub_cadf06a9 += -1500 * msg.value
                                balanceOf[address(msg.sender)] += 1500 * msg.value
                            else:
                                require totalSupply >= 1360 * msg.value
                                require sub_cadf06a9 >= 1360 * msg.value
                                totalSupply += -1360 * msg.value
                                sub_cadf06a9 += -1360 * msg.value
                                balanceOf[address(msg.sender)] += 1360 * msg.value
                else:
                    if 1660 * msg.value:
                        require totalSupply >= 1660 * msg.value
                        require sub_cadf06a9 >= 1660 * msg.value
                        totalSupply += -1660 * msg.value
                        sub_cadf06a9 += -1660 * msg.value
                        balanceOf[address(msg.sender)] += 1660 * msg.value
                    else:
                        if block.timestamp > 417365 * 3600:
                            if 1660 * msg.value:
                                require totalSupply >= 1660 * msg.value
                                require sub_cadf06a9 >= 1660 * msg.value
                                totalSupply += -1660 * msg.value
                                sub_cadf06a9 += -1660 * msg.value
                                balanceOf[address(msg.sender)] += 1660 * msg.value
                            else:
                                if block.timestamp > 417533 * 3600:
                                    require totalSupply >= 1660 * msg.value
                                    require sub_cadf06a9 >= 1660 * msg.value
                                    totalSupply += -1660 * msg.value
                                    sub_cadf06a9 += -1660 * msg.value
                                    balanceOf[address(msg.sender)] += 1660 * msg.value
                                else:
                                    require totalSupply >= 1360 * msg.value
                                    require sub_cadf06a9 >= 1360 * msg.value
                                    totalSupply += -1360 * msg.value
                                    sub_cadf06a9 += -1360 * msg.value
                                    balanceOf[address(msg.sender)] += 1360 * msg.value
                        else:
                            if 1500 * msg.value:
                                require totalSupply >= 1500 * msg.value
                                require sub_cadf06a9 >= 1500 * msg.value
                                totalSupply += -1500 * msg.value
                                sub_cadf06a9 += -1500 * msg.value
                                balanceOf[address(msg.sender)] += 1500 * msg.value
                            else:
                                if block.timestamp > 417533 * 3600:
                                    require totalSupply >= 1500 * msg.value
                                    require sub_cadf06a9 >= 1500 * msg.value
                                    totalSupply += -1500 * msg.value
                                    sub_cadf06a9 += -1500 * msg.value
                                    balanceOf[address(msg.sender)] += 1500 * msg.value
                                else:
                                    require totalSupply >= 1360 * msg.value
                                    require sub_cadf06a9 >= 1360 * msg.value
                                    totalSupply += -1360 * msg.value
                                    sub_cadf06a9 += -1360 * msg.value
                                    balanceOf[address(msg.sender)] += 1360 * msg.value
            else:
                if 1875 * msg.value:
                    require totalSupply >= 1875 * msg.value
                    require sub_cadf06a9 >= 1875 * msg.value
                    totalSupply += -1875 * msg.value
                    sub_cadf06a9 += -1875 * msg.value
                    balanceOf[address(msg.sender)] += 1875 * msg.value
                else:
                    if block.timestamp > 417197 * 3600:
                        if 1875 * msg.value:
                            require totalSupply >= 1875 * msg.value
                            require sub_cadf06a9 >= 1875 * msg.value
                            totalSupply += -1875 * msg.value
                            sub_cadf06a9 += -1875 * msg.value
                            balanceOf[address(msg.sender)] += 1875 * msg.value
                        else:
                            if block.timestamp > 417365 * 3600:
                                if 1875 * msg.value:
                                    require totalSupply >= 1875 * msg.value
                                    require sub_cadf06a9 >= 1875 * msg.value
                                    totalSupply += -1875 * msg.value
                                    sub_cadf06a9 += -1875 * msg.value
                                    balanceOf[address(msg.sender)] += 1875 * msg.value
                                else:
                                    if block.timestamp > 417533 * 3600:
                                        require totalSupply >= 1875 * msg.value
                                        require sub_cadf06a9 >= 1875 * msg.value
                                        totalSupply += -1875 * msg.value
                                        sub_cadf06a9 += -1875 * msg.value
                                        balanceOf[address(msg.sender)] += 1875 * msg.value
                                    else:
                                        require totalSupply >= 1360 * msg.value
                                        require sub_cadf06a9 >= 1360 * msg.value
                                        totalSupply += -1360 * msg.value
                                        sub_cadf06a9 += -1360 * msg.value
                                        balanceOf[address(msg.sender)] += 1360 * msg.value
                            else:
                                if 1500 * msg.value:
                                    require totalSupply >= 1500 * msg.value
                                    require sub_cadf06a9 >= 1500 * msg.value
                                    totalSupply += -1500 * msg.value
                                    sub_cadf06a9 += -1500 * msg.value
                                    balanceOf[address(msg.sender)] += 1500 * msg.value
                                else:
                                    if block.timestamp > 417533 * 3600:
                                        require totalSupply >= 1500 * msg.value
                                        require sub_cadf06a9 >= 1500 * msg.value
                                        totalSupply += -1500 * msg.value
                                        sub_cadf06a9 += -1500 * msg.value
                                        balanceOf[address(msg.sender)] += 1500 * msg.value
                                    else:
                                        require totalSupply >= 1360 * msg.value
                                        require sub_cadf06a9 >= 1360 * msg.value
                                        totalSupply += -1360 * msg.value
                                        sub_cadf06a9 += -1360 * msg.value
                                        balanceOf[address(msg.sender)] += 1360 * msg.value
                    else:
                        if 1660 * msg.value:
                            require totalSupply >= 1660 * msg.value
                            require sub_cadf06a9 >= 1660 * msg.value
                            totalSupply += -1660 * msg.value
                            sub_cadf06a9 += -1660 * msg.value
                            balanceOf[address(msg.sender)] += 1660 * msg.value
                        else:
                            if block.timestamp > 417365 * 3600:
                                if 1660 * msg.value:
                                    require totalSupply >= 1660 * msg.value
                                    require sub_cadf06a9 >= 1660 * msg.value
                                    totalSupply += -1660 * msg.value
                                    sub_cadf06a9 += -1660 * msg.value
                                    balanceOf[address(msg.sender)] += 1660 * msg.value
                                else:
                                    if block.timestamp > 417533 * 3600:
                                        require totalSupply >= 1660 * msg.value
                                        require sub_cadf06a9 >= 1660 * msg.value
                                        totalSupply += -1660 * msg.value
                                        sub_cadf06a9 += -1660 * msg.value
                                        balanceOf[address(msg.sender)] += 1660 * msg.value
                                    else:
                                        require totalSupply >= 1360 * msg.value
                                        require sub_cadf06a9 >= 1360 * msg.value
                                        totalSupply += -1360 * msg.value
                                        sub_cadf06a9 += -1360 * msg.value
                                        balanceOf[address(msg.sender)] += 1360 * msg.value
                            else:
                                if 1500 * msg.value:
                                    require totalSupply >= 1500 * msg.value
                                    require sub_cadf06a9 >= 1500 * msg.value
                                    totalSupply += -1500 * msg.value
                                    sub_cadf06a9 += -1500 * msg.value
                                    balanceOf[address(msg.sender)] += 1500 * msg.value
                                else:
                                    if block.timestamp > 417533 * 3600:
                                        require totalSupply >= 1500 * msg.value
                                        require sub_cadf06a9 >= 1500 * msg.value
                                        totalSupply += -1500 * msg.value
                                        sub_cadf06a9 += -1500 * msg.value
                                        balanceOf[address(msg.sender)] += 1500 * msg.value
                                    else:
                                        require totalSupply >= 1360 * msg.value
                                        require sub_cadf06a9 >= 1360 * msg.value
                                        totalSupply += -1360 * msg.value
                                        sub_cadf06a9 += -1360 * msg.value
                                        balanceOf[address(msg.sender)] += 1360 * msg.value
        else:
            if 2150 * msg.value:
                require totalSupply >= 2150 * msg.value
                require sub_cadf06a9 >= 2150 * msg.value
                totalSupply += -2150 * msg.value
                sub_cadf06a9 += -2150 * msg.value
                balanceOf[address(msg.sender)] += 2150 * msg.value
            else:
                if block.timestamp > 417029 * 3600:
                    if 2150 * msg.value:
                        require totalSupply >= 2150 * msg.value
                        require sub_cadf06a9 >= 2150 * msg.value
                        totalSupply += -2150 * msg.value
                        sub_cadf06a9 += -2150 * msg.value
                        balanceOf[address(msg.sender)] += 2150 * msg.value
                    else:
                        if block.timestamp > 417197 * 3600:
                            if 2150 * msg.value:
                                require totalSupply >= 2150 * msg.value
                                require sub_cadf06a9 >= 2150 * msg.value
                                totalSupply += -2150 * msg.value
                                sub_cadf06a9 += -2150 * msg.value
                                balanceOf[address(msg.sender)] += 2150 * msg.value
                            else:
                                if block.timestamp > 417365 * 3600:
                                    if 2150 * msg.value:
                                        require totalSupply >= 2150 * msg.value
                                        require sub_cadf06a9 >= 2150 * msg.value
                                        totalSupply += -2150 * msg.value
                                        sub_cadf06a9 += -2150 * msg.value
                                        balanceOf[address(msg.sender)] += 2150 * msg.value
                                    else:
                                        if block.timestamp > 417533 * 3600:
                                            require totalSupply >= 2150 * msg.value
                                            require sub_cadf06a9 >= 2150 * msg.value
                                            totalSupply += -2150 * msg.value
                                            sub_cadf06a9 += -2150 * msg.value
                                            balanceOf[address(msg.sender)] += 2150 * msg.value
                                        else:
                                            require totalSupply >= 1360 * msg.value
                                            require sub_cadf06a9 >= 1360 * msg.value
                                            totalSupply += -1360 * msg.value
                                            sub_cadf06a9 += -1360 * msg.value
                                            balanceOf[address(msg.sender)] += 1360 * msg.value
                                else:
                                    if 1500 * msg.value:
                                        require totalSupply >= 1500 * msg.value
                                        require sub_cadf06a9 >= 1500 * msg.value
                                        totalSupply += -1500 * msg.value
                                        sub_cadf06a9 += -1500 * msg.value
                                        balanceOf[address(msg.sender)] += 1500 * msg.value
                                    else:
                                        if block.timestamp > 417533 * 3600:
                                            require totalSupply >= 1500 * msg.value
                                            require sub_cadf06a9 >= 1500 * msg.value
                                            totalSupply += -1500 * msg.value
                                            sub_cadf06a9 += -1500 * msg.value
                                            balanceOf[address(msg.sender)] += 1500 * msg.value
                                        else:
                                            require totalSupply >= 1360 * msg.value
                                            require sub_cadf06a9 >= 1360 * msg.value
                                            totalSupply += -1360 * msg.value
                                            sub_cadf06a9 += -1360 * msg.value
                                            balanceOf[address(msg.sender)] += 1360 * msg.value
                        else:
                            if 1660 * msg.value:
                                require totalSupply >= 1660 * msg.value
                                require sub_cadf06a9 >= 1660 * msg.value
                                totalSupply += -1660 * msg.value
                                sub_cadf06a9 += -1660 * msg.value
                                balanceOf[address(msg.sender)] += 1660 * msg.value
                            else:
                                if block.timestamp > 417365 * 3600:
                                    if 1660 * msg.value:
                                        require totalSupply >= 1660 * msg.value
                                        require sub_cadf06a9 >= 1660 * msg.value
                                        totalSupply += -1660 * msg.value
                                        sub_cadf06a9 += -1660 * msg.value
                                        balanceOf[address(msg.sender)] += 1660 * msg.value
                                    else:
                                        if block.timestamp > 417533 * 3600:
                                            require totalSupply >= 1660 * msg.value
                                            require sub_cadf06a9 >= 1660 * msg.value
                                            totalSupply += -1660 * msg.value
                                            sub_cadf06a9 += -1660 * msg.value
                                            balanceOf[address(msg.sender)] += 1660 * msg.value
                                        else:
                                            require totalSupply >= 1360 * msg.value
                                            require sub_cadf06a9 >= 1360 * msg.value
                                            totalSupply += -1360 * msg.value
                                            sub_cadf06a9 += -1360 * msg.value
                                            balanceOf[address(msg.sender)] += 1360 * msg.value
                                else:
                                    if 1500 * msg.value:
                                        require totalSupply >= 1500 * msg.value
                                        require sub_cadf06a9 >= 1500 * msg.value
                                        totalSupply += -1500 * msg.value
                                        sub_cadf06a9 += -1500 * msg.value
                                        balanceOf[address(msg.sender)] += 1500 * msg.value
                                    else:
                                        if block.timestamp > 417533 * 3600:
                                            require totalSupply >= 1500 * msg.value
                                            require sub_cadf06a9 >= 1500 * msg.value
                                            totalSupply += -1500 * msg.value
                                            sub_cadf06a9 += -1500 * msg.value
                                            balanceOf[address(msg.sender)] += 1500 * msg.value
                                        else:
                                            require totalSupply >= 1360 * msg.value
                                            require sub_cadf06a9 >= 1360 * msg.value
                                            totalSupply += -1360 * msg.value
                                            sub_cadf06a9 += -1360 * msg.value
                                            balanceOf[address(msg.sender)] += 1360 * msg.value
                else:
                    if 1875 * msg.value:
                        require totalSupply >= 1875 * msg.value
                        require sub_cadf06a9 >= 1875 * msg.value
                        totalSupply += -1875 * msg.value
                        sub_cadf06a9 += -1875 * msg.value
                        balanceOf[address(msg.sender)] += 1875 * msg.value
                    else:
                        if block.timestamp > 417197 * 3600:
                            if 1875 * msg.value:
                                require totalSupply >= 1875 * msg.value
                                require sub_cadf06a9 >= 1875 * msg.value
                                totalSupply += -1875 * msg.value
                                sub_cadf06a9 += -1875 * msg.value
                                balanceOf[address(msg.sender)] += 1875 * msg.value
                            else:
                                if block.timestamp > 417365 * 3600:
                                    if 1875 * msg.value:
                                        require totalSupply >= 1875 * msg.value
                                        require sub_cadf06a9 >= 1875 * msg.value
                                        totalSupply += -1875 * msg.value
                                        sub_cadf06a9 += -1875 * msg.value
                                        balanceOf[address(msg.sender)] += 1875 * msg.value
                                    else:
                                        if block.timestamp > 417533 * 3600:
                                            require totalSupply >= 1875 * msg.value
                                            require sub_cadf06a9 >= 1875 * msg.value
                                            totalSupply += -1875 * msg.value
                                            sub_cadf06a9 += -1875 * msg.value
                                            balanceOf[address(msg.sender)] += 1875 * msg.value
                                        else:
                                            require totalSupply >= 1360 * msg.value
                                            require sub_cadf06a9 >= 1360 * msg.value
                                            totalSupply += -1360 * msg.value
                                            sub_cadf06a9 += -1360 * msg.value
                                            balanceOf[address(msg.sender)] += 1360 * msg.value
                                else:
                                    if 1500 * msg.value:
                                        require totalSupply >= 1500 * msg.value
                                        require sub_cadf06a9 >= 1500 * msg.value
                                        totalSupply += -1500 * msg.value
                                        sub_cadf06a9 += -1500 * msg.value
                                        balanceOf[address(msg.sender)] += 1500 * msg.value
                                    else:
                                        if block.timestamp > 417533 * 3600:
                                            require totalSupply >= 1500 * msg.value
                                            require sub_cadf06a9 >= 1500 * msg.value
                                            totalSupply += -1500 * msg.value
                                            sub_cadf06a9 += -1500 * msg.value
                                            balanceOf[address(msg.sender)] += 1500 * msg.value
                                        else:
                                            require totalSupply >= 1360 * msg.value
                                            require sub_cadf06a9 >= 1360 * msg.value
                                            totalSupply += -1360 * msg.value
                                            sub_cadf06a9 += -1360 * msg.value
                                            balanceOf[address(msg.sender)] += 1360 * msg.value
                        else:
                            if 1660 * msg.value:
                                require totalSupply >= 1660 * msg.value
                                require sub_cadf06a9 >= 1660 * msg.value
                                totalSupply += -1660 * msg.value
                                sub_cadf06a9 += -1660 * msg.value
                                balanceOf[address(msg.sender)] += 1660 * msg.value
                            else:
                                if block.timestamp > 417365 * 3600:
                                    if 1660 * msg.value:
                                        require totalSupply >= 1660 * msg.value
                                        require sub_cadf06a9 >= 1660 * msg.value
                                        totalSupply += -1660 * msg.value
                                        sub_cadf06a9 += -1660 * msg.value
                                        balanceOf[address(msg.sender)] += 1660 * msg.value
                                    else:
                                        if block.timestamp > 417533 * 3600:
                                            require totalSupply >= 1660 * msg.value
                                            require sub_cadf06a9 >= 1660 * msg.value
                                            totalSupply += -1660 * msg.value
                                            sub_cadf06a9 += -1660 * msg.value
                                            balanceOf[address(msg.sender)] += 1660 * msg.value
                                        else:
                                            require totalSupply >= 1360 * msg.value
                                            require sub_cadf06a9 >= 1360 * msg.value
                                            totalSupply += -1360 * msg.value
                                            sub_cadf06a9 += -1360 * msg.value
                                            balanceOf[address(msg.sender)] += 1360 * msg.value
                                else:
                                    if 1500 * msg.value:
                                        require totalSupply >= 1500 * msg.value
                                        require sub_cadf06a9 >= 1500 * msg.value
                                        totalSupply += -1500 * msg.value
                                        sub_cadf06a9 += -1500 * msg.value
                                        balanceOf[address(msg.sender)] += 1500 * msg.value
                                    else:
                                        if block.timestamp > 417533 * 3600:
                                            require totalSupply >= 1500 * msg.value
                                            require sub_cadf06a9 >= 1500 * msg.value
                                            totalSupply += -1500 * msg.value
                                            sub_cadf06a9 += -1500 * msg.value
                                            balanceOf[address(msg.sender)] += 1500 * msg.value
                                        else:
                                            require totalSupply >= 1360 * msg.value
                                            require sub_cadf06a9 >= 1360 * msg.value
                                            totalSupply += -1360 * msg.value
                                            sub_cadf06a9 += -1360 * msg.value
                                            balanceOf[address(msg.sender)] += 1360 * msg.value
        require stor14
        funder.length++
        if not funder.length <= funder.length + 1:
            idx = 2 * funder.length + 1
            while 2 * funder.length > idx:
                funder[idx].field_0 = 0
                funder[idx].field_256 = 0
                idx = idx + 2
                continue 
    funder[funder.length].field_0 = msg.sender
    funder[funder.length].field_256 = msg.value / stor14
    call creatorAddress with:
       value 900 * msg.value / 1000 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call stor11 with:
       value 100 * msg.value / 1000 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
