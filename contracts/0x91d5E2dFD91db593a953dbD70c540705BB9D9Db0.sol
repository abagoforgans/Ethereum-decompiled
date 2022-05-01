contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
address stor2;
uint256 stor4;
address stor5;
address stor6;
uint256 stor7;
uint256 stor8;
address stor9;
address stor10;
mapping of uint256 stor11;
uint256 stor14;

function _fallback() payable {
    stor14 = 27777777775 * 10^14 * 3600
    require not msg.value
    stor1 = 0xd384cfa70db590eab32f3c262b84c1e10f27eda8
    stor2 = 0x263003a4cc5358acebbad7e30c60167307df1ccb
    stor10 = msg.sender
    stor0 = stor14
    stor11[address(msg.sender)] = stor14
    stor9 = 0xb94f2e7b4e37a8c03e9c2e451dec09ce94be2615
    stor7 = 5
    stor8 = 25 * 10^18 * 3600
    stor5 = 0xbe9517d10397d60ead7da33ea50a6431f5be3790
    stor6 = 0xc90f698cc5803b21a04ce46ed1754655bf2215e5
    stor4 = 15
    return code.data[648 len 13702]
}



// =====================  Runtime code  =====================


const name = 'Guap'

const decimals = 18

const symbol = 'Guap'


uint256 totalSupply;
address admin1Address;
address admin2Address;
mapping of uint256 getAccess;
uint256 fee;
address feeAddr1;
address feeAddr2;
uint256 coefRew;
uint256 summRew;
address rewAddr;
address owner;
mapping of uint256 balanceOf;
mapping of uint256 stor12;
mapping of uint256 allowance;
uint256 INITIAL_SUPPLY;

function admin2() {
    return admin2Address
}

function admin1() {
    return admin1Address
}

function totalSupply() {
    return totalSupply
}

function INITIAL_SUPPLY() {
    return INITIAL_SUPPLY
}

function CoefRew() {
    return coefRew
}

