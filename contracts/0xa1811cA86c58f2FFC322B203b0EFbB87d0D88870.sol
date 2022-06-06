contract main {




// =====================  Runtime code  =====================


#
#  - reinvest()
#
const name = 'Pantheon PRO'

const decimals = 18

const symbol = 'PAN'


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 totalSupply;
uint256 stor10;
mapping of struct balanceOf;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)].field_256
}

function buyPrice() {
    return (stor8 / 10^18)
}

function sellPrice() {
    if 10000000000 * 10^18 > stor8:
        revert with 0, 'sub failed'
    return (stor8 - 10000000000 * 10^18 / 10^18)
}

function donate() payable {
    if stor10 + msg.value < stor10:
        revert with 0, 'add failed'
    stor10 += msg.value
    emit Donation(msg.value, block.timestamp, msg.sender);
}

function dividendsOf(address arg1) {
    if balanceOf[address(arg1)].field_512 + balanceOf[address(arg1)].field_768 < balanceOf[address(arg1)].field_512:
        revert with 0, 'add failed'
    require balanceOf[address(arg1)].field_512 + balanceOf[address(arg1)].field_768 >= 0
    if totalSupply <= 0:
        if balanceOf[address(arg1)].field_1024 > 0:
            if balanceOf[address(arg1)].field_512 + balanceOf[address(arg1)].field_768 - balanceOf[address(arg1)].field_1024 > balanceOf[address(arg1)].field_512 + balanceOf[address(arg1)].field_768:
                revert with 0, 'sub failed'
        else:
            if balanceOf[address(arg1)].field_1024 >= 0:
                require balanceOf[address(arg1)].field_512 + balanceOf[address(arg1)].field_768 >= 0
                return (balanceOf[address(arg1)].field_512 + balanceOf[address(arg1)].field_768)
            if balanceOf[address(arg1)].field_512 + balanceOf[address(arg1)].field_768 - balanceOf[address(arg1)].field_1024 < balanceOf[address(arg1)].field_512 + balanceOf[address(arg1)].field_768:
                revert with 0, 'add failed'
        require balanceOf[address(arg1)].field_512 + balanceOf[address(arg1)].field_768 - balanceOf[address(arg1)].field_1024 >= 0
        return (balanceOf[address(arg1)].field_512 + balanceOf[address(arg1)].field_768 - balanceOf[address(arg1)].field_1024)
    if not stor10:
        require totalSupply
        if balanceOf[address(arg1)].field_512 + balanceOf[address(arg1)].field_768 + (0 / totalSupply) < balanceOf[address(arg1)].field_512 + balanceOf[address(arg1)].field_768:
            revert with 0, 'add failed'
        if balanceOf[address(arg1)].field_1024 > 0:
            if balanceOf[address(arg1)].field_512 + balanceOf[address(arg1)].field_768 + (0 / totalSupply) - balanceOf[address(arg1)].field_1024 > balanceOf[address(arg1)].field_512 + balanceOf[address(arg1)].field_768 + (0 / totalSupply):
                revert with 0, 'sub failed'
        else:
            if balanceOf[address(arg1)].field_1024 >= 0:
                require balanceOf[address(arg1)].field_512 + balanceOf[address(arg1)].field_768 + (0 / totalSupply) >= 0
                return (balanceOf[address(arg1)].field_512 + balanceOf[address(arg1)].field_768 + (0 / totalSupply))
            if balanceOf[address(arg1)].field_512 + balanceOf[address(arg1)].field_768 + (0 / totalSupply) - balanceOf[address(arg1)].field_1024 < balanceOf[address(arg1)].field_512 + balanceOf[address(arg1)].field_768 + (0 / totalSupply):
                revert with 0, 'add failed'
        require balanceOf[address(arg1)].field_512 + balanceOf[address(arg1)].field_768 + (0 / totalSupply) - balanceOf[address(arg1)].field_1024 >= 0
        return (balanceOf[address(arg1)].field_512 + balanceOf[address(arg1)].field_768 + (0 / totalSupply) - balanceOf[address(arg1)].field_1024)
    require stor10
    if stor10 * balanceOf[address(arg1)].field_256 / stor10 != balanceOf[address(arg1)].field_256:
        revert with 0, 'mul failed'
    require totalSupply
    if balanceOf[address(arg1)].field_512 + balanceOf[address(arg1)].field_768 + (stor10 * balanceOf[address(arg1)].field_256 / totalSupply) < balanceOf[address(arg1)].field_512 + balanceOf[address(arg1)].field_768:
        revert with 0, 'add failed'
    if balanceOf[address(arg1)].field_1024 > 0:
        if balanceOf[address(arg1)].field_512 + balanceOf[address(arg1)].field_768 + (stor10 * balanceOf[address(arg1)].field_256 / totalSupply) - balanceOf[address(arg1)].field_1024 > balanceOf[address(arg1)].field_512 + balanceOf[address(arg1)].field_768 + (stor10 * balanceOf[address(arg1)].field_256 / totalSupply):
            revert with 0, 'sub failed'
    else:
        if balanceOf[address(arg1)].field_1024 >= 0:
            require balanceOf[address(arg1)].field_512 + balanceOf[address(arg1)].field_768 + (stor10 * balanceOf[address(arg1)].field_256 / totalSupply) >= 0
            return (balanceOf[address(arg1)].field_512 + balanceOf[address(arg1)].field_768 + (stor10 * balanceOf[address(arg1)].field_256 / totalSupply))
        if balanceOf[address(arg1)].field_512 + balanceOf[address(arg1)].field_768 + (stor10 * balanceOf[address(arg1)].field_256 / totalSupply) - balanceOf[address(arg1)].field_1024 < balanceOf[address(arg1)].field_512 + balanceOf[address(arg1)].field_768 + (stor10 * balanceOf[address(arg1)].field_256 / totalSupply):
            revert with 0, 'add failed'
    require balanceOf[address(arg1)].field_512 + balanceOf[address(arg1)].field_768 + (stor10 * balanceOf[address(arg1)].field_256 / totalSupply) - balanceOf[address(arg1)].field_1024 >= 0
    return (balanceOf[address(arg1)].field_512 + balanceOf[address(arg1)].field_768 + (stor10 * balanceOf[address(arg1)].field_256 / totalSupply) - balanceOf[address(arg1)].field_1024)
}

function expectedFunds(uint256 arg1, bool arg2) {
    if not arg1:
        return 0
    if not totalSupply:
        return 0
    if 10000000000 * 10^18 > stor8:
        revert with 0, 'sub failed'
    if arg1 <= totalSupply:
        if 10000000000 * 10^18 * arg1 / 10000000000 * 10^18 != arg1:
            revert with 0, 'mul failed'
        if stor8 < stor8 - 10000000000 * 10^18:
            revert with 0, 'add failed'
        if 10000000000 * 10^18 * arg1 / 10^18 > stor8:
            revert with 0, 'sub failed'
        if (2 * stor8) - (10000000000 * 10^18 * arg1 / 10^18) < stor8:
            revert with 0, 'add failed'
        if not (2 * stor8) + -(10000000000 * 10^18 * arg1 / 10^18) - 10000000000 * 10^18:
            return 0
        require (2 * stor8) + -(10000000000 * 10^18 * arg1 / 10^18) - 10000000000 * 10^18
        if (-10000000000 * 10^18 * arg1) + (2 * stor8 * arg1) - (10000000000 * 10^18 * arg1 / 10^18 * arg1) / (2 * stor8) + -(10000000000 * 10^18 * arg1 / 10^18) - 10000000000 * 10^18 != arg1:
            revert with 0, 'mul failed'
        if not arg2:
            return ((-10000000000 * 10^18 * arg1) + (2 * stor8 * arg1) - (10000000000 * 10^18 * arg1 / 10^18 * arg1) / 2 * 10^18 / 10^18)
        if not (-10000000000 * 10^18 * arg1) + (2 * stor8 * arg1) - (10000000000 * 10^18 * arg1 / 10^18 * arg1) / 2 * 10^18 / 10^18:
            return 0
        require (-10000000000 * 10^18 * arg1) + (2 * stor8 * arg1) - (10000000000 * 10^18 * arg1 / 10^18 * arg1) / 2 * 10^18 / 10^18
        if (-10000000000 * 10^18 * arg1) + (2 * stor8 * arg1) - (10000000000 * 10^18 * arg1 / 10^18 * arg1) / 2 * 10^18 / 10^18 * stor2 / (-10000000000 * 10^18 * arg1) + (2 * stor8 * arg1) - (10000000000 * 10^18 * arg1 / 10^18 * arg1) / 2 * 10^18 / 10^18 != stor2:
            revert with 0, 'mul failed'
        require stor3
        if (-10000000000 * 10^18 * arg1) + (2 * stor8 * arg1) - (10000000000 * 10^18 * arg1 / 10^18 * arg1) / 2 * 10^18 / 10^18 * stor2 / stor3 > (-10000000000 * 10^18 * arg1) + (2 * stor8 * arg1) - (10000000000 * 10^18 * arg1 / 10^18 * arg1) / 2 * 10^18 / 10^18:
            revert with 0, 'sub failed'
        return (((-10000000000 * 10^18 * arg1) + (2 * stor8 * arg1) - (10000000000 * 10^18 * arg1 / 10^18 * arg1) / 2 * 10^18 / 10^18) - ((-10000000000 * 10^18 * arg1) + (2 * stor8 * arg1) - (10000000000 * 10^18 * arg1 / 10^18 * arg1) / 2 * 10^18 / 10^18 * stor2 / stor3))
    if 10000000000 * 10^18 * totalSupply / 10000000000 * 10^18 != totalSupply:
        revert with 0, 'mul failed'
    if stor8 < stor8 - 10000000000 * 10^18:
        revert with 0, 'add failed'
    if 10000000000 * 10^18 * totalSupply / 10^18 > stor8:
        revert with 0, 'sub failed'
    if (2 * stor8) - (10000000000 * 10^18 * totalSupply / 10^18) < stor8:
        revert with 0, 'add failed'
    if not (2 * stor8) + -(10000000000 * 10^18 * totalSupply / 10^18) - 10000000000 * 10^18:
        return 0
    require (2 * stor8) + -(10000000000 * 10^18 * totalSupply / 10^18) - 10000000000 * 10^18
    if (-10000000000 * 10^18 * totalSupply) + (2 * stor8 * totalSupply) - (10000000000 * 10^18 * totalSupply / 10^18 * totalSupply) / (2 * stor8) + -(10000000000 * 10^18 * totalSupply / 10^18) - 10000000000 * 10^18 != totalSupply:
        revert with 0, 'mul failed'
    if not arg2:
        return ((-10000000000 * 10^18 * totalSupply) + (2 * stor8 * totalSupply) - (10000000000 * 10^18 * totalSupply / 10^18 * totalSupply) / 2 * 10^18 / 10^18)
    if not (-10000000000 * 10^18 * totalSupply) + (2 * stor8 * totalSupply) - (10000000000 * 10^18 * totalSupply / 10^18 * totalSupply) / 2 * 10^18 / 10^18:
        return 0
    require (-10000000000 * 10^18 * totalSupply) + (2 * stor8 * totalSupply) - (10000000000 * 10^18 * totalSupply / 10^18 * totalSupply) / 2 * 10^18 / 10^18
    if (-10000000000 * 10^18 * totalSupply) + (2 * stor8 * totalSupply) - (10000000000 * 10^18 * totalSupply / 10^18 * totalSupply) / 2 * 10^18 / 10^18 * stor2 / (-10000000000 * 10^18 * totalSupply) + (2 * stor8 * totalSupply) - (10000000000 * 10^18 * totalSupply / 10^18 * totalSupply) / 2 * 10^18 / 10^18 != stor2:
        revert with 0, 'mul failed'
    require stor3
    if (-10000000000 * 10^18 * totalSupply) + (2 * stor8 * totalSupply) - (10000000000 * 10^18 * totalSupply / 10^18 * totalSupply) / 2 * 10^18 / 10^18 * stor2 / stor3 > (-10000000000 * 10^18 * totalSupply) + (2 * stor8 * totalSupply) - (10000000000 * 10^18 * totalSupply / 10^18 * totalSupply) / 2 * 10^18 / 10^18:
        revert with 0, 'sub failed'
    return (((-10000000000 * 10^18 * totalSupply) + (2 * stor8 * totalSupply) - (10000000000 * 10^18 * totalSupply / 10^18 * totalSupply) / 2 * 10^18 / 10^18) - ((-10000000000 * 10^18 * totalSupply) + (2 * stor8 * totalSupply) - (10000000000 * 10^18 * totalSupply / 10^18 * totalSupply) / 2 * 10^18 / 10^18 * stor2 / stor3))
}

function sell(uint256 arg1) {
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount of tokens must be greater than zero'
    if arg1 > balanceOf[address(msg.sender)].field_256:
        revert with 0, 'You have not enough tokens'
    if 10000000000 * 10^18 > stor8:
        revert with 0, 'sub failed'
    if 10000000000 * 10^18 * arg1 / 10000000000 * 10^18 != arg1:
        revert with 0, 'mul failed'
    if stor8 < stor8 - 10000000000 * 10^18:
        revert with 0, 'add failed'
    if 10000000000 * 10^18 * arg1 / 10^18 > stor8:
        revert with 0, 'sub failed'
    if (2 * stor8) - (10000000000 * 10^18 * arg1 / 10^18) < stor8:
        revert with 0, 'add failed'
    if not (2 * stor8) + -(10000000000 * 10^18 * arg1 / 10^18) - 10000000000 * 10^18:
        revert with 0, 'Insufficient tokens to do that'
    require (2 * stor8) + -(10000000000 * 10^18 * arg1 / 10^18) - 10000000000 * 10^18
    if (-10000000000 * 10^18 * arg1) + (2 * stor8 * arg1) - (10000000000 * 10^18 * arg1 / 10^18 * arg1) / (2 * stor8) + -(10000000000 * 10^18 * arg1 / 10^18) - 10000000000 * 10^18 != arg1:
        revert with 0, 'mul failed'
    if not (-10000000000 * 10^18 * arg1) + (2 * stor8 * arg1) - (10000000000 * 10^18 * arg1 / 10^18 * arg1) / 2 * 10^18 / 10^18:
        revert with 0, 'Insufficient tokens to do that'
    stor8 -= 10000000000 * 10^18 * arg1 / 10^18
    require (-10000000000 * 10^18 * arg1) + (2 * stor8 * arg1) - (10000000000 * 10^18 * arg1 / 10^18 * arg1) / 2 * 10^18 / 10^18
    if (-10000000000 * 10^18 * arg1) + (2 * stor8 * arg1) - (10000000000 * 10^18 * arg1 / 10^18 * arg1) / 2 * 10^18 / 10^18 * stor2 / (-10000000000 * 10^18 * arg1) + (2 * stor8 * arg1) - (10000000000 * 10^18 * arg1 / 10^18 * arg1) / 2 * 10^18 / 10^18 != stor2:
        revert with 0, 'mul failed'
    require stor3
    if (-10000000000 * 10^18 * arg1) + (2 * stor8 * arg1) - (10000000000 * 10^18 * arg1 / 10^18 * arg1) / 2 * 10^18 / 10^18 * stor2 / stor3 > (-10000000000 * 10^18 * arg1) + (2 * stor8 * arg1) - (10000000000 * 10^18 * arg1 / 10^18 * arg1) / 2 * 10^18 / 10^18:
        revert with 0, 'sub failed'
    if not (-10000000000 * 10^18 * arg1) + (2 * stor8 * arg1) - (10000000000 * 10^18 * arg1 / 10^18 * arg1) / 2 * 10^18 / 10^18 * stor2 / stor3:
        revert with 0, 'Insufficient tokens to do that'
    if totalSupply != arg1:
        if arg1 > totalSupply:
            revert with 0, 'sub failed'
        if not stor10:
            require totalSupply
            stor10 = 0 / totalSupply
        else:
            require stor10
            if (totalSupply * stor10) - (arg1 * stor10) / stor10 != totalSupply - arg1:
                revert with 0, 'mul failed'
            require totalSupply
            stor10 = (totalSupply * stor10) - (arg1 * stor10) / totalSupply
        if arg1 > totalSupply:
            revert with 0, 'sub failed'
        totalSupply -= arg1
        if arg1 > balanceOf[address(msg.sender)].field_256:
            revert with 0, 'sub failed'
        balanceOf[address(msg.sender)].field_256 -= arg1
        if totalSupply > 0:
            if not arg1:
                require totalSupply
                if balanceOf[address(msg.sender)].field_1024 - (0 / totalSupply) > balanceOf[address(msg.sender)].field_1024:
                    revert with 0, 'sub failed'
                balanceOf[address(msg.sender)].field_1024 -= 0 / totalSupply
            else:
                require arg1
                if arg1 * stor10 / arg1 != stor10:
                    revert with 0, 'mul failed'
                require totalSupply
                if balanceOf[address(msg.sender)].field_1024 - (arg1 * stor10 / totalSupply) > balanceOf[address(msg.sender)].field_1024:
                    revert with 0, 'sub failed'
                balanceOf[address(msg.sender)].field_1024 -= arg1 * stor10 / totalSupply
    else:
        if not stor10:
            require totalSupply
            if arg1 > totalSupply:
                revert with 0, 'sub failed'
            if not stor10:
                require totalSupply
                stor10 = 0 / totalSupply
            else:
                require stor10
                if (totalSupply * stor10) - (arg1 * stor10) / stor10 != totalSupply - arg1:
                    revert with 0, 'mul failed'
                require totalSupply
                stor10 = (totalSupply * stor10) - (arg1 * stor10) / totalSupply
            if arg1 > totalSupply:
                revert with 0, 'sub failed'
            totalSupply -= arg1
            if arg1 > balanceOf[address(msg.sender)].field_256:
                revert with 0, 'sub failed'
            balanceOf[address(msg.sender)].field_256 -= arg1
            if totalSupply <= 0:
                if 0 / totalSupply:
                    if balanceOf[address(msg.sender)].field_1024 - (0 / totalSupply) > balanceOf[address(msg.sender)].field_1024:
                        revert with 0, 'sub failed'
                    balanceOf[address(msg.sender)].field_1024 -= 0 / totalSupply
            else:
                if not arg1:
                    require totalSupply
                    if balanceOf[address(msg.sender)].field_1024 - (0 / totalSupply) > balanceOf[address(msg.sender)].field_1024:
                        revert with 0, 'sub failed'
                    balanceOf[address(msg.sender)].field_1024 -= 0 / totalSupply
                else:
                    require arg1
                    if arg1 * stor10 / arg1 != stor10:
                        revert with 0, 'mul failed'
                    require totalSupply
                    if balanceOf[address(msg.sender)].field_1024 - (arg1 * stor10 / totalSupply) > balanceOf[address(msg.sender)].field_1024:
                        revert with 0, 'sub failed'
                    balanceOf[address(msg.sender)].field_1024 -= arg1 * stor10 / totalSupply
        else:
            require stor10
            if stor10 * balanceOf[address(msg.sender)].field_256 / stor10 != balanceOf[address(msg.sender)].field_256:
                revert with 0, 'mul failed'
            require totalSupply
            if arg1 > totalSupply:
                revert with 0, 'sub failed'
            if not stor10:
                require totalSupply
                stor10 = 0 / totalSupply
            else:
                require stor10
                if (totalSupply * stor10) - (arg1 * stor10) / stor10 != totalSupply - arg1:
                    revert with 0, 'mul failed'
                require totalSupply
                stor10 = (totalSupply * stor10) - (arg1 * stor10) / totalSupply
            if arg1 > totalSupply:
                revert with 0, 'sub failed'
            totalSupply -= arg1
            if arg1 > balanceOf[address(msg.sender)].field_256:
                revert with 0, 'sub failed'
            balanceOf[address(msg.sender)].field_256 -= arg1
            if totalSupply <= 0:
                if stor10 * balanceOf[address(msg.sender)].field_256 / totalSupply:
                    if balanceOf[address(msg.sender)].field_1024 - (stor10 * balanceOf[address(msg.sender)].field_256 / totalSupply) > balanceOf[address(msg.sender)].field_1024:
                        revert with 0, 'sub failed'
                    balanceOf[address(msg.sender)].field_1024 -= stor10 * balanceOf[address(msg.sender)].field_256 / totalSupply
            else:
                if not arg1:
                    require totalSupply
                    if balanceOf[address(msg.sender)].field_1024 - (0 / totalSupply) > balanceOf[address(msg.sender)].field_1024:
                        revert with 0, 'sub failed'
                    balanceOf[address(msg.sender)].field_1024 -= 0 / totalSupply
                else:
                    require arg1
                    if arg1 * stor10 / arg1 != stor10:
                        revert with 0, 'mul failed'
                    require totalSupply
                    if balanceOf[address(msg.sender)].field_1024 - (arg1 * stor10 / totalSupply) > balanceOf[address(msg.sender)].field_1024:
                        revert with 0, 'sub failed'
                    balanceOf[address(msg.sender)].field_1024 -= arg1 * stor10 / totalSupply
    if balanceOf[address(msg.sender)].field_512 + ((-10000000000 * 10^18 * arg1) + (2 * stor8 * arg1) - (10000000000 * 10^18 * arg1 / 10^18 * arg1) / 2 * 10^18 / 10^18) - ((-10000000000 * 10^18 * arg1) + (2 * stor8 * arg1) - (10000000000 * 10^18 * arg1 / 10^18 * arg1) / 2 * 10^18 / 10^18 * stor2 / stor3) < balanceOf[address(msg.sender)].field_512:
        revert with 0, 'add failed'
    balanceOf[address(msg.sender)].field_512 = balanceOf[address(msg.sender)].field_512 + ((-10000000000 * 10^18 * arg1) + (2 * stor8 * arg1) - (10000000000 * 10^18 * arg1 / 10^18 * arg1) / 2 * 10^18 / 10^18) - ((-10000000000 * 10^18 * arg1) + (2 * stor8 * arg1) - (10000000000 * 10^18 * arg1 / 10^18 * arg1) / 2 * 10^18 / 10^18 * stor2 / stor3)
    if stor10 + ((-10000000000 * 10^18 * arg1) + (2 * stor8 * arg1) - (10000000000 * 10^18 * arg1 / 10^18 * arg1) / 2 * 10^18 / 10^18 * stor2 / stor3) < stor10:
        revert with 0, 'add failed'
    stor10 += (-10000000000 * 10^18 * arg1) + (2 * stor8 * arg1) - (10000000000 * 10^18 * arg1 / 10^18 * arg1) / 2 * 10^18 / 10^18 * stor2 / stor3
    emit Selling(arg1, (-10000000000 * 10^18 * arg1) + (2 * stor8 * arg1) - (10000000000 * 10^18 * arg1 / 10^18 * arg1) / 2 * 10^18 / 10^18, stor8 / 10^18, block.timestamp, msg.sender);
}

