contract main {




// =====================  Runtime code  =====================


const name = 'Vials of Goo'

const decimals = 12

const symbol = 'GOO'

const MAX_SUPPLY = 21 * 10^18


mapping of struct stor0;
mapping of uint256 allowance;
mapping of uint256 sub_33958b30;
mapping of uint8 stor3;
uint16 stor4;
uint64 stor4; offset 16
address stor4; offset 72
uint256 totalSupply;
uint256 teamAllocation;
uint8 stor6; offset 160
address owner;

function sub_0a4bbb68(?) {
    return bool(stor6)
}

function totalSupply() {
    return totalSupply
}

function sub_33958b30(?) {
    return sub_33958b30[arg1]
}

function teamAllocation() {
    return teamAllocation
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function sub_add1dcfa(?) {
    require stor3[msg.sender]
    sub_33958b30[address(arg1)] -= arg2
}

function setOperator(address arg1, bool arg2) {
    require msg.sender == owner
    stor3[address(arg1)] = uint8(arg2)
}

function increasePlayersGooProduction(address arg1, uint256 arg2) {
    require stor3[msg.sender]
    sub_33958b30[address(arg1)] += arg2
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_02b45474(?) {
    require msg.sender == owner
    require arg1 != this.address
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_f7b04ba5(?) {
    require msg.sender == owner
    require Mask(224, 0, arg1) <= teamAllocation
    teamAllocation -= Mask(224, 0, arg1)
    totalSupply = Mask(224, 0, Mask(224, 0, arg1) + totalSupply)
    require Mask(224, 0, Mask(224, 0, arg1) + stor0[address(arg2)].field_0) >= stor0[address(arg2)].field_0
    stor0[address(arg2)].field_0 = Mask(224, 0, Mask(224, 0, arg1) + stor0[address(arg2)].field_0)
    emit Transfer(Mask(224, 0, arg1), 0, arg2);
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args 0, uint32(msg.sender), arg2, this.address, 128, arg3.length, arg3[all]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function balanceOf(address arg1) {
    if stor6:
        return stor0[address(arg1)].field_0
    if stor0[address(arg1)].field_224 <= 0:
        if totalSupply < 21 * 10^18:
            return stor0[address(arg1)].field_0
    else:
        if stor0[address(arg1)].field_224 >= block.timestamp:
            if totalSupply < 21 * 10^18:
                return stor0[address(arg1)].field_0
        else:
            if Mask(224, 0, (block.timestamp * sub_33958b30[address(arg1)]) - (stor0[address(arg1)].field_224 * sub_33958b30[address(arg1)]) + totalSupply) < 21 * 10^18:
                return Mask(224, 0, stor0[address(arg1)].field_0 + (block.timestamp * sub_33958b30[address(arg1)]) - (stor0[address(arg1)].field_224 * sub_33958b30[address(arg1)]))
    return Mask(224, 0, stor0[address(arg1)].field_0 + -totalSupply + 21 * 10^18)
}

function sub_4f03f17c(?) {
    if not stor6:
        require stor3[msg.sender]
        require Mask(224, 0, Mask(224, 0, arg1) + totalSupply) >= totalSupply
        if Mask(224, 0, Mask(224, 0, arg1) + totalSupply) < 21 * 10^18:
            stor0[address(arg2)].field_0 = Mask(224, 0, Mask(224, 0, arg1) + stor0[address(arg2)].field_0)
            totalSupply = Mask(224, 0, Mask(224, 0, arg1) + totalSupply)
            emit Transfer(Mask(224, 0, arg1), 0, arg2);
        else:
            stor6 = 1
            stor0[address(arg2)].field_0 = Mask(224, 0, -totalSupply + stor0[address(arg2)].field_0 + 21 * 10^18)
            uint16(stor4.field_0) = 0
            stor4.field_16 % 72057594037927936 = 320434570312500
            Mask(152, 0, stor4.field_72) = 0
            emit Transfer(Mask(224, 0, -totalSupply + 21 * 10^18), 0, arg2);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if stor6:
        if stor0[address(arg1)].field_224 < block.timestamp:
            stor0[address(arg1)].field_224 = uint32(block.timestamp)
    else:
        if stor0[address(arg1)].field_224 <= 0:
            if totalSupply < 21 * 10^18:
                if stor0[address(arg1)].field_224 < block.timestamp:
                    stor0[address(arg1)].field_224 = uint32(block.timestamp)
            else:
                if Mask(224, 0, -totalSupply + 21 * 10^18) <= 0:
                    if stor0[address(arg1)].field_224 < block.timestamp:
                        stor0[address(arg1)].field_224 = uint32(block.timestamp)
                else:
                    uint16(stor4.field_0) = 0
                    stor4.field_16 % 72057594037927936 = 320434570312500
                    Mask(152, 0, stor4.field_72) = 0
                    if not stor6:
                        if 21 * 10^18 == totalSupply:
                            stor6 = 1
                    emit Transfer(Mask(224, 0, -totalSupply + 21 * 10^18), 0, arg1);
                    if stor0[address(arg1)].field_224 < block.timestamp:
                        stor0[address(arg1)].field_0 = Mask(224, 0, -totalSupply + stor0[address(arg1)].field_0 + 21 * 10^18)
                        stor0[address(arg1)].field_224 = uint32(block.timestamp)
        else:
            if stor0[address(arg1)].field_224 >= block.timestamp:
                if totalSupply < 21 * 10^18:
                    if stor0[address(arg1)].field_224 < block.timestamp:
                        stor0[address(arg1)].field_224 = uint32(block.timestamp)
                else:
                    if Mask(224, 0, -totalSupply + 21 * 10^18) <= 0:
                        if stor0[address(arg1)].field_224 < block.timestamp:
                            stor0[address(arg1)].field_224 = uint32(block.timestamp)
                    else:
                        uint16(stor4.field_0) = 0
                        stor4.field_16 % 72057594037927936 = 320434570312500
                        Mask(152, 0, stor4.field_72) = 0
                        if not stor6:
                            if 21 * 10^18 == totalSupply:
                                stor6 = 1
                        emit Transfer(Mask(224, 0, -totalSupply + 21 * 10^18), 0, arg1);
                        if stor0[address(arg1)].field_224 < block.timestamp:
                            stor0[address(arg1)].field_0 = Mask(224, 0, -totalSupply + stor0[address(arg1)].field_0 + 21 * 10^18)
                            stor0[address(arg1)].field_224 = uint32(block.timestamp)
            else:
                if Mask(224, 0, (block.timestamp * sub_33958b30[address(arg1)]) - (stor0[address(arg1)].field_224 * sub_33958b30[address(arg1)]) + totalSupply) < 21 * 10^18:
                    if Mask(224, 0, (block.timestamp * sub_33958b30[address(arg1)]) - (stor0[address(arg1)].field_224 * sub_33958b30[address(arg1)])) <= 0:
                        if stor0[address(arg1)].field_224 < block.timestamp:
                            stor0[address(arg1)].field_224 = uint32(block.timestamp)
                    else:
                        totalSupply = Mask(224, 0, (block.timestamp * sub_33958b30[address(arg1)]) - (stor0[address(arg1)].field_224 * sub_33958b30[address(arg1)]) + totalSupply)
                        if not stor6:
                            if 21 * 10^18 == totalSupply:
                                stor6 = 1
                        emit Transfer(Mask(224, 0, (block.timestamp * sub_33958b30[address(arg1)]) - (stor0[address(arg1)].field_224 * sub_33958b30[address(arg1)])), 0, arg1);
                        if stor0[address(arg1)].field_224 < block.timestamp:
                            stor0[address(arg1)].field_0 = Mask(224, 0, (block.timestamp * sub_33958b30[address(arg1)]) - (stor0[address(arg1)].field_224 * sub_33958b30[address(arg1)]) + stor0[address(arg1)].field_0)
                            stor0[address(arg1)].field_224 = uint32(block.timestamp)
                else:
                    if Mask(224, 0, -totalSupply + 21 * 10^18) <= 0:
                        if stor0[address(arg1)].field_224 < block.timestamp:
                            stor0[address(arg1)].field_224 = uint32(block.timestamp)
                    else:
                        uint16(stor4.field_0) = 0
                        stor4.field_16 % 72057594037927936 = 320434570312500
                        Mask(152, 0, stor4.field_72) = 0
                        if not stor6:
                            if 21 * 10^18 == totalSupply:
                                stor6 = 1
                        emit Transfer(Mask(224, 0, -totalSupply + 21 * 10^18), 0, arg1);
                        if stor0[address(arg1)].field_224 < block.timestamp:
                            stor0[address(arg1)].field_0 = Mask(224, 0, -totalSupply + stor0[address(arg1)].field_0 + 21 * 10^18)
                            stor0[address(arg1)].field_224 = uint32(block.timestamp)
    require arg3 <= 21 * 10^18
    require Mask(224, 0, arg3) <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= Mask(224, 0, arg3)
    require Mask(224, 0, arg3) <= stor0[address(arg1)].field_0
    stor0[address(arg1)].field_0 = Mask(224, 0, stor0[address(arg1)].field_0 - arg3)
    emit Transfer(Mask(224, 0, arg3), arg1, arg2);
    if not arg2:
        totalSupply = Mask(224, 0, totalSupply - arg3)
    else:
        require Mask(224, 0, arg3 + stor0[address(arg2)].field_0) >= stor0[address(arg2)].field_0
        stor0[address(arg2)].field_0 = Mask(224, 0, arg3 + stor0[address(arg2)].field_0)
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if stor6:
        if stor0[address(msg.sender)].field_224 < block.timestamp:
            stor0[address(msg.sender)].field_224 = uint32(block.timestamp)
    else:
        if stor0[address(msg.sender)].field_224 <= 0:
            if totalSupply < 21 * 10^18:
                if stor0[address(msg.sender)].field_224 < block.timestamp:
                    stor0[address(msg.sender)].field_224 = uint32(block.timestamp)
            else:
                if Mask(224, 0, -totalSupply + 21 * 10^18) <= 0:
                    if stor0[address(msg.sender)].field_224 < block.timestamp:
                        stor0[address(msg.sender)].field_224 = uint32(block.timestamp)
                else:
                    uint16(stor4.field_0) = 0
                    stor4.field_16 % 72057594037927936 = 320434570312500
                    Mask(152, 0, stor4.field_72) = 0
                    if not stor6:
                        if 21 * 10^18 == totalSupply:
                            stor6 = 1
                    emit Transfer(Mask(224, 0, -totalSupply + 21 * 10^18), 0, msg.sender);
                    if stor0[address(msg.sender)].field_224 < block.timestamp:
                        stor0[address(msg.sender)].field_0 = Mask(224, 0, -totalSupply + stor0[address(msg.sender)].field_0 + 21 * 10^18)
                        stor0[address(msg.sender)].field_224 = uint32(block.timestamp)
        else:
            if stor0[address(msg.sender)].field_224 >= block.timestamp:
                if totalSupply < 21 * 10^18:
                    if stor0[address(msg.sender)].field_224 < block.timestamp:
                        stor0[address(msg.sender)].field_224 = uint32(block.timestamp)
                else:
                    if Mask(224, 0, -totalSupply + 21 * 10^18) <= 0:
                        if stor0[address(msg.sender)].field_224 < block.timestamp:
                            stor0[address(msg.sender)].field_224 = uint32(block.timestamp)
                    else:
                        uint16(stor4.field_0) = 0
                        stor4.field_16 % 72057594037927936 = 320434570312500
                        Mask(152, 0, stor4.field_72) = 0
                        if not stor6:
                            if 21 * 10^18 == totalSupply:
                                stor6 = 1
                        emit Transfer(Mask(224, 0, -totalSupply + 21 * 10^18), 0, msg.sender);
                        if stor0[address(msg.sender)].field_224 < block.timestamp:
                            stor0[address(msg.sender)].field_0 = Mask(224, 0, -totalSupply + stor0[address(msg.sender)].field_0 + 21 * 10^18)
                            stor0[address(msg.sender)].field_224 = uint32(block.timestamp)
            else:
                if Mask(224, 0, (block.timestamp * sub_33958b30[address(msg.sender)]) - (stor0[address(msg.sender)].field_224 * sub_33958b30[address(msg.sender)]) + totalSupply) < 21 * 10^18:
                    if Mask(224, 0, (block.timestamp * sub_33958b30[address(msg.sender)]) - (stor0[address(msg.sender)].field_224 * sub_33958b30[address(msg.sender)])) <= 0:
                        if stor0[address(msg.sender)].field_224 < block.timestamp:
                            stor0[address(msg.sender)].field_224 = uint32(block.timestamp)
                    else:
                        totalSupply = Mask(224, 0, (block.timestamp * sub_33958b30[address(msg.sender)]) - (stor0[address(msg.sender)].field_224 * sub_33958b30[address(msg.sender)]) + totalSupply)
                        if not stor6:
                            if 21 * 10^18 == totalSupply:
                                stor6 = 1
                        emit Transfer(Mask(224, 0, (block.timestamp * sub_33958b30[address(msg.sender)]) - (stor0[address(msg.sender)].field_224 * sub_33958b30[address(msg.sender)])), 0, msg.sender);
                        if stor0[address(msg.sender)].field_224 < block.timestamp:
                            stor0[address(msg.sender)].field_0 = Mask(224, 0, (block.timestamp * sub_33958b30[address(msg.sender)]) - (stor0[address(msg.sender)].field_224 * sub_33958b30[address(msg.sender)]) + stor0[address(msg.sender)].field_0)
                            stor0[address(msg.sender)].field_224 = uint32(block.timestamp)
                else:
                    if Mask(224, 0, -totalSupply + 21 * 10^18) <= 0:
                        if stor0[address(msg.sender)].field_224 < block.timestamp:
                            stor0[address(msg.sender)].field_224 = uint32(block.timestamp)
                    else:
                        uint16(stor4.field_0) = 0
                        stor4.field_16 % 72057594037927936 = 320434570312500
                        Mask(152, 0, stor4.field_72) = 0
                        if not stor6:
                            if 21 * 10^18 == totalSupply:
                                stor6 = 1
                        emit Transfer(Mask(224, 0, -totalSupply + 21 * 10^18), 0, msg.sender);
                        if stor0[address(msg.sender)].field_224 < block.timestamp:
                            stor0[address(msg.sender)].field_0 = Mask(224, 0, -totalSupply + stor0[address(msg.sender)].field_0 + 21 * 10^18)
                            stor0[address(msg.sender)].field_224 = uint32(block.timestamp)
    require arg2 <= 21 * 10^18
    require Mask(224, 0, arg2) <= stor0[msg.sender].field_0
    stor0[msg.sender].field_0 = Mask(224, 0, stor0[msg.sender].field_0 - arg2)
    emit Transfer(Mask(224, 0, arg2), msg.sender, arg1);
    if not arg1:
        totalSupply = Mask(224, 0, totalSupply - arg2)
    else:
        require Mask(224, 0, arg2 + stor0[address(arg1)].field_0) >= stor0[address(arg1)].field_0
        stor0[address(arg1)].field_0 = Mask(224, 0, arg2 + stor0[address(arg1)].field_0)
    return 1
}

function updatePlayersGoo(address arg1) {
    require stor3[msg.sender]
    if stor6:
        if stor0[address(arg1)].field_224 < block.timestamp:
            stor0[address(arg1)].field_224 = uint32(block.timestamp)
    else:
        if stor0[address(arg1)].field_224 <= 0:
            if totalSupply < 21 * 10^18:
                if stor0[address(arg1)].field_224 < block.timestamp:
                    stor0[address(arg1)].field_224 = uint32(block.timestamp)
            else:
                if Mask(224, 0, -totalSupply + 21 * 10^18) <= 0:
                    if stor0[address(arg1)].field_224 < block.timestamp:
                        stor0[address(arg1)].field_224 = uint32(block.timestamp)
                else:
                    uint16(stor4.field_0) = 0
                    stor4.field_16 % 72057594037927936 = 320434570312500
                    Mask(152, 0, stor4.field_72) = 0
                    if stor6:
                        emit Transfer(Mask(224, 0, -totalSupply + 21 * 10^18), 0, arg1);
                        if stor0[address(arg1)].field_224 < block.timestamp:
                            stor0[address(arg1)].field_0 = Mask(224, 0, -totalSupply + stor0[address(arg1)].field_0 + 21 * 10^18)
                            stor0[address(arg1)].field_224 = uint32(block.timestamp)
                    else:
                        if 21 * 10^18 == totalSupply:
                            stor6 = 1
                        emit Transfer(Mask(224, 0, -totalSupply + 21 * 10^18), 0, arg1);
                        if stor0[address(arg1)].field_224 < block.timestamp:
                            stor0[address(arg1)].field_0 = Mask(224, 0, -totalSupply + stor0[address(arg1)].field_0 + 21 * 10^18)
                            stor0[address(arg1)].field_224 = uint32(block.timestamp)
        else:
            if stor0[address(arg1)].field_224 >= block.timestamp:
                if totalSupply < 21 * 10^18:
                    if stor0[address(arg1)].field_224 < block.timestamp:
                        stor0[address(arg1)].field_224 = uint32(block.timestamp)
                else:
                    if Mask(224, 0, -totalSupply + 21 * 10^18) <= 0:
                        if stor0[address(arg1)].field_224 < block.timestamp:
                            stor0[address(arg1)].field_224 = uint32(block.timestamp)
                    else:
                        uint16(stor4.field_0) = 0
                        stor4.field_16 % 72057594037927936 = 320434570312500
                        Mask(152, 0, stor4.field_72) = 0
                        if stor6:
                            emit Transfer(Mask(224, 0, -totalSupply + 21 * 10^18), 0, arg1);
                            if stor0[address(arg1)].field_224 < block.timestamp:
                                stor0[address(arg1)].field_0 = Mask(224, 0, -totalSupply + stor0[address(arg1)].field_0 + 21 * 10^18)
                                stor0[address(arg1)].field_224 = uint32(block.timestamp)
                        else:
                            if 21 * 10^18 == totalSupply:
                                stor6 = 1
                            emit Transfer(Mask(224, 0, -totalSupply + 21 * 10^18), 0, arg1);
                            if stor0[address(arg1)].field_224 < block.timestamp:
                                stor0[address(arg1)].field_0 = Mask(224, 0, -totalSupply + stor0[address(arg1)].field_0 + 21 * 10^18)
                                stor0[address(arg1)].field_224 = uint32(block.timestamp)
            else:
                if Mask(224, 0, (block.timestamp * sub_33958b30[address(arg1)]) - (stor0[address(arg1)].field_224 * sub_33958b30[address(arg1)]) + totalSupply) < 21 * 10^18:
                    if Mask(224, 0, (block.timestamp * sub_33958b30[address(arg1)]) - (stor0[address(arg1)].field_224 * sub_33958b30[address(arg1)])) <= 0:
                        if stor0[address(arg1)].field_224 < block.timestamp:
                            stor0[address(arg1)].field_224 = uint32(block.timestamp)
                    else:
                        totalSupply = Mask(224, 0, (block.timestamp * sub_33958b30[address(arg1)]) - (stor0[address(arg1)].field_224 * sub_33958b30[address(arg1)]) + totalSupply)
                        if stor6:
                            emit Transfer(Mask(224, 0, (block.timestamp * sub_33958b30[address(arg1)]) - (stor0[address(arg1)].field_224 * sub_33958b30[address(arg1)])), 0, arg1);
                            if stor0[address(arg1)].field_224 < block.timestamp:
                                stor0[address(arg1)].field_0 = Mask(224, 0, (block.timestamp * sub_33958b30[address(arg1)]) - (stor0[address(arg1)].field_224 * sub_33958b30[address(arg1)]) + stor0[address(arg1)].field_0)
                                stor0[address(arg1)].field_224 = uint32(block.timestamp)
                        else:
                            if 21 * 10^18 == totalSupply:
                                stor6 = 1
                            emit Transfer(Mask(224, 0, (block.timestamp * sub_33958b30[address(arg1)]) - (stor0[address(arg1)].field_224 * sub_33958b30[address(arg1)])), 0, arg1);
                            if stor0[address(arg1)].field_224 < block.timestamp:
                                stor0[address(arg1)].field_0 = Mask(224, 0, (block.timestamp * sub_33958b30[address(arg1)]) - (stor0[address(arg1)].field_224 * sub_33958b30[address(arg1)]) + stor0[address(arg1)].field_0)
                                stor0[address(arg1)].field_224 = uint32(block.timestamp)
                else:
                    if Mask(224, 0, -totalSupply + 21 * 10^18) <= 0:
                        if stor0[address(arg1)].field_224 < block.timestamp:
                            stor0[address(arg1)].field_224 = uint32(block.timestamp)
                    else:
                        uint16(stor4.field_0) = 0
                        stor4.field_16 % 72057594037927936 = 320434570312500
                        Mask(152, 0, stor4.field_72) = 0
                        if stor6:
                            emit Transfer(Mask(224, 0, -totalSupply + 21 * 10^18), 0, arg1);
                            if stor0[address(arg1)].field_224 < block.timestamp:
                                stor0[address(arg1)].field_0 = Mask(224, 0, -totalSupply + stor0[address(arg1)].field_0 + 21 * 10^18)
                                stor0[address(arg1)].field_224 = uint32(block.timestamp)
                        else:
                            if 21 * 10^18 == totalSupply:
                                stor6 = 1
                            emit Transfer(Mask(224, 0, -totalSupply + 21 * 10^18), 0, arg1);
                            if stor0[address(arg1)].field_224 < block.timestamp:
                                stor0[address(arg1)].field_0 = Mask(224, 0, -totalSupply + stor0[address(arg1)].field_0 + 21 * 10^18)
                                stor0[address(arg1)].field_224 = uint32(block.timestamp)
}

function sub_bb002ba8(?) {
    require stor3[msg.sender]
    if stor6:
        if Mask(224, 0, arg2) > 0:
            totalSupply = Mask(224, 0, totalSupply - Mask(224, 0, arg2))
            require Mask(224, 0, arg2) <= stor0[address(arg1)].field_0
            emit Transfer(Mask(224, 0, arg2), arg1, 0);
            stor0[address(arg1)].field_0 = 0
            stor0[address(arg1)].field_32 = Mask(192, 0, stor0[address(arg1)].field_0 - Mask(224, 0, arg2))
        else:
            totalSupply = Mask(224, 0, -Mask(224, 0, arg2) + totalSupply)
            if not stor6:
                if 21 * 10^18 == totalSupply:
                    stor6 = 1
            emit Transfer(Mask(224, 0, -Mask(224, 0, arg2)), 0, arg1);
            stor0[address(arg1)].field_0 = 0
            stor0[address(arg1)].field_32 = Mask(192, 0, -Mask(224, 0, arg2) + stor0[address(arg1)].field_0)
    else:
        if stor0[address(arg1)].field_224 <= 0:
            if totalSupply < 21 * 10^18:
                if Mask(224, 0, arg2) > 0:
                    totalSupply = Mask(224, 0, totalSupply - Mask(224, 0, arg2))
                    require Mask(224, 0, arg2) <= stor0[address(arg1)].field_0
                    emit Transfer(Mask(224, 0, arg2), arg1, 0);
                    stor0[address(arg1)].field_0 = 0
                    stor0[address(arg1)].field_32 = Mask(192, 0, stor0[address(arg1)].field_0 - Mask(224, 0, arg2))
                else:
                    totalSupply = Mask(224, 0, -Mask(224, 0, arg2) + totalSupply)
                    if not stor6:
                        if 21 * 10^18 == totalSupply:
                            stor6 = 1
                    emit Transfer(Mask(224, 0, -Mask(224, 0, arg2)), 0, arg1);
                    stor0[address(arg1)].field_0 = 0
                    stor0[address(arg1)].field_32 = Mask(192, 0, -Mask(224, 0, arg2) + stor0[address(arg1)].field_0)
            else:
                totalSupply = Mask(224, 0, -Mask(224, 0, arg2) + 21 * 10^18)
                if Mask(224, 0, arg2) > Mask(224, 0, -totalSupply + 21 * 10^18):
                    require Mask(224, 0, Mask(224, 0, arg2) + totalSupply - 21 * 10^18) <= stor0[address(arg1)].field_0
                    emit Transfer(Mask(224, 0, Mask(224, 0, arg2) + totalSupply - 21 * 10^18), arg1, 0);
                    stor0[address(arg1)].field_0 = 0
                    stor0[address(arg1)].field_32 = Mask(192, 0, stor0[address(arg1)].field_0 + -Mask(224, 0, arg2) + -totalSupply + 21 * 10^18)
                else:
                    if not stor6:
                        if 21 * 10^18 == totalSupply:
                            stor6 = 1
                    emit Transfer(Mask(224, 0, -totalSupply + -Mask(224, 0, arg2) + 21 * 10^18), 0, arg1);
                    stor0[address(arg1)].field_0 = 0
                    stor0[address(arg1)].field_32 = Mask(192, 0, -totalSupply + -Mask(224, 0, arg2) + stor0[address(arg1)].field_0 + 21 * 10^18)
        else:
            if stor0[address(arg1)].field_224 >= block.timestamp:
                if totalSupply < 21 * 10^18:
                    if Mask(224, 0, arg2) > 0:
                        totalSupply = Mask(224, 0, totalSupply - Mask(224, 0, arg2))
                        require Mask(224, 0, arg2) <= stor0[address(arg1)].field_0
                        emit Transfer(Mask(224, 0, arg2), arg1, 0);
                        stor0[address(arg1)].field_0 = 0
                        stor0[address(arg1)].field_32 = Mask(192, 0, stor0[address(arg1)].field_0 - Mask(224, 0, arg2))
                    else:
                        totalSupply = Mask(224, 0, -Mask(224, 0, arg2) + totalSupply)
                        if not stor6:
                            if 21 * 10^18 == totalSupply:
                                stor6 = 1
                        emit Transfer(Mask(224, 0, -Mask(224, 0, arg2)), 0, arg1);
                        stor0[address(arg1)].field_0 = 0
                        stor0[address(arg1)].field_32 = Mask(192, 0, -Mask(224, 0, arg2) + stor0[address(arg1)].field_0)
                else:
                    totalSupply = Mask(224, 0, -Mask(224, 0, arg2) + 21 * 10^18)
                    if Mask(224, 0, arg2) > Mask(224, 0, -totalSupply + 21 * 10^18):
                        require Mask(224, 0, Mask(224, 0, arg2) + totalSupply - 21 * 10^18) <= stor0[address(arg1)].field_0
                        emit Transfer(Mask(224, 0, Mask(224, 0, arg2) + totalSupply - 21 * 10^18), arg1, 0);
                        stor0[address(arg1)].field_0 = 0
                        stor0[address(arg1)].field_32 = Mask(192, 0, stor0[address(arg1)].field_0 + -Mask(224, 0, arg2) + -totalSupply + 21 * 10^18)
                    else:
                        if not stor6:
                            if 21 * 10^18 == totalSupply:
                                stor6 = 1
                        emit Transfer(Mask(224, 0, -totalSupply + -Mask(224, 0, arg2) + 21 * 10^18), 0, arg1);
                        stor0[address(arg1)].field_0 = 0
                        stor0[address(arg1)].field_32 = Mask(192, 0, -totalSupply + -Mask(224, 0, arg2) + stor0[address(arg1)].field_0 + 21 * 10^18)
            else:
                if Mask(224, 0, (block.timestamp * sub_33958b30[address(arg1)]) - (stor0[address(arg1)].field_224 * sub_33958b30[address(arg1)]) + totalSupply) < 21 * 10^18:
                    if Mask(224, 0, arg2) > Mask(224, 0, (block.timestamp * sub_33958b30[address(arg1)]) - (stor0[address(arg1)].field_224 * sub_33958b30[address(arg1)])):
                        totalSupply = Mask(224, 0, totalSupply - Mask(224, 0, arg2) + (block.timestamp * sub_33958b30[address(arg1)]) - (stor0[address(arg1)].field_224 * sub_33958b30[address(arg1)]))
                        require Mask(224, 0, Mask(224, 0, arg2) - (block.timestamp * sub_33958b30[address(arg1)]) + (stor0[address(arg1)].field_224 * sub_33958b30[address(arg1)])) <= stor0[address(arg1)].field_0
                        emit Transfer(Mask(224, 0, Mask(224, 0, arg2) - (block.timestamp * sub_33958b30[address(arg1)]) + (stor0[address(arg1)].field_224 * sub_33958b30[address(arg1)])), arg1, 0);
                        stor0[address(arg1)].field_0 = 0
                        stor0[address(arg1)].field_32 = Mask(192, 0, stor0[address(arg1)].field_0 - Mask(224, 0, arg2) + (block.timestamp * sub_33958b30[address(arg1)]) - (stor0[address(arg1)].field_224 * sub_33958b30[address(arg1)]))
                    else:
                        totalSupply = Mask(224, 0, (block.timestamp * sub_33958b30[address(arg1)]) - (stor0[address(arg1)].field_224 * sub_33958b30[address(arg1)]) - Mask(224, 0, arg2) + totalSupply)
                        if not stor6:
                            if 21 * 10^18 == totalSupply:
                                stor6 = 1
                        emit Transfer(Mask(224, 0, (block.timestamp * sub_33958b30[address(arg1)]) - (stor0[address(arg1)].field_224 * sub_33958b30[address(arg1)]) - Mask(224, 0, arg2)), 0, arg1);
                        stor0[address(arg1)].field_0 = 0
                        stor0[address(arg1)].field_32 = Mask(192, 0, (block.timestamp * sub_33958b30[address(arg1)]) - (stor0[address(arg1)].field_224 * sub_33958b30[address(arg1)]) - Mask(224, 0, arg2) + stor0[address(arg1)].field_0)
                else:
                    totalSupply = Mask(224, 0, -Mask(224, 0, arg2) + 21 * 10^18)
                    if Mask(224, 0, arg2) > Mask(224, 0, -totalSupply + 21 * 10^18):
                        require Mask(224, 0, Mask(224, 0, arg2) + totalSupply - 21 * 10^18) <= stor0[address(arg1)].field_0
                        emit Transfer(Mask(224, 0, Mask(224, 0, arg2) + totalSupply - 21 * 10^18), arg1, 0);
                        stor0[address(arg1)].field_0 = 0
                        stor0[address(arg1)].field_32 = Mask(192, 0, stor0[address(arg1)].field_0 + -Mask(224, 0, arg2) + -totalSupply + 21 * 10^18)
                    else:
                        if not stor6:
                            if 21 * 10^18 == totalSupply:
                                stor6 = 1
                        emit Transfer(Mask(224, 0, -totalSupply + -Mask(224, 0, arg2) + 21 * 10^18), 0, arg1);
                        stor0[address(arg1)].field_0 = 0
                        stor0[address(arg1)].field_32 = Mask(192, 0, -totalSupply + -Mask(224, 0, arg2) + stor0[address(arg1)].field_0 + 21 * 10^18)
    stor0[address(arg1)].field_224 = uint32(block.timestamp)
}



}