function RewAddr() {
    return rewAddr
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function SummRew() {
    return summRew
}

function GetAccess(address arg1) {
    return getAccess[address(arg1)]
}

function FeeAddr1() {
    return feeAddr1
}

function AccessAddress(address arg1) {
    return getAccess[arg1]
}

function owner() {
    return owner
}

function FeeAddr2() {
    return feeAddr2
}

function Fee() {
    return fee
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function SetFee(uint256 arg1) {
    if admin1Address != msg.sender:
        require msg.sender == admin2Address
    fee = arg1
}

function SetRewAddr(address arg1) {
    if admin1Address != msg.sender:
        require msg.sender == admin2Address
    rewAddr = arg1
}

function SetSummRew(uint256 arg1) {
    if admin1Address != msg.sender:
        require msg.sender == admin2Address
    summRew = arg1
}

function SetCoefRew(uint256 arg1) {
    if admin1Address != msg.sender:
        require msg.sender == admin2Address
    coefRew = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function GetSummFee(uint256 arg1) {
    if not arg1:
        return 0
    require arg1
    require arg1 * fee / arg1 == fee
    return (arg1 * fee / 100 / 1000 / 3)
}

function SetAccess(address arg1, uint256 arg2) {
    if admin1Address != msg.sender:
        require msg.sender == admin2Address
    getAccess[address(arg1)] = arg2
}

function GetSummReward(uint256 arg1) {
    if not arg1:
        return 0
    require arg1
    require arg1 * coefRew / arg1 == coefRew
    return (arg1 * coefRew / 100 / 1000)
}

function transferAdminship2(address arg1) {
    if admin1Address != msg.sender:
        require msg.sender == admin2Address
    require arg1
    emit AdminshipTransferred(admin2Address, arg1);
    admin2Address = arg1
}

function transferAdminship1(address arg1) {
    if admin1Address != msg.sender:
        require msg.sender == admin2Address
    require arg1
    emit AdminshipTransferred(admin1Address, arg1);
    admin1Address = arg1
}

function burn(uint256 arg1) {
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require getAccess[address(msg.sender)] != 1
    require arg1
    require arg1 != msg.sender
    require arg2 <= balanceOf[address(msg.sender)]
    if msg.sender == owner:
        require arg2 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= arg2
        require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if not arg2:
            if not arg2:
                require 0 <= balanceOf[address(msg.sender)]
                require balanceOf[stor5] >= balanceOf[stor5]
                require 0 <= arg2
                require 0 <= balanceOf[address(msg.sender)]
                require balanceOf[stor6] >= balanceOf[stor6]
                require 0 <= arg2
                require 0 <= balanceOf[address(msg.sender)]
                require balanceOf[stor9] >= balanceOf[stor9]
                require 0 <= arg2
                require stor12[address(msg.sender)] + arg2 >= stor12[address(msg.sender)]
                stor12[address(msg.sender)] += arg2
                if stor12[address(msg.sender)] >= summRew:
                    if balanceOf[stor9] >= 0:
                        require 0 <= balanceOf[stor9]
                        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        stor12[address(msg.sender)] = 0
            else:
                require arg2
                require arg2 * coefRew / arg2 == coefRew
                require 0 <= balanceOf[address(msg.sender)]
                require balanceOf[stor5] >= balanceOf[stor5]
                require 0 <= arg2
                require 0 <= balanceOf[address(msg.sender)]
                require balanceOf[stor6] >= balanceOf[stor6]
                require 0 <= arg2
                require 0 <= balanceOf[address(msg.sender)]
                require balanceOf[stor9] >= balanceOf[stor9]
                require 0 <= arg2
                require stor12[address(msg.sender)] + arg2 >= stor12[address(msg.sender)]
                stor12[address(msg.sender)] += arg2
                if stor12[address(msg.sender)] >= summRew:
                    if balanceOf[stor9] >= arg2 * coefRew / 100 / 1000:
                        require arg2 * coefRew / 100 / 1000 <= balanceOf[stor9]
                        balanceOf[stor9] -= arg2 * coefRew / 100 / 1000
                        require balanceOf[address(msg.sender)] + (arg2 * coefRew / 100 / 1000) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += arg2 * coefRew / 100 / 1000
                        stor12[address(msg.sender)] = 0
            require arg2 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= arg2
            require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            require arg2
            require arg2 * fee / arg2 == fee
            if not arg2:
                require arg2 * fee / 100 / 1000 / 3 <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] -= arg2 * fee / 100 / 1000 / 3
                require balanceOf[stor5] + (arg2 * fee / 100 / 1000 / 3) >= balanceOf[stor5]
                balanceOf[stor5] += arg2 * fee / 100 / 1000 / 3
                require arg2 * fee / 100 / 1000 / 3 <= arg2
                require arg2 * fee / 100 / 1000 / 3 <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] -= arg2 * fee / 100 / 1000 / 3
                require balanceOf[stor6] + (arg2 * fee / 100 / 1000 / 3) >= balanceOf[stor6]
                balanceOf[stor6] += arg2 * fee / 100 / 1000 / 3
                require arg2 * fee / 100 / 1000 / 3 <= arg2 - (arg2 * fee / 100 / 1000 / 3)
                require arg2 * fee / 100 / 1000 / 3 <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] -= arg2 * fee / 100 / 1000 / 3
                require balanceOf[stor9] + (arg2 * fee / 100 / 1000 / 3) >= balanceOf[stor9]
                balanceOf[stor9] += arg2 * fee / 100 / 1000 / 3
                require arg2 * fee / 100 / 1000 / 3 <= arg2 - (2 * arg2 * fee / 100 / 1000 / 3)
                require stor12[address(msg.sender)] + arg2 >= stor12[address(msg.sender)]
                stor12[address(msg.sender)] += arg2
                if stor12[address(msg.sender)] >= summRew:
                    if balanceOf[stor9] >= 0:
                        require 0 <= balanceOf[stor9]
                        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        stor12[address(msg.sender)] = 0
            else:
                require arg2
                require arg2 * coefRew / arg2 == coefRew
                require arg2 * fee / 100 / 1000 / 3 <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] -= arg2 * fee / 100 / 1000 / 3
                require balanceOf[stor5] + (arg2 * fee / 100 / 1000 / 3) >= balanceOf[stor5]
                balanceOf[stor5] += arg2 * fee / 100 / 1000 / 3
                require arg2 * fee / 100 / 1000 / 3 <= arg2
                require arg2 * fee / 100 / 1000 / 3 <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] -= arg2 * fee / 100 / 1000 / 3
                require balanceOf[stor6] + (arg2 * fee / 100 / 1000 / 3) >= balanceOf[stor6]
                balanceOf[stor6] += arg2 * fee / 100 / 1000 / 3
                require arg2 * fee / 100 / 1000 / 3 <= arg2 - (arg2 * fee / 100 / 1000 / 3)
                require arg2 * fee / 100 / 1000 / 3 <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] -= arg2 * fee / 100 / 1000 / 3
                require balanceOf[stor9] + (arg2 * fee / 100 / 1000 / 3) >= balanceOf[stor9]
                balanceOf[stor9] += arg2 * fee / 100 / 1000 / 3
                require arg2 * fee / 100 / 1000 / 3 <= arg2 - (2 * arg2 * fee / 100 / 1000 / 3)
                require stor12[address(msg.sender)] + arg2 >= stor12[address(msg.sender)]
                stor12[address(msg.sender)] += arg2
                if stor12[address(msg.sender)] >= summRew:
                    if balanceOf[stor9] >= arg2 * coefRew / 100 / 1000:
                        require arg2 * coefRew / 100 / 1000 <= balanceOf[stor9]
                        balanceOf[stor9] -= arg2 * coefRew / 100 / 1000
                        require balanceOf[address(msg.sender)] + (arg2 * coefRew / 100 / 1000) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += arg2 * coefRew / 100 / 1000
                        stor12[address(msg.sender)] = 0
            require arg2 - (3 * arg2 * fee / 100 / 1000 / 3) <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (3 * arg2 * fee / 100 / 1000 / 3)
            require balanceOf[address(arg1)] + arg2 - (3 * arg2 * fee / 100 / 1000 / 3) >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (3 * arg2 * fee / 100 / 1000 / 3)
            emit Transfer((arg2 - (3 * arg2 * fee / 100 / 1000 / 3)), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2 != msg.sender
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    if arg1 == owner:
        require arg3 <= balanceOf[address(arg1)]
        balanceOf[address(arg1)] -= arg3
        require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
        balanceOf[address(arg2)] += arg3
        require arg3 <= allowance[address(arg1)][address(msg.sender)]
        allowance[address(arg1)][address(msg.sender)] -= arg3
        emit Transfer(arg3, arg1, arg2);
    else:
        if not arg3:
            if not arg3:
                require 0 <= balanceOf[address(arg1)]
                require balanceOf[stor5] >= balanceOf[stor5]
                require 0 <= arg3
                require 0 <= balanceOf[address(arg1)]
                require balanceOf[stor6] >= balanceOf[stor6]
                require 0 <= arg3
                require 0 <= balanceOf[address(arg1)]
                require balanceOf[stor9] >= balanceOf[stor9]
                require 0 <= arg3
                require stor12[address(arg1)] + arg3 >= stor12[address(arg1)]
                stor12[address(arg1)] += arg3
                if stor12[address(arg1)] >= summRew:
                    if balanceOf[stor9] >= 0:
                        require 0 <= balanceOf[stor9]
                        require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                        stor12[address(arg1)] = 0
            else:
                require arg3
                require arg3 * coefRew / arg3 == coefRew
                require 0 <= balanceOf[address(arg1)]
                require balanceOf[stor5] >= balanceOf[stor5]
                require 0 <= arg3
                require 0 <= balanceOf[address(arg1)]
                require balanceOf[stor6] >= balanceOf[stor6]
                require 0 <= arg3
                require 0 <= balanceOf[address(arg1)]
                require balanceOf[stor9] >= balanceOf[stor9]
                require 0 <= arg3
                require stor12[address(arg1)] + arg3 >= stor12[address(arg1)]
                stor12[address(arg1)] += arg3
                if stor12[address(arg1)] >= summRew:
                    if balanceOf[stor9] >= arg3 * coefRew / 100 / 1000:
                        require arg3 * coefRew / 100 / 1000 <= balanceOf[stor9]
                        balanceOf[stor9] -= arg3 * coefRew / 100 / 1000
                        require balanceOf[address(arg1)] + (arg3 * coefRew / 100 / 1000) >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] += arg3 * coefRew / 100 / 1000
                        stor12[address(arg1)] = 0
            require arg3 <= balanceOf[address(arg1)]
            balanceOf[address(arg1)] -= arg3
            require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
            balanceOf[address(arg2)] += arg3
            require arg3 <= allowance[address(arg1)][address(msg.sender)]
            allowance[address(arg1)][address(msg.sender)] -= arg3
            emit Transfer(arg3, arg1, arg2);
        else:
            require arg3
            require arg3 * fee / arg3 == fee
            if not arg3:
                require arg3 * fee / 100 / 1000 / 3 <= balanceOf[address(arg1)]
                balanceOf[address(arg1)] -= arg3 * fee / 100 / 1000 / 3
                require balanceOf[stor5] + (arg3 * fee / 100 / 1000 / 3) >= balanceOf[stor5]
                balanceOf[stor5] += arg3 * fee / 100 / 1000 / 3
                require arg3 * fee / 100 / 1000 / 3 <= arg3
                require arg3 * fee / 100 / 1000 / 3 <= balanceOf[address(arg1)]
                balanceOf[address(arg1)] -= arg3 * fee / 100 / 1000 / 3
                require balanceOf[stor6] + (arg3 * fee / 100 / 1000 / 3) >= balanceOf[stor6]
                balanceOf[stor6] += arg3 * fee / 100 / 1000 / 3
                require arg3 * fee / 100 / 1000 / 3 <= arg3 - (arg3 * fee / 100 / 1000 / 3)
                require arg3 * fee / 100 / 1000 / 3 <= balanceOf[address(arg1)]
                balanceOf[address(arg1)] -= arg3 * fee / 100 / 1000 / 3
                require balanceOf[stor9] + (arg3 * fee / 100 / 1000 / 3) >= balanceOf[stor9]
                balanceOf[stor9] += arg3 * fee / 100 / 1000 / 3
                require arg3 * fee / 100 / 1000 / 3 <= arg3 - (2 * arg3 * fee / 100 / 1000 / 3)
                require stor12[address(arg1)] + arg3 >= stor12[address(arg1)]
                stor12[address(arg1)] += arg3
                if stor12[address(arg1)] >= summRew:
                    if balanceOf[stor9] >= 0:
                        require 0 <= balanceOf[stor9]
                        require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                        stor12[address(arg1)] = 0
            else:
                require arg3
                require arg3 * coefRew / arg3 == coefRew
                require arg3 * fee / 100 / 1000 / 3 <= balanceOf[address(arg1)]
                balanceOf[address(arg1)] -= arg3 * fee / 100 / 1000 / 3
                require balanceOf[stor5] + (arg3 * fee / 100 / 1000 / 3) >= balanceOf[stor5]
                balanceOf[stor5] += arg3 * fee / 100 / 1000 / 3
                require arg3 * fee / 100 / 1000 / 3 <= arg3
                require arg3 * fee / 100 / 1000 / 3 <= balanceOf[address(arg1)]
                balanceOf[address(arg1)] -= arg3 * fee / 100 / 1000 / 3
                require balanceOf[stor6] + (arg3 * fee / 100 / 1000 / 3) >= balanceOf[stor6]
                balanceOf[stor6] += arg3 * fee / 100 / 1000 / 3
                require arg3 * fee / 100 / 1000 / 3 <= arg3 - (arg3 * fee / 100 / 1000 / 3)
                require arg3 * fee / 100 / 1000 / 3 <= balanceOf[address(arg1)]
                balanceOf[address(arg1)] -= arg3 * fee / 100 / 1000 / 3
                require balanceOf[stor9] + (arg3 * fee / 100 / 1000 / 3) >= balanceOf[stor9]
                balanceOf[stor9] += arg3 * fee / 100 / 1000 / 3
                require arg3 * fee / 100 / 1000 / 3 <= arg3 - (2 * arg3 * fee / 100 / 1000 / 3)
                require stor12[address(arg1)] + arg3 >= stor12[address(arg1)]
                stor12[address(arg1)] += arg3
                if stor12[address(arg1)] >= summRew:
                    if balanceOf[stor9] >= arg3 * coefRew / 100 / 1000:
                        require arg3 * coefRew / 100 / 1000 <= balanceOf[stor9]
                        balanceOf[stor9] -= arg3 * coefRew / 100 / 1000
                        require balanceOf[address(arg1)] + (arg3 * coefRew / 100 / 1000) >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] += arg3 * coefRew / 100 / 1000
                        stor12[address(arg1)] = 0
            require arg3 - (3 * arg3 * fee / 100 / 1000 / 3) <= balanceOf[address(arg1)]
            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (3 * arg3 * fee / 100 / 1000 / 3)
            require balanceOf[address(arg2)] + arg3 - (3 * arg3 * fee / 100 / 1000 / 3) >= balanceOf[address(arg2)]
            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (3 * arg3 * fee / 100 / 1000 / 3)
            require arg3 <= allowance[address(arg1)][address(msg.sender)]
            allowance[address(arg1)][address(msg.sender)] -= arg3
            emit Transfer((arg3 - (3 * arg3 * fee / 100 / 1000 / 3)), arg1, arg2);
    return 1
}



}
