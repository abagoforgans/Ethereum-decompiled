contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of uint256 stor1;
mapping of uint256 stor2;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address owner; offset 8
uint256 sub_212918fb;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function sub_212918fb(?) payable {
    return sub_212918fb
}

function decimals() payable {
    return decimals
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function sub_bc57d143(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_212918fb = arg1
}

function sub_9c8aefda(?) payable {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require arg1
    require arg2 <= 7
    stor0[address(arg1)] = arg2
}

function ownerTransfer(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function totalBalanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require stor2[address(arg1)] <= stor1[address(arg1)]
    return (stor1[address(arg1)] - stor2[address(arg1)])
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require stor2[address(arg1)] <= stor1[address(arg1)]
    if arg1 == owner:
        return (stor1[address(arg1)] - stor2[address(arg1)])
    if block.timestamp - sub_212918fb < 0:
        return 0
    if block.timestamp - sub_212918fb >= 37800:
        return (stor1[address(arg1)] - stor2[address(arg1)])
    require stor0[address(arg1)] <= 7
    if not stor0[address(arg1)]:
        return (stor1[address(arg1)] - stor2[address(arg1)])
    require stor0[address(arg1)] <= 7
    if stor0[address(arg1)] == 1:
        if block.timestamp - sub_212918fb < 5400:
            return 0
        if block.timestamp - sub_212918fb < 3 * 3600:
            return (stor1[address(arg1)] - stor2[address(arg1)] / 6)
        if block.timestamp - sub_212918fb < 16200:
            return (2 * stor1[address(arg1)] - stor2[address(arg1)] / 6)
        if block.timestamp - sub_212918fb < 6 * 3600:
            return ((3 * stor1[address(arg1)]) - (3 * stor2[address(arg1)]) / 6)
        if block.timestamp - sub_212918fb < 27000:
            return (4 * stor1[address(arg1)] - stor2[address(arg1)] / 6)
        if block.timestamp - sub_212918fb >= 9 * 3600:
            return (stor1[address(arg1)] - stor2[address(arg1)])
        return ((5 * stor1[address(arg1)]) - (5 * stor2[address(arg1)]) / 6)
    require stor0[address(arg1)] <= 7
    if stor0[address(arg1)] == 2:
        if block.timestamp - sub_212918fb < 3 * 3600:
            return 0
        if block.timestamp - sub_212918fb < 16200:
            return (stor1[address(arg1)] - stor2[address(arg1)] / 4)
        if block.timestamp - sub_212918fb < 6 * 3600:
            return (Mask(254, 1, stor1[address(arg1)] - stor2[address(arg1)]) >> 1)
        if block.timestamp - sub_212918fb >= 27000:
            return (stor1[address(arg1)] - stor2[address(arg1)])
    else:
        require stor0[address(arg1)] <= 7
        if stor0[address(arg1)] == 3:
            if block.timestamp - sub_212918fb < 5400:
                return 0
            if block.timestamp - sub_212918fb < 3 * 3600:
                return ((3 * stor1[address(arg1)]) - (3 * stor2[address(arg1)]) / 20)
            if block.timestamp - sub_212918fb < 16200:
                return ((6 * stor1[address(arg1)]) - (6 * stor2[address(arg1)]) / 20)
            if block.timestamp - sub_212918fb < 6 * 3600:
                return ((9 * stor1[address(arg1)]) - (9 * stor2[address(arg1)]) / 20)
            if block.timestamp - sub_212918fb < 27000:
                return ((12 * stor1[address(arg1)]) - (12 * stor2[address(arg1)]) / 20)
            if block.timestamp - sub_212918fb < 9 * 3600:
                return ((15 * stor1[address(arg1)]) - (15 * stor2[address(arg1)]) / 20)
            if block.timestamp - sub_212918fb >= 37800:
                return (stor1[address(arg1)] - stor2[address(arg1)])
            return ((18 * stor1[address(arg1)]) - (18 * stor2[address(arg1)]) / 20)
        require stor0[address(arg1)] <= 7
        if stor0[address(arg1)] == 4:
            if block.timestamp - sub_212918fb < 5400:
                return ((5 * stor1[address(arg1)]) - (5 * stor2[address(arg1)]) / 30)
            if block.timestamp - sub_212918fb < 3 * 3600:
                return ((10 * stor1[address(arg1)]) - (10 * stor2[address(arg1)]) / 30)
            if block.timestamp - sub_212918fb < 16200:
                return ((15 * stor1[address(arg1)]) - (15 * stor2[address(arg1)]) / 30)
            if block.timestamp - sub_212918fb < 6 * 3600:
                return ((18 * stor1[address(arg1)]) - (18 * stor2[address(arg1)]) / 30)
            if block.timestamp - sub_212918fb < 27000:
                return ((21 * stor1[address(arg1)]) - (21 * stor2[address(arg1)]) / 30)
            if block.timestamp - sub_212918fb < 9 * 3600:
                return ((24 * stor1[address(arg1)]) - (24 * stor2[address(arg1)]) / 30)
            if block.timestamp - sub_212918fb >= 37800:
                return (stor1[address(arg1)] - stor2[address(arg1)])
            return ((27 * stor1[address(arg1)]) - (27 * stor2[address(arg1)]) / 30)
        require stor0[address(arg1)] <= 7
        if stor0[address(arg1)] != 5:
            require stor0[address(arg1)] <= 7
            if stor0[address(arg1)] == 6:
                if block.timestamp - sub_212918fb >= 5400:
                    return (stor1[address(arg1)] - stor2[address(arg1)])
                return (stor1[address(arg1)] - stor2[address(arg1)] / 2)
            require stor0[address(arg1)] <= 7
            if stor0[address(arg1)] != 7:
                return 0
        if block.timestamp - sub_212918fb < 6 * 3600:
            return 0
        if block.timestamp - sub_212918fb < 27000:
            return (stor1[address(arg1)] - stor2[address(arg1)] / 4)
        if block.timestamp - sub_212918fb < 9 * 3600:
            return (Mask(254, 1, stor1[address(arg1)] - stor2[address(arg1)]) >> 1)
        if block.timestamp - sub_212918fb >= 37800:
            return (stor1[address(arg1)] - stor2[address(arg1)])
    return ((3 * stor1[address(arg1)]) - (3 * stor2[address(arg1)]) / 4)
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require stor2[address(arg1)] <= stor1[address(arg1)]
    if arg1 == owner:
        require arg3 <= stor1[address(arg1)] - stor2[address(arg1)]
    else:
        if block.timestamp - sub_212918fb < 0:
            require arg3 <= 0
        else:
            if block.timestamp - sub_212918fb >= 37800:
                require arg3 <= stor1[address(arg1)] - stor2[address(arg1)]
            else:
                require stor0[address(arg1)] <= 7
                if not stor0[address(arg1)]:
                    require arg3 <= stor1[address(arg1)] - stor2[address(arg1)]
                else:
                    require stor0[address(arg1)] <= 7
                    if stor0[address(arg1)] == 1:
                        if block.timestamp - sub_212918fb < 5400:
                            require arg3 <= 0
                        else:
                            if block.timestamp - sub_212918fb < 3 * 3600:
                                require arg3 <= stor1[address(arg1)] - stor2[address(arg1)] / 6
                            else:
                                if block.timestamp - sub_212918fb < 16200:
                                    require arg3 <= 2 * stor1[address(arg1)] - stor2[address(arg1)] / 6
                                else:
                                    if block.timestamp - sub_212918fb < 6 * 3600:
                                        require arg3 <= (3 * stor1[address(arg1)]) - (3 * stor2[address(arg1)]) / 6
                                    else:
                                        if block.timestamp - sub_212918fb < 27000:
                                            require arg3 <= 4 * stor1[address(arg1)] - stor2[address(arg1)] / 6
                                        else:
                                            if block.timestamp - sub_212918fb >= 9 * 3600:
                                                require arg3 <= stor1[address(arg1)] - stor2[address(arg1)]
                                            else:
                                                require arg3 <= (5 * stor1[address(arg1)]) - (5 * stor2[address(arg1)]) / 6
                    else:
                        require stor0[address(arg1)] <= 7
                        if stor0[address(arg1)] == 2:
                            if block.timestamp - sub_212918fb < 3 * 3600:
                                require arg3 <= 0
                            else:
                                if block.timestamp - sub_212918fb < 16200:
                                    require arg3 <= stor1[address(arg1)] - stor2[address(arg1)] / 4
                                else:
                                    if block.timestamp - sub_212918fb < 6 * 3600:
                                        require arg3 <= Mask(254, 1, stor1[address(arg1)] - stor2[address(arg1)]) >> 1
                                    else:
                                        if block.timestamp - sub_212918fb >= 27000:
                                            require arg3 <= stor1[address(arg1)] - stor2[address(arg1)]
                                        else:
                                            require arg3 <= (3 * stor1[address(arg1)]) - (3 * stor2[address(arg1)]) / 4
                        else:
                            require stor0[address(arg1)] <= 7
                            if stor0[address(arg1)] == 3:
                                if block.timestamp - sub_212918fb < 5400:
                                    require arg3 <= 0
                                else:
                                    if block.timestamp - sub_212918fb < 3 * 3600:
                                        require arg3 <= (3 * stor1[address(arg1)]) - (3 * stor2[address(arg1)]) / 20
                                    else:
                                        if block.timestamp - sub_212918fb < 16200:
                                            require arg3 <= (6 * stor1[address(arg1)]) - (6 * stor2[address(arg1)]) / 20
                                        else:
                                            if block.timestamp - sub_212918fb < 6 * 3600:
                                                require arg3 <= (9 * stor1[address(arg1)]) - (9 * stor2[address(arg1)]) / 20
                                            else:
                                                if block.timestamp - sub_212918fb < 27000:
                                                    require arg3 <= (12 * stor1[address(arg1)]) - (12 * stor2[address(arg1)]) / 20
                                                else:
                                                    if block.timestamp - sub_212918fb < 9 * 3600:
                                                        require arg3 <= (15 * stor1[address(arg1)]) - (15 * stor2[address(arg1)]) / 20
                                                    else:
                                                        if block.timestamp - sub_212918fb >= 37800:
                                                            require arg3 <= stor1[address(arg1)] - stor2[address(arg1)]
                                                        else:
                                                            require arg3 <= (18 * stor1[address(arg1)]) - (18 * stor2[address(arg1)]) / 20
                            else:
                                require stor0[address(arg1)] <= 7
                                if stor0[address(arg1)] == 4:
                                    if block.timestamp - sub_212918fb < 5400:
                                        require arg3 <= (5 * stor1[address(arg1)]) - (5 * stor2[address(arg1)]) / 30
                                    else:
                                        if block.timestamp - sub_212918fb < 3 * 3600:
                                            require arg3 <= (10 * stor1[address(arg1)]) - (10 * stor2[address(arg1)]) / 30
                                        else:
                                            if block.timestamp - sub_212918fb < 16200:
                                                require arg3 <= (15 * stor1[address(arg1)]) - (15 * stor2[address(arg1)]) / 30
                                            else:
                                                if block.timestamp - sub_212918fb < 6 * 3600:
                                                    require arg3 <= (18 * stor1[address(arg1)]) - (18 * stor2[address(arg1)]) / 30
                                                else:
                                                    if block.timestamp - sub_212918fb < 27000:
                                                        require arg3 <= (21 * stor1[address(arg1)]) - (21 * stor2[address(arg1)]) / 30
                                                    else:
                                                        if block.timestamp - sub_212918fb < 9 * 3600:
                                                            require arg3 <= (24 * stor1[address(arg1)]) - (24 * stor2[address(arg1)]) / 30
                                                        else:
                                                            if block.timestamp - sub_212918fb >= 37800:
                                                                require arg3 <= stor1[address(arg1)] - stor2[address(arg1)]
                                                            else:
                                                                require arg3 <= (27 * stor1[address(arg1)]) - (27 * stor2[address(arg1)]) / 30
                                else:
                                    require stor0[address(arg1)] <= 7
                                    if stor0[address(arg1)] == 5:
                                        if block.timestamp - sub_212918fb < 6 * 3600:
                                            require arg3 <= 0
                                        else:
                                            if block.timestamp - sub_212918fb < 27000:
                                                require arg3 <= stor1[address(arg1)] - stor2[address(arg1)] / 4
                                            else:
                                                if block.timestamp - sub_212918fb < 9 * 3600:
                                                    require arg3 <= Mask(254, 1, stor1[address(arg1)] - stor2[address(arg1)]) >> 1
                                                else:
                                                    if block.timestamp - sub_212918fb >= 37800:
                                                        require arg3 <= stor1[address(arg1)] - stor2[address(arg1)]
                                                    else:
                                                        require arg3 <= (3 * stor1[address(arg1)]) - (3 * stor2[address(arg1)]) / 4
                                    else:
                                        require stor0[address(arg1)] <= 7
                                        if stor0[address(arg1)] == 6:
                                            if block.timestamp - sub_212918fb >= 5400:
                                                require arg3 <= stor1[address(arg1)] - stor2[address(arg1)]
                                            else:
                                                require arg3 <= stor1[address(arg1)] - stor2[address(arg1)] / 2
                                        else:
                                            require stor0[address(arg1)] <= 7
                                            if stor0[address(arg1)] != 7:
                                                require arg3 <= 0
                                            else:
                                                if block.timestamp - sub_212918fb < 6 * 3600:
                                                    require arg3 <= 0
                                                else:
                                                    if block.timestamp - sub_212918fb < 27000:
                                                        require arg3 <= stor1[address(arg1)] - stor2[address(arg1)] / 4
                                                    else:
                                                        if block.timestamp - sub_212918fb < 9 * 3600:
                                                            require arg3 <= Mask(254, 1, stor1[address(arg1)] - stor2[address(arg1)]) >> 1
                                                        else:
                                                            if block.timestamp - sub_212918fb >= 37800:
                                                                require arg3 <= stor1[address(arg1)] - stor2[address(arg1)]
                                                            else:
                                                                require arg3 <= (3 * stor1[address(arg1)]) - (3 * stor2[address(arg1)]) / 4
    require arg2
    require stor2[address(arg1)] + arg3 >= stor2[address(arg1)]
    stor2[address(arg1)] += arg3
    require stor1[address(arg2)] + arg3 >= stor1[address(arg2)]
    stor1[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    require arg3 <= allowance[address(arg1)][address(arg2)]
    allowance[address(arg1)][address(arg2)] -= arg3
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require stor2[address(msg.sender)] <= stor1[address(msg.sender)]
    if msg.sender == owner:
        require arg2 <= stor1[address(msg.sender)] - stor2[address(msg.sender)]
    else:
        if block.timestamp - sub_212918fb < 0:
            require arg2 <= 0
        else:
            if block.timestamp - sub_212918fb >= 37800:
                require arg2 <= stor1[address(msg.sender)] - stor2[address(msg.sender)]
            else:
                require stor0[address(msg.sender)] <= 7
                if not stor0[address(msg.sender)]:
                    require arg2 <= stor1[address(msg.sender)] - stor2[address(msg.sender)]
                else:
                    require stor0[address(msg.sender)] <= 7
                    if stor0[address(msg.sender)] == 1:
                        if block.timestamp - sub_212918fb < 5400:
                            require arg2 <= 0
                        else:
                            if block.timestamp - sub_212918fb < 3 * 3600:
                                require arg2 <= stor1[address(msg.sender)] - stor2[address(msg.sender)] / 6
                            else:
                                if block.timestamp - sub_212918fb < 16200:
                                    require arg2 <= 2 * stor1[address(msg.sender)] - stor2[address(msg.sender)] / 6
                                else:
                                    if block.timestamp - sub_212918fb < 6 * 3600:
                                        require arg2 <= (3 * stor1[address(msg.sender)]) - (3 * stor2[address(msg.sender)]) / 6
                                    else:
                                        if block.timestamp - sub_212918fb < 27000:
                                            require arg2 <= 4 * stor1[address(msg.sender)] - stor2[address(msg.sender)] / 6
                                        else:
                                            if block.timestamp - sub_212918fb >= 9 * 3600:
                                                require arg2 <= stor1[address(msg.sender)] - stor2[address(msg.sender)]
                                            else:
                                                require arg2 <= (5 * stor1[address(msg.sender)]) - (5 * stor2[address(msg.sender)]) / 6
                    else:
                        require stor0[address(msg.sender)] <= 7
                        if stor0[address(msg.sender)] == 2:
                            if block.timestamp - sub_212918fb < 3 * 3600:
                                require arg2 <= 0
                            else:
                                if block.timestamp - sub_212918fb < 16200:
                                    require arg2 <= stor1[address(msg.sender)] - stor2[address(msg.sender)] / 4
                                else:
                                    if block.timestamp - sub_212918fb < 6 * 3600:
                                        require arg2 <= Mask(254, 1, stor1[address(msg.sender)] - stor2[address(msg.sender)]) >> 1
                                    else:
                                        if block.timestamp - sub_212918fb >= 27000:
                                            require arg2 <= stor1[address(msg.sender)] - stor2[address(msg.sender)]
                                        else:
                                            require arg2 <= (3 * stor1[address(msg.sender)]) - (3 * stor2[address(msg.sender)]) / 4
                        else:
                            require stor0[address(msg.sender)] <= 7
                            if stor0[address(msg.sender)] == 3:
                                if block.timestamp - sub_212918fb < 5400:
                                    require arg2 <= 0
                                else:
                                    if block.timestamp - sub_212918fb < 3 * 3600:
                                        require arg2 <= (3 * stor1[address(msg.sender)]) - (3 * stor2[address(msg.sender)]) / 20
                                    else:
                                        if block.timestamp - sub_212918fb < 16200:
                                            require arg2 <= (6 * stor1[address(msg.sender)]) - (6 * stor2[address(msg.sender)]) / 20
                                        else:
                                            if block.timestamp - sub_212918fb < 6 * 3600:
                                                require arg2 <= (9 * stor1[address(msg.sender)]) - (9 * stor2[address(msg.sender)]) / 20
                                            else:
                                                if block.timestamp - sub_212918fb < 27000:
                                                    require arg2 <= (12 * stor1[address(msg.sender)]) - (12 * stor2[address(msg.sender)]) / 20
                                                else:
                                                    if block.timestamp - sub_212918fb < 9 * 3600:
                                                        require arg2 <= (15 * stor1[address(msg.sender)]) - (15 * stor2[address(msg.sender)]) / 20
                                                    else:
                                                        if block.timestamp - sub_212918fb >= 37800:
                                                            require arg2 <= stor1[address(msg.sender)] - stor2[address(msg.sender)]
                                                        else:
                                                            require arg2 <= (18 * stor1[address(msg.sender)]) - (18 * stor2[address(msg.sender)]) / 20
                            else:
                                require stor0[address(msg.sender)] <= 7
                                if stor0[address(msg.sender)] == 4:
                                    if block.timestamp - sub_212918fb < 5400:
                                        require arg2 <= (5 * stor1[address(msg.sender)]) - (5 * stor2[address(msg.sender)]) / 30
                                    else:
                                        if block.timestamp - sub_212918fb < 3 * 3600:
                                            require arg2 <= (10 * stor1[address(msg.sender)]) - (10 * stor2[address(msg.sender)]) / 30
                                        else:
                                            if block.timestamp - sub_212918fb < 16200:
                                                require arg2 <= (15 * stor1[address(msg.sender)]) - (15 * stor2[address(msg.sender)]) / 30
                                            else:
                                                if block.timestamp - sub_212918fb < 6 * 3600:
                                                    require arg2 <= (18 * stor1[address(msg.sender)]) - (18 * stor2[address(msg.sender)]) / 30
                                                else:
                                                    if block.timestamp - sub_212918fb < 27000:
                                                        require arg2 <= (21 * stor1[address(msg.sender)]) - (21 * stor2[address(msg.sender)]) / 30
                                                    else:
                                                        if block.timestamp - sub_212918fb < 9 * 3600:
                                                            require arg2 <= (24 * stor1[address(msg.sender)]) - (24 * stor2[address(msg.sender)]) / 30
                                                        else:
                                                            if block.timestamp - sub_212918fb >= 37800:
                                                                require arg2 <= stor1[address(msg.sender)] - stor2[address(msg.sender)]
                                                            else:
                                                                require arg2 <= (27 * stor1[address(msg.sender)]) - (27 * stor2[address(msg.sender)]) / 30
                                else:
                                    require stor0[address(msg.sender)] <= 7
                                    if stor0[address(msg.sender)] == 5:
                                        if block.timestamp - sub_212918fb < 6 * 3600:
                                            require arg2 <= 0
                                        else:
                                            if block.timestamp - sub_212918fb < 27000:
                                                require arg2 <= stor1[address(msg.sender)] - stor2[address(msg.sender)] / 4
                                            else:
                                                if block.timestamp - sub_212918fb < 9 * 3600:
                                                    require arg2 <= Mask(254, 1, stor1[address(msg.sender)] - stor2[address(msg.sender)]) >> 1
                                                else:
                                                    if block.timestamp - sub_212918fb >= 37800:
                                                        require arg2 <= stor1[address(msg.sender)] - stor2[address(msg.sender)]
                                                    else:
                                                        require arg2 <= (3 * stor1[address(msg.sender)]) - (3 * stor2[address(msg.sender)]) / 4
                                    else:
                                        require stor0[address(msg.sender)] <= 7
                                        if stor0[address(msg.sender)] == 6:
                                            if block.timestamp - sub_212918fb >= 5400:
                                                require arg2 <= stor1[address(msg.sender)] - stor2[address(msg.sender)]
                                            else:
                                                require arg2 <= stor1[address(msg.sender)] - stor2[address(msg.sender)] / 2
                                        else:
                                            require stor0[address(msg.sender)] <= 7
                                            if stor0[address(msg.sender)] != 7:
                                                require arg2 <= 0
                                            else:
                                                if block.timestamp - sub_212918fb < 6 * 3600:
                                                    require arg2 <= 0
                                                else:
                                                    if block.timestamp - sub_212918fb < 27000:
                                                        require arg2 <= stor1[address(msg.sender)] - stor2[address(msg.sender)] / 4
                                                    else:
                                                        if block.timestamp - sub_212918fb < 9 * 3600:
                                                            require arg2 <= Mask(254, 1, stor1[address(msg.sender)] - stor2[address(msg.sender)]) >> 1
                                                        else:
                                                            if block.timestamp - sub_212918fb >= 37800:
                                                                require arg2 <= stor1[address(msg.sender)] - stor2[address(msg.sender)]
                                                            else:
                                                                require arg2 <= (3 * stor1[address(msg.sender)]) - (3 * stor2[address(msg.sender)]) / 4
    require arg1
    require stor2[address(msg.sender)] + arg2 >= stor2[address(msg.sender)]
    stor2[address(msg.sender)] += arg2
    require stor1[address(arg1)] + arg2 >= stor1[address(arg1)]
    stor1[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