function transfer(address arg1, uint256 arg2) {
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount of tokens must be greater than zero'
    if arg2 > balanceOf[address(msg.sender)].field_256:
        revert with 0, 'You have not enough tokens'
    if arg1 == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You cannot transfer tokens to yourself'
    if not arg2:
        revert with 0, 'Insufficient tokens to do that'
    require arg2
    if arg2 * stor4 / arg2 != stor4:
        revert with 0, 'mul failed'
    require stor5
    if arg2 * stor4 / stor5 > arg2:
        revert with 0, 'sub failed'
    if not arg2 * stor4 / stor5:
        revert with 0, 'Insufficient tokens to do that'
    if 10000000000 * 10^18 > stor8:
        revert with 0, 'sub failed'
    if 10000000000 * 10^18 * arg2 * stor4 / stor5 / 10000000000 * 10^18 != arg2 * stor4 / stor5:
        revert with 0, 'mul failed'
    if stor8 < stor8 - 10000000000 * 10^18:
        revert with 0, 'add failed'
    if 10000000000 * 10^18 * arg2 * stor4 / stor5 / 10^18 > stor8:
        revert with 0, 'sub failed'
    if (2 * stor8) - (10000000000 * 10^18 * arg2 * stor4 / stor5 / 10^18) < stor8:
        revert with 0, 'add failed'
    if not (2 * stor8) + -(10000000000 * 10^18 * arg2 * stor4 / stor5 / 10^18) - 10000000000 * 10^18:
        revert with 0, 'Insufficient tokens to do that'
    require (2 * stor8) + -(10000000000 * 10^18 * arg2 * stor4 / stor5 / 10^18) - 10000000000 * 10^18
    if (-10000000000 * 10^18 * arg2 * stor4 / stor5) + (2 * stor8 * arg2 * stor4 / stor5) - (10000000000 * 10^18 * arg2 * stor4 / stor5 / 10^18 * arg2 * stor4 / stor5) / (2 * stor8) + -(10000000000 * 10^18 * arg2 * stor4 / stor5 / 10^18) - 10000000000 * 10^18 != arg2 * stor4 / stor5:
        revert with 0, 'mul failed'
    if not (-10000000000 * 10^18 * arg2 * stor4 / stor5) + (2 * stor8 * arg2 * stor4 / stor5) - (10000000000 * 10^18 * arg2 * stor4 / stor5 / 10^18 * arg2 * stor4 / stor5) / 2 * 10^18 / 10^18:
        revert with 0, 'Insufficient tokens to do that'
    stor8 -= 10000000000 * 10^18 * arg2 * stor4 / stor5 / 10^18
    if totalSupply != arg2:
        if arg2 > totalSupply:
            revert with 0, 'sub failed'
        if not stor10:
            require totalSupply
            stor10 = 0 / totalSupply
        else:
            require stor10
            if (totalSupply * stor10) - (arg2 * stor10) / stor10 != totalSupply - arg2:
                revert with 0, 'mul failed'
            require totalSupply
            stor10 = (totalSupply * stor10) - (arg2 * stor10) / totalSupply
        if arg2 > totalSupply:
            revert with 0, 'sub failed'
        totalSupply -= arg2
        if arg2 > balanceOf[address(msg.sender)].field_256:
            revert with 0, 'sub failed'
        balanceOf[address(msg.sender)].field_256 -= arg2
        if totalSupply > 0:
            if not arg2:
                require totalSupply
                if balanceOf[address(msg.sender)].field_1024 - (0 / totalSupply) > balanceOf[address(msg.sender)].field_1024:
                    revert with 0, 'sub failed'
                balanceOf[address(msg.sender)].field_1024 -= 0 / totalSupply
            else:
                require arg2
                if arg2 * stor10 / arg2 != stor10:
                    revert with 0, 'mul failed'
                require totalSupply
                if balanceOf[address(msg.sender)].field_1024 - (arg2 * stor10 / totalSupply) > balanceOf[address(msg.sender)].field_1024:
                    revert with 0, 'sub failed'
                balanceOf[address(msg.sender)].field_1024 -= arg2 * stor10 / totalSupply
    else:
        if not stor10:
            require totalSupply
            if arg2 > totalSupply:
                revert with 0, 'sub failed'
            if not stor10:
                require totalSupply
                stor10 = 0 / totalSupply
            else:
                require stor10
                if (totalSupply * stor10) - (arg2 * stor10) / stor10 != totalSupply - arg2:
                    revert with 0, 'mul failed'
                require totalSupply
                stor10 = (totalSupply * stor10) - (arg2 * stor10) / totalSupply
            if arg2 > totalSupply:
                revert with 0, 'sub failed'
            totalSupply -= arg2
            if arg2 > balanceOf[address(msg.sender)].field_256:
                revert with 0, 'sub failed'
            balanceOf[address(msg.sender)].field_256 -= arg2
            if totalSupply <= 0:
                if 0 / totalSupply:
                    if balanceOf[address(msg.sender)].field_1024 - (0 / totalSupply) > balanceOf[address(msg.sender)].field_1024:
                        revert with 0, 'sub failed'
                    balanceOf[address(msg.sender)].field_1024 -= 0 / totalSupply
            else:
                if not arg2:
                    require totalSupply
                    if balanceOf[address(msg.sender)].field_1024 - (0 / totalSupply) > balanceOf[address(msg.sender)].field_1024:
                        revert with 0, 'sub failed'
                    balanceOf[address(msg.sender)].field_1024 -= 0 / totalSupply
                else:
                    require arg2
                    if arg2 * stor10 / arg2 != stor10:
                        revert with 0, 'mul failed'
                    require totalSupply
                    if balanceOf[address(msg.sender)].field_1024 - (arg2 * stor10 / totalSupply) > balanceOf[address(msg.sender)].field_1024:
                        revert with 0, 'sub failed'
                    balanceOf[address(msg.sender)].field_1024 -= arg2 * stor10 / totalSupply
        else:
            require stor10
            if stor10 * balanceOf[address(msg.sender)].field_256 / stor10 != balanceOf[address(msg.sender)].field_256:
                revert with 0, 'mul failed'
            require totalSupply
            if arg2 > totalSupply:
                revert with 0, 'sub failed'
            if not stor10:
                require totalSupply
                stor10 = 0 / totalSupply
            else:
                require stor10
                if (totalSupply * stor10) - (arg2 * stor10) / stor10 != totalSupply - arg2:
                    revert with 0, 'mul failed'
                require totalSupply
                stor10 = (totalSupply * stor10) - (arg2 * stor10) / totalSupply
            if arg2 > totalSupply:
                revert with 0, 'sub failed'
            totalSupply -= arg2
            if arg2 > balanceOf[address(msg.sender)].field_256:
                revert with 0, 'sub failed'
            balanceOf[address(msg.sender)].field_256 -= arg2
            if totalSupply <= 0:
                if stor10 * balanceOf[address(msg.sender)].field_256 / totalSupply:
                    if balanceOf[address(msg.sender)].field_1024 - (stor10 * balanceOf[address(msg.sender)].field_256 / totalSupply) > balanceOf[address(msg.sender)].field_1024:
                        revert with 0, 'sub failed'
                    balanceOf[address(msg.sender)].field_1024 -= stor10 * balanceOf[address(msg.sender)].field_256 / totalSupply
            else:
                if not arg2:
                    require totalSupply
                    if balanceOf[address(msg.sender)].field_1024 - (0 / totalSupply) > balanceOf[address(msg.sender)].field_1024:
                        revert with 0, 'sub failed'
                    balanceOf[address(msg.sender)].field_1024 -= 0 / totalSupply
                else:
                    require arg2
                    if arg2 * stor10 / arg2 != stor10:
                        revert with 0, 'mul failed'
                    require totalSupply
                    if balanceOf[address(msg.sender)].field_1024 - (arg2 * stor10 / totalSupply) > balanceOf[address(msg.sender)].field_1024:
                        revert with 0, 'sub failed'
                    balanceOf[address(msg.sender)].field_1024 -= arg2 * stor10 / totalSupply
    if totalSupply + arg2 - (arg2 * stor4 / stor5) < totalSupply:
        revert with 0, 'add failed'
    if totalSupply > 0:
        if not stor10:
            require totalSupply
            stor10 = 0 / totalSupply
        else:
            require stor10
            if (totalSupply * stor10) + (arg2 * stor10) - (arg2 * stor4 / stor5 * stor10) / stor10 != totalSupply + arg2 - (arg2 * stor4 / stor5):
                revert with 0, 'mul failed'
            require totalSupply
            stor10 = (totalSupply * stor10) + (arg2 * stor10) - (arg2 * stor4 / stor5 * stor10) / totalSupply
    totalSupply = totalSupply + arg2 - (arg2 * stor4 / stor5)
    if balanceOf[address(arg1)].field_256 + arg2 - (arg2 * stor4 / stor5) < balanceOf[address(arg1)].field_256:
        revert with 0, 'add failed'
    balanceOf[address(arg1)].field_256 = balanceOf[address(arg1)].field_256 + arg2 - (arg2 * stor4 / stor5)
    if totalSupply > 0:
        if not arg2 - (arg2 * stor4 / stor5):
            require totalSupply
            if balanceOf[address(arg1)].field_1024 + (0 / totalSupply) < balanceOf[address(arg1)].field_1024:
                revert with 0, 'add failed'
            balanceOf[address(arg1)].field_1024 += 0 / totalSupply
        else:
            require arg2 - (arg2 * stor4 / stor5)
            if (arg2 * stor10) - (arg2 * stor4 / stor5 * stor10) / arg2 - (arg2 * stor4 / stor5) != stor10:
                revert with 0, 'mul failed'
            require totalSupply
            if balanceOf[address(arg1)].field_1024 + ((arg2 * stor10) - (arg2 * stor4 / stor5 * stor10) / totalSupply) < balanceOf[address(arg1)].field_1024:
                revert with 0, 'add failed'
            balanceOf[address(arg1)].field_1024 += (arg2 * stor10) - (arg2 * stor4 / stor5 * stor10) / totalSupply
    if stor10 + ((-10000000000 * 10^18 * arg2 * stor4 / stor5) + (2 * stor8 * arg2 * stor4 / stor5) - (10000000000 * 10^18 * arg2 * stor4 / stor5 / 10^18 * arg2 * stor4 / stor5) / 2 * 10^18 / 10^18) < stor10:
        revert with 0, 'add failed'
    stor10 += (-10000000000 * 10^18 * arg2 * stor4 / stor5) + (2 * stor8 * arg2 * stor4 / stor5) - (10000000000 * 10^18 * arg2 * stor4 / stor5 / 10^18 * arg2 * stor4 / stor5) / 2 * 10^18 / 10^18
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function withdraw() {
    if balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 < balanceOf[address(msg.sender)].field_512:
        revert with 0, 'add failed'
    require balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 >= 0
    if totalSupply <= 0:
        if balanceOf[address(msg.sender)].field_1024 > 0:
            if balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 - balanceOf[address(msg.sender)].field_1024 > balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768:
                revert with 0, 'sub failed'
            require balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 - balanceOf[address(msg.sender)].field_1024 >= 0
            if balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 - balanceOf[address(msg.sender)].field_1024 <= 0:
                revert with 0, 'You have no dividends'
            if balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 < balanceOf[address(msg.sender)].field_1024:
                revert with 0, 'add failed'
            balanceOf[address(msg.sender)].field_1024 = balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768
            call 0x6ac6ac4310bce4819b9dbf84849dcf03fdee1e12 with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Withdrawal(balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 - balanceOf[address(msg.sender)].field_1024, block.timestamp, msg.sender);
        else:
            if balanceOf[address(msg.sender)].field_1024 >= 0:
                require balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 >= 0
                if balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 <= 0:
                    revert with 0, 'You have no dividends'
                if balanceOf[address(msg.sender)].field_1024 + balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 < balanceOf[address(msg.sender)].field_1024:
                    revert with 0, 'add failed'
                balanceOf[address(msg.sender)].field_1024 = balanceOf[address(msg.sender)].field_1024 + balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768
                call 0x6ac6ac4310bce4819b9dbf84849dcf03fdee1e12 with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Withdrawal(balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768, block.timestamp, msg.sender);
            else:
                if balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 - balanceOf[address(msg.sender)].field_1024 < balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768:
                    revert with 0, 'add failed'
                require balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 - balanceOf[address(msg.sender)].field_1024 >= 0
                if balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 - balanceOf[address(msg.sender)].field_1024 <= 0:
                    revert with 0, 'You have no dividends'
                if balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 < balanceOf[address(msg.sender)].field_1024:
                    revert with 0, 'add failed'
                balanceOf[address(msg.sender)].field_1024 = balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768
                call 0x6ac6ac4310bce4819b9dbf84849dcf03fdee1e12 with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Withdrawal(balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 - balanceOf[address(msg.sender)].field_1024, block.timestamp, msg.sender);
    else:
        if not stor10:
            require totalSupply
            if balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (0 / totalSupply) < balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768:
                revert with 0, 'add failed'
            if balanceOf[address(msg.sender)].field_1024 > 0:
                if balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (0 / totalSupply) - balanceOf[address(msg.sender)].field_1024 > balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (0 / totalSupply):
                    revert with 0, 'sub failed'
                require balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (0 / totalSupply) - balanceOf[address(msg.sender)].field_1024 >= 0
                if balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (0 / totalSupply) - balanceOf[address(msg.sender)].field_1024 <= 0:
                    revert with 0, 'You have no dividends'
                if balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (0 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                    revert with 0, 'add failed'
                balanceOf[address(msg.sender)].field_1024 = balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (0 / totalSupply)
                call 0x6ac6ac4310bce4819b9dbf84849dcf03fdee1e12 with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Withdrawal(balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (0 / totalSupply) - balanceOf[address(msg.sender)].field_1024, block.timestamp, msg.sender);
            else:
                if balanceOf[address(msg.sender)].field_1024 >= 0:
                    require balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (0 / totalSupply) >= 0
                    if balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (0 / totalSupply) <= 0:
                        revert with 0, 'You have no dividends'
                    if balanceOf[address(msg.sender)].field_1024 + balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (0 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                        revert with 0, 'add failed'
                    balanceOf[address(msg.sender)].field_1024 = balanceOf[address(msg.sender)].field_1024 + balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (0 / totalSupply)
                    call 0x6ac6ac4310bce4819b9dbf84849dcf03fdee1e12 with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Withdrawal(balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (0 / totalSupply), block.timestamp, msg.sender);
                else:
                    if balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (0 / totalSupply) - balanceOf[address(msg.sender)].field_1024 < balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (0 / totalSupply):
                        revert with 0, 'add failed'
                    require balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (0 / totalSupply) - balanceOf[address(msg.sender)].field_1024 >= 0
                    if balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (0 / totalSupply) - balanceOf[address(msg.sender)].field_1024 <= 0:
                        revert with 0, 'You have no dividends'
                    if balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (0 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                        revert with 0, 'add failed'
                    balanceOf[address(msg.sender)].field_1024 = balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (0 / totalSupply)
                    call 0x6ac6ac4310bce4819b9dbf84849dcf03fdee1e12 with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Withdrawal(balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (0 / totalSupply) - balanceOf[address(msg.sender)].field_1024, block.timestamp, msg.sender);
        else:
            require stor10
            if stor10 * balanceOf[address(msg.sender)].field_256 / stor10 != balanceOf[address(msg.sender)].field_256:
                revert with 0, 'mul failed'
            require totalSupply
            if balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (stor10 * balanceOf[address(msg.sender)].field_256 / totalSupply) < balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768:
                revert with 0, 'add failed'
            if balanceOf[address(msg.sender)].field_1024 > 0:
                if balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (stor10 * balanceOf[address(msg.sender)].field_256 / totalSupply) - balanceOf[address(msg.sender)].field_1024 > balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (stor10 * balanceOf[address(msg.sender)].field_256 / totalSupply):
                    revert with 0, 'sub failed'
                require balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (stor10 * balanceOf[address(msg.sender)].field_256 / totalSupply) - balanceOf[address(msg.sender)].field_1024 >= 0
                if balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (stor10 * balanceOf[address(msg.sender)].field_256 / totalSupply) - balanceOf[address(msg.sender)].field_1024 <= 0:
                    revert with 0, 'You have no dividends'
                if balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (stor10 * balanceOf[address(msg.sender)].field_256 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                    revert with 0, 'add failed'
                balanceOf[address(msg.sender)].field_1024 = balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (stor10 * balanceOf[address(msg.sender)].field_256 / totalSupply)
                call 0x6ac6ac4310bce4819b9dbf84849dcf03fdee1e12 with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Withdrawal(balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (stor10 * balanceOf[address(msg.sender)].field_256 / totalSupply) - balanceOf[address(msg.sender)].field_1024, block.timestamp, msg.sender);
            else:
                if balanceOf[address(msg.sender)].field_1024 >= 0:
                    require balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (stor10 * balanceOf[address(msg.sender)].field_256 / totalSupply) >= 0
                    if balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (stor10 * balanceOf[address(msg.sender)].field_256 / totalSupply) <= 0:
                        revert with 0, 'You have no dividends'
                    if balanceOf[address(msg.sender)].field_1024 + balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (stor10 * balanceOf[address(msg.sender)].field_256 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                        revert with 0, 'add failed'
                    balanceOf[address(msg.sender)].field_1024 = balanceOf[address(msg.sender)].field_1024 + balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (stor10 * balanceOf[address(msg.sender)].field_256 / totalSupply)
                    call 0x6ac6ac4310bce4819b9dbf84849dcf03fdee1e12 with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Withdrawal(balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (stor10 * balanceOf[address(msg.sender)].field_256 / totalSupply), block.timestamp, msg.sender);
                else:
                    if balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (stor10 * balanceOf[address(msg.sender)].field_256 / totalSupply) - balanceOf[address(msg.sender)].field_1024 < balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (stor10 * balanceOf[address(msg.sender)].field_256 / totalSupply):
                        revert with 0, 'add failed'
                    require balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (stor10 * balanceOf[address(msg.sender)].field_256 / totalSupply) - balanceOf[address(msg.sender)].field_1024 >= 0
                    if balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (stor10 * balanceOf[address(msg.sender)].field_256 / totalSupply) - balanceOf[address(msg.sender)].field_1024 <= 0:
                        revert with 0, 'You have no dividends'
                    if balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (stor10 * balanceOf[address(msg.sender)].field_256 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                        revert with 0, 'add failed'
                    balanceOf[address(msg.sender)].field_1024 = balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (stor10 * balanceOf[address(msg.sender)].field_256 / totalSupply)
                    call 0x6ac6ac4310bce4819b9dbf84849dcf03fdee1e12 with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Withdrawal(balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (stor10 * balanceOf[address(msg.sender)].field_256 / totalSupply) - balanceOf[address(msg.sender)].field_1024, block.timestamp, msg.sender);
}

function expectedTokens(uint256 arg1, bool arg2) {
    if not arg1:
        return 0
    if not arg2:
        if not stor8:
            revert with 0, 'sub failed'
        require stor8
        if 2 * stor8 / stor8 != 2:
            revert with 0, 'mul failed'
        if 10000000000 * 10^18 > 2 * stor8:
            revert with 0, 'sub failed'
        if 80000000000 * 10^18 * arg1 / 80000000000 * 10^18 != arg1:
            revert with 0, 'mul failed'
        if not 80000000000 * 10^18 * arg1:
            if not (2 * stor8) - 10000000000 * 10^18:
                if (2 * stor8) - 10000000000 * 10^18 > 0:
                    revert with 0, 'sub failed'
                if not -(2 * stor8) + 10000000000 * 10^18:
                    if stor8 < stor8:
                        revert with 0, 'add failed'
                    else:
                        return 0
                require -(2 * stor8) + 10000000000 * 10^18
                if (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / -(2 * stor8) + 10000000000 * 10^18 != 10^18:
                    revert with 0, 'mul failed'
                if 10000000000 * 10^18 * (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10000000000 * 10^18 != (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                    revert with 0, 'mul failed'
                if stor8 + (10000000000 * 10^18 * (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18) < stor8:
                    revert with 0, 'add failed'
                return ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18)
            require (2 * stor8) - 10000000000 * 10^18
            if (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / (2 * stor8) - 10000000000 * 10^18 != (2 * stor8) - 10000000000 * 10^18:
                revert with 0, 'mul failed'
            s = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000001 / 2
            t = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000
            while s < t:
                require s
                if ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s < (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s:
                    revert with 0, 'add failed'
                s = ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s / 2
                t = s
                continue 
        else:
            require 80000000000 * 10^18 * arg1
            if 0xe0352f62a19e306ed50b2037ad2000000000000 * arg1 / 80000000000 * 10^18 * arg1 != 10^18:
                revert with 0, 'mul failed'
            if not (2 * stor8) - 10000000000 * 10^18:
                if 0xe0352f62a19e306ed50b2037ad2000000000000 * arg1 < 0:
                    revert with 0, 'add failed'
                if (0xe0352f62a19e306ed50b2037ad2000000000000 * arg1) + 1 < 0xe0352f62a19e306ed50b2037ad2000000000000 * arg1:
                    revert with 0, 'add failed'
                s = (0xe0352f62a19e306ed50b2037ad2000000000000 * arg1) + 1 / 2
                t = 0xe0352f62a19e306ed50b2037ad2000000000000 * arg1
                while s < t:
                    require s
                    if (0xe0352f62a19e306ed50b2037ad2000000000000 * arg1 / s) + s < 0xe0352f62a19e306ed50b2037ad2000000000000 * arg1 / s:
                        revert with 0, 'add failed'
                    s = (0xe0352f62a19e306ed50b2037ad2000000000000 * arg1 / s) + s / 2
                    t = s
                    continue 
            else:
                require (2 * stor8) - 10000000000 * 10^18
                if (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / (2 * stor8) - 10000000000 * 10^18 != (2 * stor8) - 10000000000 * 10^18:
                    revert with 0, 'mul failed'
                if 0xe0352f62a19e306ed50b2037ad2000000000000 * arg1 < 0:
                    revert with 0, 'add failed'
                s = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * arg1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000001 / 2
                t = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * arg1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000
                while s < t:
                    require s
                    if ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * arg1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s < (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * arg1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s:
                        revert with 0, 'add failed'
                    s = ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * arg1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s / 2
                    t = s
                    continue 
    else:
        if not arg1:
            if not stor8:
                revert with 0, 'sub failed'
            require stor8
            if 2 * stor8 / stor8 != 2:
                revert with 0, 'mul failed'
            if 10000000000 * 10^18 > 2 * stor8:
                revert with 0, 'sub failed'
            if not (2 * stor8) - 10000000000 * 10^18:
                if (2 * stor8) - 10000000000 * 10^18 > 0:
                    revert with 0, 'sub failed'
                if not -(2 * stor8) + 10000000000 * 10^18:
                    if stor8 < stor8:
                        revert with 0, 'add failed'
                    else:
                        return 0
                require -(2 * stor8) + 10000000000 * 10^18
                if (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / -(2 * stor8) + 10000000000 * 10^18 != 10^18:
                    revert with 0, 'mul failed'
                if 10000000000 * 10^18 * (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10000000000 * 10^18 != (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                    revert with 0, 'mul failed'
                if stor8 + (10000000000 * 10^18 * (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18) < stor8:
                    revert with 0, 'add failed'
                return ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18)
            require (2 * stor8) - 10000000000 * 10^18
            if (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / (2 * stor8) - 10000000000 * 10^18 != (2 * stor8) - 10000000000 * 10^18:
                revert with 0, 'mul failed'
            s = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000001 / 2
            t = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000
            while s < t:
                require s
                if ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s < (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s:
                    revert with 0, 'add failed'
                s = ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s / 2
                t = s
                continue 
        else:
            require arg1
            if arg1 * stor0 / arg1 != stor0:
                revert with 0, 'mul failed'
            require stor1
            if arg1 * stor0 / stor1 > arg1:
                revert with 0, 'sub failed'
            if not stor8:
                revert with 0, 'sub failed'
            require stor8
            if 2 * stor8 / stor8 != 2:
                revert with 0, 'mul failed'
            if 10000000000 * 10^18 > 2 * stor8:
                revert with 0, 'sub failed'
            if (80000000000 * 10^18 * arg1) - (80000000000 * 10^18 * arg1 * stor0 / stor1) / 80000000000 * 10^18 != arg1 - (arg1 * stor0 / stor1):
                revert with 0, 'mul failed'
            if not (80000000000 * 10^18 * arg1) - (80000000000 * 10^18 * arg1 * stor0 / stor1):
                if not (2 * stor8) - 10000000000 * 10^18:
                    if (2 * stor8) - 10000000000 * 10^18 > 0:
                        revert with 0, 'sub failed'
                    if not -(2 * stor8) + 10000000000 * 10^18:
                        if stor8 < stor8:
                            revert with 0, 'add failed'
                        else:
                            return 0
                    require -(2 * stor8) + 10000000000 * 10^18
                    if (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / -(2 * stor8) + 10000000000 * 10^18 != 10^18:
                        revert with 0, 'mul failed'
                    if 10000000000 * 10^18 * (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10000000000 * 10^18 != (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                        revert with 0, 'mul failed'
                    if stor8 + (10000000000 * 10^18 * (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18) < stor8:
                        revert with 0, 'add failed'
                    return ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18)
                require (2 * stor8) - 10000000000 * 10^18
                if (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / (2 * stor8) - 10000000000 * 10^18 != (2 * stor8) - 10000000000 * 10^18:
                    revert with 0, 'mul failed'
                s = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000001 / 2
                t = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000
                while s < t:
                    require s
                    if ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s < (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s:
                        revert with 0, 'add failed'
                    s = ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s / 2
                    t = s
                    continue 
            else:
                require (80000000000 * 10^18 * arg1) - (80000000000 * 10^18 * arg1 * stor0 / stor1)
                if (0xe0352f62a19e306ed50b2037ad2000000000000 * arg1) - (0xe0352f62a19e306ed50b2037ad2000000000000 * arg1 * stor0 / stor1) / (80000000000 * 10^18 * arg1) - (80000000000 * 10^18 * arg1 * stor0 / stor1) != 10^18:
                    revert with 0, 'mul failed'
                if not (2 * stor8) - 10000000000 * 10^18:
                    if (0xe0352f62a19e306ed50b2037ad2000000000000 * arg1) - (0xe0352f62a19e306ed50b2037ad2000000000000 * arg1 * stor0 / stor1) < 0:
                        revert with 0, 'add failed'
                    s = (0xe0352f62a19e306ed50b2037ad2000000000000 * arg1) + (-80000000000000000000000000000 * 10^18 * arg1 * stor0 / stor1) + 1 / 2
                    t = (0xe0352f62a19e306ed50b2037ad2000000000000 * arg1) - (0xe0352f62a19e306ed50b2037ad2000000000000 * arg1 * stor0 / stor1)
                    while s < t:
                        require s
                        if ((0xe0352f62a19e306ed50b2037ad2000000000000 * arg1) - (0xe0352f62a19e306ed50b2037ad2000000000000 * arg1 * stor0 / stor1) / s) + s < (0xe0352f62a19e306ed50b2037ad2000000000000 * arg1) - (0xe0352f62a19e306ed50b2037ad2000000000000 * arg1 * stor0 / stor1) / s:
                            revert with 0, 'add failed'
                        s = ((0xe0352f62a19e306ed50b2037ad2000000000000 * arg1) - (0xe0352f62a19e306ed50b2037ad2000000000000 * arg1 * stor0 / stor1) / s) + s / 2
                        t = s
                        continue 
                else:
                    require (2 * stor8) - 10000000000 * 10^18
                    if (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / (2 * stor8) - 10000000000 * 10^18 != (2 * stor8) - 10000000000 * 10^18:
                        revert with 0, 'mul failed'
                    if (0xe0352f62a19e306ed50b2037ad2000000000000 * arg1) - (0xe0352f62a19e306ed50b2037ad2000000000000 * arg1 * stor0 / stor1) < 0:
                        revert with 0, 'add failed'
                    s = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * arg1) + (-80000000000000000000000000000 * 10^18 * arg1 * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000001 / 2
                    t = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * arg1) + (-80000000000000000000000000000 * 10^18 * arg1 * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000
                    while s < t:
                        require s
                        if ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * arg1) + (-80000000000000000000000000000 * 10^18 * arg1 * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s < (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * arg1) + (-80000000000000000000000000000 * 10^18 * arg1 * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s:
                            revert with 0, 'add failed'
                        s = ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * arg1) + (-80000000000000000000000000000 * 10^18 * arg1 * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s / 2
                        t = s
                        continue 
    if (2 * stor8) - 10000000000 * 10^18 > t:
        revert with 0, 'sub failed'
    if not t + -(2 * stor8) + 10000000000 * 10^18:
        if stor8 < stor8:
            revert with 0, 'add failed'
        else:
            return 0
    require t + -(2 * stor8) + 10000000000 * 10^18
    if (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / t + -(2 * stor8) + 10000000000 * 10^18 != 10^18:
        revert with 0, 'mul failed'
    if 10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10000000000 * 10^18 != (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
        revert with 0, 'mul failed'
    if stor8 + (10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18) < stor8:
        revert with 0, 'add failed'
    return ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18)
}

function exit() {
    if balanceOf[address(msg.sender)].field_256 > 0:
        if balanceOf[address(msg.sender)].field_256 > balanceOf[address(msg.sender)].field_256:
            revert with 0, 'You have not enough tokens'
        if 10000000000 * 10^18 > stor8:
            revert with 0, 'sub failed'
        if 10000000000 * 10^18 * balanceOf[address(msg.sender)].field_256 / 10000000000 * 10^18 != balanceOf[address(msg.sender)].field_256:
            revert with 0, 'mul failed'
        if stor8 < stor8 - 10000000000 * 10^18:
            revert with 0, 'add failed'
        if 10000000000 * 10^18 * balanceOf[address(msg.sender)].field_256 / 10^18 > stor8:
            revert with 0, 'sub failed'
        if (2 * stor8) - (10000000000 * 10^18 * balanceOf[address(msg.sender)].field_256 / 10^18) < stor8:
            revert with 0, 'add failed'
        if not (2 * stor8) + -(10000000000 * 10^18 * balanceOf[address(msg.sender)].field_256 / 10^18) - 10000000000 * 10^18:
            revert with 0, 'Insufficient tokens to do that'
        require (2 * stor8) + -(10000000000 * 10^18 * balanceOf[address(msg.sender)].field_256 / 10^18) - 10000000000 * 10^18
        if (-10000000000 * 10^18 * balanceOf[address(msg.sender)].field_256) + (2 * stor8 * balanceOf[address(msg.sender)].field_256) - (10000000000 * 10^18 * balanceOf[address(msg.sender)].field_256 / 10^18 * balanceOf[address(msg.sender)].field_256) / (2 * stor8) + -(10000000000 * 10^18 * balanceOf[address(msg.sender)].field_256 / 10^18) - 10000000000 * 10^18 != balanceOf[address(msg.sender)].field_256:
            revert with 0, 'mul failed'
        if not (-10000000000 * 10^18 * balanceOf[address(msg.sender)].field_256) + (2 * stor8 * balanceOf[address(msg.sender)].field_256) - (10000000000 * 10^18 * balanceOf[address(msg.sender)].field_256 / 10^18 * balanceOf[address(msg.sender)].field_256) / 2 * 10^18 / 10^18:
            revert with 0, 'Insufficient tokens to do that'
        stor8 -= 10000000000 * 10^18 * balanceOf[address(msg.sender)].field_256 / 10^18
        require (-10000000000 * 10^18 * balanceOf[address(msg.sender)].field_256) + (2 * stor8 * balanceOf[address(msg.sender)].field_256) - (10000000000 * 10^18 * balanceOf[address(msg.sender)].field_256 / 10^18 * balanceOf[address(msg.sender)].field_256) / 2 * 10^18 / 10^18
        if (-10000000000 * 10^18 * balanceOf[address(msg.sender)].field_256) + (2 * stor8 * balanceOf[address(msg.sender)].field_256) - (10000000000 * 10^18 * balanceOf[address(msg.sender)].field_256 / 10^18 * balanceOf[address(msg.sender)].field_256) / 2 * 10^18 / 10^18 * stor2 / (-10000000000 * 10^18 * balanceOf[address(msg.sender)].field_256) + (2 * stor8 * balanceOf[address(msg.sender)].field_256) - (10000000000 * 10^18 * balanceOf[address(msg.sender)].field_256 / 10^18 * balanceOf[address(msg.sender)].field_256) / 2 * 10^18 / 10^18 != stor2:
            revert with 0, 'mul failed'
        require stor3
        if (-10000000000 * 10^18 * balanceOf[address(msg.sender)].field_256) + (2 * stor8 * balanceOf[address(msg.sender)].field_256) - (10000000000 * 10^18 * balanceOf[address(msg.sender)].field_256 / 10^18 * balanceOf[address(msg.sender)].field_256) / 2 * 10^18 / 10^18 * stor2 / stor3 > (-10000000000 * 10^18 * balanceOf[address(msg.sender)].field_256) + (2 * stor8 * balanceOf[address(msg.sender)].field_256) - (10000000000 * 10^18 * balanceOf[address(msg.sender)].field_256 / 10^18 * balanceOf[address(msg.sender)].field_256) / 2 * 10^18 / 10^18:
            revert with 0, 'sub failed'
        if not (-10000000000 * 10^18 * balanceOf[address(msg.sender)].field_256) + (2 * stor8 * balanceOf[address(msg.sender)].field_256) - (10000000000 * 10^18 * balanceOf[address(msg.sender)].field_256 / 10^18 * balanceOf[address(msg.sender)].field_256) / 2 * 10^18 / 10^18 * stor2 / stor3:
            revert with 0, 'Insufficient tokens to do that'
        if totalSupply != balanceOf[address(msg.sender)].field_256:
            if balanceOf[address(msg.sender)].field_256 > totalSupply:
                revert with 0, 'sub failed'
            if not stor10:
                require totalSupply
                stor10 = 0 / totalSupply
            else:
                require stor10
                if (totalSupply * stor10) - (balanceOf[address(msg.sender)].field_256 * stor10) / stor10 != totalSupply - balanceOf[address(msg.sender)].field_256:
                    revert with 0, 'mul failed'
                require totalSupply
                stor10 = (totalSupply * stor10) - (balanceOf[address(msg.sender)].field_256 * stor10) / totalSupply
            if balanceOf[address(msg.sender)].field_256 > totalSupply:
                revert with 0, 'sub failed'
            totalSupply -= balanceOf[address(msg.sender)].field_256
            if balanceOf[address(msg.sender)].field_256 > balanceOf[address(msg.sender)].field_256:
                revert with 0, 'sub failed'
            balanceOf[address(msg.sender)].field_256 = 0
            if totalSupply > 0:
                if not balanceOf[address(msg.sender)].field_256:
                    require totalSupply
                    if balanceOf[address(msg.sender)].field_1024 - (0 / totalSupply) > balanceOf[address(msg.sender)].field_1024:
                        revert with 0, 'sub failed'
                    balanceOf[address(msg.sender)].field_1024 -= 0 / totalSupply
                else:
                    require balanceOf[address(msg.sender)].field_256
                    if balanceOf[address(msg.sender)].field_256 * stor10 / balanceOf[address(msg.sender)].field_256 != stor10:
                        revert with 0, 'mul failed'
                    require totalSupply
                    if balanceOf[address(msg.sender)].field_1024 - (balanceOf[address(msg.sender)].field_256 * stor10 / totalSupply) > balanceOf[address(msg.sender)].field_1024:
                        revert with 0, 'sub failed'
                    balanceOf[address(msg.sender)].field_1024 -= balanceOf[address(msg.sender)].field_256 * stor10 / totalSupply
        else:
            if not stor10:
                require totalSupply
                if balanceOf[address(msg.sender)].field_256 > totalSupply:
                    revert with 0, 'sub failed'
                if not stor10:
                    require totalSupply
                    stor10 = 0 / totalSupply
                else:
                    require stor10
                    if (totalSupply * stor10) - (balanceOf[address(msg.sender)].field_256 * stor10) / stor10 != totalSupply - balanceOf[address(msg.sender)].field_256:
                        revert with 0, 'mul failed'
                    require totalSupply
                    stor10 = (totalSupply * stor10) - (balanceOf[address(msg.sender)].field_256 * stor10) / totalSupply
                if balanceOf[address(msg.sender)].field_256 > totalSupply:
                    revert with 0, 'sub failed'
                totalSupply -= balanceOf[address(msg.sender)].field_256
                if balanceOf[address(msg.sender)].field_256 > balanceOf[address(msg.sender)].field_256:
                    revert with 0, 'sub failed'
                balanceOf[address(msg.sender)].field_256 = 0
                if totalSupply <= 0:
                    if 0 / totalSupply:
                        if balanceOf[address(msg.sender)].field_1024 - (0 / totalSupply) > balanceOf[address(msg.sender)].field_1024:
                            revert with 0, 'sub failed'
                        balanceOf[address(msg.sender)].field_1024 -= 0 / totalSupply
                else:
                    if not balanceOf[address(msg.sender)].field_256:
                        require totalSupply
                        if balanceOf[address(msg.sender)].field_1024 - (0 / totalSupply) > balanceOf[address(msg.sender)].field_1024:
                            revert with 0, 'sub failed'
                        balanceOf[address(msg.sender)].field_1024 -= 0 / totalSupply
                    else:
                        require balanceOf[address(msg.sender)].field_256
                        if balanceOf[address(msg.sender)].field_256 * stor10 / balanceOf[address(msg.sender)].field_256 != stor10:
                            revert with 0, 'mul failed'
                        require totalSupply
                        if balanceOf[address(msg.sender)].field_1024 - (balanceOf[address(msg.sender)].field_256 * stor10 / totalSupply) > balanceOf[address(msg.sender)].field_1024:
                            revert with 0, 'sub failed'
                        balanceOf[address(msg.sender)].field_1024 -= balanceOf[address(msg.sender)].field_256 * stor10 / totalSupply
            else:
                require stor10
                if stor10 * balanceOf[address(msg.sender)].field_256 / stor10 != balanceOf[address(msg.sender)].field_256:
                    revert with 0, 'mul failed'
                require totalSupply
                if balanceOf[address(msg.sender)].field_256 > totalSupply:
                    revert with 0, 'sub failed'
                if not stor10:
                    require totalSupply
                    stor10 = 0 / totalSupply
                else:
                    require stor10
                    if (totalSupply * stor10) - (balanceOf[address(msg.sender)].field_256 * stor10) / stor10 != totalSupply - balanceOf[address(msg.sender)].field_256:
                        revert with 0, 'mul failed'
                    require totalSupply
                    stor10 = (totalSupply * stor10) - (balanceOf[address(msg.sender)].field_256 * stor10) / totalSupply
                if balanceOf[address(msg.sender)].field_256 > totalSupply:
                    revert with 0, 'sub failed'
                totalSupply -= balanceOf[address(msg.sender)].field_256
                if balanceOf[address(msg.sender)].field_256 > balanceOf[address(msg.sender)].field_256:
                    revert with 0, 'sub failed'
                balanceOf[address(msg.sender)].field_256 = 0
                if totalSupply <= 0:
                    if stor10 * balanceOf[address(msg.sender)].field_256 / totalSupply:
                        if balanceOf[address(msg.sender)].field_1024 - (stor10 * balanceOf[address(msg.sender)].field_256 / totalSupply) > balanceOf[address(msg.sender)].field_1024:
                            revert with 0, 'sub failed'
                        balanceOf[address(msg.sender)].field_1024 -= stor10 * balanceOf[address(msg.sender)].field_256 / totalSupply
                else:
                    if not balanceOf[address(msg.sender)].field_256:
                        require totalSupply
                        if balanceOf[address(msg.sender)].field_1024 - (0 / totalSupply) > balanceOf[address(msg.sender)].field_1024:
                            revert with 0, 'sub failed'
                        balanceOf[address(msg.sender)].field_1024 -= 0 / totalSupply
                    else:
                        require balanceOf[address(msg.sender)].field_256
                        if balanceOf[address(msg.sender)].field_256 * stor10 / balanceOf[address(msg.sender)].field_256 != stor10:
                            revert with 0, 'mul failed'
                        require totalSupply
                        if balanceOf[address(msg.sender)].field_1024 - (balanceOf[address(msg.sender)].field_256 * stor10 / totalSupply) > balanceOf[address(msg.sender)].field_1024:
                            revert with 0, 'sub failed'
                        balanceOf[address(msg.sender)].field_1024 -= balanceOf[address(msg.sender)].field_256 * stor10 / totalSupply
        if balanceOf[address(msg.sender)].field_512 + ((-10000000000 * 10^18 * balanceOf[address(msg.sender)].field_256) + (2 * stor8 * balanceOf[address(msg.sender)].field_256) - (10000000000 * 10^18 * balanceOf[address(msg.sender)].field_256 / 10^18 * balanceOf[address(msg.sender)].field_256) / 2 * 10^18 / 10^18) - ((-10000000000 * 10^18 * balanceOf[address(msg.sender)].field_256) + (2 * stor8 * balanceOf[address(msg.sender)].field_256) - (10000000000 * 10^18 * balanceOf[address(msg.sender)].field_256 / 10^18 * balanceOf[address(msg.sender)].field_256) / 2 * 10^18 / 10^18 * stor2 / stor3) < balanceOf[address(msg.sender)].field_512:
            revert with 0, 'add failed'
        balanceOf[address(msg.sender)].field_512 = balanceOf[address(msg.sender)].field_512 + ((-10000000000 * 10^18 * balanceOf[address(msg.sender)].field_256) + (2 * stor8 * balanceOf[address(msg.sender)].field_256) - (10000000000 * 10^18 * balanceOf[address(msg.sender)].field_256 / 10^18 * balanceOf[address(msg.sender)].field_256) / 2 * 10^18 / 10^18) - ((-10000000000 * 10^18 * balanceOf[address(msg.sender)].field_256) + (2 * stor8 * balanceOf[address(msg.sender)].field_256) - (10000000000 * 10^18 * balanceOf[address(msg.sender)].field_256 / 10^18 * balanceOf[address(msg.sender)].field_256) / 2 * 10^18 / 10^18 * stor2 / stor3)
        if stor10 + ((-10000000000 * 10^18 * balanceOf[address(msg.sender)].field_256) + (2 * stor8 * balanceOf[address(msg.sender)].field_256) - (10000000000 * 10^18 * balanceOf[address(msg.sender)].field_256 / 10^18 * balanceOf[address(msg.sender)].field_256) / 2 * 10^18 / 10^18 * stor2 / stor3) < stor10:
            revert with 0, 'add failed'
        stor10 += (-10000000000 * 10^18 * balanceOf[address(msg.sender)].field_256) + (2 * stor8 * balanceOf[address(msg.sender)].field_256) - (10000000000 * 10^18 * balanceOf[address(msg.sender)].field_256 / 10^18 * balanceOf[address(msg.sender)].field_256) / 2 * 10^18 / 10^18 * stor2 / stor3
        emit Selling(balanceOf[address(msg.sender)].field_256, (-10000000000 * 10^18 * balanceOf[address(msg.sender)].field_256) + (2 * stor8 * balanceOf[address(msg.sender)].field_256) - (10000000000 * 10^18 * balanceOf[address(msg.sender)].field_256 / 10^18 * balanceOf[address(msg.sender)].field_256) / 2 * 10^18 / 10^18, stor8 / 10^18, block.timestamp, msg.sender);
    if balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 < balanceOf[address(msg.sender)].field_512:
        revert with 0, 'add failed'
    require balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 >= 0
    if totalSupply <= 0:
        if balanceOf[address(msg.sender)].field_1024 > 0:
            if balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 - balanceOf[address(msg.sender)].field_1024 > balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768:
                revert with 0, 'sub failed'
            require balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 - balanceOf[address(msg.sender)].field_1024 >= 0
            if balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 - balanceOf[address(msg.sender)].field_1024 <= 0:
                revert with 0, 'You have no dividends'
            if balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 < balanceOf[address(msg.sender)].field_1024:
                revert with 0, 'add failed'
            balanceOf[address(msg.sender)].field_1024 = balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768
            call 0x6ac6ac4310bce4819b9dbf84849dcf03fdee1e12 with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Withdrawal(balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 - balanceOf[address(msg.sender)].field_1024, block.timestamp, msg.sender);
        else:
            if balanceOf[address(msg.sender)].field_1024 >= 0:
                require balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 >= 0
                if balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 <= 0:
                    revert with 0, 'You have no dividends'
                if balanceOf[address(msg.sender)].field_1024 + balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 < balanceOf[address(msg.sender)].field_1024:
                    revert with 0, 'add failed'
                balanceOf[address(msg.sender)].field_1024 = balanceOf[address(msg.sender)].field_1024 + balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768
                call 0x6ac6ac4310bce4819b9dbf84849dcf03fdee1e12 with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Withdrawal(balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768, block.timestamp, msg.sender);
            else:
                if balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 - balanceOf[address(msg.sender)].field_1024 < balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768:
                    revert with 0, 'add failed'
                require balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 - balanceOf[address(msg.sender)].field_1024 >= 0
                if balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 - balanceOf[address(msg.sender)].field_1024 <= 0:
                    revert with 0, 'You have no dividends'
                if balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 < balanceOf[address(msg.sender)].field_1024:
                    revert with 0, 'add failed'
                balanceOf[address(msg.sender)].field_1024 = balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768
                call 0x6ac6ac4310bce4819b9dbf84849dcf03fdee1e12 with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Withdrawal(balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 - balanceOf[address(msg.sender)].field_1024, block.timestamp, msg.sender);
    else:
        if not stor10:
            require totalSupply
            if balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (0 / totalSupply) < balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768:
                revert with 0, 'add failed'
            if balanceOf[address(msg.sender)].field_1024 > 0:
                if balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (0 / totalSupply) - balanceOf[address(msg.sender)].field_1024 > balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (0 / totalSupply):
                    revert with 0, 'sub failed'
                require balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (0 / totalSupply) - balanceOf[address(msg.sender)].field_1024 >= 0
                if balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (0 / totalSupply) - balanceOf[address(msg.sender)].field_1024 <= 0:
                    revert with 0, 'You have no dividends'
                if balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (0 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                    revert with 0, 'add failed'
                balanceOf[address(msg.sender)].field_1024 = balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (0 / totalSupply)
                call 0x6ac6ac4310bce4819b9dbf84849dcf03fdee1e12 with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Withdrawal(balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (0 / totalSupply) - balanceOf[address(msg.sender)].field_1024, block.timestamp, msg.sender);
            else:
                if balanceOf[address(msg.sender)].field_1024 >= 0:
                    require balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (0 / totalSupply) >= 0
                    if balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (0 / totalSupply) <= 0:
                        revert with 0, 'You have no dividends'
                    if balanceOf[address(msg.sender)].field_1024 + balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (0 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                        revert with 0, 'add failed'
                    balanceOf[address(msg.sender)].field_1024 = balanceOf[address(msg.sender)].field_1024 + balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (0 / totalSupply)
                    call 0x6ac6ac4310bce4819b9dbf84849dcf03fdee1e12 with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Withdrawal(balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (0 / totalSupply), block.timestamp, msg.sender);
                else:
                    if balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (0 / totalSupply) - balanceOf[address(msg.sender)].field_1024 < balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (0 / totalSupply):
                        revert with 0, 'add failed'
                    require balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (0 / totalSupply) - balanceOf[address(msg.sender)].field_1024 >= 0
                    if balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (0 / totalSupply) - balanceOf[address(msg.sender)].field_1024 <= 0:
                        revert with 0, 'You have no dividends'
                    if balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (0 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                        revert with 0, 'add failed'
                    balanceOf[address(msg.sender)].field_1024 = balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (0 / totalSupply)
                    call 0x6ac6ac4310bce4819b9dbf84849dcf03fdee1e12 with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Withdrawal(balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (0 / totalSupply) - balanceOf[address(msg.sender)].field_1024, block.timestamp, msg.sender);
        else:
            require stor10
            if stor10 * balanceOf[address(msg.sender)].field_256 / stor10 != balanceOf[address(msg.sender)].field_256:
                revert with 0, 'mul failed'
            require totalSupply
            if balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (stor10 * balanceOf[address(msg.sender)].field_256 / totalSupply) < balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768:
                revert with 0, 'add failed'
            if balanceOf[address(msg.sender)].field_1024 > 0:
                if balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (stor10 * balanceOf[address(msg.sender)].field_256 / totalSupply) - balanceOf[address(msg.sender)].field_1024 > balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (stor10 * balanceOf[address(msg.sender)].field_256 / totalSupply):
                    revert with 0, 'sub failed'
                require balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (stor10 * balanceOf[address(msg.sender)].field_256 / totalSupply) - balanceOf[address(msg.sender)].field_1024 >= 0
                if balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (stor10 * balanceOf[address(msg.sender)].field_256 / totalSupply) - balanceOf[address(msg.sender)].field_1024 <= 0:
                    revert with 0, 'You have no dividends'
                if balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (stor10 * balanceOf[address(msg.sender)].field_256 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                    revert with 0, 'add failed'
                balanceOf[address(msg.sender)].field_1024 = balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (stor10 * balanceOf[address(msg.sender)].field_256 / totalSupply)
                call 0x6ac6ac4310bce4819b9dbf84849dcf03fdee1e12 with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Withdrawal(balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (stor10 * balanceOf[address(msg.sender)].field_256 / totalSupply) - balanceOf[address(msg.sender)].field_1024, block.timestamp, msg.sender);
            else:
                if balanceOf[address(msg.sender)].field_1024 >= 0:
                    require balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (stor10 * balanceOf[address(msg.sender)].field_256 / totalSupply) >= 0
                    if balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (stor10 * balanceOf[address(msg.sender)].field_256 / totalSupply) <= 0:
                        revert with 0, 'You have no dividends'
                    if balanceOf[address(msg.sender)].field_1024 + balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (stor10 * balanceOf[address(msg.sender)].field_256 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                        revert with 0, 'add failed'
                    balanceOf[address(msg.sender)].field_1024 = balanceOf[address(msg.sender)].field_1024 + balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (stor10 * balanceOf[address(msg.sender)].field_256 / totalSupply)
                    call 0x6ac6ac4310bce4819b9dbf84849dcf03fdee1e12 with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Withdrawal(balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (stor10 * balanceOf[address(msg.sender)].field_256 / totalSupply), block.timestamp, msg.sender);
                else:
                    if balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (stor10 * balanceOf[address(msg.sender)].field_256 / totalSupply) - balanceOf[address(msg.sender)].field_1024 < balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (stor10 * balanceOf[address(msg.sender)].field_256 / totalSupply):
                        revert with 0, 'add failed'
                    require balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (stor10 * balanceOf[address(msg.sender)].field_256 / totalSupply) - balanceOf[address(msg.sender)].field_1024 >= 0
                    if balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (stor10 * balanceOf[address(msg.sender)].field_256 / totalSupply) - balanceOf[address(msg.sender)].field_1024 <= 0:
                        revert with 0, 'You have no dividends'
                    if balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (stor10 * balanceOf[address(msg.sender)].field_256 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                        revert with 0, 'add failed'
                    balanceOf[address(msg.sender)].field_1024 = balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (stor10 * balanceOf[address(msg.sender)].field_256 / totalSupply)
                    call 0x6ac6ac4310bce4819b9dbf84849dcf03fdee1e12 with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Withdrawal(balanceOf[address(msg.sender)].field_512 + balanceOf[address(msg.sender)].field_768 + (stor10 * balanceOf[address(msg.sender)].field_256 / totalSupply) - balanceOf[address(msg.sender)].field_1024, block.timestamp, msg.sender);
}

function buy(address arg1) payable {
    if not msg.value:
        revert with 0, 'Incoming funds is too small'
    require msg.value
    if msg.value * stor0 / msg.value != stor0:
        revert with 0, 'mul failed'
    require stor1
    if msg.value * stor0 / stor1 > msg.value:
        revert with 0, 'sub failed'
    if not msg.value * stor0 / stor1:
        revert with 0, 'Incoming funds is too small'
    if not arg1:
        if not balanceOf[address(msg.sender)].field_0:
            if not stor8:
                revert with 0, 'sub failed'
            require stor8
            if 2 * stor8 / stor8 != 2:
                revert with 0, 'mul failed'
            if 10000000000 * 10^18 > 2 * stor8:
                revert with 0, 'sub failed'
            if (80000000000 * 10^18 * msg.value) - (80000000000 * 10^18 * msg.value * stor0 / stor1) / 80000000000 * 10^18 != msg.value - (msg.value * stor0 / stor1):
                revert with 0, 'mul failed'
            if not (80000000000 * 10^18 * msg.value) - (80000000000 * 10^18 * msg.value * stor0 / stor1):
                if not (2 * stor8) - 10000000000 * 10^18:
                    if (2 * stor8) - 10000000000 * 10^18 > 0:
                        revert with 0, 'sub failed'
                    if not -(2 * stor8) + 10000000000 * 10^18:
                        if stor8 < stor8:
                            revert with 0, 'add failed'
                        revert with 0, 'Incoming funds is too small'
                    require -(2 * stor8) + 10000000000 * 10^18
                    if (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / -(2 * stor8) + 10000000000 * 10^18 != 10^18:
                        revert with 0, 'mul failed'
                    if 10000000000 * 10^18 * (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10000000000 * 10^18 != (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                        revert with 0, 'mul failed'
                    if stor8 + (10000000000 * 10^18 * (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18) < stor8:
                        revert with 0, 'add failed'
                    if not (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                        revert with 0, 'Incoming funds is too small'
                    stor8 += 10000000000 * 10^18 * (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18
                    if totalSupply + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < totalSupply:
                        revert with 0, 'add failed'
                    if totalSupply > 0:
                        if not stor10:
                            require totalSupply
                            stor10 = 0 / totalSupply
                        else:
                            require stor10
                            if (totalSupply * stor10) + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / stor10 != totalSupply + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18):
                                revert with 0, 'mul failed'
                            require totalSupply
                            stor10 = (totalSupply * stor10) + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / totalSupply
                    totalSupply += (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                    if balanceOf[address(msg.sender)].field_256 + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < balanceOf[address(msg.sender)].field_256:
                        revert with 0, 'add failed'
                    balanceOf[address(msg.sender)].field_256 += (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                    if totalSupply > 0:
                        if not (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                            require totalSupply
                            if balanceOf[address(msg.sender)].field_1024 + (0 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                revert with 0, 'add failed'
                            balanceOf[address(msg.sender)].field_1024 += 0 / totalSupply
                        else:
                            require (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                            if (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 != stor10:
                                revert with 0, 'mul failed'
                            require totalSupply
                            if balanceOf[address(msg.sender)].field_1024 + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                revert with 0, 'add failed'
                            balanceOf[address(msg.sender)].field_1024 += (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply
                    if stor10 + (msg.value * stor0 / stor1) < stor10:
                        revert with 0, 'add failed'
                    stor10 += msg.value * stor0 / stor1
                    emit Purchase(msg.value, (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18, stor8 / 10^18, block.timestamp, msg.sender);
                else:
                    require (2 * stor8) - 10000000000 * 10^18
                    if (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / (2 * stor8) - 10000000000 * 10^18 != (2 * stor8) - 10000000000 * 10^18:
                        revert with 0, 'mul failed'
                    s = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000001 / 2
                    t = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000
                    while s < t:
                        require s
                        if ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s < (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s:
                            revert with 0, 'add failed'
                        s = ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s / 2
                        t = s
                        continue 
                    if (2 * stor8) - 10000000000 * 10^18 > t:
                        revert with 0, 'sub failed'
                    if not t + -(2 * stor8) + 10000000000 * 10^18:
                        if stor8 < stor8:
                            revert with 0, 'add failed'
                        revert with 0, 'Incoming funds is too small'
                    require t + -(2 * stor8) + 10000000000 * 10^18
                    if (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / t + -(2 * stor8) + 10000000000 * 10^18 != 10^18:
                        revert with 0, 'mul failed'
                    if 10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10000000000 * 10^18 != (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                        revert with 0, 'mul failed'
                    if stor8 + (10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18) < stor8:
                        revert with 0, 'add failed'
                    if not (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                        revert with 0, 'Incoming funds is too small'
                    stor8 += 10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18
                    if totalSupply + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < totalSupply:
                        revert with 0, 'add failed'
                    if totalSupply > 0:
                        if not stor10:
                            require totalSupply
                            stor10 = 0 / totalSupply
                        else:
                            require stor10
                            if (totalSupply * stor10) + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / stor10 != totalSupply + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18):
                                revert with 0, 'mul failed'
                            require totalSupply
                            stor10 = (totalSupply * stor10) + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / totalSupply
                    totalSupply += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                    if balanceOf[address(msg.sender)].field_256 + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < balanceOf[address(msg.sender)].field_256:
                        revert with 0, 'add failed'
                    balanceOf[address(msg.sender)].field_256 += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                    if totalSupply > 0:
                        if not (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                            require totalSupply
                            if balanceOf[address(msg.sender)].field_1024 + (0 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                revert with 0, 'add failed'
                            balanceOf[address(msg.sender)].field_1024 += 0 / totalSupply
                        else:
                            require (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                            if (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 != stor10:
                                revert with 0, 'mul failed'
                            require totalSupply
                            if balanceOf[address(msg.sender)].field_1024 + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                revert with 0, 'add failed'
                            balanceOf[address(msg.sender)].field_1024 += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply
                    if stor10 + (msg.value * stor0 / stor1) < stor10:
                        revert with 0, 'add failed'
                    stor10 += msg.value * stor0 / stor1
                    emit Purchase(msg.value, (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18, stor8 / 10^18, block.timestamp, msg.sender);
            else:
                require (80000000000 * 10^18 * msg.value) - (80000000000 * 10^18 * msg.value * stor0 / stor1)
                if (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) / (80000000000 * 10^18 * msg.value) - (80000000000 * 10^18 * msg.value * stor0 / stor1) != 10^18:
                    revert with 0, 'mul failed'
                if not (2 * stor8) - 10000000000 * 10^18:
                    if (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) < 0:
                        revert with 0, 'add failed'
                    s = (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 1 / 2
                    t = (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1)
                    while s < t:
                        require s
                        if ((0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) / s) + s < (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) / s:
                            revert with 0, 'add failed'
                        s = ((0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) / s) + s / 2
                        t = s
                        continue 
                else:
                    require (2 * stor8) - 10000000000 * 10^18
                    if (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / (2 * stor8) - 10000000000 * 10^18 != (2 * stor8) - 10000000000 * 10^18:
                        revert with 0, 'mul failed'
                    if (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) < 0:
                        revert with 0, 'add failed'
                    s = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000001 / 2
                    t = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000
                    while s < t:
                        require s
                        if ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s < (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s:
                            revert with 0, 'add failed'
                        s = ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s / 2
                        t = s
                        continue 
                if (2 * stor8) - 10000000000 * 10^18 > t:
                    revert with 0, 'sub failed'
                if not t + -(2 * stor8) + 10000000000 * 10^18:
                    if stor8 < stor8:
                        revert with 0, 'add failed'
                    revert with 0, 'Incoming funds is too small'
                require t + -(2 * stor8) + 10000000000 * 10^18
                if (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / t + -(2 * stor8) + 10000000000 * 10^18 != 10^18:
                    revert with 0, 'mul failed'
                if 10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10000000000 * 10^18 != (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                    revert with 0, 'mul failed'
                if stor8 + (10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18) < stor8:
                    revert with 0, 'add failed'
                if not (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                    revert with 0, 'Incoming funds is too small'
                stor8 += 10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18
                if totalSupply + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < totalSupply:
                    revert with 0, 'add failed'
                if totalSupply > 0:
                    if not stor10:
                        require totalSupply
                        stor10 = 0 / totalSupply
                    else:
                        require stor10
                        if (totalSupply * stor10) + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / stor10 != totalSupply + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18):
                            revert with 0, 'mul failed'
                        require totalSupply
                        stor10 = (totalSupply * stor10) + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / totalSupply
                totalSupply += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                if balanceOf[address(msg.sender)].field_256 + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < balanceOf[address(msg.sender)].field_256:
                    revert with 0, 'add failed'
                balanceOf[address(msg.sender)].field_256 += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                if totalSupply > 0:
                    if not (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                        require totalSupply
                        if balanceOf[address(msg.sender)].field_1024 + (0 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                            revert with 0, 'add failed'
                        balanceOf[address(msg.sender)].field_1024 += 0 / totalSupply
                    else:
                        require (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                        if (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 != stor10:
                            revert with 0, 'mul failed'
                        require totalSupply
                        if balanceOf[address(msg.sender)].field_1024 + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                            revert with 0, 'add failed'
                        balanceOf[address(msg.sender)].field_1024 += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply
                if stor10 + (msg.value * stor0 / stor1) < stor10:
                    revert with 0, 'add failed'
                stor10 += msg.value * stor0 / stor1
                emit Purchase(msg.value, (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18, stor8 / 10^18, block.timestamp, msg.sender);
        else:
            if balanceOf[balanceOf[address(msg.sender)].field_0].field_256 < 10 * 10^18:
                if not msg.value * stor0 / stor1:
                    revert with 0, 'Incoming funds is too small'
                if not stor8:
                    revert with 0, 'sub failed'
                require stor8
                if 2 * stor8 / stor8 != 2:
                    revert with 0, 'mul failed'
                if 10000000000 * 10^18 > 2 * stor8:
                    revert with 0, 'sub failed'
                if (80000000000 * 10^18 * msg.value) - (80000000000 * 10^18 * msg.value * stor0 / stor1) / 80000000000 * 10^18 != msg.value - (msg.value * stor0 / stor1):
                    revert with 0, 'mul failed'
                if not (80000000000 * 10^18 * msg.value) - (80000000000 * 10^18 * msg.value * stor0 / stor1):
                    if not (2 * stor8) - 10000000000 * 10^18:
                        if (2 * stor8) - 10000000000 * 10^18 > 0:
                            revert with 0, 'sub failed'
                        if not -(2 * stor8) + 10000000000 * 10^18:
                            if stor8 < stor8:
                                revert with 0, 'add failed'
                            revert with 0, 'Incoming funds is too small'
                        require -(2 * stor8) + 10000000000 * 10^18
                        if (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / -(2 * stor8) + 10000000000 * 10^18 != 10^18:
                            revert with 0, 'mul failed'
                        if 10000000000 * 10^18 * (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10000000000 * 10^18 != (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                            revert with 0, 'mul failed'
                        if stor8 + (10000000000 * 10^18 * (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18) < stor8:
                            revert with 0, 'add failed'
                        if not (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                            revert with 0, 'Incoming funds is too small'
                        stor8 += 10000000000 * 10^18 * (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18
                        if totalSupply + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < totalSupply:
                            revert with 0, 'add failed'
                        if totalSupply > 0:
                            if not stor10:
                                require totalSupply
                                stor10 = 0 / totalSupply
                            else:
                                require stor10
                                if (totalSupply * stor10) + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / stor10 != totalSupply + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18):
                                    revert with 0, 'mul failed'
                                require totalSupply
                                stor10 = (totalSupply * stor10) + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / totalSupply
                        totalSupply += (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                        if balanceOf[address(msg.sender)].field_256 + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < balanceOf[address(msg.sender)].field_256:
                            revert with 0, 'add failed'
                        balanceOf[address(msg.sender)].field_256 += (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                        if totalSupply > 0:
                            if not (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                                require totalSupply
                                if balanceOf[address(msg.sender)].field_1024 + (0 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                    revert with 0, 'add failed'
                                balanceOf[address(msg.sender)].field_1024 += 0 / totalSupply
                            else:
                                require (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                                if (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 != stor10:
                                    revert with 0, 'mul failed'
                                require totalSupply
                                if balanceOf[address(msg.sender)].field_1024 + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                    revert with 0, 'add failed'
                                balanceOf[address(msg.sender)].field_1024 += (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply
                        if stor10 + (msg.value * stor0 / stor1) < stor10:
                            revert with 0, 'add failed'
                        stor10 += msg.value * stor0 / stor1
                        emit Purchase(msg.value, (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18, stor8 / 10^18, block.timestamp, msg.sender);
                    else:
                        require (2 * stor8) - 10000000000 * 10^18
                        if (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / (2 * stor8) - 10000000000 * 10^18 != (2 * stor8) - 10000000000 * 10^18:
                            revert with 0, 'mul failed'
                        s = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000001 / 2
                        t = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000
                        while s < t:
                            require s
                            if ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s < (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s:
                                revert with 0, 'add failed'
                            s = ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s / 2
                            t = s
                            continue 
                        if (2 * stor8) - 10000000000 * 10^18 > t:
                            revert with 0, 'sub failed'
                        if not t + -(2 * stor8) + 10000000000 * 10^18:
                            if stor8 < stor8:
                                revert with 0, 'add failed'
                            revert with 0, 'Incoming funds is too small'
                        require t + -(2 * stor8) + 10000000000 * 10^18
                        if (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / t + -(2 * stor8) + 10000000000 * 10^18 != 10^18:
                            revert with 0, 'mul failed'
                        if 10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10000000000 * 10^18 != (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                            revert with 0, 'mul failed'
                        if stor8 + (10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18) < stor8:
                            revert with 0, 'add failed'
                        if not (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                            revert with 0, 'Incoming funds is too small'
                        stor8 += 10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18
                        if totalSupply + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < totalSupply:
                            revert with 0, 'add failed'
                        if totalSupply > 0:
                            if not stor10:
                                require totalSupply
                                stor10 = 0 / totalSupply
                            else:
                                require stor10
                                if (totalSupply * stor10) + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / stor10 != totalSupply + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18):
                                    revert with 0, 'mul failed'
                                require totalSupply
                                stor10 = (totalSupply * stor10) + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / totalSupply
                        totalSupply += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                        if balanceOf[address(msg.sender)].field_256 + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < balanceOf[address(msg.sender)].field_256:
                            revert with 0, 'add failed'
                        balanceOf[address(msg.sender)].field_256 += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                        if totalSupply > 0:
                            if not (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                                require totalSupply
                                if balanceOf[address(msg.sender)].field_1024 + (0 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                    revert with 0, 'add failed'
                                balanceOf[address(msg.sender)].field_1024 += 0 / totalSupply
                            else:
                                require (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                                if (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 != stor10:
                                    revert with 0, 'mul failed'
                                require totalSupply
                                if balanceOf[address(msg.sender)].field_1024 + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                    revert with 0, 'add failed'
                                balanceOf[address(msg.sender)].field_1024 += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply
                        if stor10 + (msg.value * stor0 / stor1) < stor10:
                            revert with 0, 'add failed'
                        stor10 += msg.value * stor0 / stor1
                        emit Purchase(msg.value, (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18, stor8 / 10^18, block.timestamp, msg.sender);
                else:
                    require (80000000000 * 10^18 * msg.value) - (80000000000 * 10^18 * msg.value * stor0 / stor1)
                    if (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) / (80000000000 * 10^18 * msg.value) - (80000000000 * 10^18 * msg.value * stor0 / stor1) != 10^18:
                        revert with 0, 'mul failed'
                    if not (2 * stor8) - 10000000000 * 10^18:
                        if (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) < 0:
                            revert with 0, 'add failed'
                        s = (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 1 / 2
                        t = (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1)
                        while s < t:
                            require s
                            if ((0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) / s) + s < (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) / s:
                                revert with 0, 'add failed'
                            s = ((0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) / s) + s / 2
                            t = s
                            continue 
                    else:
                        require (2 * stor8) - 10000000000 * 10^18
                        if (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / (2 * stor8) - 10000000000 * 10^18 != (2 * stor8) - 10000000000 * 10^18:
                            revert with 0, 'mul failed'
                        if (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) < 0:
                            revert with 0, 'add failed'
                        s = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000001 / 2
                        t = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000
                        while s < t:
                            require s
                            if ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s < (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s:
                                revert with 0, 'add failed'
                            s = ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s / 2
                            t = s
                            continue 
                    if (2 * stor8) - 10000000000 * 10^18 > t:
                        revert with 0, 'sub failed'
                    if not t + -(2 * stor8) + 10000000000 * 10^18:
                        if stor8 < stor8:
                            revert with 0, 'add failed'
                        revert with 0, 'Incoming funds is too small'
                    require t + -(2 * stor8) + 10000000000 * 10^18
                    if (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / t + -(2 * stor8) + 10000000000 * 10^18 != 10^18:
                        revert with 0, 'mul failed'
                    if 10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10000000000 * 10^18 != (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                        revert with 0, 'mul failed'
                    if stor8 + (10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18) < stor8:
                        revert with 0, 'add failed'
                    if not (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                        revert with 0, 'Incoming funds is too small'
                    stor8 += 10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18
                    if totalSupply + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < totalSupply:
                        revert with 0, 'add failed'
                    if totalSupply > 0:
                        if not stor10:
                            require totalSupply
                            stor10 = 0 / totalSupply
                        else:
                            require stor10
                            if (totalSupply * stor10) + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / stor10 != totalSupply + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18):
                                revert with 0, 'mul failed'
                            require totalSupply
                            stor10 = (totalSupply * stor10) + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / totalSupply
                    totalSupply += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                    if balanceOf[address(msg.sender)].field_256 + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < balanceOf[address(msg.sender)].field_256:
                        revert with 0, 'add failed'
                    balanceOf[address(msg.sender)].field_256 += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                    if totalSupply > 0:
                        if not (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                            require totalSupply
                            if balanceOf[address(msg.sender)].field_1024 + (0 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                revert with 0, 'add failed'
                            balanceOf[address(msg.sender)].field_1024 += 0 / totalSupply
                        else:
                            require (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                            if (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 != stor10:
                                revert with 0, 'mul failed'
                            require totalSupply
                            if balanceOf[address(msg.sender)].field_1024 + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                revert with 0, 'add failed'
                            balanceOf[address(msg.sender)].field_1024 += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply
                    if stor10 + (msg.value * stor0 / stor1) < stor10:
                        revert with 0, 'add failed'
                    stor10 += msg.value * stor0 / stor1
                    emit Purchase(msg.value, (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18, stor8 / 10^18, block.timestamp, msg.sender);
            else:
                if not msg.value * stor0 / stor1:
                    if balanceOf[balanceOf[address(msg.sender)].field_0].field_768 < balanceOf[balanceOf[address(msg.sender)].field_0].field_768:
                        revert with 0, 'add failed'
                    emit ReferralReward(msg.value, 0, block.timestamp, msg.sender, balanceOf[address(msg.sender)].field_0);
                    revert with 0, 'Incoming funds is too small'
                require msg.value * stor0 / stor1
                if msg.value * stor0 / stor1 * stor6 / msg.value * stor0 / stor1 != stor6:
                    revert with 0, 'mul failed'
                require stor7
                if msg.value * stor0 / stor1 * stor6 / stor7 > msg.value * stor0 / stor1:
                    revert with 0, 'sub failed'
                if balanceOf[balanceOf[address(msg.sender)].field_0].field_768 + (msg.value * stor0 / stor1 * stor6 / stor7) < balanceOf[balanceOf[address(msg.sender)].field_0].field_768:
                    revert with 0, 'add failed'
                balanceOf[balanceOf[address(msg.sender)].field_0].field_768 += msg.value * stor0 / stor1 * stor6 / stor7
                emit ReferralReward(msg.value, msg.value * stor0 / stor1 * stor6 / stor7, block.timestamp, msg.sender, balanceOf[address(msg.sender)].field_0);
                if not (msg.value * stor0 / stor1) - (msg.value * stor0 / stor1 * stor6 / stor7):
                    revert with 0, 'Incoming funds is too small'
                if not stor8:
                    revert with 0, 'sub failed'
                require stor8
                if 2 * stor8 / stor8 != 2:
                    revert with 0, 'mul failed'
                if 10000000000 * 10^18 > 2 * stor8:
                    revert with 0, 'sub failed'
                if (80000000000 * 10^18 * msg.value) - (80000000000 * 10^18 * msg.value * stor0 / stor1) / 80000000000 * 10^18 != msg.value - (msg.value * stor0 / stor1):
                    revert with 0, 'mul failed'
                if not (80000000000 * 10^18 * msg.value) - (80000000000 * 10^18 * msg.value * stor0 / stor1):
                    if not (2 * stor8) - 10000000000 * 10^18:
                        if (2 * stor8) - 10000000000 * 10^18 > 0:
                            revert with 0, 'sub failed'
                        if not -(2 * stor8) + 10000000000 * 10^18:
                            if stor8 < stor8:
                                revert with 0, 'add failed'
                            revert with 0, 'Incoming funds is too small'
                        require -(2 * stor8) + 10000000000 * 10^18
                        if (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / -(2 * stor8) + 10000000000 * 10^18 != 10^18:
                            revert with 0, 'mul failed'
                        if 10000000000 * 10^18 * (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10000000000 * 10^18 != (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                            revert with 0, 'mul failed'
                        if stor8 + (10000000000 * 10^18 * (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18) < stor8:
                            revert with 0, 'add failed'
                        if not (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                            revert with 0, 'Incoming funds is too small'
                        stor8 += 10000000000 * 10^18 * (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18
                        if totalSupply + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < totalSupply:
                            revert with 0, 'add failed'
                        if totalSupply > 0:
                            if not stor10:
                                require totalSupply
                                stor10 = 0 / totalSupply
                            else:
                                require stor10
                                if (totalSupply * stor10) + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / stor10 != totalSupply + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18):
                                    revert with 0, 'mul failed'
                                require totalSupply
                                stor10 = (totalSupply * stor10) + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / totalSupply
                        totalSupply += (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                        if balanceOf[address(msg.sender)].field_256 + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < balanceOf[address(msg.sender)].field_256:
                            revert with 0, 'add failed'
                        balanceOf[address(msg.sender)].field_256 += (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                        if totalSupply > 0:
                            if not (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                                require totalSupply
                                if balanceOf[address(msg.sender)].field_1024 + (0 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                    revert with 0, 'add failed'
                                balanceOf[address(msg.sender)].field_1024 += 0 / totalSupply
                            else:
                                require (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                                if (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 != stor10:
                                    revert with 0, 'mul failed'
                                require totalSupply
                                if balanceOf[address(msg.sender)].field_1024 + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                    revert with 0, 'add failed'
                                balanceOf[address(msg.sender)].field_1024 += (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply
                        if stor10 + (msg.value * stor0 / stor1) - (msg.value * stor0 / stor1 * stor6 / stor7) < stor10:
                            revert with 0, 'add failed'
                        stor10 = stor10 + (msg.value * stor0 / stor1) - (msg.value * stor0 / stor1 * stor6 / stor7)
                        emit Purchase(msg.value, (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18, stor8 / 10^18, block.timestamp, msg.sender);
                    else:
                        require (2 * stor8) - 10000000000 * 10^18
                        if (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / (2 * stor8) - 10000000000 * 10^18 != (2 * stor8) - 10000000000 * 10^18:
                            revert with 0, 'mul failed'
                        s = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000001 / 2
                        t = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000
                        while s < t:
                            require s
                            if ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s < (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s:
                                revert with 0, 'add failed'
                            s = ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s / 2
                            t = s
                            continue 
                        if (2 * stor8) - 10000000000 * 10^18 > t:
                            revert with 0, 'sub failed'
                        if not t + -(2 * stor8) + 10000000000 * 10^18:
                            if stor8 < stor8:
                                revert with 0, 'add failed'
                            revert with 0, 'Incoming funds is too small'
                        require t + -(2 * stor8) + 10000000000 * 10^18
                        if (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / t + -(2 * stor8) + 10000000000 * 10^18 != 10^18:
                            revert with 0, 'mul failed'
                        if 10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10000000000 * 10^18 != (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                            revert with 0, 'mul failed'
                        if stor8 + (10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18) < stor8:
                            revert with 0, 'add failed'
                        if not (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                            revert with 0, 'Incoming funds is too small'
                        stor8 += 10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18
                        if totalSupply + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < totalSupply:
                            revert with 0, 'add failed'
                        if totalSupply > 0:
                            if not stor10:
                                require totalSupply
                                stor10 = 0 / totalSupply
                            else:
                                require stor10
                                if (totalSupply * stor10) + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / stor10 != totalSupply + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18):
                                    revert with 0, 'mul failed'
                                require totalSupply
                                stor10 = (totalSupply * stor10) + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / totalSupply
                        totalSupply += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                        if balanceOf[address(msg.sender)].field_256 + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < balanceOf[address(msg.sender)].field_256:
                            revert with 0, 'add failed'
                        balanceOf[address(msg.sender)].field_256 += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                        if totalSupply > 0:
                            if not (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                                require totalSupply
                                if balanceOf[address(msg.sender)].field_1024 + (0 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                    revert with 0, 'add failed'
                                balanceOf[address(msg.sender)].field_1024 += 0 / totalSupply
                            else:
                                require (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                                if (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 != stor10:
                                    revert with 0, 'mul failed'
                                require totalSupply
                                if balanceOf[address(msg.sender)].field_1024 + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                    revert with 0, 'add failed'
                                balanceOf[address(msg.sender)].field_1024 += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply
                        if stor10 + (msg.value * stor0 / stor1) - (msg.value * stor0 / stor1 * stor6 / stor7) < stor10:
                            revert with 0, 'add failed'
                        stor10 = stor10 + (msg.value * stor0 / stor1) - (msg.value * stor0 / stor1 * stor6 / stor7)
                        emit Purchase(msg.value, (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18, stor8 / 10^18, block.timestamp, msg.sender);
                else:
                    require (80000000000 * 10^18 * msg.value) - (80000000000 * 10^18 * msg.value * stor0 / stor1)
                    if (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) / (80000000000 * 10^18 * msg.value) - (80000000000 * 10^18 * msg.value * stor0 / stor1) != 10^18:
                        revert with 0, 'mul failed'
                    if not (2 * stor8) - 10000000000 * 10^18:
                        if (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) < 0:
                            revert with 0, 'add failed'
                        s = (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 1 / 2
                        t = (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1)
                        while s < t:
                            require s
                            if ((0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) / s) + s < (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) / s:
                                revert with 0, 'add failed'
                            s = ((0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) / s) + s / 2
                            t = s
                            continue 
                    else:
                        require (2 * stor8) - 10000000000 * 10^18
                        if (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / (2 * stor8) - 10000000000 * 10^18 != (2 * stor8) - 10000000000 * 10^18:
                            revert with 0, 'mul failed'
                        if (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) < 0:
                            revert with 0, 'add failed'
                        s = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000001 / 2
                        t = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000
                        while s < t:
                            require s
                            if ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s < (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s:
                                revert with 0, 'add failed'
                            s = ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s / 2
                            t = s
                            continue 
                    if (2 * stor8) - 10000000000 * 10^18 > t:
                        revert with 0, 'sub failed'
                    if not t + -(2 * stor8) + 10000000000 * 10^18:
                        if stor8 < stor8:
                            revert with 0, 'add failed'
                        revert with 0, 'Incoming funds is too small'
                    require t + -(2 * stor8) + 10000000000 * 10^18
                    if (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / t + -(2 * stor8) + 10000000000 * 10^18 != 10^18:
                        revert with 0, 'mul failed'
                    if 10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10000000000 * 10^18 != (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                        revert with 0, 'mul failed'
                    if stor8 + (10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18) < stor8:
                        revert with 0, 'add failed'
                    if not (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                        revert with 0, 'Incoming funds is too small'
                    stor8 += 10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18
                    if totalSupply + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < totalSupply:
                        revert with 0, 'add failed'
                    if totalSupply > 0:
                        if not stor10:
                            require totalSupply
                            stor10 = 0 / totalSupply
                        else:
                            require stor10
                            if (totalSupply * stor10) + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / stor10 != totalSupply + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18):
                                revert with 0, 'mul failed'
                            require totalSupply
                            stor10 = (totalSupply * stor10) + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / totalSupply
                    totalSupply += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                    if balanceOf[address(msg.sender)].field_256 + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < balanceOf[address(msg.sender)].field_256:
                        revert with 0, 'add failed'
                    balanceOf[address(msg.sender)].field_256 += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                    if totalSupply > 0:
                        if not (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                            require totalSupply
                            if balanceOf[address(msg.sender)].field_1024 + (0 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                revert with 0, 'add failed'
                            balanceOf[address(msg.sender)].field_1024 += 0 / totalSupply
                        else:
                            require (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                            if (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 != stor10:
                                revert with 0, 'mul failed'
                            require totalSupply
                            if balanceOf[address(msg.sender)].field_1024 + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                revert with 0, 'add failed'
                            balanceOf[address(msg.sender)].field_1024 += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply
                    if stor10 + (msg.value * stor0 / stor1) - (msg.value * stor0 / stor1 * stor6 / stor7) < stor10:
                        revert with 0, 'add failed'
                    stor10 = stor10 + (msg.value * stor0 / stor1) - (msg.value * stor0 / stor1 * stor6 / stor7)
                    emit Purchase(msg.value, (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18, stor8 / 10^18, block.timestamp, msg.sender);
    else:
        if arg1 == msg.sender:
            if not balanceOf[address(msg.sender)].field_0:
                if not stor8:
                    revert with 0, 'sub failed'
                require stor8
                if 2 * stor8 / stor8 != 2:
                    revert with 0, 'mul failed'
                if 10000000000 * 10^18 > 2 * stor8:
                    revert with 0, 'sub failed'
                if (80000000000 * 10^18 * msg.value) - (80000000000 * 10^18 * msg.value * stor0 / stor1) / 80000000000 * 10^18 != msg.value - (msg.value * stor0 / stor1):
                    revert with 0, 'mul failed'
                if not (80000000000 * 10^18 * msg.value) - (80000000000 * 10^18 * msg.value * stor0 / stor1):
                    if not (2 * stor8) - 10000000000 * 10^18:
                        if (2 * stor8) - 10000000000 * 10^18 > 0:
                            revert with 0, 'sub failed'
                        if not -(2 * stor8) + 10000000000 * 10^18:
                            if stor8 < stor8:
                                revert with 0, 'add failed'
                            revert with 0, 'Incoming funds is too small'
                        require -(2 * stor8) + 10000000000 * 10^18
                        if (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / -(2 * stor8) + 10000000000 * 10^18 != 10^18:
                            revert with 0, 'mul failed'
                        if 10000000000 * 10^18 * (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10000000000 * 10^18 != (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                            revert with 0, 'mul failed'
                        if stor8 + (10000000000 * 10^18 * (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18) < stor8:
                            revert with 0, 'add failed'
                        if not (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                            revert with 0, 'Incoming funds is too small'
                        stor8 += 10000000000 * 10^18 * (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18
                        if totalSupply + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < totalSupply:
                            revert with 0, 'add failed'
                        if totalSupply > 0:
                            if not stor10:
                                require totalSupply
                                stor10 = 0 / totalSupply
                            else:
                                require stor10
                                if (totalSupply * stor10) + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / stor10 != totalSupply + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18):
                                    revert with 0, 'mul failed'
                                require totalSupply
                                stor10 = (totalSupply * stor10) + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / totalSupply
                        totalSupply += (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                        if balanceOf[address(msg.sender)].field_256 + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < balanceOf[address(msg.sender)].field_256:
                            revert with 0, 'add failed'
                        balanceOf[address(msg.sender)].field_256 += (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                        if totalSupply > 0:
                            if not (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                                require totalSupply
                                if balanceOf[address(msg.sender)].field_1024 + (0 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                    revert with 0, 'add failed'
                                balanceOf[address(msg.sender)].field_1024 += 0 / totalSupply
                            else:
                                require (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                                if (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 != stor10:
                                    revert with 0, 'mul failed'
                                require totalSupply
                                if balanceOf[address(msg.sender)].field_1024 + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                    revert with 0, 'add failed'
                                balanceOf[address(msg.sender)].field_1024 += (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply
                        if stor10 + (msg.value * stor0 / stor1) < stor10:
                            revert with 0, 'add failed'
                        stor10 += msg.value * stor0 / stor1
                        emit Purchase(msg.value, (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18, stor8 / 10^18, block.timestamp, msg.sender);
                    else:
                        require (2 * stor8) - 10000000000 * 10^18
                        if (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / (2 * stor8) - 10000000000 * 10^18 != (2 * stor8) - 10000000000 * 10^18:
                            revert with 0, 'mul failed'
                        s = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000001 / 2
                        t = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000
                        while s < t:
                            require s
                            if ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s < (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s:
                                revert with 0, 'add failed'
                            s = ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s / 2
                            t = s
                            continue 
                        if (2 * stor8) - 10000000000 * 10^18 > t:
                            revert with 0, 'sub failed'
                        if not t + -(2 * stor8) + 10000000000 * 10^18:
                            if stor8 < stor8:
                                revert with 0, 'add failed'
                            revert with 0, 'Incoming funds is too small'
                        require t + -(2 * stor8) + 10000000000 * 10^18
                        if (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / t + -(2 * stor8) + 10000000000 * 10^18 != 10^18:
                            revert with 0, 'mul failed'
                        if 10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10000000000 * 10^18 != (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                            revert with 0, 'mul failed'
                        if stor8 + (10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18) < stor8:
                            revert with 0, 'add failed'
                        if not (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                            revert with 0, 'Incoming funds is too small'
                        stor8 += 10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18
                        if totalSupply + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < totalSupply:
                            revert with 0, 'add failed'
                        if totalSupply > 0:
                            if not stor10:
                                require totalSupply
                                stor10 = 0 / totalSupply
                            else:
                                require stor10
                                if (totalSupply * stor10) + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / stor10 != totalSupply + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18):
                                    revert with 0, 'mul failed'
                                require totalSupply
                                stor10 = (totalSupply * stor10) + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / totalSupply
                        totalSupply += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                        if balanceOf[address(msg.sender)].field_256 + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < balanceOf[address(msg.sender)].field_256:
                            revert with 0, 'add failed'
                        balanceOf[address(msg.sender)].field_256 += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                        if totalSupply > 0:
                            if not (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                                require totalSupply
                                if balanceOf[address(msg.sender)].field_1024 + (0 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                    revert with 0, 'add failed'
                                balanceOf[address(msg.sender)].field_1024 += 0 / totalSupply
                            else:
                                require (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                                if (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 != stor10:
                                    revert with 0, 'mul failed'
                                require totalSupply
                                if balanceOf[address(msg.sender)].field_1024 + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                    revert with 0, 'add failed'
                                balanceOf[address(msg.sender)].field_1024 += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply
                        if stor10 + (msg.value * stor0 / stor1) < stor10:
                            revert with 0, 'add failed'
                        stor10 += msg.value * stor0 / stor1
                        emit Purchase(msg.value, (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18, stor8 / 10^18, block.timestamp, msg.sender);
                else:
                    require (80000000000 * 10^18 * msg.value) - (80000000000 * 10^18 * msg.value * stor0 / stor1)
                    if (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) / (80000000000 * 10^18 * msg.value) - (80000000000 * 10^18 * msg.value * stor0 / stor1) != 10^18:
                        revert with 0, 'mul failed'
                    if not (2 * stor8) - 10000000000 * 10^18:
                        if (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) < 0:
                            revert with 0, 'add failed'
                        s = (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 1 / 2
                        t = (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1)
                        while s < t:
                            require s
                            if ((0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) / s) + s < (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) / s:
                                revert with 0, 'add failed'
                            s = ((0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) / s) + s / 2
                            t = s
                            continue 
                    else:
                        require (2 * stor8) - 10000000000 * 10^18
                        if (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / (2 * stor8) - 10000000000 * 10^18 != (2 * stor8) - 10000000000 * 10^18:
                            revert with 0, 'mul failed'
                        if (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) < 0:
                            revert with 0, 'add failed'
                        s = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000001 / 2
                        t = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000
                        while s < t:
                            require s
                            if ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s < (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s:
                                revert with 0, 'add failed'
                            s = ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s / 2
                            t = s
                            continue 
                    if (2 * stor8) - 10000000000 * 10^18 > t:
                        revert with 0, 'sub failed'
                    if not t + -(2 * stor8) + 10000000000 * 10^18:
                        if stor8 < stor8:
                            revert with 0, 'add failed'
                        revert with 0, 'Incoming funds is too small'
                    require t + -(2 * stor8) + 10000000000 * 10^18
                    if (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / t + -(2 * stor8) + 10000000000 * 10^18 != 10^18:
                        revert with 0, 'mul failed'
                    if 10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10000000000 * 10^18 != (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                        revert with 0, 'mul failed'
                    if stor8 + (10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18) < stor8:
                        revert with 0, 'add failed'
                    if not (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                        revert with 0, 'Incoming funds is too small'
                    stor8 += 10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18
                    if totalSupply + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < totalSupply:
                        revert with 0, 'add failed'
                    if totalSupply > 0:
                        if not stor10:
                            require totalSupply
                            stor10 = 0 / totalSupply
                        else:
                            require stor10
                            if (totalSupply * stor10) + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / stor10 != totalSupply + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18):
                                revert with 0, 'mul failed'
                            require totalSupply
                            stor10 = (totalSupply * stor10) + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / totalSupply
                    totalSupply += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                    if balanceOf[address(msg.sender)].field_256 + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < balanceOf[address(msg.sender)].field_256:
                        revert with 0, 'add failed'
                    balanceOf[address(msg.sender)].field_256 += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                    if totalSupply > 0:
                        if not (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                            require totalSupply
                            if balanceOf[address(msg.sender)].field_1024 + (0 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                revert with 0, 'add failed'
                            balanceOf[address(msg.sender)].field_1024 += 0 / totalSupply
                        else:
                            require (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                            if (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 != stor10:
                                revert with 0, 'mul failed'
                            require totalSupply
                            if balanceOf[address(msg.sender)].field_1024 + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                revert with 0, 'add failed'
                            balanceOf[address(msg.sender)].field_1024 += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply
                    if stor10 + (msg.value * stor0 / stor1) < stor10:
                        revert with 0, 'add failed'
                    stor10 += msg.value * stor0 / stor1
                    emit Purchase(msg.value, (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18, stor8 / 10^18, block.timestamp, msg.sender);
            else:
                if balanceOf[balanceOf[address(msg.sender)].field_0].field_256 < 10 * 10^18:
                    if not msg.value * stor0 / stor1:
                        revert with 0, 'Incoming funds is too small'
                    if not stor8:
                        revert with 0, 'sub failed'
                    require stor8
                    if 2 * stor8 / stor8 != 2:
                        revert with 0, 'mul failed'
                    if 10000000000 * 10^18 > 2 * stor8:
                        revert with 0, 'sub failed'
                    if (80000000000 * 10^18 * msg.value) - (80000000000 * 10^18 * msg.value * stor0 / stor1) / 80000000000 * 10^18 != msg.value - (msg.value * stor0 / stor1):
                        revert with 0, 'mul failed'
                    if not (80000000000 * 10^18 * msg.value) - (80000000000 * 10^18 * msg.value * stor0 / stor1):
                        if not (2 * stor8) - 10000000000 * 10^18:
                            if (2 * stor8) - 10000000000 * 10^18 > 0:
                                revert with 0, 'sub failed'
                            if not -(2 * stor8) + 10000000000 * 10^18:
                                if stor8 < stor8:
                                    revert with 0, 'add failed'
                                revert with 0, 'Incoming funds is too small'
                            require -(2 * stor8) + 10000000000 * 10^18
                            if (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / -(2 * stor8) + 10000000000 * 10^18 != 10^18:
                                revert with 0, 'mul failed'
                            if 10000000000 * 10^18 * (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10000000000 * 10^18 != (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                                revert with 0, 'mul failed'
                            if stor8 + (10000000000 * 10^18 * (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18) < stor8:
                                revert with 0, 'add failed'
                            if not (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                                revert with 0, 'Incoming funds is too small'
                            stor8 += 10000000000 * 10^18 * (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18
                            if totalSupply + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < totalSupply:
                                revert with 0, 'add failed'
                            if totalSupply > 0:
                                if not stor10:
                                    require totalSupply
                                    stor10 = 0 / totalSupply
                                else:
                                    require stor10
                                    if (totalSupply * stor10) + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / stor10 != totalSupply + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18):
                                        revert with 0, 'mul failed'
                                    require totalSupply
                                    stor10 = (totalSupply * stor10) + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / totalSupply
                            totalSupply += (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                            if balanceOf[address(msg.sender)].field_256 + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < balanceOf[address(msg.sender)].field_256:
                                revert with 0, 'add failed'
                            balanceOf[address(msg.sender)].field_256 += (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                            if totalSupply > 0:
                                if not (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                                    require totalSupply
                                    if balanceOf[address(msg.sender)].field_1024 + (0 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                        revert with 0, 'add failed'
                                    balanceOf[address(msg.sender)].field_1024 += 0 / totalSupply
                                else:
                                    require (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                                    if (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 != stor10:
                                        revert with 0, 'mul failed'
                                    require totalSupply
                                    if balanceOf[address(msg.sender)].field_1024 + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                        revert with 0, 'add failed'
                                    balanceOf[address(msg.sender)].field_1024 += (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply
                            if stor10 + (msg.value * stor0 / stor1) < stor10:
                                revert with 0, 'add failed'
                            stor10 += msg.value * stor0 / stor1
                            emit Purchase(msg.value, (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18, stor8 / 10^18, block.timestamp, msg.sender);
                        else:
                            require (2 * stor8) - 10000000000 * 10^18
                            if (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / (2 * stor8) - 10000000000 * 10^18 != (2 * stor8) - 10000000000 * 10^18:
                                revert with 0, 'mul failed'
                            s = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000001 / 2
                            t = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000
                            while s < t:
                                require s
                                if ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s < (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s:
                                    revert with 0, 'add failed'
                                s = ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s / 2
                                t = s
                                continue 
                            if (2 * stor8) - 10000000000 * 10^18 > t:
                                revert with 0, 'sub failed'
                            if not t + -(2 * stor8) + 10000000000 * 10^18:
                                if stor8 < stor8:
                                    revert with 0, 'add failed'
                                revert with 0, 'Incoming funds is too small'
                            require t + -(2 * stor8) + 10000000000 * 10^18
                            if (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / t + -(2 * stor8) + 10000000000 * 10^18 != 10^18:
                                revert with 0, 'mul failed'
                            if 10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10000000000 * 10^18 != (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                                revert with 0, 'mul failed'
                            if stor8 + (10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18) < stor8:
                                revert with 0, 'add failed'
                            if not (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                                revert with 0, 'Incoming funds is too small'
                            stor8 += 10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18
                            if totalSupply + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < totalSupply:
                                revert with 0, 'add failed'
                            if totalSupply > 0:
                                if not stor10:
                                    require totalSupply
                                    stor10 = 0 / totalSupply
                                else:
                                    require stor10
                                    if (totalSupply * stor10) + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / stor10 != totalSupply + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18):
                                        revert with 0, 'mul failed'
                                    require totalSupply
                                    stor10 = (totalSupply * stor10) + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / totalSupply
                            totalSupply += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                            if balanceOf[address(msg.sender)].field_256 + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < balanceOf[address(msg.sender)].field_256:
                                revert with 0, 'add failed'
                            balanceOf[address(msg.sender)].field_256 += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                            if totalSupply > 0:
                                if not (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                                    require totalSupply
                                    if balanceOf[address(msg.sender)].field_1024 + (0 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                        revert with 0, 'add failed'
                                    balanceOf[address(msg.sender)].field_1024 += 0 / totalSupply
                                else:
                                    require (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                                    if (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 != stor10:
                                        revert with 0, 'mul failed'
                                    require totalSupply
                                    if balanceOf[address(msg.sender)].field_1024 + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                        revert with 0, 'add failed'
                                    balanceOf[address(msg.sender)].field_1024 += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply
                            if stor10 + (msg.value * stor0 / stor1) < stor10:
                                revert with 0, 'add failed'
                            stor10 += msg.value * stor0 / stor1
                            emit Purchase(msg.value, (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18, stor8 / 10^18, block.timestamp, msg.sender);
                    else:
                        require (80000000000 * 10^18 * msg.value) - (80000000000 * 10^18 * msg.value * stor0 / stor1)
                        if (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) / (80000000000 * 10^18 * msg.value) - (80000000000 * 10^18 * msg.value * stor0 / stor1) != 10^18:
                            revert with 0, 'mul failed'
                        if not (2 * stor8) - 10000000000 * 10^18:
                            if (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) < 0:
                                revert with 0, 'add failed'
                            s = (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 1 / 2
                            t = (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1)
                            while s < t:
                                require s
                                if ((0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) / s) + s < (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) / s:
                                    revert with 0, 'add failed'
                                s = ((0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) / s) + s / 2
                                t = s
                                continue 
                        else:
                            require (2 * stor8) - 10000000000 * 10^18
                            if (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / (2 * stor8) - 10000000000 * 10^18 != (2 * stor8) - 10000000000 * 10^18:
                                revert with 0, 'mul failed'
                            if (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) < 0:
                                revert with 0, 'add failed'
                            s = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000001 / 2
                            t = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000
                            while s < t:
                                require s
                                if ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s < (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s:
                                    revert with 0, 'add failed'
                                s = ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s / 2
                                t = s
                                continue 
                        if (2 * stor8) - 10000000000 * 10^18 > t:
                            revert with 0, 'sub failed'
                        if not t + -(2 * stor8) + 10000000000 * 10^18:
                            if stor8 < stor8:
                                revert with 0, 'add failed'
                            revert with 0, 'Incoming funds is too small'
                        require t + -(2 * stor8) + 10000000000 * 10^18
                        if (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / t + -(2 * stor8) + 10000000000 * 10^18 != 10^18:
                            revert with 0, 'mul failed'
                        if 10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10000000000 * 10^18 != (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                            revert with 0, 'mul failed'
                        if stor8 + (10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18) < stor8:
                            revert with 0, 'add failed'
                        if not (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                            revert with 0, 'Incoming funds is too small'
                        stor8 += 10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18
                        if totalSupply + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < totalSupply:
                            revert with 0, 'add failed'
                        if totalSupply > 0:
                            if not stor10:
                                require totalSupply
                                stor10 = 0 / totalSupply
                            else:
                                require stor10
                                if (totalSupply * stor10) + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / stor10 != totalSupply + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18):
                                    revert with 0, 'mul failed'
                                require totalSupply
                                stor10 = (totalSupply * stor10) + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / totalSupply
                        totalSupply += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                        if balanceOf[address(msg.sender)].field_256 + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < balanceOf[address(msg.sender)].field_256:
                            revert with 0, 'add failed'
                        balanceOf[address(msg.sender)].field_256 += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                        if totalSupply > 0:
                            if not (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                                require totalSupply
                                if balanceOf[address(msg.sender)].field_1024 + (0 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                    revert with 0, 'add failed'
                                balanceOf[address(msg.sender)].field_1024 += 0 / totalSupply
                            else:
                                require (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                                if (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 != stor10:
                                    revert with 0, 'mul failed'
                                require totalSupply
                                if balanceOf[address(msg.sender)].field_1024 + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                    revert with 0, 'add failed'
                                balanceOf[address(msg.sender)].field_1024 += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply
                        if stor10 + (msg.value * stor0 / stor1) < stor10:
                            revert with 0, 'add failed'
                        stor10 += msg.value * stor0 / stor1
                        emit Purchase(msg.value, (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18, stor8 / 10^18, block.timestamp, msg.sender);
                else:
                    if not msg.value * stor0 / stor1:
                        if balanceOf[balanceOf[address(msg.sender)].field_0].field_768 < balanceOf[balanceOf[address(msg.sender)].field_0].field_768:
                            revert with 0, 'add failed'
                        emit ReferralReward(msg.value, 0, block.timestamp, msg.sender, balanceOf[address(msg.sender)].field_0);
                        revert with 0, 'Incoming funds is too small'
                    require msg.value * stor0 / stor1
                    if msg.value * stor0 / stor1 * stor6 / msg.value * stor0 / stor1 != stor6:
                        revert with 0, 'mul failed'
                    require stor7
                    if msg.value * stor0 / stor1 * stor6 / stor7 > msg.value * stor0 / stor1:
                        revert with 0, 'sub failed'
                    if balanceOf[balanceOf[address(msg.sender)].field_0].field_768 + (msg.value * stor0 / stor1 * stor6 / stor7) < balanceOf[balanceOf[address(msg.sender)].field_0].field_768:
                        revert with 0, 'add failed'
                    balanceOf[balanceOf[address(msg.sender)].field_0].field_768 += msg.value * stor0 / stor1 * stor6 / stor7
                    emit ReferralReward(msg.value, msg.value * stor0 / stor1 * stor6 / stor7, block.timestamp, msg.sender, balanceOf[address(msg.sender)].field_0);
                    if not (msg.value * stor0 / stor1) - (msg.value * stor0 / stor1 * stor6 / stor7):
                        revert with 0, 'Incoming funds is too small'
                    if not stor8:
                        revert with 0, 'sub failed'
                    require stor8
                    if 2 * stor8 / stor8 != 2:
                        revert with 0, 'mul failed'
                    if 10000000000 * 10^18 > 2 * stor8:
                        revert with 0, 'sub failed'
                    if (80000000000 * 10^18 * msg.value) - (80000000000 * 10^18 * msg.value * stor0 / stor1) / 80000000000 * 10^18 != msg.value - (msg.value * stor0 / stor1):
                        revert with 0, 'mul failed'
                    if not (80000000000 * 10^18 * msg.value) - (80000000000 * 10^18 * msg.value * stor0 / stor1):
                        if not (2 * stor8) - 10000000000 * 10^18:
                            if (2 * stor8) - 10000000000 * 10^18 > 0:
                                revert with 0, 'sub failed'
                            if not -(2 * stor8) + 10000000000 * 10^18:
                                if stor8 < stor8:
                                    revert with 0, 'add failed'
                                revert with 0, 'Incoming funds is too small'
                            require -(2 * stor8) + 10000000000 * 10^18
                            if (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / -(2 * stor8) + 10000000000 * 10^18 != 10^18:
                                revert with 0, 'mul failed'
                            if 10000000000 * 10^18 * (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10000000000 * 10^18 != (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                                revert with 0, 'mul failed'
                            if stor8 + (10000000000 * 10^18 * (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18) < stor8:
                                revert with 0, 'add failed'
                            if not (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                                revert with 0, 'Incoming funds is too small'
                            stor8 += 10000000000 * 10^18 * (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18
                            if totalSupply + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < totalSupply:
                                revert with 0, 'add failed'
                            if totalSupply > 0:
                                if not stor10:
                                    require totalSupply
                                    stor10 = 0 / totalSupply
                                else:
                                    require stor10
                                    if (totalSupply * stor10) + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / stor10 != totalSupply + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18):
                                        revert with 0, 'mul failed'
                                    require totalSupply
                                    stor10 = (totalSupply * stor10) + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / totalSupply
                            totalSupply += (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                            if balanceOf[address(msg.sender)].field_256 + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < balanceOf[address(msg.sender)].field_256:
                                revert with 0, 'add failed'
                            balanceOf[address(msg.sender)].field_256 += (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                            if totalSupply > 0:
                                if not (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                                    require totalSupply
                                    if balanceOf[address(msg.sender)].field_1024 + (0 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                        revert with 0, 'add failed'
                                    balanceOf[address(msg.sender)].field_1024 += 0 / totalSupply
                                else:
                                    require (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                                    if (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 != stor10:
                                        revert with 0, 'mul failed'
                                    require totalSupply
                                    if balanceOf[address(msg.sender)].field_1024 + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                        revert with 0, 'add failed'
                                    balanceOf[address(msg.sender)].field_1024 += (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply
                            if stor10 + (msg.value * stor0 / stor1) - (msg.value * stor0 / stor1 * stor6 / stor7) < stor10:
                                revert with 0, 'add failed'
                            stor10 = stor10 + (msg.value * stor0 / stor1) - (msg.value * stor0 / stor1 * stor6 / stor7)
                            emit Purchase(msg.value, (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18, stor8 / 10^18, block.timestamp, msg.sender);
                        else:
                            require (2 * stor8) - 10000000000 * 10^18
                            if (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / (2 * stor8) - 10000000000 * 10^18 != (2 * stor8) - 10000000000 * 10^18:
                                revert with 0, 'mul failed'
                            s = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000001 / 2
                            t = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000
                            while s < t:
                                require s
                                if ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s < (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s:
                                    revert with 0, 'add failed'
                                s = ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s / 2
                                t = s
                                continue 
                            if (2 * stor8) - 10000000000 * 10^18 > t:
                                revert with 0, 'sub failed'
                            if not t + -(2 * stor8) + 10000000000 * 10^18:
                                if stor8 < stor8:
                                    revert with 0, 'add failed'
                                revert with 0, 'Incoming funds is too small'
                            require t + -(2 * stor8) + 10000000000 * 10^18
                            if (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / t + -(2 * stor8) + 10000000000 * 10^18 != 10^18:
                                revert with 0, 'mul failed'
                            if 10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10000000000 * 10^18 != (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                                revert with 0, 'mul failed'
                            if stor8 + (10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18) < stor8:
                                revert with 0, 'add failed'
                            if not (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                                revert with 0, 'Incoming funds is too small'
                            stor8 += 10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18
                            if totalSupply + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < totalSupply:
                                revert with 0, 'add failed'
                            if totalSupply > 0:
                                if not stor10:
                                    require totalSupply
                                    stor10 = 0 / totalSupply
                                else:
                                    require stor10
                                    if (totalSupply * stor10) + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / stor10 != totalSupply + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18):
                                        revert with 0, 'mul failed'
                                    require totalSupply
                                    stor10 = (totalSupply * stor10) + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / totalSupply
                            totalSupply += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                            if balanceOf[address(msg.sender)].field_256 + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < balanceOf[address(msg.sender)].field_256:
                                revert with 0, 'add failed'
                            balanceOf[address(msg.sender)].field_256 += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                            if totalSupply > 0:
                                if not (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                                    require totalSupply
                                    if balanceOf[address(msg.sender)].field_1024 + (0 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                        revert with 0, 'add failed'
                                    balanceOf[address(msg.sender)].field_1024 += 0 / totalSupply
                                else:
                                    require (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                                    if (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 != stor10:
                                        revert with 0, 'mul failed'
                                    require totalSupply
                                    if balanceOf[address(msg.sender)].field_1024 + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                        revert with 0, 'add failed'
                                    balanceOf[address(msg.sender)].field_1024 += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply
                            if stor10 + (msg.value * stor0 / stor1) - (msg.value * stor0 / stor1 * stor6 / stor7) < stor10:
                                revert with 0, 'add failed'
                            stor10 = stor10 + (msg.value * stor0 / stor1) - (msg.value * stor0 / stor1 * stor6 / stor7)
                            emit Purchase(msg.value, (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18, stor8 / 10^18, block.timestamp, msg.sender);
                    else:
                        require (80000000000 * 10^18 * msg.value) - (80000000000 * 10^18 * msg.value * stor0 / stor1)
                        if (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) / (80000000000 * 10^18 * msg.value) - (80000000000 * 10^18 * msg.value * stor0 / stor1) != 10^18:
                            revert with 0, 'mul failed'
                        if not (2 * stor8) - 10000000000 * 10^18:
                            if (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) < 0:
                                revert with 0, 'add failed'
                            s = (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 1 / 2
                            t = (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1)
                            while s < t:
                                require s
                                if ((0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) / s) + s < (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) / s:
                                    revert with 0, 'add failed'
                                s = ((0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) / s) + s / 2
                                t = s
                                continue 
                        else:
                            require (2 * stor8) - 10000000000 * 10^18
                            if (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / (2 * stor8) - 10000000000 * 10^18 != (2 * stor8) - 10000000000 * 10^18:
                                revert with 0, 'mul failed'
                            if (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) < 0:
                                revert with 0, 'add failed'
                            s = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000001 / 2
                            t = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000
                            while s < t:
                                require s
                                if ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s < (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s:
                                    revert with 0, 'add failed'
                                s = ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s / 2
                                t = s
                                continue 
                        if (2 * stor8) - 10000000000 * 10^18 > t:
                            revert with 0, 'sub failed'
                        if not t + -(2 * stor8) + 10000000000 * 10^18:
                            if stor8 < stor8:
                                revert with 0, 'add failed'
                            revert with 0, 'Incoming funds is too small'
                        require t + -(2 * stor8) + 10000000000 * 10^18
                        if (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / t + -(2 * stor8) + 10000000000 * 10^18 != 10^18:
                            revert with 0, 'mul failed'
                        if 10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10000000000 * 10^18 != (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                            revert with 0, 'mul failed'
                        if stor8 + (10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18) < stor8:
                            revert with 0, 'add failed'
                        if not (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                            revert with 0, 'Incoming funds is too small'
                        stor8 += 10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18
                        if totalSupply + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < totalSupply:
                            revert with 0, 'add failed'
                        if totalSupply > 0:
                            if not stor10:
                                require totalSupply
                                stor10 = 0 / totalSupply
                            else:
                                require stor10
                                if (totalSupply * stor10) + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / stor10 != totalSupply + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18):
                                    revert with 0, 'mul failed'
                                require totalSupply
                                stor10 = (totalSupply * stor10) + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / totalSupply
                        totalSupply += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                        if balanceOf[address(msg.sender)].field_256 + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < balanceOf[address(msg.sender)].field_256:
                            revert with 0, 'add failed'
                        balanceOf[address(msg.sender)].field_256 += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                        if totalSupply > 0:
                            if not (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                                require totalSupply
                                if balanceOf[address(msg.sender)].field_1024 + (0 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                    revert with 0, 'add failed'
                                balanceOf[address(msg.sender)].field_1024 += 0 / totalSupply
                            else:
                                require (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                                if (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 != stor10:
                                    revert with 0, 'mul failed'
                                require totalSupply
                                if balanceOf[address(msg.sender)].field_1024 + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                    revert with 0, 'add failed'
                                balanceOf[address(msg.sender)].field_1024 += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply
                        if stor10 + (msg.value * stor0 / stor1) - (msg.value * stor0 / stor1 * stor6 / stor7) < stor10:
                            revert with 0, 'add failed'
                        stor10 = stor10 + (msg.value * stor0 / stor1) - (msg.value * stor0 / stor1 * stor6 / stor7)
                        emit Purchase(msg.value, (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18, stor8 / 10^18, block.timestamp, msg.sender);
        else:
            if not balanceOf[address(msg.sender)].field_0:
                balanceOf[address(msg.sender)].field_0 = arg1
                if not stor8:
                    revert with 0, 'sub failed'
                require stor8
                if 2 * stor8 / stor8 != 2:
                    revert with 0, 'mul failed'
                if 10000000000 * 10^18 > 2 * stor8:
                    revert with 0, 'sub failed'
                if (80000000000 * 10^18 * msg.value) - (80000000000 * 10^18 * msg.value * stor0 / stor1) / 80000000000 * 10^18 != msg.value - (msg.value * stor0 / stor1):
                    revert with 0, 'mul failed'
                if not (80000000000 * 10^18 * msg.value) - (80000000000 * 10^18 * msg.value * stor0 / stor1):
                    if not (2 * stor8) - 10000000000 * 10^18:
                        if (2 * stor8) - 10000000000 * 10^18 > 0:
                            revert with 0, 'sub failed'
                        if not -(2 * stor8) + 10000000000 * 10^18:
                            if stor8 < stor8:
                                revert with 0, 'add failed'
                            revert with 0, 'Incoming funds is too small'
                        require -(2 * stor8) + 10000000000 * 10^18
                        if (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / -(2 * stor8) + 10000000000 * 10^18 != 10^18:
                            revert with 0, 'mul failed'
                        if 10000000000 * 10^18 * (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10000000000 * 10^18 != (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                            revert with 0, 'mul failed'
                        if stor8 + (10000000000 * 10^18 * (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18) < stor8:
                            revert with 0, 'add failed'
                        if not (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                            revert with 0, 'Incoming funds is too small'
                        stor8 += 10000000000 * 10^18 * (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18
                        if totalSupply + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < totalSupply:
                            revert with 0, 'add failed'
                        if totalSupply > 0:
                            if not stor10:
                                require totalSupply
                                stor10 = 0 / totalSupply
                            else:
                                require stor10
                                if (totalSupply * stor10) + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / stor10 != totalSupply + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18):
                                    revert with 0, 'mul failed'
                                require totalSupply
                                stor10 = (totalSupply * stor10) + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / totalSupply
                        totalSupply += (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                        if balanceOf[address(msg.sender)].field_256 + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < balanceOf[address(msg.sender)].field_256:
                            revert with 0, 'add failed'
                        balanceOf[address(msg.sender)].field_256 += (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                        if totalSupply > 0:
                            if not (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                                require totalSupply
                                if balanceOf[address(msg.sender)].field_1024 + (0 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                    revert with 0, 'add failed'
                                balanceOf[address(msg.sender)].field_1024 += 0 / totalSupply
                            else:
                                require (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                                if (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 != stor10:
                                    revert with 0, 'mul failed'
                                require totalSupply
                                if balanceOf[address(msg.sender)].field_1024 + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                    revert with 0, 'add failed'
                                balanceOf[address(msg.sender)].field_1024 += (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply
                        if stor10 + (msg.value * stor0 / stor1) < stor10:
                            revert with 0, 'add failed'
                        stor10 += msg.value * stor0 / stor1
                        emit Purchase(msg.value, (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18, stor8 / 10^18, block.timestamp, msg.sender);
                    else:
                        require (2 * stor8) - 10000000000 * 10^18
                        if (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / (2 * stor8) - 10000000000 * 10^18 != (2 * stor8) - 10000000000 * 10^18:
                            revert with 0, 'mul failed'
                        s = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000001 / 2
                        t = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000
                        while s < t:
                            require s
                            if ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s < (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s:
                                revert with 0, 'add failed'
                            s = ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s / 2
                            t = s
                            continue 
                        if (2 * stor8) - 10000000000 * 10^18 > t:
                            revert with 0, 'sub failed'
                        if not t + -(2 * stor8) + 10000000000 * 10^18:
                            if stor8 < stor8:
                                revert with 0, 'add failed'
                            revert with 0, 'Incoming funds is too small'
                        require t + -(2 * stor8) + 10000000000 * 10^18
                        if (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / t + -(2 * stor8) + 10000000000 * 10^18 != 10^18:
                            revert with 0, 'mul failed'
                        if 10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10000000000 * 10^18 != (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                            revert with 0, 'mul failed'
                        if stor8 + (10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18) < stor8:
                            revert with 0, 'add failed'
                        if not (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                            revert with 0, 'Incoming funds is too small'
                        stor8 += 10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18
                        if totalSupply + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < totalSupply:
                            revert with 0, 'add failed'
                        if totalSupply > 0:
                            if not stor10:
                                require totalSupply
                                stor10 = 0 / totalSupply
                            else:
                                require stor10
                                if (totalSupply * stor10) + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / stor10 != totalSupply + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18):
                                    revert with 0, 'mul failed'
                                require totalSupply
                                stor10 = (totalSupply * stor10) + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / totalSupply
                        totalSupply += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                        if balanceOf[address(msg.sender)].field_256 + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < balanceOf[address(msg.sender)].field_256:
                            revert with 0, 'add failed'
                        balanceOf[address(msg.sender)].field_256 += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                        if totalSupply > 0:
                            if not (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                                require totalSupply
                                if balanceOf[address(msg.sender)].field_1024 + (0 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                    revert with 0, 'add failed'
                                balanceOf[address(msg.sender)].field_1024 += 0 / totalSupply
                            else:
                                require (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                                if (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 != stor10:
                                    revert with 0, 'mul failed'
                                require totalSupply
                                if balanceOf[address(msg.sender)].field_1024 + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                    revert with 0, 'add failed'
                                balanceOf[address(msg.sender)].field_1024 += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply
                        if stor10 + (msg.value * stor0 / stor1) < stor10:
                            revert with 0, 'add failed'
                        stor10 += msg.value * stor0 / stor1
                        emit Purchase(msg.value, (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18, stor8 / 10^18, block.timestamp, msg.sender);
                else:
                    require (80000000000 * 10^18 * msg.value) - (80000000000 * 10^18 * msg.value * stor0 / stor1)
                    if (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) / (80000000000 * 10^18 * msg.value) - (80000000000 * 10^18 * msg.value * stor0 / stor1) != 10^18:
                        revert with 0, 'mul failed'
                    if not (2 * stor8) - 10000000000 * 10^18:
                        if (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) < 0:
                            revert with 0, 'add failed'
                        s = (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 1 / 2
                        t = (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1)
                        while s < t:
                            require s
                            if ((0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) / s) + s < (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) / s:
                                revert with 0, 'add failed'
                            s = ((0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) / s) + s / 2
                            t = s
                            continue 
                    else:
                        require (2 * stor8) - 10000000000 * 10^18
                        if (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / (2 * stor8) - 10000000000 * 10^18 != (2 * stor8) - 10000000000 * 10^18:
                            revert with 0, 'mul failed'
                        if (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) < 0:
                            revert with 0, 'add failed'
                        s = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000001 / 2
                        t = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000
                        while s < t:
                            require s
                            if ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s < (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s:
                                revert with 0, 'add failed'
                            s = ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s / 2
                            t = s
                            continue 
                    if (2 * stor8) - 10000000000 * 10^18 > t:
                        revert with 0, 'sub failed'
                    if not t + -(2 * stor8) + 10000000000 * 10^18:
                        if stor8 < stor8:
                            revert with 0, 'add failed'
                        revert with 0, 'Incoming funds is too small'
                    require t + -(2 * stor8) + 10000000000 * 10^18
                    if (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / t + -(2 * stor8) + 10000000000 * 10^18 != 10^18:
                        revert with 0, 'mul failed'
                    if 10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10000000000 * 10^18 != (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                        revert with 0, 'mul failed'
                    if stor8 + (10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18) < stor8:
                        revert with 0, 'add failed'
                    if not (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                        revert with 0, 'Incoming funds is too small'
                    stor8 += 10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18
                    if totalSupply + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < totalSupply:
                        revert with 0, 'add failed'
                    if totalSupply > 0:
                        if not stor10:
                            require totalSupply
                            stor10 = 0 / totalSupply
                        else:
                            require stor10
                            if (totalSupply * stor10) + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / stor10 != totalSupply + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18):
                                revert with 0, 'mul failed'
                            require totalSupply
                            stor10 = (totalSupply * stor10) + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / totalSupply
                    totalSupply += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                    if balanceOf[address(msg.sender)].field_256 + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < balanceOf[address(msg.sender)].field_256:
                        revert with 0, 'add failed'
                    balanceOf[address(msg.sender)].field_256 += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                    if totalSupply > 0:
                        if not (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                            require totalSupply
                            if balanceOf[address(msg.sender)].field_1024 + (0 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                revert with 0, 'add failed'
                            balanceOf[address(msg.sender)].field_1024 += 0 / totalSupply
                        else:
                            require (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                            if (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 != stor10:
                                revert with 0, 'mul failed'
                            require totalSupply
                            if balanceOf[address(msg.sender)].field_1024 + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                revert with 0, 'add failed'
                            balanceOf[address(msg.sender)].field_1024 += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply
                    if stor10 + (msg.value * stor0 / stor1) < stor10:
                        revert with 0, 'add failed'
                    stor10 += msg.value * stor0 / stor1
                    emit Purchase(msg.value, (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18, stor8 / 10^18, block.timestamp, msg.sender);
            else:
                if balanceOf[balanceOf[address(msg.sender)].field_0].field_256 < 10 * 10^18:
                    if not msg.value * stor0 / stor1:
                        revert with 0, 'Incoming funds is too small'
                    if not stor8:
                        revert with 0, 'sub failed'
                    require stor8
                    if 2 * stor8 / stor8 != 2:
                        revert with 0, 'mul failed'
                    if 10000000000 * 10^18 > 2 * stor8:
                        revert with 0, 'sub failed'
                    if (80000000000 * 10^18 * msg.value) - (80000000000 * 10^18 * msg.value * stor0 / stor1) / 80000000000 * 10^18 != msg.value - (msg.value * stor0 / stor1):
                        revert with 0, 'mul failed'
                    if not (80000000000 * 10^18 * msg.value) - (80000000000 * 10^18 * msg.value * stor0 / stor1):
                        if not (2 * stor8) - 10000000000 * 10^18:
                            if (2 * stor8) - 10000000000 * 10^18 > 0:
                                revert with 0, 'sub failed'
                            if not -(2 * stor8) + 10000000000 * 10^18:
                                if stor8 < stor8:
                                    revert with 0, 'add failed'
                                revert with 0, 'Incoming funds is too small'
                            require -(2 * stor8) + 10000000000 * 10^18
                            if (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / -(2 * stor8) + 10000000000 * 10^18 != 10^18:
                                revert with 0, 'mul failed'
                            if 10000000000 * 10^18 * (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10000000000 * 10^18 != (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                                revert with 0, 'mul failed'
                            if stor8 + (10000000000 * 10^18 * (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18) < stor8:
                                revert with 0, 'add failed'
                            if not (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                                revert with 0, 'Incoming funds is too small'
                            stor8 += 10000000000 * 10^18 * (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18
                            if totalSupply + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < totalSupply:
                                revert with 0, 'add failed'
                            if totalSupply > 0:
                                if not stor10:
                                    require totalSupply
                                    stor10 = 0 / totalSupply
                                else:
                                    require stor10
                                    if (totalSupply * stor10) + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / stor10 != totalSupply + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18):
                                        revert with 0, 'mul failed'
                                    require totalSupply
                                    stor10 = (totalSupply * stor10) + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / totalSupply
                            totalSupply += (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                            if balanceOf[address(msg.sender)].field_256 + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < balanceOf[address(msg.sender)].field_256:
                                revert with 0, 'add failed'
                            balanceOf[address(msg.sender)].field_256 += (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                            if totalSupply > 0:
                                if not (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                                    require totalSupply
                                    if balanceOf[address(msg.sender)].field_1024 + (0 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                        revert with 0, 'add failed'
                                    balanceOf[address(msg.sender)].field_1024 += 0 / totalSupply
                                else:
                                    require (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                                    if (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 != stor10:
                                        revert with 0, 'mul failed'
                                    require totalSupply
                                    if balanceOf[address(msg.sender)].field_1024 + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                        revert with 0, 'add failed'
                                    balanceOf[address(msg.sender)].field_1024 += (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply
                            if stor10 + (msg.value * stor0 / stor1) < stor10:
                                revert with 0, 'add failed'
                            stor10 += msg.value * stor0 / stor1
                            emit Purchase(msg.value, (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18, stor8 / 10^18, block.timestamp, msg.sender);
                        else:
                            require (2 * stor8) - 10000000000 * 10^18
                            if (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / (2 * stor8) - 10000000000 * 10^18 != (2 * stor8) - 10000000000 * 10^18:
                                revert with 0, 'mul failed'
                            s = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000001 / 2
                            t = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000
                            while s < t:
                                require s
                                if ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s < (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s:
                                    revert with 0, 'add failed'
                                s = ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s / 2
                                t = s
                                continue 
                            if (2 * stor8) - 10000000000 * 10^18 > t:
                                revert with 0, 'sub failed'
                            if not t + -(2 * stor8) + 10000000000 * 10^18:
                                if stor8 < stor8:
                                    revert with 0, 'add failed'
                                revert with 0, 'Incoming funds is too small'
                            require t + -(2 * stor8) + 10000000000 * 10^18
                            if (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / t + -(2 * stor8) + 10000000000 * 10^18 != 10^18:
                                revert with 0, 'mul failed'
                            if 10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10000000000 * 10^18 != (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                                revert with 0, 'mul failed'
                            if stor8 + (10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18) < stor8:
                                revert with 0, 'add failed'
                            if not (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                                revert with 0, 'Incoming funds is too small'
                            stor8 += 10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18
                            if totalSupply + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < totalSupply:
                                revert with 0, 'add failed'
                            if totalSupply > 0:
                                if not stor10:
                                    require totalSupply
                                    stor10 = 0 / totalSupply
                                else:
                                    require stor10
                                    if (totalSupply * stor10) + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / stor10 != totalSupply + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18):
                                        revert with 0, 'mul failed'
                                    require totalSupply
                                    stor10 = (totalSupply * stor10) + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / totalSupply
                            totalSupply += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                            if balanceOf[address(msg.sender)].field_256 + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < balanceOf[address(msg.sender)].field_256:
                                revert with 0, 'add failed'
                            balanceOf[address(msg.sender)].field_256 += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                            if totalSupply > 0:
                                if not (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                                    require totalSupply
                                    if balanceOf[address(msg.sender)].field_1024 + (0 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                        revert with 0, 'add failed'
                                    balanceOf[address(msg.sender)].field_1024 += 0 / totalSupply
                                else:
                                    require (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                                    if (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 != stor10:
                                        revert with 0, 'mul failed'
                                    require totalSupply
                                    if balanceOf[address(msg.sender)].field_1024 + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                        revert with 0, 'add failed'
                                    balanceOf[address(msg.sender)].field_1024 += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply
                            if stor10 + (msg.value * stor0 / stor1) < stor10:
                                revert with 0, 'add failed'
                            stor10 += msg.value * stor0 / stor1
                            emit Purchase(msg.value, (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18, stor8 / 10^18, block.timestamp, msg.sender);
                    else:
                        require (80000000000 * 10^18 * msg.value) - (80000000000 * 10^18 * msg.value * stor0 / stor1)
                        if (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) / (80000000000 * 10^18 * msg.value) - (80000000000 * 10^18 * msg.value * stor0 / stor1) != 10^18:
                            revert with 0, 'mul failed'
                        if not (2 * stor8) - 10000000000 * 10^18:
                            if (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) < 0:
                                revert with 0, 'add failed'
                            s = (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 1 / 2
                            t = (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1)
                            while s < t:
                                require s
                                if ((0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) / s) + s < (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) / s:
                                    revert with 0, 'add failed'
                                s = ((0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) / s) + s / 2
                                t = s
                                continue 
                        else:
                            require (2 * stor8) - 10000000000 * 10^18
                            if (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / (2 * stor8) - 10000000000 * 10^18 != (2 * stor8) - 10000000000 * 10^18:
                                revert with 0, 'mul failed'
                            if (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) < 0:
                                revert with 0, 'add failed'
                            s = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000001 / 2
                            t = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000
                            while s < t:
                                require s
                                if ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s < (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s:
                                    revert with 0, 'add failed'
                                s = ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s / 2
                                t = s
                                continue 
                        if (2 * stor8) - 10000000000 * 10^18 > t:
                            revert with 0, 'sub failed'
                        if not t + -(2 * stor8) + 10000000000 * 10^18:
                            if stor8 < stor8:
                                revert with 0, 'add failed'
                            revert with 0, 'Incoming funds is too small'
                        require t + -(2 * stor8) + 10000000000 * 10^18
                        if (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / t + -(2 * stor8) + 10000000000 * 10^18 != 10^18:
                            revert with 0, 'mul failed'
                        if 10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10000000000 * 10^18 != (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                            revert with 0, 'mul failed'
                        if stor8 + (10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18) < stor8:
                            revert with 0, 'add failed'
                        if not (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                            revert with 0, 'Incoming funds is too small'
                        stor8 += 10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18
                        if totalSupply + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < totalSupply:
                            revert with 0, 'add failed'
                        if totalSupply > 0:
                            if not stor10:
                                require totalSupply
                                stor10 = 0 / totalSupply
                            else:
                                require stor10
                                if (totalSupply * stor10) + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / stor10 != totalSupply + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18):
                                    revert with 0, 'mul failed'
                                require totalSupply
                                stor10 = (totalSupply * stor10) + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / totalSupply
                        totalSupply += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                        if balanceOf[address(msg.sender)].field_256 + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < balanceOf[address(msg.sender)].field_256:
                            revert with 0, 'add failed'
                        balanceOf[address(msg.sender)].field_256 += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                        if totalSupply > 0:
                            if not (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                                require totalSupply
                                if balanceOf[address(msg.sender)].field_1024 + (0 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                    revert with 0, 'add failed'
                                balanceOf[address(msg.sender)].field_1024 += 0 / totalSupply
                            else:
                                require (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                                if (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 != stor10:
                                    revert with 0, 'mul failed'
                                require totalSupply
                                if balanceOf[address(msg.sender)].field_1024 + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                    revert with 0, 'add failed'
                                balanceOf[address(msg.sender)].field_1024 += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply
                        if stor10 + (msg.value * stor0 / stor1) < stor10:
                            revert with 0, 'add failed'
                        stor10 += msg.value * stor0 / stor1
                        emit Purchase(msg.value, (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18, stor8 / 10^18, block.timestamp, msg.sender);
                else:
                    if not msg.value * stor0 / stor1:
                        if balanceOf[balanceOf[address(msg.sender)].field_0].field_768 < balanceOf[balanceOf[address(msg.sender)].field_0].field_768:
                            revert with 0, 'add failed'
                        emit ReferralReward(msg.value, 0, block.timestamp, msg.sender, balanceOf[address(msg.sender)].field_0);
                        revert with 0, 'Incoming funds is too small'
                    require msg.value * stor0 / stor1
                    if msg.value * stor0 / stor1 * stor6 / msg.value * stor0 / stor1 != stor6:
                        revert with 0, 'mul failed'
                    require stor7
                    if msg.value * stor0 / stor1 * stor6 / stor7 > msg.value * stor0 / stor1:
                        revert with 0, 'sub failed'
                    if balanceOf[balanceOf[address(msg.sender)].field_0].field_768 + (msg.value * stor0 / stor1 * stor6 / stor7) < balanceOf[balanceOf[address(msg.sender)].field_0].field_768:
                        revert with 0, 'add failed'
                    balanceOf[balanceOf[address(msg.sender)].field_0].field_768 += msg.value * stor0 / stor1 * stor6 / stor7
                    emit ReferralReward(msg.value, msg.value * stor0 / stor1 * stor6 / stor7, block.timestamp, msg.sender, balanceOf[address(msg.sender)].field_0);
                    if not (msg.value * stor0 / stor1) - (msg.value * stor0 / stor1 * stor6 / stor7):
                        revert with 0, 'Incoming funds is too small'
                    if not stor8:
                        revert with 0, 'sub failed'
                    require stor8
                    if 2 * stor8 / stor8 != 2:
                        revert with 0, 'mul failed'
                    if 10000000000 * 10^18 > 2 * stor8:
                        revert with 0, 'sub failed'
                    if (80000000000 * 10^18 * msg.value) - (80000000000 * 10^18 * msg.value * stor0 / stor1) / 80000000000 * 10^18 != msg.value - (msg.value * stor0 / stor1):
                        revert with 0, 'mul failed'
                    if not (80000000000 * 10^18 * msg.value) - (80000000000 * 10^18 * msg.value * stor0 / stor1):
                        if not (2 * stor8) - 10000000000 * 10^18:
                            if (2 * stor8) - 10000000000 * 10^18 > 0:
                                revert with 0, 'sub failed'
                            if not -(2 * stor8) + 10000000000 * 10^18:
                                if stor8 < stor8:
                                    revert with 0, 'add failed'
                                revert with 0, 'Incoming funds is too small'
                            require -(2 * stor8) + 10000000000 * 10^18
                            if (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / -(2 * stor8) + 10000000000 * 10^18 != 10^18:
                                revert with 0, 'mul failed'
                            if 10000000000 * 10^18 * (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10000000000 * 10^18 != (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                                revert with 0, 'mul failed'
                            if stor8 + (10000000000 * 10^18 * (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18) < stor8:
                                revert with 0, 'add failed'
                            if not (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                                revert with 0, 'Incoming funds is too small'
                            stor8 += 10000000000 * 10^18 * (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18
                            if totalSupply + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < totalSupply:
                                revert with 0, 'add failed'
                            if totalSupply > 0:
                                if not stor10:
                                    require totalSupply
                                    stor10 = 0 / totalSupply
                                else:
                                    require stor10
                                    if (totalSupply * stor10) + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / stor10 != totalSupply + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18):
                                        revert with 0, 'mul failed'
                                    require totalSupply
                                    stor10 = (totalSupply * stor10) + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / totalSupply
                            totalSupply += (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                            if balanceOf[address(msg.sender)].field_256 + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < balanceOf[address(msg.sender)].field_256:
                                revert with 0, 'add failed'
                            balanceOf[address(msg.sender)].field_256 += (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                            if totalSupply > 0:
                                if not (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                                    require totalSupply
                                    if balanceOf[address(msg.sender)].field_1024 + (0 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                        revert with 0, 'add failed'
                                    balanceOf[address(msg.sender)].field_1024 += 0 / totalSupply
                                else:
                                    require (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                                    if (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 != stor10:
                                        revert with 0, 'mul failed'
                                    require totalSupply
                                    if balanceOf[address(msg.sender)].field_1024 + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                        revert with 0, 'add failed'
                                    balanceOf[address(msg.sender)].field_1024 += (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply
                            if stor10 + (msg.value * stor0 / stor1) - (msg.value * stor0 / stor1 * stor6 / stor7) < stor10:
                                revert with 0, 'add failed'
                            stor10 = stor10 + (msg.value * stor0 / stor1) - (msg.value * stor0 / stor1 * stor6 / stor7)
                            emit Purchase(msg.value, (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18, stor8 / 10^18, block.timestamp, msg.sender);
                        else:
                            require (2 * stor8) - 10000000000 * 10^18
                            if (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / (2 * stor8) - 10000000000 * 10^18 != (2 * stor8) - 10000000000 * 10^18:
                                revert with 0, 'mul failed'
                            s = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000001 / 2
                            t = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000
                            while s < t:
                                require s
                                if ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s < (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s:
                                    revert with 0, 'add failed'
                                s = ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s / 2
                                t = s
                                continue 
                            if (2 * stor8) - 10000000000 * 10^18 > t:
                                revert with 0, 'sub failed'
                            if not t + -(2 * stor8) + 10000000000 * 10^18:
                                if stor8 < stor8:
                                    revert with 0, 'add failed'
                                revert with 0, 'Incoming funds is too small'
                            require t + -(2 * stor8) + 10000000000 * 10^18
                            if (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / t + -(2 * stor8) + 10000000000 * 10^18 != 10^18:
                                revert with 0, 'mul failed'
                            if 10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10000000000 * 10^18 != (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                                revert with 0, 'mul failed'
                            if stor8 + (10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18) < stor8:
                                revert with 0, 'add failed'
                            if not (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                                revert with 0, 'Incoming funds is too small'
                            stor8 += 10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18
                            if totalSupply + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < totalSupply:
                                revert with 0, 'add failed'
                            if totalSupply > 0:
                                if not stor10:
                                    require totalSupply
                                    stor10 = 0 / totalSupply
                                else:
                                    require stor10
                                    if (totalSupply * stor10) + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / stor10 != totalSupply + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18):
                                        revert with 0, 'mul failed'
                                    require totalSupply
                                    stor10 = (totalSupply * stor10) + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / totalSupply
                            totalSupply += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                            if balanceOf[address(msg.sender)].field_256 + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < balanceOf[address(msg.sender)].field_256:
                                revert with 0, 'add failed'
                            balanceOf[address(msg.sender)].field_256 += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                            if totalSupply > 0:
                                if not (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                                    require totalSupply
                                    if balanceOf[address(msg.sender)].field_1024 + (0 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                        revert with 0, 'add failed'
                                    balanceOf[address(msg.sender)].field_1024 += 0 / totalSupply
                                else:
                                    require (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                                    if (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 != stor10:
                                        revert with 0, 'mul failed'
                                    require totalSupply
                                    if balanceOf[address(msg.sender)].field_1024 + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                        revert with 0, 'add failed'
                                    balanceOf[address(msg.sender)].field_1024 += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply
                            if stor10 + (msg.value * stor0 / stor1) - (msg.value * stor0 / stor1 * stor6 / stor7) < stor10:
                                revert with 0, 'add failed'
                            stor10 = stor10 + (msg.value * stor0 / stor1) - (msg.value * stor0 / stor1 * stor6 / stor7)
                            emit Purchase(msg.value, (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18, stor8 / 10^18, block.timestamp, msg.sender);
                    else:
                        require (80000000000 * 10^18 * msg.value) - (80000000000 * 10^18 * msg.value * stor0 / stor1)
                        if (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) / (80000000000 * 10^18 * msg.value) - (80000000000 * 10^18 * msg.value * stor0 / stor1) != 10^18:
                            revert with 0, 'mul failed'
                        if not (2 * stor8) - 10000000000 * 10^18:
                            if (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) < 0:
                                revert with 0, 'add failed'
                            s = (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 1 / 2
                            t = (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1)
                            while s < t:
                                require s
                                if ((0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) / s) + s < (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) / s:
                                    revert with 0, 'add failed'
                                s = ((0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) / s) + s / 2
                                t = s
                                continue 
                        else:
                            require (2 * stor8) - 10000000000 * 10^18
                            if (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / (2 * stor8) - 10000000000 * 10^18 != (2 * stor8) - 10000000000 * 10^18:
                                revert with 0, 'mul failed'
                            if (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) < 0:
                                revert with 0, 'add failed'
                            s = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000001 / 2
                            t = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000
                            while s < t:
                                require s
                                if ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s < (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s:
                                    revert with 0, 'add failed'
                                s = ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s / 2
                                t = s
                                continue 
                        if (2 * stor8) - 10000000000 * 10^18 > t:
                            revert with 0, 'sub failed'
                        if not t + -(2 * stor8) + 10000000000 * 10^18:
                            if stor8 < stor8:
                                revert with 0, 'add failed'
                            revert with 0, 'Incoming funds is too small'
                        require t + -(2 * stor8) + 10000000000 * 10^18
                        if (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / t + -(2 * stor8) + 10000000000 * 10^18 != 10^18:
                            revert with 0, 'mul failed'
                        if 10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10000000000 * 10^18 != (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                            revert with 0, 'mul failed'
                        if stor8 + (10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18) < stor8:
                            revert with 0, 'add failed'
                        if not (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                            revert with 0, 'Incoming funds is too small'
                        stor8 += 10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18
                        if totalSupply + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < totalSupply:
                            revert with 0, 'add failed'
                        if totalSupply > 0:
                            if not stor10:
                                require totalSupply
                                stor10 = 0 / totalSupply
                            else:
                                require stor10
                                if (totalSupply * stor10) + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / stor10 != totalSupply + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18):
                                    revert with 0, 'mul failed'
                                require totalSupply
                                stor10 = (totalSupply * stor10) + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / totalSupply
                        totalSupply += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                        if balanceOf[address(msg.sender)].field_256 + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < balanceOf[address(msg.sender)].field_256:
                            revert with 0, 'add failed'
                        balanceOf[address(msg.sender)].field_256 += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                        if totalSupply > 0:
                            if not (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                                require totalSupply
                                if balanceOf[address(msg.sender)].field_1024 + (0 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                    revert with 0, 'add failed'
                                balanceOf[address(msg.sender)].field_1024 += 0 / totalSupply
                            else:
                                require (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                                if (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 != stor10:
                                    revert with 0, 'mul failed'
                                require totalSupply
                                if balanceOf[address(msg.sender)].field_1024 + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                    revert with 0, 'add failed'
                                balanceOf[address(msg.sender)].field_1024 += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply
                        if stor10 + (msg.value * stor0 / stor1) - (msg.value * stor0 / stor1 * stor6 / stor7) < stor10:
                            revert with 0, 'add failed'
                        stor10 = stor10 + (msg.value * stor0 / stor1) - (msg.value * stor0 / stor1 * stor6 / stor7)
                        emit Purchase(msg.value, (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18, stor8 / 10^18, block.timestamp, msg.sender);
}

function _fallback() payable {
    mem[128 len calldata.size] = call.data[0 len calldata.size]
    if not msg.value:
        revert with 0, 'Incoming funds is too small'
    require msg.value
    if msg.value * stor0 / msg.value != stor0:
        revert with 0, 'mul failed'
    require stor1
    if msg.value * stor0 / stor1 > msg.value:
        revert with 0, 'sub failed'
    if not msg.value * stor0 / stor1:
        revert with 0, 'Incoming funds is too small'
    if not mem[128 len 20]:
        if not balanceOf[address(msg.sender)].field_0:
            if not stor8:
                revert with 0, 'sub failed'
            require stor8
            if 2 * stor8 / stor8 != 2:
                revert with 0, 'mul failed'
            if 10000000000 * 10^18 > 2 * stor8:
                revert with 0, 'sub failed'
            if (80000000000 * 10^18 * msg.value) - (80000000000 * 10^18 * msg.value * stor0 / stor1) / 80000000000 * 10^18 != msg.value - (msg.value * stor0 / stor1):
                revert with 0, 'mul failed'
            if not (80000000000 * 10^18 * msg.value) - (80000000000 * 10^18 * msg.value * stor0 / stor1):
                if not (2 * stor8) - 10000000000 * 10^18:
                    if (2 * stor8) - 10000000000 * 10^18 > 0:
                        revert with 0, 'sub failed'
                    if not -(2 * stor8) + 10000000000 * 10^18:
                        if stor8 < stor8:
                            revert with 0, 'add failed'
                        revert with 0, 'Incoming funds is too small'
                    require -(2 * stor8) + 10000000000 * 10^18
                    if (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / -(2 * stor8) + 10000000000 * 10^18 != 10^18:
                        revert with 0, 'mul failed'
                    if 10000000000 * 10^18 * (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10000000000 * 10^18 != (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                        revert with 0, 'mul failed'
                    if stor8 + (10000000000 * 10^18 * (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18) < stor8:
                        revert with 0, 'add failed'
                    if not (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                        revert with 0, 'Incoming funds is too small'
                    stor8 += 10000000000 * 10^18 * (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18
                    if totalSupply + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < totalSupply:
                        revert with 0, 'add failed'
                    if totalSupply > 0:
                        if not stor10:
                            require totalSupply
                            stor10 = 0 / totalSupply
                        else:
                            require stor10
                            if (totalSupply * stor10) + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / stor10 != totalSupply + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18):
                                revert with 0, 'mul failed'
                            require totalSupply
                            stor10 = (totalSupply * stor10) + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / totalSupply
                    totalSupply += (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                    if balanceOf[address(msg.sender)].field_256 + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < balanceOf[address(msg.sender)].field_256:
                        revert with 0, 'add failed'
                    balanceOf[address(msg.sender)].field_256 += (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                    if totalSupply > 0:
                        if not (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                            require totalSupply
                            if balanceOf[address(msg.sender)].field_1024 + (0 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                revert with 0, 'add failed'
                            balanceOf[address(msg.sender)].field_1024 += 0 / totalSupply
                        else:
                            require (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                            if (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 != stor10:
                                revert with 0, 'mul failed'
                            require totalSupply
                            if balanceOf[address(msg.sender)].field_1024 + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                revert with 0, 'add failed'
                            balanceOf[address(msg.sender)].field_1024 += (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply
                    if stor10 + (msg.value * stor0 / stor1) < stor10:
                        revert with 0, 'add failed'
                    stor10 += msg.value * stor0 / stor1
                    emit Purchase(msg.value, (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18, stor8 / 10^18, block.timestamp, msg.sender);
                else:
                    require (2 * stor8) - 10000000000 * 10^18
                    if (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / (2 * stor8) - 10000000000 * 10^18 != (2 * stor8) - 10000000000 * 10^18:
                        revert with 0, 'mul failed'
                    s = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000001 / 2
                    t = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000
                    while s < t:
                        require s
                        if ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s < (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s:
                            revert with 0, 'add failed'
                        s = ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s / 2
                        t = s
                        continue 
                    if (2 * stor8) - 10000000000 * 10^18 > t:
                        revert with 0, 'sub failed'
                    if not t + -(2 * stor8) + 10000000000 * 10^18:
                        if stor8 < stor8:
                            revert with 0, 'add failed'
                        revert with 0, 'Incoming funds is too small'
                    require t + -(2 * stor8) + 10000000000 * 10^18
                    if (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / t + -(2 * stor8) + 10000000000 * 10^18 != 10^18:
                        revert with 0, 'mul failed'
                    if 10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10000000000 * 10^18 != (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                        revert with 0, 'mul failed'
                    if stor8 + (10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18) < stor8:
                        revert with 0, 'add failed'
                    if not (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                        revert with 0, 'Incoming funds is too small'
                    stor8 += 10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18
                    if totalSupply + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < totalSupply:
                        revert with 0, 'add failed'
                    if totalSupply > 0:
                        if not stor10:
                            require totalSupply
                            stor10 = 0 / totalSupply
                        else:
                            require stor10
                            if (totalSupply * stor10) + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / stor10 != totalSupply + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18):
                                revert with 0, 'mul failed'
                            require totalSupply
                            stor10 = (totalSupply * stor10) + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / totalSupply
                    totalSupply += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                    if balanceOf[address(msg.sender)].field_256 + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < balanceOf[address(msg.sender)].field_256:
                        revert with 0, 'add failed'
                    balanceOf[address(msg.sender)].field_256 += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                    if totalSupply > 0:
                        if not (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                            require totalSupply
                            if balanceOf[address(msg.sender)].field_1024 + (0 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                revert with 0, 'add failed'
                            balanceOf[address(msg.sender)].field_1024 += 0 / totalSupply
                        else:
                            require (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                            if (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 != stor10:
                                revert with 0, 'mul failed'
                            require totalSupply
                            if balanceOf[address(msg.sender)].field_1024 + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                revert with 0, 'add failed'
                            balanceOf[address(msg.sender)].field_1024 += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply
                    if stor10 + (msg.value * stor0 / stor1) < stor10:
                        revert with 0, 'add failed'
                    stor10 += msg.value * stor0 / stor1
                    emit Purchase(msg.value, (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18, stor8 / 10^18, block.timestamp, msg.sender);
            else:
                require (80000000000 * 10^18 * msg.value) - (80000000000 * 10^18 * msg.value * stor0 / stor1)
                if (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) / (80000000000 * 10^18 * msg.value) - (80000000000 * 10^18 * msg.value * stor0 / stor1) != 10^18:
                    revert with 0, 'mul failed'
                if not (2 * stor8) - 10000000000 * 10^18:
                    if (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) < 0:
                        revert with 0, 'add failed'
                    s = (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 1 / 2
                    t = (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1)
                    while s < t:
                        require s
                        if ((0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) / s) + s < (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) / s:
                            revert with 0, 'add failed'
                        s = ((0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) / s) + s / 2
                        t = s
                        continue 
                else:
                    require (2 * stor8) - 10000000000 * 10^18
                    if (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / (2 * stor8) - 10000000000 * 10^18 != (2 * stor8) - 10000000000 * 10^18:
                        revert with 0, 'mul failed'
                    if (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) < 0:
                        revert with 0, 'add failed'
                    s = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000001 / 2
                    t = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000
                    while s < t:
                        require s
                        if ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s < (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s:
                            revert with 0, 'add failed'
                        s = ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s / 2
                        t = s
                        continue 
                if (2 * stor8) - 10000000000 * 10^18 > t:
                    revert with 0, 'sub failed'
                if not t + -(2 * stor8) + 10000000000 * 10^18:
                    if stor8 < stor8:
                        revert with 0, 'add failed'
                    revert with 0, 'Incoming funds is too small'
                require t + -(2 * stor8) + 10000000000 * 10^18
                if (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / t + -(2 * stor8) + 10000000000 * 10^18 != 10^18:
                    revert with 0, 'mul failed'
                if 10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10000000000 * 10^18 != (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                    revert with 0, 'mul failed'
                if stor8 + (10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18) < stor8:
                    revert with 0, 'add failed'
                if not (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                    revert with 0, 'Incoming funds is too small'
                stor8 += 10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18
                if totalSupply + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < totalSupply:
                    revert with 0, 'add failed'
                if totalSupply > 0:
                    if not stor10:
                        require totalSupply
                        stor10 = 0 / totalSupply
                    else:
                        require stor10
                        if (totalSupply * stor10) + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / stor10 != totalSupply + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18):
                            revert with 0, 'mul failed'
                        require totalSupply
                        stor10 = (totalSupply * stor10) + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / totalSupply
                totalSupply += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                if balanceOf[address(msg.sender)].field_256 + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < balanceOf[address(msg.sender)].field_256:
                    revert with 0, 'add failed'
                balanceOf[address(msg.sender)].field_256 += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                if totalSupply > 0:
                    if not (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                        require totalSupply
                        if balanceOf[address(msg.sender)].field_1024 + (0 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                            revert with 0, 'add failed'
                        balanceOf[address(msg.sender)].field_1024 += 0 / totalSupply
                    else:
                        require (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                        if (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 != stor10:
                            revert with 0, 'mul failed'
                        require totalSupply
                        if balanceOf[address(msg.sender)].field_1024 + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                            revert with 0, 'add failed'
                        balanceOf[address(msg.sender)].field_1024 += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply
                if stor10 + (msg.value * stor0 / stor1) < stor10:
                    revert with 0, 'add failed'
                stor10 += msg.value * stor0 / stor1
                emit Purchase(msg.value, (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18, stor8 / 10^18, block.timestamp, msg.sender);
        else:
            if balanceOf[balanceOf[address(msg.sender)].field_0].field_256 < 10 * 10^18:
                if not msg.value * stor0 / stor1:
                    revert with 0, 'Incoming funds is too small'
                if not stor8:
                    revert with 0, 'sub failed'
                require stor8
                if 2 * stor8 / stor8 != 2:
                    revert with 0, 'mul failed'
                if 10000000000 * 10^18 > 2 * stor8:
                    revert with 0, 'sub failed'
                if (80000000000 * 10^18 * msg.value) - (80000000000 * 10^18 * msg.value * stor0 / stor1) / 80000000000 * 10^18 != msg.value - (msg.value * stor0 / stor1):
                    revert with 0, 'mul failed'
                if not (80000000000 * 10^18 * msg.value) - (80000000000 * 10^18 * msg.value * stor0 / stor1):
                    if not (2 * stor8) - 10000000000 * 10^18:
                        if (2 * stor8) - 10000000000 * 10^18 > 0:
                            revert with 0, 'sub failed'
                        if not -(2 * stor8) + 10000000000 * 10^18:
                            if stor8 < stor8:
                                revert with 0, 'add failed'
                            revert with 0, 'Incoming funds is too small'
                        require -(2 * stor8) + 10000000000 * 10^18
                        if (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / -(2 * stor8) + 10000000000 * 10^18 != 10^18:
                            revert with 0, 'mul failed'
                        if 10000000000 * 10^18 * (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10000000000 * 10^18 != (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                            revert with 0, 'mul failed'
                        if stor8 + (10000000000 * 10^18 * (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18) < stor8:
                            revert with 0, 'add failed'
                        if not (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                            revert with 0, 'Incoming funds is too small'
                        stor8 += 10000000000 * 10^18 * (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18
                        if totalSupply + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < totalSupply:
                            revert with 0, 'add failed'
                        if totalSupply > 0:
                            if not stor10:
                                require totalSupply
                                stor10 = 0 / totalSupply
                            else:
                                require stor10
                                if (totalSupply * stor10) + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / stor10 != totalSupply + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18):
                                    revert with 0, 'mul failed'
                                require totalSupply
                                stor10 = (totalSupply * stor10) + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / totalSupply
                        totalSupply += (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                        if balanceOf[address(msg.sender)].field_256 + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < balanceOf[address(msg.sender)].field_256:
                            revert with 0, 'add failed'
                        balanceOf[address(msg.sender)].field_256 += (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                        if totalSupply > 0:
                            if not (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                                require totalSupply
                                if balanceOf[address(msg.sender)].field_1024 + (0 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                    revert with 0, 'add failed'
                                balanceOf[address(msg.sender)].field_1024 += 0 / totalSupply
                            else:
                                require (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                                if (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 != stor10:
                                    revert with 0, 'mul failed'
                                require totalSupply
                                if balanceOf[address(msg.sender)].field_1024 + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                    revert with 0, 'add failed'
                                balanceOf[address(msg.sender)].field_1024 += (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply
                        if stor10 + (msg.value * stor0 / stor1) < stor10:
                            revert with 0, 'add failed'
                        stor10 += msg.value * stor0 / stor1
                        emit Purchase(msg.value, (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18, stor8 / 10^18, block.timestamp, msg.sender);
                    else:
                        require (2 * stor8) - 10000000000 * 10^18
                        if (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / (2 * stor8) - 10000000000 * 10^18 != (2 * stor8) - 10000000000 * 10^18:
                            revert with 0, 'mul failed'
                        s = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000001 / 2
                        t = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000
                        while s < t:
                            require s
                            if ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s < (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s:
                                revert with 0, 'add failed'
                            s = ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s / 2
                            t = s
                            continue 
                        if (2 * stor8) - 10000000000 * 10^18 > t:
                            revert with 0, 'sub failed'
                        if not t + -(2 * stor8) + 10000000000 * 10^18:
                            if stor8 < stor8:
                                revert with 0, 'add failed'
                            revert with 0, 'Incoming funds is too small'
                        require t + -(2 * stor8) + 10000000000 * 10^18
                        if (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / t + -(2 * stor8) + 10000000000 * 10^18 != 10^18:
                            revert with 0, 'mul failed'
                        if 10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10000000000 * 10^18 != (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                            revert with 0, 'mul failed'
                        if stor8 + (10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18) < stor8:
                            revert with 0, 'add failed'
                        if not (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                            revert with 0, 'Incoming funds is too small'
                        stor8 += 10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18
                        if totalSupply + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < totalSupply:
                            revert with 0, 'add failed'
                        if totalSupply > 0:
                            if not stor10:
                                require totalSupply
                                stor10 = 0 / totalSupply
                            else:
                                require stor10
                                if (totalSupply * stor10) + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / stor10 != totalSupply + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18):
                                    revert with 0, 'mul failed'
                                require totalSupply
                                stor10 = (totalSupply * stor10) + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / totalSupply
                        totalSupply += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                        if balanceOf[address(msg.sender)].field_256 + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < balanceOf[address(msg.sender)].field_256:
                            revert with 0, 'add failed'
                        balanceOf[address(msg.sender)].field_256 += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                        if totalSupply > 0:
                            if not (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                                require totalSupply
                                if balanceOf[address(msg.sender)].field_1024 + (0 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                    revert with 0, 'add failed'
                                balanceOf[address(msg.sender)].field_1024 += 0 / totalSupply
                            else:
                                require (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                                if (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 != stor10:
                                    revert with 0, 'mul failed'
                                require totalSupply
                                if balanceOf[address(msg.sender)].field_1024 + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                    revert with 0, 'add failed'
                                balanceOf[address(msg.sender)].field_1024 += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply
                        if stor10 + (msg.value * stor0 / stor1) < stor10:
                            revert with 0, 'add failed'
                        stor10 += msg.value * stor0 / stor1
                        emit Purchase(msg.value, (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18, stor8 / 10^18, block.timestamp, msg.sender);
                else:
                    require (80000000000 * 10^18 * msg.value) - (80000000000 * 10^18 * msg.value * stor0 / stor1)
                    if (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) / (80000000000 * 10^18 * msg.value) - (80000000000 * 10^18 * msg.value * stor0 / stor1) != 10^18:
                        revert with 0, 'mul failed'
                    if not (2 * stor8) - 10000000000 * 10^18:
                        if (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) < 0:
                            revert with 0, 'add failed'
                        s = (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 1 / 2
                        t = (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1)
                        while s < t:
                            require s
                            if ((0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) / s) + s < (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) / s:
                                revert with 0, 'add failed'
                            s = ((0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) / s) + s / 2
                            t = s
                            continue 
                    else:
                        require (2 * stor8) - 10000000000 * 10^18
                        if (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / (2 * stor8) - 10000000000 * 10^18 != (2 * stor8) - 10000000000 * 10^18:
                            revert with 0, 'mul failed'
                        if (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) < 0:
                            revert with 0, 'add failed'
                        s = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000001 / 2
                        t = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000
                        while s < t:
                            require s
                            if ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s < (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s:
                                revert with 0, 'add failed'
                            s = ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s / 2
                            t = s
                            continue 
                    if (2 * stor8) - 10000000000 * 10^18 > t:
                        revert with 0, 'sub failed'
                    if not t + -(2 * stor8) + 10000000000 * 10^18:
                        if stor8 < stor8:
                            revert with 0, 'add failed'
                        revert with 0, 'Incoming funds is too small'
                    require t + -(2 * stor8) + 10000000000 * 10^18
                    if (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / t + -(2 * stor8) + 10000000000 * 10^18 != 10^18:
                        revert with 0, 'mul failed'
                    if 10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10000000000 * 10^18 != (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                        revert with 0, 'mul failed'
                    if stor8 + (10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18) < stor8:
                        revert with 0, 'add failed'
                    if not (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                        revert with 0, 'Incoming funds is too small'
                    stor8 += 10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18
                    if totalSupply + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < totalSupply:
                        revert with 0, 'add failed'
                    if totalSupply > 0:
                        if not stor10:
                            require totalSupply
                            stor10 = 0 / totalSupply
                        else:
                            require stor10
                            if (totalSupply * stor10) + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / stor10 != totalSupply + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18):
                                revert with 0, 'mul failed'
                            require totalSupply
                            stor10 = (totalSupply * stor10) + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / totalSupply
                    totalSupply += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                    if balanceOf[address(msg.sender)].field_256 + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < balanceOf[address(msg.sender)].field_256:
                        revert with 0, 'add failed'
                    balanceOf[address(msg.sender)].field_256 += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                    if totalSupply > 0:
                        if not (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                            require totalSupply
                            if balanceOf[address(msg.sender)].field_1024 + (0 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                revert with 0, 'add failed'
                            balanceOf[address(msg.sender)].field_1024 += 0 / totalSupply
                        else:
                            require (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                            if (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 != stor10:
                                revert with 0, 'mul failed'
                            require totalSupply
                            if balanceOf[address(msg.sender)].field_1024 + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                revert with 0, 'add failed'
                            balanceOf[address(msg.sender)].field_1024 += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply
                    if stor10 + (msg.value * stor0 / stor1) < stor10:
                        revert with 0, 'add failed'
                    stor10 += msg.value * stor0 / stor1
                    emit Purchase(msg.value, (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18, stor8 / 10^18, block.timestamp, msg.sender);
            else:
                if not msg.value * stor0 / stor1:
                    if balanceOf[balanceOf[address(msg.sender)].field_0].field_768 < balanceOf[balanceOf[address(msg.sender)].field_0].field_768:
                        revert with 0, 'add failed'
                    emit ReferralReward(msg.value, 0, block.timestamp, msg.sender, balanceOf[address(msg.sender)].field_0);
                    revert with 0, 'Incoming funds is too small'
                require msg.value * stor0 / stor1
                if msg.value * stor0 / stor1 * stor6 / msg.value * stor0 / stor1 != stor6:
                    revert with 0, 'mul failed'
                require stor7
                if msg.value * stor0 / stor1 * stor6 / stor7 > msg.value * stor0 / stor1:
                    revert with 0, 'sub failed'
                if balanceOf[balanceOf[address(msg.sender)].field_0].field_768 + (msg.value * stor0 / stor1 * stor6 / stor7) < balanceOf[balanceOf[address(msg.sender)].field_0].field_768:
                    revert with 0, 'add failed'
                balanceOf[balanceOf[address(msg.sender)].field_0].field_768 += msg.value * stor0 / stor1 * stor6 / stor7
                emit ReferralReward(msg.value, msg.value * stor0 / stor1 * stor6 / stor7, block.timestamp, msg.sender, balanceOf[address(msg.sender)].field_0);
                if not (msg.value * stor0 / stor1) - (msg.value * stor0 / stor1 * stor6 / stor7):
                    revert with 0, 'Incoming funds is too small'
                if not stor8:
                    revert with 0, 'sub failed'
                require stor8
                if 2 * stor8 / stor8 != 2:
                    revert with 0, 'mul failed'
                if 10000000000 * 10^18 > 2 * stor8:
                    revert with 0, 'sub failed'
                if (80000000000 * 10^18 * msg.value) - (80000000000 * 10^18 * msg.value * stor0 / stor1) / 80000000000 * 10^18 != msg.value - (msg.value * stor0 / stor1):
                    revert with 0, 'mul failed'
                if not (80000000000 * 10^18 * msg.value) - (80000000000 * 10^18 * msg.value * stor0 / stor1):
                    if not (2 * stor8) - 10000000000 * 10^18:
                        if (2 * stor8) - 10000000000 * 10^18 > 0:
                            revert with 0, 'sub failed'
                        if not -(2 * stor8) + 10000000000 * 10^18:
                            if stor8 < stor8:
                                revert with 0, 'add failed'
                            revert with 0, 'Incoming funds is too small'
                        require -(2 * stor8) + 10000000000 * 10^18
                        if (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / -(2 * stor8) + 10000000000 * 10^18 != 10^18:
                            revert with 0, 'mul failed'
                        if 10000000000 * 10^18 * (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10000000000 * 10^18 != (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                            revert with 0, 'mul failed'
                        if stor8 + (10000000000 * 10^18 * (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18) < stor8:
                            revert with 0, 'add failed'
                        if not (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                            revert with 0, 'Incoming funds is too small'
                        stor8 += 10000000000 * 10^18 * (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18
                        if totalSupply + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < totalSupply:
                            revert with 0, 'add failed'
                        if totalSupply > 0:
                            if not stor10:
                                require totalSupply
                                stor10 = 0 / totalSupply
                            else:
                                require stor10
                                if (totalSupply * stor10) + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / stor10 != totalSupply + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18):
                                    revert with 0, 'mul failed'
                                require totalSupply
                                stor10 = (totalSupply * stor10) + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / totalSupply
                        totalSupply += (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                        if balanceOf[address(msg.sender)].field_256 + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < balanceOf[address(msg.sender)].field_256:
                            revert with 0, 'add failed'
                        balanceOf[address(msg.sender)].field_256 += (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                        if totalSupply > 0:
                            if not (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                                require totalSupply
                                if balanceOf[address(msg.sender)].field_1024 + (0 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                    revert with 0, 'add failed'
                                balanceOf[address(msg.sender)].field_1024 += 0 / totalSupply
                            else:
                                require (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                                if (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 != stor10:
                                    revert with 0, 'mul failed'
                                require totalSupply
                                if balanceOf[address(msg.sender)].field_1024 + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                    revert with 0, 'add failed'
                                balanceOf[address(msg.sender)].field_1024 += (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply
                        if stor10 + (msg.value * stor0 / stor1) - (msg.value * stor0 / stor1 * stor6 / stor7) < stor10:
                            revert with 0, 'add failed'
                        stor10 = stor10 + (msg.value * stor0 / stor1) - (msg.value * stor0 / stor1 * stor6 / stor7)
                        emit Purchase(msg.value, (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18, stor8 / 10^18, block.timestamp, msg.sender);
                    else:
                        require (2 * stor8) - 10000000000 * 10^18
                        if (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / (2 * stor8) - 10000000000 * 10^18 != (2 * stor8) - 10000000000 * 10^18:
                            revert with 0, 'mul failed'
                        s = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000001 / 2
                        t = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000
                        while s < t:
                            require s
                            if ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s < (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s:
                                revert with 0, 'add failed'
                            s = ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s / 2
                            t = s
                            continue 
                        if (2 * stor8) - 10000000000 * 10^18 > t:
                            revert with 0, 'sub failed'
                        if not t + -(2 * stor8) + 10000000000 * 10^18:
                            if stor8 < stor8:
                                revert with 0, 'add failed'
                            revert with 0, 'Incoming funds is too small'
                        require t + -(2 * stor8) + 10000000000 * 10^18
                        if (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / t + -(2 * stor8) + 10000000000 * 10^18 != 10^18:
                            revert with 0, 'mul failed'
                        if 10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10000000000 * 10^18 != (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                            revert with 0, 'mul failed'
                        if stor8 + (10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18) < stor8:
                            revert with 0, 'add failed'
                        if not (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                            revert with 0, 'Incoming funds is too small'
                        stor8 += 10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18
                        if totalSupply + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < totalSupply:
                            revert with 0, 'add failed'
                        if totalSupply > 0:
                            if not stor10:
                                require totalSupply
                                stor10 = 0 / totalSupply
                            else:
                                require stor10
                                if (totalSupply * stor10) + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / stor10 != totalSupply + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18):
                                    revert with 0, 'mul failed'
                                require totalSupply
                                stor10 = (totalSupply * stor10) + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / totalSupply
                        totalSupply += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                        if balanceOf[address(msg.sender)].field_256 + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < balanceOf[address(msg.sender)].field_256:
                            revert with 0, 'add failed'
                        balanceOf[address(msg.sender)].field_256 += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                        if totalSupply > 0:
                            if not (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                                require totalSupply
                                if balanceOf[address(msg.sender)].field_1024 + (0 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                    revert with 0, 'add failed'
                                balanceOf[address(msg.sender)].field_1024 += 0 / totalSupply
                            else:
                                require (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                                if (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 != stor10:
                                    revert with 0, 'mul failed'
                                require totalSupply
                                if balanceOf[address(msg.sender)].field_1024 + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                    revert with 0, 'add failed'
                                balanceOf[address(msg.sender)].field_1024 += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply
                        if stor10 + (msg.value * stor0 / stor1) - (msg.value * stor0 / stor1 * stor6 / stor7) < stor10:
                            revert with 0, 'add failed'
                        stor10 = stor10 + (msg.value * stor0 / stor1) - (msg.value * stor0 / stor1 * stor6 / stor7)
                        emit Purchase(msg.value, (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18, stor8 / 10^18, block.timestamp, msg.sender);
                else:
                    require (80000000000 * 10^18 * msg.value) - (80000000000 * 10^18 * msg.value * stor0 / stor1)
                    if (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) / (80000000000 * 10^18 * msg.value) - (80000000000 * 10^18 * msg.value * stor0 / stor1) != 10^18:
                        revert with 0, 'mul failed'
                    if not (2 * stor8) - 10000000000 * 10^18:
                        if (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) < 0:
                            revert with 0, 'add failed'
                        s = (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 1 / 2
                        t = (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1)
                        while s < t:
                            require s
                            if ((0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) / s) + s < (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) / s:
                                revert with 0, 'add failed'
                            s = ((0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) / s) + s / 2
                            t = s
                            continue 
                    else:
                        require (2 * stor8) - 10000000000 * 10^18
                        if (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / (2 * stor8) - 10000000000 * 10^18 != (2 * stor8) - 10000000000 * 10^18:
                            revert with 0, 'mul failed'
                        if (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) < 0:
                            revert with 0, 'add failed'
                        s = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000001 / 2
                        t = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000
                        while s < t:
                            require s
                            if ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s < (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s:
                                revert with 0, 'add failed'
                            s = ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s / 2
                            t = s
                            continue 
                    if (2 * stor8) - 10000000000 * 10^18 > t:
                        revert with 0, 'sub failed'
                    if not t + -(2 * stor8) + 10000000000 * 10^18:
                        if stor8 < stor8:
                            revert with 0, 'add failed'
                        revert with 0, 'Incoming funds is too small'
                    require t + -(2 * stor8) + 10000000000 * 10^18
                    if (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / t + -(2 * stor8) + 10000000000 * 10^18 != 10^18:
                        revert with 0, 'mul failed'
                    if 10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10000000000 * 10^18 != (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                        revert with 0, 'mul failed'
                    if stor8 + (10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18) < stor8:
                        revert with 0, 'add failed'
                    if not (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                        revert with 0, 'Incoming funds is too small'
                    stor8 += 10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18
                    if totalSupply + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < totalSupply:
                        revert with 0, 'add failed'
                    if totalSupply > 0:
                        if not stor10:
                            require totalSupply
                            stor10 = 0 / totalSupply
                        else:
                            require stor10
                            if (totalSupply * stor10) + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / stor10 != totalSupply + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18):
                                revert with 0, 'mul failed'
                            require totalSupply
                            stor10 = (totalSupply * stor10) + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / totalSupply
                    totalSupply += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                    if balanceOf[address(msg.sender)].field_256 + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < balanceOf[address(msg.sender)].field_256:
                        revert with 0, 'add failed'
                    balanceOf[address(msg.sender)].field_256 += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                    if totalSupply > 0:
                        if not (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                            require totalSupply
                            if balanceOf[address(msg.sender)].field_1024 + (0 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                revert with 0, 'add failed'
                            balanceOf[address(msg.sender)].field_1024 += 0 / totalSupply
                        else:
                            require (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                            if (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 != stor10:
                                revert with 0, 'mul failed'
                            require totalSupply
                            if balanceOf[address(msg.sender)].field_1024 + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                revert with 0, 'add failed'
                            balanceOf[address(msg.sender)].field_1024 += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply
                    if stor10 + (msg.value * stor0 / stor1) - (msg.value * stor0 / stor1 * stor6 / stor7) < stor10:
                        revert with 0, 'add failed'
                    stor10 = stor10 + (msg.value * stor0 / stor1) - (msg.value * stor0 / stor1 * stor6 / stor7)
                    emit Purchase(msg.value, (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18, stor8 / 10^18, block.timestamp, msg.sender);
    else:
        if mem[128 len 20] == msg.sender:
            if not balanceOf[address(msg.sender)].field_0:
                if not stor8:
                    revert with 0, 'sub failed'
                require stor8
                if 2 * stor8 / stor8 != 2:
                    revert with 0, 'mul failed'
                if 10000000000 * 10^18 > 2 * stor8:
                    revert with 0, 'sub failed'
                if (80000000000 * 10^18 * msg.value) - (80000000000 * 10^18 * msg.value * stor0 / stor1) / 80000000000 * 10^18 != msg.value - (msg.value * stor0 / stor1):
                    revert with 0, 'mul failed'
                if not (80000000000 * 10^18 * msg.value) - (80000000000 * 10^18 * msg.value * stor0 / stor1):
                    if not (2 * stor8) - 10000000000 * 10^18:
                        if (2 * stor8) - 10000000000 * 10^18 > 0:
                            revert with 0, 'sub failed'
                        if not -(2 * stor8) + 10000000000 * 10^18:
                            if stor8 < stor8:
                                revert with 0, 'add failed'
                            revert with 0, 'Incoming funds is too small'
                        require -(2 * stor8) + 10000000000 * 10^18
                        if (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / -(2 * stor8) + 10000000000 * 10^18 != 10^18:
                            revert with 0, 'mul failed'
                        if 10000000000 * 10^18 * (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10000000000 * 10^18 != (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                            revert with 0, 'mul failed'
                        if stor8 + (10000000000 * 10^18 * (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18) < stor8:
                            revert with 0, 'add failed'
                        if not (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                            revert with 0, 'Incoming funds is too small'
                        stor8 += 10000000000 * 10^18 * (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18
                        if totalSupply + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < totalSupply:
                            revert with 0, 'add failed'
                        if totalSupply > 0:
                            if not stor10:
                                require totalSupply
                                stor10 = 0 / totalSupply
                            else:
                                require stor10
                                if (totalSupply * stor10) + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / stor10 != totalSupply + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18):
                                    revert with 0, 'mul failed'
                                require totalSupply
                                stor10 = (totalSupply * stor10) + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / totalSupply
                        totalSupply += (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                        if balanceOf[address(msg.sender)].field_256 + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < balanceOf[address(msg.sender)].field_256:
                            revert with 0, 'add failed'
                        balanceOf[address(msg.sender)].field_256 += (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                        if totalSupply > 0:
                            if not (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                                require totalSupply
                                if balanceOf[address(msg.sender)].field_1024 + (0 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                    revert with 0, 'add failed'
                                balanceOf[address(msg.sender)].field_1024 += 0 / totalSupply
                            else:
                                require (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                                if (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 != stor10:
                                    revert with 0, 'mul failed'
                                require totalSupply
                                if balanceOf[address(msg.sender)].field_1024 + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                    revert with 0, 'add failed'
                                balanceOf[address(msg.sender)].field_1024 += (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply
                        if stor10 + (msg.value * stor0 / stor1) < stor10:
                            revert with 0, 'add failed'
                        stor10 += msg.value * stor0 / stor1
                        emit Purchase(msg.value, (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18, stor8 / 10^18, block.timestamp, msg.sender);
                    else:
                        require (2 * stor8) - 10000000000 * 10^18
                        if (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / (2 * stor8) - 10000000000 * 10^18 != (2 * stor8) - 10000000000 * 10^18:
                            revert with 0, 'mul failed'
                        s = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000001 / 2
                        t = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000
                        while s < t:
                            require s
                            if ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s < (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s:
                                revert with 0, 'add failed'
                            s = ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s / 2
                            t = s
                            continue 
                        if (2 * stor8) - 10000000000 * 10^18 > t:
                            revert with 0, 'sub failed'
                        if not t + -(2 * stor8) + 10000000000 * 10^18:
                            if stor8 < stor8:
                                revert with 0, 'add failed'
                            revert with 0, 'Incoming funds is too small'
                        require t + -(2 * stor8) + 10000000000 * 10^18
                        if (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / t + -(2 * stor8) + 10000000000 * 10^18 != 10^18:
                            revert with 0, 'mul failed'
                        if 10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10000000000 * 10^18 != (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                            revert with 0, 'mul failed'
                        if stor8 + (10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18) < stor8:
                            revert with 0, 'add failed'
                        if not (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                            revert with 0, 'Incoming funds is too small'
                        stor8 += 10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18
                        if totalSupply + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < totalSupply:
                            revert with 0, 'add failed'
                        if totalSupply > 0:
                            if not stor10:
                                require totalSupply
                                stor10 = 0 / totalSupply
                            else:
                                require stor10
                                if (totalSupply * stor10) + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / stor10 != totalSupply + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18):
                                    revert with 0, 'mul failed'
                                require totalSupply
                                stor10 = (totalSupply * stor10) + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / totalSupply
                        totalSupply += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                        if balanceOf[address(msg.sender)].field_256 + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < balanceOf[address(msg.sender)].field_256:
                            revert with 0, 'add failed'
                        balanceOf[address(msg.sender)].field_256 += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                        if totalSupply > 0:
                            if not (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                                require totalSupply
                                if balanceOf[address(msg.sender)].field_1024 + (0 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                    revert with 0, 'add failed'
                                balanceOf[address(msg.sender)].field_1024 += 0 / totalSupply
                            else:
                                require (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                                if (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 != stor10:
                                    revert with 0, 'mul failed'
                                require totalSupply
                                if balanceOf[address(msg.sender)].field_1024 + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                    revert with 0, 'add failed'
                                balanceOf[address(msg.sender)].field_1024 += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply
                        if stor10 + (msg.value * stor0 / stor1) < stor10:
                            revert with 0, 'add failed'
                        stor10 += msg.value * stor0 / stor1
                        emit Purchase(msg.value, (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18, stor8 / 10^18, block.timestamp, msg.sender);
                else:
                    require (80000000000 * 10^18 * msg.value) - (80000000000 * 10^18 * msg.value * stor0 / stor1)
                    if (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) / (80000000000 * 10^18 * msg.value) - (80000000000 * 10^18 * msg.value * stor0 / stor1) != 10^18:
                        revert with 0, 'mul failed'
                    if not (2 * stor8) - 10000000000 * 10^18:
                        if (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) < 0:
                            revert with 0, 'add failed'
                        s = (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 1 / 2
                        t = (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1)
                        while s < t:
                            require s
                            if ((0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) / s) + s < (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) / s:
                                revert with 0, 'add failed'
                            s = ((0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) / s) + s / 2
                            t = s
                            continue 
                    else:
                        require (2 * stor8) - 10000000000 * 10^18
                        if (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / (2 * stor8) - 10000000000 * 10^18 != (2 * stor8) - 10000000000 * 10^18:
                            revert with 0, 'mul failed'
                        if (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) < 0:
                            revert with 0, 'add failed'
                        s = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000001 / 2
                        t = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000
                        while s < t:
                            require s
                            if ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s < (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s:
                                revert with 0, 'add failed'
                            s = ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s / 2
                            t = s
                            continue 
                    if (2 * stor8) - 10000000000 * 10^18 > t:
                        revert with 0, 'sub failed'
                    if not t + -(2 * stor8) + 10000000000 * 10^18:
                        if stor8 < stor8:
                            revert with 0, 'add failed'
                        revert with 0, 'Incoming funds is too small'
                    require t + -(2 * stor8) + 10000000000 * 10^18
                    if (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / t + -(2 * stor8) + 10000000000 * 10^18 != 10^18:
                        revert with 0, 'mul failed'
                    if 10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10000000000 * 10^18 != (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                        revert with 0, 'mul failed'
                    if stor8 + (10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18) < stor8:
                        revert with 0, 'add failed'
                    if not (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                        revert with 0, 'Incoming funds is too small'
                    stor8 += 10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18
                    if totalSupply + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < totalSupply:
                        revert with 0, 'add failed'
                    if totalSupply > 0:
                        if not stor10:
                            require totalSupply
                            stor10 = 0 / totalSupply
                        else:
                            require stor10
                            if (totalSupply * stor10) + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / stor10 != totalSupply + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18):
                                revert with 0, 'mul failed'
                            require totalSupply
                            stor10 = (totalSupply * stor10) + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / totalSupply
                    totalSupply += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                    if balanceOf[address(msg.sender)].field_256 + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < balanceOf[address(msg.sender)].field_256:
                        revert with 0, 'add failed'
                    balanceOf[address(msg.sender)].field_256 += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                    if totalSupply > 0:
                        if not (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                            require totalSupply
                            if balanceOf[address(msg.sender)].field_1024 + (0 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                revert with 0, 'add failed'
                            balanceOf[address(msg.sender)].field_1024 += 0 / totalSupply
                        else:
                            require (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                            if (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 != stor10:
                                revert with 0, 'mul failed'
                            require totalSupply
                            if balanceOf[address(msg.sender)].field_1024 + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                revert with 0, 'add failed'
                            balanceOf[address(msg.sender)].field_1024 += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply
                    if stor10 + (msg.value * stor0 / stor1) < stor10:
                        revert with 0, 'add failed'
                    stor10 += msg.value * stor0 / stor1
                    emit Purchase(msg.value, (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18, stor8 / 10^18, block.timestamp, msg.sender);
            else:
                if balanceOf[balanceOf[address(msg.sender)].field_0].field_256 < 10 * 10^18:
                    if not msg.value * stor0 / stor1:
                        revert with 0, 'Incoming funds is too small'
                    if not stor8:
                        revert with 0, 'sub failed'
                    require stor8
                    if 2 * stor8 / stor8 != 2:
                        revert with 0, 'mul failed'
                    if 10000000000 * 10^18 > 2 * stor8:
                        revert with 0, 'sub failed'
                    if (80000000000 * 10^18 * msg.value) - (80000000000 * 10^18 * msg.value * stor0 / stor1) / 80000000000 * 10^18 != msg.value - (msg.value * stor0 / stor1):
                        revert with 0, 'mul failed'
                    if not (80000000000 * 10^18 * msg.value) - (80000000000 * 10^18 * msg.value * stor0 / stor1):
                        if not (2 * stor8) - 10000000000 * 10^18:
                            if (2 * stor8) - 10000000000 * 10^18 > 0:
                                revert with 0, 'sub failed'
                            if not -(2 * stor8) + 10000000000 * 10^18:
                                if stor8 < stor8:
                                    revert with 0, 'add failed'
                                revert with 0, 'Incoming funds is too small'
                            require -(2 * stor8) + 10000000000 * 10^18
                            if (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / -(2 * stor8) + 10000000000 * 10^18 != 10^18:
                                revert with 0, 'mul failed'
                            if 10000000000 * 10^18 * (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10000000000 * 10^18 != (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                                revert with 0, 'mul failed'
                            if stor8 + (10000000000 * 10^18 * (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18) < stor8:
                                revert with 0, 'add failed'
                            if not (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                                revert with 0, 'Incoming funds is too small'
                            stor8 += 10000000000 * 10^18 * (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18
                            if totalSupply + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < totalSupply:
                                revert with 0, 'add failed'
                            if totalSupply > 0:
                                if not stor10:
                                    require totalSupply
                                    stor10 = 0 / totalSupply
                                else:
                                    require stor10
                                    if (totalSupply * stor10) + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / stor10 != totalSupply + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18):
                                        revert with 0, 'mul failed'
                                    require totalSupply
                                    stor10 = (totalSupply * stor10) + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / totalSupply
                            totalSupply += (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                            if balanceOf[address(msg.sender)].field_256 + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < balanceOf[address(msg.sender)].field_256:
                                revert with 0, 'add failed'
                            balanceOf[address(msg.sender)].field_256 += (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                            if totalSupply > 0:
                                if not (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                                    require totalSupply
                                    if balanceOf[address(msg.sender)].field_1024 + (0 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                        revert with 0, 'add failed'
                                    balanceOf[address(msg.sender)].field_1024 += 0 / totalSupply
                                else:
                                    require (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                                    if (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 != stor10:
                                        revert with 0, 'mul failed'
                                    require totalSupply
                                    if balanceOf[address(msg.sender)].field_1024 + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                        revert with 0, 'add failed'
                                    balanceOf[address(msg.sender)].field_1024 += (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply
                            if stor10 + (msg.value * stor0 / stor1) < stor10:
                                revert with 0, 'add failed'
                            stor10 += msg.value * stor0 / stor1
                            emit Purchase(msg.value, (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18, stor8 / 10^18, block.timestamp, msg.sender);
                        else:
                            require (2 * stor8) - 10000000000 * 10^18
                            if (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / (2 * stor8) - 10000000000 * 10^18 != (2 * stor8) - 10000000000 * 10^18:
                                revert with 0, 'mul failed'
                            s = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000001 / 2
                            t = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000
                            while s < t:
                                require s
                                if ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s < (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s:
                                    revert with 0, 'add failed'
                                s = ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s / 2
                                t = s
                                continue 
                            if (2 * stor8) - 10000000000 * 10^18 > t:
                                revert with 0, 'sub failed'
                            if not t + -(2 * stor8) + 10000000000 * 10^18:
                                if stor8 < stor8:
                                    revert with 0, 'add failed'
                                revert with 0, 'Incoming funds is too small'
                            require t + -(2 * stor8) + 10000000000 * 10^18
                            if (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / t + -(2 * stor8) + 10000000000 * 10^18 != 10^18:
                                revert with 0, 'mul failed'
                            if 10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10000000000 * 10^18 != (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                                revert with 0, 'mul failed'
                            if stor8 + (10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18) < stor8:
                                revert with 0, 'add failed'
                            if not (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                                revert with 0, 'Incoming funds is too small'
                            stor8 += 10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18
                            if totalSupply + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < totalSupply:
                                revert with 0, 'add failed'
                            if totalSupply > 0:
                                if not stor10:
                                    require totalSupply
                                    stor10 = 0 / totalSupply
                                else:
                                    require stor10
                                    if (totalSupply * stor10) + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / stor10 != totalSupply + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18):
                                        revert with 0, 'mul failed'
                                    require totalSupply
                                    stor10 = (totalSupply * stor10) + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / totalSupply
                            totalSupply += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                            if balanceOf[address(msg.sender)].field_256 + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < balanceOf[address(msg.sender)].field_256:
                                revert with 0, 'add failed'
                            balanceOf[address(msg.sender)].field_256 += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                            if totalSupply > 0:
                                if not (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                                    require totalSupply
                                    if balanceOf[address(msg.sender)].field_1024 + (0 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                        revert with 0, 'add failed'
                                    balanceOf[address(msg.sender)].field_1024 += 0 / totalSupply
                                else:
                                    require (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                                    if (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 != stor10:
                                        revert with 0, 'mul failed'
                                    require totalSupply
                                    if balanceOf[address(msg.sender)].field_1024 + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                        revert with 0, 'add failed'
                                    balanceOf[address(msg.sender)].field_1024 += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply
                            if stor10 + (msg.value * stor0 / stor1) < stor10:
                                revert with 0, 'add failed'
                            stor10 += msg.value * stor0 / stor1
                            emit Purchase(msg.value, (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18, stor8 / 10^18, block.timestamp, msg.sender);
                    else:
                        require (80000000000 * 10^18 * msg.value) - (80000000000 * 10^18 * msg.value * stor0 / stor1)
                        if (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) / (80000000000 * 10^18 * msg.value) - (80000000000 * 10^18 * msg.value * stor0 / stor1) != 10^18:
                            revert with 0, 'mul failed'
                        if not (2 * stor8) - 10000000000 * 10^18:
                            if (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) < 0:
                                revert with 0, 'add failed'
                            s = (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 1 / 2
                            t = (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1)
                            while s < t:
                                require s
                                if ((0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) / s) + s < (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) / s:
                                    revert with 0, 'add failed'
                                s = ((0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) / s) + s / 2
                                t = s
                                continue 
                        else:
                            require (2 * stor8) - 10000000000 * 10^18
                            if (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / (2 * stor8) - 10000000000 * 10^18 != (2 * stor8) - 10000000000 * 10^18:
                                revert with 0, 'mul failed'
                            if (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) < 0:
                                revert with 0, 'add failed'
                            s = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000001 / 2
                            t = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000
                            while s < t:
                                require s
                                if ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s < (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s:
                                    revert with 0, 'add failed'
                                s = ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s / 2
                                t = s
                                continue 
                        if (2 * stor8) - 10000000000 * 10^18 > t:
                            revert with 0, 'sub failed'
                        if not t + -(2 * stor8) + 10000000000 * 10^18:
                            if stor8 < stor8:
                                revert with 0, 'add failed'
                            revert with 0, 'Incoming funds is too small'
                        require t + -(2 * stor8) + 10000000000 * 10^18
                        if (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / t + -(2 * stor8) + 10000000000 * 10^18 != 10^18:
                            revert with 0, 'mul failed'
                        if 10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10000000000 * 10^18 != (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                            revert with 0, 'mul failed'
                        if stor8 + (10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18) < stor8:
                            revert with 0, 'add failed'
                        if not (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                            revert with 0, 'Incoming funds is too small'
                        stor8 += 10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18
                        if totalSupply + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < totalSupply:
                            revert with 0, 'add failed'
                        if totalSupply > 0:
                            if not stor10:
                                require totalSupply
                                stor10 = 0 / totalSupply
                            else:
                                require stor10
                                if (totalSupply * stor10) + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / stor10 != totalSupply + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18):
                                    revert with 0, 'mul failed'
                                require totalSupply
                                stor10 = (totalSupply * stor10) + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / totalSupply
                        totalSupply += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                        if balanceOf[address(msg.sender)].field_256 + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < balanceOf[address(msg.sender)].field_256:
                            revert with 0, 'add failed'
                        balanceOf[address(msg.sender)].field_256 += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                        if totalSupply > 0:
                            if not (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                                require totalSupply
                                if balanceOf[address(msg.sender)].field_1024 + (0 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                    revert with 0, 'add failed'
                                balanceOf[address(msg.sender)].field_1024 += 0 / totalSupply
                            else:
                                require (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                                if (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 != stor10:
                                    revert with 0, 'mul failed'
                                require totalSupply
                                if balanceOf[address(msg.sender)].field_1024 + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                    revert with 0, 'add failed'
                                balanceOf[address(msg.sender)].field_1024 += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply
                        if stor10 + (msg.value * stor0 / stor1) < stor10:
                            revert with 0, 'add failed'
                        stor10 += msg.value * stor0 / stor1
                        emit Purchase(msg.value, (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18, stor8 / 10^18, block.timestamp, msg.sender);
                else:
                    if not msg.value * stor0 / stor1:
                        if balanceOf[balanceOf[address(msg.sender)].field_0].field_768 < balanceOf[balanceOf[address(msg.sender)].field_0].field_768:
                            revert with 0, 'add failed'
                        emit ReferralReward(msg.value, 0, block.timestamp, msg.sender, balanceOf[address(msg.sender)].field_0);
                        revert with 0, 'Incoming funds is too small'
                    require msg.value * stor0 / stor1
                    if msg.value * stor0 / stor1 * stor6 / msg.value * stor0 / stor1 != stor6:
                        revert with 0, 'mul failed'
                    require stor7
                    if msg.value * stor0 / stor1 * stor6 / stor7 > msg.value * stor0 / stor1:
                        revert with 0, 'sub failed'
                    if balanceOf[balanceOf[address(msg.sender)].field_0].field_768 + (msg.value * stor0 / stor1 * stor6 / stor7) < balanceOf[balanceOf[address(msg.sender)].field_0].field_768:
                        revert with 0, 'add failed'
                    balanceOf[balanceOf[address(msg.sender)].field_0].field_768 += msg.value * stor0 / stor1 * stor6 / stor7
                    emit ReferralReward(msg.value, msg.value * stor0 / stor1 * stor6 / stor7, block.timestamp, msg.sender, balanceOf[address(msg.sender)].field_0);
                    if not (msg.value * stor0 / stor1) - (msg.value * stor0 / stor1 * stor6 / stor7):
                        revert with 0, 'Incoming funds is too small'
                    if not stor8:
                        revert with 0, 'sub failed'
                    require stor8
                    if 2 * stor8 / stor8 != 2:
                        revert with 0, 'mul failed'
                    if 10000000000 * 10^18 > 2 * stor8:
                        revert with 0, 'sub failed'
                    if (80000000000 * 10^18 * msg.value) - (80000000000 * 10^18 * msg.value * stor0 / stor1) / 80000000000 * 10^18 != msg.value - (msg.value * stor0 / stor1):
                        revert with 0, 'mul failed'
                    if not (80000000000 * 10^18 * msg.value) - (80000000000 * 10^18 * msg.value * stor0 / stor1):
                        if not (2 * stor8) - 10000000000 * 10^18:
                            if (2 * stor8) - 10000000000 * 10^18 > 0:
                                revert with 0, 'sub failed'
                            if not -(2 * stor8) + 10000000000 * 10^18:
                                if stor8 < stor8:
                                    revert with 0, 'add failed'
                                revert with 0, 'Incoming funds is too small'
                            require -(2 * stor8) + 10000000000 * 10^18
                            if (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / -(2 * stor8) + 10000000000 * 10^18 != 10^18:
                                revert with 0, 'mul failed'
                            if 10000000000 * 10^18 * (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10000000000 * 10^18 != (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                                revert with 0, 'mul failed'
                            if stor8 + (10000000000 * 10^18 * (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18) < stor8:
                                revert with 0, 'add failed'
                            if not (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                                revert with 0, 'Incoming funds is too small'
                            stor8 += 10000000000 * 10^18 * (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18
                            if totalSupply + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < totalSupply:
                                revert with 0, 'add failed'
                            if totalSupply > 0:
                                if not stor10:
                                    require totalSupply
                                    stor10 = 0 / totalSupply
                                else:
                                    require stor10
                                    if (totalSupply * stor10) + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / stor10 != totalSupply + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18):
                                        revert with 0, 'mul failed'
                                    require totalSupply
                                    stor10 = (totalSupply * stor10) + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / totalSupply
                            totalSupply += (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                            if balanceOf[address(msg.sender)].field_256 + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < balanceOf[address(msg.sender)].field_256:
                                revert with 0, 'add failed'
                            balanceOf[address(msg.sender)].field_256 += (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                            if totalSupply > 0:
                                if not (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                                    require totalSupply
                                    if balanceOf[address(msg.sender)].field_1024 + (0 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                        revert with 0, 'add failed'
                                    balanceOf[address(msg.sender)].field_1024 += 0 / totalSupply
                                else:
                                    require (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                                    if (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 != stor10:
                                        revert with 0, 'mul failed'
                                    require totalSupply
                                    if balanceOf[address(msg.sender)].field_1024 + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                        revert with 0, 'add failed'
                                    balanceOf[address(msg.sender)].field_1024 += (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply
                            if stor10 + (msg.value * stor0 / stor1) - (msg.value * stor0 / stor1 * stor6 / stor7) < stor10:
                                revert with 0, 'add failed'
                            stor10 = stor10 + (msg.value * stor0 / stor1) - (msg.value * stor0 / stor1 * stor6 / stor7)
                            emit Purchase(msg.value, (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18, stor8 / 10^18, block.timestamp, msg.sender);
                        else:
                            require (2 * stor8) - 10000000000 * 10^18
                            if (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / (2 * stor8) - 10000000000 * 10^18 != (2 * stor8) - 10000000000 * 10^18:
                                revert with 0, 'mul failed'
                            s = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000001 / 2
                            t = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000
                            while s < t:
                                require s
                                if ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s < (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s:
                                    revert with 0, 'add failed'
                                s = ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s / 2
                                t = s
                                continue 
                            if (2 * stor8) - 10000000000 * 10^18 > t:
                                revert with 0, 'sub failed'
                            if not t + -(2 * stor8) + 10000000000 * 10^18:
                                if stor8 < stor8:
                                    revert with 0, 'add failed'
                                revert with 0, 'Incoming funds is too small'
                            require t + -(2 * stor8) + 10000000000 * 10^18
                            if (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / t + -(2 * stor8) + 10000000000 * 10^18 != 10^18:
                                revert with 0, 'mul failed'
                            if 10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10000000000 * 10^18 != (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                                revert with 0, 'mul failed'
                            if stor8 + (10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18) < stor8:
                                revert with 0, 'add failed'
                            if not (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                                revert with 0, 'Incoming funds is too small'
                            stor8 += 10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18
                            if totalSupply + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < totalSupply:
                                revert with 0, 'add failed'
                            if totalSupply > 0:
                                if not stor10:
                                    require totalSupply
                                    stor10 = 0 / totalSupply
                                else:
                                    require stor10
                                    if (totalSupply * stor10) + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / stor10 != totalSupply + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18):
                                        revert with 0, 'mul failed'
                                    require totalSupply
                                    stor10 = (totalSupply * stor10) + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / totalSupply
                            totalSupply += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                            if balanceOf[address(msg.sender)].field_256 + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < balanceOf[address(msg.sender)].field_256:
                                revert with 0, 'add failed'
                            balanceOf[address(msg.sender)].field_256 += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                            if totalSupply > 0:
                                if not (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                                    require totalSupply
                                    if balanceOf[address(msg.sender)].field_1024 + (0 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                        revert with 0, 'add failed'
                                    balanceOf[address(msg.sender)].field_1024 += 0 / totalSupply
                                else:
                                    require (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                                    if (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 != stor10:
                                        revert with 0, 'mul failed'
                                    require totalSupply
                                    if balanceOf[address(msg.sender)].field_1024 + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                        revert with 0, 'add failed'
                                    balanceOf[address(msg.sender)].field_1024 += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply
                            if stor10 + (msg.value * stor0 / stor1) - (msg.value * stor0 / stor1 * stor6 / stor7) < stor10:
                                revert with 0, 'add failed'
                            stor10 = stor10 + (msg.value * stor0 / stor1) - (msg.value * stor0 / stor1 * stor6 / stor7)
                            emit Purchase(msg.value, (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18, stor8 / 10^18, block.timestamp, msg.sender);
                    else:
                        require (80000000000 * 10^18 * msg.value) - (80000000000 * 10^18 * msg.value * stor0 / stor1)
                        if (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) / (80000000000 * 10^18 * msg.value) - (80000000000 * 10^18 * msg.value * stor0 / stor1) != 10^18:
                            revert with 0, 'mul failed'
                        if not (2 * stor8) - 10000000000 * 10^18:
                            if (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) < 0:
                                revert with 0, 'add failed'
                            s = (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 1 / 2
                            t = (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1)
                            while s < t:
                                require s
                                if ((0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) / s) + s < (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) / s:
                                    revert with 0, 'add failed'
                                s = ((0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) / s) + s / 2
                                t = s
                                continue 
                        else:
                            require (2 * stor8) - 10000000000 * 10^18
                            if (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / (2 * stor8) - 10000000000 * 10^18 != (2 * stor8) - 10000000000 * 10^18:
                                revert with 0, 'mul failed'
                            if (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) < 0:
                                revert with 0, 'add failed'
                            s = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000001 / 2
                            t = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000
                            while s < t:
                                require s
                                if ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s < (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s:
                                    revert with 0, 'add failed'
                                s = ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s / 2
                                t = s
                                continue 
                        if (2 * stor8) - 10000000000 * 10^18 > t:
                            revert with 0, 'sub failed'
                        if not t + -(2 * stor8) + 10000000000 * 10^18:
                            if stor8 < stor8:
                                revert with 0, 'add failed'
                            revert with 0, 'Incoming funds is too small'
                        require t + -(2 * stor8) + 10000000000 * 10^18
                        if (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / t + -(2 * stor8) + 10000000000 * 10^18 != 10^18:
                            revert with 0, 'mul failed'
                        if 10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10000000000 * 10^18 != (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                            revert with 0, 'mul failed'
                        if stor8 + (10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18) < stor8:
                            revert with 0, 'add failed'
                        if not (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                            revert with 0, 'Incoming funds is too small'
                        stor8 += 10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18
                        if totalSupply + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < totalSupply:
                            revert with 0, 'add failed'
                        if totalSupply > 0:
                            if not stor10:
                                require totalSupply
                                stor10 = 0 / totalSupply
                            else:
                                require stor10
                                if (totalSupply * stor10) + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / stor10 != totalSupply + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18):
                                    revert with 0, 'mul failed'
                                require totalSupply
                                stor10 = (totalSupply * stor10) + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / totalSupply
                        totalSupply += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                        if balanceOf[address(msg.sender)].field_256 + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < balanceOf[address(msg.sender)].field_256:
                            revert with 0, 'add failed'
                        balanceOf[address(msg.sender)].field_256 += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                        if totalSupply > 0:
                            if not (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                                require totalSupply
                                if balanceOf[address(msg.sender)].field_1024 + (0 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                    revert with 0, 'add failed'
                                balanceOf[address(msg.sender)].field_1024 += 0 / totalSupply
                            else:
                                require (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                                if (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 != stor10:
                                    revert with 0, 'mul failed'
                                require totalSupply
                                if balanceOf[address(msg.sender)].field_1024 + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                    revert with 0, 'add failed'
                                balanceOf[address(msg.sender)].field_1024 += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply
                        if stor10 + (msg.value * stor0 / stor1) - (msg.value * stor0 / stor1 * stor6 / stor7) < stor10:
                            revert with 0, 'add failed'
                        stor10 = stor10 + (msg.value * stor0 / stor1) - (msg.value * stor0 / stor1 * stor6 / stor7)
                        emit Purchase(msg.value, (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18, stor8 / 10^18, block.timestamp, msg.sender);
        else:
            if not balanceOf[address(msg.sender)].field_0:
                balanceOf[address(msg.sender)].field_0 = mem[128 len 20]
                if not stor8:
                    revert with 0, 'sub failed'
                require stor8
                if 2 * stor8 / stor8 != 2:
                    revert with 0, 'mul failed'
                if 10000000000 * 10^18 > 2 * stor8:
                    revert with 0, 'sub failed'
                if (80000000000 * 10^18 * msg.value) - (80000000000 * 10^18 * msg.value * stor0 / stor1) / 80000000000 * 10^18 != msg.value - (msg.value * stor0 / stor1):
                    revert with 0, 'mul failed'
                if not (80000000000 * 10^18 * msg.value) - (80000000000 * 10^18 * msg.value * stor0 / stor1):
                    if not (2 * stor8) - 10000000000 * 10^18:
                        if (2 * stor8) - 10000000000 * 10^18 > 0:
                            revert with 0, 'sub failed'
                        if not -(2 * stor8) + 10000000000 * 10^18:
                            if stor8 < stor8:
                                revert with 0, 'add failed'
                            revert with 0, 'Incoming funds is too small'
                        require -(2 * stor8) + 10000000000 * 10^18
                        if (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / -(2 * stor8) + 10000000000 * 10^18 != 10^18:
                            revert with 0, 'mul failed'
                        if 10000000000 * 10^18 * (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10000000000 * 10^18 != (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                            revert with 0, 'mul failed'
                        if stor8 + (10000000000 * 10^18 * (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18) < stor8:
                            revert with 0, 'add failed'
                        if not (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                            revert with 0, 'Incoming funds is too small'
                        stor8 += 10000000000 * 10^18 * (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18
                        if totalSupply + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < totalSupply:
                            revert with 0, 'add failed'
                        if totalSupply > 0:
                            if not stor10:
                                require totalSupply
                                stor10 = 0 / totalSupply
                            else:
                                require stor10
                                if (totalSupply * stor10) + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / stor10 != totalSupply + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18):
                                    revert with 0, 'mul failed'
                                require totalSupply
                                stor10 = (totalSupply * stor10) + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / totalSupply
                        totalSupply += (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                        if balanceOf[address(msg.sender)].field_256 + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < balanceOf[address(msg.sender)].field_256:
                            revert with 0, 'add failed'
                        balanceOf[address(msg.sender)].field_256 += (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                        if totalSupply > 0:
                            if not (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                                require totalSupply
                                if balanceOf[address(msg.sender)].field_1024 + (0 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                    revert with 0, 'add failed'
                                balanceOf[address(msg.sender)].field_1024 += 0 / totalSupply
                            else:
                                require (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                                if (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 != stor10:
                                    revert with 0, 'mul failed'
                                require totalSupply
                                if balanceOf[address(msg.sender)].field_1024 + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                    revert with 0, 'add failed'
                                balanceOf[address(msg.sender)].field_1024 += (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply
                        if stor10 + (msg.value * stor0 / stor1) < stor10:
                            revert with 0, 'add failed'
                        stor10 += msg.value * stor0 / stor1
                        emit Purchase(msg.value, (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18, stor8 / 10^18, block.timestamp, msg.sender);
                    else:
                        require (2 * stor8) - 10000000000 * 10^18
                        if (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / (2 * stor8) - 10000000000 * 10^18 != (2 * stor8) - 10000000000 * 10^18:
                            revert with 0, 'mul failed'
                        s = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000001 / 2
                        t = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000
                        while s < t:
                            require s
                            if ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s < (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s:
                                revert with 0, 'add failed'
                            s = ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s / 2
                            t = s
                            continue 
                        if (2 * stor8) - 10000000000 * 10^18 > t:
                            revert with 0, 'sub failed'
                        if not t + -(2 * stor8) + 10000000000 * 10^18:
                            if stor8 < stor8:
                                revert with 0, 'add failed'
                            revert with 0, 'Incoming funds is too small'
                        require t + -(2 * stor8) + 10000000000 * 10^18
                        if (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / t + -(2 * stor8) + 10000000000 * 10^18 != 10^18:
                            revert with 0, 'mul failed'
                        if 10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10000000000 * 10^18 != (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                            revert with 0, 'mul failed'
                        if stor8 + (10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18) < stor8:
                            revert with 0, 'add failed'
                        if not (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                            revert with 0, 'Incoming funds is too small'
                        stor8 += 10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18
                        if totalSupply + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < totalSupply:
                            revert with 0, 'add failed'
                        if totalSupply > 0:
                            if not stor10:
                                require totalSupply
                                stor10 = 0 / totalSupply
                            else:
                                require stor10
                                if (totalSupply * stor10) + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / stor10 != totalSupply + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18):
                                    revert with 0, 'mul failed'
                                require totalSupply
                                stor10 = (totalSupply * stor10) + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / totalSupply
                        totalSupply += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                        if balanceOf[address(msg.sender)].field_256 + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < balanceOf[address(msg.sender)].field_256:
                            revert with 0, 'add failed'
                        balanceOf[address(msg.sender)].field_256 += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                        if totalSupply > 0:
                            if not (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                                require totalSupply
                                if balanceOf[address(msg.sender)].field_1024 + (0 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                    revert with 0, 'add failed'
                                balanceOf[address(msg.sender)].field_1024 += 0 / totalSupply
                            else:
                                require (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                                if (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 != stor10:
                                    revert with 0, 'mul failed'
                                require totalSupply
                                if balanceOf[address(msg.sender)].field_1024 + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                    revert with 0, 'add failed'
                                balanceOf[address(msg.sender)].field_1024 += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply
                        if stor10 + (msg.value * stor0 / stor1) < stor10:
                            revert with 0, 'add failed'
                        stor10 += msg.value * stor0 / stor1
                        emit Purchase(msg.value, (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18, stor8 / 10^18, block.timestamp, msg.sender);
                else:
                    require (80000000000 * 10^18 * msg.value) - (80000000000 * 10^18 * msg.value * stor0 / stor1)
                    if (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) / (80000000000 * 10^18 * msg.value) - (80000000000 * 10^18 * msg.value * stor0 / stor1) != 10^18:
                        revert with 0, 'mul failed'
                    if not (2 * stor8) - 10000000000 * 10^18:
                        if (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) < 0:
                            revert with 0, 'add failed'
                        s = (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 1 / 2
                        t = (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1)
                        while s < t:
                            require s
                            if ((0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) / s) + s < (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) / s:
                                revert with 0, 'add failed'
                            s = ((0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) / s) + s / 2
                            t = s
                            continue 
                    else:
                        require (2 * stor8) - 10000000000 * 10^18
                        if (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / (2 * stor8) - 10000000000 * 10^18 != (2 * stor8) - 10000000000 * 10^18:
                            revert with 0, 'mul failed'
                        if (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) < 0:
                            revert with 0, 'add failed'
                        s = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000001 / 2
                        t = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000
                        while s < t:
                            require s
                            if ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s < (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s:
                                revert with 0, 'add failed'
                            s = ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s / 2
                            t = s
                            continue 
                    if (2 * stor8) - 10000000000 * 10^18 > t:
                        revert with 0, 'sub failed'
                    if not t + -(2 * stor8) + 10000000000 * 10^18:
                        if stor8 < stor8:
                            revert with 0, 'add failed'
                        revert with 0, 'Incoming funds is too small'
                    require t + -(2 * stor8) + 10000000000 * 10^18
                    if (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / t + -(2 * stor8) + 10000000000 * 10^18 != 10^18:
                        revert with 0, 'mul failed'
                    if 10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10000000000 * 10^18 != (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                        revert with 0, 'mul failed'
                    if stor8 + (10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18) < stor8:
                        revert with 0, 'add failed'
                    if not (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                        revert with 0, 'Incoming funds is too small'
                    stor8 += 10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18
                    if totalSupply + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < totalSupply:
                        revert with 0, 'add failed'
                    if totalSupply > 0:
                        if not stor10:
                            require totalSupply
                            stor10 = 0 / totalSupply
                        else:
                            require stor10
                            if (totalSupply * stor10) + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / stor10 != totalSupply + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18):
                                revert with 0, 'mul failed'
                            require totalSupply
                            stor10 = (totalSupply * stor10) + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / totalSupply
                    totalSupply += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                    if balanceOf[address(msg.sender)].field_256 + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < balanceOf[address(msg.sender)].field_256:
                        revert with 0, 'add failed'
                    balanceOf[address(msg.sender)].field_256 += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                    if totalSupply > 0:
                        if not (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                            require totalSupply
                            if balanceOf[address(msg.sender)].field_1024 + (0 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                revert with 0, 'add failed'
                            balanceOf[address(msg.sender)].field_1024 += 0 / totalSupply
                        else:
                            require (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                            if (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 != stor10:
                                revert with 0, 'mul failed'
                            require totalSupply
                            if balanceOf[address(msg.sender)].field_1024 + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                revert with 0, 'add failed'
                            balanceOf[address(msg.sender)].field_1024 += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply
                    if stor10 + (msg.value * stor0 / stor1) < stor10:
                        revert with 0, 'add failed'
                    stor10 += msg.value * stor0 / stor1
                    emit Purchase(msg.value, (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18, stor8 / 10^18, block.timestamp, msg.sender);
            else:
                if balanceOf[balanceOf[address(msg.sender)].field_0].field_256 < 10 * 10^18:
                    if not msg.value * stor0 / stor1:
                        revert with 0, 'Incoming funds is too small'
                    if not stor8:
                        revert with 0, 'sub failed'
                    require stor8
                    if 2 * stor8 / stor8 != 2:
                        revert with 0, 'mul failed'
                    if 10000000000 * 10^18 > 2 * stor8:
                        revert with 0, 'sub failed'
                    if (80000000000 * 10^18 * msg.value) - (80000000000 * 10^18 * msg.value * stor0 / stor1) / 80000000000 * 10^18 != msg.value - (msg.value * stor0 / stor1):
                        revert with 0, 'mul failed'
                    if not (80000000000 * 10^18 * msg.value) - (80000000000 * 10^18 * msg.value * stor0 / stor1):
                        if not (2 * stor8) - 10000000000 * 10^18:
                            if (2 * stor8) - 10000000000 * 10^18 > 0:
                                revert with 0, 'sub failed'
                            if not -(2 * stor8) + 10000000000 * 10^18:
                                if stor8 < stor8:
                                    revert with 0, 'add failed'
                                revert with 0, 'Incoming funds is too small'
                            require -(2 * stor8) + 10000000000 * 10^18
                            if (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / -(2 * stor8) + 10000000000 * 10^18 != 10^18:
                                revert with 0, 'mul failed'
                            if 10000000000 * 10^18 * (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10000000000 * 10^18 != (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                                revert with 0, 'mul failed'
                            if stor8 + (10000000000 * 10^18 * (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18) < stor8:
                                revert with 0, 'add failed'
                            if not (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                                revert with 0, 'Incoming funds is too small'
                            stor8 += 10000000000 * 10^18 * (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18
                            if totalSupply + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < totalSupply:
                                revert with 0, 'add failed'
                            if totalSupply > 0:
                                if not stor10:
                                    require totalSupply
                                    stor10 = 0 / totalSupply
                                else:
                                    require stor10
                                    if (totalSupply * stor10) + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / stor10 != totalSupply + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18):
                                        revert with 0, 'mul failed'
                                    require totalSupply
                                    stor10 = (totalSupply * stor10) + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / totalSupply
                            totalSupply += (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                            if balanceOf[address(msg.sender)].field_256 + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < balanceOf[address(msg.sender)].field_256:
                                revert with 0, 'add failed'
                            balanceOf[address(msg.sender)].field_256 += (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                            if totalSupply > 0:
                                if not (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                                    require totalSupply
                                    if balanceOf[address(msg.sender)].field_1024 + (0 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                        revert with 0, 'add failed'
                                    balanceOf[address(msg.sender)].field_1024 += 0 / totalSupply
                                else:
                                    require (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                                    if (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 != stor10:
                                        revert with 0, 'mul failed'
                                    require totalSupply
                                    if balanceOf[address(msg.sender)].field_1024 + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                        revert with 0, 'add failed'
                                    balanceOf[address(msg.sender)].field_1024 += (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply
                            if stor10 + (msg.value * stor0 / stor1) < stor10:
                                revert with 0, 'add failed'
                            stor10 += msg.value * stor0 / stor1
                            emit Purchase(msg.value, (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18, stor8 / 10^18, block.timestamp, msg.sender);
                        else:
                            require (2 * stor8) - 10000000000 * 10^18
                            if (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / (2 * stor8) - 10000000000 * 10^18 != (2 * stor8) - 10000000000 * 10^18:
                                revert with 0, 'mul failed'
                            s = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000001 / 2
                            t = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000
                            while s < t:
                                require s
                                if ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s < (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s:
                                    revert with 0, 'add failed'
                                s = ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s / 2
                                t = s
                                continue 
                            if (2 * stor8) - 10000000000 * 10^18 > t:
                                revert with 0, 'sub failed'
                            if not t + -(2 * stor8) + 10000000000 * 10^18:
                                if stor8 < stor8:
                                    revert with 0, 'add failed'
                                revert with 0, 'Incoming funds is too small'
                            require t + -(2 * stor8) + 10000000000 * 10^18
                            if (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / t + -(2 * stor8) + 10000000000 * 10^18 != 10^18:
                                revert with 0, 'mul failed'
                            if 10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10000000000 * 10^18 != (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                                revert with 0, 'mul failed'
                            if stor8 + (10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18) < stor8:
                                revert with 0, 'add failed'
                            if not (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                                revert with 0, 'Incoming funds is too small'
                            stor8 += 10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18
                            if totalSupply + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < totalSupply:
                                revert with 0, 'add failed'
                            if totalSupply > 0:
                                if not stor10:
                                    require totalSupply
                                    stor10 = 0 / totalSupply
                                else:
                                    require stor10
                                    if (totalSupply * stor10) + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / stor10 != totalSupply + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18):
                                        revert with 0, 'mul failed'
                                    require totalSupply
                                    stor10 = (totalSupply * stor10) + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / totalSupply
                            totalSupply += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                            if balanceOf[address(msg.sender)].field_256 + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < balanceOf[address(msg.sender)].field_256:
                                revert with 0, 'add failed'
                            balanceOf[address(msg.sender)].field_256 += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                            if totalSupply > 0:
                                if not (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                                    require totalSupply
                                    if balanceOf[address(msg.sender)].field_1024 + (0 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                        revert with 0, 'add failed'
                                    balanceOf[address(msg.sender)].field_1024 += 0 / totalSupply
                                else:
                                    require (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                                    if (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 != stor10:
                                        revert with 0, 'mul failed'
                                    require totalSupply
                                    if balanceOf[address(msg.sender)].field_1024 + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                        revert with 0, 'add failed'
                                    balanceOf[address(msg.sender)].field_1024 += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply
                            if stor10 + (msg.value * stor0 / stor1) < stor10:
                                revert with 0, 'add failed'
                            stor10 += msg.value * stor0 / stor1
                            emit Purchase(msg.value, (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18, stor8 / 10^18, block.timestamp, msg.sender);
                    else:
                        require (80000000000 * 10^18 * msg.value) - (80000000000 * 10^18 * msg.value * stor0 / stor1)
                        if (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) / (80000000000 * 10^18 * msg.value) - (80000000000 * 10^18 * msg.value * stor0 / stor1) != 10^18:
                            revert with 0, 'mul failed'
                        if not (2 * stor8) - 10000000000 * 10^18:
                            if (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) < 0:
                                revert with 0, 'add failed'
                            s = (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 1 / 2
                            t = (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1)
                            while s < t:
                                require s
                                if ((0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) / s) + s < (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) / s:
                                    revert with 0, 'add failed'
                                s = ((0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) / s) + s / 2
                                t = s
                                continue 
                        else:
                            require (2 * stor8) - 10000000000 * 10^18
                            if (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / (2 * stor8) - 10000000000 * 10^18 != (2 * stor8) - 10000000000 * 10^18:
                                revert with 0, 'mul failed'
                            if (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) < 0:
                                revert with 0, 'add failed'
                            s = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000001 / 2
                            t = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000
                            while s < t:
                                require s
                                if ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s < (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s:
                                    revert with 0, 'add failed'
                                s = ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s / 2
                                t = s
                                continue 
                        if (2 * stor8) - 10000000000 * 10^18 > t:
                            revert with 0, 'sub failed'
                        if not t + -(2 * stor8) + 10000000000 * 10^18:
                            if stor8 < stor8:
                                revert with 0, 'add failed'
                            revert with 0, 'Incoming funds is too small'
                        require t + -(2 * stor8) + 10000000000 * 10^18
                        if (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / t + -(2 * stor8) + 10000000000 * 10^18 != 10^18:
                            revert with 0, 'mul failed'
                        if 10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10000000000 * 10^18 != (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                            revert with 0, 'mul failed'
                        if stor8 + (10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18) < stor8:
                            revert with 0, 'add failed'
                        if not (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                            revert with 0, 'Incoming funds is too small'
                        stor8 += 10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18
                        if totalSupply + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < totalSupply:
                            revert with 0, 'add failed'
                        if totalSupply > 0:
                            if not stor10:
                                require totalSupply
                                stor10 = 0 / totalSupply
                            else:
                                require stor10
                                if (totalSupply * stor10) + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / stor10 != totalSupply + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18):
                                    revert with 0, 'mul failed'
                                require totalSupply
                                stor10 = (totalSupply * stor10) + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / totalSupply
                        totalSupply += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                        if balanceOf[address(msg.sender)].field_256 + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < balanceOf[address(msg.sender)].field_256:
                            revert with 0, 'add failed'
                        balanceOf[address(msg.sender)].field_256 += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                        if totalSupply > 0:
                            if not (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                                require totalSupply
                                if balanceOf[address(msg.sender)].field_1024 + (0 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                    revert with 0, 'add failed'
                                balanceOf[address(msg.sender)].field_1024 += 0 / totalSupply
                            else:
                                require (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                                if (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 != stor10:
                                    revert with 0, 'mul failed'
                                require totalSupply
                                if balanceOf[address(msg.sender)].field_1024 + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                    revert with 0, 'add failed'
                                balanceOf[address(msg.sender)].field_1024 += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply
                        if stor10 + (msg.value * stor0 / stor1) < stor10:
                            revert with 0, 'add failed'
                        stor10 += msg.value * stor0 / stor1
                        emit Purchase(msg.value, (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18, stor8 / 10^18, block.timestamp, msg.sender);
                else:
                    if not msg.value * stor0 / stor1:
                        if balanceOf[balanceOf[address(msg.sender)].field_0].field_768 < balanceOf[balanceOf[address(msg.sender)].field_0].field_768:
                            revert with 0, 'add failed'
                        emit ReferralReward(msg.value, 0, block.timestamp, msg.sender, balanceOf[address(msg.sender)].field_0);
                        revert with 0, 'Incoming funds is too small'
                    require msg.value * stor0 / stor1
                    if msg.value * stor0 / stor1 * stor6 / msg.value * stor0 / stor1 != stor6:
                        revert with 0, 'mul failed'
                    require stor7
                    if msg.value * stor0 / stor1 * stor6 / stor7 > msg.value * stor0 / stor1:
                        revert with 0, 'sub failed'
                    if balanceOf[balanceOf[address(msg.sender)].field_0].field_768 + (msg.value * stor0 / stor1 * stor6 / stor7) < balanceOf[balanceOf[address(msg.sender)].field_0].field_768:
                        revert with 0, 'add failed'
                    balanceOf[balanceOf[address(msg.sender)].field_0].field_768 += msg.value * stor0 / stor1 * stor6 / stor7
                    emit ReferralReward(msg.value, msg.value * stor0 / stor1 * stor6 / stor7, block.timestamp, msg.sender, balanceOf[address(msg.sender)].field_0);
                    if not (msg.value * stor0 / stor1) - (msg.value * stor0 / stor1 * stor6 / stor7):
                        revert with 0, 'Incoming funds is too small'
                    if not stor8:
                        revert with 0, 'sub failed'
                    require stor8
                    if 2 * stor8 / stor8 != 2:
                        revert with 0, 'mul failed'
                    if 10000000000 * 10^18 > 2 * stor8:
                        revert with 0, 'sub failed'
                    if (80000000000 * 10^18 * msg.value) - (80000000000 * 10^18 * msg.value * stor0 / stor1) / 80000000000 * 10^18 != msg.value - (msg.value * stor0 / stor1):
                        revert with 0, 'mul failed'
                    if not (80000000000 * 10^18 * msg.value) - (80000000000 * 10^18 * msg.value * stor0 / stor1):
                        if not (2 * stor8) - 10000000000 * 10^18:
                            if (2 * stor8) - 10000000000 * 10^18 > 0:
                                revert with 0, 'sub failed'
                            if not -(2 * stor8) + 10000000000 * 10^18:
                                if stor8 < stor8:
                                    revert with 0, 'add failed'
                                revert with 0, 'Incoming funds is too small'
                            require -(2 * stor8) + 10000000000 * 10^18
                            if (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / -(2 * stor8) + 10000000000 * 10^18 != 10^18:
                                revert with 0, 'mul failed'
                            if 10000000000 * 10^18 * (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10000000000 * 10^18 != (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                                revert with 0, 'mul failed'
                            if stor8 + (10000000000 * 10^18 * (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18) < stor8:
                                revert with 0, 'add failed'
                            if not (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                                revert with 0, 'Incoming funds is too small'
                            stor8 += 10000000000 * 10^18 * (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18
                            if totalSupply + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < totalSupply:
                                revert with 0, 'add failed'
                            if totalSupply > 0:
                                if not stor10:
                                    require totalSupply
                                    stor10 = 0 / totalSupply
                                else:
                                    require stor10
                                    if (totalSupply * stor10) + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / stor10 != totalSupply + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18):
                                        revert with 0, 'mul failed'
                                    require totalSupply
                                    stor10 = (totalSupply * stor10) + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / totalSupply
                            totalSupply += (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                            if balanceOf[address(msg.sender)].field_256 + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < balanceOf[address(msg.sender)].field_256:
                                revert with 0, 'add failed'
                            balanceOf[address(msg.sender)].field_256 += (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                            if totalSupply > 0:
                                if not (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                                    require totalSupply
                                    if balanceOf[address(msg.sender)].field_1024 + (0 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                        revert with 0, 'add failed'
                                    balanceOf[address(msg.sender)].field_1024 += 0 / totalSupply
                                else:
                                    require (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                                    if (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 != stor10:
                                        revert with 0, 'mul failed'
                                    require totalSupply
                                    if balanceOf[address(msg.sender)].field_1024 + ((-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                        revert with 0, 'add failed'
                                    balanceOf[address(msg.sender)].field_1024 += (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply
                            if stor10 + (msg.value * stor0 / stor1) - (msg.value * stor0 / stor1 * stor6 / stor7) < stor10:
                                revert with 0, 'add failed'
                            stor10 = stor10 + (msg.value * stor0 / stor1) - (msg.value * stor0 / stor1 * stor6 / stor7)
                            emit Purchase(msg.value, (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18, stor8 / 10^18, block.timestamp, msg.sender);
                        else:
                            require (2 * stor8) - 10000000000 * 10^18
                            if (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / (2 * stor8) - 10000000000 * 10^18 != (2 * stor8) - 10000000000 * 10^18:
                                revert with 0, 'mul failed'
                            s = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000001 / 2
                            t = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000
                            while s < t:
                                require s
                                if ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s < (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s:
                                    revert with 0, 'add failed'
                                s = ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s / 2
                                t = s
                                continue 
                            if (2 * stor8) - 10000000000 * 10^18 > t:
                                revert with 0, 'sub failed'
                            if not t + -(2 * stor8) + 10000000000 * 10^18:
                                if stor8 < stor8:
                                    revert with 0, 'add failed'
                                revert with 0, 'Incoming funds is too small'
                            require t + -(2 * stor8) + 10000000000 * 10^18
                            if (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / t + -(2 * stor8) + 10000000000 * 10^18 != 10^18:
                                revert with 0, 'mul failed'
                            if 10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10000000000 * 10^18 != (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                                revert with 0, 'mul failed'
                            if stor8 + (10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18) < stor8:
                                revert with 0, 'add failed'
                            if not (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                                revert with 0, 'Incoming funds is too small'
                            stor8 += 10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18
                            if totalSupply + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < totalSupply:
                                revert with 0, 'add failed'
                            if totalSupply > 0:
                                if not stor10:
                                    require totalSupply
                                    stor10 = 0 / totalSupply
                                else:
                                    require stor10
                                    if (totalSupply * stor10) + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / stor10 != totalSupply + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18):
                                        revert with 0, 'mul failed'
                                    require totalSupply
                                    stor10 = (totalSupply * stor10) + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / totalSupply
                            totalSupply += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                            if balanceOf[address(msg.sender)].field_256 + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < balanceOf[address(msg.sender)].field_256:
                                revert with 0, 'add failed'
                            balanceOf[address(msg.sender)].field_256 += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                            if totalSupply > 0:
                                if not (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                                    require totalSupply
                                    if balanceOf[address(msg.sender)].field_1024 + (0 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                        revert with 0, 'add failed'
                                    balanceOf[address(msg.sender)].field_1024 += 0 / totalSupply
                                else:
                                    require (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                                    if (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 != stor10:
                                        revert with 0, 'mul failed'
                                    require totalSupply
                                    if balanceOf[address(msg.sender)].field_1024 + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                        revert with 0, 'add failed'
                                    balanceOf[address(msg.sender)].field_1024 += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply
                            if stor10 + (msg.value * stor0 / stor1) - (msg.value * stor0 / stor1 * stor6 / stor7) < stor10:
                                revert with 0, 'add failed'
                            stor10 = stor10 + (msg.value * stor0 / stor1) - (msg.value * stor0 / stor1 * stor6 / stor7)
                            emit Purchase(msg.value, (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18, stor8 / 10^18, block.timestamp, msg.sender);
                    else:
                        require (80000000000 * 10^18 * msg.value) - (80000000000 * 10^18 * msg.value * stor0 / stor1)
                        if (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) / (80000000000 * 10^18 * msg.value) - (80000000000 * 10^18 * msg.value * stor0 / stor1) != 10^18:
                            revert with 0, 'mul failed'
                        if not (2 * stor8) - 10000000000 * 10^18:
                            if (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) < 0:
                                revert with 0, 'add failed'
                            s = (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 1 / 2
                            t = (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1)
                            while s < t:
                                require s
                                if ((0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) / s) + s < (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) / s:
                                    revert with 0, 'add failed'
                                s = ((0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) / s) + s / 2
                                t = s
                                continue 
                        else:
                            require (2 * stor8) - 10000000000 * 10^18
                            if (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / (2 * stor8) - 10000000000 * 10^18 != (2 * stor8) - 10000000000 * 10^18:
                                revert with 0, 'mul failed'
                            if (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) - (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value * stor0 / stor1) < 0:
                                revert with 0, 'add failed'
                            s = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000001 / 2
                            t = (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000
                            while s < t:
                                require s
                                if ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s < (-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s:
                                    revert with 0, 'add failed'
                                s = ((-20000000000 * 10^18 * 2 * stor8) + (2 * stor8 * 2 * stor8) + (0xe0352f62a19e306ed50b2037ad2000000000000 * msg.value) + (-80000000000000000000000000000 * 10^18 * msg.value * stor0 / stor1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s / 2
                                t = s
                                continue 
                        if (2 * stor8) - 10000000000 * 10^18 > t:
                            revert with 0, 'sub failed'
                        if not t + -(2 * stor8) + 10000000000 * 10^18:
                            if stor8 < stor8:
                                revert with 0, 'add failed'
                            revert with 0, 'Incoming funds is too small'
                        require t + -(2 * stor8) + 10000000000 * 10^18
                        if (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / t + -(2 * stor8) + 10000000000 * 10^18 != 10^18:
                            revert with 0, 'mul failed'
                        if 10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10000000000 * 10^18 != (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                            revert with 0, 'mul failed'
                        if stor8 + (10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18) < stor8:
                            revert with 0, 'add failed'
                        if not (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                            revert with 0, 'Incoming funds is too small'
                        stor8 += 10000000000 * 10^18 * (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 / 10^18
                        if totalSupply + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < totalSupply:
                            revert with 0, 'add failed'
                        if totalSupply > 0:
                            if not stor10:
                                require totalSupply
                                stor10 = 0 / totalSupply
                            else:
                                require stor10
                                if (totalSupply * stor10) + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / stor10 != totalSupply + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18):
                                    revert with 0, 'mul failed'
                                require totalSupply
                                stor10 = (totalSupply * stor10) + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10) / totalSupply
                        totalSupply += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                        if balanceOf[address(msg.sender)].field_256 + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18) < balanceOf[address(msg.sender)].field_256:
                            revert with 0, 'add failed'
                        balanceOf[address(msg.sender)].field_256 += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                        if totalSupply > 0:
                            if not (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18:
                                require totalSupply
                                if balanceOf[address(msg.sender)].field_1024 + (0 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                    revert with 0, 'add failed'
                                balanceOf[address(msg.sender)].field_1024 += 0 / totalSupply
                            else:
                                require (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18
                                if (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 != stor10:
                                    revert with 0, 'mul failed'
                                require totalSupply
                                if balanceOf[address(msg.sender)].field_1024 + ((10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply) < balanceOf[address(msg.sender)].field_1024:
                                    revert with 0, 'add failed'
                                balanceOf[address(msg.sender)].field_1024 += (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18 * stor10 / totalSupply
                        if stor10 + (msg.value * stor0 / stor1) - (msg.value * stor0 / stor1 * stor6 / stor7) < stor10:
                            revert with 0, 'add failed'
                        stor10 = stor10 + (msg.value * stor0 / stor1) - (msg.value * stor0 / stor1 * stor6 / stor7)
                        emit Purchase(msg.value, (10^18 * t) + (-1 * 10^18 * 2 * stor8) + 0x1c06a5ec5433c60ddaa16406f5a400000000000 / 20000000000 * 10^18, stor8 / 10^18, block.timestamp, msg.sender);
}



}
