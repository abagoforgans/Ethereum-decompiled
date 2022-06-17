contract main {




// =====================  Runtime code  =====================


const name = 'Bitenny'

const decimals = 18

const symbol = 'BTNY'


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
address owner;
uint8 stor4; offset 160
uint128 stor4; offset 160
address saleContractAddress;
uint256 stor5;
uint256 stor8;
uint256 stor9;
mapping of uint256 team;
mapping of uint256 sub_9df43a8b;
mapping of uint256 advisors;
mapping of struct sub_c9a58e1c;

function advisors(address arg1) {
    return uint256(advisors[arg1])
}

function totalSupply() {
    return totalSupply
}

function sub_209cade1(?) {
    return bool(uint8(stor4.field_160))
}

function team(address arg1) {
    return team[arg1]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function sub_9df43a8b(?) {
    return sub_9df43a8b[arg1]
}

function sub_c9a58e1c(?) {
    return sub_c9a58e1c[arg1].field_0
}

function saleContract() {
    return saleContractAddress
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require arg1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_ff4e743c(?) {
    require msg.sender == owner
    require arg1
    require arg2 <= stor9
    stor9 -= arg2
    require team[address(arg1)] + arg2 >= team[address(arg1)]
    team[address(arg1)] += arg2
    emit 0xff2c48e5: address(arg1), arg2
}

function sub_e7640213(?) {
    require msg.sender == owner
    require arg1
    require arg2 <= stor9
    stor9 -= arg2
    require uint256(advisors[address(arg1)]) + arg2 >= uint256(advisors[address(arg1)])
    uint256(advisors[address(arg1)]) += arg2
    emit 0x7e27fc67: address(arg1), arg2
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require arg1
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function sub_9c3129c5(?) {
    require saleContractAddress
    require msg.sender == saleContractAddress
    require saleContractAddress
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 <= balanceOf[address(stor4.field_0)]
    balanceOf[address(stor4.field_0)] -= arg1
    emit Transfer(arg1, saleContractAddress, 0);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    emit Approval(allowance[address(arg1)][address(msg.sender)], arg1, msg.sender);
    return 1
}

function activateSaleContract(address arg1) {
    require msg.sender == owner
    require arg1
    require not uint8(stor4.field_160)
    saleContractAddress = arg1
    Mask(96, 0, stor4.field_160) = 1
    require saleContractAddress
    require totalSupply + stor8 >= totalSupply
    totalSupply += stor8
    require balanceOf[address(stor4.field_0)] + stor8 >= balanceOf[address(stor4.field_0)]
    balanceOf[address(stor4.field_0)] += stor8
    emit Transfer(stor8, 0, saleContractAddress);
    stor8 = 0
    emit SaleContractActivation(saleContractAddress, stor8);
}

function sub_51932dea(?) {
    require stor5 <= block.timestamp
    if not team[address(arg1)]:
        require sub_9df43a8b[address(arg1)] <= 0
        require stor5 <= block.timestamp
        if not uint256(advisors[address(arg1)]):
            require sub_c9a58e1c[address(arg1)].field_0 <= 0
            require -sub_9df43a8b[address(arg1)] - sub_c9a58e1c[address(arg1)].field_0 >= -sub_9df43a8b[address(arg1)]
            return (-sub_9df43a8b[address(arg1)] - sub_c9a58e1c[address(arg1)].field_0)
        require uint256(advisors[address(arg1)])
        if block.timestamp - stor5 / 2184 * 24 * 3600 <= 4:
            require uint256(advisors[address(arg1)]) * block.timestamp - stor5 / 2184 * 24 * 3600 / uint256(advisors[address(arg1)]) == block.timestamp - stor5 / 2184 * 24 * 3600
            require sub_c9a58e1c[address(arg1)].field_0 <= uint256(advisors[address(arg1)]) * block.timestamp - stor5 / 2184 * 24 * 3600 / 4
            require -sub_9df43a8b[address(arg1)] + (uint256(advisors[address(arg1)]) * block.timestamp - stor5 / 2184 * 24 * 3600 / 4) - sub_c9a58e1c[address(arg1)].field_0 >= -sub_9df43a8b[address(arg1)]
            return (-sub_9df43a8b[address(arg1)] + (uint256(advisors[address(arg1)]) * block.timestamp - stor5 / 2184 * 24 * 3600 / 4) - sub_c9a58e1c[address(arg1)].field_0)
        require 4 * uint256(advisors[address(arg1)]) / uint256(advisors[address(arg1)]) == 4
        require sub_c9a58e1c[address(arg1)].field_0 <= Mask(254, 0, advisors[address(arg1)])
        require -sub_9df43a8b[address(arg1)] + Mask(254, 0, advisors[address(arg1)]) - sub_c9a58e1c[address(arg1)].field_0 >= -sub_9df43a8b[address(arg1)]
        return (-sub_9df43a8b[address(arg1)] + Mask(254, 0, advisors[address(arg1)]) - sub_c9a58e1c[address(arg1)].field_0)
    require team[address(arg1)]
    if block.timestamp - stor5 / 8760 * 24 * 3600 <= 3:
        require team[address(arg1)] * block.timestamp - stor5 / 8760 * 24 * 3600 / team[address(arg1)] == block.timestamp - stor5 / 8760 * 24 * 3600
        require sub_9df43a8b[address(arg1)] <= team[address(arg1)] * block.timestamp - stor5 / 8760 * 24 * 3600 / 3
        require stor5 <= block.timestamp
        if not uint256(advisors[address(arg1)]):
            require sub_c9a58e1c[address(arg1)].field_0 <= 0
            require -sub_c9a58e1c[address(arg1)].field_0 >= 0
            return ((team[address(arg1)] * block.timestamp - stor5 / 8760 * 24 * 3600 / 3) - sub_9df43a8b[address(arg1)] - sub_c9a58e1c[address(arg1)].field_0)
        require uint256(advisors[address(arg1)])
        if block.timestamp - stor5 / 2184 * 24 * 3600 <= 4:
            require uint256(advisors[address(arg1)]) * block.timestamp - stor5 / 2184 * 24 * 3600 / uint256(advisors[address(arg1)]) == block.timestamp - stor5 / 2184 * 24 * 3600
            require sub_c9a58e1c[address(arg1)].field_0 <= uint256(advisors[address(arg1)]) * block.timestamp - stor5 / 2184 * 24 * 3600 / 4
            require (uint256(advisors[address(arg1)]) * block.timestamp - stor5 / 2184 * 24 * 3600 / 4) - sub_c9a58e1c[address(arg1)].field_0 >= 0
            return ((team[address(arg1)] * block.timestamp - stor5 / 8760 * 24 * 3600 / 3) - sub_9df43a8b[address(arg1)] + (uint256(advisors[address(arg1)]) * block.timestamp - stor5 / 2184 * 24 * 3600 / 4) - sub_c9a58e1c[address(arg1)].field_0)
        require 4 * uint256(advisors[address(arg1)]) / uint256(advisors[address(arg1)]) == 4
        require sub_c9a58e1c[address(arg1)].field_0 <= Mask(254, 0, advisors[address(arg1)])
        require Mask(254, 0, advisors[address(arg1)]) - sub_c9a58e1c[address(arg1)].field_0 >= 0
        return ((team[address(arg1)] * block.timestamp - stor5 / 8760 * 24 * 3600 / 3) - sub_9df43a8b[address(arg1)] + Mask(254, 0, advisors[address(arg1)]) - sub_c9a58e1c[address(arg1)].field_0)
    require 3 * team[address(arg1)] / team[address(arg1)] == 3
    require sub_9df43a8b[address(arg1)] <= 3 * team[address(arg1)] / 3
    require stor5 <= block.timestamp
    if not uint256(advisors[address(arg1)]):
        require sub_c9a58e1c[address(arg1)].field_0 <= 0
        require -sub_c9a58e1c[address(arg1)].field_0 >= 0
        return ((3 * team[address(arg1)] / 3) - sub_9df43a8b[address(arg1)] - sub_c9a58e1c[address(arg1)].field_0)
    require uint256(advisors[address(arg1)])
    if block.timestamp - stor5 / 2184 * 24 * 3600 <= 4:
        require uint256(advisors[address(arg1)]) * block.timestamp - stor5 / 2184 * 24 * 3600 / uint256(advisors[address(arg1)]) == block.timestamp - stor5 / 2184 * 24 * 3600
        require sub_c9a58e1c[address(arg1)].field_0 <= uint256(advisors[address(arg1)]) * block.timestamp - stor5 / 2184 * 24 * 3600 / 4
        require (uint256(advisors[address(arg1)]) * block.timestamp - stor5 / 2184 * 24 * 3600 / 4) - sub_c9a58e1c[address(arg1)].field_0 >= 0
        return ((3 * team[address(arg1)] / 3) - sub_9df43a8b[address(arg1)] + (uint256(advisors[address(arg1)]) * block.timestamp - stor5 / 2184 * 24 * 3600 / 4) - sub_c9a58e1c[address(arg1)].field_0)
    require 4 * uint256(advisors[address(arg1)]) / uint256(advisors[address(arg1)]) == 4
    require sub_c9a58e1c[address(arg1)].field_0 <= Mask(254, 0, advisors[address(arg1)])
    require Mask(254, 0, advisors[address(arg1)]) - sub_c9a58e1c[address(arg1)].field_0 >= 0
    return ((3 * team[address(arg1)] / 3) - sub_9df43a8b[address(arg1)] + Mask(254, 0, advisors[address(arg1)]) - sub_c9a58e1c[address(arg1)].field_0)
}

function release() {
    require stor5 <= block.timestamp
    if block.timestamp - stor5 / 8760 * 24 * 3600 <= 3:
        if not team[address(msg.sender)]:
            require sub_9df43a8b[address(msg.sender)] <= 0
            require stor5 <= block.timestamp
            if block.timestamp - stor5 / 2184 * 24 * 3600 > 4:
                if not uint256(advisors[address(msg.sender)]):
                    require sub_c9a58e1c[address(msg.sender)].field_0 <= 0
                    require -sub_9df43a8b[address(msg.sender)] - sub_c9a58e1c[address(msg.sender)].field_0 >= -sub_9df43a8b[address(msg.sender)]
                    require -sub_9df43a8b[address(msg.sender)] - sub_c9a58e1c[address(msg.sender)].field_0 > 0
                    if -sub_9df43a8b[address(msg.sender)] > 0:
                        require 0 >= sub_9df43a8b[address(msg.sender)]
                        sub_9df43a8b[address(msg.sender)] = 0
                    if -sub_c9a58e1c[address(msg.sender)].field_0 > 0:
                        require 0 >= sub_c9a58e1c[address(msg.sender)].field_0
                        sub_c9a58e1c[address(msg.sender)].field_0 = 0
                    require msg.sender
                    require totalSupply - sub_9df43a8b[address(msg.sender)] - sub_c9a58e1c[address(msg.sender)].field_0 >= totalSupply
                    totalSupply = totalSupply - sub_9df43a8b[address(msg.sender)] - sub_c9a58e1c[address(msg.sender)].field_0
                    require balanceOf[address(msg.sender)] - sub_9df43a8b[address(msg.sender)] - sub_c9a58e1c[address(msg.sender)].field_0 >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - sub_9df43a8b[address(msg.sender)] - sub_c9a58e1c[address(msg.sender)].field_0
                    emit Transfer((-sub_9df43a8b[address(msg.sender)] - sub_c9a58e1c[address(msg.sender)].field_0), 0, msg.sender);
                else:
                    require uint256(advisors[address(msg.sender)])
                    require 4 * uint256(advisors[address(msg.sender)]) / uint256(advisors[address(msg.sender)]) == 4
                    require sub_c9a58e1c[address(msg.sender)].field_0 <= Mask(254, 0, advisors[address(msg.sender)])
                    require -sub_9df43a8b[address(msg.sender)] + Mask(254, 0, advisors[address(msg.sender)]) - sub_c9a58e1c[address(msg.sender)].field_0 >= -sub_9df43a8b[address(msg.sender)]
                    require -sub_9df43a8b[address(msg.sender)] + Mask(254, 0, advisors[address(msg.sender)]) - sub_c9a58e1c[address(msg.sender)].field_0 > 0
                    if -sub_9df43a8b[address(msg.sender)] > 0:
                        require 0 >= sub_9df43a8b[address(msg.sender)]
                        sub_9df43a8b[address(msg.sender)] = 0
                    if Mask(254, 0, advisors[address(msg.sender)]) - sub_c9a58e1c[address(msg.sender)].field_0 > 0:
                        require Mask(254, 0, advisors[address(msg.sender)]) >= sub_c9a58e1c[address(msg.sender)].field_0
                        sub_c9a58e1c[address(msg.sender)].field_0 = Mask(254, 0, advisors[address(msg.sender)])
                    require msg.sender
                    require totalSupply - sub_9df43a8b[address(msg.sender)] + Mask(254, 0, advisors[address(msg.sender)]) - sub_c9a58e1c[address(msg.sender)].field_0 >= totalSupply
                    totalSupply = totalSupply - sub_9df43a8b[address(msg.sender)] + Mask(254, 0, advisors[address(msg.sender)]) - sub_c9a58e1c[address(msg.sender)].field_0
                    require balanceOf[address(msg.sender)] - sub_9df43a8b[address(msg.sender)] + Mask(254, 0, advisors[address(msg.sender)]) - sub_c9a58e1c[address(msg.sender)].field_0 >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - sub_9df43a8b[address(msg.sender)] + Mask(254, 0, advisors[address(msg.sender)]) - sub_c9a58e1c[address(msg.sender)].field_0
                    emit Transfer((-sub_9df43a8b[address(msg.sender)] + Mask(254, 0, advisors[address(msg.sender)]) - sub_c9a58e1c[address(msg.sender)].field_0), 0, msg.sender);
            else:
                if not uint256(advisors[address(msg.sender)]):
                    require sub_c9a58e1c[address(msg.sender)].field_0 <= 0
                    require -sub_9df43a8b[address(msg.sender)] - sub_c9a58e1c[address(msg.sender)].field_0 >= -sub_9df43a8b[address(msg.sender)]
                    require -sub_9df43a8b[address(msg.sender)] - sub_c9a58e1c[address(msg.sender)].field_0 > 0
                    if -sub_9df43a8b[address(msg.sender)] > 0:
                        require 0 >= sub_9df43a8b[address(msg.sender)]
                        sub_9df43a8b[address(msg.sender)] = 0
                    if -sub_c9a58e1c[address(msg.sender)].field_0 > 0:
                        require 0 >= sub_c9a58e1c[address(msg.sender)].field_0
                        sub_c9a58e1c[address(msg.sender)].field_0 = 0
                    require msg.sender
                    require totalSupply - sub_9df43a8b[address(msg.sender)] - sub_c9a58e1c[address(msg.sender)].field_0 >= totalSupply
                    totalSupply = totalSupply - sub_9df43a8b[address(msg.sender)] - sub_c9a58e1c[address(msg.sender)].field_0
                    require balanceOf[address(msg.sender)] - sub_9df43a8b[address(msg.sender)] - sub_c9a58e1c[address(msg.sender)].field_0 >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - sub_9df43a8b[address(msg.sender)] - sub_c9a58e1c[address(msg.sender)].field_0
                    emit Transfer((-sub_9df43a8b[address(msg.sender)] - sub_c9a58e1c[address(msg.sender)].field_0), 0, msg.sender);
                else:
                    require uint256(advisors[address(msg.sender)])
                    require uint256(advisors[address(msg.sender)]) * block.timestamp - stor5 / 2184 * 24 * 3600 / uint256(advisors[address(msg.sender)]) == block.timestamp - stor5 / 2184 * 24 * 3600
                    require sub_c9a58e1c[address(msg.sender)].field_0 <= uint256(advisors[address(msg.sender)]) * block.timestamp - stor5 / 2184 * 24 * 3600 / 4
                    require -sub_9df43a8b[address(msg.sender)] + (uint256(advisors[address(msg.sender)]) * block.timestamp - stor5 / 2184 * 24 * 3600 / 4) - sub_c9a58e1c[address(msg.sender)].field_0 >= -sub_9df43a8b[address(msg.sender)]
                    require -sub_9df43a8b[address(msg.sender)] + (uint256(advisors[address(msg.sender)]) * block.timestamp - stor5 / 2184 * 24 * 3600 / 4) - sub_c9a58e1c[address(msg.sender)].field_0 > 0
                    if -sub_9df43a8b[address(msg.sender)] > 0:
                        require 0 >= sub_9df43a8b[address(msg.sender)]
                        sub_9df43a8b[address(msg.sender)] = 0
                    if (uint256(advisors[address(msg.sender)]) * block.timestamp - stor5 / 2184 * 24 * 3600 / 4) - sub_c9a58e1c[address(msg.sender)].field_0 > 0:
                        require uint256(advisors[address(msg.sender)]) * block.timestamp - stor5 / 2184 * 24 * 3600 / 4 >= sub_c9a58e1c[address(msg.sender)].field_0
                        sub_c9a58e1c[address(msg.sender)].field_0 = uint256(advisors[address(msg.sender)]) * block.timestamp - stor5 / 2184 * 24 * 3600 / 4
                        sub_c9a58e1c[address(msg.sender)].field_254 = 0
                    require msg.sender
                    require totalSupply - sub_9df43a8b[address(msg.sender)] + (uint256(advisors[address(msg.sender)]) * block.timestamp - stor5 / 2184 * 24 * 3600 / 4) - sub_c9a58e1c[address(msg.sender)].field_0 >= totalSupply
                    totalSupply = totalSupply - sub_9df43a8b[address(msg.sender)] + (uint256(advisors[address(msg.sender)]) * block.timestamp - stor5 / 2184 * 24 * 3600 / 4) - sub_c9a58e1c[address(msg.sender)].field_0
                    require balanceOf[address(msg.sender)] - sub_9df43a8b[address(msg.sender)] + (uint256(advisors[address(msg.sender)]) * block.timestamp - stor5 / 2184 * 24 * 3600 / 4) - sub_c9a58e1c[address(msg.sender)].field_0 >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - sub_9df43a8b[address(msg.sender)] + (uint256(advisors[address(msg.sender)]) * block.timestamp - stor5 / 2184 * 24 * 3600 / 4) - sub_c9a58e1c[address(msg.sender)].field_0
                    emit Transfer((-sub_9df43a8b[address(msg.sender)] + (uint256(advisors[address(msg.sender)]) * block.timestamp - stor5 / 2184 * 24 * 3600 / 4) - sub_c9a58e1c[address(msg.sender)].field_0), 0, msg.sender);
        else:
            require team[address(msg.sender)]
            require team[address(msg.sender)] * block.timestamp - stor5 / 8760 * 24 * 3600 / team[address(msg.sender)] == block.timestamp - stor5 / 8760 * 24 * 3600
            require sub_9df43a8b[address(msg.sender)] <= team[address(msg.sender)] * block.timestamp - stor5 / 8760 * 24 * 3600 / 3
            require stor5 <= block.timestamp
            if block.timestamp - stor5 / 2184 * 24 * 3600 > 4:
                if not uint256(advisors[address(msg.sender)]):
                    require sub_c9a58e1c[address(msg.sender)].field_0 <= 0
                    require -sub_c9a58e1c[address(msg.sender)].field_0 >= 0
                    require (team[address(msg.sender)] * block.timestamp - stor5 / 8760 * 24 * 3600 / 3) - sub_9df43a8b[address(msg.sender)] - sub_c9a58e1c[address(msg.sender)].field_0 > 0
                    if (team[address(msg.sender)] * block.timestamp - stor5 / 8760 * 24 * 3600 / 3) - sub_9df43a8b[address(msg.sender)] > 0:
                        require team[address(msg.sender)] * block.timestamp - stor5 / 8760 * 24 * 3600 / 3 >= sub_9df43a8b[address(msg.sender)]
                        sub_9df43a8b[address(msg.sender)] = team[address(msg.sender)] * block.timestamp - stor5 / 8760 * 24 * 3600 / 3
                    if -sub_c9a58e1c[address(msg.sender)].field_0 > 0:
                        require 0 >= sub_c9a58e1c[address(msg.sender)].field_0
                        sub_c9a58e1c[address(msg.sender)].field_0 = 0
                    require msg.sender
                    require totalSupply + (team[address(msg.sender)] * block.timestamp - stor5 / 8760 * 24 * 3600 / 3) - sub_9df43a8b[address(msg.sender)] - sub_c9a58e1c[address(msg.sender)].field_0 >= totalSupply
                    totalSupply = totalSupply + (team[address(msg.sender)] * block.timestamp - stor5 / 8760 * 24 * 3600 / 3) - sub_9df43a8b[address(msg.sender)] - sub_c9a58e1c[address(msg.sender)].field_0
                    require balanceOf[address(msg.sender)] + (team[address(msg.sender)] * block.timestamp - stor5 / 8760 * 24 * 3600 / 3) - sub_9df43a8b[address(msg.sender)] - sub_c9a58e1c[address(msg.sender)].field_0 >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (team[address(msg.sender)] * block.timestamp - stor5 / 8760 * 24 * 3600 / 3) - sub_9df43a8b[address(msg.sender)] - sub_c9a58e1c[address(msg.sender)].field_0
                    emit Transfer(((team[address(msg.sender)] * block.timestamp - stor5 / 8760 * 24 * 3600 / 3) - sub_9df43a8b[address(msg.sender)] - sub_c9a58e1c[address(msg.sender)].field_0), 0, msg.sender);
                else:
                    require uint256(advisors[address(msg.sender)])
                    require 4 * uint256(advisors[address(msg.sender)]) / uint256(advisors[address(msg.sender)]) == 4
                    require sub_c9a58e1c[address(msg.sender)].field_0 <= Mask(254, 0, advisors[address(msg.sender)])
                    require Mask(254, 0, advisors[address(msg.sender)]) - sub_c9a58e1c[address(msg.sender)].field_0 >= 0
                    require (team[address(msg.sender)] * block.timestamp - stor5 / 8760 * 24 * 3600 / 3) - sub_9df43a8b[address(msg.sender)] + Mask(254, 0, advisors[address(msg.sender)]) - sub_c9a58e1c[address(msg.sender)].field_0 > 0
                    if (team[address(msg.sender)] * block.timestamp - stor5 / 8760 * 24 * 3600 / 3) - sub_9df43a8b[address(msg.sender)] > 0:
                        require team[address(msg.sender)] * block.timestamp - stor5 / 8760 * 24 * 3600 / 3 >= sub_9df43a8b[address(msg.sender)]
                        sub_9df43a8b[address(msg.sender)] = team[address(msg.sender)] * block.timestamp - stor5 / 8760 * 24 * 3600 / 3
                    if Mask(254, 0, advisors[address(msg.sender)]) - sub_c9a58e1c[address(msg.sender)].field_0 > 0:
                        require Mask(254, 0, advisors[address(msg.sender)]) >= sub_c9a58e1c[address(msg.sender)].field_0
                        sub_c9a58e1c[address(msg.sender)].field_0 = Mask(254, 0, advisors[address(msg.sender)])
                    require msg.sender
                    require totalSupply + (team[address(msg.sender)] * block.timestamp - stor5 / 8760 * 24 * 3600 / 3) - sub_9df43a8b[address(msg.sender)] + Mask(254, 0, advisors[address(msg.sender)]) - sub_c9a58e1c[address(msg.sender)].field_0 >= totalSupply
                    totalSupply = totalSupply + (team[address(msg.sender)] * block.timestamp - stor5 / 8760 * 24 * 3600 / 3) - sub_9df43a8b[address(msg.sender)] + Mask(254, 0, advisors[address(msg.sender)]) - sub_c9a58e1c[address(msg.sender)].field_0
                    require balanceOf[address(msg.sender)] + (team[address(msg.sender)] * block.timestamp - stor5 / 8760 * 24 * 3600 / 3) - sub_9df43a8b[address(msg.sender)] + Mask(254, 0, advisors[address(msg.sender)]) - sub_c9a58e1c[address(msg.sender)].field_0 >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (team[address(msg.sender)] * block.timestamp - stor5 / 8760 * 24 * 3600 / 3) - sub_9df43a8b[address(msg.sender)] + Mask(254, 0, advisors[address(msg.sender)]) - sub_c9a58e1c[address(msg.sender)].field_0
                    emit Transfer(((team[address(msg.sender)] * block.timestamp - stor5 / 8760 * 24 * 3600 / 3) - sub_9df43a8b[address(msg.sender)] + Mask(254, 0, advisors[address(msg.sender)]) - sub_c9a58e1c[address(msg.sender)].field_0), 0, msg.sender);
            else:
                if not uint256(advisors[address(msg.sender)]):
                    require sub_c9a58e1c[address(msg.sender)].field_0 <= 0
                    require -sub_c9a58e1c[address(msg.sender)].field_0 >= 0
                    require (team[address(msg.sender)] * block.timestamp - stor5 / 8760 * 24 * 3600 / 3) - sub_9df43a8b[address(msg.sender)] - sub_c9a58e1c[address(msg.sender)].field_0 > 0
                    if (team[address(msg.sender)] * block.timestamp - stor5 / 8760 * 24 * 3600 / 3) - sub_9df43a8b[address(msg.sender)] > 0:
                        require team[address(msg.sender)] * block.timestamp - stor5 / 8760 * 24 * 3600 / 3 >= sub_9df43a8b[address(msg.sender)]
                        sub_9df43a8b[address(msg.sender)] = team[address(msg.sender)] * block.timestamp - stor5 / 8760 * 24 * 3600 / 3
                    if -sub_c9a58e1c[address(msg.sender)].field_0 > 0:
                        require 0 >= sub_c9a58e1c[address(msg.sender)].field_0
                        sub_c9a58e1c[address(msg.sender)].field_0 = 0
                    require msg.sender
                    require totalSupply + (team[address(msg.sender)] * block.timestamp - stor5 / 8760 * 24 * 3600 / 3) - sub_9df43a8b[address(msg.sender)] - sub_c9a58e1c[address(msg.sender)].field_0 >= totalSupply
                    totalSupply = totalSupply + (team[address(msg.sender)] * block.timestamp - stor5 / 8760 * 24 * 3600 / 3) - sub_9df43a8b[address(msg.sender)] - sub_c9a58e1c[address(msg.sender)].field_0
                    require balanceOf[address(msg.sender)] + (team[address(msg.sender)] * block.timestamp - stor5 / 8760 * 24 * 3600 / 3) - sub_9df43a8b[address(msg.sender)] - sub_c9a58e1c[address(msg.sender)].field_0 >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (team[address(msg.sender)] * block.timestamp - stor5 / 8760 * 24 * 3600 / 3) - sub_9df43a8b[address(msg.sender)] - sub_c9a58e1c[address(msg.sender)].field_0
                    emit Transfer(((team[address(msg.sender)] * block.timestamp - stor5 / 8760 * 24 * 3600 / 3) - sub_9df43a8b[address(msg.sender)] - sub_c9a58e1c[address(msg.sender)].field_0), 0, msg.sender);
                else:
                    require uint256(advisors[address(msg.sender)])
                    require uint256(advisors[address(msg.sender)]) * block.timestamp - stor5 / 2184 * 24 * 3600 / uint256(advisors[address(msg.sender)]) == block.timestamp - stor5 / 2184 * 24 * 3600
                    require sub_c9a58e1c[address(msg.sender)].field_0 <= uint256(advisors[address(msg.sender)]) * block.timestamp - stor5 / 2184 * 24 * 3600 / 4
                    require (uint256(advisors[address(msg.sender)]) * block.timestamp - stor5 / 2184 * 24 * 3600 / 4) - sub_c9a58e1c[address(msg.sender)].field_0 >= 0
                    require (team[address(msg.sender)] * block.timestamp - stor5 / 8760 * 24 * 3600 / 3) - sub_9df43a8b[address(msg.sender)] + (uint256(advisors[address(msg.sender)]) * block.timestamp - stor5 / 2184 * 24 * 3600 / 4) - sub_c9a58e1c[address(msg.sender)].field_0 > 0
                    if (team[address(msg.sender)] * block.timestamp - stor5 / 8760 * 24 * 3600 / 3) - sub_9df43a8b[address(msg.sender)] > 0:
                        require team[address(msg.sender)] * block.timestamp - stor5 / 8760 * 24 * 3600 / 3 >= sub_9df43a8b[address(msg.sender)]
                        sub_9df43a8b[address(msg.sender)] = team[address(msg.sender)] * block.timestamp - stor5 / 8760 * 24 * 3600 / 3
                    if (uint256(advisors[address(msg.sender)]) * block.timestamp - stor5 / 2184 * 24 * 3600 / 4) - sub_c9a58e1c[address(msg.sender)].field_0 > 0:
                        require uint256(advisors[address(msg.sender)]) * block.timestamp - stor5 / 2184 * 24 * 3600 / 4 >= sub_c9a58e1c[address(msg.sender)].field_0
                        sub_c9a58e1c[address(msg.sender)].field_0 = uint256(advisors[address(msg.sender)]) * block.timestamp - stor5 / 2184 * 24 * 3600 / 4
                        sub_c9a58e1c[address(msg.sender)].field_254 = 0
                    require msg.sender
                    require totalSupply + (team[address(msg.sender)] * block.timestamp - stor5 / 8760 * 24 * 3600 / 3) - sub_9df43a8b[address(msg.sender)] + (uint256(advisors[address(msg.sender)]) * block.timestamp - stor5 / 2184 * 24 * 3600 / 4) - sub_c9a58e1c[address(msg.sender)].field_0 >= totalSupply
                    totalSupply = totalSupply + (team[address(msg.sender)] * block.timestamp - stor5 / 8760 * 24 * 3600 / 3) - sub_9df43a8b[address(msg.sender)] + (uint256(advisors[address(msg.sender)]) * block.timestamp - stor5 / 2184 * 24 * 3600 / 4) - sub_c9a58e1c[address(msg.sender)].field_0
                    require balanceOf[address(msg.sender)] + (team[address(msg.sender)] * block.timestamp - stor5 / 8760 * 24 * 3600 / 3) - sub_9df43a8b[address(msg.sender)] + (uint256(advisors[address(msg.sender)]) * block.timestamp - stor5 / 2184 * 24 * 3600 / 4) - sub_c9a58e1c[address(msg.sender)].field_0 >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (team[address(msg.sender)] * block.timestamp - stor5 / 8760 * 24 * 3600 / 3) - sub_9df43a8b[address(msg.sender)] + (uint256(advisors[address(msg.sender)]) * block.timestamp - stor5 / 2184 * 24 * 3600 / 4) - sub_c9a58e1c[address(msg.sender)].field_0
                    emit Transfer(((team[address(msg.sender)] * block.timestamp - stor5 / 8760 * 24 * 3600 / 3) - sub_9df43a8b[address(msg.sender)] + (uint256(advisors[address(msg.sender)]) * block.timestamp - stor5 / 2184 * 24 * 3600 / 4) - sub_c9a58e1c[address(msg.sender)].field_0), 0, msg.sender);
    else:
        if not team[address(msg.sender)]:
            require sub_9df43a8b[address(msg.sender)] <= 0
            require stor5 <= block.timestamp
            if block.timestamp - stor5 / 2184 * 24 * 3600 > 4:
                if not uint256(advisors[address(msg.sender)]):
                    require sub_c9a58e1c[address(msg.sender)].field_0 <= 0
                    require -sub_9df43a8b[address(msg.sender)] - sub_c9a58e1c[address(msg.sender)].field_0 >= -sub_9df43a8b[address(msg.sender)]
                    require -sub_9df43a8b[address(msg.sender)] - sub_c9a58e1c[address(msg.sender)].field_0 > 0
                    if -sub_9df43a8b[address(msg.sender)] > 0:
                        require 0 >= sub_9df43a8b[address(msg.sender)]
                        sub_9df43a8b[address(msg.sender)] = 0
                    if -sub_c9a58e1c[address(msg.sender)].field_0 > 0:
                        require 0 >= sub_c9a58e1c[address(msg.sender)].field_0
                        sub_c9a58e1c[address(msg.sender)].field_0 = 0
                    require msg.sender
                    require totalSupply - sub_9df43a8b[address(msg.sender)] - sub_c9a58e1c[address(msg.sender)].field_0 >= totalSupply
                    totalSupply = totalSupply - sub_9df43a8b[address(msg.sender)] - sub_c9a58e1c[address(msg.sender)].field_0
                    require balanceOf[address(msg.sender)] - sub_9df43a8b[address(msg.sender)] - sub_c9a58e1c[address(msg.sender)].field_0 >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - sub_9df43a8b[address(msg.sender)] - sub_c9a58e1c[address(msg.sender)].field_0
                    emit Transfer((-sub_9df43a8b[address(msg.sender)] - sub_c9a58e1c[address(msg.sender)].field_0), 0, msg.sender);
                else:
                    require uint256(advisors[address(msg.sender)])
                    require 4 * uint256(advisors[address(msg.sender)]) / uint256(advisors[address(msg.sender)]) == 4
                    require sub_c9a58e1c[address(msg.sender)].field_0 <= Mask(254, 0, advisors[address(msg.sender)])
                    require -sub_9df43a8b[address(msg.sender)] + Mask(254, 0, advisors[address(msg.sender)]) - sub_c9a58e1c[address(msg.sender)].field_0 >= -sub_9df43a8b[address(msg.sender)]
                    require -sub_9df43a8b[address(msg.sender)] + Mask(254, 0, advisors[address(msg.sender)]) - sub_c9a58e1c[address(msg.sender)].field_0 > 0
                    if -sub_9df43a8b[address(msg.sender)] > 0:
                        require 0 >= sub_9df43a8b[address(msg.sender)]
                        sub_9df43a8b[address(msg.sender)] = 0
                    if Mask(254, 0, advisors[address(msg.sender)]) - sub_c9a58e1c[address(msg.sender)].field_0 > 0:
                        require Mask(254, 0, advisors[address(msg.sender)]) >= sub_c9a58e1c[address(msg.sender)].field_0
                        sub_c9a58e1c[address(msg.sender)].field_0 = Mask(254, 0, advisors[address(msg.sender)])
                    require msg.sender
                    require totalSupply - sub_9df43a8b[address(msg.sender)] + Mask(254, 0, advisors[address(msg.sender)]) - sub_c9a58e1c[address(msg.sender)].field_0 >= totalSupply
                    totalSupply = totalSupply - sub_9df43a8b[address(msg.sender)] + Mask(254, 0, advisors[address(msg.sender)]) - sub_c9a58e1c[address(msg.sender)].field_0
                    require balanceOf[address(msg.sender)] - sub_9df43a8b[address(msg.sender)] + Mask(254, 0, advisors[address(msg.sender)]) - sub_c9a58e1c[address(msg.sender)].field_0 >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - sub_9df43a8b[address(msg.sender)] + Mask(254, 0, advisors[address(msg.sender)]) - sub_c9a58e1c[address(msg.sender)].field_0
                    emit Transfer((-sub_9df43a8b[address(msg.sender)] + Mask(254, 0, advisors[address(msg.sender)]) - sub_c9a58e1c[address(msg.sender)].field_0), 0, msg.sender);
            else:
                if not uint256(advisors[address(msg.sender)]):
                    require sub_c9a58e1c[address(msg.sender)].field_0 <= 0
                    require -sub_9df43a8b[address(msg.sender)] - sub_c9a58e1c[address(msg.sender)].field_0 >= -sub_9df43a8b[address(msg.sender)]
                    require -sub_9df43a8b[address(msg.sender)] - sub_c9a58e1c[address(msg.sender)].field_0 > 0
                    if -sub_9df43a8b[address(msg.sender)] > 0:
                        require 0 >= sub_9df43a8b[address(msg.sender)]
                        sub_9df43a8b[address(msg.sender)] = 0
                    if -sub_c9a58e1c[address(msg.sender)].field_0 > 0:
                        require 0 >= sub_c9a58e1c[address(msg.sender)].field_0
                        sub_c9a58e1c[address(msg.sender)].field_0 = 0
                    require msg.sender
                    require totalSupply - sub_9df43a8b[address(msg.sender)] - sub_c9a58e1c[address(msg.sender)].field_0 >= totalSupply
                    totalSupply = totalSupply - sub_9df43a8b[address(msg.sender)] - sub_c9a58e1c[address(msg.sender)].field_0
                    require balanceOf[address(msg.sender)] - sub_9df43a8b[address(msg.sender)] - sub_c9a58e1c[address(msg.sender)].field_0 >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - sub_9df43a8b[address(msg.sender)] - sub_c9a58e1c[address(msg.sender)].field_0
                    emit Transfer((-sub_9df43a8b[address(msg.sender)] - sub_c9a58e1c[address(msg.sender)].field_0), 0, msg.sender);
                else:
                    require uint256(advisors[address(msg.sender)])
                    require uint256(advisors[address(msg.sender)]) * block.timestamp - stor5 / 2184 * 24 * 3600 / uint256(advisors[address(msg.sender)]) == block.timestamp - stor5 / 2184 * 24 * 3600
                    require sub_c9a58e1c[address(msg.sender)].field_0 <= uint256(advisors[address(msg.sender)]) * block.timestamp - stor5 / 2184 * 24 * 3600 / 4
                    require -sub_9df43a8b[address(msg.sender)] + (uint256(advisors[address(msg.sender)]) * block.timestamp - stor5 / 2184 * 24 * 3600 / 4) - sub_c9a58e1c[address(msg.sender)].field_0 >= -sub_9df43a8b[address(msg.sender)]
                    require -sub_9df43a8b[address(msg.sender)] + (uint256(advisors[address(msg.sender)]) * block.timestamp - stor5 / 2184 * 24 * 3600 / 4) - sub_c9a58e1c[address(msg.sender)].field_0 > 0
                    if -sub_9df43a8b[address(msg.sender)] > 0:
                        require 0 >= sub_9df43a8b[address(msg.sender)]
                        sub_9df43a8b[address(msg.sender)] = 0
                    if (uint256(advisors[address(msg.sender)]) * block.timestamp - stor5 / 2184 * 24 * 3600 / 4) - sub_c9a58e1c[address(msg.sender)].field_0 > 0:
                        require uint256(advisors[address(msg.sender)]) * block.timestamp - stor5 / 2184 * 24 * 3600 / 4 >= sub_c9a58e1c[address(msg.sender)].field_0
                        sub_c9a58e1c[address(msg.sender)].field_0 = uint256(advisors[address(msg.sender)]) * block.timestamp - stor5 / 2184 * 24 * 3600 / 4
                        sub_c9a58e1c[address(msg.sender)].field_254 = 0
                    require msg.sender
                    require totalSupply - sub_9df43a8b[address(msg.sender)] + (uint256(advisors[address(msg.sender)]) * block.timestamp - stor5 / 2184 * 24 * 3600 / 4) - sub_c9a58e1c[address(msg.sender)].field_0 >= totalSupply
                    totalSupply = totalSupply - sub_9df43a8b[address(msg.sender)] + (uint256(advisors[address(msg.sender)]) * block.timestamp - stor5 / 2184 * 24 * 3600 / 4) - sub_c9a58e1c[address(msg.sender)].field_0
                    require balanceOf[address(msg.sender)] - sub_9df43a8b[address(msg.sender)] + (uint256(advisors[address(msg.sender)]) * block.timestamp - stor5 / 2184 * 24 * 3600 / 4) - sub_c9a58e1c[address(msg.sender)].field_0 >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - sub_9df43a8b[address(msg.sender)] + (uint256(advisors[address(msg.sender)]) * block.timestamp - stor5 / 2184 * 24 * 3600 / 4) - sub_c9a58e1c[address(msg.sender)].field_0
                    emit Transfer((-sub_9df43a8b[address(msg.sender)] + (uint256(advisors[address(msg.sender)]) * block.timestamp - stor5 / 2184 * 24 * 3600 / 4) - sub_c9a58e1c[address(msg.sender)].field_0), 0, msg.sender);
        else:
            require team[address(msg.sender)]
            require 3 * team[address(msg.sender)] / team[address(msg.sender)] == 3
            require sub_9df43a8b[address(msg.sender)] <= 3 * team[address(msg.sender)] / 3
            require stor5 <= block.timestamp
            if block.timestamp - stor5 / 2184 * 24 * 3600 > 4:
                if not uint256(advisors[address(msg.sender)]):
                    require sub_c9a58e1c[address(msg.sender)].field_0 <= 0
                    require -sub_c9a58e1c[address(msg.sender)].field_0 >= 0
                    require (3 * team[address(msg.sender)] / 3) - sub_9df43a8b[address(msg.sender)] - sub_c9a58e1c[address(msg.sender)].field_0 > 0
                    if (3 * team[address(msg.sender)] / 3) - sub_9df43a8b[address(msg.sender)] > 0:
                        require 3 * team[address(msg.sender)] / 3 >= sub_9df43a8b[address(msg.sender)]
                        sub_9df43a8b[address(msg.sender)] = 3 * team[address(msg.sender)] / 3
                    if -sub_c9a58e1c[address(msg.sender)].field_0 > 0:
                        require 0 >= sub_c9a58e1c[address(msg.sender)].field_0
                        sub_c9a58e1c[address(msg.sender)].field_0 = 0
                    require msg.sender
                    require totalSupply + (3 * team[address(msg.sender)] / 3) - sub_9df43a8b[address(msg.sender)] - sub_c9a58e1c[address(msg.sender)].field_0 >= totalSupply
                    totalSupply = totalSupply + (3 * team[address(msg.sender)] / 3) - sub_9df43a8b[address(msg.sender)] - sub_c9a58e1c[address(msg.sender)].field_0
                    require balanceOf[address(msg.sender)] + (3 * team[address(msg.sender)] / 3) - sub_9df43a8b[address(msg.sender)] - sub_c9a58e1c[address(msg.sender)].field_0 >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (3 * team[address(msg.sender)] / 3) - sub_9df43a8b[address(msg.sender)] - sub_c9a58e1c[address(msg.sender)].field_0
                    emit Transfer(((3 * team[address(msg.sender)] / 3) - sub_9df43a8b[address(msg.sender)] - sub_c9a58e1c[address(msg.sender)].field_0), 0, msg.sender);
                else:
                    require uint256(advisors[address(msg.sender)])
                    require 4 * uint256(advisors[address(msg.sender)]) / uint256(advisors[address(msg.sender)]) == 4
                    require sub_c9a58e1c[address(msg.sender)].field_0 <= Mask(254, 0, advisors[address(msg.sender)])
                    require Mask(254, 0, advisors[address(msg.sender)]) - sub_c9a58e1c[address(msg.sender)].field_0 >= 0
                    require (3 * team[address(msg.sender)] / 3) - sub_9df43a8b[address(msg.sender)] + Mask(254, 0, advisors[address(msg.sender)]) - sub_c9a58e1c[address(msg.sender)].field_0 > 0
                    if (3 * team[address(msg.sender)] / 3) - sub_9df43a8b[address(msg.sender)] > 0:
                        require 3 * team[address(msg.sender)] / 3 >= sub_9df43a8b[address(msg.sender)]
                        sub_9df43a8b[address(msg.sender)] = 3 * team[address(msg.sender)] / 3
                    if Mask(254, 0, advisors[address(msg.sender)]) - sub_c9a58e1c[address(msg.sender)].field_0 > 0:
                        require Mask(254, 0, advisors[address(msg.sender)]) >= sub_c9a58e1c[address(msg.sender)].field_0
                        sub_c9a58e1c[address(msg.sender)].field_0 = Mask(254, 0, advisors[address(msg.sender)])
                    require msg.sender
                    require totalSupply + (3 * team[address(msg.sender)] / 3) - sub_9df43a8b[address(msg.sender)] + Mask(254, 0, advisors[address(msg.sender)]) - sub_c9a58e1c[address(msg.sender)].field_0 >= totalSupply
                    totalSupply = totalSupply + (3 * team[address(msg.sender)] / 3) - sub_9df43a8b[address(msg.sender)] + Mask(254, 0, advisors[address(msg.sender)]) - sub_c9a58e1c[address(msg.sender)].field_0
                    require balanceOf[address(msg.sender)] + (3 * team[address(msg.sender)] / 3) - sub_9df43a8b[address(msg.sender)] + Mask(254, 0, advisors[address(msg.sender)]) - sub_c9a58e1c[address(msg.sender)].field_0 >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (3 * team[address(msg.sender)] / 3) - sub_9df43a8b[address(msg.sender)] + Mask(254, 0, advisors[address(msg.sender)]) - sub_c9a58e1c[address(msg.sender)].field_0
                    emit Transfer(((3 * team[address(msg.sender)] / 3) - sub_9df43a8b[address(msg.sender)] + Mask(254, 0, advisors[address(msg.sender)]) - sub_c9a58e1c[address(msg.sender)].field_0), 0, msg.sender);
            else:
                if not uint256(advisors[address(msg.sender)]):
                    require sub_c9a58e1c[address(msg.sender)].field_0 <= 0
                    require -sub_c9a58e1c[address(msg.sender)].field_0 >= 0
                    require (3 * team[address(msg.sender)] / 3) - sub_9df43a8b[address(msg.sender)] - sub_c9a58e1c[address(msg.sender)].field_0 > 0
                    if (3 * team[address(msg.sender)] / 3) - sub_9df43a8b[address(msg.sender)] > 0:
                        require 3 * team[address(msg.sender)] / 3 >= sub_9df43a8b[address(msg.sender)]
                        sub_9df43a8b[address(msg.sender)] = 3 * team[address(msg.sender)] / 3
                    if -sub_c9a58e1c[address(msg.sender)].field_0 > 0:
                        require 0 >= sub_c9a58e1c[address(msg.sender)].field_0
                        sub_c9a58e1c[address(msg.sender)].field_0 = 0
                    require msg.sender
                    require totalSupply + (3 * team[address(msg.sender)] / 3) - sub_9df43a8b[address(msg.sender)] - sub_c9a58e1c[address(msg.sender)].field_0 >= totalSupply
                    totalSupply = totalSupply + (3 * team[address(msg.sender)] / 3) - sub_9df43a8b[address(msg.sender)] - sub_c9a58e1c[address(msg.sender)].field_0
                    require balanceOf[address(msg.sender)] + (3 * team[address(msg.sender)] / 3) - sub_9df43a8b[address(msg.sender)] - sub_c9a58e1c[address(msg.sender)].field_0 >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (3 * team[address(msg.sender)] / 3) - sub_9df43a8b[address(msg.sender)] - sub_c9a58e1c[address(msg.sender)].field_0
                    emit Transfer(((3 * team[address(msg.sender)] / 3) - sub_9df43a8b[address(msg.sender)] - sub_c9a58e1c[address(msg.sender)].field_0), 0, msg.sender);
                else:
                    require uint256(advisors[address(msg.sender)])
                    require uint256(advisors[address(msg.sender)]) * block.timestamp - stor5 / 2184 * 24 * 3600 / uint256(advisors[address(msg.sender)]) == block.timestamp - stor5 / 2184 * 24 * 3600
                    require sub_c9a58e1c[address(msg.sender)].field_0 <= uint256(advisors[address(msg.sender)]) * block.timestamp - stor5 / 2184 * 24 * 3600 / 4
                    require (uint256(advisors[address(msg.sender)]) * block.timestamp - stor5 / 2184 * 24 * 3600 / 4) - sub_c9a58e1c[address(msg.sender)].field_0 >= 0
                    require (3 * team[address(msg.sender)] / 3) - sub_9df43a8b[address(msg.sender)] + (uint256(advisors[address(msg.sender)]) * block.timestamp - stor5 / 2184 * 24 * 3600 / 4) - sub_c9a58e1c[address(msg.sender)].field_0 > 0
                    if (3 * team[address(msg.sender)] / 3) - sub_9df43a8b[address(msg.sender)] > 0:
                        require 3 * team[address(msg.sender)] / 3 >= sub_9df43a8b[address(msg.sender)]
                        sub_9df43a8b[address(msg.sender)] = 3 * team[address(msg.sender)] / 3
                    if (uint256(advisors[address(msg.sender)]) * block.timestamp - stor5 / 2184 * 24 * 3600 / 4) - sub_c9a58e1c[address(msg.sender)].field_0 > 0:
                        require uint256(advisors[address(msg.sender)]) * block.timestamp - stor5 / 2184 * 24 * 3600 / 4 >= sub_c9a58e1c[address(msg.sender)].field_0
                        sub_c9a58e1c[address(msg.sender)].field_0 = uint256(advisors[address(msg.sender)]) * block.timestamp - stor5 / 2184 * 24 * 3600 / 4
                        sub_c9a58e1c[address(msg.sender)].field_254 = 0
                    require msg.sender
                    require totalSupply + (3 * team[address(msg.sender)] / 3) - sub_9df43a8b[address(msg.sender)] + (uint256(advisors[address(msg.sender)]) * block.timestamp - stor5 / 2184 * 24 * 3600 / 4) - sub_c9a58e1c[address(msg.sender)].field_0 >= totalSupply
                    totalSupply = totalSupply + (3 * team[address(msg.sender)] / 3) - sub_9df43a8b[address(msg.sender)] + (uint256(advisors[address(msg.sender)]) * block.timestamp - stor5 / 2184 * 24 * 3600 / 4) - sub_c9a58e1c[address(msg.sender)].field_0
                    require balanceOf[address(msg.sender)] + (3 * team[address(msg.sender)] / 3) - sub_9df43a8b[address(msg.sender)] + (uint256(advisors[address(msg.sender)]) * block.timestamp - stor5 / 2184 * 24 * 3600 / 4) - sub_c9a58e1c[address(msg.sender)].field_0 >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (3 * team[address(msg.sender)] / 3) - sub_9df43a8b[address(msg.sender)] + (uint256(advisors[address(msg.sender)]) * block.timestamp - stor5 / 2184 * 24 * 3600 / 4) - sub_c9a58e1c[address(msg.sender)].field_0
                    emit Transfer(((3 * team[address(msg.sender)] / 3) - sub_9df43a8b[address(msg.sender)] + (uint256(advisors[address(msg.sender)]) * block.timestamp - stor5 / 2184 * 24 * 3600 / 4) - sub_c9a58e1c[address(msg.sender)].field_0), 0, msg.sender);
}



}
